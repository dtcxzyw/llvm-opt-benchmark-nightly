Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !408 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !363
  %.not.i.i.i.i.i.i.i30 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i30, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bg = atomicrmw volatile add ptr %i.bc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !408 ; 8 uses
  store <2 x ptr> %i.bb, ptr %i.aw, align 8, !tbaa !363
  %.not.i.i.i.i.i.i31 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i31, label %_ZN6duckdb12ValidityMaskaSERKS0_.exit, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bj, align 8, !tbaa !409
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !411
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !412
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #46, !inline_history !775
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !412
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #46, !inline_history !775
  br label %_ZN6duckdb12ValidityMaskaSERKS0_.exit

bb.t:                                             ; preds = %bb.r
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bm, %bb.u ], [ %i.bw, %bb.v ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bx, label %bb.w, label %_ZN6duckdb12ValidityMaskaSERKS0_.exit, !prof !88

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #46
  br label %_ZN6duckdb12ValidityMaskaSERKS0_.exit

_ZN6duckdb12ValidityMaskaSERKS0_.exit:            ; preds = %bb.m, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !532
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !532
  br label %bb.ce

bb.x:                                             ; preds = %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %i.an)
  invoke void @_ZN6duckdb6Vector7FlattenERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %1)
          to label %bb.y unwind label %bb.ay

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  invoke void @_ZN6duckdb15make_shared_ptrINS_17VectorChildBufferEJNS_6VectorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.920") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %_ZN6duckdb11make_bufferINS_17VectorChildBufferEJNS_6VectorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit unwind label %bb.az

_ZN6duckdb11make_bufferINS_17VectorChildBufferEJNS_6VectorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.y
  %i.cb = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17VectorChildBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.z unwind label %bb.ba

bb.z:                                             ; preds = %_ZN6duckdb11make_bufferINS_17VectorChildBufferEJNS_6VectorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !427
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !774
  %i.cf = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17VectorChildBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.aa unwind label %bb.ba     ; 5 uses

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cg)
          to label %bb.ab unwind label %bb.ba

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 88 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !519
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !519
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cl = icmp eq ptr %i.ci, %i.ch
  br i1 %i.cl, label %_ZN6duckdb12ValidityMaskaSERKS0_.exit39, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !408 ; 2 uses
  %i.cp = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !363
  %.not.i.i.i.i.i.i.i32 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i32, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i34, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i.i.i33 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i.i.i.i.i33, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i34

bb.af:                                            ; preds = %bb.ad
  %i.cu = atomicrmw volatile add ptr %i.cq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i34

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i34: ; preds = %bb.af, %bb.ae, %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !408 ; 8 uses
  store <2 x ptr> %i.cp, ptr %i.ck, align 8, !tbaa !363
  %.not.i.i.i.i.i.i35 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i35, label %_ZN6duckdb12ValidityMaskaSERKS0_.exit39, label %bb.ag

bb.ag:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i34
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4294967297
  %i.da = trunc i64 %i.cy to i32                  ; 2 uses
  br i1 %i.cz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cx, align 8, !tbaa !409
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.db, align 4, !tbaa !411
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !412
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #46, !inline_history !775
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !412
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #46, !inline_history !775
  br label %_ZN6duckdb12ValidityMaskaSERKS0_.exit39

bb.ai:                                            ; preds = %bb.ag
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i5.i.i.i36 = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i5.i.i.i36, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i37

bb.ak:                                            ; preds = %bb.ai
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i37: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i.i38 = phi i32 [ %i.da, %bb.aj ], [ %i.dk, %bb.ak ]
  %i.dl = icmp eq i32 %.0.i.i.i.i.i.i.i.i38, 1
  br i1 %i.dl, label %bb.al, label %_ZN6duckdb12ValidityMaskaSERKS0_.exit39, !prof !88

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #46
  br label %_ZN6duckdb12ValidityMaskaSERKS0_.exit39

_ZN6duckdb12ValidityMaskaSERKS0_.exit39:          ; preds = %bb.ab, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i34, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i37, %bb.al
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cf, i64 112
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !532
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !532
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dr = load <2 x ptr>, ptr %4, align 16, !tbaa !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !408 ; 8 uses
  store <2 x ptr> %i.dr, ptr %i.al, align 8, !tbaa !363
  %.not.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb12ValidityMaskaSERKS0_.exit39
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.dt, align 8, !tbaa !409
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !411
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !412
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #46, !inline_history !776
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !412
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #46, !inline_history !776
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit

bb.ao:                                            ; preds = %bb.am
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i40 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i40, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i = phi i32 [ %i.dw, %bb.ap ], [ %i.eg, %bb.aq ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.eh, label %bb.ar, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, !prof !88

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit: ; preds = %_ZN6duckdb12ValidityMaskaSERKS0_.exit39, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ar
  %i.ei = load ptr, ptr %i.dp, align 8, !tbaa !408 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.ej, align 8, !tbaa !409
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !411
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !412
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #46, !inline_history !777
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !412
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #46, !inline_history !777
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit

bb.au:                                            ; preds = %bb.as
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i41 = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i41, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i = phi i32 [ %i.em, %bb.av ], [ %i.ew, %bb.aw ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ex, label %bb.ax, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit, !prof !88

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #46
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.ce

bb.ay:                                            ; preds = %bb.x
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.az:                                            ; preds = %bb.y
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aa, %bb.z, %_ZN6duckdb11make_bufferINS_17VectorChildBufferEJNS_6VectorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #46
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn = phi { ptr, i32 } [ %i.fa, %bb.ba ], [ %i.ez, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bb ], [ %i.ey, %bb.ay ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %.pn.pn

bb.bd:                                            ; preds = %bb.a
  %i.fb = icmp ult i64 %1, 2049
  br i1 %i.fb, label %bb.be, label %_ZN6duckdb14ConstantVector19ZeroSelectionVectorEv.exit.loopexit.i

bb.be:                                            ; preds = %bb.bd
  %i.fc = load atomic i8, ptr @_ZGVZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR acquire, align 8
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.bf, label %_ZN6duckdb14ConstantVector19ZeroSelectionVectorEmRNS_15SelectionVectorE.exit, !prof !778

bb.bf:                                            ; preds = %bb.be
  %i.fe = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR) #46
  %.not.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector19ZeroSelectionVectorEmRNS_15SelectionVectorE.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, i64 8), i8 0, i64 16, i1 false)
  store ptr @_ZN6duckdb14ConstantVector11ZERO_VECTORE, ptr @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, align 8, !tbaa !389
  %i.ff = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6duckdb15SelectionVectorD2Ev, ptr nonnull @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, ptr nonnull @__dso_handle) #46 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR) #46
  br label %_ZN6duckdb14ConstantVector19ZeroSelectionVectorEmRNS_15SelectionVectorE.exit

_ZN6duckdb14ConstantVector19ZeroSelectionVectorEv.exit.loopexit.i: ; preds = %bb.bd
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  tail call void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 noundef %1)
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !389
  %i.fi = shl nuw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fh, i8 0, i64 %i.fi, i1 false), !tbaa !3
  br label %_ZN6duckdb14ConstantVector19ZeroSelectionVectorEmRNS_15SelectionVectorE.exit

_ZN6duckdb14ConstantVector19ZeroSelectionVectorEmRNS_15SelectionVectorE.exit: ; preds = %bb.be, %bb.bf, %bb.bg, %_ZN6duckdb14ConstantVector19ZeroSelectionVectorEv.exit.loopexit.i
  %.09.i = phi ptr [ @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, %bb.bg ], [ @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, %bb.be ], [ @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, %bb.bf ], [ %i.fg, %_ZN6duckdb14ConstantVector19ZeroSelectionVectorEv.exit.loopexit.i ]
  store ptr %.09.i, ptr %2, align 8, !tbaa !773
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fn = load <2 x ptr>, ptr %i.fj, align 8, !tbaa !363
  store <2 x ptr> %i.fn, ptr %i.fk, align 8, !tbaa !363
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fp = icmp eq ptr %i.fm, %i.fl
  br i1 %i.fp, label %_ZN6duckdb12ValidityMaskaSERKS0_.exit49, label %bb.bh

bb.bh:                                            ; preds = %_ZN6duckdb14ConstantVector19ZeroSelectionVectorEmRNS_15SelectionVectorE.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !408 ; 2 uses
  %i.ft = load <2 x ptr>, ptr %i.fq, align 8, !tbaa !363
  %.not.i.i.i.i.i.i.i42 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i.i.i42, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i44, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 3 uses
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i.i.i43 = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i.i.i43, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !3
  %i.fx = add nsw i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fu, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i44

bb.bk:                                            ; preds = %bb.bi
  %i.fy = atomicrmw volatile add ptr %i.fu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i44

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i44: ; preds = %bb.bk, %bb.bj, %bb.bh
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !408 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZNK6duckdb9hugeint_trsERKS0_:bb.a
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !108
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d, %bb.b
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tlsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !288  ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !290    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !288
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ugt i64 %i.d, 127
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  switch i64 %i.d, label %bb.h [
    i64 64, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %0, align 8, !tbaa !290
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.j = icmp samesign ult i64 %i.d, 64
  %i.k = load i64, ptr %0, align 8, !tbaa !290    ; 3 uses
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.b, i64 %i.k, i64 %i.d)
  %i.m = and i64 %i.l, 9223372036854775807
  %i.n = shl i64 %i.k, %i.d
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.o = add nsw i64 %i.d, -64
  %i.p = shl i64 %i.k, %i.o
  %i.q = and i64 %i.p, 9223372036854775807
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.i, %bb.j
  %.sroa.0.0 = phi i64 [ 0, %bb.f ], [ %i.n, %bb.i ], [ 0, %bb.j ]
  %.sroa.6.0 = phi i64 [ %i.i, %bb.f ], [ %i.m, %bb.i ], [ %i.q, %bb.j ]
  store i64 %.sroa.0.0, ptr %2, align 8, !tbaa !108
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !108
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.g, %bb.k, %bb.b
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tanERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.c = and <2 x i64> %i.b, %i.a                 ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.c, i64 0
  %i.d = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.c, i64 1
  %vec2struct5 = insertvalue { i64, i64 } %i.d, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %vec2struct5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_torERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.c = or <2 x i64> %i.b, %i.a                  ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.c, i64 0
  %i.d = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.c, i64 1
  %vec2struct5 = insertvalue { i64, i64 } %i.d, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %vec2struct5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_teoERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.c = xor <2 x i64> %i.b, %i.a                 ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.c, i64 0
  %i.d = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.c, i64 1
  %vec2struct5 = insertvalue { i64, i64 } %i.d, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %vec2struct5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tcoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !290
  %i.b = xor i64 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !288
  %i.e = xor i64 %i.d, -1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.e, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tdVERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.a = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i64 %i.b, ptr %0, align 8, !tbaa !108
  store i64 %i.c, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_trMERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 16 ; 4 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  %i.b = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.b, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_trSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load i64, ptr %1, align 8, !tbaa !290    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !288
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %_ZNK6duckdb9hugeint_trsERKS0_.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %_ZNK6duckdb9hugeint_trsERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !288  ; 2 uses
  %.lobit11.i = ashr i64 %i.g, 63
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.a, 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !288  ; 4 uses
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = load i64, ptr %0, align 8, !tbaa !290
  %i.l = tail call i64 @llvm.fshr.i64(i64 %i.j, i64 %i.k, i64 %i.a)
  %i.m = ashr i64 %i.j, %i.a
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = add nsw i64 %i.a, -64
  %i.o = ashr i64 %i.j, %i.n
  %.lobit.i = ashr i64 %i.j, 63
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.6.0.i = phi i64 [ %.lobit11.i, %bb.e ], [ %i.m, %bb.g ], [ %.lobit.i, %bb.h ]
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.e ], [ %i.l, %bb.g ], [ %i.o, %bb.h ]
  store i64 %.sroa.0.0.i, ptr %2, align 16, !tbaa !108
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !108
  br label %_ZNK6duckdb9hugeint_trsERKS0_.exit

_ZNK6duckdb9hugeint_trsERKS0_.exit:               ; preds = %bb.b, %bb.d, %bb.i
  %i.p = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.p, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tlSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::hugeint_t", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !288  ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %_ZNK6duckdb9hugeint_tlsERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !290    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !288
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ugt i64 %i.d, 127
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %_ZNK6duckdb9hugeint_tlsERKS0_.exit

bb.e:                                             ; preds = %bb.c
  switch i64 %i.d, label %bb.h [
    i64 64, label %bb.f
    i64 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %0, align 8, !tbaa !290
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %_ZNK6duckdb9hugeint_tlsERKS0_.exit

bb.h:                                             ; preds = %bb.e
  %i.j = icmp samesign ult i64 %i.d, 64
  %i.k = load i64, ptr %0, align 8, !tbaa !290    ; 3 uses
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.b, i64 %i.k, i64 %i.d)
  %i.m = and i64 %i.l, 9223372036854775807
  %i.n = shl i64 %i.k, %i.d
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.o = add nsw i64 %i.d, -64
  %i.p = shl i64 %i.k, %i.o
  %i.q = and i64 %i.p, 9223372036854775807
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f
  %.sroa.0.0.i = phi i64 [ 0, %bb.f ], [ %i.n, %bb.i ], [ 0, %bb.j ]
  %.sroa.6.0.i = phi i64 [ %i.i, %bb.f ], [ %i.m, %bb.i ], [ %i.q, %bb.j ]
  store i64 %.sroa.0.0.i, ptr %2, align 16, !tbaa !108
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !108
  br label %_ZNK6duckdb9hugeint_tlsERKS0_.exit

_ZNK6duckdb9hugeint_tlsERKS0_.exit:               ; preds = %bb.b, %bb.d, %bb.g, %bb.k
  %i.r = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.r, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_taNERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.c = and <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_toRERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.c = or <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_teOERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.c = xor <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb9hugeint_tntEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
  %i.a = load i64, ptr %0, align 8, !tbaa !290
  %i.b = load i64, ptr %1, align 8, !tbaa !290
  %i.c = icmp eq i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !288
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !288
  %i.h = icmp eq i64 %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb9hugeint_tcvbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
  %i.a = load i64, ptr %0, align 8, !tbaa !290
  %i.b = load i64, ptr %1, align 8, !tbaa !290
  %i.c = icmp ne i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !288
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !288
  %i.h = icmp ne i64 %i.e, %i.g
  %.not3.i.i = select i1 %i.c, i1 true, i1 %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i1 %.not3.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i8 @_ZNK6duckdb9hugeint_tcvhEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !290
  %i.a = trunc i64 %.val to i8
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i16 @_ZNK6duckdb9hugeint_tcvtEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !290
  %i.a = trunc i64 %.val to i16
  ret i16 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6duckdb9hugeint_tcvjEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !290
  %i.a = trunc i64 %.val to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6duckdb9hugeint_tcvmEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !290
  ret i64 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext i8 @_ZNK6duckdb9hugeint_tcvaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !290
  %i.a = trunc i64 %.val to i8
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext i16 @_ZNK6duckdb9hugeint_tcvsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !290
  %i.a = trunc i64 %.val to i16
  ret i16 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6duckdb9hugeint_tcviEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !290
  %i.a = trunc i64 %.val to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6duckdb9hugeint_tcvlEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !290
  ret i64 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb9hugeint_tcvNS_10uhugeint_tEEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !288
  %i.c = load i64, ptr %0, align 8, !tbaa !290
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.b, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb9hugeint_t8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  tail call void @_ZN6duckdb7Hugeint8ToStringB5cxx11ENS_9hugeint_tE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tmlERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !108
  %i.a = zext i64 %.sroa.0.0.copyload to i128
  %i.b = zext i64 %.sroa.4.0.copyload to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = or disjoint i128 %i.c, %i.a
  %i.e = zext i64 %.sroa.0.0.copyload.i to i128
  %i.f = zext i64 %.sroa.2.0.copyload.i to i128
end_hunk_1
begin_hunk_2_@_ZN6duckdb8Uhugeint13NegateInPlaceILb0EEEvRNS_10uhugeint_tE:bb.a
  %i.i = icmp ugt i64 %i.g, %i.f
  %.neg.i.i = sext i1 %i.i to i64
  %i.j = add i64 %i.e, %.neg.i.i
  store i64 %i.h, ptr %1, align 8, !tbaa !108
  store i64 %i.j, ptr %i.a, align 8, !tbaa !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !311
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tmIERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !833
  %i.e = sub i64 %i.b, %i.d
  %i.f = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !304    ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.g, %i.f
  %.neg.i = sext i1 %i.i to i64
  %i.j = add i64 %i.e, %.neg.i
  store i64 %i.h, ptr %0, align 8, !tbaa !108
  store i64 %i.j, ptr %i.a, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb8Uhugeint9TryNegateENS_10uhugeint_tERS1_(i64 %0, i64 %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = sub i64 %i.b, %1
  %i.d = load i64, ptr %3, align 8, !tbaa !304    ; 2 uses
  %i.e = sub i64 %i.d, %0
  %i.f = icmp ugt i64 %0, %i.d
  %.neg.i.i.i = sext i1 %i.f to i64
  %i.g = add i64 %i.c, %.neg.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  store i64 %i.e, ptr %2, align 8, !tbaa !108
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !108
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb8Uhugeint11TryMultiplyENS_10uhugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = zext i64 %0 to i128
  %i.b = zext i64 %1 to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = or disjoint i128 %i.c, %i.a
  %i.e = zext i64 %2 to i128
  %i.f = zext i64 %3 to i128
  %i.g = shl nuw i128 %i.f, 64
  %i.h = or disjoint i128 %i.g, %i.e
  %i.i = tail call { i128, i1 } @llvm.umul.with.overflow.i128(i128 %i.d, i128 %i.h) ; 2 uses
  %i.j = extractvalue { i128, i1 } %i.i, 1        ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i128, i1 } %i.i, 0        ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !833
  %i.o = trunc i128 %i.k to i64
  store i64 %i.o, ptr %4, align 8, !tbaa !304
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = xor i1 %i.j, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN6duckdb8Uhugeint8MultiplyILb0EEENS_10uhugeint_tES2_S2_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = zext i64 %0 to i128
  %i.b = zext i64 %1 to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = or disjoint i128 %i.c, %i.a
  %i.e = zext i64 %2 to i128
  %i.f = zext i64 %3 to i128
  %i.g = shl nuw i128 %i.f, 64
  %i.h = or disjoint i128 %i.g, %i.e
  %i.i = mul i128 %i.h, %i.d                      ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64
  %i.l = trunc i128 %i.i to i64
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.l, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.k, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6duckdb4SignENS_10uhugeint_tE(i64 %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !108 ; 2 uses
  %i.a = icmp ugt i64 %1, %.sroa.2.0.copyload.i
  %i.b = icmp eq i64 %1, %.sroa.2.0.copyload.i
  %i.c = icmp ugt i64 %0, %.sroa.0.0.copyload.i
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  %i.f = zext i1 %i.e to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tgtERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %i.a = icmp ugt i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = icmp ugt i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN6duckdb3AbsENS_10uhugeint_tE(i64 %0, i64 %1) local_unnamed_addr #9 {
bb.a:
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_teqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  %i.a = icmp eq i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tltERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %i.a = icmp ult i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = icmp ult i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tlSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load i64, ptr %1, align 8, !tbaa !304    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !833
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %_ZNK6duckdb10uhugeint_tlsERKS0_.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %_ZNK6duckdb10uhugeint_tlsERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = load i64, ptr %0, align 8, !tbaa !304
  store i64 0, ptr %2, align 16, !tbaa !304
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_tlsERKS0_.exit

bb.f:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.a, 64
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !833
  %i.k = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.k, i64 %i.a)
  %i.m = shl i64 %i.k, %i.a
  store i64 %i.m, ptr %2, align 16, !tbaa !304
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_tlsERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %0, align 8, !tbaa !304
  %i.p = add nsw i64 %i.a, -64
  %i.q = shl i64 %i.o, %i.p
  store i64 0, ptr %2, align 16, !tbaa !304
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_tlsERKS0_.exit

_ZNK6duckdb10uhugeint_tlsERKS0_.exit:             ; preds = %bb.b, %bb.d, %bb.e, %bb.g, %bb.h
  %i.s = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.s, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_trsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 10 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !304    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !833
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !833
  store i64 %i.g, ptr %2, align 8, !tbaa !304
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !833
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i64 %i.a, 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !833  ; 3 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = lshr i64 %i.k, %i.a
  %i.m = load i64, ptr %0, align 8, !tbaa !304
  %i.n = tail call i64 @llvm.fshr.i64(i64 %i.k, i64 %i.m, i64 %i.a)
  store i64 %i.n, ptr %2, align 8, !tbaa !304
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.o, align 8, !tbaa !833
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = add nsw i64 %i.a, -64
  %i.q = lshr i64 %i.k, %i.p
  store i64 %i.q, ptr %2, align 8, !tbaa !304
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !833
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tanERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.c = and <2 x i64> %i.b, %i.a                 ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.c, i64 0
  %i.d = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.c, i64 1
  %vec2struct5 = insertvalue { i64, i64 } %i.d, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %vec2struct5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  %i.a = icmp ne i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.b = icmp ne i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %.not8.i = select i1 %i.a, i1 true, i1 %i.b
  ret i1 %.not8.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tpLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !833
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !304
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.e, %i.j
  store i64 %i.h, ptr %0, align 8, !tbaa !108
  store i64 %i.k, ptr %i.a, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tgeERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108 ; 2 uses
  %i.a = icmp ugt i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.b = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.c = icmp uge i64 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb8Uhugeint6DivideILb0EEENS_10uhugeint_tES2_S2_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.a = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb8Uhugeint6ModuloILb0EEENS_10uhugeint_tES2_S2_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 3 uses
  %i.a = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  %.fca.0.load = load i64, ptr %4, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6duckdb8Uhugeint13TryAddInPlaceERNS_10uhugeint_tES1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833  ; 3 uses
  %i.c = add i64 %i.b, %2                         ; 2 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK6duckdb10uhugeint_trmERKS0_:bb.a
  %i.a = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  %.fca.0.load.i = load i64, ptr %2, align 8
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.fca.1.load.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tngEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !tbaa !108 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = sub i64 %i.b, %.sroa.2.0.copyload
  %i.d = load i64, ptr %1, align 8, !tbaa !304    ; 2 uses
  %i.e = sub i64 %i.d, %.sroa.0.0.copyload
  %i.f = icmp ugt i64 %.sroa.0.0.copyload, %i.d
  %.neg.i.i.i.i = sext i1 %i.f to i64
  %i.g = add i64 %i.c, %.neg.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.e, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.g, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tlsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 10 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !304    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !833
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.f = load i64, ptr %0, align 8, !tbaa !304
  store i64 0, ptr %2, align 8, !tbaa !304
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !833
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.a, 64
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !833
  %i.k = load i64, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.k, i64 %i.a)
  %i.m = shl i64 %i.k, %i.a
  store i64 %i.m, ptr %2, align 8, !tbaa !304
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !833
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %0, align 8, !tbaa !304
  %i.p = add nsw i64 %i.a, -64
  %i.q = shl i64 %i.o, %i.p
  store i64 0, ptr %2, align 8, !tbaa !304
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !833
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_torERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.c = or <2 x i64> %i.b, %i.a                  ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.c, i64 0
  %i.d = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.c, i64 1
  %vec2struct5 = insertvalue { i64, i64 } %i.d, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %vec2struct5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_teoERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.c = xor <2 x i64> %i.b, %i.a                 ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x i64> %i.c, i64 0
  %i.d = insertvalue { i64, i64 } poison, i64 %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x i64> %i.c, i64 1
  %vec2struct5 = insertvalue { i64, i64 } %i.d, i64 %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { i64, i64 } %vec2struct5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tcoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !304
  %i.b = xor i64 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !833
  %i.e = xor i64 %i.d, -1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.e, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tdVERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 3 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.a = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i64 %i.b, ptr %0, align 8, !tbaa !108
  store i64 %i.c, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_trMERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 16 ; 4 uses
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  %i.b = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.b, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_trSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::uhugeint_t", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load i64, ptr %1, align 8, !tbaa !304    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !833
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ugt i64 %i.a, 127
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.f [
    i64 0, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !311
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !833
  store i64 %i.g, ptr %2, align 16, !tbaa !304
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.f:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i64 %i.a, 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !833  ; 3 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = lshr i64 %i.k, %i.a
  %i.m = load i64, ptr %0, align 8, !tbaa !304
  %i.n = tail call i64 @llvm.fshr.i64(i64 %i.k, i64 %i.m, i64 %i.a)
  store i64 %i.n, ptr %2, align 16, !tbaa !304
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.o, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.p = add nsw i64 %i.a, -64
  %i.q = lshr i64 %i.k, %i.p
  store i64 %i.q, ptr %2, align 16, !tbaa !304
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !833
  br label %_ZNK6duckdb10uhugeint_trsERKS0_.exit

_ZNK6duckdb10uhugeint_trsERKS0_.exit:             ; preds = %bb.b, %bb.d, %bb.e, %bb.g, %bb.h
  %i.s = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.s, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_taNERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.c = and <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_toRERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.c = or <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_teOERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !108
  %i.b = load <2 x i64>, ptr %0, align 8, !tbaa !108
  %i.c = xor <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tntEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
  %.sroa.01.0.copyload.i = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !108
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !108
  %i.a = icmp eq i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %i.b = icmp eq i64 %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
  %.sroa.01.0.copyload.i = load i64, ptr %0, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !108
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !108
  %i.a = icmp ne i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %i.b = icmp ne i64 %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  %.not8.i.i = select i1 %i.a, i1 true, i1 %i.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i1 %.not8.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i8 @_ZNK6duckdb10uhugeint_tcvhEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !304
  %i.a = trunc i64 %.val to i8
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i16 @_ZNK6duckdb10uhugeint_tcvtEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !304
  %i.a = trunc i64 %.val to i16
  ret i16 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6duckdb10uhugeint_tcvjEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !304
  %i.a = trunc i64 %.val to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6duckdb10uhugeint_tcvmEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !304
  ret i64 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext i8 @_ZNK6duckdb10uhugeint_tcvaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !304
  %i.a = trunc i64 %.val to i8
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext i16 @_ZNK6duckdb10uhugeint_tcvsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !304
  %i.a = trunc i64 %.val to i16
  ret i16 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6duckdb10uhugeint_tcviEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !304
  %i.a = trunc i64 %.val to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6duckdb10uhugeint_tcvlEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !304
  ret i64 %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK6duckdb10uhugeint_tcvNS_9hugeint_tEEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !833
  %i.c = load i64, ptr %0, align 8, !tbaa !304
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.b, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb10uhugeint_t8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  tail call void @_ZN6duckdb8Uhugeint8ToStringB5cxx11ENS_10uhugeint_tE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6duckdb8BaseUUID10FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_9hugeint_tEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !152  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_ZN6duckdb12ValidityMask7CombineERKS0_m:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !408 ; 8 uses
  %i.an = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !363
  store ptr null, ptr %i.al, align 8, !tbaa !408
  store <2 x ptr> %i.an, ptr %3, align 16, !tbaa !363
  store ptr null, ptr %i.ak, align 8, !tbaa !1232
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %0, align 8, !tbaa !519   ; 7 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = add i64 %2, 63                          ; 2 uses
  %i.ar = lshr i64 %i.aq, 6                       ; 6 uses
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %min.iters.check = icmp ult i64 %i.aq, 768
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.as = sub i64 %i.d, %i.ap
  %diff.check = icmp ugt i64 %i.as, -32
  %i.at = sub i64 %i.b, %i.ap
  %diff.check26 = icmp ugt i64 %i.at, -32
  %conflict.rdx = or i1 %diff.check, %diff.check26
  br i1 %conflict.rdx, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 288230376151711740      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x i64>, ptr %i.au, align 8, !tbaa !108
  %wide.load27 = load <2 x i64>, ptr %i.av, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load28 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !108
  %wide.load29 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !108
  %i.ay = and <2 x i64> %wide.load28, %wide.load
  %i.az = and <2 x i64> %wide.load29, %wide.load27
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> %i.ay, ptr %i.ba, align 8, !tbaa !108
  store <2 x i64> %i.az, ptr %i.bb, align 8, !tbaa !108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.018.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader30, %.lr.ph.prol
  %.018.prol = phi i64 [ %i.bj, %.lr.ph.prol ], [ %.018.ph, %.lr.ph.preheader30 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader30 ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.018.prol
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !108
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.018.prol
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !108
  %i.bh = and i64 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.018.prol
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !108
  %i.bj = add nuw nsw i64 %.018.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1234

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader30
  %.018.unr = phi i64 [ %.018.ph, %.lr.ph.preheader30 ], [ %i.bj, %.lr.ph.prol ]
  %i.bk = sub nsw i64 %.018.ph, %i.ar
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.p
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bm, align 8, !tbaa !409
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !411
  %i.br = load ptr, ptr %i.am, align 8, !tbaa !412
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #46, !inline_history !1235
  %i.bu = load ptr, ptr %i.am, align 8, !tbaa !412
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #46, !inline_history !1235
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i = phi i32 [ %i.bp, %bb.t ], [ %i.bz, %bb.u ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.v, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, !prof !88

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #46
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %._crit_edge, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.x

bb.w:                                             ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %i.cb

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.018 = phi i64 [ %i.dd, %.lr.ph ], [ %.018.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.018
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !108
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.018
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !108
  %i.cg = and i64 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.018
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !108
  %i.ci = add nuw nsw i64 %.018, 1                ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !108
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ci
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !108
  %i.cn = and i64 %i.cm, %i.ck
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ci
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !108
  %i.cp = add nuw nsw i64 %.018, 2                ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !108
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cp
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !108
  %i.cu = and i64 %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cp
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !108
  %i.cw = add nuw nsw i64 %.018, 3                ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !108
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cw
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !108
  %i.db = and i64 %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cw
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !108
  %i.dd = add nuw nsw i64 %.018, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dd, %i.ar
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1236

bb.x:                                             ; preds = %bb.n, %bb.a, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %"class.duckdb::shared_ptr.180", align 16 ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.b, align 8, !tbaa !532
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @_ZN6duckdb11make_bufferINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.180") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x ptr>, ptr %2, align 16, !tbaa !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !408  ; 8 uses
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !363
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !409
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !411
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !412
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #46, !inline_history !1237
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !412
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #46, !inline_history !1237
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, !prof !88

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #46
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !408  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !409
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !411
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !412
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #46, !inline_history !1235
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !412
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #46, !inline_history !1235
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i1 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, !prof !88

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #46
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.am = call noundef ptr @_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !110
  store ptr %i.an, ptr %0, align 8, !tbaa !519
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !409
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !411
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46, !inline_history !1238
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46, !inline_history !1238
  br label %_ZNSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46
  br label %_ZNSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb12ValidityMask8ToStringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.a = icmp ult i64 %2, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.029.i.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.h, %bb.g ], [ %2, %bb.a ] ; 5 uses
  %i.b = icmp ult i64 %.02328.i.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.c = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.d = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
end_hunk_4
begin_hunk_5_@_ZN6duckdb6Vector10InitializeEbm:bb.a
  %i.bz = tail call ptr @__cxa_begin_catch(ptr %i.by) #46 ; 0 uses
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !412
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(72) %i.bu) #46, !inline_history !2248
  invoke void @__cxa_rethrow() #49
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #50
  unreachable

bb.af:                                            ; preds = %bb.ac
  unreachable

bb.ag:                                            ; preds = %_ZN6duckdb9make_uniqINS_16VectorListBufferEJRKNS_11LogicalTypeERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 1, ptr %i.cg, align 8, !tbaa !409
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 1, ptr %i.ch, align 4, !tbaa !411
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6duckdb16VectorListBufferELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bw, align 8, !tbaa !412
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bu, ptr %i.ci, align 8, !tbaa !2249
  store ptr %i.bu, ptr %i.b, align 8, !tbaa !2234
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !408 ; 8 uses
  store ptr %i.bw, ptr %i.c, align 8, !tbaa !408
  %.not.i.i.i.i29 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i29, label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ck, align 8, !tbaa !409
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !411
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !412
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #46, !inline_history !581
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !412
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #46, !inline_history !581
  br label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i30 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i30, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31

bb.al:                                            ; preds = %bb.aj
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i32 = phi i32 [ %i.cn, %bb.ak ], [ %i.cx, %bb.al ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i.i32, 1
  br i1 %i.cy, label %bb.am, label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit, !prof !88

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #46
  br label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit

bb.an:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit
  %i.cz = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #48, !noalias !2252, !inline_history !2255 ; 6 uses
  invoke void @_ZN6duckdb17VectorArrayBufferC1ERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(72) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %2)
          to label %_ZN6duckdb9make_uniqINS_17VectorArrayBufferEJRKNS_11LogicalTypeERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.ao, !noalias !2252, !inline_history !2255

bb.ao:                                            ; preds = %bb.an
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_ZN6duckdb9make_uniqINS_17VectorArrayBufferEJRKNS_11LogicalTypeERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.an
  %i.db = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #48
          to label %bb.at unwind label %bb.ap     ; 5 uses

bb.ap:                                            ; preds = %_ZN6duckdb9make_uniqINS_17VectorArrayBufferEJRKNS_11LogicalTypeERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  %i.de = tail call ptr @__cxa_begin_catch(ptr %i.dd) #46 ; 0 uses
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !412
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void %i.dh(ptr noundef nonnull align 8 dereferenceable(72) %i.cz) #46, !inline_history !2256
  invoke void @__cxa_rethrow() #49
          to label %bb.as unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  tail call void @__clang_call_terminate(ptr %i.dk) #50
  unreachable

bb.as:                                            ; preds = %bb.ap
  unreachable

bb.at:                                            ; preds = %_ZN6duckdb9make_uniqINS_17VectorArrayBufferEJRKNS_11LogicalTypeERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 1, ptr %i.dl, align 8, !tbaa !409
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 1, ptr %i.dm, align 4, !tbaa !411
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6duckdb17VectorArrayBufferELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.db, align 8, !tbaa !412
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.cz, ptr %i.dn, align 8, !tbaa !2257
  store ptr %i.cz, ptr %i.b, align 8, !tbaa !2234
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !408 ; 8 uses
  store ptr %i.db, ptr %i.c, align 8, !tbaa !408
  %.not.i.i.i.i45 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i45, label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dp, align 8, !tbaa !409
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !411
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !412
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  tail call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #46, !inline_history !581
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !412
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #46, !inline_history !581
  br label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i46 = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i.i.i46, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i47

bb.ay:                                            ; preds = %bb.aw
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i47: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i48 = phi i32 [ %i.ds, %bb.ax ], [ %i.ec, %bb.ay ]
  %i.ed = icmp eq i32 %.0.i.i.i.i.i.i48, 1
  br i1 %i.ed, label %bb.az, label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit, !prof !88

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i47
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #46
  br label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i47, %bb.av, %bb.at, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31, %bb.ai, %bb.ag, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21, %bb.v, %bb.t, %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit
  %i.ee = tail call noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.ao) ; 2 uses
  %.not = icmp eq i64 %i.ee, 0
  br i1 %.not, label %bb.bo, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.ef = load i8, ptr %i.an, align 1, !tbaa !482, !noalias !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46, !noalias !2262
  %i.eg = tail call noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.ef), !noalias !2262
  %i.eh = mul i64 %i.eg, %2
  store i64 %i.eh, ptr %i.a, align 8, !tbaa !108, !noalias !2262
  call void @_ZN6duckdb11make_bufferINS_12VectorBufferEJmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.184") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46, !noalias !2262
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.el = load <2 x ptr>, ptr %3, align 16, !tbaa !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !408 ; 8 uses
  store <2 x ptr> %i.el, ptr %i.ei, align 8, !tbaa !363
  %.not.i.i.i.i59 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i59, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit63, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.en, align 8, !tbaa !409
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !411
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !412
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #46, !inline_history !581
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !412
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #46, !inline_history !581
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit63

bb.bd:                                            ; preds = %bb.bb
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i60 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i.i.i60, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i61

bb.bf:                                            ; preds = %bb.bd
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i61

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i61: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i62 = phi i32 [ %i.eq, %bb.be ], [ %i.fa, %bb.bf ]
  %i.fb = icmp eq i32 %.0.i.i.i.i.i.i62, 1
  br i1 %i.fb, label %bb.bg, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit63, !prof !88

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i61
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit63

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit63: ; preds = %bb.ba, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i61, %bb.bg
  %i.fc = load ptr, ptr %i.ej, align 8, !tbaa !408 ; 8 uses
  %.not.i.i.i64 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i64, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit68, label %bb.bh

bb.bh:                                            ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit63
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967297
  %i.fg = trunc i64 %i.fe to i32                  ; 2 uses
  br i1 %i.ff, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.fd, align 8, !tbaa !409
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !411
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !412
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #46, !inline_history !481
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !412
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #46, !inline_history !481
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit68

bb.bj:                                            ; preds = %bb.bh
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i65 = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i65, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fp = add nsw i32 %i.fg, -1
  store i32 %i.fp, ptr %i.fd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i66

bb.bl:                                            ; preds = %bb.bj
  %i.fq = atomicrmw volatile add ptr %i.fd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i66

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i66: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i67 = phi i32 [ %i.fg, %bb.bk ], [ %i.fq, %bb.bl ]
  %i.fr = icmp eq i32 %.0.i.i.i.i.i67, 1
  br i1 %i.fr, label %bb.bm, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit68, !prof !88

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i66
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit68

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit68: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit63, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i66, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.fs = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !593 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !427
  br i1 %1, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit68
  %i.fw = mul i64 %i.ee, %2
  call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 0, i64 %i.fw, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit68, %bb.bn, %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit
  %i.fx = load i64, ptr %i.al, align 8, !tbaa !532
  %i.fy = icmp ugt i64 %2, %i.fx
  br i1 %i.fy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN6duckdb12ValidityMask6ResizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %2)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !409
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !411
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46, !inline_history !2265
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46, !inline_history !2265
  br label %_ZNSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46
  br label %_ZNSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6VectorC2ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 1)) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #46
  store i8 0, ptr %0, align 8, !tbaa !483
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3) #46, !inline_history !2266
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store i64 %2, ptr %i.c, align 8, !tbaa !532
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  invoke void @_ZN6duckdb6Vector10InitializeEbm(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext false, i64 noundef %2)
          to label %_ZN6duckdb6VectorC2ENS_11LogicalTypeEbbm.exit unwind label %.body, !inline_history !2266

.body:                                            ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_ZN6duckdb17InternalExceptionC2IJRKNS_11LogicalTypeES4_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !119

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !115, !noalias !2304
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #47
  br label %_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46, !noalias !2304
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46, !noalias !2304
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit
  %i.k = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Vector11ReinterpretERKS0_(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 1)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %4 = alloca %"class.duckdb::shared_ptr.920", align 16 ; 7 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !483
  store i8 %i.a, ptr %0, align 8, !tbaa !483
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !478
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !478  ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.g
  %i.h = icmp eq ptr %0, %1                       ; 3 uses
  %or.cond.i = or i1 %i.h, %.not.i
  br i1 %or.cond.i, label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !408  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  store ptr %i.g, ptr %i.d, align 8, !tbaa !2234
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !408  ; 8 uses
  store ptr %i.j, ptr %i.p, align 8, !tbaa !408
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !409
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !411
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !412
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #46, !inline_history !2307
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !412
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #46, !inline_history !2307
  br label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit, !prof !88

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #46
  br label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit

_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit: ; preds = %bb.a, %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k
  %i.ag = load i8, ptr %0, align 8, !tbaa !483
  %i.ah = icmp eq i8 %i.ag, 3
  br i1 %i.ah, label %bb.l, label %bb.ai

bb.l:                                             ; preds = %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit
  %i.ai = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br i1 %i.ai, label %bb.ai, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEPh(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %3, ptr noundef null)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %bb.m
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #46
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  invoke void @_ZN6duckdb6Vector11ReinterpretERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.al)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  invoke void @_ZN6duckdb15make_shared_ptrINS_17VectorChildBufferEJNS_6VectorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.920") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.q unwind label %bb.af

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load <2 x ptr>, ptr %4, align 16, !tbaa !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !408 ; 8 uses
  store <2 x ptr> %i.ap, ptr %i.am, align 8, !tbaa !363
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ar, align 8, !tbaa !409
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !411
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !412
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #46, !inline_history !776
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !412
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #46, !inline_history !776
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit

bb.t:                                             ; preds = %bb.r
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i16 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i16, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.au, %bb.u ], [ %i.be, %bb.v ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.w, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, !prof !88

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !408 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bh, align 8, !tbaa !409
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !411
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !412
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #46, !inline_history !777
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !412
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #46, !inline_history !777
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i17 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i17, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i = phi i32 [ %i.bk, %bb.aa ], [ %i.bu, %bb.ab ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.ac, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit, !prof !88

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #46
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit27

bb.ad:                                            ; preds = %bb.m
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #46
  br label %bb.ah

bb.ae:                                            ; preds = %.noexc, %bb.n, %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.by, %bb.af ], [ %i.bx, %bb.ae ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %2) #46
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ag ], [ %i.bw, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  resume { ptr, i32 } %.pn.pn

bb.ai:                                            ; preds = %bb.l, %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !478
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !478 ; 2 uses
  %.not.i18 = icmp eq ptr %i.cb, %i.cc
  %or.cond.i19 = or i1 %i.h, %.not.i18
  br i1 %or.cond.i19, label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit27, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !408 ; 3 uses
  %.not.i.i.i.i.i.i20 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i20, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i22, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i.i21 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i.i.i21, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i22

bb.am:                                            ; preds = %bb.ak
  %i.cj = atomicrmw volatile add ptr %i.cf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i22

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i22: ; preds = %bb.am, %bb.al, %bb.aj
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !2234
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !408 ; 8 uses
  store ptr %i.ce, ptr %i.ck, align 8, !tbaa !408
  %.not.i.i.i.i.i23 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i23, label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit27, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.cm, align 8, !tbaa !409
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !411
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !412
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #46, !inline_history !2307
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !412
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #46, !inline_history !2307
  br label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit27

bb.ap:                                            ; preds = %bb.an
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i5.i.i24 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i5.i.i24, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i25
end_hunk_6
begin_hunk_7_@_ZN6duckdb11make_bufferINS_16DictionaryBufferEJNS_10shared_ptrINS_13SelectionDataELb1EEEEEENS2_IT_Lb1EEEDpOT0_:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_16DictionaryBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb16DictionaryBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !409
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !411
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46, !inline_history !2372
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46, !inline_history !2372
  br label %_ZNSt12__shared_ptrIN6duckdb16DictionaryBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb16DictionaryBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #46
  br label %_ZNSt12__shared_ptrIN6duckdb16DictionaryBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb16DictionaryBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.345, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #46
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret i64 %i.a

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Vector7FlattenERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %5 = alloca %"class.duckdb::shared_ptr.184", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !483
  switch i8 %i.b, label %bb.v [
    i8 0, label %bb.aa
    i8 1, label %bb.b
    i8 4, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %4, i64 noundef %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #46
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef 0, i64 noundef 0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.aa

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #46
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.ab

bb.i:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.g = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !593  ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !482, !noalias !2373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46, !noalias !2376
  %i.o = tail call noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.n), !noalias !2376
  %i.p = shl i64 %i.o, 11
  store i64 %i.p, ptr %i.a, align 8, !tbaa !108, !noalias !2376
  call void @_ZN6duckdb11make_bufferINS_12VectorBufferEJmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.184") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46, !noalias !2376
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load <2 x ptr>, ptr %5, align 16, !tbaa !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !408  ; 8 uses
  store <2 x ptr> %i.s, ptr %i.f, align 8, !tbaa !363
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.u, align 8, !tbaa !409
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !411
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !412
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #46, !inline_history !581
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !412
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #46, !inline_history !581
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %bb.m ], [ %i.ah, %bb.n ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.o, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit, !prof !88

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.o
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !408 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ak, align 8, !tbaa !409
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !411
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !412
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #46, !inline_history !481
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !412
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #46, !inline_history !481
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i17 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i17, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.s ], [ %i.ax, %bb.t ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.u, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, !prof !88

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  %i.az = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !593
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !427
  call void @_ZN6duckdb16VectorOperations16GenerateSequenceERNS_6VectorEmRKNS_15SelectionVectorEll(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j, i64 noundef %i.l)
  br label %bb.aa

bb.v:                                             ; preds = %bb.a
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.201, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.w unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ac unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0 = phi i1 [ false, %bb.x ], [ true, %bb.w ]  ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.bg) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br i1 %.0, label %bb.z, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br i1 %.0, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1421 = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bd) #46
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, %bb.e, %bb.a
  ret void

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.z, %bb.h
  %.pn14.pn = phi { ptr, i32 } [ %.pn1421, %bb.z ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.h ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn14.pn

bb.ac:                                            ; preds = %bb.x
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11make_bufferINS_16DictionaryBufferEJRKNS_15SelectionVectorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.924") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #48, !noalias !2382 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store i32 1, ptr %i.b, align 8, !tbaa !409, !noalias !2382
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !411, !noalias !2382
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb16DictionaryBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !412, !noalias !2382
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN6duckdb16DictionaryBufferC2ERKNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16DictionaryBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !2382

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16DictionaryBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #47, !noalias !2382
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !2368, !alias.scope !2379
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !408, !alias.scope !2379
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153, !noalias !2379
  %.not.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.b, align 8, !tbaa !3, !noalias !2379
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.b, align 8, !tbaa !3, !noalias !2379
  br label %_ZN6duckdb10shared_ptrINS_16DictionaryBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i

end_hunk_7
begin_hunk_8_@_ZN6duckdb6Vector10DictionaryENS_10shared_ptrINS_17VectorChildBufferELb1EEERKNS_15SelectionVectorE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #46, !inline_history !2236
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !412
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #46, !inline_history !2236
  br label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit, !prof !88

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #46
  br label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit

_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 2048, ptr %i.x, align 8, !tbaa !532
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @_ZN6duckdb11make_bufferINS_16DictionaryBufferEJRKNS_15SelectionVectorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.924") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.y = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16DictionaryBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.ao

bb.h:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit
  %i.z = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17VectorChildBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.i unwind label %bb.ao

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.ab = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.j unwind label %bb.ao

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ab)
          to label %bb.k unwind label %bb.ao

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ad = load i64, ptr %3, align 8, !tbaa !108
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.ae = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16DictionaryBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.l unwind label %bb.ao      ; 5 uses

bb.l:                                             ; preds = %bb.k
  %i.af = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17VectorChildBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.m unwind label %bb.ao      ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !151
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !89 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !108
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.m
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.ao    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.am, ptr %5, align 8, !tbaa !89
  %i.an = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !153
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.m
  %i.ao = phi ptr [ %i.am, %.noexc ], [ %i.ah, %bb.m ] ; 2 uses
  switch i64 %i.ak, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !153
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !153
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !152
  %i.as = load ptr, ptr %5, align 8, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !89 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  %i.ay = load ptr, ptr %5, align 8, !tbaa !89    ; 6 uses
  %i.az = icmp eq ptr %i.ay, %i.ah                ; 2 uses
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  br i1 %i.az, label %bb.q, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.p
  br i1 %i.az, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = load i64, ptr %i.ar, align 8, !tbaa !152 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %.not21.i.i = icmp eq ptr %5, %i.au
  br i1 %.not21.i.i, label %_ZN6duckdb16DictionaryBuffer15SetDictionaryIdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.r, !prof !88

bb.r:                                             ; preds = %bb.q
  switch i64 %i.ba, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !153
  store i8 %i.bc, ptr %i.av, align 1, !tbaa !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.bd = load i64, ptr %i.ar, align 8, !tbaa !152 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !152
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !153
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !89
  br label %_ZN6duckdb16DictionaryBuffer15SetDictionaryIdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !89
  %i.bi = load <2 x i64>, ptr %i.ar, align 8, !tbaa !153
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !153
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bj = load i64, ptr %i.aw, align 8, !tbaa !153
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !89
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.bl = load <2 x i64>, ptr %i.ar, align 8, !tbaa !153
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !tbaa !153
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.av, ptr %5, align 8, !tbaa !89
  store i64 %i.bj, ptr %i.ah, align 8, !tbaa !153
  br label %_ZN6duckdb16DictionaryBuffer15SetDictionaryIdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ah, ptr %5, align 8, !tbaa !89
  br label %_ZN6duckdb16DictionaryBuffer15SetDictionaryIdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6duckdb16DictionaryBuffer15SetDictionaryIdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.u, %bb.v
  %i.bm = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.av, %bb.u ], [ %i.ah, %bb.v ], [ %i.ay, %bb.q ]
  store i64 0, ptr %i.ar, align 8, !tbaa !152
  store i8 0, ptr %i.bm, align 1, !tbaa !153
  %i.bn = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ah
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZN6duckdb16DictionaryBuffer15SetDictionaryIdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZdlPv(ptr noundef %i.bn) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb16DictionaryBuffer15SetDictionaryIdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bs = load <2 x ptr>, ptr %4, align 16, !tbaa !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !408 ; 8 uses
  store <2 x ptr> %i.bs, ptr %i.bp, align 8, !tbaa !363
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_16DictionaryBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bu, align 8, !tbaa !409
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !411
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !412
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #46, !inline_history !749
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !412
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #46, !inline_history !749
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_16DictionaryBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit

bb.y:                                             ; preds = %bb.w
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i5 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i5, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.z ], [ %i.ch, %bb.aa ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ci, label %bb.ab, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_16DictionaryBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, !prof !88

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_16DictionaryBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_16DictionaryBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cl = load <2 x ptr>, ptr %1, align 8, !tbaa !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !408 ; 8 uses
  store <2 x ptr> %i.cl, ptr %i.cj, align 8, !tbaa !363
  %.not.i.i.i.i6 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i6, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_16DictionaryBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.co = load atomic i64, ptr %i.cn acquire, align 8 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 4294967297
  %i.cq = trunc i64 %i.co to i32                  ; 2 uses
  br i1 %i.cp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.cn, align 8, !tbaa !409
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i32 0, ptr %i.cr, align 4, !tbaa !411
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !412
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #46, !inline_history !776
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !412
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #46, !inline_history !776
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i7 = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i7, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = add nsw i32 %i.cq, -1
  store i32 %i.cz, ptr %i.cn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8

bb.ag:                                            ; preds = %bb.ae
  %i.da = atomicrmw volatile add ptr %i.cn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i9 = phi i32 [ %i.cq, %bb.af ], [ %i.da, %bb.ag ]
  %i.db = icmp eq i32 %.0.i.i.i.i.i.i9, 1
  br i1 %i.db, label %bb.ah, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, !prof !88

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_16DictionaryBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8, %bb.ah
  %i.dc = load ptr, ptr %i.bq, align 8, !tbaa !408 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_16DictionaryBufferELb1EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dd, align 8, !tbaa !409
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !411
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !412
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #46, !inline_history !750
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !412
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #46, !inline_history !750
  br label %_ZN6duckdb10shared_ptrINS_16DictionaryBufferELb1EED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i10 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i10, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i = phi i32 [ %i.dg, %bb.al ], [ %i.dq, %bb.am ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.an, label %_ZN6duckdb10shared_ptrINS_16DictionaryBufferELb1EED2Ev.exit, !prof !88

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #46
  br label %_ZN6duckdb10shared_ptrINS_16DictionaryBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16DictionaryBufferELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorChildBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  ret void

bb.ao:                                            ; preds = %.noexc.i, %bb.j, %bb.l, %bb.k, %bb.i, %bb.h, %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_16DictionaryBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  resume { ptr, i32 } %i.ds
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_17VectorChildBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2311   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EE13AssertNotNullEb.exit, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.339, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6duckdb14ConstantVector19ZeroSelectionVectorEmRNS_15SelectionVectorE:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %i.g, i1 false), !tbaa !3
  br label %_ZN6duckdb14ConstantVector19ZeroSelectionVectorEv.exit

_ZN6duckdb14ConstantVector19ZeroSelectionVectorEv.exit: ; preds = %_ZN6duckdb14ConstantVector19ZeroSelectionVectorEv.exit.loopexit, %bb.d, %bb.c, %bb.b
  %.09 = phi ptr [ @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, %bb.d ], [ @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, %bb.b ], [ @_ZZN6duckdb14ConstantVector19ZeroSelectionVectorEvE21ZERO_SELECTION_VECTOR, %bb.c ], [ %1, %_ZN6duckdb14ConstantVector19ZeroSelectionVectorEv.exit.loopexit ]
  ret ptr %.09
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv() local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6duckdb10FlatVector26IncrementalSelectionVectorEvE28INCREMENTAL_SELECTION_VECTOR acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !778

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6duckdb10FlatVector26IncrementalSelectionVectorEvE28INCREMENTAL_SELECTION_VECTOR) #46
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN6duckdb10FlatVector26IncrementalSelectionVectorEvE28INCREMENTAL_SELECTION_VECTOR, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6duckdb15SelectionVectorD2Ev, ptr nonnull @_ZZN6duckdb10FlatVector26IncrementalSelectionVectorEvE28INCREMENTAL_SELECTION_VECTOR, ptr nonnull @__dso_handle) #46 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6duckdb10FlatVector26IncrementalSelectionVectorEvE28INCREMENTAL_SELECTION_VECTOR) #46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN6duckdb10FlatVector26IncrementalSelectionVectorEvE28INCREMENTAL_SELECTION_VECTOR
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2484   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2484 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EE3getILb1EEERS1_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.279, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #46
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -128
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1055
  %i.e = load ptr, ptr %0, align 8, !tbaa !1056   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 7                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !108
  store i64 %i.i, ptr %i.b, align 8, !tbaa !108
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !469

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.280, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Vector8SequenceEllm(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 1), (72, 80)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::shared_ptr.184", align 16 ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  store i8 4, ptr %0, align 8, !tbaa !483
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 24, ptr %i.a, align 8, !tbaa !108
  call void @_ZN6duckdb11make_bufferINS_12VectorBufferEJmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.184") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load <2 x ptr>, ptr %4, align 16, !tbaa !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !408  ; 8 uses
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !363
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !409
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !411
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !412
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #46, !inline_history !581
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !412
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #46, !inline_history !581
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit, !prof !88

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !408  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.w, align 8, !tbaa !409
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !411
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !412
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #46, !inline_history !481
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !412
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #46, !inline_history !481
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i6 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.z, %bb.k ], [ %i.aj, %bb.l ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.m, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, !prof !88

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.al = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !593 ; 3 uses
  store i64 %1, ptr %i.an, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %2, ptr %i.ao, align 8, !tbaa !108
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %3, ptr %i.ap, align 8, !tbaa !108
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 16, i1 false)
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !408 ; 8 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !408
  %.not.i.i.i.i.i7 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i7, label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.at, align 8, !tbaa !409
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !411
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !412
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #46, !inline_history !2236
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !412
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #46, !inline_history !2236
  br label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit

bb.p:                                             ; preds = %bb.n
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.q ], [ %i.bg, %bb.r ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.s, label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit, !prof !88

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #46
  br label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit

_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 2048, ptr %i.bi, align 8, !tbaa !532
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.bj, align 8, !tbaa !2234
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !408 ; 8 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !408
  %.not.i.i.i.i8 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i8, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EE5resetEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bm, align 8, !tbaa !409
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !411
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !412
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #46, !inline_history !2235
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !412
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #46, !inline_history !2235
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EE5resetEv.exit

bb.v:                                             ; preds = %bb.t
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i9 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i9, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = add nsw i32 %i.bp, -1
end_hunk_9
begin_hunk_10_@_ZN6duckdb13VariantVector7GetDataERNS_6VectorE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 3)
  %i.l = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb20UnifiedVariantVector7GetKeysERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1055
  %i.e = load ptr, ptr %0, align 8, !tbaa !1056   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 7                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !108
  store i64 %i.i, ptr %i.b, align 8, !tbaa !108
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EE3getILb1EEERKS1_m.exit, label %bb.b, !prof !469

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.280, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb20UnifiedVariantVector12GetKeysEntryERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb20UnifiedVariantVector11GetChildrenERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb20UnifiedVariantVector20GetChildrenKeysIndexERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb20UnifiedVariantVector22GetChildrenValuesIndexERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb20UnifiedVariantVector9GetValuesERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb20UnifiedVariantVector15GetValuesTypeIdERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb20UnifiedVariantVector19GetValuesByteOffsetERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb20UnifiedVariantVector7GetDataERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 3)
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb11VectorCacheC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #19 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11VectorCacheC2ERNS_9AllocatorERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.duckdb::shared_ptr.981", align 16 ; 7 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  invoke void @_ZN6duckdb11make_bufferINS_17VectorCacheBufferEJRNS_9AllocatorERKNS_11LogicalTypeERKmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.981") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x ptr>, ptr %4, align 16, !tbaa !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !408  ; 8 uses
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !363
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorCacheBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !409
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !411
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !412
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #46, !inline_history !2705
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !412
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #46, !inline_history !2705
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorCacheBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorCacheBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, !prof !88

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorCacheBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorCacheBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !408  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorCacheBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.v, align 8, !tbaa !409
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !411
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !412
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #46, !inline_history !2706
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !412
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #46, !inline_history !2706
  br label %_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i4 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.l ], [ %i.ai, %bb.m ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.n, label %_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EED2Ev.exit, !prof !88

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #46
  br label %_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSINS_17VectorCacheBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #46
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11make_bufferINS_17VectorCacheBufferEJRNS_9AllocatorERKNS_11LogicalTypeERKmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.981") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #48, !noalias !2710 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store i32 1, ptr %i.b, align 8, !tbaa !409, !noalias !2710
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !411, !noalias !2710
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb17VectorCacheBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !412, !noalias !2710
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !108, !noalias !2710
  invoke void @_ZN6duckdb17VectorCacheBufferC2ERNS_9AllocatorERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.e)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb17VectorCacheBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !2710

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb17VectorCacheBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #47, !noalias !2710
  resume { ptr, i32 } %i.f

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !2713, !alias.scope !2707
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.g, align 8, !tbaa !408, !alias.scope !2707
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153, !noalias !2707
  %.not.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !3, !noalias !2707
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !3, !noalias !2707
  br label %_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4, !noalias !2707 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i

_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.d, %bb.c
  %i.l = load atomic i64, ptr %i.b acquire, align 8, !noalias !2707 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i
  store i32 0, ptr %i.b, align 8, !tbaa !409, !noalias !2707
  store i32 0, ptr %i.c, align 4, !tbaa !411, !noalias !2707
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !412, !noalias !2707
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2707
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #46, !noalias !2707, !inline_history !2716
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !412, !noalias !2707
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !2707
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #46, !noalias !2707, !inline_history !2716
  br label %_ZN6duckdb15make_shared_ptrINS_17VectorCacheBufferEJRNS_9AllocatorERKNS_11LogicalTypeERKmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153, !noalias !2707
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.n, -1
  store i32 %i.v, ptr %i.b, align 8, !tbaa !3, !noalias !2707
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4, !noalias !2707
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.i, label %_ZN6duckdb15make_shared_ptrINS_17VectorCacheBufferEJRNS_9AllocatorERKNS_11LogicalTypeERKmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !88

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #46, !noalias !2707
  br label %_ZN6duckdb15make_shared_ptrINS_17VectorCacheBufferEJRNS_9AllocatorERKNS_11LogicalTypeERKmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_17VectorCacheBufferEJRNS_9AllocatorERKNS_11LogicalTypeERKmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408  ; 8 uses
end_hunk_10
begin_hunk_11_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_:bb.a
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add i64 %.sroa.05.0.lcssa.i.i133, 1
  %i.ay = add i64 %i.ax, %i.aw
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.az = add i64 %.sroa.0186.2231, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0186.4 = phi i64 [ %i.ay, %bb.i ], [ %.sroa.05.0.lcssa.i.i133, %bb.h ], [ %i.az, %bb.j ] ; 2 uses
  %i.ba = add nuw nsw i32 %.0102233, 3            ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.e
  br i1 %i.bb, label %.peel.next, label %.loopexit229, !llvm.loop !3964

bb.l:                                             ; preds = %bb.d
  %i.bc = sext i32 %i.b to i64
  %.sroa.05.0.lcssa.i.i137 = add i64 %1, %i.bc    ; 2 uses
  %.not224 = icmp eq i32 %i.d, 0
  %i.bd = add nsw i32 %i.d, -1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = add i64 %.sroa.05.0.lcssa.i.i137, 1
  %i.bg = add i64 %i.bf, %i.be
  %.sroa.02.0.lcssa.i.i.i138 = select i1 %.not224, i64 %.sroa.05.0.lcssa.i.i137, i64 %i.bg
  br label %.loopexit229

.loopexit229:                                     ; preds = %bb.k, %bb.l
  %.sroa.0186.5 = phi i64 [ %.sroa.02.0.lcssa.i.i.i138, %bb.l ], [ %.sroa.0186.4, %bb.k ] ; 3 uses
  %i.bh = and i32 %i.h, 536870912
  %.not123 = icmp eq i32 %i.bh, 0
  br i1 %.not123, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit229
  %i.bi = load i32, ptr %i.f, align 8, !tbaa !3959
  %i.bj = sub nsw i32 %i.bi, %i.e                 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not124 = icmp eq i32 %i.i, 2
  %spec.select221.v = select i1 %.not124, i64 1, i64 2
  %spec.select221 = add i64 %.sroa.0186.5, %spec.select221.v
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %i.bj, -1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add i64 %.sroa.0186.5, 2
  %i.bo = add i64 %i.bn, %i.bm
  br label %.thread

bb.p:                                             ; preds = %bb.c
  %i.bp = icmp sgt i32 %i.e, 0
  br i1 %i.bp, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bq = and i32 %i.h, 16711680
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond5, label %.peel.next243, label %bb.r

.peel.next243:                                    ; preds = %bb.q
  %i.bt = urem i32 %i.e, 3                        ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %spec.select126 = select i1 %i.bu, i32 3, i32 %i.bt ; 4 uses
  %i.bv = zext nneg i32 %spec.select126 to i64
  %.sroa.05.0.lcssa.i.i144.peel = add i64 %1, %i.bv ; 2 uses
  %i.bw = add i32 %i.d, %i.b
  %i.bx = xor i32 %spec.select126, -1
  %i.by = add i32 %i.bw, %i.bx                    ; 2 uses
  %i.bz = udiv i32 %i.by, 3
  %i.ca = add nuw nsw i32 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.by, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next243
  %n.vec = and i32 %i.ca, 2147483644              ; 3 uses
  %i.cb = mul i32 %n.vec, 3
  %i.cc = or disjoint i32 %spec.select126, %i.cb
  %i.cd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.05.0.lcssa.i.i144.peel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.cd, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi260 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %i.ce = add <2 x i64> %vec.phi, splat (i64 4)   ; 2 uses
  %i.cf = add <2 x i64> %vec.phi260, splat (i64 4) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.cg = icmp eq i32 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !3965

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next243, %middle.block
  %.0104235.ph = phi i32 [ %spec.select126, %.peel.next243 ], [ %i.cc, %middle.block ]
  %.sroa.0186.8234.ph = phi i64 [ %.sroa.05.0.lcssa.i.i144.peel, %.peel.next243 ], [ %i.ch, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0104235 = phi i32 [ %i.ci, %scalar.ph ], [ %.0104235.ph, %scalar.ph.preheader ]
  %.sroa.0186.8234 = phi i64 [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ], [ %.sroa.0186.8234.ph, %scalar.ph.preheader ]
  %.sroa.05.0.lcssa.i.i144 = add i64 %.sroa.0186.8234, 4 ; 2 uses
  %i.ci = add nuw nsw i32 %.0104235, 3            ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.e
  br i1 %i.cj, label %scalar.ph, label %.loopexit, !llvm.loop !3966

bb.r:                                             ; preds = %bb.q
  %i.ck = zext nneg i32 %i.e to i64
  %.sroa.05.0.lcssa.i.i146 = add i64 %1, %i.ck
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.r
  %.sroa.0186.10 = phi i64 [ %.sroa.05.0.lcssa.i.i146, %bb.r ], [ %i.ch, %middle.block ], [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ] ; 2 uses
  %i.cl = and i32 %i.h, 536870912
  %.not = icmp eq i32 %i.cl, 0
  %i.cm = sext i32 %i.b to i64                    ; 2 uses
  br i1 %.not, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %.loopexit
  %i.cn = load ptr, ptr %0, align 8, !tbaa !3950
  %i.co = zext nneg i32 %i.e to i64
  %i.cp = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cp)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv.a = phi i64 [ %i.cm, %.lr.ph ], [ %indvars.iv.next.a, %bb.t ] ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 %indvars.iv.a
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !153
  %i.ct = icmp eq i8 %i.cs, 48
  br i1 %i.ct, label %bb.t, label %.critedge.split.loop.exit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1 ; 2 uses
  %i.cu = icmp sgt i64 %indvars.iv.next.a, %i.co
  br i1 %i.cu, label %bb.s, label %.critedge, !llvm.loop !3967

.critedge.split.loop.exit:                        ; preds = %bb.s
  %i.cv = trunc nsw i64 %indvars.iv.a to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.critedge.split.loop.exit
  %.0105.lcssa.ph = phi i32 [ %i.cv, %.critedge.split.loop.exit ], [ %smin, %bb.t ] ; 3 uses
  %.not122 = icmp ne i32 %.0105.lcssa.ph, %i.e
  %i.cw = zext i1 %.not122 to i64
  %spec.select223 = add i64 %.sroa.0186.10, %i.cw
  %i.cx = zext nneg i32 %i.e to i64
  %i.cy = sext i32 %.0105.lcssa.ph to i64
  %.not7.i.i148 = icmp eq i32 %i.e, %.0105.lcssa.ph
  %gepdiff226 = sub nsw i64 %i.cy, %i.cx
  %i.cz = select i1 %.not7.i.i148, i64 0, i64 %gepdiff226
  %.sroa.05.0.lcssa.i.i149 = add i64 %spec.select223, %i.cz
  br label %.thread

bb.u:                                             ; preds = %.loopexit
  %i.da = zext nneg i32 %i.e to i64
  %gepdiff = sub nsw i64 %i.cm, %i.da
  %i.db = add nsw i64 %gepdiff, 1
  %.sroa.05.0.lcssa.i.i152 = add i64 %i.db, %.sroa.0186.10 ; 2 uses
  %i.dc = load i32, ptr %i.f, align 8, !tbaa !3959 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, %i.b
  br i1 %i.dd, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.de = xor i32 %i.b, -1
  %i.df = add i32 %i.dc, %i.de
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = add i64 %.sroa.05.0.lcssa.i.i152, 1
  %i.di = add i64 %i.dh, %i.dg
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.dj = add i64 %1, 1
  %i.dk = sub nsw i32 0, %i.e                     ; 5 uses
  %i.dl = icmp eq i32 %i.b, 0
  br i1 %i.dl, label %.thread210, label %bb.x

.thread210:                                       ; preds = %bb.w
  %i.dm = load i32, ptr %i.f, align 8, !tbaa !3959 ; 2 uses
  %i.dn = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.dk)
  %i.do = icmp slt i32 %i.dm, 0
  %spec.select128 = select i1 %i.do, i32 %i.dk, i32 %i.dn
  br label %.critedge7

bb.x:                                             ; preds = %bb.w
  %i.dp = and i32 %i.h, 536870912
  %.not121 = icmp eq i32 %i.dp, 0
  %i.dq = icmp sgt i32 %i.b, 0
  %or.cond11 = select i1 %.not121, i1 %i.dq, i1 false
  br i1 %or.cond11, label %.preheader228, label %.critedge7.thread

.preheader228:                                    ; preds = %bb.x
  %i.dr = load ptr, ptr %0, align 8, !tbaa !3950
  br label %bb.y

bb.y:                                             ; preds = %.preheader228, %bb.z
  %.0 = phi i32 [ %3, %bb.z ], [ %i.b, %.preheader228 ] ; 4 uses
  %2 = zext nneg i32 %.0 to i64
  %i.ds = getelementptr i8, ptr %i.dr, i64 %2
  %i.dt = getelementptr i8, ptr %i.ds, i64 -1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !153
  %i.dv = icmp eq i8 %i.du, 48
  br i1 %i.dv, label %bb.z, label %.critedge7.thread

bb.z:                                             ; preds = %bb.y
  %3 = add nsw i32 %.0, -1
  %.old10 = icmp sgt i32 %.0, 1
  br i1 %.old10, label %bb.y, label %.critedge7

.critedge7:                                       ; preds = %bb.z, %.thread210
  %.0100214 = phi i32 [ %spec.select128, %.thread210 ], [ %i.dk, %bb.z ] ; 2 uses
  %.not225 = icmp eq i32 %.0100214, 0
  br i1 %.not225, label %.thread, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.y, %bb.x, %.critedge7
  %.1219 = phi i32 [ 0, %.critedge7 ], [ %i.b, %bb.x ], [ %.0, %bb.y ]
  %.0100214218 = phi i32 [ %.0100214, %.critedge7 ], [ %i.dk, %bb.x ], [ %i.dk, %bb.y ] ; 2 uses
  %i.dw = add i64 %1, 2
  %i.dx = icmp sgt i32 %.0100214218, 0
  %i.dy = add nsw i32 %.0100214218, -1
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = add i64 %1, 3
  %i.eb = add i64 %i.ea, %i.dz
  %.sroa.02.0.lcssa.i.i.i156 = select i1 %i.dx, i64 %i.eb, i64 %i.dw
  %i.ec = sext i32 %.1219 to i64
  %.sroa.05.0.lcssa.i.i158 = add i64 %.sroa.02.0.lcssa.i.i.i156, %i.ec
  br label %.thread

.thread:                                          ; preds = %bb.n, %.loopexit229, %bb.u, %bb.v, %.critedge7, %.critedge7.thread, %bb.o, %.critedge, %bb.b
  %.sroa.098.1 = phi i64 [ %i.z, %bb.b ], [ %.sroa.05.0.lcssa.i.i149, %.critedge ], [ %i.bo, %bb.o ], [ %i.di, %bb.v ], [ %.sroa.05.0.lcssa.i.i152, %bb.u ], [ %.sroa.05.0.lcssa.i.i158, %.critedge7.thread ], [ %i.dj, %.critedge7 ], [ %.sroa.0186.5, %.loopexit229 ], [ %spec.select221, %bb.n ]
  ret i64 %.sroa.098.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSE_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1, ptr noundef byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::nonfinite_writer", align 8 ; 5 uses
  %5 = alloca %"class.duckdb_fmt::v6::basic_memory_buffer", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::str_writer", align 8 ; 6 uses
  %7 = alloca %"class.duckdb_fmt::v6::internal::float_writer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.a = call i64 @_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_(ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 3 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = and i32 %.sroa.8.0.extract.trunc, -65281 ; 2 uses
  %i.e = bitcast double %1 to i64
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 256
  %i.h = fneg double %1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i8 %i.c, 4
  %i.j = and i8 %i.i, 7                           ; 2 uses
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = icmp eq i8 %i.j, 1
  %i.n = select i1 %i.m, i32 0, i32 %i.l
  %spec.select = or disjoint i32 %i.n, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.8.0 = phi i32 [ %i.g, %bb.b ], [ %spec.select, %bb.c ] ; 7 uses
  %.0 = phi double [ %i.h, %bb.b ], [ %1, %bb.c ] ; 4 uses
  %i.o = fcmp ueq double %.0, +inf
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp oeq double %.0, +inf
  %i.q = and i32 %.sroa.8.0, 16777216
  %.not69 = icmp eq i32 %i.q, 0                   ; 2 uses
  %.str.401..str.368 = select i1 %.not69, ptr @.str.368, ptr @.str.401
  %.str.402..str.367 = select i1 %.not69, ptr @.str.367, ptr @.str.402
  %i.r = select i1 %i.p, ptr %.str.401..str.368, ptr %.str.402..str.367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.s = lshr i32 %.sroa.8.0, 8
  %i.t = and i32 %i.s, 255
  store i32 %i.t, ptr %4, align 8, !tbaa !3943
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !3945
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.aj

bb.f:                                             ; preds = %bb.d
  %i.v = and i8 %i.c, 15
  switch i8 %i.v, label %bb.p [
    i8 0, label %.sink.split
    i8 4, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = lshr i32 %.sroa.8.0, 8
  %i.x = and i32 %i.w, 255                        ; 2 uses
  %.not70 = icmp eq i32 %i.x, 0
  br i1 %.not70, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !153  ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2784 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2789
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !153
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !2784
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !2782 ; 4 uses
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 7 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.k, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.am = add i64 %.sroa.speculated.i.i.i.i.i, %i.ak ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ak
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 9223372036854775807)
  %i.ap = select i1 %i.an, i64 9223372036854775807, i64 %i.ao ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #48 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ak ; 2 uses
  store i8 %i.aa, ptr %i.ar, align 1, !tbaa !153
  %i.as = icmp sgt i64 %i.ak, 0
  br i1 %i.as, label %bb.l, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.aq, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !2782
  store ptr %i.at, ptr %i.ab, align 8, !tbaa !2784
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store ptr %i.au, ptr %i.ad, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i
  %i.av = and i32 %.sroa.8.0, -65281              ; 2 uses
  %i.aw = load i32, ptr %2, align 8, !tbaa !3514  ; 2 uses
  %.not71 = icmp eq i32 %i.aw, 0
  br i1 %.not71, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %2, align 8, !tbaa !3514
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit, %bb.n, %bb.g
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %bb.g ], [ %i.av, %bb.n ], [ %i.av, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit ]
  %i.ay = load i8, ptr %i.b, align 1
  %i.az = and i8 %i.ay, -16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.o
  %.sink107 = phi i8 [ %i.az, %bb.o ], [ %i.c, %bb.f ]
  %.sroa.8.2.ph = phi i32 [ %.sroa.8.1, %bb.o ], [ %.sroa.8.0, %bb.f ]
  %i.ba = or disjoint i8 %.sink107, 2
  store i8 %i.ba, ptr %i.b, align 1
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.f
  %.sroa.8.2 = phi i32 [ %.sroa.8.0, %bb.f ], [ %.sroa.8.2.ph, %.sink.split ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i64 0, ptr %i.bd, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !412
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !3946
  store i64 500, ptr %i.bc, align 8, !tbaa !3948
  %i.bf = trunc i32 %.sroa.8.2 to i8              ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 3
  br i1 %i.bg, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bh = lshr i32 %.sroa.8.2, 8
  %i.bi = and i32 %i.bh, 255                      ; 2 uses
  %.not79 = icmp eq i32 %i.bi, 0
  br i1 %.not79, label %bb.s, label %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit

_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit: ; preds = %bb.q
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.bj
end_hunk_11
