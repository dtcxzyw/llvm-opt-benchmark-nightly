Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_string?download=true
inline.NumInlined: 11296
inline.NumDeleted: 2901
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 170
loop-unroll.NumUnrolled: 291
begin_hunk_0_@_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_8string_tES2_NS_19GenericUnaryWrapperENS_19UnaryStringOperatorINS_12TrimOperatorILb1ELb1EEEEEEEvPKT_PT0_mRNS_12ValidityMaskESE_Pvb:bb.a
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.j, align 4, !tbaa !80
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !80
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134  ; 8 uses
  store <2 x ptr> %i.i, ptr %i.d, align 8, !tbaa !87
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.q, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !137
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #25, !inline_history !15
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #25, !inline_history !15
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !80
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.k ], [ %i.ad, %bb.l ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !139

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #25
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !159
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !159
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ai = add i64 %2, 63
  %i.aj = lshr i64 %i.ai, 6                       ; 2 uses
  %.not103 = icmp eq i64 %i.aj, 0
  br i1 %.not103, label %.loopexit, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph100, %.loopexit90
  %.099 = phi i64 [ 0, %.lr.ph100 ], [ %.4, %.loopexit90 ] ; 9 uses
  %.06398 = phi i64 [ 0, %.lr.ph100 ], [ %i.dx, %.loopexit90 ] ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !155   ; 2 uses
  %.not.i65 = icmp eq ptr %i.as, null
  br i1 %.not.i65, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.p
  %i.at = add i64 %.099, 64
  %i.au = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %2)
  br label %.preheader91

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.p
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.06398
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !156 ; 2 uses
  %i.ax = add i64 %.099, 64
  %i.ay = call noundef i64 @llvm.umin.i64(i64 %i.ax, i64 %2) ; 5 uses
  switch i64 %i.aw, label %.preheader89 [
    i64 -1, label %.preheader91
    i64 0, label %.loopexit90
  ]

.preheader91:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.az = phi i64 [ %i.au, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.ay, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.ba = icmp ult i64 %.099, %i.az
  br i1 %i.ba, label %.lr.ph, label %.loopexit90

.preheader89:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bb = icmp ult i64 %.099, %i.ay
  br i1 %i.bb, label %.lr.ph96, label %.loopexit90

.lr.ph:                                           ; preds = %.preheader91, %_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE.exit
  %.194 = phi i64 [ %i.ck, %_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE.exit ], [ %.099, %.preheader91 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.194 ; 2 uses
  %.sroa.011.0.copyload = load i64, ptr %i.bc, align 8 ; 3 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.212.0.copyload = load ptr, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !138 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %.sroa.011.0.copyload, ptr %10, align 8
  store ptr %.sroa.212.0.copyload, ptr %i.ak, align 8
  %i.bd = trunc i64 %.sroa.011.0.copyload to i32  ; 2 uses
  %i.be = icmp ult i32 %i.bd, 13
  %i.bf = select i1 %i.be, ptr %i.al, ptr %.sroa.212.0.copyload ; 3 uses
  %i.bg = and i64 %.sroa.011.0.copyload, 4294967295 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %.not44.i = icmp eq i32 %i.bd, 0
  br i1 %.not44.i, label %.thread.i, label %.lr.ph.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.bh = add i64 %i.bl, %.03037.i                ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  br i1 %i.bi, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.q
  %.03037.i = phi i64 [ %i.bh, %bb.q ], [ 0, %.lr.ph ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.03037.i
  %i.bk = sub nuw nsw i64 %i.bg, %.03037.i
  %i.bl = call noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.bj, i64 noundef %i.bk, ptr noundef nonnull %i.b)
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !80
  %i.bn = call noundef i32 @_ZN6duckdb17utf8proc_categoryEi(i32 noundef %i.bm)
  %.not.i66 = icmp eq i32 %i.bn, 23
  br i1 %.not.i66, label %bb.q, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i, %bb.q, %.lr.ph
  %.030.lcssa.i = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.q ], [ %.03037.i, %.lr.ph.i ] ; 6 uses
  %i.bo = icmp ult i64 %.030.lcssa.i, %i.bg
  br i1 %i.bo, label %.lr.ph42.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph42.i, %.thread.i
  %.028.lcssa.i = phi i64 [ %.030.lcssa.i, %.thread.i ], [ %spec.select.i, %.lr.ph42.i ]
  %i.bp = sub i64 %.028.lcssa.i, %.030.lcssa.i    ; 2 uses
  %i.bq = call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %5, i64 noundef %i.bp) ; 2 uses
  %i.br = extractvalue { i64, ptr } %i.bq, 0      ; 3 uses
  store i64 %i.br, ptr %9, align 8
  %i.bs = extractvalue { i64, ptr } %i.bq, 1      ; 2 uses
  store ptr %i.bs, ptr %i.am, align 8
  %i.bt = trunc i64 %i.br to i32
  %i.bu = icmp ult i32 %i.bt, 13                  ; 2 uses
  %i.bv = select i1 %i.bu, ptr %i.an, ptr %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.030.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bw, i64 %i.bp, i1 false)
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i
  %i.bx = and i64 %i.br, 15                       ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bx
  %i.bz = sub nuw nsw i64 12, %i.bx
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.by, i8 0, i64 %i.bz, i1 false)
  %.fca.1.load.pre.i = load ptr, ptr %i.am, align 8
  br label %_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE.exit

bb.s:                                             ; preds = %._crit_edge.i
  %i.ca = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 1
  store i32 %i.cb, ptr %i.an, align 4
  br label %_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE.exit

.lr.ph42.i:                                       ; preds = %.thread.i, %.lr.ph42.i
  %.041.i = phi i64 [ %i.cf, %.lr.ph42.i ], [ %.030.lcssa.i, %.thread.i ] ; 3 uses
  %.02840.i = phi i64 [ %spec.select.i, %.lr.ph42.i ], [ %.030.lcssa.i, %.thread.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.041.i
  %i.cd = sub nuw i64 %i.bg, %.041.i
  %i.ce = call noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.cc, i64 noundef %i.cd, ptr noundef nonnull %i.b)
  %i.cf = add i64 %i.ce, %.041.i                  ; 3 uses
  %i.cg = load i32, ptr %i.b, align 4, !tbaa !80
  %i.ch = call noundef i32 @_ZN6duckdb17utf8proc_categoryEi(i32 noundef %i.cg)
  %.not34.i = icmp eq i32 %i.ch, 23
  %spec.select.i = select i1 %.not34.i, i64 %.02840.i, i64 %i.cf ; 2 uses
  %i.ci = icmp ult i64 %i.cf, %i.bg
  br i1 %i.ci, label %.lr.ph42.i, label %._crit_edge.i, !llvm.loop !62

_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE.exit: ; preds = %bb.r, %bb.s
  %.fca.1.load.i = phi ptr [ %.fca.1.load.pre.i, %bb.r ], [ %i.ca, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.fca.0.load.i = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.194 ; 2 uses
  store i64 %.fca.0.load.i, ptr %i.cj, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %.fca.1.load.i, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !138
  %i.ck = add nuw i64 %.194, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %i.az
  br i1 %exitcond.not, label %.loopexit90, label %.lr.ph, !llvm.loop !3569

.lr.ph96:                                         ; preds = %.preheader89, %bb.x
  %.295 = phi i64 [ %i.dw, %bb.x ], [ %.099, %.preheader89 ] ; 4 uses
  %i.cl = sub nuw i64 %.295, %.099
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = and i64 %i.cm, %i.aw
  %.not = icmp eq i64 %i.cn, 0
  br i1 %.not, label %bb.x, label %bb.t

bb.t:                                             ; preds = %.lr.ph96
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.295 ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.co, align 8 ; 3 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !138 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.06.0.copyload, ptr %8, align 8
  store ptr %.sroa.27.0.copyload, ptr %i.ao, align 8
  %i.cp = trunc i64 %.sroa.06.0.copyload to i32   ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 13
  %i.cr = select i1 %i.cq, ptr %i.ap, ptr %.sroa.27.0.copyload ; 3 uses
  %i.cs = and i64 %.sroa.06.0.copyload, 4294967295 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %.not44.i67 = icmp eq i32 %i.cp, 0
  br i1 %.not44.i67, label %.thread.i71, label %.lr.ph.i68

bb.u:                                             ; preds = %.lr.ph.i68
  %i.ct = add i64 %i.cx, %.03037.i69              ; 3 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  br i1 %i.cu, label %.lr.ph.i68, label %.thread.i71

.lr.ph.i68:                                       ; preds = %bb.t, %bb.u
  %.03037.i69 = phi i64 [ %i.ct, %bb.u ], [ 0, %bb.t ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.03037.i69
  %i.cw = sub nuw nsw i64 %i.cs, %.03037.i69
  %i.cx = call noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.cv, i64 noundef %i.cw, ptr noundef nonnull %i.a)
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !80
  %i.cz = call noundef i32 @_ZN6duckdb17utf8proc_categoryEi(i32 noundef %i.cy)
  %.not.i70 = icmp eq i32 %i.cz, 23
  br i1 %.not.i70, label %bb.u, label %.thread.i71

.thread.i71:                                      ; preds = %.lr.ph.i68, %bb.u, %bb.t
  %.030.lcssa.i72 = phi i64 [ 0, %bb.t ], [ %i.ct, %bb.u ], [ %.03037.i69, %.lr.ph.i68 ] ; 6 uses
  %i.da = icmp ult i64 %.030.lcssa.i72, %i.cs
  br i1 %i.da, label %.lr.ph42.i80, label %._crit_edge.i73

._crit_edge.i73:                                  ; preds = %.lr.ph42.i80, %.thread.i71
  %.028.lcssa.i74 = phi i64 [ %.030.lcssa.i72, %.thread.i71 ], [ %spec.select.i84, %.lr.ph42.i80 ]
  %i.db = sub i64 %.028.lcssa.i74, %.030.lcssa.i72 ; 2 uses
  %i.dc = call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %5, i64 noundef %i.db) ; 2 uses
  %i.dd = extractvalue { i64, ptr } %i.dc, 0      ; 3 uses
  store i64 %i.dd, ptr %7, align 8
  %i.de = extractvalue { i64, ptr } %i.dc, 1      ; 2 uses
  store ptr %i.de, ptr %i.aq, align 8
  %i.df = trunc i64 %i.dd to i32
  %i.dg = icmp ult i32 %i.df, 13                  ; 2 uses
  %i.dh = select i1 %i.dg, ptr %i.ar, ptr %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.030.lcssa.i72
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.di, i64 %i.db, i1 false)
  br i1 %i.dg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i73
  %i.dj = and i64 %i.dd, 15                       ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.dj
  %i.dl = sub nuw nsw i64 12, %i.dj
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dk, i8 0, i64 %i.dl, i1 false)
  %.fca.1.load.pre.i79 = load ptr, ptr %i.aq, align 8
  br label %_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE.exit85

bb.w:                                             ; preds = %._crit_edge.i73
  %i.dm = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 1
  store i32 %i.dn, ptr %i.ar, align 4
  br label %_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE.exit85

.lr.ph42.i80:                                     ; preds = %.thread.i71, %.lr.ph42.i80
  %.041.i81 = phi i64 [ %i.dr, %.lr.ph42.i80 ], [ %.030.lcssa.i72, %.thread.i71 ] ; 3 uses
  %.02840.i82 = phi i64 [ %spec.select.i84, %.lr.ph42.i80 ], [ %.030.lcssa.i72, %.thread.i71 ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.041.i81
  %i.dp = sub nuw i64 %i.cs, %.041.i81
  %i.dq = call noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.do, i64 noundef %i.dp, ptr noundef nonnull %i.a)
  %i.dr = add i64 %i.dq, %.041.i81                ; 3 uses
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !80
  %i.dt = call noundef i32 @_ZN6duckdb17utf8proc_categoryEi(i32 noundef %i.ds)
  %.not34.i83 = icmp eq i32 %i.dt, 23
  %spec.select.i84 = select i1 %.not34.i83, i64 %.02840.i82, i64 %i.dr ; 2 uses
  %i.du = icmp ult i64 %i.dr, %i.cs
  br i1 %i.du, label %.lr.ph42.i80, label %._crit_edge.i73, !llvm.loop !62

_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE.exit85: ; preds = %bb.v, %bb.w
  %.fca.1.load.i75 = phi ptr [ %.fca.1.load.pre.i79, %bb.v ], [ %i.dm, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.fca.0.load.i76 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.295 ; 2 uses
  store i64 %.fca.0.load.i76, ptr %i.dv, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %.fca.1.load.i75, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !138
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph96, %_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE.exit85
  %i.dw = add nuw i64 %.295, 1                    ; 2 uses
  %exitcond108.not = icmp eq i64 %i.dw, %i.ay
  br i1 %exitcond108.not, label %.loopexit90, label %.lr.ph96, !llvm.loop !3570

.loopexit90:                                      ; preds = %bb.x, %_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE.exit, %.preheader91, %.preheader89, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.ay, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.az, %_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE.exit ], [ %.099, %.preheader89 ], [ %.099, %.preheader91 ], [ %i.ay, %bb.x ]
  %i.dx = add nuw nsw i64 %.06398, 1              ; 2 uses
  %exitcond109.not = icmp eq i64 %i.dx, %i.aj
  br i1 %exitcond109.not, label %.loopexit, label %bb.p, !llvm.loop !3571

.lr.ph102:                                        ; preds = %.preheader, %.lr.ph102
  %.064101 = phi i64 [ %i.ed, %.lr.ph102 ], [ 0, %.preheader ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.064101 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.dy, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !138
  %i.dz = tail call { i64, ptr } @_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(104) %5) ; 2 uses
  %i.ea = extractvalue { i64, ptr } %i.dz, 0
  %i.eb = extractvalue { i64, ptr } %i.dz, 1
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.064101 ; 2 uses
  store i64 %i.ea, ptr %i.ec, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.eb, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !138
  %i.ed = add nuw i64 %.064101, 1                 ; 2 uses
  %exitcond110.not = icmp eq i64 %i.ed, %2
  br i1 %exitcond110.not, label %.loopexit, label %.lr.ph102, !llvm.loop !3572

.loopexit:                                        ; preds = %.loopexit90, %.lr.ph102, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tES2_NS_19GenericUnaryWrapperENS_19UnaryStringOperatorINS_12TrimOperatorILb1ELb1EEEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !155
  %.not.i = icmp eq ptr %i.a, null
  %.not44 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader38

.preheader38:                                     ; preds = %bb.a
  br i1 %.not44, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader38
  %i.b = load ptr, ptr %3, align 8, !tbaa !170    ; 2 uses
  %.not.i34 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i34, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.040.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.040.us, 6                     ; 2 uses
  %i.e = and i64 %.040.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !155
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !156
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.040.us ; 2 uses
  %.sroa.07.0.copyload.us = load i64, ptr %i.k, align 8
  %.sroa.28.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.28.0.copyload.us = load ptr, ptr %.sroa.28.0..sroa_idx.us, align 8, !tbaa !138
  %i.l = tail call { i64, ptr } @_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE(i64 %.sroa.07.0.copyload.us, ptr %.sroa.28.0.copyload.us, ptr noundef nonnull align 8 dereferenceable(104) %6) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.040.us ; 2 uses
  store i64 %i.m, ptr %i.o, align 8
  %.sroa.410.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %.sroa.410.0..sroa_idx.us, align 8, !tbaa !138
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !155    ; 2 uses
  %.not.i35.us = icmp eq ptr %i.p, null
  br i1 %.not.i35.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !159
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !155
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !156
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !156
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.040.us, 1                  ; 2 uses
  %exitcond48.not = icmp eq i64 %i.w, %2
  br i1 %exitcond48.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !3573

.preheader:                                       ; preds = %bb.a
  br i1 %.not44, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !170    ; 2 uses
  %.not.i36 = icmp eq ptr %i.x, null
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us: ; preds = %.lr.ph42, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us
  %.03341.us = phi i64 [ %i.ad, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us ], [ 0, %.lr.ph42 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.03341.us ; 2 uses
  %.sroa.0.0.copyload.us = load i64, ptr %i.y, align 8
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.us = load ptr, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !138
  %i.z = tail call { i64, ptr } @_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE(i64 %.sroa.0.0.copyload.us, ptr %.sroa.2.0.copyload.us, ptr noundef nonnull align 8 dereferenceable(104) %6) ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03341.us ; 2 uses
  store i64 %i.aa, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.us, align 8, !tbaa !138
  %i.ad = add nuw i64 %.03341.us, 1               ; 2 uses
  %exitcond50.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond50.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, !llvm.loop !3574

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.i
  %.040 = phi i64 [ %i.bd, %bb.i ], [ 0, %.lr.ph ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.040
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !80
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = and i64 %i.ag, 63
  %i.aj = load ptr, ptr %4, align 8, !tbaa !155
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !156
  %i.am = shl nuw i64 1, %i.ai
  %i.an = and i64 %i.al, %i.am
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ag ; 2 uses
  %.sroa.07.0.copyload = load i64, ptr %i.ao, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.28.0.copyload = load ptr, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !138
  %i.ap = tail call { i64, ptr } @_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE(i64 %.sroa.07.0.copyload, ptr %.sroa.28.0.copyload, ptr noundef nonnull align 8 dereferenceable(104) %6) ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0
  %i.ar = extractvalue { i64, ptr } %i.ap, 1
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.040 ; 2 uses
  store i64 %i.aq, ptr %i.as, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.ar, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !138
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.at = load ptr, ptr %5, align 8, !tbaa !155   ; 2 uses
  %.not.i35 = icmp eq ptr %i.at, null
  br i1 %.not.i35, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.h:                                             ; preds = %bb.g
  %i.au = load i64, ptr %i.c, align 8, !tbaa !159
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.au)
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !155
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.g, %bb.h
  %i.av = phi ptr [ %.pre.i, %bb.h ], [ %i.at, %bb.g ]
  %i.aw = lshr i64 %.040, 6
  %i.ax = and i64 %.040, 63
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = xor i64 %i.ay, -1
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !156
  %i.bc = and i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !156
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.f
  %i.bd = add nuw i64 %.040, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %2
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !3573

_ZNK6duckdb15SelectionVector9get_indexEm.exit37:  ; preds = %.lr.ph42, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37
  %.03341 = phi i64 [ %i.bm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37 ], [ 0, %.lr.ph42 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.03341
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !80
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bh, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !138
  %i.bi = tail call { i64, ptr } @_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(104) %6) ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = extractvalue { i64, ptr } %i.bi, 1
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03341 ; 2 uses
  store i64 %i.bj, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !138
  %i.bm = add nuw i64 %.03341, 1                  ; 2 uses
  %exitcond49.not = icmp eq i64 %i.bm, %2
  br i1 %exitcond49.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, !llvm.loop !3574

.loopexit:                                        ; preds = %bb.i, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, %.preheader38, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN6duckdb12TrimOperatorILb1ELb1EE9OperationINS_8string_tES3_EET0_T_RNS_6VectorE(i64 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  store i64 %0, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = trunc i64 %0 to i32                      ; 2 uses
  %i.d = icmp ult i32 %i.c, 13
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = select i1 %i.d, ptr %i.e, ptr %1         ; 3 uses
  %i.g = and i64 %0, 4294967295                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %.not44 = icmp eq i32 %i.c, 0
  br i1 %.not44, label %.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.h = add i64 %i.l, %.03037                    ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.03037 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.03037
  %i.k = sub nuw nsw i64 %i.g, %.03037
  %i.l = call noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.j, i64 noundef %i.k, ptr noundef nonnull %i.a)
  %i.m = load i32, ptr %i.a, align 4, !tbaa !80
  %i.n = call noundef i32 @_ZN6duckdb17utf8proc_categoryEi(i32 noundef %i.m)
  %.not = icmp eq i32 %i.n, 23
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.b, %.lr.ph, %bb.a
  %.030.lcssa = phi i64 [ 0, %bb.a ], [ %.03037, %.lr.ph ], [ %i.h, %bb.b ] ; 6 uses
  %i.o = icmp ult i64 %.030.lcssa, %i.g
  br i1 %i.o, label %.lr.ph42, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph42, %.thread
  %.028.lcssa = phi i64 [ %.030.lcssa, %.thread ], [ %spec.select, %.lr.ph42 ]
  %i.p = sub i64 %.028.lcssa, %.030.lcssa         ; 2 uses
  %i.q = call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.p) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0        ; 3 uses
  store i64 %i.r, ptr %3, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = trunc i64 %i.r to i32
  %i.v = icmp ult i32 %i.u, 13                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.x = select i1 %i.v, ptr %i.w, ptr %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.030.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.y, i64 %i.p, i1 false)
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.z = and i64 %i.r, 15                         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = sub nuw nsw i64 12, %i.z
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.ab, i1 false)
  %.fca.1.load.pre = load ptr, ptr %i.s, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.d:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 1
  store i32 %i.ad, ptr %i.w, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.c, %bb.d
  %.fca.1.load = phi ptr [ %.fca.1.load.pre, %bb.c ], [ %i.ac, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.fca.0.load = load i64, ptr %3, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert

.lr.ph42:                                         ; preds = %.thread, %.lr.ph42
  %.041 = phi i64 [ %i.ah, %.lr.ph42 ], [ %.030.lcssa, %.thread ] ; 3 uses
  %.02840 = phi i64 [ %spec.select, %.lr.ph42 ], [ %.030.lcssa, %.thread ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %.041
  %i.af = sub nuw i64 %i.g, %.041
  %i.ag = call noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull %i.a)
  %i.ah = add i64 %i.ag, %.041                    ; 3 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !80
  %i.aj = call noundef i32 @_ZN6duckdb17utf8proc_categoryEi(i32 noundef %i.ai)
  %.not34 = icmp eq i32 %i.aj, 23
  %spec.select = select i1 %.not34, i64 %.02840, i64 %i.ah ; 2 uses
  %i.ak = icmp ult i64 %i.ah, %i.g
  br i1 %i.ak, label %.lr.ph42, label %._crit_edge, !llvm.loop !62
}

declare noundef i32 @_ZN6duckdb17utf8proc_categoryEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc { i64, ptr } @_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L18BinaryTrimFunctionILb1ELb1EEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tES9_E_bS9_S9_S9_EET3_T_T1_T2_RNS_12ValidityMaskEm(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %8 = alloca %"class.std::unordered_set", align 8 ; 18 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %1, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.c, align 8
  %i.d = trunc i64 %1 to i32                      ; 2 uses
  %i.e = icmp ult i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.g = select i1 %i.e, ptr %i.f, ptr %2         ; 3 uses
  %i.h = and i64 %1, 4294967295                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.i, ptr %8, align 8, !tbaa !275
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 1, ptr %i.j, align 8, !tbaa !276
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !270
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %3, ptr %6, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.n, align 8
  %i.o = trunc i64 %3 to i32                      ; 2 uses
  %i.p = icmp ult i32 %i.o, 13
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.r = select i1 %i.p, ptr %i.q, ptr %4
  %i.s = and i64 %3, 4294967295                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %.loopexit12.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc57.i
  %.08.i.i = phi i64 [ %i.x, %.noexc57.i ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.08.i.i
  %i.u = sub nuw nsw i64 %i.s, %.08.i.i
  %i.v = invoke noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.t, i64 noundef %i.u, ptr noundef nonnull %i.a)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %8, ptr %5, align 8, !tbaa !278
  %i.w = invoke { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc57.i unwind label %bb.i ; 0 uses

.noexc57.i:                                       ; preds = %.noexc.i
  %i.x = add i64 %i.v, %.08.i.i                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.y = icmp ult i64 %i.x, %i.s
  br i1 %i.y, label %.lr.ph.i.i, label %.loopexit12.i, !llvm.loop !63

.loopexit12.i:                                    ; preds = %.noexc57.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit12.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.03619.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ba, %.loopexit.i ] ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %.03619.i
  %i.ab = sub nuw nsw i64 %i.h, %.03619.i
  %i.ac = invoke noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !279
  %.not.not.i.i.i = icmp eq i64 %i.ad, 0
  %i.ae = load i32, ptr %i.b, align 4             ; 4 uses
  br i1 %.not.not.i.i.i, label %.preheader3, label %bb.e

.preheader3:                                      ; preds = %bb.c, %bb.d
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.d ], [ %i.k, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !272 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %.preheader3
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !80
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %.loopexit.i, label %.preheader3, !llvm.loop !64

bb.e:                                             ; preds = %bb.c
  %i.ai = sext i32 %i.ae to i64
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !276 ; 2 uses
  %i.ak = urem i64 %i.ai, %i.aj                   ; 2 uses
  %i.al = load ptr, ptr %8, align 8, !tbaa !275
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !273 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !272 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !80
  %i.ar = icmp eq i32 %i.ae, %i.aq
  br i1 %i.ar, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.as = icmp eq i32 %i.ae, %i.av
  br i1 %i.as, label %.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i = phi ptr [ %i.at, %bb.g ], [ %i.ao, %bb.f ]
  %i.at = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !272 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not18.i.i.i.i.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !80 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = urem i64 %i.aw, %i.aj
  %.not19.i.i.i.i.i = icmp eq i64 %i.ax, %i.ak
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !20

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.h
  br label %.thread.i, !llvm.loop !20

bb.i:                                             ; preds = %.noexc.i, %.lr.ph.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.j:                                             ; preds = %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.i:                                      ; preds = %bb.g, %bb.d, %bb.f
  %i.ba = add i64 %i.ac, %.03619.i                ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %i.h
  br i1 %i.bb, label %bb.b, label %.thread.i

.thread.i:                                        ; preds = %.loopexit.i, %bb.e, %.lr.ph.i.i.i.i.i, %.preheader3, %..loopexit_crit_edge21.i.i.i.i.i, %.loopexit12.i
  %.03618.i = phi i64 [ %.03619.i, %.lr.ph.i.i.i.i.i ], [ %.03619.i, %.preheader3 ], [ %.03619.i, %..loopexit_crit_edge21.i.i.i.i.i ], [ 0, %.loopexit12.i ], [ %i.ba, %.loopexit.i ], [ %.03619.i, %bb.e ] ; 6 uses
  %i.bc = icmp ult i64 %.03618.i, %i.h
  br i1 %i.bc, label %.lr.ph24.i, label %._crit_edge.i

.lr.ph24.i:                                       ; preds = %.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.k

._crit_edge.i:                                    ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE4findERKi.exit69.i, %.thread.i
  %.034.lcssa.i = phi i64 [ %.03618.i, %.thread.i ], [ %spec.select.i, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE4findERKi.exit69.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.be = sub i64 %.034.lcssa.i, %.03618.i        ; 2 uses
  %i.bf = invoke { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %i.be)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.k:                                             ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE4findERKi.exit69.i, %.lr.ph24.i
  %.023.i = phi i64 [ %.03618.i, %.lr.ph24.i ], [ %i.bj, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE4findERKi.exit69.i ] ; 3 uses
  %.03422.i = phi i64 [ %.03618.i, %.lr.ph24.i ], [ %spec.select.i, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE4findERKi.exit69.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 %.023.i
  %i.bh = sub nuw nsw i64 %i.h, %.023.i
  %i.bi = invoke noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull %i.b)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bj = add i64 %i.bi, %.023.i                  ; 3 uses
  %i.bk = load i64, ptr %i.bd, align 8, !tbaa !279
  %.not.not.i.i58.i = icmp eq i64 %i.bk, 0
  %i.bl = load i32, ptr %i.b, align 4             ; 4 uses
  br i1 %.not.not.i.i58.i, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.l, %bb.m
  %.sroa.06.0.in.i.i66.i = phi ptr [ %.sroa.06.0.i.i67.i, %bb.m ], [ %i.k, %bb.l ]
  %.sroa.06.0.i.i67.i = load ptr, ptr %.sroa.06.0.in.i.i66.i, align 8, !tbaa !272 ; 4 uses
  %.not.i.i68.i = icmp eq ptr %.sroa.06.0.i.i67.i, null
  br i1 %.not.i.i68.i, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE4findERKi.exit69.i, label %bb.m

end_hunk_0
