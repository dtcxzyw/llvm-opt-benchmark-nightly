Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AffineDataCopyGeneration?download=true
inline.NumInlined: 1582
inline.NumDeleted: 1015
begin_hunk_0_@_ZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS1_9OperationENS4_12DenseMapInfoIS7_vEEEE:bb.a
bb.e:                                             ; preds = %bb.d
  %i.ah = add i32 %i.af, -1                       ; 2 uses
  %i.ai = ptrtoint ptr %i.w to i64
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.ah, %i.am                    ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !19
  %i.as = and i32 %i.an, 31
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm7find_ifIRN4mlir5BlockEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPS2_RNS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS9_vEEEEE3$_0EEDaOT_T0_.exit", !prof !335

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.e, %bb.f
  %i.av = phi i64 [ %i.ba, %bb.f ], [ %i.ao, %bb.e ]
  %.019.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.az, %bb.f ], [ %i.an, %bb.e ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !82
  %.not.i.not.i.i.i.i.i = icmp eq ptr %i.w, %i.ax
  br i1 %.not.i.not.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_0EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i.i", label %bb.f, !prof !151

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ay = add nuw i32 %.019.i.i.i.i.i.i.i.i.i.i, 1
  %i.az = and i32 %i.ay, %i.ah                    ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = lshr i64 %i.ba, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !19
  %i.be = and i32 %i.az, 31
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm7find_ifIRN4mlir5BlockEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPS2_RNS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS9_vEEEEE3$_0EEDaOT_T0_.exit", !prof !336

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_0EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, %i.a
  br i1 %.not.i.i.i.i, label %"_ZN4llvm7find_ifIRN4mlir5BlockEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPS2_RNS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS9_vEEEEE3$_0EEDaOT_T0_.exit", label %bb.c, !llvm.loop !317

"_ZN4llvm7find_ifIRN4mlir5BlockEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPS2_RNS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS9_vEEEEE3$_0EEDaOT_T0_.exit": ; preds = %bb.d, %bb.e, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_0EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i.i", %bb.f, %bb.b
  %.sroa.03.07.i.i.i.i = phi ptr [ %.sroa.03.09.i.i.i.i, %bb.f ], [ %i.t, %bb.b ], [ %i.bi, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_0EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i.i" ], [ %.sroa.03.09.i.i.i.i, %bb.d ], [ %.sroa.03.09.i.i.i.i, %bb.e ] ; 4 uses
  %.not6371 = icmp eq ptr %.sroa.03.07.i.i.i.i, %i.a
  br i1 %.not6371, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4llvm7find_ifIRN4mlir5BlockEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPS2_RNS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS9_vEEEEE3$_0EEDaOT_T0_.exit"
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit"
  %.sroa.056.074 = phi ptr [ %.sroa.03.07.i.i.i.i, %.lr.ph ], [ %.sroa.056.1, %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit" ] ; 2 uses
  %.sroa.053.072 = phi ptr [ %.sroa.03.07.i.i.i.i, %.lr.ph ], [ %.sroa.053.1, %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !152
  %i.bn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.053.072) #22 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !85
  %i.br = icmp eq ptr %i.bq, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.br, ptr %i.bn, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %4, align 8
  br i1 %i.br, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %2, align 8, !tbaa !72, !noalias !337
  %i.bt = load ptr, ptr %i.bj, align 8, !tbaa !73, !noalias !337 ; 2 uses
  %i.bu = load i32, ptr %i.bk, align 4, !tbaa !74, !noalias !337 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = add i32 %i.bu, -1                       ; 2 uses
  %i.bx = ptrtoint ptr %i.bn to i64
  %i.by = mul i64 %i.bx, -4658895280553007687     ; 2 uses
  %i.bz = lshr i64 %i.by, 31
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = and i32 %i.bw, %i.cb                    ; 3 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = lshr i64 %i.cd, 5
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !19
  %i.ch = and i32 %i.cc, 31
  %i.ci = lshr i32 %i.cg, %i.ch
  %i.cj = trunc i32 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.i.i.i.i40, label %.loopexit, !prof !335

.lr.ph.i.i.i.i40:                                 ; preds = %bb.i, %bb.j
  %i.ck = phi i64 [ %i.cq, %bb.j ], [ %i.cd, %bb.i ]
  %.019.i.i.i.i = phi i32 [ %i.cp, %bb.j ], [ %i.cc, %bb.i ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !82
  %i.cn = icmp eq ptr %spec.select.i.i, %i.cm
  br i1 %i.cn, label %.critedge, label %bb.j, !prof !151

bb.j:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.co = add nuw i32 %.019.i.i.i.i, 1
  %i.cp = and i32 %i.co, %i.bw                    ; 3 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 5
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !19
  %i.cu = and i32 %i.cp, 31
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = trunc i32 %i.cv to i1
  br i1 %i.cw, label %.lr.ph.i.i.i.i40, label %.loopexit, !prof !336

.loopexit:                                        ; preds = %bb.j, %bb.h, %bb.i
  %i.cx = call i8 @_ZN4mlir6affine22affineDataCopyGenerateEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEES7_RKNS0_17AffineCopyOptionsESt8optionalINS_5ValueEERNS1_8DenseSetIPS5_NS1_12DenseMapInfoISF_vEEEE(ptr %.sroa.056.074, ptr %.sroa.053.072, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr undef, i8 0, ptr noundef nonnull align 8 dereferenceable(24) %2) #22 ; 0 uses
  %i.cy = load i8, ptr %i.bl, align 8, !tbaa !137, !range !44, !noundef !45
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN4mlir6affine11AffineForOp7getStepEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %i.da = load i32, ptr %i.bm, align 8, !tbaa !339 ; 2 uses
  %i.db = icmp ult i32 %i.da, 65
  br i1 %i.db, label %.split, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.k
  %i.dc = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #25
  %i.dd = sub i32 %i.da, %i.dc
  %i.de = icmp ult i32 %i.dd, 65
  %i.df = load ptr, ptr %5, align 8               ; 4 uses
  br i1 %i.de, label %.split99, label %.thread100

bb.l:                                             ; preds = %.loopexit
  %.sroa.013.0.copyload = load ptr, ptr %4, align 8
  %i.dg = call { i64, i8 } @_ZN4mlir6affine23getMemoryFootprintBytesENS0_11AffineForOpEi(ptr %.sroa.013.0.copyload, i32 noundef 0) #22 ; 2 uses
  %i.dh = extractvalue { i64, i8 } %i.dg, 1
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = extractvalue { i64, i8 } %i.dg, 0
  %i.dk = icmp ugt i64 %i.dj, %spec.select
  %or.cond = select i1 %i.di, i1 %i.dk, i1 false
  br i1 %or.cond, label %bb.m, label %.critedge37.thread

.split:                                           ; preds = %bb.k
  %.0.i.i.i = load i64, ptr %5, align 8, !tbaa !109
  %.not110 = icmp eq i64 %.0.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.not110, label %.critedge37.thread, label %bb.m

.thread100:                                       ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.dl = icmp eq ptr %i.df, null
  br i1 %i.dl, label %.sink.split, label %.split99.thread

.split99.thread:                                  ; preds = %.thread100
  call void @_ZdaPv(ptr noundef nonnull %i.df) #23
  br label %.sink.split

.split99:                                         ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.i98 = load i64, ptr %i.df, align 8, !tbaa !109
  %.not109 = icmp eq i64 %.0.i.i.i98, 1
  call void @_ZdaPv(ptr noundef nonnull %i.df) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.not109, label %.critedge37.thread, label %bb.m

.sink.split:                                      ; preds = %.thread100, %.split99.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %.split99, %.split, %bb.l
  %i.dm = load ptr, ptr %4, align 8, !tbaa !152   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 44
  %i.do = load i32, ptr %i.dn, align 4            ; 3 uses
  %i.dp = and i32 %i.do, 8388607
  %i.dq = icmp ne i32 %i.dp, 0
  call void @llvm.assume(i1 %i.dq)
  %i.dr = lshr i32 %i.do, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.dr, 1
  %i.ds = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.ds
  %i.du = lshr i32 %i.do, 21
  %i.dv = and i32 %i.du, 2040
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !64
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %i.dx, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !67
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8
  call fastcc void @_ZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS1_9OperationENS4_12DenseMapInfoIS7_vEEEE(ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit44

.critedge37.thread:                               ; preds = %.split99, %.split, %bb.l
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.053.072, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !67
  %i.eh = call i8 @_ZN4mlir6affine22affineDataCopyGenerateEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEES7_RKNS0_17AffineCopyOptionsESt8optionalINS_5ValueEERNS1_8DenseSetIPS5_NS1_12DenseMapInfoISF_vEEEE(ptr %.sroa.053.072, ptr %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr undef, i8 0, ptr noundef nonnull align 8 dereferenceable(24) %2) #22 ; 0 uses
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit44

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit44: ; preds = %.critedge37.thread, %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.053.072, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !67 ; 4 uses
  %.not8.i.i.i = icmp eq ptr %i.ej, %i.a
  br i1 %.not8.i.i.i, label %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit44, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_1EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i"
  %.sroa.03.09.i.i.i = phi ptr [ %i.fw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_1EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i" ], [ %i.ej, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit44 ] ; 8 uses
  %i.ek = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.03.09.i.i.i) #22 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.el, align 8, !tbaa !83
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !85 ; 3 uses
  %i.eo = icmp eq ptr %i.en, @_ZN4mlir6detail14TypeIDResolverINS_6affine12AffineLoadOpEvE2idE
  %i.ep = icmp eq ptr %i.en, @_ZN4mlir6detail14TypeIDResolverINS_6affine13AffineStoreOpEvE2idE
  %or.cond.i.i.i.i.i.i = or i1 %i.eo, %i.ep
  %i.eq = icmp eq ptr %i.en, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %spec.select.i.i.i.i.i.i = or i1 %i.eq, %or.cond.i.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i.i, label %bb.n, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_1EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i"

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.er = load ptr, ptr %2, align 8, !tbaa !72, !noalias !340
  %i.es = load ptr, ptr %i.bj, align 8, !tbaa !73, !noalias !340 ; 2 uses
  %i.et = load i32, ptr %i.bk, align 4, !tbaa !74, !noalias !340 ; 2 uses
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ev = add i32 %i.et, -1                       ; 2 uses
  %i.ew = ptrtoint ptr %i.ek to i64
  %i.ex = mul i64 %i.ew, -4658895280553007687     ; 2 uses
  %i.ey = lshr i64 %i.ex, 31
  %i.ez = xor i64 %i.ey, %i.ex
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = and i32 %i.ev, %i.fa                    ; 3 uses
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = lshr i64 %i.fc, 5
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !19
  %i.fg = and i32 %i.fb, 31
  %i.fh = lshr i32 %i.ff, %i.fg
  %i.fi = trunc i32 %i.fh to i1
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit", !prof !335

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.o, %bb.p
  %i.fj = phi i64 [ %i.fo, %bb.p ], [ %i.fc, %bb.o ]
  %.019.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fn, %bb.p ], [ %i.fb, %bb.o ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !82
  %.not.i.not.i.i.i.i = icmp eq ptr %i.ek, %i.fl
  br i1 %.not.i.not.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_1EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i", label %bb.p, !prof !151

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fm = add nuw i32 %.019.i.i.i.i.i.i.i.i.i, 1
  %i.fn = and i32 %i.fm, %i.ev                    ; 3 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = lshr i64 %i.fo, 5
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !19
  %i.fs = and i32 %i.fn, 31
  %i.ft = lshr i32 %i.fr, %i.fs
  %i.fu = trunc i32 %i.ft to i1
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit", !prof !336

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_1EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !67 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.fw, %i.a
  br i1 %.not.i.i.i, label %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit", label %.lr.ph.i.i.i, !llvm.loop !326

.critedge:                                        ; preds = %.lr.ph.i.i.i.i40, %bb.g
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.053.072, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !67
  br label %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit"

"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_1EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i", %bb.o, %bb.n, %bb.p, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit44, %.critedge
  %.sroa.053.1 = phi ptr [ %i.fy, %.critedge ], [ %.sroa.03.09.i.i.i, %bb.p ], [ %i.ej, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit44 ], [ %.sroa.03.09.i.i.i, %bb.n ], [ %i.fw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_1EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i" ], [ %.sroa.03.09.i.i.i, %bb.o ] ; 2 uses
  %.sroa.056.1 = phi ptr [ %.sroa.056.074, %.critedge ], [ %.sroa.03.09.i.i.i, %bb.p ], [ %i.ej, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit44 ], [ %.sroa.03.09.i.i.i, %bb.n ], [ %i.fw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPN4mlir5BlockERN4llvm8DenseSetIPNS4_9OperationENS7_12DenseMapInfoISA_vEEEEE3$_1EclINS7_14ilist_iteratorINS7_12ilist_detail12node_optionsIS9_Lb0ELb0EvLb0EvEELb0ELb0EEEEEbT_.exit.i.i.i" ], [ %.sroa.03.09.i.i.i, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.not63 = icmp eq ptr %.sroa.053.1, %i.a
  br i1 %.not63, label %._crit_edge, label %bb.g, !llvm.loop !327

._crit_edge:                                      ; preds = %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit", %"_ZN4llvm7find_ifIRN4mlir5BlockEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPS2_RNS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS9_vEEEEE3$_0EEDaOT_T0_.exit"
  %.sroa.056.0.lcssa = phi ptr [ %.sroa.03.07.i.i.i.i, %"_ZN4llvm7find_ifIRN4mlir5BlockEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPS2_RNS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS9_vEEEEE3$_0EEDaOT_T0_.exit" ], [ %.sroa.056.1, %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEEZN12_GLOBAL__N_124AffineDataCopyGeneration10runOnBlockEPNS4_5BlockERNS0_8DenseSetIPS5_NS0_12DenseMapInfoISD_vEEEEE3$_1ET_SJ_SJ_T0_.exit" ] ; 2 uses
  %.not64 = icmp eq ptr %.sroa.056.0.lcssa, %i.a
  br i1 %.not64, label %bb.q, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.ga = call i8 @_ZN4mlir6affine22affineDataCopyGenerateEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEES7_RKNS0_17AffineCopyOptionsESt8optionalINS_5ValueEERNS1_8DenseSetIPS5_NS1_12DenseMapInfoISF_vEEEE(ptr %.sroa.056.0.lcssa, ptr %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr undef, i8 0, ptr noundef nonnull align 8 dereferenceable(24) %2) #22 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.preheader, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  ret void
}

declare void @_ZN4mlir6affine12AffineLoadOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) local_unnamed_addr #7

declare void @_ZN4mlir6affine13AffineStoreOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) local_unnamed_addr #7

declare void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(176), ptr, i64, ptr, i64) unnamed_addr #7

declare i8 @_ZN4mlir23applyOpPatternsGreedilyEN4llvm8ArrayRefIPNS_9OperationEEERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPbS9_(ptr, i64, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef byval(%"class.mlir::GreedyRewriteConfig") align 8, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #14

declare noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #7

declare i8 @_ZN4mlir6affine22affineDataCopyGenerateEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEES7_RKNS0_17AffineCopyOptionsESt8optionalINS_5ValueEERNS1_8DenseSetIPS5_NS1_12DenseMapInfoISF_vEEEE(ptr, ptr, ptr noundef nonnull align 8 dereferenceable(24), ptr, i8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN4mlir6affine11AffineForOp7getStepEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #15

declare { i64, i8 } @_ZN4mlir6affine23getMemoryFootprintBytesENS0_11AffineForOpEi(ptr, i32 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #22, !inline_history !341
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #22 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !67 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !67 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67   ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #22
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #22, !inline_history !341
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_124AffineDataCopyGeneration14runOnOperationEvE3$_0EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
end_hunk_0
