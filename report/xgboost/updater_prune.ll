Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_prune?download=true
inline.NumInlined: 1564
inline.NumDeleted: 852
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK7xgboost4tree10TreePruner15PredictPositionEPNS_7DMatrixEPKNS_7RegTreeEPNS_16HostDeviceVectorIiEE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !360 ; 2 uses
  %.not120 = icmp eq i32 %i.ag, 0
  br i1 %.not120, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 3 uses
  %i.aj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #31 ; 8 uses
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !361
  %i.ak = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.am = getelementptr i8, ptr %i.aj, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !361
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai ; 3 uses
  %i.ao = add nsw i64 %i.ai, -4                   ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %n.vec = and i64 %i.aq, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !361
  store <4 x float> splat (float +qnan), ptr %i.au, align 4, !tbaa !361
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, %middle.block
  %.07.i.i.i.i.i.ph = phi ptr [ %i.aj, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !361
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !339

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.sroa.22.1114 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.an, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.sroa.086.1105 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.aj, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i ] ; 27 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !51
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.q unwind label %bb.bf

bb.q:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 224
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !364, !range !365, !noundef !366
  %i.bc = trunc nuw i8 %i.bb to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bd = load ptr, ptr %1, align 8, !tbaa !51, !noalias !367
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !367
  invoke void %i.bf(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::BatchSet") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN7xgboost7DMatrix10GetBatchesINS_10SparsePageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit unwind label %bb.bg, !inline_history !342

_ZN7xgboost7DMatrix10GetBatchesINS_10SparsePageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !187, !noalias !368 ; 2 uses
  %i.bj = load <2 x ptr>, ptr %9, align 16, !tbaa !46, !noalias !368
  store <2 x ptr> %i.bj, ptr %10, align 16, !tbaa !46, !alias.scope !368
  %.not.i.i.i.i.i53 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i53, label %_ZN7xgboost8BatchSetINS_10SparsePageEE5beginEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_10SparsePageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !368
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
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
  %.0.us.us = phi i64 [ %i.hl, %_ZN7xgboost7RegTree4FVec4DropEv.exit.us.us ], [ 0, %_ZNK7xgboost10SparsePage7GetViewEv.exit.us ] ; 4 uses
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
  %i.db = load i64, ptr %i.da, align 8, !tbaa !43 ; 2 uses
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !43 ; 3 uses
  %i.dd = icmp eq i64 %i.db, %i.dc                ; 2 uses
  %i.de = or i1 %i.cs, %i.dd
  br i1 %i.de, label %bb.aa, label %.split122.us, !prof !66

bb.aa:                                            ; preds = %bb.z
  %i.df = sub i64 %i.db, %i.dc                    ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dc ; 5 uses
  br i1 %i.dd, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %bb.aa
  %xtraiter200 = and i64 %i.df, 3                 ; 3 uses
  %12 = icmp ult i64 %i.df, 4
  br i1 %12, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us.preheader.new

.lr.ph.i.us.us.preheader.new:                     ; preds = %.lr.ph.i.us.us.preheader
  %unroll_iter204 = and i64 %i.df, -4
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us, %.lr.ph.i.us.us.preheader.new
  %.011.i.us.us = phi i64 [ 0, %.lr.ph.i.us.us.preheader.new ], [ %i.ei, %.lr.ph.i.us.us ] ; 5 uses
  %niter205 = phi i64 [ 0, %.lr.ph.i.us.us.preheader.new ], [ %niter205.next.3, %.lr.ph.i.us.us ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.011.i.us.us ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !376
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !377
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.dl
  store float %i.dj, ptr %i.dm, align 4, !tbaa !361
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.011.i.us.us ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !376
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !377
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.ds
  store float %i.dq, ptr %i.dt, align 4, !tbaa !361
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.011.i.us.us ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !376
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !377
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.dz
  store float %i.dx, ptr %i.ea, align 4, !tbaa !361
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.011.i.us.us ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !376
  %i.ef = load i32, ptr %i.ec, align 4, !tbaa !377
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.eg
  store float %i.ee, ptr %i.eh, align 4, !tbaa !361
  %i.ei = add nuw i64 %.011.i.us.us, 4            ; 2 uses
  %niter205.next.3 = add i64 %niter205, 4         ; 2 uses
  %niter205.ncmp.3 = icmp eq i64 %niter205.next.3, %unroll_iter204
  br i1 %niter205.ncmp.3, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us.loopexit.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !349

_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us.loopexit.unr-lcssa: ; preds = %.lr.ph.i.us.us
  %lcmp.mod202.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod202.not, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us.loopexit.unr-lcssa, %.lr.ph.i.us.us.preheader
  %.011.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.preheader ], [ %i.ei, %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us.loopexit.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter200, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph.i.us.us.epil

.lr.ph.i.us.us.epil:                              ; preds = %.lr.ph.i.us.us.epil, %.lr.ph.i.us.us.epil.preheader
  %.011.i.us.us.epil = phi i64 [ %i.ep, %.lr.ph.i.us.us.epil ], [ %.011.i.us.us.epil.init, %.lr.ph.i.us.us.epil.preheader ] ; 2 uses
  %epil.iter201 = phi i64 [ %epil.iter201.next, %.lr.ph.i.us.us.epil ], [ 0, %.lr.ph.i.us.us.epil.preheader ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.011.i.us.us.epil ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !376
  %i.em = load i32, ptr %i.ej, align 4, !tbaa !377
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.en
  store float %i.el, ptr %i.eo, align 4, !tbaa !361
  %i.ep = add nuw i64 %.011.i.us.us.epil, 1
  %epil.iter201.next = add i64 %epil.iter201, 1   ; 2 uses
  %epil.iter201.cmp.not = icmp eq i64 %epil.iter201.next, %xtraiter200
  br i1 %epil.iter201.cmp.not, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us, label %.lr.ph.i.us.us.epil, !llvm.loop !350

_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us: ; preds = %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us.loopexit.unr-lcssa, %.lr.ph.i.us.us.epil, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %.noexc70.us.us unwind label %.split.us.split.us

.noexc70.us.us:                                   ; preds = %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.us.us
  %i.eq = load ptr, ptr %i.bq, align 8, !tbaa !386 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !95 ; 2 uses
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %_ZNK7xgboost4tree10TreePruner12LeafPositionILb1EEEiRKNS_7RegTreeERKNS3_4FVecE.exit.us.us, label %.lr.ph.i68.preheader.us.us

.lr.ph.i68.preheader.us.us:                       ; preds = %.noexc70.us.us
  %.sroa.02.0.copyload.i.us.us = load i64, ptr %5, align 8 ; 2 uses
  %.sroa.23.0.copyload.i.us.us = load ptr, ptr %.sroa.23.0..sroa_idx.i, align 8
  %i.eu = icmp eq i64 %.sroa.02.0.copyload.i.us.us, 0
  %i.ev = load i64, ptr %i.bs, align 8
  %i.ew = load ptr, ptr %i.bt, align 8
  %i.ex = load i64, ptr %i.br, align 8            ; 3 uses
  %i.ey = load ptr, ptr %.in.i.i, align 8         ; 2 uses
  %i.ez = icmp ne ptr %i.ey, null
  br label %.lr.ph.i68.us.us

.lr.ph.i68.us.us:                                 ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us, %.lr.ph.i68.preheader.us.us
  %i.fa = phi i32 [ %i.hb, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us ], [ %i.es, %.lr.ph.i68.preheader.us.us ]
  %i.fb = phi ptr [ %i.gz, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us ], [ %i.eq, %.lr.ph.i68.preheader.us.us ] ; 2 uses
  %.08.i.us.us = phi i32 [ %.0.i.i.us.us, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us ], [ 0, %.lr.ph.i68.preheader.us.us ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !96 ; 2 uses
  %i.fe = and i32 %i.fd, 2147483647
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !361 ; 6 uses
  %i.fi = fcmp uno float %i.fh, 0.000000e+00
  br i1 %i.fi, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i68.us.us
  br i1 %i.eu, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fj = zext i32 %.08.i.us.us to i64            ; 2 uses
  %i.fk = icmp ugt i64 %.sroa.02.0.copyload.i.us.us, %i.fj
  br i1 %i.fk, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.us.us, label %.split124.us, !prof !66

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.us.us: ; preds = %bb.ac
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i.us.us, i64 %i.fj
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !388
  %i.fn = icmp eq i8 %i.fm, 1
  br i1 %i.fn, label %bb.ad, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us.us

bb.ad:                                            ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.us.us
  %i.fo = sext i32 %.08.i.us.us to i64            ; 2 uses
  %i.fp = icmp ugt i64 %i.ev, %i.fo
  br i1 %i.fp, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.us.us, label %.split126.us, !prof !66

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.us.us: ; preds = %bb.ad
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.fo ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !390 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !391 ; 3 uses
  %i.fu = icmp eq i64 %i.ft, -1
  br i1 %i.fu, label %.split.i.i.us.us, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.us.us
  %i.fv = add i64 %i.ft, %i.fr
  %.not.i.i84.us.us = icmp ugt i64 %i.fv, %i.ex
  br i1 %.not.i.i84.us.us, label %.split128.us, label %bb.ag, !prof !116

.split.i.i.us.us:                                 ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.us.us
  %.not8.i.i.us.us = icmp ugt i64 %i.fr, %i.ex
  br i1 %.not8.i.i.us.us, label %.split128.us, label %bb.af, !prof !116

bb.af:                                            ; preds = %.split.i.i.us.us
  %i.fw = sub nuw i64 %i.ex, %i.fr
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fx = phi i64 [ %i.fw, %bb.af ], [ %i.ft, %bb.ae ] ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  %i.fz = or i1 %i.fy, %i.ez
  br i1 %i.fz, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.us.us, label %.split130.us, !prof !66

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.us.us: ; preds = %bb.ag
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fr
  %i.gb = fcmp olt float %i.fh, 0.000000e+00
  %i.gc = fcmp oge float %i.fh, f0x4B800000
  %i.gd = or i1 %i.gb, %i.gc
  br i1 %i.gd, label %.noexc71.us.us, label %bb.ah, !prof !116

bb.ah:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.us.us
  %i.ge = fptoui float %i.fh to i64
  %i.gf = lshr i64 %i.ge, 5
  %.not.i15.i.us.us = icmp ult i64 %i.gf, %i.fx
  br i1 %.not.i15.i.us.us, label %bb.ai, label %.noexc71.us.us

bb.ai:                                            ; preds = %bb.ah
  %i.gg = fptosi float %i.fh to i32               ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = lshr i64 %i.gh, 5
  %i.gj = and i32 %i.gg, 31
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gi
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !142
  %i.gm = lshr exact i32 -2147483648, %i.gj
  %i.gn = and i32 %i.gl, %i.gm
  %.not5.i.i.us.us = icmp eq i32 %i.gn, 0
  br label %.noexc71.us.us

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us.us: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.us.us, %bb.ab
  %i.go = sext i32 %.08.i.us.us to i64
  %i.gp = getelementptr inbounds [20 x i8], ptr %i.eq, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !33
  %i.gs = fcmp olt float %i.fh, %i.gr
  br label %.noexc71.us.us

.noexc71.us.us:                                   ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us.us, %bb.ai, %bb.ah, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.us.us
  %.0.i.us.us = phi i1 [ %i.gs, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us.us ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.us.us ], [ %.not5.i.i.us.us, %bb.ai ], [ true, %bb.ah ]
  %i.gt = xor i1 %.0.i.us.us, true
  %i.gu = zext i1 %i.gt to i32
  %i.gv = add nuw nsw i32 %i.fa, %i.gu
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us

bb.aj:                                            ; preds = %.lr.ph.i68.us.us
  %i.gw = icmp slt i32 %i.fd, 0
  %.in.v.i.i.i.us.us = select i1 %i.gw, i64 4, i64 8
  %.in.i.i.i.us.us = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.in.v.i.i.i.us.us
  %i.gx = load i32, ptr %.in.i.i.i.us.us, align 4, !tbaa !142
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us

_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us.us: ; preds = %bb.aj, %.noexc71.us.us
  %.0.i.i.us.us = phi i32 [ %i.gx, %bb.aj ], [ %i.gv, %.noexc71.us.us ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK7xgboost4tree10TreePruner15PredictPositionEPNS_7DMatrixEPKNS_7RegTreeEPNS_16HostDeviceVectorIiEE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i = phi i32 [ %i.hy, %bb.ap ], [ %i.ii, %bb.aq ]
  %i.ij = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ij, label %bb.ar, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit, !prof !116

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hu) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit: ; preds = %.split135.us, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.ik = load ptr, ptr %i.bg, align 8, !tbaa !187 ; 8 uses
  %.not.i.i.i56 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i56, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60, label %bb.as

bb.as:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  %i.im = load atomic i64, ptr %i.il acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.il, align 8, !tbaa !189
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !190
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !51
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #18, !inline_history !6
  %i.it = load ptr, ptr %i.ik, align 8, !tbaa !51
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #18, !inline_history !6
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60

bb.au:                                            ; preds = %bb.as
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i57 = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i.i57, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.il, align 8, !tbaa !142
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58

bb.aw:                                            ; preds = %bb.au
  %i.iy = atomicrmw volatile add ptr %i.il, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i59 = phi i32 [ %i.io, %bb.av ], [ %i.iy, %bb.aw ]
  %i.iz = icmp eq i32 %.0.i.i.i.i.i59, 1
  br i1 %i.iz, label %bb.ax, label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60, !prof !116

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #18
  br label %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60

_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60: ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ja = load ptr, ptr %i.bh, align 8, !tbaa !187 ; 8 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i.i61, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 4 uses
  %i.jc = load atomic i64, ptr %i.jb acquire, align 8 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 4294967297
  %i.je = trunc i64 %i.jc to i32                  ; 2 uses
  br i1 %i.jd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.jb, align 8, !tbaa !189
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  store i32 0, ptr %i.jf, align 4, !tbaa !190
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !51
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #18, !inline_history !355
  %i.jj = load ptr, ptr %i.ja, align 8, !tbaa !51
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #18, !inline_history !355
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.jm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i62 = icmp eq i8 %i.jm, 0
  br i1 %.not.i.i.i.i.i62, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jn = add nsw i32 %i.je, -1
  store i32 %i.jn, ptr %i.jb, align 8, !tbaa !142
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.jo = atomicrmw volatile add ptr %i.jb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i = phi i32 [ %i.je, %bb.bb ], [ %i.jo, %bb.bc ]
  %i.jp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jp, label %bb.bd, label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit, !prof !116

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #18
  br label %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit

_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit:  ; preds = %_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev.exit60, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %.not.i.i.i.i63 = icmp eq ptr %.sroa.086.1105, null
  br i1 %.not.i.i.i.i63, label %_ZN7xgboost7RegTree4FVecD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit
  %i.jq = ptrtoint ptr %.sroa.22.1114 to i64
  %i.jr = ptrtoint ptr %.sroa.086.1105 to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.086.1105, i64 noundef %i.js) #32
  br label %_ZN7xgboost7RegTree4FVecD2Ev.exit

_ZN7xgboost7RegTree4FVecD2Ev.exit:                ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit, %bb.be
  ret void

bb.bf:                                            ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bg:                                            ; preds = %bb.q
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.split132:                                        ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit, %.critedge.split
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bh:                                            ; preds = %bb.al
  %i.jw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_10SparsePageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.bi unwind label %.split137 ; 3 uses

bb.bi:                                            ; preds = %bb.bh
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 3 uses
  %i.jy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jx)
          to label %.noexc64 unwind label %.split140

.noexc64:                                         ; preds = %bb.bi
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !370, !noalias !371
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.kb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ka)
          to label %_ZNK7xgboost10SparsePage7GetViewEv.exit unwind label %.split140

_ZNK7xgboost10SparsePage7GetViewEv.exit:          ; preds = %.noexc64
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !374, !noalias !371 ; 2 uses
  %i.kd = icmp ne ptr %i.kc, null
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNK7xgboost10SparsePage7GetViewEv.exit, %_ZN7xgboost7RegTree4FVec4DropEv.exit
  %.0 = phi i64 [ %i.nm, %_ZN7xgboost7RegTree4FVec4DropEv.exit ], [ 0, %_ZNK7xgboost10SparsePage7GetViewEv.exit ] ; 4 uses
  %i.kf = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorImE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jx)
          to label %.noexc66 unwind label %.split

.noexc66:                                         ; preds = %bb.bj
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %.critedge.split, label %bb.bk

bb.bk:                                            ; preds = %.noexc66
  %i.kh = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorImE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jx)
          to label %.noexc67 unwind label %.split

.noexc67:                                         ; preds = %bb.bk
  %i.ki = add i64 %i.kh, -1
  %i.kj = icmp ult i64 %.0, %i.ki
  br i1 %i.kj, label %bb.bl, label %.critedge.split

.critedge.split:                                  ; preds = %.noexc66, %.noexc67
  %i.kk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_10SparsePageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit unwind label %.split132 ; 0 uses

.split137:                                        ; preds = %bb.bh
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.split140:                                        ; preds = %.noexc64, %bb.bi
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.split:                                           ; preds = %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit, %bb.bk, %bb.bj
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bl:                                            ; preds = %.noexc67
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.0 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !43 ; 2 uses
  %i.kr = load i64, ptr %i.ko, align 8, !tbaa !43 ; 3 uses
  %i.ks = icmp eq i64 %i.kq, %i.kr                ; 2 uses
  %i.kt = or i1 %i.kd, %i.ks
  br i1 %i.kt, label %bb.bm, label %.split122.us, !prof !66

.split122.us:                                     ; preds = %bb.bl, %bb.z
  call void @_ZSt9terminatev() #33
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.ku = sub i64 %i.kq, %i.kr                    ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kr ; 5 uses
  br i1 %i.ks, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bm
  %xtraiter = and i64 %i.ku, 3                    ; 3 uses
  %13 = icmp ult i64 %i.ku, 4
  br i1 %13, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.ku, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.lx, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %.011.i ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !376
  %i.kz = load i32, ptr %i.kw, align 4, !tbaa !377
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.la
  store float %i.ky, ptr %i.lb, align 4, !tbaa !361
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %.011.i ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  %i.lf = load float, ptr %i.le, align 4, !tbaa !376
  %i.lg = load i32, ptr %i.ld, align 4, !tbaa !377
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.lh
  store float %i.lf, ptr %i.li, align 4, !tbaa !361
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %.011.i ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 20
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !376
  %i.ln = load i32, ptr %i.lk, align 4, !tbaa !377
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.lo
  store float %i.lm, ptr %i.lp, align 4, !tbaa !361
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %.011.i ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 28
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !376
  %i.lu = load i32, ptr %i.lr, align 4, !tbaa !377
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.lv
  store float %i.lt, ptr %i.lw, align 4, !tbaa !361
  %i.lx = add nuw i64 %.011.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !349

_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.lx, %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011.i.epil = phi i64 [ %i.me, %.lr.ph.i.epil ], [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %.011.i.epil ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !376
  %i.mb = load i32, ptr %i.ly, align 4, !tbaa !377
  %i.mc = zext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.mc
  store float %i.ma, ptr %i.md, align 4, !tbaa !361
  %i.me = add nuw i64 %.011.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit, label %.lr.ph.i.epil, !llvm.loop !356

_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit: ; preds = %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %.noexc77 unwind label %.split

.split124.us:                                     ; preds = %bb.ac
  call void @_ZSt9terminatev() #33
  unreachable

.split126.us:                                     ; preds = %bb.ad
  call void @_ZSt9terminatev() #33
  unreachable

.split128.us:                                     ; preds = %.split.i.i.us.us, %bb.ae
  call void @_ZSt9terminatev() #33
  unreachable

.split130.us:                                     ; preds = %bb.ag
  call void @_ZSt9terminatev() #33
  unreachable

.noexc77:                                         ; preds = %_ZN7xgboost7RegTree4FVec4FillERKNS_6common4SpanIKNS_5EntryELm18446744073709551615EEE.exit
  %i.mf = load ptr, ptr %i.bp, align 8, !tbaa !386 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !95 ; 2 uses
  %i.mi = icmp eq i32 %i.mh, -1
  br i1 %i.mi, label %_ZNK7xgboost4tree10TreePruner12LeafPositionILb0EEEiRKNS_7RegTreeERKNS3_4FVecE.exit, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.noexc77, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i
  %i.mj = phi i32 [ %i.nc, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ], [ %i.mh, %.noexc77 ]
  %i.mk = phi ptr [ %i.na, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ], [ %i.mf, %.noexc77 ] ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !96 ; 2 uses
  %i.mn = and i32 %i.mm, 2147483647
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.086.1105, i64 %i.mo
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !361 ; 2 uses
  %i.mr = fcmp uno float %i.mq, 0.000000e+00
  br i1 %i.mr, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph.i72
  %i.ms = icmp slt i32 %i.mm, 0
  %.in.v.i.i.i75 = select i1 %i.ms, i64 4, i64 8
  %.in.i.i.i76 = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.in.v.i.i.i75
  %i.mt = load i32, ptr %.in.i.i.i76, align 4, !tbaa !142
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.bo:                                            ; preds = %.lr.ph.i72
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !33
  %i.mw = fcmp uge float %i.mq, %i.mv
  %i.mx = zext i1 %i.mw to i32
  %i.my = add nuw nsw i32 %i.mj, %i.mx
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i73 = phi i32 [ %i.mt, %bb.bn ], [ %i.my, %bb.bo ] ; 2 uses
  %i.mz = sext i32 %.0.i.i73 to i64
  %i.na = getelementptr inbounds [20 x i8], ptr %i.mf, i64 %i.mz ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !95 ; 2 uses
  %i.nd = icmp eq i32 %i.nc, -1
  br i1 %i.nd, label %_ZNK7xgboost4tree10TreePruner12LeafPositionILb0EEEiRKNS_7RegTreeERKNS3_4FVecE.exit, label %.lr.ph.i72, !llvm.loop !357

_ZNK7xgboost4tree10TreePruner12LeafPositionILb0EEEiRKNS_7RegTreeERKNS3_4FVecE.exit: ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, %.noexc77
  %.0.lcssa.i74 = phi i32 [ 0, %.noexc77 ], [ %.0.i.i73, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ne = load i64, ptr %i.ke, align 8, !tbaa !397
  %i.nf = load ptr, ptr %i.p, align 8, !tbaa !155
  %i.ng = getelementptr [4 x i8], ptr %i.nf, i64 %i.ne
  %i.nh = getelementptr [4 x i8], ptr %i.ng, i64 %.0
  store i32 %.0.lcssa.i74, ptr %i.nh, align 4, !tbaa !142
  br i1 %.not6.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK7xgboost4tree10TreePruner12LeafPositionILb0EEEiRKNS_7RegTreeERKNS3_4FVecE.exit
  br i1 %min.iters.check173, label %.lr.ph.i.i.i.i.i.i.preheader195, label %vector.body176

vector.body176:                                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %vector.body176
  %index177 = phi i64 [ %index.next179, %vector.body176 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ni = shl i64 %index177, 2
  %next.gep178 = getelementptr i8, ptr %.sroa.086.1105, i64 %i.ni ; 2 uses
  %i.nj = getelementptr i8, ptr %next.gep178, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep178, align 4, !tbaa !361
  store <4 x float> splat (float +qnan), ptr %i.nj, align 4, !tbaa !361
  %index.next179 = add nuw i64 %index177, 8       ; 2 uses
  %i.nk = icmp eq i64 %index.next179, %n.vec175
  br i1 %i.nk, label %middle.block180, label %vector.body176, !llvm.loop !358

middle.block180:                                  ; preds = %vector.body176
  br i1 %cmp.n181, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader195

.lr.ph.i.i.i.i.i.i.preheader195:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block180
  %.07.i.i.i.i.i.i.ph = phi ptr [ %.sroa.086.1105, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block180 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader195, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.nl, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader195 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !361
  %i.nl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i78 = icmp eq ptr %i.nl, %.sroa.22.1114
  br i1 %.not.i.i.i.i.i.i78, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !359

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block180, %_ZNK7xgboost4tree10TreePruner12LeafPositionILb0EEEiRKNS_7RegTreeERKNS3_4FVecE.exit
  %i.nm = add i64 %.0, 1
  br label %bb.bj, !llvm.loop !354

bb.bp:                                            ; preds = %.split, %.split.us.split.us, %.split140, %.split140.us, %.split137, %.split137.us, %.split132, %.split132.us
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hp, %.split140.us ], [ %i.hn, %.split132.us ], [ %i.ho, %.split137.us ], [ %i.jv, %.split132 ], [ %i.kl, %.split137 ], [ %i.km, %.split140 ], [ %i.kn, %.split ], [ %i.hq, %.split.us.split.us ]
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #18
  br label %.body

.body:                                            ; preds = %bb.ak, %bb.bp
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.bp ], [ %i.hr, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bf, %.body, %bb.bg
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ju, %bb.bg ], [ %i.jt, %bb.bf ], [ %.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %.sroa.086.1105, null
  br i1 %.not.i.i.i.i79, label %_ZN7xgboost7RegTree4FVecD2Ev.exit80, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nn = ptrtoint ptr %.sroa.22.1114 to i64
  %i.no = ptrtoint ptr %.sroa.086.1105 to i64
  %i.np = sub i64 %i.nn, %i.no
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.086.1105, i64 noundef %i.np) #32
  br label %_ZN7xgboost7RegTree4FVecD2Ev.exit80
end_hunk_1
