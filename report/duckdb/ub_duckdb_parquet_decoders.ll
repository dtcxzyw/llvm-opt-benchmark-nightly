inline.NumInlined: 1554
inline.NumDeleted: 946
begin_hunk_0_@_ZN6duckdb17DictionaryDecoder20InitializeDictionaryEmNS_12optional_ptrIKNS_11TableFilterELb1EEENS1_INS_16TableFilterStateELb1EEEb:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetEDn.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.t, align 8, !tbaa !294
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !296
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !242
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !350
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !242
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !350
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %bb.e ], [ %i.ag, %bb.f ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.g, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEaSEOS2_.exit, !prof !41

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEaSEOS2_.exit: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EE5resetEDn.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !299 ; 8 uses
  %.not.i.i.i17 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i17, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEaSEOS2_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aj, align 8, !tbaa !294
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !296
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !242
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #23, !inline_history !351
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !242
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #23, !inline_history !351
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i18 = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.am, %bb.k ], [ %i.aw, %bb.l ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.m, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit, !prof !41

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #23
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEaSEOS2_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ay = call noundef ptr @_ZNK6duckdb10shared_ptrINS_17VectorChildBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 88 ; 4 uses
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !266 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i8 0, i64 16, i1 false)
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !299 ; 8 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !299
  %.not.i.i.i.i.i19 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i19, label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.be, align 8, !tbaa !294
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !296
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !242
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #23, !inline_history !352
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !242
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #23, !inline_history !352
  br label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bh, %bb.q ], [ %i.br, %bb.r ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bs, label %bb.s, label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit, !prof !41

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #23
  br label %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit

_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit: ; preds = %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  store i64 %i.bb, ptr %i.bt, align 8, !tbaa !332
  %i.bu = load i8, ptr %i.h, align 8, !tbaa !347, !range !353, !noundef !23
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !344 ; 2 uses
  %i.bx = load ptr, ptr %i.ba, align 8, !tbaa !331 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %bb.u, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.u:                                             ; preds = %bb.t
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.bb)
  %.pre.i = load ptr, ptr %i.ba, align 8, !tbaa !331
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.t, %bb.u
  %i.by = phi ptr [ %.pre.i, %bb.u ], [ %i.bx, %bb.t ]
  %i.bz = lshr i64 %i.bw, 6
  %i.ca = and i64 %i.bw, 63
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = xor i64 %i.cb, -1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !266
  %i.cf = and i64 %i.ce, %i.cc
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !266
  br label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit
  %i.cg = load ptr, ptr %0, align 8, !tbaa !348, !nonnull !23, !align !24 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %i.ci = load i64, ptr %i.c, align 8, !tbaa !344
  %i.cj = call noundef ptr @_ZNK6duckdb10shared_ptrINS_17VectorChildBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !242
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 120
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(512) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef null, i64 noundef %i.ci, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(104) %i.ck)
  %i.co = load ptr, ptr %5, align 8, !tbaa !354
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %_ZN6duckdb17DictionaryDecoder9CanFilterERKNS_11TableFilterERNS_16TableFilterStateE.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZNK6duckdb12optional_ptrIKNS_11TableFilterELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.cp = load ptr, ptr %5, align 8, !tbaa !354
  call void @_ZNK6duckdb12optional_ptrINS_16TableFilterStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.cq = load i64, ptr %i.c, align 8, !tbaa !344
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_ZN6duckdb17DictionaryDecoder9CanFilterERKNS_11TableFilterERNS_16TableFilterStateE.exit.thread, label %_ZN6duckdb17DictionaryDecoder9CanFilterERKNS_11TableFilterERNS_16TableFilterStateE.exit

_ZN6duckdb17DictionaryDecoder9CanFilterERKNS_11TableFilterERNS_16TableFilterStateE.exit: ; preds = %bb.w
  %i.cs = load ptr, ptr %6, align 8, !tbaa !357
  %i.ct = call noundef zeroext i1 @_ZN6duckdb17DictionaryDecoder24DictionarySupportsFilterERKNS_11TableFilterERNS_16TableFilterStateE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(9) %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
  br i1 %i.ct, label %bb.x, label %_ZN6duckdb17DictionaryDecoder9CanFilterERKNS_11TableFilterERNS_16TableFilterStateE.exit.thread

bb.x:                                             ; preds = %_ZN6duckdb17DictionaryDecoder9CanFilterERKNS_11TableFilterERNS_16TableFilterStateE.exit
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !266 ; 2 uses
  %i.cv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #21, !noalias !360 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cv, i8 0, i64 %i.cu, i1 false), !noalias !360
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !345 ; 2 uses
  store ptr %i.cv, ptr %i.d, align 8, !tbaa !345
  %.not.i.i.i.i.i20 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i20, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.cw) #22
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8)
  %i.cx = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17VectorChildBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %bb.y unwind label %bb.av

bb.y:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !266
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.cy, i64 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.z unwind label %bb.av

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.da = load i64, ptr %i.a, align 8, !tbaa !266
  store i64 %i.da, ptr %i.g, align 8, !tbaa !346
  %i.db = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17VectorChildBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %bb.aa unwind label %bb.aw

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  invoke void @_ZNK6duckdb12optional_ptrIKNS_11TableFilterELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ab unwind label %bb.aw

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load ptr, ptr %5, align 8, !tbaa !354
  invoke void @_ZNK6duckdb12optional_ptrINS_16TableFilterStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ac unwind label %bb.aw

bb.ac:                                            ; preds = %bb.ab
  %i.de = load ptr, ptr %6, align 8, !tbaa !357
  %i.df = load i64, ptr %i.a, align 8, !tbaa !266
  %i.dg = invoke noundef i64 @_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(104) %i.dc, ptr noundef nonnull align 8 dereferenceable(73) %8, ptr noundef nonnull align 8 dereferenceable(9) %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %i.de, i64 noundef %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.preheader unwind label %bb.aw ; 0 uses

.preheader:                                       ; preds = %bb.ac
  %i.dh = load i64, ptr %i.g, align 8, !tbaa !346 ; 5 uses
  %.not34 = icmp eq i64 %i.dh, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.di = load ptr, ptr %9, align 8, !tbaa !363   ; 6 uses
  %.not.i30 = icmp eq ptr %i.di, null
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !345 ; 6 uses
  br i1 %.not.i30, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %i.dh, 3                    ; 3 uses
  %i.dk = icmp ult i64 %i.dh, 4
  br i1 %i.dk, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %i.dh, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr align 1 %i.dj, i8 1, i64 %i.dh, i1 false), !tbaa !364
  br label %._crit_edge

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.01033.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.gk, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod46)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %.01033.epil = phi i64 [ %i.dp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %.01033.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.01033.epil
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dn
  store i8 1, ptr %i.do, align 1, !tbaa !364
  %i.dp = add nuw i64 %.01033.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !365

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, %.preheader
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !299 ; 8 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i22, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.ds, align 8, !tbaa !294
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !296
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !242
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #23, !inline_history !366
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !242
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #23, !inline_history !366
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i.i23 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i.i23, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i24

bb.ah:                                            ; preds = %bb.af
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i24: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i25 = phi i32 [ %i.dv, %bb.ag ], [ %i.ef, %bb.ah ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i.i25, 1
  br i1 %i.eg, label %bb.ai, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !41

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %._crit_edge, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i24, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !299 ; 8 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i26, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ej, align 8, !tbaa !294
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !296
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !242
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #23, !inline_history !367
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !242
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #23, !inline_history !367
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i.i.i27 = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i27, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i28

bb.an:                                            ; preds = %bb.al
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i28: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i29 = phi i32 [ %i.em, %bb.am ], [ %i.ew, %bb.an ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i.i29, 1
  br i1 %i.ex, label %bb.ao, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !41

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i28, %bb.ak, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !299 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.fa, align 8, !tbaa !294
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !296
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !242
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #23, !inline_history !368
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !242
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #23, !inline_history !368
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.at:                                            ; preds = %bb.ar
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fd, %bb.as ], [ %i.fn, %bb.at ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fo, label %bb.au, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !41

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN6duckdb17DictionaryDecoder9CanFilterERKNS_11TableFilterERNS_16TableFilterStateE.exit.thread

bb.av:                                            ; preds = %bb.y, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ab, %bb.aa, %bb.ac, %bb.z
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ax

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.01033 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.gk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.01033
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ft
  store i8 1, ptr %i.fu, align 1, !tbaa !364
end_hunk_0
begin_hunk_1_@_ZN6duckdb17DictionaryDecoder4ReadEPhmRNS_6VectorEm:bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !348, !nonnull !23, !align !24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45, !nonnull !23, !align !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !104  ; 3 uses
  %xtraiter = and i64 %2, 1
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %2, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.al, %bb.f ] ; 5 uses
  %.01315.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ak, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %i.s = trunc i64 %.016.i to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01315.i
  store i32 %i.s, ptr %i.t, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.016.i
  store i32 %i.j, ptr %i.u, align 4, !tbaa !3
  %i.v = getelementptr i8, ptr %i.l, i64 %.016.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !123
  %i.x = zext i8 %i.w to i64
  %i.y = icmp eq i64 %i.q, %i.x
  %i.z = zext i1 %i.y to i64
  %i.aa = add i64 %.01315.i, %i.z                 ; 2 uses
  %i.ab = or disjoint i64 %.016.i, 1              ; 3 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aa
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  store i32 %i.j, ptr %i.ae, align 4, !tbaa !3
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !123
  %i.ah = zext i8 %i.ag to i64
  %i.ai = icmp eq i64 %i.q, %i.ah
  %i.aj = zext i1 %i.ai to i64
  %i.ak = add i64 %i.aa, %i.aj                    ; 3 uses
  %i.al = add nuw i64 %.016.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit.unr-lcssa, label %bb.f, !llvm.loop !382

_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit.unr-lcssa, %.lr.ph.i
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit.unr-lcssa ] ; 3 uses
  %.01315.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod129 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.am = trunc i64 %.016.i.epil.init to i32
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01315.i.epil.init
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.016.i.epil.init
  store i32 %i.j, ptr %i.ao, align 4, !tbaa !3
  %i.ap = getelementptr i8, ptr %i.l, i64 %.016.i.epil.init
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !123
  %i.ar = zext i8 %i.aq to i64
  %i.as = icmp eq i64 %i.q, %i.ar
  %i.at = zext i1 %i.as to i64
  %i.au = add i64 %.01315.i.epil.init, %i.at
  br label %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit

_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit: ; preds = %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit.unr-lcssa, %.epil.preheader
  %.lcssa127 = phi i64 [ %i.ak, %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit.unr-lcssa ], [ %i.au, %.epil.preheader ] ; 8 uses
  %i.av = icmp eq i64 %.lcssa127, %2
  br i1 %i.av, label %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit.thread, label %bb.q

_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit.thread: ; preds = %bb.e, %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12RleBpDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !363 ; 2 uses
  %i.ba = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %2) ; 4 uses
  %.not24.i = icmp eq i32 %i.ba, 0
  br i1 %.not24.i, label %_ZN6duckdb12RleBpDecoder8GetBatchIjEEvPhj.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 36 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i, %.lr.ph.i34
  %.023.i = phi i32 [ 0, %.lr.ph.i34 ], [ %.1.i36, %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i ] ; 8 uses
  %i.bi = load i32, ptr %i.bb, align 8, !tbaa !383 ; 2 uses
  %.not.i35 = icmp eq i32 %i.bi, 0
  br i1 %.not.i35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = sub i32 %i.ba, %.023.i
  %i.bk = tail call noundef i32 @llvm.umin.i32(i32 %i.bj, i32 %i.bi) ; 3 uses
  %i.bl = load i64, ptr %i.bc, align 8, !tbaa !384
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = zext i32 %.023.i to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bn ; 4 uses
  %i.bp = zext i32 %i.bk to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bp, 2          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i.i
  %i.br = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.bs = lshr exact i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check96 = icmp ult i64 %i.br, 28
  br i1 %min.iters.check96, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph97

vector.ph97:                                      ; preds = %bb.h
  %n.vec99 = and i64 %i.bt, 9223372036854775800   ; 3 uses
  %i.bu = shl i64 %n.vec99, 2
  %i.bv = getelementptr i8, ptr %i.bo, i64 %i.bu
  %broadcast.splatinsert100 = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat101 = shufflevector <4 x i32> %broadcast.splatinsert100, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph97
  %index103 = phi i64 [ 0, %vector.ph97 ], [ %index.next105, %vector.body102 ] ; 2 uses
  %i.bw = shl i64 %index103, 2
  %next.gep104 = getelementptr i8, ptr %i.bo, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %broadcast.splat101, ptr %next.gep104, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat101, ptr %i.bx, align 4, !tbaa !3
  %index.next105 = add nuw i64 %index103, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next105, %n.vec99
  br i1 %i.by, label %middle.block106, label %vector.body102, !llvm.loop !385

middle.block106:                                  ; preds = %vector.body102
  %cmp.n107 = icmp eq i64 %i.bt, %n.vec99
  br i1 %cmp.n107, label %_ZSt6fill_nIPjjjET_S1_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %middle.block106
  %.06.i.i.i.i.i.ph = phi ptr [ %i.bo, %bb.h ], [ %i.bv, %middle.block106 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.bm, ptr %.06.i.i.i.i.i, align 4, !tbaa !3
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, %i.bq
  br i1 %.not.i.i.i.i.i, label %_ZSt6fill_nIPjjjET_S1_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !386

_ZSt6fill_nIPjjjET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %.lr.ph.i.i.i.i.i, %middle.block106
  %i.ca = load i32, ptr %i.bb, align 8, !tbaa !383
  %i.cb = sub i32 %i.ca, %i.bk
  store i32 %i.cb, ptr %i.bb, align 8, !tbaa !383
  %i.cc = add i32 %i.bk, %.023.i
  br label %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.cd = load i32, ptr %i.bd, align 4, !tbaa !387 ; 2 uses
  %.not22.i = icmp eq i32 %i.cd, 0
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = sub i32 %i.ba, %.023.i
  %i.cf = tail call noundef i32 @llvm.umin.i32(i32 %i.ce, i32 %i.cd) ; 3 uses
  %i.cg = zext i32 %.023.i to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cg
  %i.ci = zext i32 %i.cf to i64
  %i.cj = load i32, ptr %i.bf, align 8, !tbaa !376
  %i.ck = trunc i32 %i.cj to i8
  tail call void @_ZN6duckdb18ParquetDecodeUtils9BitUnpackIjEEvRNS_10ByteBufferERhPT_mh(ptr noundef nonnull align 8 dereferenceable(57) %i.ax, ptr noundef nonnull align 1 dereferenceable(1) %i.be, ptr noundef %i.ch, i64 noundef %i.ci, i8 noundef zeroext %i.ck)
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !387
  %i.cm = sub i32 %i.cl, %i.cf
  store i32 %i.cm, ptr %i.bd, align 4, !tbaa !387
  %i.cn = add i32 %i.cf, %.023.i
  br label %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.co = load i8, ptr %i.bg, align 8, !tbaa !379
  %i.cp = zext i8 %i.co to i64
  %i.cq = add nuw nsw i64 %i.cp, 6
  %i.cr = load i64, ptr %i.bh, align 8, !tbaa !25
  %.not.i.i = icmp ugt i64 %i.cq, %i.cr
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6duckdb12RleBpDecoder19NextCountsTemplatedILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(57) %i.ax)
  br label %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN6duckdb12RleBpDecoder19NextCountsTemplatedILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(57) %i.ax)
  br label %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i

_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i:    ; preds = %bb.m, %bb.l, %bb.j, %_ZSt6fill_nIPjjjET_S1_T0_RKT1_.exit.loopexit.i
  %.1.i36 = phi i32 [ %i.cc, %_ZSt6fill_nIPjjjET_S1_T0_RKT1_.exit.loopexit.i ], [ %i.cn, %bb.j ], [ %.023.i, %bb.l ], [ %.023.i, %bb.m ] ; 2 uses
  %i.cs = icmp ult i32 %.1.i36, %i.ba
  br i1 %i.cs, label %bb.g, label %_ZN6duckdb12RleBpDecoder8GetBatchIjEEvPhj.exit, !llvm.loop !388

_ZN6duckdb12RleBpDecoder8GetBatchIjEEvPhj.exit:   ; preds = %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i, %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit.thread
  %.not70 = icmp eq i64 %2, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb12RleBpDecoder8GetBatchIjEEvPhj.exit
  %i.ct = load ptr, ptr %i.ay, align 8, !tbaa !363 ; 2 uses
  %min.iters.check110 = icmp ult i64 %2, 8
  br i1 %min.iters.check110, label %scalar.ph109.preheader, label %vector.ph111

vector.ph111:                                     ; preds = %.lr.ph
  %n.vec113 = and i64 %2, -8                      ; 3 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph111
  %index115 = phi i64 [ 0, %vector.ph111 ], [ %index.next118, %vector.body114 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph111 ], [ %i.cw, %vector.body114 ]
  %vec.phi116 = phi <4 x i32> [ zeroinitializer, %vector.ph111 ], [ %i.cx, %vector.body114 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index115 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <4 x i32>, ptr %i.cu, align 4, !tbaa !3
  %wide.load117 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !3
  %i.cw = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi116, <4 x i32> %wide.load117) ; 2 uses
  %index.next118 = add nuw i64 %index115, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next118, %n.vec113
  br i1 %i.cy, label %middle.block119, label %vector.body114, !llvm.loop !389

middle.block119:                                  ; preds = %vector.body114
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cx)
  %i.cz = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n120 = icmp eq i64 %2, %n.vec113
  br i1 %cmp.n120, label %._crit_edge.loopexit, label %scalar.ph109.preheader

scalar.ph109.preheader:                           ; preds = %.lr.ph, %middle.block119
  %.069.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec113, %middle.block119 ]
  %.02468.ph = phi i32 [ 0, %.lr.ph ], [ %i.cz, %middle.block119 ]
  br label %scalar.ph109

._crit_edge.loopexit:                             ; preds = %scalar.ph109, %middle.block119
  %.lcssa = phi i32 [ %i.cz, %middle.block119 ], [ %i.df, %scalar.ph109 ]
  %i.da = zext i32 %.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6duckdb12RleBpDecoder8GetBatchIjEEvPhj.exit
  %.024.lcssa = phi i64 [ 0, %_ZN6duckdb12RleBpDecoder8GetBatchIjEEvPhj.exit ], [ %i.da, %._crit_edge.loopexit ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !344
  %.not31 = icmp ugt i64 %i.dc, %.024.lcssa
  br i1 %.not31, label %_ZN6duckdb17DictionaryDecoder19ConvertDictToSelVecEPjRKNS_15SelectionVectorEm.exit, label %bb.n

scalar.ph109:                                     ; preds = %scalar.ph109.preheader, %scalar.ph109
  %.069 = phi i64 [ %i.dg, %scalar.ph109 ], [ %.069.ph, %scalar.ph109.preheader ] ; 2 uses
  %.02468 = phi i32 [ %i.df, %scalar.ph109 ], [ %.02468.ph, %scalar.ph109.preheader ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.069
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = tail call noundef i32 @llvm.umax.i32(i32 %.02468, i32 %i.de) ; 2 uses
  %i.dg = add nuw i64 %.069, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dg, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph109, !llvm.loop !390

bb.n:                                             ; preds = %._crit_edge
  %i.dh = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull @.str.6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.di = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dh) #23
  br label %common.resume

bb.q:                                             ; preds = %_ZN6duckdb17DictionaryDecoder14GetValidValuesEPhmm.exit
  %.not = icmp eq i64 %.lcssa127, 0
  br i1 %.not, label %_ZN6duckdb17DictionaryDecoder19ConvertDictToSelVecEPjRKNS_15SelectionVectorEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !391, !nonnull !23, !align !24 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !128, !nonnull !23, !align !24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 304
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !129, !nonnull !23, !align !24 ; 2 uses
  %i.dp = shl i64 %.lcssa127, 2                   ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !25
  %i.dr = icmp eq i64 %i.dp, 0
  br i1 %i.dr, label %_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 40 ; 3 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !233
  %i.du = icmp ugt i64 %i.dp, %i.dt
  br i1 %i.du, label %bb.t, label %_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit

bb.t:                                             ; preds = %bb.s
  %i.dv = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.dp)
  store i64 %i.dv, ptr %i.ds, align 8, !tbaa !233
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  tail call void @_ZN6duckdb13AllocatedData5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dw)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.dx = load i64, ptr %i.ds, align 8, !tbaa !233 ; 2 uses
  %i.dy = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.do, i64 noundef %i.dx), !noalias !392
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef %i.dy, i64 noundef %i.dx)
  %i.dz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %5) #23 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !230
  store ptr %i.eb, ptr %i.dk, align 8, !tbaa !33
  br label %_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit

_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit: ; preds = %bb.r, %bb.s, %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = call noundef ptr @_ZNK6duckdb10unique_ptrINS_12RleBpDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ec) ; 10 uses
  %i.ee = load ptr, ptr %i.dj, align 8, !tbaa !391, !nonnull !23, !align !24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !33 ; 2 uses
  %i.eg = call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %.lcssa127) ; 4 uses
  %.not24.i37 = icmp eq i32 %i.eg, 0
  br i1 %.not24.i37, label %.lr.ph.i51, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 36 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  br label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i46, %.lr.ph.i38
  %.023.i39 = phi i32 [ 0, %.lr.ph.i38 ], [ %.1.i47, %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i46 ] ; 8 uses
  %i.eo = load i32, ptr %i.eh, align 8, !tbaa !383 ; 2 uses
  %.not.i40 = icmp eq i32 %i.eo, 0
  br i1 %.not.i40, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ep = sub i32 %i.eg, %.023.i39
  %i.eq = call noundef i32 @llvm.umin.i32(i32 %i.ep, i32 %i.eo) ; 3 uses
  %i.er = load i64, ptr %i.ei, align 8, !tbaa !384
  %i.es = trunc i64 %i.er to i32                  ; 2 uses
  %i.et = zext i32 %.023.i39 to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.et ; 4 uses
  %i.ev = zext i32 %i.eq to i64
  %.idx.i.i.i41 = shl nuw nsw i64 %i.ev, 2        ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i.i41
  %i.ex = add nsw i64 %.idx.i.i.i41, -4           ; 2 uses
  %i.ey = lshr exact i64 %i.ex, 2
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ex, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i42.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.v
  %n.vec = and i64 %i.ez, 9223372036854775800     ; 3 uses
  %i.fa = shl i64 %n.vec, 2
  %i.fb = getelementptr i8, ptr %i.eu, i64 %i.fa
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.eu, i64 %i.fc ; 2 uses
  %i.fd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.fd, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !395

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ez, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPjjjET_S1_T0_RKT1_.exit.loopexit.i45, label %.lr.ph.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i42.preheader:                     ; preds = %bb.v, %middle.block
  %.06.i.i.i.i.i43.ph = phi ptr [ %i.eu, %bb.v ], [ %i.fb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i42

.lr.ph.i.i.i.i.i42:                               ; preds = %.lr.ph.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i42
  %.06.i.i.i.i.i43 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i42 ], [ %.06.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i42.preheader ] ; 2 uses
  store i32 %i.es, ptr %.06.i.i.i.i.i43, align 4, !tbaa !3
  %i.ff = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i43, i64 4 ; 2 uses
  %.not.i.i.i.i.i44 = icmp eq ptr %i.ff, %i.ew
  br i1 %.not.i.i.i.i.i44, label %_ZSt6fill_nIPjjjET_S1_T0_RKT1_.exit.loopexit.i45, label %.lr.ph.i.i.i.i.i42, !llvm.loop !396

_ZSt6fill_nIPjjjET_S1_T0_RKT1_.exit.loopexit.i45: ; preds = %.lr.ph.i.i.i.i.i42, %middle.block
  %i.fg = load i32, ptr %i.eh, align 8, !tbaa !383
  %i.fh = sub i32 %i.fg, %i.eq
  store i32 %i.fh, ptr %i.eh, align 8, !tbaa !383
  %i.fi = add i32 %i.eq, %.023.i39
  br label %_ZN6duckdb12RleBpDecoder10NextCountsEv.exit.i46

bb.w:                                             ; preds = %bb.u
  %i.fj = load i32, ptr %i.ej, align 4, !tbaa !387 ; 2 uses
  %.not22.i48 = icmp eq i32 %i.fj, 0
  br i1 %.not22.i48, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fk = sub i32 %i.eg, %.023.i39
  %i.fl = call noundef i32 @llvm.umin.i32(i32 %i.fk, i32 %i.fj) ; 3 uses
  %i.fm = zext i32 %.023.i39 to i64
end_hunk_1
begin_hunk_2_@_ZN6duckdb17DictionaryDecoder24DictionarySupportsFilterERKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.b = load i8, ptr %i.a, align 8, !tbaa !399
  switch i8 %i.b, label %bb.n [
    i8 3, label %bb.b
    i8 4, label %bb.e
    i8 0, label %.critedge
    i8 2, label %.critedge
    i8 9, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb11TableFilter4CastINS_19ConjunctionOrFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !402
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !405
  %.not47.not56.not = icmp eq ptr %i.f, %i.g
  br i1 %.not47.not56.not, label %.critedge, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.i = add nuw i64 %.04057, 1                   ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !402
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !405
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %.not47.not = icmp ult i64 %i.i, %i.o
  br i1 %.not47.not, label %bb.d, label %.critedge, !llvm.loop !406

bb.d:                                             ; preds = %.lr.ph58, %bb.c
  %.04057 = phi i64 [ 0, %.lr.ph58 ], [ %i.i, %bb.c ] ; 3 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_11TableFilterESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.04057)
  %i.q = tail call noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16TableFilterStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.04057)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.t = tail call noundef zeroext i1 @_ZN6duckdb17DictionaryDecoder24DictionarySupportsFilterERKNS_11TableFilterERNS_16TableFilterStateE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(9) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 3 uses
  br i1 %i.t, label %bb.c, label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.u = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb11TableFilter4CastINS_20ConjunctionAndFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %1) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !402
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !405
  %.not.not52.not = icmp eq ptr %i.x, %i.y
  br i1 %.not.not52.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.aa = add nuw i64 %.04553, 1                  ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !402
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !405
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3
  %.not.not = icmp ult i64 %i.aa, %i.ag
  br i1 %.not.not, label %bb.g, label %.critedge, !llvm.loop !407

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.04553 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_11TableFilterESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %.04553)
  %i.ai = tail call noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16TableFilterStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %.04553)
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  %i.al = tail call noundef zeroext i1 @_ZN6duckdb17DictionaryDecoder24DictionarySupportsFilterERKNS_11TableFilterERNS_16TableFilterStateE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(9) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.ak) ; 3 uses
  br i1 %i.al, label %bb.f, label %.critedge

bb.h:                                             ; preds = %bb.a
  %i.am = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb11TableFilter4CastINS_16ExpressionFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.an = load ptr, ptr %0, align 8, !tbaa !348, !nonnull !23, !align !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45, !nonnull !23, !align !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.aq)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = invoke noundef zeroext i1 @_ZNK6duckdb16ExpressionFilter20EvaluateWithConstantERNS_18ExpressionExecutorERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(65) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.at = xor i1 %i.as, true
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %bb.l ], [ %i.au, %bb.k ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.e, %bb.b, %bb.a, %bb.a, %bb.n, %bb.j
  %.8 = phi i1 [ false, %bb.n ], [ %i.at, %bb.j ], [ true, %bb.a ], [ true, %bb.e ], [ true, %bb.a ], [ true, %bb.b ], [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %i.al, %bb.f ], [ %i.al, %bb.g ]
  ret i1 %.8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb11TableFilter4CastINS_19ConjunctionOrFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !399
  %.not = icmp eq i8 %i.b, 3
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_11TableFilterESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !402
  %i.e = load ptr, ptr %0, align 8, !tbaa !405    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !266
  store i64 %i.i, ptr %i.b, align 8, !tbaa !266
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorINS_10unique_ptrINS_11TableFilterESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERKS5_m.exit, label %bb.b, !prof !408

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_10unique_ptrINS_11TableFilterESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERKS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !409    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16TableFilterStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !410
  %i.e = load ptr, ptr %0, align 8, !tbaa !413    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !266
  store i64 %i.i, ptr %i.b, align 8, !tbaa !266
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_16TableFilterStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !408

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_16TableFilterStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !414    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb11TableFilter4CastINS_20ConjunctionAndFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !399
  %.not = icmp eq i8 %i.b, 4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb11TableFilter4CastINS_16ExpressionFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !399
  %.not = icmp eq i8 %i.b, 9
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZNK6duckdb16ExpressionFilter20EvaluateWithConstantERNS_18ExpressionExecutorERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17DictionaryDecoder6FilterEPhmRNS_6VectorERNS_15SelectionVectorERm(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !371
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #23
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN6duckdb17DictionaryDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0) ; 11 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %5, align 8, !tbaa !266
  br label %bb.am

bb.g:                                             ; preds = %bb.e
  %i.g = icmp eq i64 %i.e, %2                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !23, !align !24
  %.029.in = select i1 %i.g, ptr %i.h, ptr %i.j
  %.029 = load ptr, ptr %.029.in, align 8, !tbaa !349 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.e)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.h

common.resume:                                    ; preds = %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.k) #23
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.g
  store i64 0, ptr %5, align 8, !tbaa !266
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !345  ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = load ptr, ptr %6, align 8                ; 9 uses
  br i1 %i.g, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZN6duckdb15SelectionVectorC2Em.exit.split

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %xtraiter73 = and i64 %2, 1
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter79 = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.02834.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.ao, %bb.k ] ; 4 uses
  %i.s = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.an, %bb.k ] ; 3 uses
  %niter80 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter80.next.1, %bb.k ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !364, !range !353, !noundef !23
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.z = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.z, ptr %5, align 8, !tbaa !266
  %i.aa = trunc i64 %.02834.us to i32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.ac = phi i64 [ %i.z, %bb.i ], [ %i.s, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 3 uses
  %i.ad = or disjoint i64 %.02834.us, 1           ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !364, !range !353, !noundef !23
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.ak = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ak, ptr %5, align 8, !tbaa !266
  %i.al = trunc i64 %i.ad to i32
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ac
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.an = phi i64 [ %i.ak, %bb.j ], [ %i.ac, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.ao = add nuw i64 %.02834.us, 2               ; 2 uses
  %niter80.next.1 = add i64 %niter80, 2           ; 2 uses
  %niter80.ncmp.1 = icmp eq i64 %niter80.next.1, %unroll_iter79
  br i1 %niter80.ncmp.1, label %.split.us.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !415

_ZN6duckdb15SelectionVectorC2Em.exit.split:       ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.split
  %xtraiter = and i64 %i.e, 1
  %i.ap = icmp eq i64 %i.e, 1
  br i1 %i.ap, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %i.e, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.split
  %xtraiter65 = and i64 %i.e, 1
  %i.aq = icmp eq i64 %i.e, 1
  br i1 %i.aq, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader
  %unroll_iter71 = and i64 %i.e, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36: ; preds = %bb.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new
  %.02834.us35 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new ], [ %i.bn, %bb.n ] ; 4 uses
  %i.ar = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new ], [ %i.bm, %bb.n ] ; 3 uses
  %niter72 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new ], [ %niter72.next.1, %bb.n ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us35
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !364, !range !353, !noundef !23
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.l, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36
  %i.ay = add i64 %i.ar, 1                        ; 2 uses
  store i64 %i.ay, ptr %5, align 8, !tbaa !266
  %i.az = trunc i64 %.02834.us35 to i32
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ar
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1: ; preds = %bb.l, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36
  %i.bb = phi i64 [ %i.ay, %bb.l ], [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36 ] ; 3 uses
  %i.bc = or disjoint i64 %.02834.us35, 1         ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !364, !range !353, !noundef !23
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1
  %i.bj = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.bj, ptr %5, align 8, !tbaa !266
  %i.bk = trunc i64 %i.bc to i32
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bb
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1
  %i.bm = phi i64 [ %i.bj, %bb.m ], [ %i.bb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1 ] ; 3 uses
  %i.bn = add nuw i64 %.02834.us35, 2             ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %.split.us.loopexit59.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36, !llvm.loop !415

.split.us.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod76.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod76.not, label %.split.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %.split.us.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.02834.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.ao, %.split.us.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init75 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.an, %.split.us.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod78 = trunc i64 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us.epil.init
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !364, !range !353, !noundef !23
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.o, label %.split.us

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.bu = add i64 %.epil.init75, 1                ; 2 uses
  store i64 %i.bu, ptr %5, align 8, !tbaa !266
  %i.bv = trunc i64 %.02834.us.epil.init to i32
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.epil.init75
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !3
  br label %.split.us

.split.us.loopexit59.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod68.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod68.not, label %.split.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader: ; preds = %.split.us.loopexit59.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader
  %.02834.us35.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader ], [ %i.bn, %.split.us.loopexit59.unr-lcssa ] ; 2 uses
  %.epil.init67 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader ], [ %i.bm, %.split.us.loopexit59.unr-lcssa ] ; 3 uses
  %lcmp.mod70 = trunc i64 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod70)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us35.epil.init
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !364, !range !353, !noundef !23
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %.split.us

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader
  %i.cd = add i64 %.epil.init67, 1                ; 2 uses
  store i64 %i.cd, ptr %5, align 8, !tbaa !266
  %i.ce = trunc i64 %.02834.us35.epil.init to i32
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.epil.init67
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !3
  br label %.split.us

.split.us.loopexit61.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %.split.us.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.02834.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.dq, %.split.us.loopexit61.unr-lcssa ] ; 2 uses
  %.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.dp, %.split.us.loopexit61.unr-lcssa ] ; 3 uses
  %lcmp.mod64 = trunc i64 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod64)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.epil.init
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !364, !range !353, !noundef !23
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.q, label %.split.us

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.02834.epil.init
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = add i64 %.epil.init, 1                  ; 2 uses
  store i64 %i.co, ptr %5, align 8, !tbaa !266
end_hunk_2
