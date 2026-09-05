Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_prune?download=true
inline.NumInlined: 1564
inline.NumDeleted: 852
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK7xgboost4tree10TreePruner15PredictPositionEPNS_7DMatrixEPKNS_7RegTreeEPNS_16HostDeviceVectorIiEE:bb.a
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !142, !noalias !368
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !142, !noalias !368
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEE5beginEv.exit

bb.t:                                             ; preds = %bb.r
  %i.bo = atomicrmw volatile add ptr %i.bk, i32 1 acq_rel, align 4, !noalias !368 ; 0 uses
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEE5beginEv.exit

_ZN7xgboost8BatchSetINS_10SparsePageEE5beginEv.exit: ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_10SparsePageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !alias.scope !369
  invoke void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef null)
          to label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.preheader unwind label %bb.ak

_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.preheader: ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE5beginEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.in.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.not6.i.i.i.i.i.i = icmp eq ptr %.sroa.086.1105, %.sroa.22.1114 ; 2 uses
  br i1 %i.bc, label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.us.preheader, label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.preheader197

_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.preheader197: ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.preheader
  %i.bu = ptrtoaddr ptr %.sroa.22.1114 to i64
  %i.bv = ptrtoaddr ptr %.sroa.086.1105 to i64
  %i.bw = add i64 %i.bu, -4
  %i.bx = sub i64 %i.bw, %i.bv                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.bx, 28
  %n.vec175 = and i64 %i.bz, 9223372036854775800  ; 3 uses
  %i.ca = shl i64 %n.vec175, 2
  %i.cb = getelementptr i8, ptr %.sroa.086.1105, i64 %i.ca
  %cmp.n181 = icmp eq i64 %i.bz, %n.vec175
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit

_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.us.preheader: ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.preheader
  %i.cc = ptrtoaddr ptr %.sroa.22.1114 to i64
  %i.cd = ptrtoaddr ptr %.sroa.086.1105 to i64
  %i.ce = add i64 %i.cc, -4
  %i.cf = sub i64 %i.ce, %i.cd                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check184 = icmp ult i64 %i.cf, 28
  %n.vec186 = and i64 %i.ch, 9223372036854775800  ; 3 uses
  %i.ci = shl i64 %n.vec186, 2
  %i.cj = getelementptr i8, ptr %.sroa.086.1105, i64 %i.ci
  %cmp.n192 = icmp eq i64 %i.ch, %n.vec186
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.us

_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.us: ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.us.preheader, %.critedge.split.us.us
  %i.ck = invoke noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_10SparsePageEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.u unwind label %.split132.us

bb.u:                                             ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.us
  br i1 %i.ck, label %.split135.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_10SparsePageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.w unwind label %.split137.us ; 3 uses

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %.noexc64.us unwind label %.split140.us

.noexc64.us:                                      ; preds = %bb.w
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !370, !noalias !371
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %_ZNK7xgboost10SparsePage7GetViewEv.exit.us unwind label %.split140.us

_ZNK7xgboost10SparsePage7GetViewEv.exit.us:       ; preds = %.noexc64.us
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !374, !noalias !371 ; 2 uses
  %i.cs = icmp ne ptr %i.cr, null
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  br label %bb.x

bb.x:                                             ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.us.us, %_ZNK7xgboost10SparsePage7GetViewEv.exit.us
  %.0.us.us = phi i64 [ %i.hh, %_ZN7xgboost7RegTree4FVec4DropEv.exit.us.us ], [ 0, %_ZNK7xgboost10SparsePage7GetViewEv.exit.us ] ; 4 uses
  %i.cu = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorImE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %.noexc66.us.us unwind label %.split.us.split.us

.noexc66.us.us:                                   ; preds = %bb.x
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.critedge.split.us.us, label %bb.y

bb.y:                                             ; preds = %.noexc66.us.us
  %i.cw = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorImE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %.noexc67.us.us unwind label %.split.us.split.us

.noexc67.us.us:                                   ; preds = %bb.y
  %i.cx = add i64 %i.cw, -1
  %i.cy = icmp ult i64 %.0.us.us, %i.cx
  br i1 %i.cy, label %bb.z, label %.critedge.split.us.us

bb.z:                                             ; preds = %.noexc67.us.us
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.0.us.us ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !43 ; 3 uses
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !43 ; 4 uses
  %i.dd = icmp eq i64 %i.db, %i.dc                ; 2 uses
  %i.de = or i1 %i.cs, %i.dd
  br i1 %i.de, label %bb.aa, label %.split122.us, !prof !66

bb.aa:                                            ; preds = %bb.z
  %i.df = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dc ; 5 uses
  br i1 %i.dd, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %bb.aa
  %xtraiter200 = and i64 %i.df, 3                 ; 3 uses
  %i.dh = sub i64 %i.dc, %i.db
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us.preheader.new

.lr.ph.i.us.us.preheader.new:                     ; preds = %.lr.ph.i.us.us.preheader
  %unroll_iter204 = and i64 %i.df, -4
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us, %.lr.ph.i.us.us.preheader.new
  %.011.i.us.us = phi i64 [ 0, %.lr.ph.i.us.us.preheader.new ], [ %i.ek, %.lr.ph.i.us.us ] ; 5 uses
  %niter205 = phi i64 [ 0, %.lr.ph.i.us.us.preheader.new ], [ %niter205.next.3, %.lr.ph.i.us.us ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.011.i.us.us ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !376
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !377
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.dn
  store float %i.dl, ptr %i.do, align 4, !tbaa !361
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.011.i.us.us ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !376
  %i.dt = load i32, ptr %i.dq, align 4, !tbaa !377
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.du
  store float %i.ds, ptr %i.dv, align 4, !tbaa !361
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.011.i.us.us ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !376
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !377
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.eb
  store float %i.dz, ptr %i.ec, align 4, !tbaa !361
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.011.i.us.us ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 28
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !376
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !377
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.ei
  store float %i.eg, ptr %i.ej, align 4, !tbaa !361
  %i.ek = add nuw i64 %.011.i.us.us, 4            ; 2 uses
  %niter205.next.3 = add i64 %niter205, 4         ; 2 uses
  %niter205.ncmp.3 = icmp eq i64 %niter205.next.3, %unroll_iter204
  br i1 %niter205.ncmp.3, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us.loopexit.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !349

_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us.loopexit.unr-lcssa: ; preds = %.lr.ph.i.us.us
  %lcmp.mod202.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod202.not, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us.loopexit.unr-lcssa, %.lr.ph.i.us.us.preheader
  %.011.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.preheader ], [ %i.ek, %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us.loopexit.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter200, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph.i.us.us.epil

.lr.ph.i.us.us.epil:                              ; preds = %.lr.ph.i.us.us.epil, %.lr.ph.i.us.us.epil.preheader
  %.011.i.us.us.epil = phi i64 [ %i.er, %.lr.ph.i.us.us.epil ], [ %.011.i.us.us.epil.init, %.lr.ph.i.us.us.epil.preheader ] ; 2 uses
  %epil.iter201 = phi i64 [ %epil.iter201.next, %.lr.ph.i.us.us.epil ], [ 0, %.lr.ph.i.us.us.epil.preheader ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.011.i.us.us.epil ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !376
  %i.eo = load i32, ptr %i.el, align 4, !tbaa !377
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.ep
  store float %i.en, ptr %i.eq, align 4, !tbaa !361
  %i.er = add nuw i64 %.011.i.us.us.epil, 1
  %epil.iter201.next = add i64 %epil.iter201, 1   ; 2 uses
  %epil.iter201.cmp.not = icmp eq i64 %epil.iter201.next, %xtraiter200
  br i1 %epil.iter201.cmp.not, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us, label %.lr.ph.i.us.us.epil, !llvm.loop !350

_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us: ; preds = %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us.loopexit.unr-lcssa, %.lr.ph.i.us.us.epil, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %.noexc70.us.us unwind label %.split.us.split.us

.noexc70.us.us:                                   ; preds = %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us
  %i.es = load ptr, ptr %i.bq, align 8, !tbaa !386 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !95 ; 2 uses
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %_ZNK7xgboost4tree10TreePruner12LeafPositionILb1EEEiRKNS_7RegTreeERKNS3_4FVecE.exit.us.us, label %.lr.ph.i68.preheader.us.us

.lr.ph.i68.preheader.us.us:                       ; preds = %.noexc70.us.us
  %.sroa.02.0.copyload.i.us.us = load i64, ptr %5, align 8 ; 2 uses
  %.sroa.23.0.copyload.i.us.us = load ptr, ptr %.sroa.23.0..sroa_idx.i, align 8
  %12 = icmp eq i64 %.sroa.02.0.copyload.i.us.us, 0
  %13 = load i64, ptr %i.bs, align 8
  %14 = load ptr, ptr %i.bt, align 8
  %15 = load i64, ptr %i.br, align 8              ; 3 uses
  %16 = load ptr, ptr %.in.i.i, align 8           ; 2 uses
  %17 = icmp ne ptr %16, null
  br label %.lr.ph.i68.us.us

.lr.ph.i68.us.us:                                 ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us, %.lr.ph.i68.preheader.us.us
  %i.ew = phi i32 [ %i.gx, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us ], [ %i.eu, %.lr.ph.i68.preheader.us.us ]
  %i.ex = phi ptr [ %i.gv, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us ], [ %i.es, %.lr.ph.i68.preheader.us.us ] ; 2 uses
  %.08.i.us.us = phi i32 [ %.0.i.i.us.us, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us ], [ 0, %.lr.ph.i68.preheader.us.us ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !96 ; 2 uses
  %i.fa = and i32 %i.ez, 2147483647
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !361 ; 6 uses
  %i.fe = fcmp uno float %i.fd, 0.000000e+00
  br i1 %i.fe, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i68.us.us
  br i1 %12, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ff = zext i32 %.08.i.us.us to i64            ; 2 uses
  %i.fg = icmp ugt i64 %.sroa.02.0.copyload.i.us.us, %i.ff
  br i1 %i.fg, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.us.us, label %.split124.us, !prof !66

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.us.us: ; preds = %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i.us.us, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !388
  %i.fj = icmp eq i8 %i.fi, 1
  br i1 %i.fj, label %bb.ad, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us.us

bb.ad:                                            ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.us.us
  %i.fk = sext i32 %.08.i.us.us to i64            ; 2 uses
  %i.fl = icmp ugt i64 %13, %i.fk
  br i1 %i.fl, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.us.us, label %.split126.us, !prof !66

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.us.us: ; preds = %bb.ad
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.fk ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !390 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !391 ; 3 uses
  %i.fq = icmp eq i64 %i.fp, -1
  br i1 %i.fq, label %.split.i.i.us.us, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.us.us
  %i.fr = add i64 %i.fp, %i.fn
  %.not.i.i84.us.us = icmp ugt i64 %i.fr, %15
  br i1 %.not.i.i84.us.us, label %.split128.us, label %bb.ag, !prof !116

.split.i.i.us.us:                                 ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.us.us
  %.not8.i.i.us.us = icmp ugt i64 %i.fn, %15
  br i1 %.not8.i.i.us.us, label %.split128.us, label %bb.af, !prof !116

bb.af:                                            ; preds = %.split.i.i.us.us
  %i.fs = sub nuw i64 %15, %i.fn
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ft = phi i64 [ %i.fs, %bb.af ], [ %i.fp, %bb.ae ] ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  %i.fv = or i1 %i.fu, %17
  br i1 %i.fv, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.us.us, label %.split130.us, !prof !66

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.us.us: ; preds = %bb.ag
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %i.fn
  %i.fx = fcmp olt float %i.fd, 0.000000e+00
  %i.fy = fcmp oge float %i.fd, f0x4B800000
  %i.fz = or i1 %i.fx, %i.fy
  br i1 %i.fz, label %.noexc71.us.us, label %bb.ah, !prof !116

bb.ah:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.us.us
  %i.ga = fptoui float %i.fd to i64
  %i.gb = lshr i64 %i.ga, 5
  %.not.i15.i.us.us = icmp ult i64 %i.gb, %i.ft
  br i1 %.not.i15.i.us.us, label %bb.ai, label %.noexc71.us.us

bb.ai:                                            ; preds = %bb.ah
  %i.gc = fptosi float %i.fd to i32               ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = lshr i64 %i.gd, 5
  %i.gf = and i32 %i.gc, 31
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.ge
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !142
  %i.gi = lshr exact i32 -2147483648, %i.gf
  %i.gj = and i32 %i.gh, %i.gi
  %.not5.i.i.us.us = icmp eq i32 %i.gj, 0
  br label %.noexc71.us.us

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us.us: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.us.us, %bb.ab
  %i.gk = sext i32 %.08.i.us.us to i64
  %i.gl = getelementptr inbounds [20 x i8], ptr %i.es, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !33
  %i.go = fcmp olt float %i.fd, %i.gn
  br label %.noexc71.us.us

.noexc71.us.us:                                   ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us.us, %bb.ai, %bb.ah, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.us.us
  %.0.i.us.us = phi i1 [ %i.go, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us.us ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.us.us ], [ %.not5.i.i.us.us, %bb.ai ], [ true, %bb.ah ]
  %i.gp = xor i1 %.0.i.us.us, true
  %i.gq = zext i1 %i.gp to i32
  %i.gr = add nuw nsw i32 %i.ew, %i.gq
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us

bb.aj:                                            ; preds = %.lr.ph.i68.us.us
  %i.gs = icmp slt i32 %i.ez, 0
  %.in.v.i.i.i.us.us = select i1 %i.gs, i64 4, i64 8
  %.in.i.i.i.us.us = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.in.v.i.i.i.us.us
  %i.gt = load i32, ptr %.in.i.i.i.us.us, align 4, !tbaa !142
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us

_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us: ; preds = %bb.aj, %.noexc71.us.us
  %.0.i.i.us.us = phi i32 [ %i.gt, %bb.aj ], [ %i.gr, %.noexc71.us.us ] ; 3 uses
  %i.gu = sext i32 %.0.i.i.us.us to i64
  %i.gv = getelementptr inbounds [20 x i8], ptr %i.es, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !95 ; 2 uses
  %i.gy = icmp eq i32 %i.gx, -1
  br i1 %i.gy, label %_ZNK7xgboost4tree10TreePruner12LeafPositionILb1EEEiRKNS_7RegTreeERKNS3_4FVecE.exit.us.us, label %.lr.ph.i68.us.us, !llvm.loop !351

_ZNK7xgboost4tree10TreePruner12LeafPositionILb1EEEiRKNS_7RegTreeERKNS3_4FVecE.exit.us.us: ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us, %.noexc70.us.us
  %.0.lcssa.i.us.us = phi i32 [ 0, %.noexc70.us.us ], [ %.0.i.i.us.us, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.gz = load i64, ptr %i.ct, align 8, !tbaa !397
  %i.ha = load ptr, ptr %i.p, align 8, !tbaa !155
  %i.hb = getelementptr [4 x i8], ptr %i.ha, i64 %i.gz
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %.0.us.us
  store i32 %.0.lcssa.i.us.us, ptr %i.hc, align 4, !tbaa !142
  br i1 %.not6.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.us.us, label %.lr.ph.i.i.i.i.i.i.us.us.preheader

.lr.ph.i.i.i.i.i.i.us.us.preheader:               ; preds = %_ZNK7xgboost4tree10TreePruner12LeafPositionILb1EEEiRKNS_7RegTreeERKNS3_4FVecE.exit.us.us
  br i1 %min.iters.check184, label %.lr.ph.i.i.i.i.i.i.us.us.preheader194, label %vector.body187

vector.body187:                                   ; preds = %.lr.ph.i.i.i.i.i.i.us.us.preheader, %vector.body187
  %index188 = phi i64 [ %index.next190, %vector.body187 ], [ 0, %.lr.ph.i.i.i.i.i.i.us.us.preheader ] ; 2 uses
  %i.hd = shl i64 %index188, 2
  %next.gep189 = getelementptr i8, ptr %.sroa.086.1105, i64 %i.hd ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep189, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep189, align 4, !tbaa !361
  store <4 x float> splat (float +qnan), ptr %i.he, align 4, !tbaa !361
  %index.next190 = add nuw i64 %index188, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next190, %n.vec186
  br i1 %i.hf, label %middle.block191, label %vector.body187, !llvm.loop !352

middle.block191:                                  ; preds = %vector.body187
  br i1 %cmp.n192, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.us.us, label %.lr.ph.i.i.i.i.i.i.us.us.preheader194

.lr.ph.i.i.i.i.i.i.us.us.preheader194:            ; preds = %.lr.ph.i.i.i.i.i.i.us.us.preheader, %middle.block191
  %.07.i.i.i.i.i.i.us.us.ph = phi ptr [ %.sroa.086.1105, %.lr.ph.i.i.i.i.i.i.us.us.preheader ], [ %i.cj, %middle.block191 ]
  br label %.lr.ph.i.i.i.i.i.i.us.us

.lr.ph.i.i.i.i.i.i.us.us:                         ; preds = %.lr.ph.i.i.i.i.i.i.us.us.preheader194, %.lr.ph.i.i.i.i.i.i.us.us
  %.07.i.i.i.i.i.i.us.us = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i.us.us ], [ %.07.i.i.i.i.i.i.us.us.ph, %.lr.ph.i.i.i.i.i.i.us.us.preheader194 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.us.us, align 4, !tbaa !361
  %i.hg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.us.us, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i78.us.us = icmp eq ptr %i.hg, %.sroa.22.1114
  br i1 %.not.i.i.i.i.i.i78.us.us, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.us.us, label %.lr.ph.i.i.i.i.i.i.us.us, !llvm.loop !353

_ZN7xgboost7RegTree4FVec4DropEv.exit.us.us:       ; preds = %.lr.ph.i.i.i.i.i.i.us.us, %middle.block191, %_ZNK7xgboost4tree10TreePruner12LeafPositionILb1EEEiRKNS_7RegTreeERKNS3_4FVecE.exit.us.us
  %i.hh = add i64 %.0.us.us, 1
  br label %bb.x, !llvm.loop !354

.critedge.split.us.us:                            ; preds = %.noexc67.us.us, %.noexc66.us.us
  %i.hi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_10SparsePageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.us unwind label %.split132.us ; 0 uses

.split132.us:                                     ; preds = %.critedge.split.us.us, %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.us
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.split137.us:                                     ; preds = %bb.v
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.split140.us:                                     ; preds = %.noexc64.us, %bb.w
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.split.us.split.us:                               ; preds = %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us, %bb.y, %bb.x
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ak:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE5beginEv.exit
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #18
  br label %.body

_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit: ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.preheader197, %.critedge.split
  %i.ho = invoke noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_10SparsePageEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.al unwind label %.split132

bb.al:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit
  br i1 %i.ho, label %.split135.us, label %bb.bh

.split135.us:                                     ; preds = %bb.al, %bb.u
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !187 ; 8 uses
  %.not.i.i.i55 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i55, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %.split135.us
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = load atomic i64, ptr %i.hr acquire, align 8 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 4294967297
  %i.hu = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.ht, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.hr, align 8, !tbaa !189
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store i32 0, ptr %i.hv, align 4, !tbaa !190
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #18, !inline_history !6
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !51
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #18, !inline_history !6
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit

bb.ao:                                            ; preds = %bb.am
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.id = add nsw i32 %i.hu, -1
  store i32 %i.id, ptr %i.hr, align 8, !tbaa !142
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ie = atomicrmw volatile add ptr %i.hr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i = phi i32 [ %i.hu, %bb.ap ], [ %i.ie, %bb.aq ]
  %i.if = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.if, label %bb.ar, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit, !prof !116

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit: ; preds = %.split135.us, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.ig = load ptr, ptr %i.bg, align 8, !tbaa !187 ; 8 uses
  %.not.i.i.i56 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i56, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60, label %bb.as

bb.as:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 4 uses
  %i.ii = load atomic i64, ptr %i.ih acquire, align 8 ; 2 uses
  %i.ij = icmp eq i64 %i.ii, 4294967297
  %i.ik = trunc i64 %i.ii to i32                  ; 2 uses
  br i1 %i.ij, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.ih, align 8, !tbaa !189
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  store i32 0, ptr %i.il, align 4, !tbaa !190
  %i.im = load ptr, ptr %i.ig, align 8, !tbaa !51
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %i.ig) #18, !inline_history !6
  %i.ip = load ptr, ptr %i.ig, align 8, !tbaa !51
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(16) %i.ig) #18, !inline_history !6
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60

bb.au:                                            ; preds = %bb.as
  %i.is = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i57 = icmp eq i8 %i.is, 0
  br i1 %.not.i.i.i.i57, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.it = add nsw i32 %i.ik, -1
  store i32 %i.it, ptr %i.ih, align 8, !tbaa !142
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58

bb.aw:                                            ; preds = %bb.au
  %i.iu = atomicrmw volatile add ptr %i.ih, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i59 = phi i32 [ %i.ik, %bb.av ], [ %i.iu, %bb.aw ]
  %i.iv = icmp eq i32 %.0.i.i.i.i.i59, 1
  br i1 %i.iv, label %bb.ax, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60, !prof !116

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ig) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60: ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.iw = load ptr, ptr %i.bh, align 8, !tbaa !187 ; 8 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i61, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 4 uses
  %i.iy = load atomic i64, ptr %i.ix acquire, align 8 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 4294967297
  %i.ja = trunc i64 %i.iy to i32                  ; 2 uses
  br i1 %i.iz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.ix, align 8, !tbaa !189
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store i32 0, ptr %i.jb, align 4, !tbaa !190
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !51
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #18, !inline_history !355
  %i.jf = load ptr, ptr %i.iw, align 8, !tbaa !51
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #18, !inline_history !355
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.ji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i62 = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i.i.i62, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jj = add nsw i32 %i.ja, -1
  store i32 %i.jj, ptr %i.ix, align 8, !tbaa !142
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.jk = atomicrmw volatile add ptr %i.ix, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i = phi i32 [ %i.ja, %bb.bb ], [ %i.jk, %bb.bc ]
  %i.jl = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jl, label %bb.bd, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit, !prof !116

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #18
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit

_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit:  ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %.not.i.i.i.i63 = icmp eq ptr %.sroa.086.1105, null
  br i1 %.not.i.i.i.i63, label %_ZN7xgboost7RegTree4FVecD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit
  %i.jm = ptrtoint ptr %.sroa.22.1114 to i64
  %i.jn = ptrtoint ptr %.sroa.086.1105 to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.086.1105, i64 noundef %i.jo) #32
  br label %_ZN7xgboost7RegTree4FVecD2Ev.exit

_ZN7xgboost7RegTree4FVecD2Ev.exit:                ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit, %bb.be
end_hunk_0
