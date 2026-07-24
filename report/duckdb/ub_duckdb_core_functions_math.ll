inline.NumInlined: 9993
inline.NumDeleted: 1660
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 236
loop-unroll.NumUnrolled: 269
begin_hunk_0_@_ZN6duckdb14ScalarFunction13UnaryFunctionIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load float, ptr %i.h, align 4, !tbaa !164
  %i.n = tail call noundef float @llvm.ceil.f32(float %i.m)
  store float %i.n, ptr %i.f, align 4, !tbaa !164
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !453 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check44 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check44, label %.lr.ph17.i.i.i.preheader71, label %vector.ph45

vector.ph45:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.vec47 = and i64 %i.c, -4                     ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body48 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index49
  %wide.load50 = load <4 x float>, ptr %i.u, align 4, !tbaa !164, !alias.scope !448, !noalias !451
  %i.v = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %wide.load50)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index49
  store <4 x float> %i.v, ptr %i.w, align 4, !tbaa !164, !alias.scope !451, !noalias !448
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.x, label %middle.block52, label %vector.body48, !llvm.loop !454

middle.block52:                                   ; preds = %vector.body48
  %cmp.n53 = icmp eq i64 %i.c, %n.vec47
  br i1 %cmp.n53, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader71

.lr.ph17.i.i.i.preheader71:                       ; preds = %.lr.ph17.i.i.i.preheader, %middle.block52
  %.016.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec47, %middle.block52 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.y, align 8, !tbaa !78, !noalias !453
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = icmp eq ptr %2, %i.a
  br i1 %i.aa, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26, !noalias !453 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !13, !noalias !453
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !453
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !453
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !453
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !453 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26, !noalias !453 ; 8 uses
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !13, !noalias !453
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !453 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !32, !noalias !453
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !34, !noalias !453
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !453
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !453
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !453, !inline_history !457
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !453
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !453
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !453, !inline_history !457
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !453
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3, !noalias !453
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4, !noalias !453
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !453
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !83, !noalias !453
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !83, !noalias !453
  %i.be = add i64 %i.c, 63
  %i.bf = lshr i64 %i.be, 6                       ; 2 uses
  %.not18.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !453 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bg, null
  br label %bb.p

bb.p:                                             ; preds = %.loopexit5.i.i.i, %.lr.ph15.i.i.i
  %.05414.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %.4.i.i.i, %.loopexit5.i.i.i ] ; 18 uses
  %.05513.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %i.da, %.loopexit5.i.i.i ] ; 2 uses
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %bb.p
  %i.bh = add i64 %.05414.i.i.i, 64
  %i.bi = tail call noundef i64 @llvm.umin.i64(i64 %i.bh, i64 %i.c)
  br label %.preheader6.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05513.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79, !noalias !453 ; 4 uses
  %i.bl = add i64 %.05414.i.i.i, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.c) ; 8 uses
  switch i64 %i.bk, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.bn = phi i64 [ %i.bi, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 5 uses
  %i.bo = icmp ult i64 %.05414.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.bp = sub nuw i64 %i.bn, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bp, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bp, -4                      ; 3 uses
  %i.bq = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.br
  %wide.load = load <4 x float>, ptr %i.bs, align 4, !tbaa !164, !alias.scope !448, !noalias !451
  %i.bt = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %wide.load)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.br
  store <4 x float> %i.bt, ptr %i.bu, align 4, !tbaa !164, !alias.scope !451, !noalias !448
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !458

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader72

.lr.ph.i.i.i.preheader72:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bw = icmp ult i64 %.05414.i.i.i, %i.bm
  br i1 %i.bw, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.bx = sub nuw i64 %i.bm, %.05414.i.i.i
  %.neg = add i64 %.05414.i.i.i, 1
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.by = and i64 %i.bk, 1
  %.not.i.i.i.prol = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05414.i.i.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !164, !alias.scope !448, !noalias !451
  %i.cb = tail call noundef float @llvm.ceil.f32(float %i.ca)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.05414.i.i.i
  store float %i.cb, ptr %i.cc, align 4, !tbaa !164, !alias.scope !451, !noalias !448
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.q, %.lr.ph11.i.i.i.prol
  %i.cd = add nuw i64 %.05414.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.05414.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.cd, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ce = icmp eq i64 %i.bm, %.neg
  br i1 %i.ce, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader72, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader72 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.19.i.i.i
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !164, !alias.scope !448, !noalias !451
  %i.ch = tail call noundef float @llvm.ceil.f32(float %i.cg)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.19.i.i.i
  store float %i.ch, ptr %i.ci, align 4, !tbaa !164, !alias.scope !451, !noalias !448
  %i.cj = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cj, %i.bn
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !459

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t
  %.210.i.i.i = phi i64 [ %i.cz, %bb.t ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.bk
  %.not.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.210.i.i.i
  %i.co = load float, ptr %i.cn, align 4, !tbaa !164, !alias.scope !448, !noalias !451
  %i.cp = tail call noundef float @llvm.ceil.f32(float %i.co)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.210.i.i.i
  store float %i.cp, ptr %i.cq, align 4, !tbaa !164, !alias.scope !451, !noalias !448
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.r, %.lr.ph11.i.i.i
  %i.cr = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.cs = sub nuw i64 %i.cr, %.05414.i.i.i
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.bk
  %.not.i.i.i.1 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cr
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !164, !alias.scope !448, !noalias !451
  %i.cx = tail call noundef float @llvm.ceil.f32(float %i.cw)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cr
  store float %i.cx, ptr %i.cy, align 4, !tbaa !164, !alias.scope !451, !noalias !448
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph11.i.i.i.1
  %i.cz = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond23.not.i.i.i.1 = icmp eq i64 %i.cz, %i.bm
  br i1 %exitcond23.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !460

.loopexit5.i.i.i:                                 ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t, %.lr.ph.i.i.i, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.bn, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.bn, %.lr.ph.i.i.i ], [ %i.bm, %bb.t ], [ %i.bm, %.lr.ph11.i.i.i.prol.loopexit ]
  %i.da = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i64 %i.da, %i.bf
  br i1 %exitcond24.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit, label %bb.p, !llvm.loop !461

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader71, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.df, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader71 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.016.i.i.i
  %i.dc = load float, ptr %i.db, align 4, !tbaa !164, !alias.scope !448, !noalias !451
  %i.dd = tail call noundef float @llvm.ceil.f32(float %i.dc)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.016.i.i.i
  store float %i.dd, ptr %i.de, align 4, !tbaa !164, !alias.scope !451, !noalias !448
  %i.df = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.df, %i.c
  br i1 %exitcond25.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !462

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.v unwind label %bb.au

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.x unwind label %bb.av

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !77 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !131 ; 9 uses
  %i.dk = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !470
  %.not.i.i60.i.i = icmp eq ptr %i.dn, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.z
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112CeilOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !153, !alias.scope !468, !noalias !471 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.do, null
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ad
  %.03.us.i.i.i = phi i64 [ %i.ei, %bb.ad ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.dq = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.dr = and i64 %.03.us.i.i.i, 63
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !470
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dq
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !79, !noalias !470
  %i.dv = shl nuw i64 1, %i.dr                    ; 2 uses
  %i.dw = and i64 %i.du, %i.dv
  %.not.us.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.us.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.03.us.i.i.i
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !164, !alias.scope !463, !noalias !472
  %i.dz = call noundef float @llvm.ceil.f32(float %i.dy)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.03.us.i.i.i
  store float %i.dz, ptr %i.ea, align 4, !tbaa !164, !alias.scope !466, !noalias !473
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.eb = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !470 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i30.us.i.i.i, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i64, ptr %i.dp, align 8, !tbaa !83, !noalias !470
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 noundef %i.ec)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ac
  %.pre.i.us.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !470
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.ab
  %i.ed = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.eb, %bb.ab ]
  %i.ee = xor i64 %i.dv, -1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dq ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb14ScalarFunction13UnaryFunctionIddNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load double, ptr %i.h, align 8, !tbaa !80
  %i.n = tail call noundef double @llvm.ceil.f64(double %i.m)
  store double %i.n, ptr %i.f, align 8, !tbaa !80
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !487 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  switch i64 %i.c, label %vector.ph45 [
    i64 0, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit
    i64 1, label %.lr.ph17.i.i.i.preheader
  ]

vector.ph45:                                      ; preds = %.preheader.i.i.i
  %n.vec47 = and i64 %i.c, -2                     ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body48 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index49
  %wide.load50 = load <2 x double>, ptr %i.u, align 8, !tbaa !80, !alias.scope !482, !noalias !485
  %i.v = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %wide.load50)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index49
  store <2 x double> %i.v, ptr %i.w, align 8, !tbaa !80, !alias.scope !485, !noalias !482
  %index.next51 = add nuw i64 %index49, 2         ; 2 uses
  %i.x = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.x, label %middle.block52, label %vector.body48, !llvm.loop !488

middle.block52:                                   ; preds = %vector.body48
  %cmp.n53 = icmp eq i64 %i.c, %n.vec47
  br i1 %cmp.n53, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i, %middle.block52
  %.016.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i ], [ %n.vec47, %middle.block52 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.y, align 8, !tbaa !78, !noalias !487
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = icmp eq ptr %2, %i.a
  br i1 %i.aa, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26, !noalias !487 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !13, !noalias !487
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !487
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !487
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !487
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !487 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26, !noalias !487 ; 8 uses
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !13, !noalias !487
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !487 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !32, !noalias !487
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !34, !noalias !487
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !487
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !487
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !487, !inline_history !489
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !487
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !487
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !487, !inline_history !489
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !487
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3, !noalias !487
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4, !noalias !487
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !487
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !83, !noalias !487
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !83, !noalias !487
  %i.be = add i64 %i.c, 63
  %i.bf = lshr i64 %i.be, 6                       ; 2 uses
  %.not18.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !487 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bg, null
  br label %bb.p

bb.p:                                             ; preds = %.loopexit5.i.i.i, %.lr.ph15.i.i.i
  %.05414.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %.4.i.i.i, %.loopexit5.i.i.i ] ; 18 uses
  %.05513.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %i.da, %.loopexit5.i.i.i ] ; 2 uses
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %bb.p
  %i.bh = add i64 %.05414.i.i.i, 64
  %i.bi = tail call noundef i64 @llvm.umin.i64(i64 %i.bh, i64 %i.c)
  br label %.preheader6.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05513.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79, !noalias !487 ; 4 uses
  %i.bl = add i64 %.05414.i.i.i, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.c) ; 8 uses
  switch i64 %i.bk, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.bn = phi i64 [ %i.bi, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 5 uses
  %i.bo = icmp ult i64 %.05414.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.bp = sub nuw i64 %i.bn, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bp, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bp, -2                      ; 3 uses
  %i.bq = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.br
  %wide.load = load <2 x double>, ptr %i.bs, align 8, !tbaa !80, !alias.scope !482, !noalias !485
  %i.bt = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %wide.load)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.br
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !80, !alias.scope !485, !noalias !482
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !490

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader71

.lr.ph.i.i.i.preheader71:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bw = icmp ult i64 %.05414.i.i.i, %i.bm
  br i1 %i.bw, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.bx = sub nuw i64 %i.bm, %.05414.i.i.i
  %.neg = add i64 %.05414.i.i.i, 1
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.by = and i64 %i.bk, 1
  %.not.i.i.i.prol = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05414.i.i.i
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !80, !alias.scope !482, !noalias !485
  %i.cb = tail call noundef double @llvm.ceil.f64(double %i.ca)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.05414.i.i.i
  store double %i.cb, ptr %i.cc, align 8, !tbaa !80, !alias.scope !485, !noalias !482
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.q, %.lr.ph11.i.i.i.prol
  %i.cd = add nuw i64 %.05414.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.05414.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.cd, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ce = icmp eq i64 %i.bm, %.neg
  br i1 %i.ce, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader71, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.i.i.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !80, !alias.scope !482, !noalias !485
  %i.ch = tail call noundef double @llvm.ceil.f64(double %i.cg)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.i.i.i
  store double %i.ch, ptr %i.ci, align 8, !tbaa !80, !alias.scope !485, !noalias !482
  %i.cj = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cj, %i.bn
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !491

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t
  %.210.i.i.i = phi i64 [ %i.cz, %bb.t ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.bk
  %.not.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.210.i.i.i
  %i.co = load double, ptr %i.cn, align 8, !tbaa !80, !alias.scope !482, !noalias !485
  %i.cp = tail call noundef double @llvm.ceil.f64(double %i.co)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.210.i.i.i
  store double %i.cp, ptr %i.cq, align 8, !tbaa !80, !alias.scope !485, !noalias !482
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.r, %.lr.ph11.i.i.i
  %i.cr = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.cs = sub nuw i64 %i.cr, %.05414.i.i.i
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.bk
  %.not.i.i.i.1 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cr
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !80, !alias.scope !482, !noalias !485
  %i.cx = tail call noundef double @llvm.ceil.f64(double %i.cw)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cr
  store double %i.cx, ptr %i.cy, align 8, !tbaa !80, !alias.scope !485, !noalias !482
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph11.i.i.i.1
  %i.cz = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond23.not.i.i.i.1 = icmp eq i64 %i.cz, %i.bm
  br i1 %exitcond23.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !492

.loopexit5.i.i.i:                                 ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t, %.lr.ph.i.i.i, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.bn, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.bn, %.lr.ph.i.i.i ], [ %i.bm, %bb.t ], [ %i.bm, %.lr.ph11.i.i.i.prol.loopexit ]
  %i.da = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i64 %i.da, %i.bf
  br i1 %exitcond24.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit, label %bb.p, !llvm.loop !493

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.df, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.016.i.i.i
  %i.dc = load double, ptr %i.db, align 8, !tbaa !80, !alias.scope !482, !noalias !485
  %i.dd = tail call noundef double @llvm.ceil.f64(double %i.dc)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.016.i.i.i
  store double %i.dd, ptr %i.de, align 8, !tbaa !80, !alias.scope !485, !noalias !482
  %i.df = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.df, %i.c
  br i1 %exitcond25.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !494

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.v unwind label %bb.au

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.x unwind label %bb.av

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !77 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !131 ; 9 uses
  %i.dk = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !502
  %.not.i.i60.i.i = icmp eq ptr %i.dn, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.z
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112CeilOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !153, !alias.scope !500, !noalias !503 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.do, null
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ad
  %.03.us.i.i.i = phi i64 [ %i.ei, %bb.ad ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.dq = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.dr = and i64 %.03.us.i.i.i, 63
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !502
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dq
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !79, !noalias !502
  %i.dv = shl nuw i64 1, %i.dr                    ; 2 uses
  %i.dw = and i64 %i.du, %i.dv
  %.not.us.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.us.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.03.us.i.i.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !80, !alias.scope !495, !noalias !504
  %i.dz = call noundef double @llvm.ceil.f64(double %i.dy)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.03.us.i.i.i
  store double %i.dz, ptr %i.ea, align 8, !tbaa !80, !alias.scope !498, !noalias !505
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.eb = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !502 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i30.us.i.i.i, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i64, ptr %i.dp, align 8, !tbaa !83, !noalias !502
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 noundef %i.ec)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ac
  %.pre.i.us.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !502
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.ab
  %i.ed = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.eb, %bb.ab ]
  %i.ee = xor i64 %i.dv, -1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dq ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb14ScalarFunction13UnaryFunctionIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load float, ptr %i.h, align 4, !tbaa !164
  %i.n = tail call noundef float @llvm.floor.f32(float %i.m)
  store float %i.n, ptr %i.f, align 4, !tbaa !164
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !518 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check44 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check44, label %.lr.ph17.i.i.i.preheader71, label %vector.ph45

vector.ph45:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.vec47 = and i64 %i.c, -4                     ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body48 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index49
  %wide.load50 = load <4 x float>, ptr %i.u, align 4, !tbaa !164, !alias.scope !513, !noalias !516
  %i.v = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %wide.load50)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index49
  store <4 x float> %i.v, ptr %i.w, align 4, !tbaa !164, !alias.scope !516, !noalias !513
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.x, label %middle.block52, label %vector.body48, !llvm.loop !519

middle.block52:                                   ; preds = %vector.body48
  %cmp.n53 = icmp eq i64 %i.c, %n.vec47
  br i1 %cmp.n53, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader71

.lr.ph17.i.i.i.preheader71:                       ; preds = %.lr.ph17.i.i.i.preheader, %middle.block52
  %.016.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec47, %middle.block52 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.y, align 8, !tbaa !78, !noalias !518
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = icmp eq ptr %2, %i.a
  br i1 %i.aa, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26, !noalias !518 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !13, !noalias !518
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !518
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !518
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !518
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !518 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26, !noalias !518 ; 8 uses
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !13, !noalias !518
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !518 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !32, !noalias !518
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !34, !noalias !518
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !518
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !518
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !518, !inline_history !520
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !518
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !518
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !518, !inline_history !520
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !518
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3, !noalias !518
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4, !noalias !518
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !518
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !83, !noalias !518
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !83, !noalias !518
  %i.be = add i64 %i.c, 63
  %i.bf = lshr i64 %i.be, 6                       ; 2 uses
  %.not18.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !518 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bg, null
  br label %bb.p

bb.p:                                             ; preds = %.loopexit5.i.i.i, %.lr.ph15.i.i.i
  %.05414.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %.4.i.i.i, %.loopexit5.i.i.i ] ; 18 uses
  %.05513.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %i.da, %.loopexit5.i.i.i ] ; 2 uses
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %bb.p
  %i.bh = add i64 %.05414.i.i.i, 64
  %i.bi = tail call noundef i64 @llvm.umin.i64(i64 %i.bh, i64 %i.c)
  br label %.preheader6.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05513.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79, !noalias !518 ; 4 uses
  %i.bl = add i64 %.05414.i.i.i, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.c) ; 8 uses
  switch i64 %i.bk, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.bn = phi i64 [ %i.bi, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 5 uses
  %i.bo = icmp ult i64 %.05414.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.bp = sub nuw i64 %i.bn, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bp, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bp, -4                      ; 3 uses
  %i.bq = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.br
  %wide.load = load <4 x float>, ptr %i.bs, align 4, !tbaa !164, !alias.scope !513, !noalias !516
  %i.bt = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %wide.load)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.br
  store <4 x float> %i.bt, ptr %i.bu, align 4, !tbaa !164, !alias.scope !516, !noalias !513
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !521

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader72

.lr.ph.i.i.i.preheader72:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bw = icmp ult i64 %.05414.i.i.i, %i.bm
  br i1 %i.bw, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.bx = sub nuw i64 %i.bm, %.05414.i.i.i
  %.neg = add i64 %.05414.i.i.i, 1
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.by = and i64 %i.bk, 1
  %.not.i.i.i.prol = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05414.i.i.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !164, !alias.scope !513, !noalias !516
  %i.cb = tail call noundef float @llvm.floor.f32(float %i.ca)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.05414.i.i.i
  store float %i.cb, ptr %i.cc, align 4, !tbaa !164, !alias.scope !516, !noalias !513
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.q, %.lr.ph11.i.i.i.prol
  %i.cd = add nuw i64 %.05414.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.05414.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.cd, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ce = icmp eq i64 %i.bm, %.neg
  br i1 %i.ce, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader72, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader72 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.19.i.i.i
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !164, !alias.scope !513, !noalias !516
  %i.ch = tail call noundef float @llvm.floor.f32(float %i.cg)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.19.i.i.i
  store float %i.ch, ptr %i.ci, align 4, !tbaa !164, !alias.scope !516, !noalias !513
  %i.cj = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cj, %i.bn
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !522

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t
  %.210.i.i.i = phi i64 [ %i.cz, %bb.t ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.bk
  %.not.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.210.i.i.i
  %i.co = load float, ptr %i.cn, align 4, !tbaa !164, !alias.scope !513, !noalias !516
  %i.cp = tail call noundef float @llvm.floor.f32(float %i.co)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.210.i.i.i
  store float %i.cp, ptr %i.cq, align 4, !tbaa !164, !alias.scope !516, !noalias !513
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.r, %.lr.ph11.i.i.i
  %i.cr = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.cs = sub nuw i64 %i.cr, %.05414.i.i.i
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.bk
  %.not.i.i.i.1 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cr
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !164, !alias.scope !513, !noalias !516
  %i.cx = tail call noundef float @llvm.floor.f32(float %i.cw)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cr
  store float %i.cx, ptr %i.cy, align 4, !tbaa !164, !alias.scope !516, !noalias !513
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph11.i.i.i.1
  %i.cz = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond23.not.i.i.i.1 = icmp eq i64 %i.cz, %i.bm
  br i1 %exitcond23.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !523

.loopexit5.i.i.i:                                 ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t, %.lr.ph.i.i.i, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.bn, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.bn, %.lr.ph.i.i.i ], [ %i.bm, %bb.t ], [ %i.bm, %.lr.ph11.i.i.i.prol.loopexit ]
  %i.da = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i64 %i.da, %i.bf
  br i1 %exitcond24.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit, label %bb.p, !llvm.loop !524

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader71, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.df, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader71 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.016.i.i.i
  %i.dc = load float, ptr %i.db, align 4, !tbaa !164, !alias.scope !513, !noalias !516
  %i.dd = tail call noundef float @llvm.floor.f32(float %i.dc)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.016.i.i.i
  store float %i.dd, ptr %i.de, align 4, !tbaa !164, !alias.scope !516, !noalias !513
  %i.df = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.df, %i.c
  br i1 %exitcond25.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !525

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.v unwind label %bb.au

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.x unwind label %bb.av

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !77 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !131 ; 9 uses
  %i.dk = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !533
  %.not.i.i60.i.i = icmp eq ptr %i.dn, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.z
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113FloorOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !153, !alias.scope !531, !noalias !534 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.do, null
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ad
  %.03.us.i.i.i = phi i64 [ %i.ei, %bb.ad ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.dq = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.dr = and i64 %.03.us.i.i.i, 63
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !533
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dq
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !79, !noalias !533
  %i.dv = shl nuw i64 1, %i.dr                    ; 2 uses
  %i.dw = and i64 %i.du, %i.dv
  %.not.us.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.us.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.03.us.i.i.i
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !164, !alias.scope !526, !noalias !535
  %i.dz = call noundef float @llvm.floor.f32(float %i.dy)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.03.us.i.i.i
  store float %i.dz, ptr %i.ea, align 4, !tbaa !164, !alias.scope !529, !noalias !536
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.eb = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !533 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i30.us.i.i.i, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i64, ptr %i.dp, align 8, !tbaa !83, !noalias !533
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 noundef %i.ec)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ac
  %.pre.i.us.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !533
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.ab
  %i.ed = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.eb, %bb.ab ]
  %i.ee = xor i64 %i.dv, -1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dq ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb14ScalarFunction13UnaryFunctionIddNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load double, ptr %i.h, align 8, !tbaa !80
  %i.n = tail call noundef double @llvm.floor.f64(double %i.m)
  store double %i.n, ptr %i.f, align 8, !tbaa !80
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !549 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  switch i64 %i.c, label %vector.ph45 [
    i64 0, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit
    i64 1, label %.lr.ph17.i.i.i.preheader
  ]

vector.ph45:                                      ; preds = %.preheader.i.i.i
  %n.vec47 = and i64 %i.c, -2                     ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body48 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index49
  %wide.load50 = load <2 x double>, ptr %i.u, align 8, !tbaa !80, !alias.scope !544, !noalias !547
  %i.v = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %wide.load50)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index49
  store <2 x double> %i.v, ptr %i.w, align 8, !tbaa !80, !alias.scope !547, !noalias !544
  %index.next51 = add nuw i64 %index49, 2         ; 2 uses
  %i.x = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.x, label %middle.block52, label %vector.body48, !llvm.loop !550

middle.block52:                                   ; preds = %vector.body48
  %cmp.n53 = icmp eq i64 %i.c, %n.vec47
  br i1 %cmp.n53, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i, %middle.block52
  %.016.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i ], [ %n.vec47, %middle.block52 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.y, align 8, !tbaa !78, !noalias !549
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = icmp eq ptr %2, %i.a
  br i1 %i.aa, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26, !noalias !549 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !13, !noalias !549
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !549
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !549
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !549
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !549 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26, !noalias !549 ; 8 uses
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !13, !noalias !549
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !549 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !32, !noalias !549
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !34, !noalias !549
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !549
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !549
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !549, !inline_history !551
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !549
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !549
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !549, !inline_history !551
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !549
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3, !noalias !549
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4, !noalias !549
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !549
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !83, !noalias !549
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !83, !noalias !549
  %i.be = add i64 %i.c, 63
  %i.bf = lshr i64 %i.be, 6                       ; 2 uses
  %.not18.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !549 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bg, null
  br label %bb.p

bb.p:                                             ; preds = %.loopexit5.i.i.i, %.lr.ph15.i.i.i
  %.05414.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %.4.i.i.i, %.loopexit5.i.i.i ] ; 18 uses
  %.05513.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %i.da, %.loopexit5.i.i.i ] ; 2 uses
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %bb.p
  %i.bh = add i64 %.05414.i.i.i, 64
  %i.bi = tail call noundef i64 @llvm.umin.i64(i64 %i.bh, i64 %i.c)
  br label %.preheader6.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05513.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79, !noalias !549 ; 4 uses
  %i.bl = add i64 %.05414.i.i.i, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.c) ; 8 uses
  switch i64 %i.bk, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.bn = phi i64 [ %i.bi, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 5 uses
  %i.bo = icmp ult i64 %.05414.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.bp = sub nuw i64 %i.bn, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bp, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bp, -2                      ; 3 uses
  %i.bq = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.br
  %wide.load = load <2 x double>, ptr %i.bs, align 8, !tbaa !80, !alias.scope !544, !noalias !547
  %i.bt = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %wide.load)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.br
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !80, !alias.scope !547, !noalias !544
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !552

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader71

.lr.ph.i.i.i.preheader71:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bw = icmp ult i64 %.05414.i.i.i, %i.bm
  br i1 %i.bw, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.bx = sub nuw i64 %i.bm, %.05414.i.i.i
  %.neg = add i64 %.05414.i.i.i, 1
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.by = and i64 %i.bk, 1
  %.not.i.i.i.prol = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05414.i.i.i
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !80, !alias.scope !544, !noalias !547
  %i.cb = tail call noundef double @llvm.floor.f64(double %i.ca)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.05414.i.i.i
  store double %i.cb, ptr %i.cc, align 8, !tbaa !80, !alias.scope !547, !noalias !544
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.q, %.lr.ph11.i.i.i.prol
  %i.cd = add nuw i64 %.05414.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.05414.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.cd, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ce = icmp eq i64 %i.bm, %.neg
  br i1 %i.ce, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader71, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.i.i.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !80, !alias.scope !544, !noalias !547
  %i.ch = tail call noundef double @llvm.floor.f64(double %i.cg)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.i.i.i
  store double %i.ch, ptr %i.ci, align 8, !tbaa !80, !alias.scope !547, !noalias !544
  %i.cj = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cj, %i.bn
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !553

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t
  %.210.i.i.i = phi i64 [ %i.cz, %bb.t ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.bk
  %.not.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.210.i.i.i
  %i.co = load double, ptr %i.cn, align 8, !tbaa !80, !alias.scope !544, !noalias !547
  %i.cp = tail call noundef double @llvm.floor.f64(double %i.co)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.210.i.i.i
  store double %i.cp, ptr %i.cq, align 8, !tbaa !80, !alias.scope !547, !noalias !544
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.r, %.lr.ph11.i.i.i
  %i.cr = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.cs = sub nuw i64 %i.cr, %.05414.i.i.i
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.bk
  %.not.i.i.i.1 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cr
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !80, !alias.scope !544, !noalias !547
  %i.cx = tail call noundef double @llvm.floor.f64(double %i.cw)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cr
  store double %i.cx, ptr %i.cy, align 8, !tbaa !80, !alias.scope !547, !noalias !544
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph11.i.i.i.1
  %i.cz = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond23.not.i.i.i.1 = icmp eq i64 %i.cz, %i.bm
  br i1 %exitcond23.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !554

.loopexit5.i.i.i:                                 ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t, %.lr.ph.i.i.i, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.bn, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.bn, %.lr.ph.i.i.i ], [ %i.bm, %bb.t ], [ %i.bm, %.lr.ph11.i.i.i.prol.loopexit ]
  %i.da = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i64 %i.da, %i.bf
  br i1 %exitcond24.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit, label %bb.p, !llvm.loop !555

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.df, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.016.i.i.i
  %i.dc = load double, ptr %i.db, align 8, !tbaa !80, !alias.scope !544, !noalias !547
  %i.dd = tail call noundef double @llvm.floor.f64(double %i.dc)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.016.i.i.i
  store double %i.dd, ptr %i.de, align 8, !tbaa !80, !alias.scope !547, !noalias !544
  %i.df = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.df, %i.c
  br i1 %exitcond25.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !556

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.v unwind label %bb.au

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.x unwind label %bb.av

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !77 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !131 ; 9 uses
  %i.dk = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !564
  %.not.i.i60.i.i = icmp eq ptr %i.dn, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.z
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113FloorOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !153, !alias.scope !562, !noalias !565 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.do, null
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ad
  %.03.us.i.i.i = phi i64 [ %i.ei, %bb.ad ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.dq = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.dr = and i64 %.03.us.i.i.i, 63
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !564
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dq
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !79, !noalias !564
  %i.dv = shl nuw i64 1, %i.dr                    ; 2 uses
  %i.dw = and i64 %i.du, %i.dv
  %.not.us.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.us.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.03.us.i.i.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !80, !alias.scope !557, !noalias !566
  %i.dz = call noundef double @llvm.floor.f64(double %i.dy)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.03.us.i.i.i
  store double %i.dz, ptr %i.ea, align 8, !tbaa !80, !alias.scope !560, !noalias !567
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.eb = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !564 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i30.us.i.i.i, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i64, ptr %i.dp, align 8, !tbaa !83, !noalias !564
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 noundef %i.ec)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ac
  %.pre.i.us.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !564
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.ab
  %i.ed = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.eb, %bb.ab ]
  %i.ee = xor i64 %i.dv, -1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dq ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb14ScalarFunction13UnaryFunctionIffNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load float, ptr %i.h, align 4, !tbaa !164
  %i.n = tail call noundef float @llvm.trunc.f32(float %i.m)
  store float %i.n, ptr %i.f, align 4, !tbaa !164
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !580 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check44 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check44, label %.lr.ph17.i.i.i.preheader71, label %vector.ph45

vector.ph45:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.vec47 = and i64 %i.c, -4                     ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body48 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index49
  %wide.load50 = load <4 x float>, ptr %i.u, align 4, !tbaa !164, !alias.scope !575, !noalias !578
  %i.v = tail call <4 x float> @llvm.trunc.v4f32(<4 x float> %wide.load50)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index49
  store <4 x float> %i.v, ptr %i.w, align 4, !tbaa !164, !alias.scope !578, !noalias !575
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.x, label %middle.block52, label %vector.body48, !llvm.loop !581

middle.block52:                                   ; preds = %vector.body48
  %cmp.n53 = icmp eq i64 %i.c, %n.vec47
  br i1 %cmp.n53, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader71

.lr.ph17.i.i.i.preheader71:                       ; preds = %.lr.ph17.i.i.i.preheader, %middle.block52
  %.016.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec47, %middle.block52 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.y, align 8, !tbaa !78, !noalias !580
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = icmp eq ptr %2, %i.a
  br i1 %i.aa, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26, !noalias !580 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !13, !noalias !580
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !580
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !580
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !580
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !580 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26, !noalias !580 ; 8 uses
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !13, !noalias !580
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !580 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !32, !noalias !580
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !34, !noalias !580
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !580
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !580
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !580, !inline_history !582
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !580
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !580
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !580, !inline_history !582
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !580
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3, !noalias !580
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4, !noalias !580
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !580
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !83, !noalias !580
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !83, !noalias !580
  %i.be = add i64 %i.c, 63
  %i.bf = lshr i64 %i.be, 6                       ; 2 uses
  %.not18.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !580 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bg, null
  br label %bb.p

bb.p:                                             ; preds = %.loopexit5.i.i.i, %.lr.ph15.i.i.i
  %.05414.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %.4.i.i.i, %.loopexit5.i.i.i ] ; 18 uses
  %.05513.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %i.da, %.loopexit5.i.i.i ] ; 2 uses
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %bb.p
  %i.bh = add i64 %.05414.i.i.i, 64
  %i.bi = tail call noundef i64 @llvm.umin.i64(i64 %i.bh, i64 %i.c)
  br label %.preheader6.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05513.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79, !noalias !580 ; 4 uses
  %i.bl = add i64 %.05414.i.i.i, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.c) ; 8 uses
  switch i64 %i.bk, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.bn = phi i64 [ %i.bi, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 5 uses
  %i.bo = icmp ult i64 %.05414.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.bp = sub nuw i64 %i.bn, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bp, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bp, -4                      ; 3 uses
  %i.bq = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.br
  %wide.load = load <4 x float>, ptr %i.bs, align 4, !tbaa !164, !alias.scope !575, !noalias !578
  %i.bt = tail call <4 x float> @llvm.trunc.v4f32(<4 x float> %wide.load)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.br
  store <4 x float> %i.bt, ptr %i.bu, align 4, !tbaa !164, !alias.scope !578, !noalias !575
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !583

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader72

.lr.ph.i.i.i.preheader72:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bw = icmp ult i64 %.05414.i.i.i, %i.bm
  br i1 %i.bw, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.bx = sub nuw i64 %i.bm, %.05414.i.i.i
  %.neg = add i64 %.05414.i.i.i, 1
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.by = and i64 %i.bk, 1
  %.not.i.i.i.prol = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05414.i.i.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !164, !alias.scope !575, !noalias !578
  %i.cb = tail call noundef float @llvm.trunc.f32(float %i.ca)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.05414.i.i.i
  store float %i.cb, ptr %i.cc, align 4, !tbaa !164, !alias.scope !578, !noalias !575
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.q, %.lr.ph11.i.i.i.prol
  %i.cd = add nuw i64 %.05414.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.05414.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.cd, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ce = icmp eq i64 %i.bm, %.neg
  br i1 %i.ce, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader72, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader72 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.19.i.i.i
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !164, !alias.scope !575, !noalias !578
  %i.ch = tail call noundef float @llvm.trunc.f32(float %i.cg)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.19.i.i.i
  store float %i.ch, ptr %i.ci, align 4, !tbaa !164, !alias.scope !578, !noalias !575
  %i.cj = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cj, %i.bn
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !584

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t
  %.210.i.i.i = phi i64 [ %i.cz, %bb.t ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.bk
  %.not.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.210.i.i.i
  %i.co = load float, ptr %i.cn, align 4, !tbaa !164, !alias.scope !575, !noalias !578
  %i.cp = tail call noundef float @llvm.trunc.f32(float %i.co)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.210.i.i.i
  store float %i.cp, ptr %i.cq, align 4, !tbaa !164, !alias.scope !578, !noalias !575
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.r, %.lr.ph11.i.i.i
  %i.cr = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.cs = sub nuw i64 %i.cr, %.05414.i.i.i
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.bk
  %.not.i.i.i.1 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cr
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !164, !alias.scope !575, !noalias !578
  %i.cx = tail call noundef float @llvm.trunc.f32(float %i.cw)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cr
  store float %i.cx, ptr %i.cy, align 4, !tbaa !164, !alias.scope !578, !noalias !575
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph11.i.i.i.1
  %i.cz = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond23.not.i.i.i.1 = icmp eq i64 %i.cz, %i.bm
  br i1 %exitcond23.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !585

.loopexit5.i.i.i:                                 ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t, %.lr.ph.i.i.i, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.bn, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.bn, %.lr.ph.i.i.i ], [ %i.bm, %bb.t ], [ %i.bm, %.lr.ph11.i.i.i.prol.loopexit ]
  %i.da = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i64 %i.da, %i.bf
  br i1 %exitcond24.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit, label %bb.p, !llvm.loop !586

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader71, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.df, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader71 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.016.i.i.i
  %i.dc = load float, ptr %i.db, align 4, !tbaa !164, !alias.scope !575, !noalias !578
  %i.dd = tail call noundef float @llvm.trunc.f32(float %i.dc)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.016.i.i.i
  store float %i.dd, ptr %i.de, align 4, !tbaa !164, !alias.scope !578, !noalias !575
  %i.df = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.df, %i.c
  br i1 %exitcond25.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !587

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.v unwind label %bb.au

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.x unwind label %bb.av

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !77 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !131 ; 9 uses
  %i.dk = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !595
  %.not.i.i60.i.i = icmp eq ptr %i.dn, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.z
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113TruncOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !153, !alias.scope !593, !noalias !596 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.do, null
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ad
  %.03.us.i.i.i = phi i64 [ %i.ei, %bb.ad ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.dq = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.dr = and i64 %.03.us.i.i.i, 63
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !595
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dq
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !79, !noalias !595
  %i.dv = shl nuw i64 1, %i.dr                    ; 2 uses
  %i.dw = and i64 %i.du, %i.dv
  %.not.us.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.us.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.03.us.i.i.i
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !164, !alias.scope !588, !noalias !597
  %i.dz = call noundef float @llvm.trunc.f32(float %i.dy)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.03.us.i.i.i
  store float %i.dz, ptr %i.ea, align 4, !tbaa !164, !alias.scope !591, !noalias !598
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.eb = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !595 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i30.us.i.i.i, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i64, ptr %i.dp, align 8, !tbaa !83, !noalias !595
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 noundef %i.ec)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ac
  %.pre.i.us.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !595
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.ab
  %i.ed = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.eb, %bb.ab ]
  %i.ee = xor i64 %i.dv, -1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dq ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdb14ScalarFunction14BinaryFunctionIfifNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23, !inline_history !606
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23, !inline_history !606
  br label %thread-pre-split.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.p ], [ %i.cf, %bb.q ]
  %i.cg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cg, label %bb.r, label %thread-pre-split.i.i.i, !prof !36

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.n, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !78
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %.val.i.i.i = phi ptr [ %.val.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.be, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !83
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %.not.i.i18.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i18.i.i.i, label %.preheader.i.i.i.i, label %bb.t

.preheader.i.i.i.i:                               ; preds = %bb.s
  %.not18.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not18.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %.lr.ph16.i.i.i.i

.lr.ph16.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !3, !alias.scope !610, !noalias !614 ; 3 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph16.split.us.i.i.i.i, label %.lr.ph16.split.i.i.i.i

.lr.ph16.split.us.i.i.i.i:                        ; preds = %.lr.ph16.i.i.i.i
  %i.cm = sitofp i32 %i.ck to float
  %i.cn = fneg float %i.cm
  %i.co = fpext float %i.cn to double
  %i.cp = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.co) #23, !tbaa !3, !noalias !615 ; 3 uses
  %min.iters.check149 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check149, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph16.split.us.i.i.i.i
  %n.vec152 = and i64 %i.d, -4                    ; 3 uses
  %broadcast.splatinsert153 = insertelement <4 x double> poison, double %i.cp, i64 0
  %broadcast.splat154 = shufflevector <4 x double> %broadcast.splatinsert153, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph150
  %index156 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body155 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index156
  %wide.load157 = load <4 x float>, ptr %i.cq, align 4, !tbaa !164, !alias.scope !607, !noalias !616 ; 2 uses
  %i.cr = fpext <4 x float> %wide.load157 to <4 x double>
  %i.cs = fdiv <4 x double> %i.cr, %broadcast.splat154
  %i.ct = tail call <4 x double> @llvm.trunc.v4f64(<4 x double> %i.cs)
  %i.cu = fmul <4 x double> %broadcast.splat154, %i.ct ; 2 uses
  %i.cv = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.cu)
  %i.cw = fcmp ueq <4 x double> %i.cv, splat (double +inf)
  %i.cx = fptrunc <4 x double> %i.cu to <4 x float>
  %i.cy = select <4 x i1> %i.cw, <4 x float> %wide.load157, <4 x float> %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index156
  store <4 x float> %i.cy, ptr %i.cz, align 4, !tbaa !164, !alias.scope !612, !noalias !617
  %index.next158 = add nuw i64 %index156, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next158, %n.vec152
  br i1 %i.da, label %middle.block159, label %vector.body155, !llvm.loop !618

middle.block159:                                  ; preds = %vector.body155
  %cmp.n160 = icmp eq i64 %i.d, %n.vec152
  br i1 %cmp.n160, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader: ; preds = %.lr.ph16.split.us.i.i.i.i, %middle.block159
  %.05815.us.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.split.us.i.i.i.i ], [ %n.vec152, %middle.block159 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i
  %.05815.us.i.i.i.i = phi i64 [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i ], [ %.05815.us.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.05815.us.i.i.i.i
  %i.dc = load float, ptr %i.db, align 4, !tbaa !164, !alias.scope !607, !noalias !616 ; 2 uses
  %i.dd = fpext float %i.dc to double
  %i.de = fdiv double %i.dd, %i.cp
  %i.df = tail call double @llvm.trunc.f64(double %i.de)
  %i.dg = fmul double %i.cp, %i.df                ; 2 uses
  %i.dh = tail call double @llvm.fabs.f64(double %i.dg)
  %or.cond.i.i70.us.i.i.i.i = fcmp ueq double %i.dh, +inf
  %i.di = fptrunc double %i.dg to float
  %.2.i.i69.us.i.i.i.i = select i1 %or.cond.i.i70.us.i.i.i.i, float %i.dc, float %i.di
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.05815.us.i.i.i.i
  store float %.2.i.i69.us.i.i.i.i, ptr %i.dj, align 4, !tbaa !164, !alias.scope !612, !noalias !617
  %i.dk = add nuw i64 %.05815.us.i.i.i.i, 1       ; 2 uses
  %exitcond29.not.i.i.i.i = icmp eq i64 %i.dk, %i.d
  br i1 %exitcond29.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i, !llvm.loop !619

.lr.ph16.split.i.i.i.i:                           ; preds = %.lr.ph16.i.i.i.i
  %i.dl = uitofp nneg i32 %i.ck to float
  %i.dm = fpext float %i.dl to double
  %i.dn = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.dm) #23, !tbaa !3, !noalias !615 ; 3 uses
  %min.iters.check135 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check135, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph16.split.i.i.i.i
  %n.vec138 = and i64 %i.d, -4                    ; 3 uses
  %broadcast.splatinsert139 = insertelement <4 x double> poison, double %i.dn, i64 0
  %broadcast.splat140 = shufflevector <4 x double> %broadcast.splatinsert139, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph136
  %index142 = phi i64 [ 0, %vector.ph136 ], [ %index.next144, %vector.body141 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index142
  %wide.load143 = load <4 x float>, ptr %i.do, align 4, !tbaa !164, !alias.scope !607, !noalias !616 ; 2 uses
  %i.dp = fpext <4 x float> %wide.load143 to <4 x double>
  %i.dq = fmul <4 x double> %broadcast.splat140, %i.dp
  %i.dr = tail call <4 x double> @llvm.trunc.v4f64(<4 x double> %i.dq)
  %i.ds = fdiv <4 x double> %i.dr, %broadcast.splat140 ; 2 uses
  %i.dt = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.ds)
  %i.du = fcmp ueq <4 x double> %i.dt, splat (double +inf)
  %i.dv = fptrunc <4 x double> %i.ds to <4 x float>
  %i.dw = select <4 x i1> %i.du, <4 x float> %wide.load143, <4 x float> %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index142
  store <4 x float> %i.dw, ptr %i.dx, align 4, !tbaa !164, !alias.scope !612, !noalias !617
  %index.next144 = add nuw i64 %index142, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.dy, label %middle.block145, label %vector.body141, !llvm.loop !620

middle.block145:                                  ; preds = %vector.body141
  %cmp.n146 = icmp eq i64 %i.d, %n.vec138
  br i1 %cmp.n146, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader: ; preds = %.lr.ph16.split.i.i.i.i, %middle.block145
  %.05815.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.split.i.i.i.i ], [ %n.vec138, %middle.block145 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.dz = add i64 %i.d, 63
  %i.ea = lshr i64 %i.dz, 6                       ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not17.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.t, %.loopexit5.i.i.i.i
  %.014.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit5.i.i.i.i ], [ 0, %bb.t ] ; 15 uses
  %.05713.i.i.i.i = phi i64 [ %i.hn, %.loopexit5.i.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.05713.i.i.i.i
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !79, !noalias !615 ; 2 uses
  %i.ed = add i64 %.014.i.i.i.i, 64
  %i.ee = tail call noundef i64 @llvm.umin.i64(i64 %i.ed, i64 %i.d) ; 13 uses
  switch i64 %i.ec, label %.preheader4.i.i.i.i [
    i64 -1, label %.preheader6.i.i.i.i
    i64 0, label %.loopexit5.i.i.i.i
  ]

.preheader6.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.ef = icmp ult i64 %.014.i.i.i.i, %i.ee
  br i1 %i.ef, label %.lr.ph.i.i.i.i, label %.loopexit5.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader6.i.i.i.i
  %i.eg = load i32, ptr %i.av, align 4, !tbaa !3, !alias.scope !610, !noalias !614 ; 3 uses
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.ei = sitofp i32 %i.eg to float
  %i.ej = fneg float %i.ei
  %i.ek = fpext float %i.ej to double
  %i.el = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ek) #23, !tbaa !3, !noalias !615 ; 3 uses
  %i.em = sub i64 %i.ee, %.014.i.i.i.i            ; 3 uses
  %min.iters.check = icmp ult i64 %i.em, 4
  br i1 %min.iters.check, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i.i.i.i
  %n.vec = and i64 %i.em, -4                      ; 3 uses
  %i.en = add i64 %.014.i.i.i.i, %n.vec
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.el, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eo = add nuw i64 %.014.i.i.i.i, %index       ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.eo
  %wide.load = load <4 x float>, ptr %i.ep, align 4, !tbaa !164, !alias.scope !607, !noalias !616 ; 2 uses
  %i.eq = fpext <4 x float> %wide.load to <4 x double>
  %i.er = fdiv <4 x double> %i.eq, %broadcast.splat
  %i.es = tail call <4 x double> @llvm.trunc.v4f64(<4 x double> %i.er)
  %i.et = fmul <4 x double> %broadcast.splat, %i.es ; 2 uses
  %i.eu = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.et)
  %i.ev = fcmp ueq <4 x double> %i.eu, splat (double +inf)
  %i.ew = fptrunc <4 x double> %i.et to <4 x float>
  %i.ex = select <4 x i1> %i.ev, <4 x float> %wide.load, <4 x float> %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.eo
  store <4 x float> %i.ex, ptr %i.ey, align 4, !tbaa !164, !alias.scope !612, !noalias !617
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.em, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i.i, %middle.block
  %.19.us.i.i.i.i.ph = phi i64 [ %.014.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ %i.en, %middle.block ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i
  %.19.us.i.i.i.i = phi i64 [ %i.fj, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %.19.us.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.19.us.i.i.i.i
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !164, !alias.scope !607, !noalias !616 ; 2 uses
  %i.fc = fpext float %i.fb to double
  %i.fd = fdiv double %i.fc, %i.el
  %i.fe = tail call double @llvm.trunc.f64(double %i.fd)
  %i.ff = fmul double %i.el, %i.fe                ; 2 uses
  %i.fg = tail call double @llvm.fabs.f64(double %i.ff)
  %or.cond.i.i.us.i.i.i.i = fcmp ueq double %i.fg, +inf
  %i.fh = fptrunc double %i.ff to float
  %.2.i.i.us.i.i.i.i = select i1 %or.cond.i.i.us.i.i.i.i, float %i.fb, float %i.fh
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.19.us.i.i.i.i
  store float %.2.i.i.us.i.i.i.i, ptr %i.fi, align 4, !tbaa !164, !alias.scope !612, !noalias !617
  %i.fj = add nuw i64 %.19.us.i.i.i.i, 1          ; 2 uses
  %exitcond25.not.i.i.i.i = icmp eq i64 %i.fj, %i.ee
  br i1 %exitcond25.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, !llvm.loop !622

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.fk = uitofp nneg i32 %i.eg to float
  %i.fl = fpext float %i.fk to double
  %i.fm = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.fl) #23, !tbaa !3, !noalias !615 ; 3 uses
  %i.fn = sub i64 %i.ee, %.014.i.i.i.i            ; 3 uses
  %min.iters.check121 = icmp ult i64 %i.fn, 4
  br i1 %min.iters.check121, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph.split.i.i.i.i
  %n.vec124 = and i64 %i.fn, -4                   ; 3 uses
  %i.fo = add i64 %.014.i.i.i.i, %n.vec124
  %broadcast.splatinsert125 = insertelement <4 x double> poison, double %i.fm, i64 0
  %broadcast.splat126 = shufflevector <4 x double> %broadcast.splatinsert125, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph122
  %index128 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body127 ] ; 2 uses
  %i.fp = add nuw i64 %.014.i.i.i.i, %index128    ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.fp
  %wide.load129 = load <4 x float>, ptr %i.fq, align 4, !tbaa !164, !alias.scope !607, !noalias !616 ; 2 uses
  %i.fr = fpext <4 x float> %wide.load129 to <4 x double>
  %i.fs = fmul <4 x double> %broadcast.splat126, %i.fr
  %i.ft = tail call <4 x double> @llvm.trunc.v4f64(<4 x double> %i.fs)
  %i.fu = fdiv <4 x double> %i.ft, %broadcast.splat126 ; 2 uses
  %i.fv = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.fu)
  %i.fw = fcmp ueq <4 x double> %i.fv, splat (double +inf)
  %i.fx = fptrunc <4 x double> %i.fu to <4 x float>
  %i.fy = select <4 x i1> %i.fw, <4 x float> %wide.load129, <4 x float> %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.fp
  store <4 x float> %i.fy, ptr %i.fz, align 4, !tbaa !164, !alias.scope !612, !noalias !617
  %index.next130 = add nuw i64 %index128, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.ga, label %middle.block131, label %vector.body127, !llvm.loop !623

middle.block131:                                  ; preds = %vector.body127
  %cmp.n132 = icmp eq i64 %i.fn, %n.vec124
  br i1 %cmp.n132, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i, %middle.block131
  %.19.i.i.i.i.ph = phi i64 [ %.014.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.fo, %middle.block131 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

.preheader4.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.gb = icmp ult i64 %.014.i.i.i.i, %i.ee
  br i1 %i.gb, label %.lr.ph11.i.i.i.i, label %.loopexit5.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i
  %.19.i.i.i.i = phi i64 [ %i.gl, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.19.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.19.i.i.i.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !164, !alias.scope !607, !noalias !616 ; 2 uses
  %i.ge = fpext float %i.gd to double
  %i.gf = fmul double %i.fm, %i.ge
  %i.gg = tail call double @llvm.trunc.f64(double %i.gf)
  %i.gh = fdiv double %i.gg, %i.fm                ; 2 uses
  %i.gi = tail call double @llvm.fabs.f64(double %i.gh)
  %or.cond24.i.i.i.i.i.i = fcmp ueq double %i.gi, +inf
  %i.gj = fptrunc double %i.gh to float
  %.2.i.i.i.i.i.i = select i1 %or.cond24.i.i.i.i.i.i, float %i.gd, float %i.gj
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.19.i.i.i.i
  store float %.2.i.i.i.i.i.i, ptr %i.gk, align 4, !tbaa !164, !alias.scope !612, !noalias !617
  %i.gl = add nuw i64 %.19.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gl, %i.ee
  br i1 %exitcond.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, !llvm.loop !624

.lr.ph11.i.i.i.i:                                 ; preds = %.preheader4.i.i.i.i, %bb.x
  %.210.i.i.i.i = phi i64 [ %i.hm, %bb.x ], [ %.014.i.i.i.i, %.preheader4.i.i.i.i ] ; 4 uses
  %i.gm = sub nuw i64 %.210.i.i.i.i, %.014.i.i.i.i
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = and i64 %i.gn, %i.ec
  %.not.i.i.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.lr.ph11.i.i.i.i
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.210.i.i.i.i
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !164, !alias.scope !607, !noalias !616 ; 4 uses
  %i.gr = load i32, ptr %i.av, align 4, !tbaa !3, !alias.scope !610, !noalias !614 ; 3 uses
  %i.gs = icmp slt i32 %i.gr, 0
  br i1 %i.gs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gt = sitofp i32 %i.gr to float
  %i.gu = fneg float %i.gt
  %i.gv = fpext float %i.gu to double
  %i.gw = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.gv) #23, !tbaa !3, !noalias !615 ; 2 uses
  %i.gx = fpext float %i.gq to double
  %i.gy = fdiv double %i.gx, %i.gw
  %i.gz = tail call double @llvm.trunc.f64(double %i.gy)
  %i.ha = fmul double %i.gw, %i.gz                ; 2 uses
  %i.hb = tail call double @llvm.fabs.f64(double %i.ha)
  %or.cond.i.i64.i.i.i.i = fcmp ueq double %i.hb, +inf
  br i1 %or.cond.i.i64.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, label %.critedge.i.i61.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.hc = uitofp nneg i32 %i.gr to float
  %i.hd = fpext float %i.hc to double
  %i.he = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.hd) #23, !tbaa !3, !noalias !615 ; 2 uses
  %i.hf = fpext float %i.gq to double
  %i.hg = fmul double %i.he, %i.hf
  %i.hh = tail call double @llvm.trunc.f64(double %i.hg)
  %i.hi = fdiv double %i.hh, %i.he                ; 2 uses
  %i.hj = tail call double @llvm.fabs.f64(double %i.hi)
  %or.cond24.i.i60.i.i.i.i = fcmp ueq double %i.hj, +inf
  br i1 %or.cond24.i.i60.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, label %.critedge.i.i61.i.i.i.i

.critedge.i.i61.i.i.i.i:                          ; preds = %bb.w, %bb.v
  %.021.i.i62.i.i.i.i = phi double [ %i.ha, %bb.v ], [ %i.hi, %bb.w ]
  %i.hk = fptrunc double %.021.i.i62.i.i.i.i to float
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i: ; preds = %.critedge.i.i61.i.i.i.i, %bb.w, %bb.v
  %.2.i.i63.i.i.i.i = phi float [ %i.hk, %.critedge.i.i61.i.i.i.i ], [ %i.gq, %bb.w ], [ %i.gq, %bb.v ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.210.i.i.i.i
  store float %.2.i.i63.i.i.i.i, ptr %i.hl, align 4, !tbaa !164, !alias.scope !612, !noalias !617
  br label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, %.lr.ph11.i.i.i.i
  %i.hm = add nuw i64 %.210.i.i.i.i, 1            ; 2 uses
  %exitcond26.not.i.i.i.i = icmp eq i64 %i.hm, %i.ee
  br i1 %exitcond26.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %.lr.ph11.i.i.i.i, !llvm.loop !625

.loopexit5.i.i.i.i:                               ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, %bb.x, %middle.block131, %middle.block, %.preheader4.i.i.i.i, %.preheader6.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.ee, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.ee, %middle.block131 ], [ %.014.i.i.i.i, %.preheader4.i.i.i.i ], [ %.014.i.i.i.i, %.preheader6.i.i.i.i ], [ %i.ee, %middle.block ], [ %i.ee, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %i.ee, %bb.x ], [ %i.ee, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ]
  %i.hn = add nuw nsw i64 %.05713.i.i.i.i, 1      ; 2 uses
  %exitcond27.not.i.i.i.i = icmp eq i64 %i.hn, %i.ea
  br i1 %exitcond27.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, !llvm.loop !626

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i
  %.05815.i.i.i.i = phi i64 [ %i.hx, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i ], [ %.05815.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.05815.i.i.i.i
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !164, !alias.scope !607, !noalias !616 ; 2 uses
  %i.hq = fpext float %i.hp to double
  %i.hr = fmul double %i.dn, %i.hq
  %i.hs = tail call double @llvm.trunc.f64(double %i.hr)
  %i.ht = fdiv double %i.hs, %i.dn                ; 2 uses
  %i.hu = tail call double @llvm.fabs.f64(double %i.ht)
  %or.cond24.i.i66.i.i.i.i = fcmp ueq double %i.hu, +inf
  %i.hv = fptrunc double %i.ht to float
  %.2.i.i69.i.i.i.i = select i1 %or.cond24.i.i66.i.i.i.i, float %i.hp, float %i.hv
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.05815.i.i.i.i
  store float %.2.i.i69.i.i.i.i, ptr %i.hw, align 4, !tbaa !164, !alias.scope !612, !noalias !617
  %i.hx = add nuw i64 %.05815.i.i.i.i, 1          ; 2 uses
  %exitcond28.not.i.i.i.i = icmp eq i64 %i.hx, %i.d
  br i1 %exitcond28.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i, !llvm.loop !627

bb.y:                                             ; preds = %bb.f
  %i.hy = icmp eq i8 %i.f, 0
  %or.cond5.i.i = and i1 %i.g, %i.hy
  br i1 %or.cond5.i.i, label %bb.z, label %bb.ax

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !77 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !77 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i43.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i: ; preds = %bb.z
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !79
  %i.ig = trunc i64 %i.if to i1
  br i1 %i.ig, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i, %bb.z
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !77 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !78 ; 2 uses
  store ptr %i.il, ptr %i.ij, align 8, !tbaa !78
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.in = icmp eq ptr %2, %i.b
  br i1 %i.in, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !26 ; 2 uses
  %i.ir = load <2 x ptr>, ptr %i.io, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i46.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i.i.i.i.i46.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 3 uses
  %i.it = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i47.i.i = icmp eq i8 %i.it, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i47.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iu = load i32, ptr %i.is, align 4, !tbaa !3
  %i.iv = add nsw i32 %i.iu, 1
  store i32 %i.iv, ptr %i.is, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.iw = atomicrmw volatile add ptr %i.is, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i: ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !26 ; 8 uses
  store <2 x ptr> %i.ir, ptr %i.im, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i49.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i.i.i.i49.i.i, label %thread-pre-split.i53.i.i, label %bb.af

end_hunk_5
begin_hunk_6_@_ZN6duckdb14ScalarFunction13UnaryFunctionIddNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load double, ptr %i.h, align 8, !tbaa !80
  %i.n = tail call noundef double @llvm.trunc.f64(double %i.m)
  store double %i.n, ptr %i.f, align 8, !tbaa !80
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !686 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  switch i64 %i.c, label %vector.ph45 [
    i64 0, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit
    i64 1, label %.lr.ph17.i.i.i.preheader
  ]

vector.ph45:                                      ; preds = %.preheader.i.i.i
  %n.vec47 = and i64 %i.c, -2                     ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body48 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index49
  %wide.load50 = load <2 x double>, ptr %i.u, align 8, !tbaa !80, !alias.scope !681, !noalias !684
  %i.v = tail call <2 x double> @llvm.trunc.v2f64(<2 x double> %wide.load50)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index49
  store <2 x double> %i.v, ptr %i.w, align 8, !tbaa !80, !alias.scope !684, !noalias !681
  %index.next51 = add nuw i64 %index49, 2         ; 2 uses
  %i.x = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.x, label %middle.block52, label %vector.body48, !llvm.loop !687

middle.block52:                                   ; preds = %vector.body48
  %cmp.n53 = icmp eq i64 %i.c, %n.vec47
  br i1 %cmp.n53, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i, %middle.block52
  %.016.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i ], [ %n.vec47, %middle.block52 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.y, align 8, !tbaa !78, !noalias !686
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = icmp eq ptr %2, %i.a
  br i1 %i.aa, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26, !noalias !686 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !13, !noalias !686
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !686
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !686
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !686
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !686 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26, !noalias !686 ; 8 uses
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !13, !noalias !686
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !686 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !32, !noalias !686
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !34, !noalias !686
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !686
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !686
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !686, !inline_history !688
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !686
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !686
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !686, !inline_history !688
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !686
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3, !noalias !686
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4, !noalias !686
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !686
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !83, !noalias !686
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !83, !noalias !686
  %i.be = add i64 %i.c, 63
  %i.bf = lshr i64 %i.be, 6                       ; 2 uses
  %.not18.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !686 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bg, null
  br label %bb.p

bb.p:                                             ; preds = %.loopexit5.i.i.i, %.lr.ph15.i.i.i
  %.05414.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %.4.i.i.i, %.loopexit5.i.i.i ] ; 18 uses
  %.05513.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %i.da, %.loopexit5.i.i.i ] ; 2 uses
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %bb.p
  %i.bh = add i64 %.05414.i.i.i, 64
  %i.bi = tail call noundef i64 @llvm.umin.i64(i64 %i.bh, i64 %i.c)
  br label %.preheader6.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.05513.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79, !noalias !686 ; 4 uses
  %i.bl = add i64 %.05414.i.i.i, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.c) ; 8 uses
  switch i64 %i.bk, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.bn = phi i64 [ %i.bi, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 5 uses
  %i.bo = icmp ult i64 %.05414.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.bp = sub nuw i64 %i.bn, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bp, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bp, -2                      ; 3 uses
  %i.bq = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.br
  %wide.load = load <2 x double>, ptr %i.bs, align 8, !tbaa !80, !alias.scope !681, !noalias !684
  %i.bt = tail call <2 x double> @llvm.trunc.v2f64(<2 x double> %wide.load)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.br
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !80, !alias.scope !684, !noalias !681
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader71

.lr.ph.i.i.i.preheader71:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bw = icmp ult i64 %.05414.i.i.i, %i.bm
  br i1 %i.bw, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.bx = sub nuw i64 %i.bm, %.05414.i.i.i
  %.neg = add i64 %.05414.i.i.i, 1
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.by = and i64 %i.bk, 1
  %.not.i.i.i.prol = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05414.i.i.i
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !80, !alias.scope !681, !noalias !684
  %i.cb = tail call noundef double @llvm.trunc.f64(double %i.ca)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.05414.i.i.i
  store double %i.cb, ptr %i.cc, align 8, !tbaa !80, !alias.scope !684, !noalias !681
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.q, %.lr.ph11.i.i.i.prol
  %i.cd = add nuw i64 %.05414.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.05414.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.cd, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ce = icmp eq i64 %i.bm, %.neg
  br i1 %i.ce, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader71, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.i.i.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !80, !alias.scope !681, !noalias !684
  %i.ch = tail call noundef double @llvm.trunc.f64(double %i.cg)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.i.i.i
  store double %i.ch, ptr %i.ci, align 8, !tbaa !80, !alias.scope !684, !noalias !681
  %i.cj = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cj, %i.bn
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !690

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t
  %.210.i.i.i = phi i64 [ %i.cz, %bb.t ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.bk
  %.not.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.210.i.i.i
  %i.co = load double, ptr %i.cn, align 8, !tbaa !80, !alias.scope !681, !noalias !684
  %i.cp = tail call noundef double @llvm.trunc.f64(double %i.co)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.210.i.i.i
  store double %i.cp, ptr %i.cq, align 8, !tbaa !80, !alias.scope !684, !noalias !681
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.r, %.lr.ph11.i.i.i
  %i.cr = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.cs = sub nuw i64 %i.cr, %.05414.i.i.i
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.bk
  %.not.i.i.i.1 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cr
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !80, !alias.scope !681, !noalias !684
  %i.cx = tail call noundef double @llvm.trunc.f64(double %i.cw)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cr
  store double %i.cx, ptr %i.cy, align 8, !tbaa !80, !alias.scope !684, !noalias !681
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph11.i.i.i.1
  %i.cz = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond23.not.i.i.i.1 = icmp eq i64 %i.cz, %i.bm
  br i1 %exitcond23.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !691

.loopexit5.i.i.i:                                 ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.t, %.lr.ph.i.i.i, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.bn, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.bn, %.lr.ph.i.i.i ], [ %i.bm, %bb.t ], [ %i.bm, %.lr.ph11.i.i.i.prol.loopexit ]
  %i.da = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i64 %i.da, %i.bf
  br i1 %exitcond24.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit, label %bb.p, !llvm.loop !692

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.df, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.016.i.i.i
  %i.dc = load double, ptr %i.db, align 8, !tbaa !80, !alias.scope !681, !noalias !684
  %i.dd = tail call noundef double @llvm.trunc.f64(double %i.dc)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.016.i.i.i
  store double %i.dd, ptr %i.de, align 8, !tbaa !80, !alias.scope !684, !noalias !681
  %i.df = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.df, %i.c
  br i1 %exitcond25.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113TruncOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !693

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.v unwind label %bb.au

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.x unwind label %bb.av

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !77 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !131 ; 9 uses
  %i.dk = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !694)
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !701
  %.not.i.i60.i.i = icmp eq ptr %i.dn, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.z
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113TruncOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !153, !alias.scope !699, !noalias !702 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.do, null
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ad
  %.03.us.i.i.i = phi i64 [ %i.ei, %bb.ad ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.dq = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.dr = and i64 %.03.us.i.i.i, 63
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !701
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dq
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !79, !noalias !701
  %i.dv = shl nuw i64 1, %i.dr                    ; 2 uses
  %i.dw = and i64 %i.du, %i.dv
  %.not.us.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.us.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.03.us.i.i.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !80, !alias.scope !694, !noalias !703
  %i.dz = call noundef double @llvm.trunc.f64(double %i.dy)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.03.us.i.i.i
  store double %i.dz, ptr %i.ea, align 8, !tbaa !80, !alias.scope !697, !noalias !704
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.eb = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !701 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i30.us.i.i.i, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i64, ptr %i.dp, align 8, !tbaa !83, !noalias !701
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 noundef %i.ec)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ac
  %.pre.i.us.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !78, !noalias !701
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.ab
  %i.ed = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.eb, %bb.ab ]
  %i.ee = xor i64 %i.dv, -1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dq ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdb14ScalarFunction14BinaryFunctionIdidNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bn, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !34
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #23, !inline_history !712
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #23, !inline_history !712
  br label %thread-pre-split.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.p ], [ %i.ca, %bb.q ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.r, label %thread-pre-split.i.i.i, !prof !36

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #23
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.n, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !78
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %.val.i.i.i = phi ptr [ %.val.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.az, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !83
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %.not.i.i18.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i18.i.i.i, label %.preheader.i.i.i.i, label %bb.t

.preheader.i.i.i.i:                               ; preds = %bb.s
  %.not18.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not18.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %.lr.ph16.i.i.i.i

.lr.ph16.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %i.cf = load i32, ptr %i.aq, align 4, !tbaa !3, !alias.scope !716, !noalias !720 ; 3 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph16.split.us.i.i.i.i, label %.lr.ph16.split.i.i.i.i

.lr.ph16.split.us.i.i.i.i:                        ; preds = %.lr.ph16.i.i.i.i
  %i.ch = sitofp i32 %i.cf to double
  %i.ci = fneg double %i.ch
  %i.cj = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ci) #23, !tbaa !3, !noalias !721 ; 3 uses
  %min.iters.check149 = icmp eq i64 %i.d, 1
  br i1 %min.iters.check149, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph16.split.us.i.i.i.i
  %n.vec152 = and i64 %i.d, -2                    ; 3 uses
  %broadcast.splatinsert153 = insertelement <2 x double> poison, double %i.cj, i64 0
  %broadcast.splat154 = shufflevector <2 x double> %broadcast.splatinsert153, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph150
  %index156 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body155 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index156
  %wide.load157 = load <2 x double>, ptr %i.ck, align 8, !tbaa !80, !alias.scope !713, !noalias !722 ; 2 uses
  %i.cl = fdiv <2 x double> %wide.load157, %broadcast.splat154
  %i.cm = tail call <2 x double> @llvm.trunc.v2f64(<2 x double> %i.cl)
  %i.cn = fmul <2 x double> %broadcast.splat154, %i.cm ; 2 uses
  %i.co = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cn)
  %i.cp = fcmp ueq <2 x double> %i.co, splat (double +inf)
  %i.cq = select <2 x i1> %i.cp, <2 x double> %wide.load157, <2 x double> %i.cn
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index156
  store <2 x double> %i.cq, ptr %i.cr, align 8, !tbaa !80, !alias.scope !718, !noalias !723
  %index.next158 = add nuw i64 %index156, 2       ; 2 uses
  %i.cs = icmp eq i64 %index.next158, %n.vec152
  br i1 %i.cs, label %middle.block159, label %vector.body155, !llvm.loop !724

middle.block159:                                  ; preds = %vector.body155
  %cmp.n160 = icmp eq i64 %i.d, %n.vec152
  br i1 %cmp.n160, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader: ; preds = %.lr.ph16.split.us.i.i.i.i, %middle.block159
  %.05815.us.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.split.us.i.i.i.i ], [ %n.vec152, %middle.block159 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i
  %.05815.us.i.i.i.i = phi i64 [ %i.da, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i ], [ %.05815.us.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.05815.us.i.i.i.i
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !80, !alias.scope !713, !noalias !722 ; 2 uses
  %i.cv = fdiv double %i.cu, %i.cj
  %i.cw = tail call double @llvm.trunc.f64(double %i.cv)
  %i.cx = fmul double %i.cj, %i.cw                ; 2 uses
  %i.cy = tail call double @llvm.fabs.f64(double %i.cx)
  %or.cond.i.i70.us.i.i.i.i = fcmp ueq double %i.cy, +inf
  %.2.i.i69.us.i.i.i.i = select i1 %or.cond.i.i70.us.i.i.i.i, double %i.cu, double %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.05815.us.i.i.i.i
  store double %.2.i.i69.us.i.i.i.i, ptr %i.cz, align 8, !tbaa !80, !alias.scope !718, !noalias !723
  %i.da = add nuw i64 %.05815.us.i.i.i.i, 1       ; 2 uses
  %exitcond29.not.i.i.i.i = icmp eq i64 %i.da, %i.d
  br i1 %exitcond29.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i, !llvm.loop !725

.lr.ph16.split.i.i.i.i:                           ; preds = %.lr.ph16.i.i.i.i
  %i.db = uitofp nneg i32 %i.cf to double
  %i.dc = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.db) #23, !tbaa !3, !noalias !721 ; 3 uses
  %min.iters.check135 = icmp eq i64 %i.d, 1
  br i1 %min.iters.check135, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph16.split.i.i.i.i
  %n.vec138 = and i64 %i.d, -2                    ; 3 uses
  %broadcast.splatinsert139 = insertelement <2 x double> poison, double %i.dc, i64 0
  %broadcast.splat140 = shufflevector <2 x double> %broadcast.splatinsert139, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph136
  %index142 = phi i64 [ 0, %vector.ph136 ], [ %index.next144, %vector.body141 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index142
  %wide.load143 = load <2 x double>, ptr %i.dd, align 8, !tbaa !80, !alias.scope !713, !noalias !722 ; 2 uses
  %i.de = fmul <2 x double> %broadcast.splat140, %wide.load143
  %i.df = tail call <2 x double> @llvm.trunc.v2f64(<2 x double> %i.de)
  %i.dg = fdiv <2 x double> %i.df, %broadcast.splat140 ; 2 uses
  %i.dh = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dg)
  %i.di = fcmp ueq <2 x double> %i.dh, splat (double +inf)
  %i.dj = select <2 x i1> %i.di, <2 x double> %wide.load143, <2 x double> %i.dg
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index142
  store <2 x double> %i.dj, ptr %i.dk, align 8, !tbaa !80, !alias.scope !718, !noalias !723
  %index.next144 = add nuw i64 %index142, 2       ; 2 uses
  %i.dl = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.dl, label %middle.block145, label %vector.body141, !llvm.loop !726

middle.block145:                                  ; preds = %vector.body141
  %cmp.n146 = icmp eq i64 %i.d, %n.vec138
  br i1 %cmp.n146, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader: ; preds = %.lr.ph16.split.i.i.i.i, %middle.block145
  %.05815.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.split.i.i.i.i ], [ %n.vec138, %middle.block145 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.dm = add i64 %i.d, 63
  %i.dn = lshr i64 %i.dm, 6                       ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not17.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.t, %.loopexit5.i.i.i.i
  %.014.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit5.i.i.i.i ], [ 0, %bb.t ] ; 15 uses
  %.05713.i.i.i.i = phi i64 [ %i.gl, %.loopexit5.i.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.05713.i.i.i.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !79, !noalias !721 ; 2 uses
  %i.dq = add i64 %.014.i.i.i.i, 64
  %i.dr = tail call noundef i64 @llvm.umin.i64(i64 %i.dq, i64 %i.d) ; 13 uses
  switch i64 %i.dp, label %.preheader4.i.i.i.i [
    i64 -1, label %.preheader6.i.i.i.i
    i64 0, label %.loopexit5.i.i.i.i
  ]

.preheader6.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.ds = icmp ult i64 %.014.i.i.i.i, %i.dr
  br i1 %i.ds, label %.lr.ph.i.i.i.i, label %.loopexit5.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader6.i.i.i.i
  %i.dt = load i32, ptr %i.aq, align 4, !tbaa !3, !alias.scope !716, !noalias !720 ; 3 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.dv = sitofp i32 %i.dt to double
  %i.dw = fneg double %i.dv
  %i.dx = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.dw) #23, !tbaa !3, !noalias !721 ; 3 uses
  %i.dy = sub i64 %i.dr, %.014.i.i.i.i            ; 3 uses
  %min.iters.check = icmp ult i64 %i.dy, 2
  br i1 %min.iters.check, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i.i.i.i
  %n.vec = and i64 %i.dy, -2                      ; 3 uses
  %i.dz = add i64 %.014.i.i.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = add nuw i64 %.014.i.i.i.i, %index       ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ea
  %wide.load = load <2 x double>, ptr %i.eb, align 8, !tbaa !80, !alias.scope !713, !noalias !722 ; 2 uses
  %i.ec = fdiv <2 x double> %wide.load, %broadcast.splat
  %i.ed = tail call <2 x double> @llvm.trunc.v2f64(<2 x double> %i.ec)
  %i.ee = fmul <2 x double> %broadcast.splat, %i.ed ; 2 uses
  %i.ef = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ee)
  %i.eg = fcmp ueq <2 x double> %i.ef, splat (double +inf)
  %i.eh = select <2 x i1> %i.eg, <2 x double> %wide.load, <2 x double> %i.ee
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ea
  store <2 x double> %i.eh, ptr %i.ei, align 8, !tbaa !80, !alias.scope !718, !noalias !723
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !727

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i.i, %middle.block
  %.19.us.i.i.i.i.ph = phi i64 [ %.014.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ %i.dz, %middle.block ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i
  %.19.us.i.i.i.i = phi i64 [ %i.er, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %.19.us.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.19.us.i.i.i.i
  %i.el = load double, ptr %i.ek, align 8, !tbaa !80, !alias.scope !713, !noalias !722 ; 2 uses
  %i.em = fdiv double %i.el, %i.dx
  %i.en = tail call double @llvm.trunc.f64(double %i.em)
  %i.eo = fmul double %i.dx, %i.en                ; 2 uses
  %i.ep = tail call double @llvm.fabs.f64(double %i.eo)
  %or.cond.i.i.us.i.i.i.i = fcmp ueq double %i.ep, +inf
  %.2.i.i.us.i.i.i.i = select i1 %or.cond.i.i.us.i.i.i.i, double %i.el, double %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.19.us.i.i.i.i
  store double %.2.i.i.us.i.i.i.i, ptr %i.eq, align 8, !tbaa !80, !alias.scope !718, !noalias !723
  %i.er = add nuw i64 %.19.us.i.i.i.i, 1          ; 2 uses
  %exitcond25.not.i.i.i.i = icmp eq i64 %i.er, %i.dr
  br i1 %exitcond25.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, !llvm.loop !728

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.es = uitofp nneg i32 %i.dt to double
  %i.et = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.es) #23, !tbaa !3, !noalias !721 ; 3 uses
  %i.eu = sub i64 %i.dr, %.014.i.i.i.i            ; 3 uses
  %min.iters.check121 = icmp ult i64 %i.eu, 2
  br i1 %min.iters.check121, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph.split.i.i.i.i
  %n.vec124 = and i64 %i.eu, -2                   ; 3 uses
  %i.ev = add i64 %.014.i.i.i.i, %n.vec124
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %i.et, i64 0
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph122
  %index128 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body127 ] ; 2 uses
  %i.ew = add nuw i64 %.014.i.i.i.i, %index128    ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ew
  %wide.load129 = load <2 x double>, ptr %i.ex, align 8, !tbaa !80, !alias.scope !713, !noalias !722 ; 2 uses
  %i.ey = fmul <2 x double> %broadcast.splat126, %wide.load129
  %i.ez = tail call <2 x double> @llvm.trunc.v2f64(<2 x double> %i.ey)
  %i.fa = fdiv <2 x double> %i.ez, %broadcast.splat126 ; 2 uses
  %i.fb = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fa)
  %i.fc = fcmp ueq <2 x double> %i.fb, splat (double +inf)
  %i.fd = select <2 x i1> %i.fc, <2 x double> %wide.load129, <2 x double> %i.fa
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ew
  store <2 x double> %i.fd, ptr %i.fe, align 8, !tbaa !80, !alias.scope !718, !noalias !723
  %index.next130 = add nuw i64 %index128, 2       ; 2 uses
  %i.ff = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.ff, label %middle.block131, label %vector.body127, !llvm.loop !729

middle.block131:                                  ; preds = %vector.body127
  %cmp.n132 = icmp eq i64 %i.eu, %n.vec124
  br i1 %cmp.n132, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i, %middle.block131
  %.19.i.i.i.i.ph = phi i64 [ %.014.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.ev, %middle.block131 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

.preheader4.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.fg = icmp ult i64 %.014.i.i.i.i, %i.dr
  br i1 %i.fg, label %.lr.ph11.i.i.i.i, label %.loopexit5.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i
  %.19.i.i.i.i = phi i64 [ %i.fo, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.19.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.19.i.i.i.i
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !80, !alias.scope !713, !noalias !722 ; 2 uses
  %i.fj = fmul double %i.et, %i.fi
  %i.fk = tail call double @llvm.trunc.f64(double %i.fj)
  %i.fl = fdiv double %i.fk, %i.et                ; 2 uses
  %i.fm = tail call double @llvm.fabs.f64(double %i.fl)
  %or.cond24.i.i.i.i.i.i = fcmp ueq double %i.fm, +inf
  %.2.i.i.i.i.i.i = select i1 %or.cond24.i.i.i.i.i.i, double %i.fi, double %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.19.i.i.i.i
  store double %.2.i.i.i.i.i.i, ptr %i.fn, align 8, !tbaa !80, !alias.scope !718, !noalias !723
  %i.fo = add nuw i64 %.19.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fo, %i.dr
  br i1 %exitcond.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, !llvm.loop !730

.lr.ph11.i.i.i.i:                                 ; preds = %.preheader4.i.i.i.i, %bb.x
  %.210.i.i.i.i = phi i64 [ %i.gk, %bb.x ], [ %.014.i.i.i.i, %.preheader4.i.i.i.i ] ; 4 uses
  %i.fp = sub nuw i64 %.210.i.i.i.i, %.014.i.i.i.i
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = and i64 %i.fq, %i.dp
  %.not.i.i.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.lr.ph11.i.i.i.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.210.i.i.i.i
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !80, !alias.scope !713, !noalias !722 ; 4 uses
  %i.fu = load i32, ptr %i.aq, align 4, !tbaa !3, !alias.scope !716, !noalias !720 ; 3 uses
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fw = sitofp i32 %i.fu to double
  %i.fx = fneg double %i.fw
  %i.fy = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.fx) #23, !tbaa !3, !noalias !721 ; 2 uses
  %i.fz = fdiv double %i.ft, %i.fy
  %i.ga = tail call double @llvm.trunc.f64(double %i.fz)
  %i.gb = fmul double %i.fy, %i.ga                ; 2 uses
  %i.gc = tail call double @llvm.fabs.f64(double %i.gb)
  %or.cond.i.i64.i.i.i.i = fcmp ueq double %i.gc, +inf
  br i1 %or.cond.i.i64.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, label %.critedge.i.i61.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.gd = uitofp nneg i32 %i.fu to double
  %i.ge = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.gd) #23, !tbaa !3, !noalias !721 ; 2 uses
  %i.gf = fmul double %i.ft, %i.ge
  %i.gg = tail call double @llvm.trunc.f64(double %i.gf)
  %i.gh = fdiv double %i.gg, %i.ge                ; 2 uses
  %i.gi = tail call double @llvm.fabs.f64(double %i.gh)
  %or.cond24.i.i60.i.i.i.i = fcmp ueq double %i.gi, +inf
  br i1 %or.cond24.i.i60.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, label %.critedge.i.i61.i.i.i.i

.critedge.i.i61.i.i.i.i:                          ; preds = %bb.w, %bb.v
  %.021.i.i62.i.i.i.i = phi double [ %i.gb, %bb.v ], [ %i.gh, %bb.w ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i: ; preds = %.critedge.i.i61.i.i.i.i, %bb.w, %bb.v
  %.2.i.i63.i.i.i.i = phi double [ %.021.i.i62.i.i.i.i, %.critedge.i.i61.i.i.i.i ], [ %i.ft, %bb.w ], [ %i.ft, %bb.v ]
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.210.i.i.i.i
  store double %.2.i.i63.i.i.i.i, ptr %i.gj, align 8, !tbaa !80, !alias.scope !718, !noalias !723
  br label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, %.lr.ph11.i.i.i.i
  %i.gk = add nuw i64 %.210.i.i.i.i, 1            ; 2 uses
  %exitcond26.not.i.i.i.i = icmp eq i64 %i.gk, %i.dr
  br i1 %exitcond26.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %.lr.ph11.i.i.i.i, !llvm.loop !731

.loopexit5.i.i.i.i:                               ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, %bb.x, %middle.block131, %middle.block, %.preheader4.i.i.i.i, %.preheader6.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.dr, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.dr, %middle.block131 ], [ %.014.i.i.i.i, %.preheader4.i.i.i.i ], [ %.014.i.i.i.i, %.preheader6.i.i.i.i ], [ %i.dr, %middle.block ], [ %i.dr, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %i.dr, %bb.x ], [ %i.dr, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ]
  %i.gl = add nuw nsw i64 %.05713.i.i.i.i, 1      ; 2 uses
  %exitcond27.not.i.i.i.i = icmp eq i64 %i.gl, %i.dn
  br i1 %exitcond27.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, !llvm.loop !732

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i
  %.05815.i.i.i.i = phi i64 [ %i.gt, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i ], [ %.05815.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.05815.i.i.i.i
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !80, !alias.scope !713, !noalias !722 ; 2 uses
  %i.go = fmul double %i.dc, %i.gn
  %i.gp = tail call double @llvm.trunc.f64(double %i.go)
  %i.gq = fdiv double %i.gp, %i.dc                ; 2 uses
  %i.gr = tail call double @llvm.fabs.f64(double %i.gq)
  %or.cond24.i.i66.i.i.i.i = fcmp ueq double %i.gr, +inf
  %.2.i.i69.i.i.i.i = select i1 %or.cond24.i.i66.i.i.i.i, double %i.gn, double %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.05815.i.i.i.i
  store double %.2.i.i69.i.i.i.i, ptr %i.gs, align 8, !tbaa !80, !alias.scope !718, !noalias !723
  %i.gt = add nuw i64 %.05815.i.i.i.i, 1          ; 2 uses
  %exitcond28.not.i.i.i.i = icmp eq i64 %i.gt, %i.d
  br i1 %exitcond28.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122TruncOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i, !llvm.loop !733

bb.y:                                             ; preds = %bb.f
  %i.gu = icmp eq i8 %i.f, 0
  %or.cond5.i.i = and i1 %i.g, %i.gu
  br i1 %or.cond5.i.i, label %bb.z, label %bb.ax

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !77 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !77 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i43.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i: ; preds = %bb.z
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !79
  %i.hc = trunc i64 %i.hb to i1
  br i1 %i.hc, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122TruncOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i, %bb.z
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !77 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !78 ; 2 uses
  store ptr %i.hh, ptr %i.hf, align 8, !tbaa !78
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hj = icmp eq ptr %2, %i.b
  br i1 %i.hj, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !26 ; 2 uses
  %i.hn = load <2 x ptr>, ptr %i.hk, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i46.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i.i.i.i46.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 3 uses
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i47.i.i = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i47.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hq = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.ho, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.hs = atomicrmw volatile add ptr %i.ho, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i: ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !26 ; 8 uses
  store <2 x ptr> %i.hn, ptr %i.hi, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i49.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i.i.i.i49.i.i, label %thread-pre-split.i53.i.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 4 uses
  %i.hw = load atomic i64, ptr %i.hv acquire, align 8 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 4294967297
  %i.hy = trunc i64 %i.hw to i32                  ; 2 uses
  br i1 %i.hx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.hv, align 8, !tbaa !32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i32 0, ptr %i.hz, align 4, !tbaa !34
end_hunk_7
begin_hunk_8_@_ZN6duckdb14ScalarFunction14BinaryFunctionINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23, !inline_history !1078
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23, !inline_history !1078
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.u ], [ %i.bx, %bb.v ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.w, label %bb.x, !prof !36

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.s, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !78, !noalias !1086
  %.not.i.i18.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i18.i.i.i, label %.preheader.i.i.i.i, label %bb.aa

.preheader.i.i.i.i:                               ; preds = %bb.x
  %.not107.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not107.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph105.i.i.i.i

.lr.ph105.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %i.cd = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1082, !noalias !1087 ; 3 uses
  %i.ce = icmp slt i32 %i.cd, 0
  %.sroa.3.0..sroa_idx5.i.i80.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cf = sub nsw i32 0, %i.cd
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.cg
  br i1 %i.ce, label %.lr.ph105.split.us.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader: ; preds = %.lr.ph105.i.i.i.i
  %min.iters.check123 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check123, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136, label %vector.ph124

vector.ph124:                                     ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader
  %n.vec126 = and i64 %i.d, -2                    ; 3 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph124
  %index128 = phi i64 [ 0, %vector.ph124 ], [ %index.next131, %vector.body127 ] ; 4 uses
  %i.ci = or disjoint i64 %index128, 1            ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %index128
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ci
  %wide.load129 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  %wide.load130 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %index128
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ci
  store <2 x i64> %wide.load129, ptr %i.cl, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  store <2 x i64> %wide.load130, ptr %i.cm, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %index.next131 = add nuw i64 %index128, 2       ; 2 uses
  %i.cn = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.cn, label %middle.block132, label %vector.body127, !llvm.loop !1090

middle.block132:                                  ; preds = %vector.body127
  %cmp.n133 = icmp eq i64 %i.d, %n.vec126
  br i1 %cmp.n133, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader, %middle.block132
  %.070104.i.i.i.i.ph = phi i64 [ 0, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader ], [ %n.vec126, %middle.block132 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i

.lr.ph105.split.us.i.i.i.i:                       ; preds = %.lr.ph105.i.i.i.i
  %i.co = icmp samesign ult i32 %i.cd, -38
  br i1 %i.co, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i, label %.lr.ph105.split.us.split.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i: ; preds = %.lr.ph105.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i
  %.070104.us.us.i.i.i.i = phi i64 [ %i.cr, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i ], [ 0, %.lr.ph105.split.us.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !1086
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef 0), !noalias !1086
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.us.us.i.i.i.i
  %i.cq = load <2 x i64>, ptr %29, align 16, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !1086
  store <2 x i64> %i.cq, ptr %i.cp, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.cr = add nuw i64 %.070104.us.us.i.i.i.i, 1   ; 2 uses
  %exitcond123.not.i.i.i.i = icmp eq i64 %i.cr, %i.d
  br i1 %exitcond123.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i, !llvm.loop !1091

.lr.ph105.split.us.split.i.i.i.i:                 ; preds = %.lr.ph105.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i
  %.070104.us.i.i.i.i = phi i64 [ %i.da, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i ], [ 0, %.lr.ph105.split.us.i.i.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.070104.us.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23, !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !1077, !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23, !noalias !1086
  %i.ct = load <2 x i64>, ptr %i.cs, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  store <2 x i64> %i.ct, ptr %31, align 16, !tbaa !79, !noalias !1086
  %i.cu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %30), !noalias !1086 ; 0 uses
  %i.cv = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %31), !noalias !1086
  br i1 %i.cv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph105.split.us.split.i.i.i.i
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef 0), !noalias !1086
  %.fca.0.load.i.i81.us.pre.i.i.i.i = load i64, ptr %29, align 16, !noalias !1086
  %.fca.1.load.i.i84.us.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx5.i.i80.i.i.i.i, align 8, !noalias !1086
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i

bb.z:                                             ; preds = %.lr.ph105.split.us.split.i.i.i.i
  %i.cw = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %30), !noalias !1086 ; 2 uses
  %i.cx = extractvalue { i64, i64 } %i.cw, 0
  %i.cy = extractvalue { i64, i64 } %i.cw, 1
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i: ; preds = %bb.z, %bb.y
  %.fca.1.load.i.i84.us.i.i.i.i = phi i64 [ %i.cy, %bb.z ], [ %.fca.1.load.i.i84.us.pre.i.i.i.i, %bb.y ]
  %.fca.0.load.i.i81.us.i.i.i.i = phi i64 [ %i.cx, %bb.z ], [ %.fca.0.load.i.i81.us.pre.i.i.i.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !1086
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.us.i.i.i.i ; 2 uses
  store i64 %.fca.0.load.i.i81.us.i.i.i.i, ptr %i.cz, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %.sroa.4.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %.fca.1.load.i.i84.us.i.i.i.i, ptr %.sroa.4.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.da = add nuw i64 %.070104.us.i.i.i.i, 1      ; 2 uses
  %exitcond122.not.i.i.i.i = icmp eq i64 %i.da, %i.d
  br i1 %exitcond122.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph105.split.us.split.i.i.i.i, !llvm.loop !1091

bb.aa:                                            ; preds = %bb.x
  %i.db = add i64 %i.d, 63
  %i.dc = lshr i64 %i.db, 6                       ; 2 uses
  %.not106.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not106.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph103.i.i.i.i

.lr.ph103.i.i.i.i:                                ; preds = %bb.aa
  %.sroa.3.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i78.i.i.i.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit92.i.i.i.i, %.lr.ph103.i.i.i.i
  %.0102.i.i.i.i = phi i64 [ 0, %.lr.ph103.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit92.i.i.i.i ] ; 14 uses
  %.069101.i.i.i.i = phi i64 [ 0, %.lr.ph103.i.i.i.i ], [ %i.fk, %.loopexit92.i.i.i.i ] ; 2 uses
  %i.dd = load ptr, ptr %i.au, align 8, !tbaa !78, !noalias !1086 ; 2 uses
  %.not.i71.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i71.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i: ; preds = %bb.ab
  %i.de = add i64 %.0102.i.i.i.i, 64
  %i.df = call noundef i64 @llvm.umin.i64(i64 %i.de, i64 %i.d)
  br label %.preheader93.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.069101.i.i.i.i
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !79, !noalias !1086 ; 2 uses
  %i.di = add i64 %.0102.i.i.i.i, 64
  %i.dj = call noundef i64 @llvm.umin.i64(i64 %i.di, i64 %i.d) ; 5 uses
  switch i64 %i.dh, label %.preheader91.i.i.i.i [
    i64 -1, label %.preheader93.i.i.i.i
    i64 0, label %.loopexit92.i.i.i.i
  ]

.preheader93.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i
  %i.dk = phi i64 [ %i.df, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i ], [ %i.dj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ] ; 9 uses
  %i.dl = icmp ult i64 %.0102.i.i.i.i, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i.i.i, label %.loopexit92.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader93.i.i.i.i
  %i.dm = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1082, !noalias !1087 ; 3 uses
  %i.dn = icmp slt i32 %i.dm, 0
  %i.do = sub nsw i32 0, %i.dm
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.dp
  br i1 %i.dn, label %.lr.ph.split.us.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i
  %i.dr = sub i64 %i.dk, %.0102.i.i.i.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.dr, 4
  br i1 %min.iters.check, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader
  %n.vec = and i64 %i.dr, -2                      ; 3 uses
  %i.ds = add i64 %.0102.i.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = add nuw i64 %.0102.i.i.i.i, %index      ; 3 uses
  %i.du = add i64 %i.dt, 1                        ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.dt
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.du
  %wide.load = load <2 x i64>, ptr %i.dv, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  %wide.load121 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.dt
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.du
  store <2 x i64> %wide.load, ptr %i.dx, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  store <2 x i64> %wide.load121, ptr %i.dy, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !1092

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, %middle.block
  %.196.i.i.i.i.ph = phi i64 [ %.0102.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.ea = icmp samesign ult i32 %i.dm, -38
  br i1 %i.ea, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i
  %.196.us.us.i.i.i.i = phi i64 [ %i.ed, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i ], [ %.0102.i.i.i.i, %.lr.ph.split.us.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35), !noalias !1086
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %35, i64 noundef 0), !noalias !1086
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.us.us.i.i.i.i
  %i.ec = load <2 x i64>, ptr %35, align 16, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %35), !noalias !1086
  store <2 x i64> %i.ec, ptr %i.eb, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.ed = add i64 %.196.us.us.i.i.i.i, 1          ; 2 uses
  %exitcond118.not.i.i.i.i = icmp eq i64 %i.ed, %i.dk
  br i1 %exitcond118.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, !llvm.loop !1093

.lr.ph.split.us.split.i.i.i.i:                    ; preds = %.lr.ph.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i
  %.196.us.i.i.i.i = phi i64 [ %i.em, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %.0102.i.i.i.i, %.lr.ph.split.us.i.i.i.i ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.196.us.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35), !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23, !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 16 dereferenceable(16) %i.dq, i64 16, i1 false), !tbaa.struct !1077, !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23, !noalias !1086
  %i.ef = load <2 x i64>, ptr %i.ee, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  store <2 x i64> %i.ef, ptr %37, align 16, !tbaa !79, !noalias !1086
  %i.eg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %36), !noalias !1086 ; 0 uses
  %i.eh = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %37), !noalias !1086
  br i1 %i.eh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split.us.split.i.i.i.i
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %35, i64 noundef 0), !noalias !1086
  %.fca.0.load.i.i.us.pre.i.i.i.i = load i64, ptr %35, align 16, !noalias !1086
  %.fca.1.load.i.i.us.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !1086
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

bb.ad:                                            ; preds = %.lr.ph.split.us.split.i.i.i.i
  %i.ei = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %36), !noalias !1086 ; 2 uses
  %i.ej = extractvalue { i64, i64 } %i.ei, 0
  %i.ek = extractvalue { i64, i64 } %i.ei, 1
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.fca.1.load.i.i.us.i.i.i.i = phi i64 [ %i.ek, %bb.ad ], [ %.fca.1.load.i.i.us.pre.i.i.i.i, %bb.ac ]
  %.fca.0.load.i.i.us.i.i.i.i = phi i64 [ %i.ej, %bb.ad ], [ %.fca.0.load.i.i.us.pre.i.i.i.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %35), !noalias !1086
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.us.i.i.i.i ; 2 uses
  store i64 %.fca.0.load.i.i.us.i.i.i.i, ptr %i.el, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %.sroa.420.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %.fca.1.load.i.i.us.i.i.i.i, ptr %.sroa.420.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.em = add i64 %.196.us.i.i.i.i, 1             ; 2 uses
  %exitcond117.not.i.i.i.i = icmp eq i64 %i.em, %i.dk
  br i1 %exitcond117.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i, !llvm.loop !1093

.preheader91.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.en = icmp ult i64 %.0102.i.i.i.i, %i.dj
  br i1 %i.en, label %.lr.ph99.i.i.i.i, label %.loopexit92.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i
  %.196.i.i.i.i = phi i64 [ %i.er, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.196.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.196.i.i.i.i
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.i.i.i.i
  %i.eq = load <2 x i64>, ptr %i.eo, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  store <2 x i64> %i.eq, ptr %i.ep, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.er = add nuw i64 %.196.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.er, %i.dk
  br i1 %exitcond.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, !llvm.loop !1094

.lr.ph99.i.i.i.i:                                 ; preds = %.preheader91.i.i.i.i, %bb.am
  %.298.i.i.i.i = phi i64 [ %i.fj, %bb.am ], [ %.0102.i.i.i.i, %.preheader91.i.i.i.i ] ; 4 uses
  %i.es = sub nuw i64 %.298.i.i.i.i, %.0102.i.i.i.i
  %i.et = shl nuw i64 1, %i.es
  %i.eu = and i64 %i.et, %i.dh
  %.not.i.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i.i.i, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph99.i.i.i.i
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.298.i.i.i.i ; 2 uses
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %i.ev, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.415.0.copyload.i.i.i.i = load i64, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088 ; 2 uses
  %i.ew = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1082, !noalias !1087 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32), !noalias !1086
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.ey = icmp samesign ult i32 %i.ew, -38
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 0), !noalias !1086
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23, !noalias !1086
  %i.ez = sub nsw i32 0, %i.ew
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 16 dereferenceable(16) %i.fb, i64 16, i1 false), !tbaa.struct !1077, !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23, !noalias !1086
  store i64 %.sroa.014.0.copyload.i.i.i.i, ptr %34, align 8, !tbaa !79, !noalias !1086
  store i64 %.sroa.415.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i78.i.i.i.i, align 8, !tbaa !79, !noalias !1086
  %i.fc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %33), !noalias !1086 ; 0 uses
  %i.fd = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %34), !noalias !1086
  br i1 %i.fd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fe = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %33), !noalias !1086 ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fe, 0
  store i64 %i.ff, ptr %32, align 16, !noalias !1086
  %i.fg = extractvalue { i64, i64 } %i.fe, 1
  store i64 %i.fg, ptr %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i, align 8, !noalias !1086
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 0), !noalias !1086
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23, !noalias !1086
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

bb.al:                                            ; preds = %bb.ae
  store i64 %.sroa.014.0.copyload.i.i.i.i, ptr %32, align 16, !tbaa !79, !noalias !1086
  store i64 %.sroa.415.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i, align 8, !tbaa !79, !noalias !1086
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i: ; preds = %bb.al, %bb.ak, %bb.ag
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.298.i.i.i.i
  %i.fi = load <2 x i64>, ptr %32, align 16, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %32), !noalias !1086
  store <2 x i64> %i.fi, ptr %i.fh, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  br label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i, %.lr.ph99.i.i.i.i
  %i.fj = add i64 %.298.i.i.i.i, 1                ; 2 uses
  %exitcond119.not.i.i.i.i = icmp eq i64 %i.fj, %i.dj
  br i1 %exitcond119.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %.lr.ph99.i.i.i.i, !llvm.loop !1095

.loopexit92.i.i.i.i:                              ; preds = %bb.am, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, %middle.block, %.preheader91.i.i.i.i, %.preheader93.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.dj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.0102.i.i.i.i, %.preheader91.i.i.i.i ], [ %.0102.i.i.i.i, %.preheader93.i.i.i.i ], [ %i.dk, %middle.block ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i ], [ %i.dj, %bb.am ]
  %i.fk = add nuw nsw i64 %.069101.i.i.i.i, 1     ; 2 uses
  %exitcond120.not.i.i.i.i = icmp eq i64 %i.fk, %i.dc
  br i1 %exitcond120.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %bb.ab, !llvm.loop !1096

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i
  %.070104.i.i.i.i = phi i64 [ %i.fo, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i ], [ %.070104.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.070104.i.i.i.i
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.i.i.i.i
  %i.fn = load <2 x i64>, ptr %i.fl, align 8, !tbaa !79, !alias.scope !1079, !noalias !1088
  store <2 x i64> %i.fn, ptr %i.fm, align 8, !tbaa !79, !alias.scope !1084, !noalias !1089
  %i.fo = add nuw i64 %.070104.i.i.i.i, 1         ; 2 uses
  %exitcond121.not.i.i.i.i = icmp eq i64 %i.fo, %i.d
  br i1 %exitcond121.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_9hugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_9hugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i, !llvm.loop !1097

bb.an:                                            ; preds = %bb.k
  %i.fp = icmp eq i8 %i.f, 0
  %or.cond5.i.i = and i1 %i.g, %i.fp
  br i1 %or.cond5.i.i, label %bb.ao, label %bb.cc

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !77 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !77 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i43.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i: ; preds = %bb.ao
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !79
  %i.fx = trunc i64 %i.fw to i1
  br i1 %i.fx, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %bb.ap
end_hunk_8
begin_hunk_9_@_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23, !inline_history !1427
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23, !inline_history !1427
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.u ], [ %i.bx, %bb.v ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.w, label %bb.x, !prof !36

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.s, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !78, !noalias !1435
  %.not.i.i18.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i18.i.i.i, label %.preheader.i.i.i.i, label %bb.aa

.preheader.i.i.i.i:                               ; preds = %bb.x
  %.not107.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not107.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph105.i.i.i.i

.lr.ph105.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %i.cd = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1431, !noalias !1436 ; 3 uses
  %i.ce = icmp slt i32 %i.cd, 0
  %.sroa.3.0..sroa_idx5.i.i80.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cf = sub nsw i32 0, %i.cd
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 %i.cg
  br i1 %i.ce, label %.lr.ph105.split.us.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader: ; preds = %.lr.ph105.i.i.i.i
  %min.iters.check123 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check123, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136, label %vector.ph124

vector.ph124:                                     ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader
  %n.vec126 = and i64 %i.d, -2                    ; 3 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph124
  %index128 = phi i64 [ 0, %vector.ph124 ], [ %index.next131, %vector.body127 ] ; 4 uses
  %i.ci = or disjoint i64 %index128, 1            ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %index128
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ci
  %wide.load129 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  %wide.load130 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %index128
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ci
  store <2 x i64> %wide.load129, ptr %i.cl, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  store <2 x i64> %wide.load130, ptr %i.cm, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %index.next131 = add nuw i64 %index128, 2       ; 2 uses
  %i.cn = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.cn, label %middle.block132, label %vector.body127, !llvm.loop !1439

middle.block132:                                  ; preds = %vector.body127
  %cmp.n133 = icmp eq i64 %i.d, %n.vec126
  br i1 %cmp.n133, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader, %middle.block132
  %.070104.i.i.i.i.ph = phi i64 [ 0, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader ], [ %n.vec126, %middle.block132 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i

.lr.ph105.split.us.i.i.i.i:                       ; preds = %.lr.ph105.i.i.i.i
  %i.co = icmp samesign ult i32 %i.cd, -38
  br i1 %i.co, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i, label %.lr.ph105.split.us.split.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i: ; preds = %.lr.ph105.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i
  %.070104.us.us.i.i.i.i = phi i64 [ %i.cr, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i ], [ 0, %.lr.ph105.split.us.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !1435
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef 0), !noalias !1435
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.us.us.i.i.i.i
  %i.cq = load <2 x i64>, ptr %29, align 16, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !1435
  store <2 x i64> %i.cq, ptr %i.cp, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.cr = add nuw i64 %.070104.us.us.i.i.i.i, 1   ; 2 uses
  %exitcond123.not.i.i.i.i = icmp eq i64 %i.cr, %i.d
  br i1 %exitcond123.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.us.i.i.i.i, !llvm.loop !1440

.lr.ph105.split.us.split.i.i.i.i:                 ; preds = %.lr.ph105.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i
  %.070104.us.i.i.i.i = phi i64 [ %i.da, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i ], [ 0, %.lr.ph105.split.us.i.i.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.070104.us.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !1435
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23, !noalias !1435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !1077, !noalias !1435
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23, !noalias !1435
  %i.ct = load <2 x i64>, ptr %i.cs, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  store <2 x i64> %i.ct, ptr %31, align 16, !tbaa !79, !noalias !1435
  %i.cu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %30), !noalias !1435 ; 0 uses
  %i.cv = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %31), !noalias !1435
  br i1 %i.cv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph105.split.us.split.i.i.i.i
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef 0), !noalias !1435
  %.fca.0.load.i.i81.us.pre.i.i.i.i = load i64, ptr %29, align 16, !noalias !1435
  %.fca.1.load.i.i84.us.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx5.i.i80.i.i.i.i, align 8, !noalias !1435
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i

bb.z:                                             ; preds = %.lr.ph105.split.us.split.i.i.i.i
  %i.cw = call { i64, i64 } @_ZNK6duckdb10uhugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %30), !noalias !1435 ; 2 uses
  %i.cx = extractvalue { i64, i64 } %i.cw, 0
  %i.cy = extractvalue { i64, i64 } %i.cw, 1
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.us.i.i.i.i: ; preds = %bb.z, %bb.y
  %.fca.1.load.i.i84.us.i.i.i.i = phi i64 [ %i.cy, %bb.z ], [ %.fca.1.load.i.i84.us.pre.i.i.i.i, %bb.y ]
  %.fca.0.load.i.i81.us.i.i.i.i = phi i64 [ %i.cx, %bb.z ], [ %.fca.0.load.i.i81.us.pre.i.i.i.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !1435
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.us.i.i.i.i ; 2 uses
  store i64 %.fca.0.load.i.i81.us.i.i.i.i, ptr %i.cz, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %.sroa.4.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %.fca.1.load.i.i84.us.i.i.i.i, ptr %.sroa.4.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.da = add nuw i64 %.070104.us.i.i.i.i, 1      ; 2 uses
  %exitcond122.not.i.i.i.i = icmp eq i64 %i.da, %i.d
  br i1 %exitcond122.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph105.split.us.split.i.i.i.i, !llvm.loop !1440

bb.aa:                                            ; preds = %bb.x
  %i.db = add i64 %i.d, 63
  %i.dc = lshr i64 %i.db, 6                       ; 2 uses
  %.not106.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not106.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph103.i.i.i.i

.lr.ph103.i.i.i.i:                                ; preds = %bb.aa
  %.sroa.3.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i78.i.i.i.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit92.i.i.i.i, %.lr.ph103.i.i.i.i
  %.0102.i.i.i.i = phi i64 [ 0, %.lr.ph103.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit92.i.i.i.i ] ; 14 uses
  %.069101.i.i.i.i = phi i64 [ 0, %.lr.ph103.i.i.i.i ], [ %i.fk, %.loopexit92.i.i.i.i ] ; 2 uses
  %i.dd = load ptr, ptr %i.au, align 8, !tbaa !78, !noalias !1435 ; 2 uses
  %.not.i71.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i71.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i: ; preds = %bb.ab
  %i.de = add i64 %.0102.i.i.i.i, 64
  %i.df = call noundef i64 @llvm.umin.i64(i64 %i.de, i64 %i.d)
  br label %.preheader93.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.069101.i.i.i.i
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !79, !noalias !1435 ; 2 uses
  %i.di = add i64 %.0102.i.i.i.i, 64
  %i.dj = call noundef i64 @llvm.umin.i64(i64 %i.di, i64 %i.d) ; 5 uses
  switch i64 %i.dh, label %.preheader91.i.i.i.i [
    i64 -1, label %.preheader93.i.i.i.i
    i64 0, label %.loopexit92.i.i.i.i
  ]

.preheader93.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i
  %i.dk = phi i64 [ %i.df, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i ], [ %i.dj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ] ; 9 uses
  %i.dl = icmp ult i64 %.0102.i.i.i.i, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i.i.i, label %.loopexit92.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader93.i.i.i.i
  %i.dm = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1431, !noalias !1436 ; 3 uses
  %i.dn = icmp slt i32 %i.dm, 0
  %i.do = sub nsw i32 0, %i.dm
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 %i.dp
  br i1 %i.dn, label %.lr.ph.split.us.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i
  %i.dr = sub i64 %i.dk, %.0102.i.i.i.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.dr, 4
  br i1 %min.iters.check, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader
  %n.vec = and i64 %i.dr, -2                      ; 3 uses
  %i.ds = add i64 %.0102.i.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = add nuw i64 %.0102.i.i.i.i, %index      ; 3 uses
  %i.du = add i64 %i.dt, 1                        ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.dt
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.du
  %wide.load = load <2 x i64>, ptr %i.dv, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  %wide.load121 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.dt
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.du
  store <2 x i64> %wide.load, ptr %i.dx, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  store <2 x i64> %wide.load121, ptr %i.dy, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !1441

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, %middle.block
  %.196.i.i.i.i.ph = phi i64 [ %.0102.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.ea = icmp samesign ult i32 %i.dm, -38
  br i1 %i.ea, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i
  %.196.us.us.i.i.i.i = phi i64 [ %i.ed, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i ], [ %.0102.i.i.i.i, %.lr.ph.split.us.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35), !noalias !1435
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %35, i64 noundef 0), !noalias !1435
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.us.us.i.i.i.i
  %i.ec = load <2 x i64>, ptr %35, align 16, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %35), !noalias !1435
  store <2 x i64> %i.ec, ptr %i.eb, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.ed = add i64 %.196.us.us.i.i.i.i, 1          ; 2 uses
  %exitcond118.not.i.i.i.i = icmp eq i64 %i.ed, %i.dk
  br i1 %exitcond118.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, !llvm.loop !1442

.lr.ph.split.us.split.i.i.i.i:                    ; preds = %.lr.ph.split.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i
  %.196.us.i.i.i.i = phi i64 [ %i.em, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %.0102.i.i.i.i, %.lr.ph.split.us.i.i.i.i ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.196.us.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35), !noalias !1435
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23, !noalias !1435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 16 dereferenceable(16) %i.dq, i64 16, i1 false), !tbaa.struct !1077, !noalias !1435
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23, !noalias !1435
  %i.ef = load <2 x i64>, ptr %i.ee, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  store <2 x i64> %i.ef, ptr %37, align 16, !tbaa !79, !noalias !1435
  %i.eg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %36), !noalias !1435 ; 0 uses
  %i.eh = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %37), !noalias !1435
  br i1 %i.eh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split.us.split.i.i.i.i
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %35, i64 noundef 0), !noalias !1435
  %.fca.0.load.i.i.us.pre.i.i.i.i = load i64, ptr %35, align 16, !noalias !1435
  %.fca.1.load.i.i.us.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !1435
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

bb.ad:                                            ; preds = %.lr.ph.split.us.split.i.i.i.i
  %i.ei = call { i64, i64 } @_ZNK6duckdb10uhugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %36), !noalias !1435 ; 2 uses
  %i.ej = extractvalue { i64, i64 } %i.ei, 0
  %i.ek = extractvalue { i64, i64 } %i.ei, 1
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.fca.1.load.i.i.us.i.i.i.i = phi i64 [ %i.ek, %bb.ad ], [ %.fca.1.load.i.i.us.pre.i.i.i.i, %bb.ac ]
  %.fca.0.load.i.i.us.i.i.i.i = phi i64 [ %i.ej, %bb.ad ], [ %.fca.0.load.i.i.us.pre.i.i.i.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %35), !noalias !1435
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.us.i.i.i.i ; 2 uses
  store i64 %.fca.0.load.i.i.us.i.i.i.i, ptr %i.el, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %.sroa.420.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %.fca.1.load.i.i.us.i.i.i.i, ptr %.sroa.420.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.em = add i64 %.196.us.i.i.i.i, 1             ; 2 uses
  %exitcond117.not.i.i.i.i = icmp eq i64 %i.em, %i.dk
  br i1 %exitcond117.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i, !llvm.loop !1442

.preheader91.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.en = icmp ult i64 %.0102.i.i.i.i, %i.dj
  br i1 %i.en, label %.lr.ph99.i.i.i.i, label %.loopexit92.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i
  %.196.i.i.i.i = phi i64 [ %i.er, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.196.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader139 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.196.i.i.i.i
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.196.i.i.i.i
  %i.eq = load <2 x i64>, ptr %i.eo, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  store <2 x i64> %i.eq, ptr %i.ep, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.er = add nuw i64 %.196.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.er, %i.dk
  br i1 %exitcond.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, !llvm.loop !1443

.lr.ph99.i.i.i.i:                                 ; preds = %.preheader91.i.i.i.i, %bb.am
  %.298.i.i.i.i = phi i64 [ %i.fj, %bb.am ], [ %.0102.i.i.i.i, %.preheader91.i.i.i.i ] ; 4 uses
  %i.es = sub nuw i64 %.298.i.i.i.i, %.0102.i.i.i.i
  %i.et = shl nuw i64 1, %i.es
  %i.eu = and i64 %i.et, %i.dh
  %.not.i.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i.i.i, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph99.i.i.i.i
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.298.i.i.i.i ; 2 uses
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %i.ev, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.415.0.copyload.i.i.i.i = load i64, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437 ; 2 uses
  %i.ew = load i32, ptr %i.an, align 4, !tbaa !3, !alias.scope !1431, !noalias !1436 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32), !noalias !1435
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.ey = icmp samesign ult i32 %i.ew, -38
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 0), !noalias !1435
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23, !noalias !1435
  %i.ez = sub nsw i32 0, %i.ew
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 16 dereferenceable(16) %i.fb, i64 16, i1 false), !tbaa.struct !1077, !noalias !1435
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23, !noalias !1435
  store i64 %.sroa.014.0.copyload.i.i.i.i, ptr %34, align 8, !tbaa !79, !noalias !1435
  store i64 %.sroa.415.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i78.i.i.i.i, align 8, !tbaa !79, !noalias !1435
  %i.fc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_tdVERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %33), !noalias !1435 ; 0 uses
  %i.fd = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %34), !noalias !1435
  br i1 %i.fd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fe = call { i64, i64 } @_ZNK6duckdb10uhugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %33), !noalias !1435 ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fe, 0
  store i64 %i.ff, ptr %32, align 16, !noalias !1435
  %i.fg = extractvalue { i64, i64 } %i.fe, 1
  store i64 %i.fg, ptr %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i, align 8, !noalias !1435
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 0), !noalias !1435
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23, !noalias !1435
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

bb.al:                                            ; preds = %bb.ae
  store i64 %.sroa.014.0.copyload.i.i.i.i, ptr %32, align 16, !tbaa !79, !noalias !1435
  store i64 %.sroa.415.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx5.i.i72.i.i.i.i, align 8, !tbaa !79, !noalias !1435
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i: ; preds = %bb.al, %bb.ak, %bb.ag
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.298.i.i.i.i
  %i.fi = load <2 x i64>, ptr %32, align 16, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %32), !noalias !1435
  store <2 x i64> %i.fi, ptr %i.fh, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  br label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit79.i.i.i.i, %.lr.ph99.i.i.i.i
  %i.fj = add i64 %.298.i.i.i.i, 1                ; 2 uses
  %exitcond119.not.i.i.i.i = icmp eq i64 %i.fj, %i.dj
  br i1 %exitcond119.not.i.i.i.i, label %.loopexit92.i.i.i.i, label %.lr.ph99.i.i.i.i, !llvm.loop !1444

.loopexit92.i.i.i.i:                              ; preds = %bb.am, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i, %middle.block, %.preheader91.i.i.i.i, %.preheader93.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.dj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.0102.i.i.i.i, %.preheader91.i.i.i.i ], [ %.0102.i.i.i.i, %.preheader93.i.i.i.i ], [ %i.dk, %middle.block ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.us.i.i.i.i ], [ %i.dj, %bb.am ]
  %i.fk = add nuw nsw i64 %.069101.i.i.i.i, 1     ; 2 uses
  %exitcond120.not.i.i.i.i = icmp eq i64 %i.fk, %i.dc
  br i1 %exitcond120.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %bb.ab, !llvm.loop !1445

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i
  %.070104.i.i.i.i = phi i64 [ %i.fo, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i ], [ %.070104.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i.preheader136 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.070104.i.i.i.i
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.070104.i.i.i.i
  %i.fn = load <2 x i64>, ptr %i.fl, align 8, !tbaa !79, !alias.scope !1428, !noalias !1437
  store <2 x i64> %i.fn, ptr %i.fm, align 8, !tbaa !79, !alias.scope !1433, !noalias !1438
  %i.fo = add nuw i64 %.070104.i.i.i.i, 1         ; 2 uses
  %exitcond121.not.i.i.i.i = icmp eq i64 %i.fo, %i.d
  br i1 %exitcond121.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardINS_10uhugeint_tEiS2_NS_12_GLOBAL__N_120TruncIntegerOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_120TruncIntegerOperatorENS_10uhugeint_tEiS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit87.i.i.i.i, !llvm.loop !1446

bb.an:                                            ; preds = %bb.k
  %i.fp = icmp eq i8 %i.f, 0
  %or.cond5.i.i = and i1 %i.g, %i.fp
  br i1 %or.cond5.i.i, label %bb.ao, label %bb.cc

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !77 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !77 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i43.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i: ; preds = %bb.ao
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !79
  %i.fx = trunc i64 %i.fw to i1
  br i1 %i.fx, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %bb.ap
end_hunk_9
begin_hunk_10_@_ZN6duckdb14ScalarFunction13UnaryFunctionIffNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load float, ptr %i.h, align 4, !tbaa !164 ; 2 uses
  %i.n = tail call float @llvm.round.f32(float %i.m) ; 2 uses
  %i.o = tail call float @llvm.fabs.f32(float %i.n)
  %or.cond.i.i.i.i = fcmp ueq float %i.o, +inf
  %.0.i.i59.i.i = select i1 %or.cond.i.i.i.i, float %i.m, float %i.n
  store float %.0.i.i59.i.i, ptr %i.f, align 4, !tbaa !164
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77   ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77   ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78, !noalias !1505 ; 2 uses
  %.not.i.i60.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i60.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check38 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check38, label %.lr.ph17.i.i.i.preheader64, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.vec41 = and i64 %i.c, -4                     ; 3 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph39
  %index43 = phi i64 [ 0, %vector.ph39 ], [ %index.next45, %vector.body42 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index43
  %wide.load44 = load <4 x float>, ptr %i.v, align 4, !tbaa !164, !alias.scope !1500, !noalias !1503 ; 2 uses
  %i.w = tail call <4 x float> @llvm.round.v4f32(<4 x float> %wide.load44) ; 2 uses
  %i.x = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.w)
  %i.y = fcmp ueq <4 x float> %i.x, splat (float +inf)
  %i.z = select <4 x i1> %i.y, <4 x float> %wide.load44, <4 x float> %i.w
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index43
  store <4 x float> %i.z, ptr %i.aa, align 4, !tbaa !164, !alias.scope !1503, !noalias !1500
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.ab, label %middle.block46, label %vector.body42, !llvm.loop !1506

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.c, %n.vec41
  br i1 %cmp.n47, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader64

.lr.ph17.i.i.i.preheader64:                       ; preds = %.lr.ph17.i.i.i.preheader, %middle.block46
  %.016.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec41, %middle.block46 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.u, ptr %i.ac, align 8, !tbaa !78, !noalias !1505
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = icmp eq ptr %2, %i.a
  br i1 %i.ae, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26, !noalias !1505 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.af, align 8, !tbaa !13, !noalias !1505
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !1505
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !3, !noalias !1505
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !3, !noalias !1505
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4, !noalias !1505 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26, !noalias !1505 ; 8 uses
  store <2 x ptr> %i.ai, ptr %i.ad, align 8, !tbaa !13, !noalias !1505
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8, !noalias !1505 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aq, align 8, !tbaa !32, !noalias !1505
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !34, !noalias !1505
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !22, !noalias !1505
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1505
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #23, !noalias !1505, !inline_history !1507
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !22, !noalias !1505
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1505
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #23, !noalias !1505, !inline_history !1507
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !1505
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !3, !noalias !1505
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4, !noalias !1505
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.at, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.be, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #23, !noalias !1505
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !83, !noalias !1505
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !83, !noalias !1505
  %i.bi = add i64 %i.c, 63
  %i.bj = lshr i64 %i.bi, 6                       ; 2 uses
  %.not18.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !78, !noalias !1505 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bk, null
  br label %bb.p

bb.p:                                             ; preds = %.loopexit5.i.i.i, %.lr.ph15.i.i.i
  %.05414.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %.4.i.i.i, %.loopexit5.i.i.i ] ; 12 uses
  %.05513.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %i.ct, %.loopexit5.i.i.i ] ; 2 uses
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %bb.p
  %i.bl = add i64 %.05414.i.i.i, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.c)
  br label %.preheader6.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.05513.i.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !79, !noalias !1505 ; 2 uses
  %i.bp = add i64 %.05414.i.i.i, 64
  %i.bq = tail call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.c) ; 5 uses
  switch i64 %i.bo, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.br = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.bq, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 5 uses
  %i.bs = icmp ult i64 %.05414.i.i.i, %i.br
  br i1 %i.bs, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.bt = sub nuw i64 %i.br, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bv
  %wide.load = load <4 x float>, ptr %i.bw, align 4, !tbaa !164, !alias.scope !1500, !noalias !1503 ; 2 uses
  %i.bx = tail call <4 x float> @llvm.round.v4f32(<4 x float> %wide.load) ; 2 uses
  %i.by = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bx)
  %i.bz = fcmp ueq <4 x float> %i.by, splat (float +inf)
  %i.ca = select <4 x i1> %i.bz, <4 x float> %wide.load, <4 x float> %i.bx
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bv
  store <4 x float> %i.ca, ptr %i.cb, align 4, !tbaa !164, !alias.scope !1503, !noalias !1500
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1508

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader65

.lr.ph.i.i.i.preheader65:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cd = icmp ult i64 %.05414.i.i.i, %i.bq
  br i1 %i.cd, label %.lr.ph11.i.i.i, label %.loopexit5.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader65, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader65 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.19.i.i.i
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !164, !alias.scope !1500, !noalias !1503 ; 2 uses
  %i.cg = tail call float @llvm.round.f32(float %i.cf) ; 2 uses
  %i.ch = tail call float @llvm.fabs.f32(float %i.cg)
  %or.cond.i.i.i.i.i = fcmp ueq float %i.ch, +inf
  %.0.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, float %i.cf, float %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.19.i.i.i
  store float %.0.i.i.i.i.i, ptr %i.ci, align 4, !tbaa !164, !alias.scope !1503, !noalias !1500
  %i.cj = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cj, %i.br
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1509

.lr.ph11.i.i.i:                                   ; preds = %.preheader4.i.i.i, %bb.r
  %.210.i.i.i = phi i64 [ %i.cs, %bb.r ], [ %.05414.i.i.i, %.preheader4.i.i.i ] ; 4 uses
  %i.ck = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.bo
  %.not.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.210.i.i.i
  %i.co = load float, ptr %i.cn, align 4, !tbaa !164, !alias.scope !1500, !noalias !1503 ; 2 uses
  %i.cp = tail call float @llvm.round.f32(float %i.co) ; 2 uses
  %i.cq = tail call float @llvm.fabs.f32(float %i.cp)
  %or.cond.i.i57.i.i.i = fcmp ueq float %i.cq, +inf
  %.0.i.i58.i.i.i = select i1 %or.cond.i.i57.i.i.i, float %i.co, float %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.210.i.i.i
  store float %.0.i.i58.i.i.i, ptr %i.cr, align 4, !tbaa !164, !alias.scope !1503, !noalias !1500
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.cs = add nuw i64 %.210.i.i.i, 1              ; 2 uses
  %exitcond23.not.i.i.i = icmp eq i64 %i.cs, %i.bq
  br i1 %exitcond23.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !1510

.loopexit5.i.i.i:                                 ; preds = %bb.r, %.lr.ph.i.i.i, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.bq, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.br, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.br, %.lr.ph.i.i.i ], [ %i.bq, %bb.r ]
  %i.ct = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i64 %i.ct, %i.bj
  br i1 %exitcond24.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit, label %bb.p, !llvm.loop !1511

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader64, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.cz, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader64 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.016.i.i.i
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !164, !alias.scope !1500, !noalias !1503 ; 2 uses
  %i.cw = tail call float @llvm.round.f32(float %i.cv) ; 2 uses
  %i.cx = tail call float @llvm.fabs.f32(float %i.cw)
  %or.cond.i.i59.i.i.i = fcmp ueq float %i.cx, +inf
  %.0.i.i60.i.i.i = select i1 %or.cond.i.i59.i.i.i, float %i.cv, float %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.016.i.i.i
  store float %.0.i.i60.i.i.i, ptr %i.cy, align 4, !tbaa !164, !alias.scope !1503, !noalias !1500
  %i.cz = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.cz, %i.c
  br i1 %exitcond25.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !1512

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.t unwind label %bb.aq

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.u unwind label %bb.aq

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.v unwind label %bb.ar

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !77 ; 6 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.w unwind label %.loopexit.split-lp.i.i

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !131 ; 6 uses
  %i.de = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.x unwind label %.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !78, !noalias !1520
  %.not.i.i61.i.i = icmp eq ptr %i.dh, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i61.i.i, label %.preheader.i67.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.x
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i62.i.i

.lr.ph.i62.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !153, !alias.scope !1518, !noalias !1521 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.di, null
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.y

.preheader.i67.i.i:                               ; preds = %bb.x
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph5.i.i.i

.lr.ph5.i.i.i:                                    ; preds = %.preheader.i67.i.i
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !153, !alias.scope !1518, !noalias !1521 ; 4 uses
  %.not.i31.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i31.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %xtraiter = and i64 %i.c, 1
  %i.dl = icmp eq i64 %i.c, 1
  br i1 %i.dl, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %min.iters.check50 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check50, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader61, label %vector.ph51

vector.ph51:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader
  %n.vec53 = and i64 %i.c, -4                     ; 3 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next57, %vector.body54 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index55
  %wide.load56 = load <4 x float>, ptr %i.dm, align 4, !tbaa !164, !alias.scope !1513, !noalias !1522 ; 2 uses
  %i.dn = call <4 x float> @llvm.round.v4f32(<4 x float> %wide.load56) ; 2 uses
  %i.do = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dn)
  %i.dp = fcmp ueq <4 x float> %i.do, splat (float +inf)
  %i.dq = select <4 x i1> %i.dp, <4 x float> %wide.load56, <4 x float> %i.dn
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index55
  store <4 x float> %i.dq, ptr %i.dr, align 4, !tbaa !164, !alias.scope !1516, !noalias !1523
  %index.next57 = add nuw i64 %index55, 4         ; 2 uses
  %i.ds = icmp eq i64 %index.next57, %n.vec53
  br i1 %i.ds, label %middle.block58, label %vector.body54, !llvm.loop !1524

middle.block58:                                   ; preds = %vector.body54
  %cmp.n59 = icmp eq i64 %i.c, %n.vec53
  br i1 %cmp.n59, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader61

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader61: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader, %middle.block58
  %.0284.us.i.i.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader ], [ %n.vec53, %middle.block58 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader61, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i
  %.0284.us.i.i.i = phi i64 [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i ], [ %.0284.us.i.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader61 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.0284.us.i.i.i
  %i.du = load float, ptr %i.dt, align 4, !tbaa !164, !alias.scope !1513, !noalias !1522 ; 2 uses
  %i.dv = call float @llvm.round.f32(float %i.du) ; 2 uses
  %i.dw = call float @llvm.fabs.f32(float %i.dv)
  %or.cond.i.i33.us.i.i.i = fcmp ueq float %i.dw, +inf
  %.0.i.i34.us.i.i.i = select i1 %or.cond.i.i33.us.i.i.i, float %i.du, float %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.0284.us.i.i.i
  store float %.0.i.i34.us.i.i.i, ptr %i.dx, align 4, !tbaa !164, !alias.scope !1516, !noalias !1523
  %i.dy = add nuw i64 %.0284.us.i.i.i, 1          ; 2 uses
  %exitcond11.not.i.i.i = icmp eq i64 %i.dy, %i.c
  br i1 %exitcond11.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i, !llvm.loop !1525

bb.y:                                             ; preds = %bb.ad, %.lr.ph.i62.i.i
  %.03.i.i.i = phi i64 [ 0, %.lr.ph.i62.i.i ], [ %i.ez, %bb.ad ] ; 6 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.03.i.i.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3, !noalias !1520
  %i.eb = zext i32 %i.ea to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

end_hunk_10
begin_hunk_11_@_ZN6duckdb14ScalarFunction14BinaryFunctionIfifNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23, !inline_history !1530
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23, !inline_history !1530
  br label %thread-pre-split.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.p ], [ %i.cf, %bb.q ]
  %i.cg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cg, label %bb.r, label %thread-pre-split.i.i.i, !prof !36

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.n, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !78
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %.val.i.i.i = phi ptr [ %.val.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.be, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !83
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  %.not.i.i18.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i18.i.i.i, label %.preheader.i.i.i.i, label %bb.t

.preheader.i.i.i.i:                               ; preds = %bb.s
  %.not18.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not18.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %.lr.ph16.i.i.i.i

.lr.ph16.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !3, !alias.scope !1534, !noalias !1538 ; 3 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph16.split.us.i.i.i.i, label %.lr.ph16.split.i.i.i.i

.lr.ph16.split.us.i.i.i.i:                        ; preds = %.lr.ph16.i.i.i.i
  %i.cm = sitofp i32 %i.ck to float
  %i.cn = fneg float %i.cm
  %i.co = fpext float %i.cn to double
  %i.cp = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.co) #23, !tbaa !3, !noalias !1539 ; 3 uses
  %min.iters.check149 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check149, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph16.split.us.i.i.i.i
  %n.vec152 = and i64 %i.d, -4                    ; 3 uses
  %broadcast.splatinsert153 = insertelement <4 x double> poison, double %i.cp, i64 0
  %broadcast.splat154 = shufflevector <4 x double> %broadcast.splatinsert153, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph150
  %index156 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body155 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index156
  %wide.load157 = load <4 x float>, ptr %i.cq, align 4, !tbaa !164, !alias.scope !1531, !noalias !1540
  %i.cr = fpext <4 x float> %wide.load157 to <4 x double>
  %i.cs = fdiv <4 x double> %i.cr, %broadcast.splat154
  %i.ct = tail call <4 x double> @llvm.round.v4f64(<4 x double> %i.cs)
  %i.cu = fmul <4 x double> %broadcast.splat154, %i.ct ; 2 uses
  %i.cv = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.cu)
  %i.cw = fcmp ueq <4 x double> %i.cv, splat (double +inf)
  %i.cx = fptrunc <4 x double> %i.cu to <4 x float>
  %i.cy = select <4 x i1> %i.cw, <4 x float> zeroinitializer, <4 x float> %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index156
  store <4 x float> %i.cy, ptr %i.cz, align 4, !tbaa !164, !alias.scope !1536, !noalias !1541
  %index.next158 = add nuw i64 %index156, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next158, %n.vec152
  br i1 %i.da, label %middle.block159, label %vector.body155, !llvm.loop !1542

middle.block159:                                  ; preds = %vector.body155
  %cmp.n160 = icmp eq i64 %i.d, %n.vec152
  br i1 %cmp.n160, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader: ; preds = %.lr.ph16.split.us.i.i.i.i, %middle.block159
  %.05815.us.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.split.us.i.i.i.i ], [ %n.vec152, %middle.block159 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i
  %.05815.us.i.i.i.i = phi i64 [ %i.dk, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i ], [ %.05815.us.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.05815.us.i.i.i.i
  %i.dc = load float, ptr %i.db, align 4, !tbaa !164, !alias.scope !1531, !noalias !1540
  %i.dd = fpext float %i.dc to double
  %i.de = fdiv double %i.dd, %i.cp
  %i.df = tail call double @llvm.round.f64(double %i.de)
  %i.dg = fmul double %i.cp, %i.df                ; 2 uses
  %i.dh = tail call double @llvm.fabs.f64(double %i.dg)
  %or.cond.i.i70.us.i.i.i.i = fcmp ueq double %i.dh, +inf
  %i.di = fptrunc double %i.dg to float
  %.2.i.i69.us.i.i.i.i = select i1 %or.cond.i.i70.us.i.i.i.i, float 0.000000e+00, float %i.di
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.05815.us.i.i.i.i
  store float %.2.i.i69.us.i.i.i.i, ptr %i.dj, align 4, !tbaa !164, !alias.scope !1536, !noalias !1541
  %i.dk = add nuw i64 %.05815.us.i.i.i.i, 1       ; 2 uses
  %exitcond29.not.i.i.i.i = icmp eq i64 %i.dk, %i.d
  br i1 %exitcond29.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i, !llvm.loop !1543

.lr.ph16.split.i.i.i.i:                           ; preds = %.lr.ph16.i.i.i.i
  %i.dl = uitofp nneg i32 %i.ck to float
  %i.dm = fpext float %i.dl to double
  %i.dn = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.dm) #23, !tbaa !3, !noalias !1539 ; 3 uses
  %min.iters.check135 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check135, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph16.split.i.i.i.i
  %n.vec138 = and i64 %i.d, -4                    ; 3 uses
  %broadcast.splatinsert139 = insertelement <4 x double> poison, double %i.dn, i64 0
  %broadcast.splat140 = shufflevector <4 x double> %broadcast.splatinsert139, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph136
  %index142 = phi i64 [ 0, %vector.ph136 ], [ %index.next144, %vector.body141 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index142
  %wide.load143 = load <4 x float>, ptr %i.do, align 4, !tbaa !164, !alias.scope !1531, !noalias !1540 ; 2 uses
  %i.dp = fpext <4 x float> %wide.load143 to <4 x double>
  %i.dq = fmul <4 x double> %broadcast.splat140, %i.dp
  %i.dr = tail call <4 x double> @llvm.round.v4f64(<4 x double> %i.dq)
  %i.ds = fdiv <4 x double> %i.dr, %broadcast.splat140 ; 2 uses
  %i.dt = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.ds)
  %i.du = fcmp ueq <4 x double> %i.dt, splat (double +inf)
  %i.dv = fptrunc <4 x double> %i.ds to <4 x float>
  %i.dw = select <4 x i1> %i.du, <4 x float> %wide.load143, <4 x float> %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index142
  store <4 x float> %i.dw, ptr %i.dx, align 4, !tbaa !164, !alias.scope !1536, !noalias !1541
  %index.next144 = add nuw i64 %index142, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.dy, label %middle.block145, label %vector.body141, !llvm.loop !1544

middle.block145:                                  ; preds = %vector.body141
  %cmp.n146 = icmp eq i64 %i.d, %n.vec138
  br i1 %cmp.n146, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader: ; preds = %.lr.ph16.split.i.i.i.i, %middle.block145
  %.05815.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.split.i.i.i.i ], [ %n.vec138, %middle.block145 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.dz = add i64 %i.d, 63
  %i.ea = lshr i64 %i.dz, 6                       ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not17.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.t, %.loopexit5.i.i.i.i
  %.014.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit5.i.i.i.i ], [ 0, %bb.t ] ; 15 uses
  %.05713.i.i.i.i = phi i64 [ %i.hn, %.loopexit5.i.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.05713.i.i.i.i
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !79, !noalias !1539 ; 2 uses
  %i.ed = add i64 %.014.i.i.i.i, 64
  %i.ee = tail call noundef i64 @llvm.umin.i64(i64 %i.ed, i64 %i.d) ; 13 uses
  switch i64 %i.ec, label %.preheader4.i.i.i.i [
    i64 -1, label %.preheader6.i.i.i.i
    i64 0, label %.loopexit5.i.i.i.i
  ]

.preheader6.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.ef = icmp ult i64 %.014.i.i.i.i, %i.ee
  br i1 %i.ef, label %.lr.ph.i.i.i.i, label %.loopexit5.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader6.i.i.i.i
  %i.eg = load i32, ptr %i.av, align 4, !tbaa !3, !alias.scope !1534, !noalias !1538 ; 3 uses
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.ei = sitofp i32 %i.eg to float
  %i.ej = fneg float %i.ei
  %i.ek = fpext float %i.ej to double
  %i.el = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ek) #23, !tbaa !3, !noalias !1539 ; 3 uses
  %i.em = sub i64 %i.ee, %.014.i.i.i.i            ; 3 uses
  %min.iters.check = icmp ult i64 %i.em, 4
  br i1 %min.iters.check, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i.i.i.i
  %n.vec = and i64 %i.em, -4                      ; 3 uses
  %i.en = add i64 %.014.i.i.i.i, %n.vec
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.el, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eo = add nuw i64 %.014.i.i.i.i, %index       ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.eo
  %wide.load = load <4 x float>, ptr %i.ep, align 4, !tbaa !164, !alias.scope !1531, !noalias !1540
  %i.eq = fpext <4 x float> %wide.load to <4 x double>
  %i.er = fdiv <4 x double> %i.eq, %broadcast.splat
  %i.es = tail call <4 x double> @llvm.round.v4f64(<4 x double> %i.er)
  %i.et = fmul <4 x double> %broadcast.splat, %i.es ; 2 uses
  %i.eu = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.et)
  %i.ev = fcmp ueq <4 x double> %i.eu, splat (double +inf)
  %i.ew = fptrunc <4 x double> %i.et to <4 x float>
  %i.ex = select <4 x i1> %i.ev, <4 x float> zeroinitializer, <4 x float> %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.eo
  store <4 x float> %i.ex, ptr %i.ey, align 4, !tbaa !164, !alias.scope !1536, !noalias !1541
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !1545

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.em, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i.i, %middle.block
  %.19.us.i.i.i.i.ph = phi i64 [ %.014.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ %i.en, %middle.block ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i
  %.19.us.i.i.i.i = phi i64 [ %i.fj, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %.19.us.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.19.us.i.i.i.i
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !164, !alias.scope !1531, !noalias !1540
  %i.fc = fpext float %i.fb to double
  %i.fd = fdiv double %i.fc, %i.el
  %i.fe = tail call double @llvm.round.f64(double %i.fd)
  %i.ff = fmul double %i.el, %i.fe                ; 2 uses
  %i.fg = tail call double @llvm.fabs.f64(double %i.ff)
  %or.cond.i.i.us.i.i.i.i = fcmp ueq double %i.fg, +inf
  %i.fh = fptrunc double %i.ff to float
  %.2.i.i.us.i.i.i.i = select i1 %or.cond.i.i.us.i.i.i.i, float 0.000000e+00, float %i.fh
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.19.us.i.i.i.i
  store float %.2.i.i.us.i.i.i.i, ptr %i.fi, align 4, !tbaa !164, !alias.scope !1536, !noalias !1541
  %i.fj = add nuw i64 %.19.us.i.i.i.i, 1          ; 2 uses
  %exitcond25.not.i.i.i.i = icmp eq i64 %i.fj, %i.ee
  br i1 %exitcond25.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, !llvm.loop !1546

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.fk = uitofp nneg i32 %i.eg to float
  %i.fl = fpext float %i.fk to double
  %i.fm = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.fl) #23, !tbaa !3, !noalias !1539 ; 3 uses
  %i.fn = sub i64 %i.ee, %.014.i.i.i.i            ; 3 uses
  %min.iters.check121 = icmp ult i64 %i.fn, 4
  br i1 %min.iters.check121, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph.split.i.i.i.i
  %n.vec124 = and i64 %i.fn, -4                   ; 3 uses
  %i.fo = add i64 %.014.i.i.i.i, %n.vec124
  %broadcast.splatinsert125 = insertelement <4 x double> poison, double %i.fm, i64 0
  %broadcast.splat126 = shufflevector <4 x double> %broadcast.splatinsert125, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph122
  %index128 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body127 ] ; 2 uses
  %i.fp = add nuw i64 %.014.i.i.i.i, %index128    ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.fp
  %wide.load129 = load <4 x float>, ptr %i.fq, align 4, !tbaa !164, !alias.scope !1531, !noalias !1540 ; 2 uses
  %i.fr = fpext <4 x float> %wide.load129 to <4 x double>
  %i.fs = fmul <4 x double> %broadcast.splat126, %i.fr
  %i.ft = tail call <4 x double> @llvm.round.v4f64(<4 x double> %i.fs)
  %i.fu = fdiv <4 x double> %i.ft, %broadcast.splat126 ; 2 uses
  %i.fv = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.fu)
  %i.fw = fcmp ueq <4 x double> %i.fv, splat (double +inf)
  %i.fx = fptrunc <4 x double> %i.fu to <4 x float>
  %i.fy = select <4 x i1> %i.fw, <4 x float> %wide.load129, <4 x float> %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.fp
  store <4 x float> %i.fy, ptr %i.fz, align 4, !tbaa !164, !alias.scope !1536, !noalias !1541
  %index.next130 = add nuw i64 %index128, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.ga, label %middle.block131, label %vector.body127, !llvm.loop !1547

middle.block131:                                  ; preds = %vector.body127
  %cmp.n132 = icmp eq i64 %i.fn, %n.vec124
  br i1 %cmp.n132, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i, %middle.block131
  %.19.i.i.i.i.ph = phi i64 [ %.014.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.fo, %middle.block131 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

.preheader4.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.gb = icmp ult i64 %.014.i.i.i.i, %i.ee
  br i1 %i.gb, label %.lr.ph11.i.i.i.i, label %.loopexit5.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i
  %.19.i.i.i.i = phi i64 [ %i.gl, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.19.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.19.i.i.i.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !164, !alias.scope !1531, !noalias !1540 ; 2 uses
  %i.ge = fpext float %i.gd to double
  %i.gf = fmul double %i.fm, %i.ge
  %i.gg = tail call double @llvm.round.f64(double %i.gf)
  %i.gh = fdiv double %i.gg, %i.fm                ; 2 uses
  %i.gi = tail call double @llvm.fabs.f64(double %i.gh)
  %or.cond23.i.i.i.i.i.i = fcmp ueq double %i.gi, +inf
  %i.gj = fptrunc double %i.gh to float
  %.2.i.i.i.i.i.i = select i1 %or.cond23.i.i.i.i.i.i, float %i.gd, float %i.gj
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.19.i.i.i.i
  store float %.2.i.i.i.i.i.i, ptr %i.gk, align 4, !tbaa !164, !alias.scope !1536, !noalias !1541
  %i.gl = add nuw i64 %.19.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gl, %i.ee
  br i1 %exitcond.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, !llvm.loop !1548

.lr.ph11.i.i.i.i:                                 ; preds = %.preheader4.i.i.i.i, %bb.x
  %.210.i.i.i.i = phi i64 [ %i.hm, %bb.x ], [ %.014.i.i.i.i, %.preheader4.i.i.i.i ] ; 4 uses
  %i.gm = sub nuw i64 %.210.i.i.i.i, %.014.i.i.i.i
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = and i64 %i.gn, %i.ec
  %.not.i.i.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.lr.ph11.i.i.i.i
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.210.i.i.i.i
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !164, !alias.scope !1531, !noalias !1540 ; 3 uses
  %i.gr = load i32, ptr %i.av, align 4, !tbaa !3, !alias.scope !1534, !noalias !1538 ; 3 uses
  %i.gs = icmp slt i32 %i.gr, 0
  br i1 %i.gs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gt = sitofp i32 %i.gr to float
  %i.gu = fneg float %i.gt
  %i.gv = fpext float %i.gu to double
  %i.gw = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.gv) #23, !tbaa !3, !noalias !1539 ; 2 uses
  %i.gx = fpext float %i.gq to double
  %i.gy = fdiv double %i.gx, %i.gw
  %i.gz = tail call double @llvm.round.f64(double %i.gy)
  %i.ha = fmul double %i.gw, %i.gz                ; 2 uses
  %i.hb = tail call double @llvm.fabs.f64(double %i.ha)
  %or.cond.i.i64.i.i.i.i = fcmp ueq double %i.hb, +inf
  br i1 %or.cond.i.i64.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, label %.critedge.i.i61.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.hc = uitofp nneg i32 %i.gr to float
  %i.hd = fpext float %i.hc to double
  %i.he = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.hd) #23, !tbaa !3, !noalias !1539 ; 2 uses
  %i.hf = fpext float %i.gq to double
  %i.hg = fmul double %i.he, %i.hf
  %i.hh = tail call double @llvm.round.f64(double %i.hg)
  %i.hi = fdiv double %i.hh, %i.he                ; 2 uses
  %i.hj = tail call double @llvm.fabs.f64(double %i.hi)
  %or.cond23.i.i60.i.i.i.i = fcmp ueq double %i.hj, +inf
  br i1 %or.cond23.i.i60.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, label %.critedge.i.i61.i.i.i.i

.critedge.i.i61.i.i.i.i:                          ; preds = %bb.w, %bb.v
  %.020.i.i62.i.i.i.i = phi double [ %i.ha, %bb.v ], [ %i.hi, %bb.w ]
  %i.hk = fptrunc double %.020.i.i62.i.i.i.i to float
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i: ; preds = %.critedge.i.i61.i.i.i.i, %bb.w, %bb.v
  %.2.i.i63.i.i.i.i = phi float [ %i.hk, %.critedge.i.i61.i.i.i.i ], [ %i.gq, %bb.w ], [ 0.000000e+00, %bb.v ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.210.i.i.i.i
  store float %.2.i.i63.i.i.i.i, ptr %i.hl, align 4, !tbaa !164, !alias.scope !1536, !noalias !1541
  br label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, %.lr.ph11.i.i.i.i
  %i.hm = add nuw i64 %.210.i.i.i.i, 1            ; 2 uses
  %exitcond26.not.i.i.i.i = icmp eq i64 %i.hm, %i.ee
  br i1 %exitcond26.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %.lr.ph11.i.i.i.i, !llvm.loop !1549

.loopexit5.i.i.i.i:                               ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, %bb.x, %middle.block131, %middle.block, %.preheader4.i.i.i.i, %.preheader6.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.ee, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.ee, %middle.block131 ], [ %.014.i.i.i.i, %.preheader4.i.i.i.i ], [ %.014.i.i.i.i, %.preheader6.i.i.i.i ], [ %i.ee, %middle.block ], [ %i.ee, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %i.ee, %bb.x ], [ %i.ee, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ]
  %i.hn = add nuw nsw i64 %.05713.i.i.i.i, 1      ; 2 uses
  %exitcond27.not.i.i.i.i = icmp eq i64 %i.hn, %i.ea
  br i1 %exitcond27.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, !llvm.loop !1550

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i
  %.05815.i.i.i.i = phi i64 [ %i.hx, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i ], [ %.05815.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.05815.i.i.i.i
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !164, !alias.scope !1531, !noalias !1540 ; 2 uses
  %i.hq = fpext float %i.hp to double
  %i.hr = fmul double %i.dn, %i.hq
  %i.hs = tail call double @llvm.round.f64(double %i.hr)
  %i.ht = fdiv double %i.hs, %i.dn                ; 2 uses
  %i.hu = tail call double @llvm.fabs.f64(double %i.ht)
  %or.cond23.i.i66.i.i.i.i = fcmp ueq double %i.hu, +inf
  %i.hv = fptrunc double %i.ht to float
  %.2.i.i69.i.i.i.i = select i1 %or.cond23.i.i66.i.i.i.i, float %i.hp, float %i.hv
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.05815.i.i.i.i
  store float %.2.i.i69.i.i.i.i, ptr %i.hw, align 4, !tbaa !164, !alias.scope !1536, !noalias !1541
  %i.hx = add nuw i64 %.05815.i.i.i.i, 1          ; 2 uses
  %exitcond28.not.i.i.i.i = icmp eq i64 %i.hx, %i.d
  br i1 %exitcond28.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEfifEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i, !llvm.loop !1551

bb.y:                                             ; preds = %bb.f
  %i.hy = icmp eq i8 %i.f, 0
  %or.cond5.i.i = and i1 %i.g, %i.hy
  br i1 %or.cond5.i.i, label %bb.z, label %bb.ax

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !77 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !77 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i43.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i: ; preds = %bb.z
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !79
  %i.ig = trunc i64 %i.if to i1
  br i1 %i.ig, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIfifNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i, %bb.z
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !77 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !78 ; 2 uses
  store ptr %i.il, ptr %i.ij, align 8, !tbaa !78
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.in = icmp eq ptr %2, %i.b
  br i1 %i.in, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !26 ; 2 uses
  %i.ir = load <2 x ptr>, ptr %i.io, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i46.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i.i.i.i.i46.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 3 uses
  %i.it = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i47.i.i = icmp eq i8 %i.it, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i47.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iu = load i32, ptr %i.is, align 4, !tbaa !3
  %i.iv = add nsw i32 %i.iu, 1
  store i32 %i.iv, ptr %i.is, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.iw = atomicrmw volatile add ptr %i.is, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i: ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !26 ; 8 uses
  store <2 x ptr> %i.ir, ptr %i.im, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i49.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i.i.i.i49.i.i, label %thread-pre-split.i53.i.i, label %bb.af

end_hunk_11
begin_hunk_12_@_ZN6duckdb14ScalarFunction13UnaryFunctionIddNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load double, ptr %i.h, align 8, !tbaa !80 ; 2 uses
  %i.n = tail call double @llvm.round.f64(double %i.m) ; 2 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %or.cond.i.i.i.i = fcmp ueq double %i.o, +inf
  %.0.i.i59.i.i = select i1 %or.cond.i.i.i.i, double %i.m, double %i.n
  store double %.0.i.i59.i.i, ptr %i.f, align 8, !tbaa !80
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77   ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77   ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78, !noalias !1610 ; 2 uses
  %.not.i.i60.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i60.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  switch i64 %i.c, label %vector.ph39 [
    i64 0, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit
    i64 1, label %.lr.ph17.i.i.i.preheader
  ]

vector.ph39:                                      ; preds = %.preheader.i.i.i
  %n.vec41 = and i64 %i.c, -2                     ; 3 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph39
  %index43 = phi i64 [ 0, %vector.ph39 ], [ %index.next45, %vector.body42 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index43
  %wide.load44 = load <2 x double>, ptr %i.v, align 8, !tbaa !80, !alias.scope !1605, !noalias !1608 ; 2 uses
  %i.w = tail call <2 x double> @llvm.round.v2f64(<2 x double> %wide.load44) ; 2 uses
  %i.x = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.w)
  %i.y = fcmp ueq <2 x double> %i.x, splat (double +inf)
  %i.z = select <2 x i1> %i.y, <2 x double> %wide.load44, <2 x double> %i.w
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index43
  store <2 x double> %i.z, ptr %i.aa, align 8, !tbaa !80, !alias.scope !1608, !noalias !1605
  %index.next45 = add nuw i64 %index43, 2         ; 2 uses
  %i.ab = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.ab, label %middle.block46, label %vector.body42, !llvm.loop !1611

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.c, %n.vec41
  br i1 %cmp.n47, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i, %middle.block46
  %.016.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i ], [ %n.vec41, %middle.block46 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.u, ptr %i.ac, align 8, !tbaa !78, !noalias !1610
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = icmp eq ptr %2, %i.a
  br i1 %i.ae, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26, !noalias !1610 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.af, align 8, !tbaa !13, !noalias !1610
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !1610
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !3, !noalias !1610
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !3, !noalias !1610
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4, !noalias !1610 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26, !noalias !1610 ; 8 uses
  store <2 x ptr> %i.ai, ptr %i.ad, align 8, !tbaa !13, !noalias !1610
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8, !noalias !1610 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aq, align 8, !tbaa !32, !noalias !1610
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !34, !noalias !1610
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !22, !noalias !1610
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1610
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #23, !noalias !1610, !inline_history !1612
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !22, !noalias !1610
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1610
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #23, !noalias !1610, !inline_history !1612
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !1610
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !3, !noalias !1610
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4, !noalias !1610
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.at, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.be, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #23, !noalias !1610
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !83, !noalias !1610
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !83, !noalias !1610
  %i.bi = add i64 %i.c, 63
  %i.bj = lshr i64 %i.bi, 6                       ; 2 uses
  %.not18.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !78, !noalias !1610 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bk, null
  br label %bb.p

bb.p:                                             ; preds = %.loopexit5.i.i.i, %.lr.ph15.i.i.i
  %.05414.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %.4.i.i.i, %.loopexit5.i.i.i ] ; 12 uses
  %.05513.i.i.i = phi i64 [ 0, %.lr.ph15.i.i.i ], [ %i.ct, %.loopexit5.i.i.i ] ; 2 uses
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %bb.p
  %i.bl = add i64 %.05414.i.i.i, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.c)
  br label %.preheader6.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.05513.i.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !79, !noalias !1610 ; 2 uses
  %i.bp = add i64 %.05414.i.i.i, 64
  %i.bq = tail call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.c) ; 5 uses
  switch i64 %i.bo, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.br = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.bq, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 5 uses
  %i.bs = icmp ult i64 %.05414.i.i.i, %i.br
  br i1 %i.bs, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.bt = sub nuw i64 %i.br, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bt, -2                      ; 3 uses
  %i.bu = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bv
  %wide.load = load <2 x double>, ptr %i.bw, align 8, !tbaa !80, !alias.scope !1605, !noalias !1608 ; 2 uses
  %i.bx = tail call <2 x double> @llvm.round.v2f64(<2 x double> %wide.load) ; 2 uses
  %i.by = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bx)
  %i.bz = fcmp ueq <2 x double> %i.by, splat (double +inf)
  %i.ca = select <2 x i1> %i.bz, <2 x double> %wide.load, <2 x double> %i.bx
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bv
  store <2 x double> %i.ca, ptr %i.cb, align 8, !tbaa !80, !alias.scope !1608, !noalias !1605
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1613

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader64

.lr.ph.i.i.i.preheader64:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cd = icmp ult i64 %.05414.i.i.i, %i.bq
  br i1 %i.cd, label %.lr.ph11.i.i.i, label %.loopexit5.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader64, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader64 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.19.i.i.i
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !80, !alias.scope !1605, !noalias !1608 ; 2 uses
  %i.cg = tail call double @llvm.round.f64(double %i.cf) ; 2 uses
  %i.ch = tail call double @llvm.fabs.f64(double %i.cg)
  %or.cond.i.i.i.i.i = fcmp ueq double %i.ch, +inf
  %.0.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, double %i.cf, double %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.19.i.i.i
  store double %.0.i.i.i.i.i, ptr %i.ci, align 8, !tbaa !80, !alias.scope !1608, !noalias !1605
  %i.cj = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cj, %i.br
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1614

.lr.ph11.i.i.i:                                   ; preds = %.preheader4.i.i.i, %bb.r
  %.210.i.i.i = phi i64 [ %i.cs, %bb.r ], [ %.05414.i.i.i, %.preheader4.i.i.i ] ; 4 uses
  %i.ck = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.bo
  %.not.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.210.i.i.i
  %i.co = load double, ptr %i.cn, align 8, !tbaa !80, !alias.scope !1605, !noalias !1608 ; 2 uses
  %i.cp = tail call double @llvm.round.f64(double %i.co) ; 2 uses
  %i.cq = tail call double @llvm.fabs.f64(double %i.cp)
  %or.cond.i.i57.i.i.i = fcmp ueq double %i.cq, +inf
  %.0.i.i58.i.i.i = select i1 %or.cond.i.i57.i.i.i, double %i.co, double %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.210.i.i.i
  store double %.0.i.i58.i.i.i, ptr %i.cr, align 8, !tbaa !80, !alias.scope !1608, !noalias !1605
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.cs = add nuw i64 %.210.i.i.i, 1              ; 2 uses
  %exitcond23.not.i.i.i = icmp eq i64 %i.cs, %i.bq
  br i1 %exitcond23.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !1615

.loopexit5.i.i.i:                                 ; preds = %bb.r, %.lr.ph.i.i.i, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.bq, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.br, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.br, %.lr.ph.i.i.i ], [ %i.bq, %bb.r ]
  %i.ct = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i64 %i.ct, %i.bj
  br i1 %exitcond24.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit, label %bb.p, !llvm.loop !1616

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.cz, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.016.i.i.i
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !80, !alias.scope !1605, !noalias !1608 ; 2 uses
  %i.cw = tail call double @llvm.round.f64(double %i.cv) ; 2 uses
  %i.cx = tail call double @llvm.fabs.f64(double %i.cw)
  %or.cond.i.i59.i.i.i = fcmp ueq double %i.cx, +inf
  %.0.i.i60.i.i.i = select i1 %or.cond.i.i59.i.i.i, double %i.cv, double %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.016.i.i.i
  store double %.0.i.i60.i.i.i, ptr %i.cy, align 8, !tbaa !80, !alias.scope !1608, !noalias !1605
  %i.cz = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.cz, %i.c
  br i1 %exitcond25.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_113RoundOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !1617

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.t unwind label %bb.aq

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.u unwind label %bb.aq

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.v unwind label %bb.ar

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !77 ; 6 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.w unwind label %.loopexit.split-lp.i.i

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !131 ; 6 uses
  %i.de = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.x unwind label %.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !78, !noalias !1625
  %.not.i.i61.i.i = icmp eq ptr %i.dh, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i61.i.i, label %.preheader.i67.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.x
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i62.i.i

.lr.ph.i62.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !153, !alias.scope !1623, !noalias !1626 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.di, null
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.y

.preheader.i67.i.i:                               ; preds = %bb.x
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph5.i.i.i

.lr.ph5.i.i.i:                                    ; preds = %.preheader.i67.i.i
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !153, !alias.scope !1623, !noalias !1626 ; 4 uses
  %.not.i31.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i31.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %xtraiter = and i64 %i.c, 1
  %i.dl = icmp eq i64 %i.c, 1
  br i1 %i.dl, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %min.iters.check50 = icmp eq i64 %i.c, 1
  br i1 %min.iters.check50, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader61, label %vector.ph51

vector.ph51:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader
  %n.vec53 = and i64 %i.c, -2                     ; 3 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next57, %vector.body54 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index55
  %wide.load56 = load <2 x double>, ptr %i.dm, align 8, !tbaa !80, !alias.scope !1618, !noalias !1627 ; 2 uses
  %i.dn = call <2 x double> @llvm.round.v2f64(<2 x double> %wide.load56) ; 2 uses
  %i.do = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dn)
  %i.dp = fcmp ueq <2 x double> %i.do, splat (double +inf)
  %i.dq = select <2 x i1> %i.dp, <2 x double> %wide.load56, <2 x double> %i.dn
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index55
  store <2 x double> %i.dq, ptr %i.dr, align 8, !tbaa !80, !alias.scope !1621, !noalias !1628
  %index.next57 = add nuw i64 %index55, 2         ; 2 uses
  %i.ds = icmp eq i64 %index.next57, %n.vec53
  br i1 %i.ds, label %middle.block58, label %vector.body54, !llvm.loop !1629

middle.block58:                                   ; preds = %vector.body54
  %cmp.n59 = icmp eq i64 %i.c, %n.vec53
  br i1 %cmp.n59, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader61

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader61: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader, %middle.block58
  %.0284.us.i.i.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader ], [ %n.vec53, %middle.block58 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader61, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i
  %.0284.us.i.i.i = phi i64 [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i ], [ %.0284.us.i.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader61 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.0284.us.i.i.i
  %i.du = load double, ptr %i.dt, align 8, !tbaa !80, !alias.scope !1618, !noalias !1627 ; 2 uses
  %i.dv = call double @llvm.round.f64(double %i.du) ; 2 uses
  %i.dw = call double @llvm.fabs.f64(double %i.dv)
  %or.cond.i.i33.us.i.i.i = fcmp ueq double %i.dw, +inf
  %.0.i.i34.us.i.i.i = select i1 %or.cond.i.i33.us.i.i.i, double %i.du, double %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.0284.us.i.i.i
  store double %.0.i.i34.us.i.i.i, ptr %i.dx, align 8, !tbaa !80, !alias.scope !1621, !noalias !1628
  %i.dy = add nuw i64 %.0284.us.i.i.i, 1          ; 2 uses
  %exitcond11.not.i.i.i = icmp eq i64 %i.dy, %i.c
  br i1 %exitcond11.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_113RoundOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i, !llvm.loop !1630

bb.y:                                             ; preds = %bb.ad, %.lr.ph.i62.i.i
  %.03.i.i.i = phi i64 [ 0, %.lr.ph.i62.i.i ], [ %i.ez, %bb.ad ] ; 6 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.03.i.i.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3, !noalias !1625
  %i.eb = zext i32 %i.ea to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

end_hunk_12
begin_hunk_13_@_ZN6duckdb14ScalarFunction14BinaryFunctionIdidNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bn, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !34
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #23, !inline_history !1635
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #23, !inline_history !1635
  br label %thread-pre-split.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.p ], [ %i.ca, %bb.q ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.r, label %thread-pre-split.i.i.i, !prof !36

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #23
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.n, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !78
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %.val.i.i.i = phi ptr [ %.val.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.az, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !83
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  %.not.i.i18.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i18.i.i.i, label %.preheader.i.i.i.i, label %bb.t

.preheader.i.i.i.i:                               ; preds = %bb.s
  %.not18.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not18.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %.lr.ph16.i.i.i.i

.lr.ph16.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %i.cf = load i32, ptr %i.aq, align 4, !tbaa !3, !alias.scope !1639, !noalias !1643 ; 3 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph16.split.us.i.i.i.i, label %.lr.ph16.split.i.i.i.i

.lr.ph16.split.us.i.i.i.i:                        ; preds = %.lr.ph16.i.i.i.i
  %i.ch = sitofp i32 %i.cf to double
  %i.ci = fneg double %i.ch
  %i.cj = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ci) #23, !tbaa !3, !noalias !1644 ; 3 uses
  %min.iters.check149 = icmp eq i64 %i.d, 1
  br i1 %min.iters.check149, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph16.split.us.i.i.i.i
  %n.vec152 = and i64 %i.d, -2                    ; 3 uses
  %broadcast.splatinsert153 = insertelement <2 x double> poison, double %i.cj, i64 0
  %broadcast.splat154 = shufflevector <2 x double> %broadcast.splatinsert153, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph150
  %index156 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body155 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index156
  %wide.load157 = load <2 x double>, ptr %i.ck, align 8, !tbaa !80, !alias.scope !1636, !noalias !1645
  %i.cl = fdiv <2 x double> %wide.load157, %broadcast.splat154
  %i.cm = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.cl)
  %i.cn = fmul <2 x double> %broadcast.splat154, %i.cm ; 2 uses
  %i.co = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cn)
  %i.cp = fcmp ueq <2 x double> %i.co, splat (double +inf)
  %i.cq = select <2 x i1> %i.cp, <2 x double> zeroinitializer, <2 x double> %i.cn
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index156
  store <2 x double> %i.cq, ptr %i.cr, align 8, !tbaa !80, !alias.scope !1641, !noalias !1646
  %index.next158 = add nuw i64 %index156, 2       ; 2 uses
  %i.cs = icmp eq i64 %index.next158, %n.vec152
  br i1 %i.cs, label %middle.block159, label %vector.body155, !llvm.loop !1647

middle.block159:                                  ; preds = %vector.body155
  %cmp.n160 = icmp eq i64 %i.d, %n.vec152
  br i1 %cmp.n160, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader: ; preds = %.lr.ph16.split.us.i.i.i.i, %middle.block159
  %.05815.us.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.split.us.i.i.i.i ], [ %n.vec152, %middle.block159 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i
  %.05815.us.i.i.i.i = phi i64 [ %i.da, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i ], [ %.05815.us.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.05815.us.i.i.i.i
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !80, !alias.scope !1636, !noalias !1645
  %i.cv = fdiv double %i.cu, %i.cj
  %i.cw = tail call double @llvm.round.f64(double %i.cv)
  %i.cx = fmul double %i.cj, %i.cw                ; 2 uses
  %i.cy = tail call double @llvm.fabs.f64(double %i.cx)
  %or.cond.i.i70.us.i.i.i.i = fcmp ueq double %i.cy, +inf
  %.2.i.i69.us.i.i.i.i = select i1 %or.cond.i.i70.us.i.i.i.i, double 0.000000e+00, double %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.05815.us.i.i.i.i
  store double %.2.i.i69.us.i.i.i.i, ptr %i.cz, align 8, !tbaa !80, !alias.scope !1641, !noalias !1646
  %i.da = add nuw i64 %.05815.us.i.i.i.i, 1       ; 2 uses
  %exitcond29.not.i.i.i.i = icmp eq i64 %i.da, %i.d
  br i1 %exitcond29.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.us.i.i.i.i, !llvm.loop !1648

.lr.ph16.split.i.i.i.i:                           ; preds = %.lr.ph16.i.i.i.i
  %i.db = uitofp nneg i32 %i.cf to double
  %i.dc = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.db) #23, !tbaa !3, !noalias !1644 ; 3 uses
  %min.iters.check135 = icmp eq i64 %i.d, 1
  br i1 %min.iters.check135, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph16.split.i.i.i.i
  %n.vec138 = and i64 %i.d, -2                    ; 3 uses
  %broadcast.splatinsert139 = insertelement <2 x double> poison, double %i.dc, i64 0
  %broadcast.splat140 = shufflevector <2 x double> %broadcast.splatinsert139, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph136
  %index142 = phi i64 [ 0, %vector.ph136 ], [ %index.next144, %vector.body141 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index142
  %wide.load143 = load <2 x double>, ptr %i.dd, align 8, !tbaa !80, !alias.scope !1636, !noalias !1645 ; 2 uses
  %i.de = fmul <2 x double> %broadcast.splat140, %wide.load143
  %i.df = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.de)
  %i.dg = fdiv <2 x double> %i.df, %broadcast.splat140 ; 2 uses
  %i.dh = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dg)
  %i.di = fcmp ueq <2 x double> %i.dh, splat (double +inf)
  %i.dj = select <2 x i1> %i.di, <2 x double> %wide.load143, <2 x double> %i.dg
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index142
  store <2 x double> %i.dj, ptr %i.dk, align 8, !tbaa !80, !alias.scope !1641, !noalias !1646
  %index.next144 = add nuw i64 %index142, 2       ; 2 uses
  %i.dl = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.dl, label %middle.block145, label %vector.body141, !llvm.loop !1649

middle.block145:                                  ; preds = %vector.body141
  %cmp.n146 = icmp eq i64 %i.d, %n.vec138
  br i1 %cmp.n146, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader: ; preds = %.lr.ph16.split.i.i.i.i, %middle.block145
  %.05815.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.split.i.i.i.i ], [ %n.vec138, %middle.block145 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.dm = add i64 %i.d, 63
  %i.dn = lshr i64 %i.dm, 6                       ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not17.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.t, %.loopexit5.i.i.i.i
  %.014.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit5.i.i.i.i ], [ 0, %bb.t ] ; 15 uses
  %.05713.i.i.i.i = phi i64 [ %i.gl, %.loopexit5.i.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.05713.i.i.i.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !79, !noalias !1644 ; 2 uses
  %i.dq = add i64 %.014.i.i.i.i, 64
  %i.dr = tail call noundef i64 @llvm.umin.i64(i64 %i.dq, i64 %i.d) ; 13 uses
  switch i64 %i.dp, label %.preheader4.i.i.i.i [
    i64 -1, label %.preheader6.i.i.i.i
    i64 0, label %.loopexit5.i.i.i.i
  ]

.preheader6.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.ds = icmp ult i64 %.014.i.i.i.i, %i.dr
  br i1 %i.ds, label %.lr.ph.i.i.i.i, label %.loopexit5.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader6.i.i.i.i
  %i.dt = load i32, ptr %i.aq, align 4, !tbaa !3, !alias.scope !1639, !noalias !1643 ; 3 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i
  %i.dv = sitofp i32 %i.dt to double
  %i.dw = fneg double %i.dv
  %i.dx = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.dw) #23, !tbaa !3, !noalias !1644 ; 3 uses
  %i.dy = sub i64 %i.dr, %.014.i.i.i.i            ; 3 uses
  %min.iters.check = icmp ult i64 %i.dy, 2
  br i1 %min.iters.check, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i.i.i.i
  %n.vec = and i64 %i.dy, -2                      ; 3 uses
  %i.dz = add i64 %.014.i.i.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = add nuw i64 %.014.i.i.i.i, %index       ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ea
  %wide.load = load <2 x double>, ptr %i.eb, align 8, !tbaa !80, !alias.scope !1636, !noalias !1645
  %i.ec = fdiv <2 x double> %wide.load, %broadcast.splat
  %i.ed = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.ec)
  %i.ee = fmul <2 x double> %broadcast.splat, %i.ed ; 2 uses
  %i.ef = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ee)
  %i.eg = fcmp ueq <2 x double> %i.ef, splat (double +inf)
  %i.eh = select <2 x i1> %i.eg, <2 x double> zeroinitializer, <2 x double> %i.ee
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ea
  store <2 x double> %i.eh, ptr %i.ei, align 8, !tbaa !80, !alias.scope !1641, !noalias !1646
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !1650

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i.i, %middle.block
  %.19.us.i.i.i.i.ph = phi i64 [ %.014.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ %i.dz, %middle.block ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i
  %.19.us.i.i.i.i = phi i64 [ %i.er, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %.19.us.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i.preheader ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.19.us.i.i.i.i
  %i.el = load double, ptr %i.ek, align 8, !tbaa !80, !alias.scope !1636, !noalias !1645
  %i.em = fdiv double %i.el, %i.dx
  %i.en = tail call double @llvm.round.f64(double %i.em)
  %i.eo = fmul double %i.dx, %i.en                ; 2 uses
  %i.ep = tail call double @llvm.fabs.f64(double %i.eo)
  %or.cond.i.i.us.i.i.i.i = fcmp ueq double %i.ep, +inf
  %.2.i.i.us.i.i.i.i = select i1 %or.cond.i.i.us.i.i.i.i, double 0.000000e+00, double %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.19.us.i.i.i.i
  store double %.2.i.i.us.i.i.i.i, ptr %i.eq, align 8, !tbaa !80, !alias.scope !1641, !noalias !1646
  %i.er = add nuw i64 %.19.us.i.i.i.i, 1          ; 2 uses
  %exitcond25.not.i.i.i.i = icmp eq i64 %i.er, %i.dr
  br i1 %exitcond25.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, !llvm.loop !1651

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.es = uitofp nneg i32 %i.dt to double
  %i.et = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.es) #23, !tbaa !3, !noalias !1644 ; 3 uses
  %i.eu = sub i64 %i.dr, %.014.i.i.i.i            ; 3 uses
  %min.iters.check121 = icmp ult i64 %i.eu, 2
  br i1 %min.iters.check121, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph.split.i.i.i.i
  %n.vec124 = and i64 %i.eu, -2                   ; 3 uses
  %i.ev = add i64 %.014.i.i.i.i, %n.vec124
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %i.et, i64 0
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph122
  %index128 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body127 ] ; 2 uses
  %i.ew = add nuw i64 %.014.i.i.i.i, %index128    ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ew
  %wide.load129 = load <2 x double>, ptr %i.ex, align 8, !tbaa !80, !alias.scope !1636, !noalias !1645 ; 2 uses
  %i.ey = fmul <2 x double> %broadcast.splat126, %wide.load129
  %i.ez = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.ey)
  %i.fa = fdiv <2 x double> %i.ez, %broadcast.splat126 ; 2 uses
  %i.fb = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fa)
  %i.fc = fcmp ueq <2 x double> %i.fb, splat (double +inf)
  %i.fd = select <2 x i1> %i.fc, <2 x double> %wide.load129, <2 x double> %i.fa
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ew
  store <2 x double> %i.fd, ptr %i.fe, align 8, !tbaa !80, !alias.scope !1641, !noalias !1646
  %index.next130 = add nuw i64 %index128, 2       ; 2 uses
  %i.ff = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.ff, label %middle.block131, label %vector.body127, !llvm.loop !1652

middle.block131:                                  ; preds = %vector.body127
  %cmp.n132 = icmp eq i64 %i.eu, %n.vec124
  br i1 %cmp.n132, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i, %middle.block131
  %.19.i.i.i.i.ph = phi i64 [ %.014.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.ev, %middle.block131 ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

.preheader4.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.fg = icmp ult i64 %.014.i.i.i.i, %i.dr
  br i1 %i.fg, label %.lr.ph11.i.i.i.i, label %.loopexit5.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i
  %.19.i.i.i.i = phi i64 [ %i.fo, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.19.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.19.i.i.i.i
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !80, !alias.scope !1636, !noalias !1645 ; 2 uses
  %i.fj = fmul double %i.et, %i.fi
  %i.fk = tail call double @llvm.round.f64(double %i.fj)
  %i.fl = fdiv double %i.fk, %i.et                ; 2 uses
  %i.fm = tail call double @llvm.fabs.f64(double %i.fl)
  %or.cond23.i.i.i.i.i.i = fcmp ueq double %i.fm, +inf
  %.2.i.i.i.i.i.i = select i1 %or.cond23.i.i.i.i.i.i, double %i.fi, double %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.19.i.i.i.i
  store double %.2.i.i.i.i.i.i, ptr %i.fn, align 8, !tbaa !80, !alias.scope !1641, !noalias !1646
  %i.fo = add nuw i64 %.19.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fo, %i.dr
  br i1 %exitcond.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, !llvm.loop !1653

.lr.ph11.i.i.i.i:                                 ; preds = %.preheader4.i.i.i.i, %bb.x
  %.210.i.i.i.i = phi i64 [ %i.gk, %bb.x ], [ %.014.i.i.i.i, %.preheader4.i.i.i.i ] ; 4 uses
  %i.fp = sub nuw i64 %.210.i.i.i.i, %.014.i.i.i.i
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = and i64 %i.fq, %i.dp
  %.not.i.i.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.lr.ph11.i.i.i.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.210.i.i.i.i
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !80, !alias.scope !1636, !noalias !1645 ; 3 uses
  %i.fu = load i32, ptr %i.aq, align 4, !tbaa !3, !alias.scope !1639, !noalias !1643 ; 3 uses
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fw = sitofp i32 %i.fu to double
  %i.fx = fneg double %i.fw
  %i.fy = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.fx) #23, !tbaa !3, !noalias !1644 ; 2 uses
  %i.fz = fdiv double %i.ft, %i.fy
  %i.ga = tail call double @llvm.round.f64(double %i.fz)
  %i.gb = fmul double %i.fy, %i.ga                ; 2 uses
  %i.gc = tail call double @llvm.fabs.f64(double %i.gb)
  %or.cond.i.i64.i.i.i.i = fcmp ueq double %i.gc, +inf
  br i1 %or.cond.i.i64.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, label %.critedge.i.i61.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.gd = uitofp nneg i32 %i.fu to double
  %i.ge = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.gd) #23, !tbaa !3, !noalias !1644 ; 2 uses
  %i.gf = fmul double %i.ft, %i.ge
  %i.gg = tail call double @llvm.round.f64(double %i.gf)
  %i.gh = fdiv double %i.gg, %i.ge                ; 2 uses
  %i.gi = tail call double @llvm.fabs.f64(double %i.gh)
  %or.cond23.i.i60.i.i.i.i = fcmp ueq double %i.gi, +inf
  br i1 %or.cond23.i.i60.i.i.i.i, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, label %.critedge.i.i61.i.i.i.i

.critedge.i.i61.i.i.i.i:                          ; preds = %bb.w, %bb.v
  %.020.i.i62.i.i.i.i = phi double [ %i.gb, %bb.v ], [ %i.gh, %bb.w ]
  br label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i: ; preds = %.critedge.i.i61.i.i.i.i, %bb.w, %bb.v
  %.2.i.i63.i.i.i.i = phi double [ %.020.i.i62.i.i.i.i, %.critedge.i.i61.i.i.i.i ], [ %i.ft, %bb.w ], [ 0.000000e+00, %bb.v ]
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.210.i.i.i.i
  store double %.2.i.i63.i.i.i.i, ptr %i.gj, align 8, !tbaa !80, !alias.scope !1641, !noalias !1646
  br label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit65.i.i.i.i, %.lr.ph11.i.i.i.i
  %i.gk = add nuw i64 %.210.i.i.i.i, 1            ; 2 uses
  %exitcond26.not.i.i.i.i = icmp eq i64 %i.gk, %i.dr
  br i1 %exitcond26.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %.lr.ph11.i.i.i.i, !llvm.loop !1654

.loopexit5.i.i.i.i:                               ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i, %bb.x, %middle.block131, %middle.block, %.preheader4.i.i.i.i, %.preheader6.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.dr, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.dr, %middle.block131 ], [ %.014.i.i.i.i, %.preheader4.i.i.i.i ], [ %.014.i.i.i.i, %.preheader6.i.i.i.i ], [ %i.dr, %middle.block ], [ %i.dr, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.us.i.i.i.i ], [ %i.dr, %bb.x ], [ %i.dr, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ]
  %i.gl = add nuw nsw i64 %.05713.i.i.i.i, 1      ; 2 uses
  %exitcond27.not.i.i.i.i = icmp eq i64 %i.gl, %i.dn
  br i1 %exitcond27.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, !llvm.loop !1655

_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i: ; preds = %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i
  %.05815.i.i.i.i = phi i64 [ %i.gt, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i ], [ %.05815.i.i.i.i.ph, %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i.preheader ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.05815.i.i.i.i
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !80, !alias.scope !1636, !noalias !1645 ; 2 uses
  %i.go = fmul double %i.dc, %i.gn
  %i.gp = tail call double @llvm.round.f64(double %i.go)
  %i.gq = fdiv double %i.gp, %i.dc                ; 2 uses
  %i.gr = tail call double @llvm.fabs.f64(double %i.gq)
  %or.cond23.i.i66.i.i.i.i = fcmp ueq double %i.gr, +inf
  %.2.i.i69.i.i.i.i = select i1 %or.cond23.i.i66.i.i.i.i, double %i.gn, double %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.05815.i.i.i.i
  store double %.2.i.i69.i.i.i.i, ptr %i.gs, align 8, !tbaa !80, !alias.scope !1641, !noalias !1646
  %i.gt = add nuw i64 %.05815.i.i.i.i, 1          ; 2 uses
  %exitcond28.not.i.i.i.i = icmp eq i64 %i.gt, %i.d
  br i1 %exitcond28.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit, label %_ZN6duckdb29BinaryStandardOperatorWrapper9OperationIbNS_12_GLOBAL__N_122RoundOperatorPrecisionEdidEET3_T_T1_T2_RNS_12ValidityMaskEm.exit71.i.i.i.i, !llvm.loop !1656

bb.y:                                             ; preds = %bb.f
  %i.gu = icmp eq i8 %i.f, 0
  %or.cond5.i.i = and i1 %i.g, %i.gu
  br i1 %or.cond5.i.i, label %bb.z, label %bb.ax

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !77 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !77 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i43.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i: ; preds = %bb.z
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !79
  %i.hc = trunc i64 %i.hb to i1
  br i1 %i.hc, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor15ExecuteStandardIdidNS_12_GLOBAL__N_122RoundOperatorPrecisionEEEvRNS_6VectorES5_S5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i, %bb.z
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !77 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !78 ; 2 uses
  store ptr %i.hh, ptr %i.hf, align 8, !tbaa !78
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hj = icmp eq ptr %2, %i.b
  br i1 %i.hj, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !26 ; 2 uses
  %i.hn = load <2 x ptr>, ptr %i.hk, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i46.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i.i.i.i46.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 3 uses
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i47.i.i = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i47.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hq = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.ho, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.hs = atomicrmw volatile add ptr %i.ho, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i: ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !26 ; 8 uses
  store <2 x ptr> %i.hn, ptr %i.hi, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i49.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i.i.i.i49.i.i, label %thread-pre-split.i53.i.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i48.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 4 uses
  %i.hw = load atomic i64, ptr %i.hv acquire, align 8 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 4294967297
  %i.hy = trunc i64 %i.hw to i32                  ; 2 uses
  br i1 %i.hx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.hv, align 8, !tbaa !32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i32 0, ptr %i.hz, align 4, !tbaa !34
end_hunk_13
begin_hunk_14_@_ZN6duckdb14ScalarFunction13UnaryFunctionIddNS_12_GLOBAL__N_115DegreesOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115DegreesOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load double, ptr %i.h, align 8, !tbaa !80
  %i.n = load double, ptr @_ZN6duckdb2PIE, align 8, !tbaa !80
  %i.o = fdiv double 1.800000e+02, %i.n
  %i.p = fmul double %i.m, %i.o
  store double %i.p, ptr %i.f, align 8, !tbaa !80
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115DegreesOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77   ; 9 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78, !noalias !2364 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115DegreesOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i

.lr.ph17.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.w = load double, ptr @_ZN6duckdb2PIE, align 8, !tbaa !80, !noalias !2364
  %i.x = fdiv double 1.800000e+02, %i.w           ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check66, label %scalar.ph65.preheader, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph17.i.i.i
  %n.vec69 = and i64 %i.c, -4                     ; 3 uses
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.x, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph67
  %index73 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body72 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index73 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load74 = load <2 x double>, ptr %i.y, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %wide.load75 = load <2 x double>, ptr %i.z, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %i.aa = fmul <2 x double> %broadcast.splat71, %wide.load74
  %i.ab = fmul <2 x double> %broadcast.splat71, %wide.load75
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index73 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %i.aa, ptr %i.ac, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  store <2 x double> %i.ab, ptr %i.ad, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  %index.next76 = add nuw i64 %index73, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.ae, label %middle.block77, label %vector.body72, !llvm.loop !2365

middle.block77:                                   ; preds = %vector.body72
  %cmp.n78 = icmp eq i64 %i.c, %n.vec69
  br i1 %cmp.n78, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115DegreesOperatorEEEvRNS_6VectorES5_m.exit, label %scalar.ph65.preheader

scalar.ph65.preheader:                            ; preds = %.lr.ph17.i.i.i, %middle.block77
  %.016.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i ], [ %n.vec69, %middle.block77 ]
  br label %scalar.ph65

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.v, ptr %i.af, align 8, !tbaa !78, !noalias !2364
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = icmp eq ptr %2, %i.a
  br i1 %i.ah, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26, !noalias !2364 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !13, !noalias !2364
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !2364
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !2364
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !2364
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !2364 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26, !noalias !2364 ; 8 uses
  store <2 x ptr> %i.al, ptr %i.ag, align 8, !tbaa !13, !noalias !2364
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !2364 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.at, align 8, !tbaa !32, !noalias !2364
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !34, !noalias !2364
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !22, !noalias !2364
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !2364
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #23, !noalias !2364, !inline_history !2366
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !22, !noalias !2364
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !2364
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #23, !noalias !2364, !inline_history !2366
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !2364
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3, !noalias !2364
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4, !noalias !2364
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.m ], [ %i.bg, %bb.n ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #23, !noalias !2364
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !83, !noalias !2364
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !83, !noalias !2364
  %i.bl = add i64 %i.c, 63
  %i.bm = lshr i64 %i.bl, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115DegreesOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bn = load ptr, ptr %i.u, align 8, !tbaa !78, !noalias !2364 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load double, ptr @_ZN6duckdb2PIE, align 8, !noalias !2364
  %i.bp = fdiv double 1.800000e+02, %i.bo         ; 7 uses
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader: ; preds = %.lr.ph15.i.i.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i.preheader: ; preds = %.lr.ph15.i.i.i
  %broadcast.splatinsert55 = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat56 = shufflevector <2 x double> %broadcast.splatinsert55, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i.preheader, %.loopexit7.us.i.i.i
  %.05414.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i.preheader ] ; 7 uses
  %.05513.us.i.i.i = phi i64 [ %i.ci, %.loopexit7.us.i.i.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i.preheader ]
  %i.bq = add i64 %.05414.us.i.i.i, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %i.c) ; 5 uses
  %i.bs = icmp ult i64 %.05414.us.i.i.i, %i.br
  br i1 %i.bs, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bt = sub nuw i64 %i.br, %.05414.us.i.i.i     ; 3 uses
  %min.iters.check51 = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check51, label %.lr.ph.us.i.i.i.preheader99, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec54 = and i64 %i.bt, -4                    ; 3 uses
  %i.bu = add i64 %.05414.us.i.i.i, %n.vec54
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph52
  %index58 = phi i64 [ 0, %vector.ph52 ], [ %index.next61, %vector.body57 ] ; 2 uses
  %i.bv = add nuw i64 %.05414.us.i.i.i, %index58  ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load59 = load <2 x double>, ptr %i.bw, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %wide.load60 = load <2 x double>, ptr %i.bx, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %i.by = fmul <2 x double> %broadcast.splat56, %wide.load59
  %i.bz = fmul <2 x double> %broadcast.splat56, %wide.load60
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bv ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <2 x double> %i.by, ptr %i.ca, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  store <2 x double> %i.bz, ptr %i.cb, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  %index.next61 = add nuw i64 %index58, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next61, %n.vec54
  br i1 %i.cc, label %middle.block62, label %vector.body57, !llvm.loop !2367

middle.block62:                                   ; preds = %vector.body57
  %cmp.n63 = icmp eq i64 %i.bt, %n.vec54
  br i1 %cmp.n63, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader99

.lr.ph.us.i.i.i.preheader99:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block62
  %.19.us.i.i.i.ph = phi i64 [ %.05414.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bu, %middle.block62 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader99, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.ch, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader99 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.19.us.i.i.i
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %i.cf = fmul double %i.bp, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.us.i.i.i
  store double %i.cf, ptr %i.cg, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  %i.ch = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.ch, %i.br
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !2368

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block62, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.05414.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.br, %middle.block62 ], [ %i.br, %.lr.ph.us.i.i.i ]
  %i.ci = add nuw nsw i64 %.05513.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.ci, %i.bm
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115DegreesOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !2369

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader, %.loopexit5.i.i.i
  %.05414.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader ] ; 17 uses
  %.05513.i.i.i = phi i64 [ %i.ec, %.loopexit5.i.i.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.05513.i.i.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !79, !noalias !2364 ; 4 uses
  %i.cl = add i64 %.05414.i.i.i, 64
  %i.cm = tail call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.c) ; 12 uses
  switch i64 %i.ck, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cn = icmp ult i64 %.05414.i.i.i, %i.cm
  br i1 %i.cn, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.co = sub nuw i64 %i.cm, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.co, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.co, -4                      ; 3 uses
  %i.cp = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load = load <2 x double>, ptr %i.cr, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %wide.load49 = load <2 x double>, ptr %i.cs, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %i.ct = fmul <2 x double> %broadcast.splat, %wide.load
  %i.cu = fmul <2 x double> %broadcast.splat, %wide.load49
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cq ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <2 x double> %i.ct, ptr %i.cv, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  store <2 x double> %i.cu, ptr %i.cw, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !2370

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader101

.lr.ph.i.i.i.preheader101:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cy = icmp ult i64 %.05414.i.i.i, %i.cm
  br i1 %i.cy, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.cz = sub nuw i64 %i.cm, %.05414.i.i.i
  %.neg = add i64 %.05414.i.i.i, 1
  %xtraiter = and i64 %i.cz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.da = and i64 %i.ck, 1
  %.not.i.i.i.prol = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05414.i.i.i
  %i.dc = load double, ptr %i.db, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %i.dd = fmul double %i.bp, %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05414.i.i.i
  store double %i.dd, ptr %i.de, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.df = add nuw i64 %.05414.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.05414.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.df, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dg = icmp eq i64 %i.cm, %.neg
  br i1 %i.dg, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader101, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.19.i.i.i
  %i.di = load double, ptr %i.dh, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %i.dj = fmul double %i.bp, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.i.i.i
  store double %i.dj, ptr %i.dk, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  %i.dl = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dl, %i.cm
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2371

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.eb, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.dm = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.ck
  %.not.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.210.i.i.i
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %i.dr = fmul double %i.bp, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.210.i.i.i
  store double %i.dr, ptr %i.ds, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.dt = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.du = sub nuw i64 %i.dt, %.05414.i.i.i
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = and i64 %i.dv, %i.ck
  %.not.i.i.i.1 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.dt
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %i.dz = fmul double %i.bp, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dt
  store double %i.dz, ptr %i.ea, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.eb = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.eb, %i.cm
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !2372

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.cm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.cm, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.cm, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.cm, %bb.s ], [ %i.cm, %.lr.ph.i.i.i ]
  %i.ec = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.ec, %i.bm
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115DegreesOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !2369

scalar.ph65:                                      ; preds = %scalar.ph65.preheader, %scalar.ph65
  %.016.i.i.i = phi i64 [ %i.eh, %scalar.ph65 ], [ %.016.i.i.i.ph, %scalar.ph65.preheader ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.016.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !80, !alias.scope !2359, !noalias !2362
  %i.ef = fmul double %i.x, %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.016.i.i.i
  store double %i.ef, ptr %i.eg, align 8, !tbaa !80, !alias.scope !2362, !noalias !2359
  %i.eh = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.eh, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115DegreesOperatorEEEvRNS_6VectorES5_m.exit, label %scalar.ph65, !llvm.loop !2373

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !77 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !131 ; 9 uses
  %i.em = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2374)
  call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !78, !noalias !2381
  %.not.i.i60.i.i = icmp eq ptr %i.ep, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_115DegreesOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.eq = load ptr, ptr %i.em, align 8, !tbaa !153, !alias.scope !2379, !noalias !2382 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.eq, null
  %i.er = load double, ptr @_ZN6duckdb2PIE, align 8, !noalias !2381
  %i.es = fdiv double 1.800000e+02, %i.er         ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.fm, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.eu = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.ev = and i64 %.03.us.i.i.i, 63
  %i.ew = load ptr, ptr %i.eo, align 8, !tbaa !78, !noalias !2381
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.eu
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !79, !noalias !2381
  %i.ez = shl nuw i64 1, %i.ev                    ; 2 uses
  %i.fa = and i64 %i.ey, %i.ez
  %.not.us.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.03.us.i.i.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !80, !alias.scope !2374, !noalias !2383
  %i.fd = fmul double %i.es, %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.03.us.i.i.i
  store double %i.fd, ptr %i.fe, align 8, !tbaa !80, !alias.scope !2377, !noalias !2384
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.ff = load ptr, ptr %i.en, align 8, !tbaa !78, !noalias !2381 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i30.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.fg = load i64, ptr %i.et, align 8, !tbaa !83, !noalias !2381
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.en, i64 noundef %i.fg)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ab
end_hunk_14
begin_hunk_15_@_ZN6duckdb14ScalarFunction13UnaryFunctionIddNS_12_GLOBAL__N_115RadiansOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115RadiansOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load double, ptr %i.h, align 8, !tbaa !80
  %i.n = load double, ptr @_ZN6duckdb2PIE, align 8, !tbaa !80
  %i.o = fdiv double %i.n, 1.800000e+02
  %i.p = fmul double %i.m, %i.o
  store double %i.p, ptr %i.f, align 8, !tbaa !80
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115RadiansOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77   ; 9 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78, !noalias !2397 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115RadiansOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i

.lr.ph17.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.w = load double, ptr @_ZN6duckdb2PIE, align 8, !tbaa !80, !noalias !2397
  %i.x = fdiv double %i.w, 1.800000e+02           ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check66, label %scalar.ph65.preheader, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph17.i.i.i
  %n.vec69 = and i64 %i.c, -4                     ; 3 uses
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.x, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph67
  %index73 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body72 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index73 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load74 = load <2 x double>, ptr %i.y, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %wide.load75 = load <2 x double>, ptr %i.z, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %i.aa = fmul <2 x double> %broadcast.splat71, %wide.load74
  %i.ab = fmul <2 x double> %broadcast.splat71, %wide.load75
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index73 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %i.aa, ptr %i.ac, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  store <2 x double> %i.ab, ptr %i.ad, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  %index.next76 = add nuw i64 %index73, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.ae, label %middle.block77, label %vector.body72, !llvm.loop !2398

middle.block77:                                   ; preds = %vector.body72
  %cmp.n78 = icmp eq i64 %i.c, %n.vec69
  br i1 %cmp.n78, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115RadiansOperatorEEEvRNS_6VectorES5_m.exit, label %scalar.ph65.preheader

scalar.ph65.preheader:                            ; preds = %.lr.ph17.i.i.i, %middle.block77
  %.016.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i ], [ %n.vec69, %middle.block77 ]
  br label %scalar.ph65

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.v, ptr %i.af, align 8, !tbaa !78, !noalias !2397
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = icmp eq ptr %2, %i.a
  br i1 %i.ah, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26, !noalias !2397 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !13, !noalias !2397
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !2397
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !2397
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !2397
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !2397 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26, !noalias !2397 ; 8 uses
  store <2 x ptr> %i.al, ptr %i.ag, align 8, !tbaa !13, !noalias !2397
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !2397 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.at, align 8, !tbaa !32, !noalias !2397
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !34, !noalias !2397
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !22, !noalias !2397
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !2397
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #23, !noalias !2397, !inline_history !2399
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !22, !noalias !2397
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !2397
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #23, !noalias !2397, !inline_history !2399
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !2397
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3, !noalias !2397
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4, !noalias !2397
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.m ], [ %i.bg, %bb.n ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #23, !noalias !2397
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !83, !noalias !2397
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !83, !noalias !2397
  %i.bl = add i64 %i.c, 63
  %i.bm = lshr i64 %i.bl, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115RadiansOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bn = load ptr, ptr %i.u, align 8, !tbaa !78, !noalias !2397 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load double, ptr @_ZN6duckdb2PIE, align 8, !noalias !2397
  %i.bp = fdiv double %i.bo, 1.800000e+02         ; 7 uses
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader: ; preds = %.lr.ph15.i.i.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i.preheader: ; preds = %.lr.ph15.i.i.i
  %broadcast.splatinsert55 = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat56 = shufflevector <2 x double> %broadcast.splatinsert55, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i.preheader, %.loopexit7.us.i.i.i
  %.05414.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i.preheader ] ; 7 uses
  %.05513.us.i.i.i = phi i64 [ %i.ci, %.loopexit7.us.i.i.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i.preheader ]
  %i.bq = add i64 %.05414.us.i.i.i, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %i.c) ; 5 uses
  %i.bs = icmp ult i64 %.05414.us.i.i.i, %i.br
  br i1 %i.bs, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bt = sub nuw i64 %i.br, %.05414.us.i.i.i     ; 3 uses
  %min.iters.check51 = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check51, label %.lr.ph.us.i.i.i.preheader99, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec54 = and i64 %i.bt, -4                    ; 3 uses
  %i.bu = add i64 %.05414.us.i.i.i, %n.vec54
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph52
  %index58 = phi i64 [ 0, %vector.ph52 ], [ %index.next61, %vector.body57 ] ; 2 uses
  %i.bv = add nuw i64 %.05414.us.i.i.i, %index58  ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load59 = load <2 x double>, ptr %i.bw, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %wide.load60 = load <2 x double>, ptr %i.bx, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %i.by = fmul <2 x double> %broadcast.splat56, %wide.load59
  %i.bz = fmul <2 x double> %broadcast.splat56, %wide.load60
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bv ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <2 x double> %i.by, ptr %i.ca, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  store <2 x double> %i.bz, ptr %i.cb, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  %index.next61 = add nuw i64 %index58, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next61, %n.vec54
  br i1 %i.cc, label %middle.block62, label %vector.body57, !llvm.loop !2400

middle.block62:                                   ; preds = %vector.body57
  %cmp.n63 = icmp eq i64 %i.bt, %n.vec54
  br i1 %cmp.n63, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader99

.lr.ph.us.i.i.i.preheader99:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block62
  %.19.us.i.i.i.ph = phi i64 [ %.05414.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bu, %middle.block62 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader99, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.ch, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader99 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.19.us.i.i.i
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %i.cf = fmul double %i.bp, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.us.i.i.i
  store double %i.cf, ptr %i.cg, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  %i.ch = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.ch, %i.br
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !2401

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block62, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.05414.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.br, %middle.block62 ], [ %i.br, %.lr.ph.us.i.i.i ]
  %i.ci = add nuw nsw i64 %.05513.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.ci, %i.bm
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115RadiansOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !2402

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader, %.loopexit5.i.i.i
  %.05414.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader ] ; 17 uses
  %.05513.i.i.i = phi i64 [ %i.ec, %.loopexit5.i.i.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.05513.i.i.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !79, !noalias !2397 ; 4 uses
  %i.cl = add i64 %.05414.i.i.i, 64
  %i.cm = tail call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.c) ; 12 uses
  switch i64 %i.ck, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cn = icmp ult i64 %.05414.i.i.i, %i.cm
  br i1 %i.cn, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.co = sub nuw i64 %i.cm, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.co, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.co, -4                      ; 3 uses
  %i.cp = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load = load <2 x double>, ptr %i.cr, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %wide.load49 = load <2 x double>, ptr %i.cs, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %i.ct = fmul <2 x double> %broadcast.splat, %wide.load
  %i.cu = fmul <2 x double> %broadcast.splat, %wide.load49
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cq ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <2 x double> %i.ct, ptr %i.cv, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  store <2 x double> %i.cu, ptr %i.cw, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !2403

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader101

.lr.ph.i.i.i.preheader101:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cy = icmp ult i64 %.05414.i.i.i, %i.cm
  br i1 %i.cy, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.cz = sub nuw i64 %i.cm, %.05414.i.i.i
  %.neg = add i64 %.05414.i.i.i, 1
  %xtraiter = and i64 %i.cz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.da = and i64 %i.ck, 1
  %.not.i.i.i.prol = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05414.i.i.i
  %i.dc = load double, ptr %i.db, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %i.dd = fmul double %i.bp, %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05414.i.i.i
  store double %i.dd, ptr %i.de, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.df = add nuw i64 %.05414.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.05414.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.df, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dg = icmp eq i64 %i.cm, %.neg
  br i1 %i.dg, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader101, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.19.i.i.i
  %i.di = load double, ptr %i.dh, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %i.dj = fmul double %i.bp, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.i.i.i
  store double %i.dj, ptr %i.dk, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  %i.dl = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dl, %i.cm
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2404

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.eb, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.dm = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.ck
  %.not.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.210.i.i.i
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %i.dr = fmul double %i.bp, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.210.i.i.i
  store double %i.dr, ptr %i.ds, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.dt = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.du = sub nuw i64 %i.dt, %.05414.i.i.i
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = and i64 %i.dv, %i.ck
  %.not.i.i.i.1 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.dt
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %i.dz = fmul double %i.bp, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dt
  store double %i.dz, ptr %i.ea, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.eb = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.eb, %i.cm
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !2405

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.cm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.cm, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.cm, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.cm, %bb.s ], [ %i.cm, %.lr.ph.i.i.i ]
  %i.ec = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.ec, %i.bm
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115RadiansOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !2402

scalar.ph65:                                      ; preds = %scalar.ph65.preheader, %scalar.ph65
  %.016.i.i.i = phi i64 [ %i.eh, %scalar.ph65 ], [ %.016.i.i.i.ph, %scalar.ph65.preheader ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.016.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !80, !alias.scope !2392, !noalias !2395
  %i.ef = fmul double %i.x, %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.016.i.i.i
  store double %i.ef, ptr %i.eg, align 8, !tbaa !80, !alias.scope !2395, !noalias !2392
  %i.eh = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.eh, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIddNS_12_GLOBAL__N_115RadiansOperatorEEEvRNS_6VectorES5_m.exit, label %scalar.ph65, !llvm.loop !2406

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !77 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !131 ; 9 uses
  %i.em = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !78, !noalias !2414
  %.not.i.i60.i.i = icmp eq ptr %i.ep, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_115RadiansOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.eq = load ptr, ptr %i.em, align 8, !tbaa !153, !alias.scope !2412, !noalias !2415 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.eq, null
  %i.er = load double, ptr @_ZN6duckdb2PIE, align 8, !noalias !2414
  %i.es = fdiv double %i.er, 1.800000e+02         ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.fm, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.eu = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.ev = and i64 %.03.us.i.i.i, 63
  %i.ew = load ptr, ptr %i.eo, align 8, !tbaa !78, !noalias !2414
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.eu
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !79, !noalias !2414
  %i.ez = shl nuw i64 1, %i.ev                    ; 2 uses
  %i.fa = and i64 %i.ey, %i.ez
  %.not.us.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.03.us.i.i.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !80, !alias.scope !2407, !noalias !2416
  %i.fd = fmul double %i.es, %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.03.us.i.i.i
  store double %i.fd, ptr %i.fe, align 8, !tbaa !80, !alias.scope !2410, !noalias !2417
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.ff = load ptr, ptr %i.en, align 8, !tbaa !78, !noalias !2414 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i30.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.fg = load i64, ptr %i.et, align 8, !tbaa !83, !noalias !2414
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.en, i64 noundef %i.fg)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ab
end_hunk_15
begin_hunk_16_@_ZN6duckdb14ScalarFunction13UnaryFunctionIfbNS_12_GLOBAL__N_115SignBitOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIfbNS_12_GLOBAL__N_115SignBitOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load i32, ptr %i.h, align 4, !tbaa !164
  %.lobit.i.i = lshr i32 %i.m, 31
  %i.n = trunc nuw nsw i32 %.lobit.i.i to i8
  store i8 %i.n, ptr %i.f, align 1, !tbaa !2425
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIfbNS_12_GLOBAL__N_115SignBitOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 9 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2481)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !2483 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not21.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not21.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIfbNS_12_GLOBAL__N_115SignBitOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph19.i.i.i.preheader

.lr.ph19.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check64 = icmp ult i64 %i.c, 8
  br i1 %min.iters.check64, label %.lr.ph19.i.i.i.preheader93, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph19.i.i.i.preheader
  %n.vec67 = and i64 %i.c, -8                     ; 3 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next72, %vector.body68 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index69 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load70 = load <4 x i32>, ptr %i.u, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %wide.load71 = load <4 x i32>, ptr %i.v, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %index69 ; 2 uses
  %i.x = lshr <4 x i32> %wide.load70, splat (i32 31)
  %i.y = lshr <4 x i32> %wide.load71, splat (i32 31)
  %i.z = trunc nuw nsw <4 x i32> %i.x to <4 x i8>
  %i.aa = trunc nuw nsw <4 x i32> %i.y to <4 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store <4 x i8> %i.z, ptr %i.w, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  store <4 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  %index.next72 = add nuw i64 %index69, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.ac, label %middle.block73, label %vector.body68, !llvm.loop !2484

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.c, %n.vec67
  br i1 %cmp.n74, label %_ZN6duckdb13UnaryExecutor7ExecuteIfbNS_12_GLOBAL__N_115SignBitOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph19.i.i.i.preheader93

.lr.ph19.i.i.i.preheader93:                       ; preds = %.lr.ph19.i.i.i.preheader, %middle.block73
  %.018.i.i.i.ph = phi i64 [ 0, %.lr.ph19.i.i.i.preheader ], [ %n.vec67, %middle.block73 ]
  br label %.lr.ph19.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.ad, align 8, !tbaa !78, !noalias !2483
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp eq ptr %2, %i.a
  br i1 %i.af, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26, !noalias !2483 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !13, !noalias !2483
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !2483
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !2483
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3, !noalias !2483
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !2483 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26, !noalias !2483 ; 8 uses
  store <2 x ptr> %i.aj, ptr %i.ae, align 8, !tbaa !13, !noalias !2483
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !noalias !2483 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ar, align 8, !tbaa !32, !noalias !2483
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !34, !noalias !2483
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !22, !noalias !2483
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !2483
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !2483, !inline_history !2485
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !22, !noalias !2483
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !2483
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !2483, !inline_history !2485
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !2483
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3, !noalias !2483
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4, !noalias !2483
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.au, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !2483
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !83, !noalias !2483
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !83, !noalias !2483
  %i.bj = add i64 %i.c, 63
  %i.bk = lshr i64 %i.bj, 6                       ; 3 uses
  %.not20.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not20.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIfbNS_12_GLOBAL__N_115SignBitOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i

.lr.ph17.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !2483 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph17.i.i.i, %.loopexit9.us.i.i.i
  %.05416.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit9.us.i.i.i ], [ 0, %.lr.ph17.i.i.i ] ; 7 uses
  %.05515.us.i.i.i = phi i64 [ %i.cg, %.loopexit9.us.i.i.i ], [ 0, %.lr.ph17.i.i.i ]
  %i.bm = add i64 %.05416.us.i.i.i, 64
  %i.bn = tail call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.c) ; 5 uses
  %i.bo = icmp ult i64 %.05416.us.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.us.i.i.i.preheader, label %.loopexit9.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bp = sub nuw i64 %i.bn, %.05416.us.i.i.i     ; 3 uses
  %min.iters.check51 = icmp ult i64 %i.bp, 8
  br i1 %min.iters.check51, label %.lr.ph.us.i.i.i.preheader94, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec54 = and i64 %i.bp, -8                    ; 3 uses
  %i.bq = add i64 %.05416.us.i.i.i, %n.vec54
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph52
  %index56 = phi i64 [ 0, %vector.ph52 ], [ %index.next59, %vector.body55 ] ; 2 uses
  %i.br = add nuw i64 %.05416.us.i.i.i, %index56  ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load57 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %wide.load58 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.br ; 2 uses
  %i.bv = lshr <4 x i32> %wide.load57, splat (i32 31)
  %i.bw = lshr <4 x i32> %wide.load58, splat (i32 31)
  %i.bx = trunc nuw nsw <4 x i32> %i.bv to <4 x i8>
  %i.by = trunc nuw nsw <4 x i32> %i.bw to <4 x i8>
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store <4 x i8> %i.bx, ptr %i.bu, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  store <4 x i8> %i.by, ptr %i.bz, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  %index.next59 = add nuw i64 %index56, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.ca, label %middle.block60, label %vector.body55, !llvm.loop !2486

middle.block60:                                   ; preds = %vector.body55
  %cmp.n61 = icmp eq i64 %i.bp, %n.vec54
  br i1 %cmp.n61, label %.loopexit9.us.i.i.i, label %.lr.ph.us.i.i.i.preheader94

.lr.ph.us.i.i.i.preheader94:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block60
  %.111.us.i.i.i.ph = phi i64 [ %.05416.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bq, %middle.block60 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader94, %.lr.ph.us.i.i.i
  %.111.us.i.i.i = phi i64 [ %i.cf, %.lr.ph.us.i.i.i ], [ %.111.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader94 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.111.us.i.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 %.111.us.i.i.i
  %.lobit.us.i.i.i = lshr i32 %i.cc, 31
  %i.ce = trunc nuw nsw i32 %.lobit.us.i.i.i to i8
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  %i.cf = add nuw i64 %.111.us.i.i.i, 1           ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.cf, %i.bn
  br i1 %exitcond29.not.i.i.i, label %.loopexit9.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !2487

.loopexit9.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.05416.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bn, %middle.block60 ], [ %i.bn, %.lr.ph.us.i.i.i ]
  %i.cg = add nuw nsw i64 %.05515.us.i.i.i, 1     ; 2 uses
  %exitcond30.not.i.i.i = icmp eq i64 %i.cg, %i.bk
  br i1 %exitcond30.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIfbNS_12_GLOBAL__N_115SignBitOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !2488

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph17.i.i.i, %.loopexit7.i.i.i
  %.05416.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit7.i.i.i ], [ 0, %.lr.ph17.i.i.i ] ; 17 uses
  %.05515.i.i.i = phi i64 [ %i.ec, %.loopexit7.i.i.i ], [ 0, %.lr.ph17.i.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.05515.i.i.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !79, !noalias !2483 ; 4 uses
  %i.cj = add i64 %.05416.i.i.i, 64
  %i.ck = tail call noundef i64 @llvm.umin.i64(i64 %i.cj, i64 %i.c) ; 12 uses
  switch i64 %i.ci, label %.preheader6.i.i.i [
    i64 -1, label %.preheader8.i.i.i
    i64 0, label %.loopexit7.i.i.i
  ]

.preheader8.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cl = icmp ult i64 %.05416.i.i.i, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i.i.preheader, label %.loopexit7.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader8.i.i.i
  %i.cm = sub nuw i64 %i.ck, %.05416.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.cm, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader96, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.cm, -8                      ; 3 uses
  %i.cn = add i64 %.05416.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = add nuw i64 %.05416.i.i.i, %index       ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <4 x i32>, ptr %i.cp, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %wide.load49 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.co ; 2 uses
  %i.cs = lshr <4 x i32> %wide.load, splat (i32 31)
  %i.ct = lshr <4 x i32> %wide.load49, splat (i32 31)
  %i.cu = trunc nuw nsw <4 x i32> %i.cs to <4 x i8>
  %i.cv = trunc nuw nsw <4 x i32> %i.ct to <4 x i8>
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store <4 x i8> %i.cu, ptr %i.cr, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  store <4 x i8> %i.cv, ptr %i.cw, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !2489

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %.loopexit7.i.i.i, label %.lr.ph.i.i.i.preheader96

.lr.ph.i.i.i.preheader96:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.111.i.i.i.ph = phi i64 [ %.05416.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cy = icmp ult i64 %.05416.i.i.i, %i.ck
  br i1 %i.cy, label %.lr.ph13.i.i.i.preheader, label %.loopexit7.i.i.i

.lr.ph13.i.i.i.preheader:                         ; preds = %.preheader6.i.i.i
  %i.cz = sub nuw i64 %i.ck, %.05416.i.i.i
  %.neg = add i64 %.05416.i.i.i, 1
  %xtraiter = and i64 %i.cz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph13.i.i.i.prol.loopexit, label %.lr.ph13.i.i.i.prol

.lr.ph13.i.i.i.prol:                              ; preds = %.lr.ph13.i.i.i.preheader
  %i.da = and i64 %i.ci, 1
  %.not.i.i.i.prol = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph13.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph13.i.i.i.prol
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05416.i.i.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %i.dd = getelementptr inbounds nuw i8, ptr %i.p, i64 %.05416.i.i.i
  %.lobit4.i.i.i.prol = lshr i32 %i.dc, 31
  %i.de = trunc nuw nsw i32 %.lobit4.i.i.i.prol to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  br label %.lr.ph13.i.i.i.prol.loopexit.unr-lcssa

.lr.ph13.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph13.i.i.i.prol
  %i.df = add nuw i64 %.05416.i.i.i, 1
  br label %.lr.ph13.i.i.i.prol.loopexit

.lr.ph13.i.i.i.prol.loopexit:                     ; preds = %.lr.ph13.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph13.i.i.i.preheader
  %.212.i.i.i.unr = phi i64 [ %.05416.i.i.i, %.lr.ph13.i.i.i.preheader ], [ %i.df, %.lr.ph13.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dg = icmp eq i64 %i.ck, %.neg
  br i1 %i.dg, label %.loopexit7.i.i.i, label %.lr.ph13.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader96, %.lr.ph.i.i.i
  %.111.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %.111.i.i.i.ph, %.lr.ph.i.i.i.preheader96 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.111.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 %.111.i.i.i
  %.lobit.i.i.i = lshr i32 %i.di, 31
  %i.dk = trunc nuw nsw i32 %.lobit.i.i.i to i8
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  %i.dl = add nuw i64 %.111.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dl, %i.ck
  br i1 %exitcond.not.i.i.i, label %.loopexit7.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2490

.lr.ph13.i.i.i:                                   ; preds = %.lr.ph13.i.i.i.prol.loopexit, %bb.s
  %.212.i.i.i = phi i64 [ %i.eb, %bb.s ], [ %.212.i.i.i.unr, %.lr.ph13.i.i.i.prol.loopexit ] ; 5 uses
  %i.dm = sub nuw i64 %.212.i.i.i, %.05416.i.i.i
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.ci
  %.not.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i, label %.lr.ph13.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph13.i.i.i
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.212.i.i.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %i.dr = getelementptr inbounds nuw i8, ptr %i.p, i64 %.212.i.i.i
  %.lobit4.i.i.i = lshr i32 %i.dq, 31
  %i.ds = trunc nuw nsw i32 %.lobit4.i.i.i to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  br label %.lr.ph13.i.i.i.1

.lr.ph13.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph13.i.i.i
  %i.dt = add nuw i64 %.212.i.i.i, 1              ; 3 uses
  %i.du = sub nuw i64 %i.dt, %.05416.i.i.i
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = and i64 %i.dv, %i.ci
  %.not.i.i.i.1 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph13.i.i.i.1
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dt
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %i.dz = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dt
  %.lobit4.i.i.i.1 = lshr i32 %i.dy, 31
  %i.ea = trunc nuw nsw i32 %.lobit4.i.i.i.1 to i8
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph13.i.i.i.1
  %i.eb = add nuw i64 %.212.i.i.i, 2              ; 2 uses
  %exitcond27.not.i.i.i.1 = icmp eq i64 %i.eb, %i.ck
  br i1 %exitcond27.not.i.i.i.1, label %.loopexit7.i.i.i, label %.lr.ph13.i.i.i, !llvm.loop !2491

.loopexit7.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph13.i.i.i.prol.loopexit, %bb.s, %middle.block, %.preheader6.i.i.i, %.preheader8.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.ck, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.ck, %middle.block ], [ %.05416.i.i.i, %.preheader6.i.i.i ], [ %.05416.i.i.i, %.preheader8.i.i.i ], [ %i.ck, %.lr.ph13.i.i.i.prol.loopexit ], [ %i.ck, %bb.s ], [ %i.ck, %.lr.ph.i.i.i ]
  %i.ec = add nuw nsw i64 %.05515.i.i.i, 1        ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.ec, %i.bk
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIfbNS_12_GLOBAL__N_115SignBitOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !2488

.lr.ph19.i.i.i:                                   ; preds = %.lr.ph19.i.i.i.preheader93, %.lr.ph19.i.i.i
  %.018.i.i.i = phi i64 [ %i.eh, %.lr.ph19.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph19.i.i.i.preheader93 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.018.i.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !164, !alias.scope !2478, !noalias !2481
  %i.ef = getelementptr inbounds nuw i8, ptr %i.p, i64 %.018.i.i.i
  %.lobit5.i.i.i = lshr i32 %i.ee, 31
  %i.eg = trunc nuw nsw i32 %.lobit5.i.i.i to i8
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !2425, !alias.scope !2481, !noalias !2478
  %i.eh = add nuw i64 %.018.i.i.i, 1              ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %i.eh, %i.c
  br i1 %exitcond31.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIfbNS_12_GLOBAL__N_115SignBitOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph19.i.i.i, !llvm.loop !2492

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !77 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !131 ; 9 uses
  %i.em = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2493)
  call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  call void @llvm.experimental.noalias.scope.decl(metadata !2498)
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !78, !noalias !2500
  %.not.i.i60.i.i = icmp eq ptr %i.ep, null
  %.not8.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i66.i.i, label %.preheader2.i.i.i

.preheader2.i.i.i:                                ; preds = %bb.y
  br i1 %.not8.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIfbNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_115SignBitOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader2.i.i.i
  %i.eq = load ptr, ptr %i.em, align 8, !tbaa !153, !alias.scope !2498, !noalias !2501 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.eq, null
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.04.us.i.i.i = phi i64 [ %i.fk, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.es = lshr i64 %.04.us.i.i.i, 6               ; 2 uses
  %i.et = and i64 %.04.us.i.i.i, 63
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !78, !noalias !2500
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.es
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !79, !noalias !2500
  %i.ex = shl nuw i64 1, %i.et                    ; 2 uses
  %i.ey = and i64 %i.ew, %i.ex
  %.not.us.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.04.us.i.i.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !164, !alias.scope !2493, !noalias !2502
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.04.us.i.i.i
  %.lobit.us.i65.i.i = lshr i32 %i.fa, 31
  %i.fc = trunc nuw nsw i32 %.lobit.us.i65.i.i to i8
  store i8 %i.fc, ptr %i.fb, align 1, !tbaa !2425, !alias.scope !2496, !noalias !2503
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fd = load ptr, ptr %i.en, align 8, !tbaa !78, !noalias !2500 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i30.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

end_hunk_16
begin_hunk_17_@_ZN6duckdb13UnaryExecutor11ExecuteFlatIaaNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESA_Pvb:bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %iter.check155

iter.check155:                                    ; preds = %.preheader
  %min.iters.check141 = icmp ult i64 %2, 4
  br i1 %min.iters.check141, label %.lr.ph73.preheader, label %vector.main.loop.iter.check142

vector.main.loop.iter.check142:                   ; preds = %iter.check155
  %min.iters.check143 = icmp ult i64 %2, 32
  br i1 %min.iters.check143, label %vec.epilog.ph159, label %vector.ph144

vector.ph144:                                     ; preds = %vector.main.loop.iter.check142
  %n.mod.vf145 = and i64 %2, 28
  %n.vec146 = and i64 %2, -32                     ; 4 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph144
  %index148 = phi i64 [ 0, %vector.ph144 ], [ %index.next151, %vector.body147 ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index148 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load149 = load <16 x i8>, ptr %i.b, align 1, !tbaa !25
  %wide.load150 = load <16 x i8>, ptr %i.c, align 1, !tbaa !25
  %i.d = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load149, i1 false)
  %i.e = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load150, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index148 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <16 x i8> %i.d, ptr %i.f, align 1, !tbaa !25
  store <16 x i8> %i.e, ptr %i.g, align 1, !tbaa !25
  %index.next151 = add nuw i64 %index148, 32      ; 2 uses
  %i.h = icmp eq i64 %index.next151, %n.vec146
  br i1 %i.h, label %middle.block152, label %vector.body147, !llvm.loop !3644

middle.block152:                                  ; preds = %vector.body147
  %cmp.n153 = icmp eq i64 %2, %n.vec146
  br i1 %cmp.n153, label %.loopexit, label %vec.epilog.iter.check157

vec.epilog.iter.check157:                         ; preds = %middle.block152
  %min.epilog.iters.check158 = icmp eq i64 %n.mod.vf145, 0
  br i1 %min.epilog.iters.check158, label %.lr.ph73.preheader, label %vec.epilog.ph159, !prof !3645

vec.epilog.ph159:                                 ; preds = %vector.main.loop.iter.check142, %vec.epilog.iter.check157
  %vec.epilog.resume.val154 = phi i64 [ %n.vec146, %vec.epilog.iter.check157 ], [ 0, %vector.main.loop.iter.check142 ]
  %n.vec161 = and i64 %2, -4                      ; 3 uses
  br label %vec.epilog.vector.body162

vec.epilog.vector.body162:                        ; preds = %vec.epilog.vector.body162, %vec.epilog.ph159
  %index163 = phi i64 [ %vec.epilog.resume.val154, %vec.epilog.ph159 ], [ %index.next165, %vec.epilog.vector.body162 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %index163
  %wide.load164 = load <4 x i8>, ptr %i.i, align 1, !tbaa !25
  %i.j = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load164, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index163
  store <4 x i8> %i.j, ptr %i.k, align 1, !tbaa !25
  %index.next165 = add nuw i64 %index163, 4       ; 2 uses
  %i.l = icmp eq i64 %index.next165, %n.vec161
  br i1 %i.l, label %vec.epilog.middle.block166, label %vec.epilog.vector.body162, !llvm.loop !3646

vec.epilog.middle.block166:                       ; preds = %vec.epilog.vector.body162
  %cmp.n167 = icmp eq i64 %2, %n.vec161
  br i1 %cmp.n167, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %iter.check155, %vec.epilog.iter.check157, %vec.epilog.middle.block166
  %.072.ph = phi i64 [ 0, %iter.check155 ], [ %n.vec146, %vec.epilog.iter.check157 ], [ %n.vec161, %vec.epilog.middle.block166 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = icmp eq ptr %4, %3
  br i1 %i.n, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 8 uses
  store <2 x ptr> %i.r, ptr %i.m, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.z, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !34
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23, !inline_history !3647
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23, !inline_history !3647
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !36

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !83
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ar = add i64 %2, 63
  %i.as = lshr i64 %i.ar, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.as, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.at = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %.not.i56 = icmp eq ptr %i.at, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 9 uses
  %.05569.us = phi i64 [ %i.bs, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.au = add i64 %.05470.us, 64
  %i.av = tail call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %2) ; 6 uses
  %i.aw = icmp ult i64 %.05470.us, %i.av
  br i1 %i.aw, label %iter.check127, label %.loopexit63.us

iter.check127:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.ax = sub nuw i64 %i.av, %.05470.us           ; 7 uses
  %min.iters.check113 = icmp ult i64 %i.ax, 4
  br i1 %min.iters.check113, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %iter.check127
  %min.iters.check115 = icmp ult i64 %i.ax, 32
  br i1 %min.iters.check115, label %vec.epilog.ph131, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %n.mod.vf117 = and i64 %i.ax, 28
  %n.vec118 = and i64 %i.ax, -32                  ; 4 uses
  %i.ay = add i64 %.05470.us, %n.vec118
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph116
  %index120 = phi i64 [ 0, %vector.ph116 ], [ %index.next123, %vector.body119 ] ; 2 uses
  %i.az = add nuw i64 %.05470.us, %index120       ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load121 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !25
  %wide.load122 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !25
  %i.bc = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load121, i1 false)
  %i.bd = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load122, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.az ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !25
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !25
  %index.next123 = add nuw i64 %index120, 32      ; 2 uses
  %i.bg = icmp eq i64 %index.next123, %n.vec118
  br i1 %i.bg, label %middle.block124, label %vector.body119, !llvm.loop !3648

middle.block124:                                  ; preds = %vector.body119
  %cmp.n125 = icmp eq i64 %i.ax, %n.vec118
  br i1 %cmp.n125, label %.loopexit63.us, label %vec.epilog.iter.check129

vec.epilog.iter.check129:                         ; preds = %middle.block124
  %min.epilog.iters.check130 = icmp eq i64 %n.mod.vf117, 0
  br i1 %min.epilog.iters.check130, label %.lr.ph.us.preheader, label %vec.epilog.ph131, !prof !3645

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check129
  %vec.epilog.resume.val126 = phi i64 [ %n.vec118, %vec.epilog.iter.check129 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec133 = and i64 %i.ax, -4                   ; 3 uses
  %i.bh = add i64 %.05470.us, %n.vec133
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph131
  %index135 = phi i64 [ %vec.epilog.resume.val126, %vec.epilog.ph131 ], [ %index.next137, %vec.epilog.vector.body134 ] ; 2 uses
  %i.bi = add nuw i64 %.05470.us, %index135       ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %wide.load136 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !25
  %i.bk = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load136, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !25
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next137, %n.vec133
  br i1 %i.bm, label %vec.epilog.middle.block138, label %vec.epilog.vector.body134, !llvm.loop !3649

vec.epilog.middle.block138:                       ; preds = %vec.epilog.vector.body134
  %cmp.n139 = icmp eq i64 %i.ax, %n.vec133
  br i1 %cmp.n139, label %.loopexit63.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check127, %vec.epilog.iter.check129, %vec.epilog.middle.block138
  %.165.us.ph = phi i64 [ %.05470.us, %iter.check127 ], [ %i.ay, %vec.epilog.iter.check129 ], [ %i.bh, %vec.epilog.middle.block138 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.165.us = phi i64 [ %i.br, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %.165.us
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !25
  %i.bp = tail call noundef i8 @llvm.abs.i8(i8 %i.bo, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.165.us
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !25
  %i.br = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.br, %i.av
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !3650

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block124, %vec.epilog.middle.block138, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.av, %middle.block124 ], [ %i.av, %vec.epilog.middle.block138 ], [ %i.av, %.lr.ph.us ]
  %i.bs = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bs, %i.as
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !3651

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 13 uses
  %.05569 = phi i64 [ %i.dc, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05569
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !79 ; 2 uses
  %i.bv = add i64 %.05470, 64
  %i.bw = tail call noundef i64 @llvm.umin.i64(i64 %i.bv, i64 %2) ; 10 uses
  switch i64 %i.bu, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bx = icmp ult i64 %.05470, %i.bw
  br i1 %i.bx, label %iter.check, label %.loopexit61

iter.check:                                       ; preds = %.preheader62
  %i.by = sub nuw i64 %i.bw, %.05470              ; 7 uses
  %min.iters.check = icmp ult i64 %i.by, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check104 = icmp ult i64 %i.by, 32
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.by, 28
  %n.vec = and i64 %i.by, -32                     ; 4 uses
  %i.bz = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = add nuw i64 %.05470, %index             ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load = load <16 x i8>, ptr %i.cb, align 1, !tbaa !25
  %wide.load105 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !25
  %i.cd = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load, i1 false)
  %i.ce = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load105, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <16 x i8> %i.cd, ptr %i.cf, align 1, !tbaa !25
  store <16 x i8> %i.ce, ptr %i.cg, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !3652

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !3645

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec107 = and i64 %i.by, -4                   ; 3 uses
  %i.ci = add i64 %.05470, %n.vec107
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 2 uses
  %i.cj = add nuw i64 %.05470, %index108          ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  %wide.load109 = load <4 x i8>, ptr %i.ck, align 1, !tbaa !25
  %i.cl = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load109, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  store <4 x i8> %i.cl, ptr %i.cm, align 1, !tbaa !25
  %index.next110 = add nuw i64 %index108, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next110, %n.vec107
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3653

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n111 = icmp eq i64 %i.by, %n.vec107
  br i1 %cmp.n111, label %.loopexit61, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.165.ph = phi i64 [ %.05470, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.co = icmp ult i64 %.05470, %i.bw
  br i1 %i.co, label %.lr.ph67, label %.loopexit61

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.165 = phi i64 [ %i.ct, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %.165
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !25
  %i.cr = tail call noundef i8 @llvm.abs.i8(i8 %i.cq, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %.165
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !25
  %i.ct = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ct, %i.bw
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !3654

.lr.ph67:                                         ; preds = %.preheader60, %bb.q
  %.266 = phi i64 [ %i.db, %bb.q ], [ %.05470, %.preheader60 ] ; 4 uses
  %i.cu = sub nuw i64 %.266, %.05470
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.bu
  %.not = icmp eq i64 %i.cw, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph67
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %.266
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !25
  %i.cz = tail call noundef i8 @llvm.abs.i8(i8 %i.cy, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %.266
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph67, %bb.p
  %i.db = add nuw i64 %.266, 1                    ; 2 uses
  %exitcond81.not = icmp eq i64 %i.db, %i.bw
  br i1 %exitcond81.not, label %.loopexit61, label %.lr.ph67, !llvm.loop !3655

.loopexit61:                                      ; preds = %.lr.ph, %bb.q, %middle.block, %vec.epilog.middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.bw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.bw, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.bw, %bb.q ], [ %i.bw, %vec.epilog.middle.block ], [ %i.bw, %.lr.ph ]
  %i.dc = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dc, %i.as
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !3651

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %.lr.ph73
  %.072 = phi i64 [ %i.dh, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.072
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !25
  %i.df = tail call noundef i8 @llvm.abs.i8(i8 %i.de, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %.072
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !25
  %i.dh = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dh, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !3656

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block152, %vec.epilog.middle.block166, %bb.o, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !3640   ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
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
  %i.f = load ptr, ptr %1, align 8, !tbaa !238    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret i64 %i.a

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb6Vector10DictionaryERS0_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopIaaNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESD_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !78
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.v, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.035.us
  %i.l = load i8, ptr %i.k, align 1, !tbaa !25
  %i.m = tail call noundef i8 @llvm.abs.i8(i8 %i.l, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.035.us
  store i8 %i.m, ptr %i.n, align 1, !tbaa !25
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.o = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %.not.i30.us = icmp eq ptr %i.o, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !83
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %.pre.i.us, %bb.d ], [ %i.o, %bb.c ]
  %i.r = xor i64 %i.i, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.d ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79
  %i.u = and i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8, !tbaa !79
  br label %bb.e

end_hunk_17
begin_hunk_18_@_ZN6duckdb13UnaryExecutor11ExecuteFlatIssNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESA_Pvb:bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %iter.check155

iter.check155:                                    ; preds = %.preheader
  %min.iters.check141 = icmp ult i64 %2, 4
  br i1 %min.iters.check141, label %.lr.ph73.preheader, label %vector.main.loop.iter.check142

vector.main.loop.iter.check142:                   ; preds = %iter.check155
  %min.iters.check143 = icmp ult i64 %2, 16
  br i1 %min.iters.check143, label %vec.epilog.ph159, label %vector.ph144

vector.ph144:                                     ; preds = %vector.main.loop.iter.check142
  %n.mod.vf145 = and i64 %2, 12
  %n.vec146 = and i64 %2, -16                     ; 4 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph144
  %index148 = phi i64 [ 0, %vector.ph144 ], [ %index.next151, %vector.body147 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index148 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load149 = load <8 x i16>, ptr %i.b, align 2, !tbaa !308
  %wide.load150 = load <8 x i16>, ptr %i.c, align 2, !tbaa !308
  %i.d = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %wide.load149, i1 false)
  %i.e = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %wide.load150, i1 false)
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index148 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <8 x i16> %i.d, ptr %i.f, align 2, !tbaa !308
  store <8 x i16> %i.e, ptr %i.g, align 2, !tbaa !308
  %index.next151 = add nuw i64 %index148, 16      ; 2 uses
  %i.h = icmp eq i64 %index.next151, %n.vec146
  br i1 %i.h, label %middle.block152, label %vector.body147, !llvm.loop !3663

middle.block152:                                  ; preds = %vector.body147
  %cmp.n153 = icmp eq i64 %2, %n.vec146
  br i1 %cmp.n153, label %.loopexit, label %vec.epilog.iter.check157

vec.epilog.iter.check157:                         ; preds = %middle.block152
  %min.epilog.iters.check158 = icmp eq i64 %n.mod.vf145, 0
  br i1 %min.epilog.iters.check158, label %.lr.ph73.preheader, label %vec.epilog.ph159, !prof !3664

vec.epilog.ph159:                                 ; preds = %vector.main.loop.iter.check142, %vec.epilog.iter.check157
  %vec.epilog.resume.val154 = phi i64 [ %n.vec146, %vec.epilog.iter.check157 ], [ 0, %vector.main.loop.iter.check142 ]
  %n.vec161 = and i64 %2, -4                      ; 3 uses
  br label %vec.epilog.vector.body162

vec.epilog.vector.body162:                        ; preds = %vec.epilog.vector.body162, %vec.epilog.ph159
  %index163 = phi i64 [ %vec.epilog.resume.val154, %vec.epilog.ph159 ], [ %index.next165, %vec.epilog.vector.body162 ] ; 3 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index163
  %wide.load164 = load <4 x i16>, ptr %i.i, align 2, !tbaa !308
  %i.j = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load164, i1 false)
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index163
  store <4 x i16> %i.j, ptr %i.k, align 2, !tbaa !308
  %index.next165 = add nuw i64 %index163, 4       ; 2 uses
  %i.l = icmp eq i64 %index.next165, %n.vec161
  br i1 %i.l, label %vec.epilog.middle.block166, label %vec.epilog.vector.body162, !llvm.loop !3665

vec.epilog.middle.block166:                       ; preds = %vec.epilog.vector.body162
  %cmp.n167 = icmp eq i64 %2, %n.vec161
  br i1 %cmp.n167, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %iter.check155, %vec.epilog.iter.check157, %vec.epilog.middle.block166
  %.072.ph = phi i64 [ 0, %iter.check155 ], [ %n.vec146, %vec.epilog.iter.check157 ], [ %n.vec161, %vec.epilog.middle.block166 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = icmp eq ptr %4, %3
  br i1 %i.n, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 8 uses
  store <2 x ptr> %i.r, ptr %i.m, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.z, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !34
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23, !inline_history !3647
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23, !inline_history !3647
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !36

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !83
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ar = add i64 %2, 63
  %i.as = lshr i64 %i.ar, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.as, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.at = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %.not.i56 = icmp eq ptr %i.at, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 9 uses
  %.05569.us = phi i64 [ %i.bs, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.au = add i64 %.05470.us, 64
  %i.av = tail call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %2) ; 6 uses
  %i.aw = icmp ult i64 %.05470.us, %i.av
  br i1 %i.aw, label %iter.check127, label %.loopexit63.us

iter.check127:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.ax = sub nuw i64 %i.av, %.05470.us           ; 7 uses
  %min.iters.check113 = icmp ult i64 %i.ax, 4
  br i1 %min.iters.check113, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %iter.check127
  %min.iters.check115 = icmp ult i64 %i.ax, 16
  br i1 %min.iters.check115, label %vec.epilog.ph131, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %n.mod.vf117 = and i64 %i.ax, 12
  %n.vec118 = and i64 %i.ax, -16                  ; 4 uses
  %i.ay = add i64 %.05470.us, %n.vec118
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph116
  %index120 = phi i64 [ 0, %vector.ph116 ], [ %index.next123, %vector.body119 ] ; 2 uses
  %i.az = add nuw i64 %.05470.us, %index120       ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load121 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !308
  %wide.load122 = load <8 x i16>, ptr %i.bb, align 2, !tbaa !308
  %i.bc = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %wide.load121, i1 false)
  %i.bd = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %wide.load122, i1 false)
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.az ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <8 x i16> %i.bc, ptr %i.be, align 2, !tbaa !308
  store <8 x i16> %i.bd, ptr %i.bf, align 2, !tbaa !308
  %index.next123 = add nuw i64 %index120, 16      ; 2 uses
  %i.bg = icmp eq i64 %index.next123, %n.vec118
  br i1 %i.bg, label %middle.block124, label %vector.body119, !llvm.loop !3666

middle.block124:                                  ; preds = %vector.body119
  %cmp.n125 = icmp eq i64 %i.ax, %n.vec118
  br i1 %cmp.n125, label %.loopexit63.us, label %vec.epilog.iter.check129

vec.epilog.iter.check129:                         ; preds = %middle.block124
  %min.epilog.iters.check130 = icmp eq i64 %n.mod.vf117, 0
  br i1 %min.epilog.iters.check130, label %.lr.ph.us.preheader, label %vec.epilog.ph131, !prof !3664

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check129
  %vec.epilog.resume.val126 = phi i64 [ %n.vec118, %vec.epilog.iter.check129 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec133 = and i64 %i.ax, -4                   ; 3 uses
  %i.bh = add i64 %.05470.us, %n.vec133
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph131
  %index135 = phi i64 [ %vec.epilog.resume.val126, %vec.epilog.ph131 ], [ %index.next137, %vec.epilog.vector.body134 ] ; 2 uses
  %i.bi = add nuw i64 %.05470.us, %index135       ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bi
  %wide.load136 = load <4 x i16>, ptr %i.bj, align 2, !tbaa !308
  %i.bk = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load136, i1 false)
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bi
  store <4 x i16> %i.bk, ptr %i.bl, align 2, !tbaa !308
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next137, %n.vec133
  br i1 %i.bm, label %vec.epilog.middle.block138, label %vec.epilog.vector.body134, !llvm.loop !3667

vec.epilog.middle.block138:                       ; preds = %vec.epilog.vector.body134
  %cmp.n139 = icmp eq i64 %i.ax, %n.vec133
  br i1 %cmp.n139, label %.loopexit63.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check127, %vec.epilog.iter.check129, %vec.epilog.middle.block138
  %.165.us.ph = phi i64 [ %.05470.us, %iter.check127 ], [ %i.ay, %vec.epilog.iter.check129 ], [ %i.bh, %vec.epilog.middle.block138 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.165.us = phi i64 [ %i.br, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.165.us
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !308
  %i.bp = tail call noundef i16 @llvm.abs.i16(i16 %i.bo, i1 false)
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.165.us
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !308
  %i.br = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.br, %i.av
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !3668

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block124, %vec.epilog.middle.block138, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.av, %middle.block124 ], [ %i.av, %vec.epilog.middle.block138 ], [ %i.av, %.lr.ph.us ]
  %i.bs = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bs, %i.as
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !3669

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 19 uses
  %.05569 = phi i64 [ %i.ds, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05569
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !79 ; 4 uses
  %i.bv = add i64 %.05470, 64
  %i.bw = tail call noundef i64 @llvm.umin.i64(i64 %i.bv, i64 %2) ; 13 uses
  switch i64 %i.bu, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bx = icmp ult i64 %.05470, %i.bw
  br i1 %i.bx, label %iter.check, label %.loopexit61

iter.check:                                       ; preds = %.preheader62
  %i.by = sub nuw i64 %i.bw, %.05470              ; 7 uses
  %min.iters.check = icmp ult i64 %i.by, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check104 = icmp ult i64 %i.by, 16
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.by, 12
  %n.vec = and i64 %i.by, -16                     ; 4 uses
  %i.bz = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = add nuw i64 %.05470, %index             ; 2 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load = load <8 x i16>, ptr %i.cb, align 2, !tbaa !308
  %wide.load105 = load <8 x i16>, ptr %i.cc, align 2, !tbaa !308
  %i.cd = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %wide.load, i1 false)
  %i.ce = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %wide.load105, i1 false)
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ca ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <8 x i16> %i.cd, ptr %i.cf, align 2, !tbaa !308
  store <8 x i16> %i.ce, ptr %i.cg, align 2, !tbaa !308
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !3670

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !3664

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec107 = and i64 %i.by, -4                   ; 3 uses
  %i.ci = add i64 %.05470, %n.vec107
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 2 uses
  %i.cj = add nuw i64 %.05470, %index108          ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cj
  %wide.load109 = load <4 x i16>, ptr %i.ck, align 2, !tbaa !308
  %i.cl = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load109, i1 false)
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cj
  store <4 x i16> %i.cl, ptr %i.cm, align 2, !tbaa !308
  %index.next110 = add nuw i64 %index108, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next110, %n.vec107
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3671

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n111 = icmp eq i64 %i.by, %n.vec107
  br i1 %cmp.n111, label %.loopexit61, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.165.ph = phi i64 [ %.05470, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.co = icmp ult i64 %.05470, %i.bw
  br i1 %i.co, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cp = sub nuw i64 %i.bw, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.cq = and i64 %i.bu, 1
  %.not.prol = icmp eq i64 %i.cq, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05470
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !308
  %i.ct = tail call noundef i16 @llvm.abs.i16(i16 %i.cs, i1 false)
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.05470
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !308
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cv = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cv, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.cw = icmp eq i64 %i.bw, %.neg
  br i1 %i.cw, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.165 = phi i64 [ %i.db, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.165
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !308
  %i.cz = tail call noundef i16 @llvm.abs.i16(i16 %i.cy, i1 false)
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.165
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !308
  %i.db = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, %i.bw
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !3672

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dr, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.dc = sub nuw i64 %.266, %.05470
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.dd, %i.bu
  %.not = icmp eq i64 %i.de, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.266
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !308
  %i.dh = tail call noundef i16 @llvm.abs.i16(i16 %i.dg, i1 false)
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.266
  store i16 %i.dh, ptr %i.di, align 2, !tbaa !308
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dj = add nuw i64 %.266, 1                    ; 3 uses
  %i.dk = sub nuw i64 %i.dj, %.05470
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dl, %i.bu
  %.not.1 = icmp eq i64 %i.dm, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !308
  %i.dp = tail call noundef i16 @llvm.abs.i16(i16 %i.do, i1 false)
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dj
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !308
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dr = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dr, %i.bw
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !3673

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %vec.epilog.middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.bw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.bw, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.bw, %.lr.ph67.prol.loopexit ], [ %i.bw, %vec.epilog.middle.block ], [ %i.bw, %bb.s ], [ %i.bw, %.lr.ph ]
  %i.ds = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.ds, %i.as
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !3669

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %.lr.ph73
  %.072 = phi i64 [ %i.dx, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.072
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !308
  %i.dv = tail call noundef i16 @llvm.abs.i16(i16 %i.du, i1 false)
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.072
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !308
  %i.dx = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dx, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !3674

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block152, %vec.epilog.middle.block166, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopIssNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESD_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !78
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.v, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.035.us
  %i.l = load i16, ptr %i.k, align 2, !tbaa !308
  %i.m = tail call noundef i16 @llvm.abs.i16(i16 %i.l, i1 false)
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.035.us
  store i16 %i.m, ptr %i.n, align 2, !tbaa !308
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.o = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %.not.i30.us = icmp eq ptr %i.o, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !83
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %.pre.i.us, %bb.d ], [ %i.o, %bb.c ]
  %i.r = xor i64 %i.i, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.d ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79
  %i.u = and i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.v = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.v, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !3675

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.w = load ptr, ptr %3, align 8, !tbaa !153    ; 4 uses
  %.not.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i31, label %iter.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader: ; preds = %.lr.ph37
  %xtraiter = and i64 %2, 1
  %i.x = icmp eq i64 %2, 1
  br i1 %i.x, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader
  %unroll_iter = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32

iter.check:                                       ; preds = %.lr.ph37
  %min.iters.check = icmp ult i64 %2, 4
end_hunk_18
begin_hunk_19_@_ZN6duckdb13UnaryExecutor15ExecuteStandardIiiNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvRNS_6VectorES5_mPvbNS_14FunctionErrorsE:bb.a
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ag

bb.ac:                                            ; preds = %bb.k, %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.n, %bb.m, %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.ac ], [ %i.cg, %bb.ae ], [ %i.cf, %bb.ad ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %bb.i, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIiiNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESA_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 8
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -8                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <4 x i32>, ptr %i.b, align 4, !tbaa !3
  %wide.load126 = load <4 x i32>, ptr %i.c, align 4, !tbaa !3
  %i.d = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load125, i1 true)
  %i.e = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load126, i1 true)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %i.d, ptr %i.f, align 4, !tbaa !3
  store <4 x i32> %i.e, ptr %i.g, align 4, !tbaa !3
  %index.next127 = add nuw i64 %index124, 8       ; 2 uses
  %i.h = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.h, label %middle.block128, label %vector.body123, !llvm.loop !3680

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = icmp eq ptr %4, %3
  br i1 %i.j, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 8 uses
  store <2 x ptr> %i.n, ptr %i.i, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !34
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !36

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !83
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.an = add i64 %2, 63
  %i.ao = lshr i64 %i.an, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.ao, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ap = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %.not.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bi, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.aq = add i64 %.05470.us, 64
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %2) ; 5 uses
  %i.as = icmp ult i64 %.05470.us, %i.ar
  br i1 %i.as, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.at = sub nuw i64 %i.ar, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.at, 8
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.at, -8                   ; 3 uses
  %i.au = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.av = add nuw i64 %.05470.us, %index111       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load112 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !3
  %wide.load113 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !3
  %i.ay = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load112, i1 true)
  %i.az = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load113, i1 true)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x i32> %i.ay, ptr %i.ba, align 4, !tbaa !3
  store <4 x i32> %i.az, ptr %i.bb, align 4, !tbaa !3
  %index.next114 = add nuw i64 %index111, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bc, label %middle.block115, label %vector.body110, !llvm.loop !3681

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.at, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.au, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bh, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.165.us
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = tail call noundef i32 @llvm.abs.i32(i32 %i.be, i1 true)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.165.us
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !3
  %i.bh = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bh, %i.ar
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !3682

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.ar, %middle.block115 ], [ %i.ar, %.lr.ph.us ]
  %i.bi = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !3683

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dc, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.05569
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79 ; 4 uses
  %i.bl = add i64 %.05470, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %2) ; 12 uses
  switch i64 %i.bk, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bn = icmp ult i64 %.05470, %i.bm
  br i1 %i.bn, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bo = sub nuw i64 %i.bm, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bo, -8                      ; 3 uses
  %i.bp = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = add nuw i64 %.05470, %index             ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !3
  %wide.load104 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !3
  %i.bt = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load, i1 true)
  %i.bu = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load104, i1 true)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x i32> %i.bt, ptr %i.bv, align 4, !tbaa !3
  store <4 x i32> %i.bu, ptr %i.bw, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !3684

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.by = icmp ult i64 %.05470, %i.bm
  br i1 %i.by, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.bz = sub nuw i64 %i.bm, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.bz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ca = and i64 %i.bk, 1
  %.not.prol = icmp eq i64 %i.ca, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05470
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = tail call noundef i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05470
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !3
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cf = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cf, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.cg = icmp eq i64 %i.bm, %.neg
  br i1 %i.cg, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cl, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.165
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = tail call noundef i32 @llvm.abs.i32(i32 %i.ci, i1 true)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.165
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  %i.cl = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.bm
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !3685

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.db, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cm = sub nuw i64 %.266, %.05470
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, %i.bk
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.266
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = tail call noundef i32 @llvm.abs.i32(i32 %i.cq, i1 true)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.266
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !3
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.ct = add nuw i64 %.266, 1                    ; 3 uses
  %i.cu = sub nuw i64 %i.ct, %.05470
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.bk
  %.not.1 = icmp eq i64 %i.cw, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ct
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = tail call noundef i32 @llvm.abs.i32(i32 %i.cy, i1 true)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.db = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.db, %i.bm
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !3686

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.bm, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.bm, %.lr.ph67.prol.loopexit ], [ %i.bm, %bb.s ], [ %i.bm, %.lr.ph ]
  %i.dc = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dc, %i.ao
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !3683

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dh, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.072
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = tail call noundef i32 @llvm.abs.i32(i32 %i.de, i1 true)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.072
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !3
  %i.dh = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dh, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !3687

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopIiiNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESD_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !78
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.v, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.035.us
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = tail call noundef i32 @llvm.abs.i32(i32 %i.l, i1 true)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035.us
  store i32 %i.m, ptr %i.n, align 4, !tbaa !3
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.o = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %.not.i30.us = icmp eq ptr %i.o, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !83
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %.pre.i.us, %bb.d ], [ %i.o, %bb.c ]
  %i.r = xor i64 %i.i, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.d ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79
  %i.u = and i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.v = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.v, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !3688

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.w = load ptr, ptr %3, align 8, !tbaa !153    ; 4 uses
  %.not.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i31, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader: ; preds = %.lr.ph37
  %xtraiter = and i64 %2, 1
  %i.x = icmp eq i64 %2, 1
  br i1 %i.x, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader
end_hunk_19
begin_hunk_20_@_ZN6duckdb13UnaryExecutor15ExecuteStandardIllNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvRNS_6VectorES5_mPvbNS_14FunctionErrorsE:bb.a
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ag

bb.ac:                                            ; preds = %bb.k, %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.n, %bb.m, %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.ac ], [ %i.cg, %bb.ae ], [ %i.cf, %bb.ad ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %bb.i, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIllNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESA_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !79
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !79
  %i.d = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %wide.load125, i1 true)
  %i.e = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %wide.load126, i1 true)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x i64> %i.d, ptr %i.f, align 8, !tbaa !79
  store <2 x i64> %i.e, ptr %i.g, align 8, !tbaa !79
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.h = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.h, label %middle.block128, label %vector.body123, !llvm.loop !3692

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = icmp eq ptr %4, %3
  br i1 %i.j, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 8 uses
  store <2 x ptr> %i.n, ptr %i.i, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !34
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !36

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !83
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.an = add i64 %2, 63
  %i.ao = lshr i64 %i.an, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.ao, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ap = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %.not.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bi, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.aq = add i64 %.05470.us, 64
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %2) ; 5 uses
  %i.as = icmp ult i64 %.05470.us, %i.ar
  br i1 %i.as, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.at = sub nuw i64 %i.ar, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.at, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.at, -4                   ; 3 uses
  %i.au = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.av = add nuw i64 %.05470.us, %index111       ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !79
  %wide.load113 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !79
  %i.ay = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %wide.load112, i1 true)
  %i.az = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %wide.load113, i1 true)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> %i.ay, ptr %i.ba, align 8, !tbaa !79
  store <2 x i64> %i.az, ptr %i.bb, align 8, !tbaa !79
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bc, label %middle.block115, label %vector.body110, !llvm.loop !3693

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.at, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.au, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bh, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !79
  %i.bf = tail call noundef i64 @llvm.abs.i64(i64 %i.be, i1 true)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !79
  %i.bh = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bh, %i.ar
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !3694

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.ar, %middle.block115 ], [ %i.ar, %.lr.ph.us ]
  %i.bi = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !3695

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dc, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.05569
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79 ; 4 uses
  %i.bl = add i64 %.05470, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %2) ; 12 uses
  switch i64 %i.bk, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bn = icmp ult i64 %.05470, %i.bm
  br i1 %i.bn, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bo = sub nuw i64 %i.bm, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bo, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bo, -4                      ; 3 uses
  %i.bp = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = add nuw i64 %.05470, %index             ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <2 x i64>, ptr %i.br, align 8, !tbaa !79
  %wide.load104 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !79
  %i.bt = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %wide.load, i1 true)
  %i.bu = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %wide.load104, i1 true)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x i64> %i.bt, ptr %i.bv, align 8, !tbaa !79
  store <2 x i64> %i.bu, ptr %i.bw, align 8, !tbaa !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !3696

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.by = icmp ult i64 %.05470, %i.bm
  br i1 %i.by, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.bz = sub nuw i64 %i.bm, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.bz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ca = and i64 %i.bk, 1
  %.not.prol = icmp eq i64 %i.ca, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !79
  %i.cd = tail call noundef i64 @llvm.abs.i64(i64 %i.cc, i1 true)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !79
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cf = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cf, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.cg = icmp eq i64 %i.bm, %.neg
  br i1 %i.cg, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cl, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !79
  %i.cj = tail call noundef i64 @llvm.abs.i64(i64 %i.ci, i1 true)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !79
  %i.cl = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.bm
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !3697

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.db, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cm = sub nuw i64 %.266, %.05470
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, %i.bk
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !79
  %i.cr = tail call noundef i64 @llvm.abs.i64(i64 %i.cq, i1 true)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !79
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.ct = add nuw i64 %.266, 1                    ; 3 uses
  %i.cu = sub nuw i64 %i.ct, %.05470
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.bk
  %.not.1 = icmp eq i64 %i.cw, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ct
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !79
  %i.cz = tail call noundef i64 @llvm.abs.i64(i64 %i.cy, i1 true)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ct
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !79
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.db = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.db, %i.bm
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !3698

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.bm, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.bm, %.lr.ph67.prol.loopexit ], [ %i.bm, %bb.s ], [ %i.bm, %.lr.ph ]
  %i.dc = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dc, %i.ao
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !3695

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dh, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !79
  %i.df = tail call noundef i64 @llvm.abs.i64(i64 %i.de, i1 true)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !79
  %i.dh = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dh, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !3699

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopIllNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESD_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !78
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.v, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !79
  %i.m = tail call noundef i64 @llvm.abs.i64(i64 %i.l, i1 true)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.m, ptr %i.n, align 8, !tbaa !79
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.o = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %.not.i30.us = icmp eq ptr %i.o, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !83
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %.pre.i.us, %bb.d ], [ %i.o, %bb.c ]
  %i.r = xor i64 %i.i, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.d ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79
  %i.u = and i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.v = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.v, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !3700

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.w = load ptr, ptr %3, align 8, !tbaa !153    ; 4 uses
  %.not.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i31, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader: ; preds = %.lr.ph37
  %xtraiter = and i64 %2, 1
  %i.x = icmp eq i64 %2, 1
  br i1 %i.x, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader
end_hunk_20
begin_hunk_21_@_ZN6duckdb13UnaryExecutor15ExecuteStandardIffNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvRNS_6VectorES5_mPvbNS_14FunctionErrorsE:bb.a
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ag

bb.ac:                                            ; preds = %bb.k, %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.n, %bb.m, %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.ac ], [ %i.cg, %bb.ae ], [ %i.cf, %bb.ad ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %bb.i, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIffNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESA_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 8
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -8                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <4 x float>, ptr %i.b, align 4, !tbaa !164
  %wide.load126 = load <4 x float>, ptr %i.c, align 4, !tbaa !164
  %i.d = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load125)
  %i.e = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load126)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x float> %i.d, ptr %i.f, align 4, !tbaa !164
  store <4 x float> %i.e, ptr %i.g, align 4, !tbaa !164
  %index.next127 = add nuw i64 %index124, 8       ; 2 uses
  %i.h = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.h, label %middle.block128, label %vector.body123, !llvm.loop !3736

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = icmp eq ptr %4, %3
  br i1 %i.j, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 8 uses
  store <2 x ptr> %i.n, ptr %i.i, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !34
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !36

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !83
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.an = add i64 %2, 63
  %i.ao = lshr i64 %i.an, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.ao, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ap = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %.not.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bi, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.aq = add i64 %.05470.us, 64
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %2) ; 5 uses
  %i.as = icmp ult i64 %.05470.us, %i.ar
  br i1 %i.as, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.at = sub nuw i64 %i.ar, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.at, 8
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.at, -8                   ; 3 uses
  %i.au = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.av = add nuw i64 %.05470.us, %index111       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load112 = load <4 x float>, ptr %i.aw, align 4, !tbaa !164
  %wide.load113 = load <4 x float>, ptr %i.ax, align 4, !tbaa !164
  %i.ay = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load112)
  %i.az = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load113)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x float> %i.ay, ptr %i.ba, align 4, !tbaa !164
  store <4 x float> %i.az, ptr %i.bb, align 4, !tbaa !164
  %index.next114 = add nuw i64 %index111, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bc, label %middle.block115, label %vector.body110, !llvm.loop !3737

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.at, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.au, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bh, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.165.us
  %i.be = load float, ptr %i.bd, align 4, !tbaa !164
  %i.bf = tail call noundef float @llvm.fabs.f32(float %i.be)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.165.us
  store float %i.bf, ptr %i.bg, align 4, !tbaa !164
  %i.bh = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bh, %i.ar
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !3738

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.ar, %middle.block115 ], [ %i.ar, %.lr.ph.us ]
  %i.bi = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !3739

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dc, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.05569
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79 ; 4 uses
  %i.bl = add i64 %.05470, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %2) ; 12 uses
  switch i64 %i.bk, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bn = icmp ult i64 %.05470, %i.bm
  br i1 %i.bn, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bo = sub nuw i64 %i.bm, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bo, -8                      ; 3 uses
  %i.bp = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = add nuw i64 %.05470, %index             ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <4 x float>, ptr %i.br, align 4, !tbaa !164
  %wide.load104 = load <4 x float>, ptr %i.bs, align 4, !tbaa !164
  %i.bt = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.bu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load104)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x float> %i.bt, ptr %i.bv, align 4, !tbaa !164
  store <4 x float> %i.bu, ptr %i.bw, align 4, !tbaa !164
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !3740

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.by = icmp ult i64 %.05470, %i.bm
  br i1 %i.by, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.bz = sub nuw i64 %i.bm, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.bz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ca = and i64 %i.bk, 1
  %.not.prol = icmp eq i64 %i.ca, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05470
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !164
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.cc)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05470
  store float %i.cd, ptr %i.ce, align 4, !tbaa !164
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cf = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cf, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.cg = icmp eq i64 %i.bm, %.neg
  br i1 %i.cg, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cl, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.165
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !164
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.165
  store float %i.cj, ptr %i.ck, align 4, !tbaa !164
  %i.cl = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.bm
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !3741

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.db, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cm = sub nuw i64 %.266, %.05470
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, %i.bk
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.266
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !164
  %i.cr = tail call noundef float @llvm.fabs.f32(float %i.cq)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.266
  store float %i.cr, ptr %i.cs, align 4, !tbaa !164
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.ct = add nuw i64 %.266, 1                    ; 3 uses
  %i.cu = sub nuw i64 %i.ct, %.05470
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.bk
  %.not.1 = icmp eq i64 %i.cw, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ct
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !164
  %i.cz = tail call noundef float @llvm.fabs.f32(float %i.cy)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct
  store float %i.cz, ptr %i.da, align 4, !tbaa !164
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.db = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.db, %i.bm
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !3742

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.bm, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.bm, %.lr.ph67.prol.loopexit ], [ %i.bm, %bb.s ], [ %i.bm, %.lr.ph ]
  %i.dc = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dc, %i.ao
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !3739

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dh, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.072
  %i.de = load float, ptr %i.dd, align 4, !tbaa !164
  %i.df = tail call noundef float @llvm.fabs.f32(float %i.de)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.072
  store float %i.df, ptr %i.dg, align 4, !tbaa !164
  %i.dh = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dh, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !3743

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESD_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !78
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.v, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.035.us
  %i.l = load float, ptr %i.k, align 4, !tbaa !164
  %i.m = tail call noundef float @llvm.fabs.f32(float %i.l)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035.us
  store float %i.m, ptr %i.n, align 4, !tbaa !164
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.o = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %.not.i30.us = icmp eq ptr %i.o, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !83
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %.pre.i.us, %bb.d ], [ %i.o, %bb.c ]
  %i.r = xor i64 %i.i, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.d ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79
  %i.u = and i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.v = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.v, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !3744

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.w = load ptr, ptr %3, align 8, !tbaa !153    ; 4 uses
  %.not.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i31, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader: ; preds = %.lr.ph37
  %xtraiter = and i64 %2, 1
  %i.x = icmp eq i64 %2, 1
  br i1 %i.x, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader
end_hunk_21
begin_hunk_22_@_ZN6duckdb13UnaryExecutor15ExecuteStandardIddNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvRNS_6VectorES5_mPvbNS_14FunctionErrorsE:bb.a
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ag

bb.ac:                                            ; preds = %bb.k, %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.n, %bb.m, %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.ac ], [ %i.cg, %bb.ae ], [ %i.cf, %bb.ad ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %bb.i, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIddNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESA_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x double>, ptr %i.b, align 8, !tbaa !80
  %wide.load126 = load <2 x double>, ptr %i.c, align 8, !tbaa !80
  %i.d = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load125)
  %i.e = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load126)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x double> %i.d, ptr %i.f, align 8, !tbaa !80
  store <2 x double> %i.e, ptr %i.g, align 8, !tbaa !80
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.h = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.h, label %middle.block128, label %vector.body123, !llvm.loop !3748

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = icmp eq ptr %4, %3
  br i1 %i.j, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 8 uses
  store <2 x ptr> %i.n, ptr %i.i, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !34
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !36

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !83
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.an = add i64 %2, 63
  %i.ao = lshr i64 %i.an, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.ao, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ap = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %.not.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bi, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.aq = add i64 %.05470.us, 64
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %2) ; 5 uses
  %i.as = icmp ult i64 %.05470.us, %i.ar
  br i1 %i.as, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.at = sub nuw i64 %i.ar, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.at, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.at, -4                   ; 3 uses
  %i.au = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.av = add nuw i64 %.05470.us, %index111       ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load112 = load <2 x double>, ptr %i.aw, align 8, !tbaa !80
  %wide.load113 = load <2 x double>, ptr %i.ax, align 8, !tbaa !80
  %i.ay = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load112)
  %i.az = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load113)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x double> %i.ay, ptr %i.ba, align 8, !tbaa !80
  store <2 x double> %i.az, ptr %i.bb, align 8, !tbaa !80
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bc, label %middle.block115, label %vector.body110, !llvm.loop !3749

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.at, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.au, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bh, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.be = load double, ptr %i.bd, align 8, !tbaa !80
  %i.bf = tail call noundef double @llvm.fabs.f64(double %i.be)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store double %i.bf, ptr %i.bg, align 8, !tbaa !80
  %i.bh = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bh, %i.ar
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !3750

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.ar, %middle.block115 ], [ %i.ar, %.lr.ph.us ]
  %i.bi = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !3751

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dc, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.05569
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79 ; 4 uses
  %i.bl = add i64 %.05470, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %2) ; 12 uses
  switch i64 %i.bk, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bn = icmp ult i64 %.05470, %i.bm
  br i1 %i.bn, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bo = sub nuw i64 %i.bm, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bo, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bo, -4                      ; 3 uses
  %i.bp = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = add nuw i64 %.05470, %index             ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <2 x double>, ptr %i.br, align 8, !tbaa !80
  %wide.load104 = load <2 x double>, ptr %i.bs, align 8, !tbaa !80
  %i.bt = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.bu = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load104)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> %i.bt, ptr %i.bv, align 8, !tbaa !80
  store <2 x double> %i.bu, ptr %i.bw, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !3752

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.by = icmp ult i64 %.05470, %i.bm
  br i1 %i.by, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.bz = sub nuw i64 %i.bm, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.bz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ca = and i64 %i.bk, 1
  %.not.prol = icmp eq i64 %i.ca, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !80
  %i.cd = tail call noundef double @llvm.fabs.f64(double %i.cc)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store double %i.cd, ptr %i.ce, align 8, !tbaa !80
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cf = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cf, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.cg = icmp eq i64 %i.bm, %.neg
  br i1 %i.cg, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cl, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !80
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store double %i.cj, ptr %i.ck, align 8, !tbaa !80
  %i.cl = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.bm
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !3753

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.db, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cm = sub nuw i64 %.266, %.05470
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, %i.bk
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !80
  %i.cr = tail call noundef double @llvm.fabs.f64(double %i.cq)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store double %i.cr, ptr %i.cs, align 8, !tbaa !80
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.ct = add nuw i64 %.266, 1                    ; 3 uses
  %i.cu = sub nuw i64 %i.ct, %.05470
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.bk
  %.not.1 = icmp eq i64 %i.cw, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ct
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !80
  %i.cz = tail call noundef double @llvm.fabs.f64(double %i.cy)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ct
  store double %i.cz, ptr %i.da, align 8, !tbaa !80
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.db = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.db, %i.bm
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !3754

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.bm, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.bm, %.lr.ph67.prol.loopexit ], [ %i.bm, %bb.s ], [ %i.bm, %.lr.ph ]
  %i.dc = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dc, %i.ao
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !3751

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dh, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.de = load double, ptr %i.dd, align 8, !tbaa !80
  %i.df = tail call noundef double @llvm.fabs.f64(double %i.de)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store double %i.df, ptr %i.dg, align 8, !tbaa !80
  %i.dh = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dh, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !3755

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_11AbsOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESD_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !78
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.v, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load double, ptr %i.k, align 8, !tbaa !80
  %i.m = tail call noundef double @llvm.fabs.f64(double %i.l)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store double %i.m, ptr %i.n, align 8, !tbaa !80
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.o = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %.not.i30.us = icmp eq ptr %i.o, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !83
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %.pre.i.us, %bb.d ], [ %i.o, %bb.c ]
  %i.r = xor i64 %i.i, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.d ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79
  %i.u = and i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.v = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.v, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !3756

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.w = load ptr, ptr %3, align 8, !tbaa !153    ; 4 uses
  %.not.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i31, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader: ; preds = %.lr.ph37
  %xtraiter = and i64 %2, 1
  %i.x = icmp eq i64 %2, 1
  br i1 %i.x, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader
end_hunk_22
begin_hunk_23_@_ZN6duckdb13UnaryExecutor15ExecuteStandardIffNS_20UnaryOperatorWrapperENS_14TryAbsOperatorEEEvRNS_6VectorES5_mPvbNS_14FunctionErrorsE:bb.a
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ag

bb.ac:                                            ; preds = %bb.k, %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.n, %bb.m, %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.ac ], [ %i.cg, %bb.ae ], [ %i.cf, %bb.ad ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %bb.i, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIffNS_20UnaryOperatorWrapperENS_14TryAbsOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESA_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 8
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -8                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <4 x float>, ptr %i.b, align 4, !tbaa !164
  %wide.load126 = load <4 x float>, ptr %i.c, align 4, !tbaa !164
  %i.d = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load125)
  %i.e = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load126)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x float> %i.d, ptr %i.f, align 4, !tbaa !164
  store <4 x float> %i.e, ptr %i.g, align 4, !tbaa !164
  %index.next127 = add nuw i64 %index124, 8       ; 2 uses
  %i.h = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.h, label %middle.block128, label %vector.body123, !llvm.loop !3843

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = icmp eq ptr %4, %3
  br i1 %i.j, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 8 uses
  store <2 x ptr> %i.n, ptr %i.i, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !34
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !36

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !83
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.an = add i64 %2, 63
  %i.ao = lshr i64 %i.an, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.ao, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ap = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %.not.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bi, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.aq = add i64 %.05470.us, 64
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %2) ; 5 uses
  %i.as = icmp ult i64 %.05470.us, %i.ar
  br i1 %i.as, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.at = sub nuw i64 %i.ar, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.at, 8
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.at, -8                   ; 3 uses
  %i.au = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.av = add nuw i64 %.05470.us, %index111       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load112 = load <4 x float>, ptr %i.aw, align 4, !tbaa !164
  %wide.load113 = load <4 x float>, ptr %i.ax, align 4, !tbaa !164
  %i.ay = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load112)
  %i.az = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load113)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x float> %i.ay, ptr %i.ba, align 4, !tbaa !164
  store <4 x float> %i.az, ptr %i.bb, align 4, !tbaa !164
  %index.next114 = add nuw i64 %index111, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bc, label %middle.block115, label %vector.body110, !llvm.loop !3844

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.at, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.au, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bh, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.165.us
  %i.be = load float, ptr %i.bd, align 4, !tbaa !164
  %i.bf = tail call noundef float @llvm.fabs.f32(float %i.be)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.165.us
  store float %i.bf, ptr %i.bg, align 4, !tbaa !164
  %i.bh = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bh, %i.ar
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !3845

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.ar, %middle.block115 ], [ %i.ar, %.lr.ph.us ]
  %i.bi = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !3846

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dc, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.05569
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79 ; 4 uses
  %i.bl = add i64 %.05470, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %2) ; 12 uses
  switch i64 %i.bk, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bn = icmp ult i64 %.05470, %i.bm
  br i1 %i.bn, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bo = sub nuw i64 %i.bm, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bo, -8                      ; 3 uses
  %i.bp = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = add nuw i64 %.05470, %index             ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <4 x float>, ptr %i.br, align 4, !tbaa !164
  %wide.load104 = load <4 x float>, ptr %i.bs, align 4, !tbaa !164
  %i.bt = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.bu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load104)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x float> %i.bt, ptr %i.bv, align 4, !tbaa !164
  store <4 x float> %i.bu, ptr %i.bw, align 4, !tbaa !164
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !3847

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.by = icmp ult i64 %.05470, %i.bm
  br i1 %i.by, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.bz = sub nuw i64 %i.bm, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.bz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ca = and i64 %i.bk, 1
  %.not.prol = icmp eq i64 %i.ca, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05470
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !164
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.cc)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05470
  store float %i.cd, ptr %i.ce, align 4, !tbaa !164
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cf = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cf, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.cg = icmp eq i64 %i.bm, %.neg
  br i1 %i.cg, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cl, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.165
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !164
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.165
  store float %i.cj, ptr %i.ck, align 4, !tbaa !164
  %i.cl = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.bm
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !3848

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.db, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cm = sub nuw i64 %.266, %.05470
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, %i.bk
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.266
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !164
  %i.cr = tail call noundef float @llvm.fabs.f32(float %i.cq)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.266
  store float %i.cr, ptr %i.cs, align 4, !tbaa !164
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.ct = add nuw i64 %.266, 1                    ; 3 uses
  %i.cu = sub nuw i64 %i.ct, %.05470
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.bk
  %.not.1 = icmp eq i64 %i.cw, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ct
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !164
  %i.cz = tail call noundef float @llvm.fabs.f32(float %i.cy)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct
  store float %i.cz, ptr %i.da, align 4, !tbaa !164
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.db = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.db, %i.bm
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !3849

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.bm, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.bm, %.lr.ph67.prol.loopexit ], [ %i.bm, %bb.s ], [ %i.bm, %.lr.ph ]
  %i.dc = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dc, %i.ao
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !3846

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dh, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.072
  %i.de = load float, ptr %i.dd, align 4, !tbaa !164
  %i.df = tail call noundef float @llvm.fabs.f32(float %i.de)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.072
  store float %i.df, ptr %i.dg, align 4, !tbaa !164
  %i.dh = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dh, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !3850

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopIffNS_20UnaryOperatorWrapperENS_14TryAbsOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESD_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !78
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.v, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.035.us
  %i.l = load float, ptr %i.k, align 4, !tbaa !164
  %i.m = tail call noundef float @llvm.fabs.f32(float %i.l)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035.us
  store float %i.m, ptr %i.n, align 4, !tbaa !164
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.o = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %.not.i30.us = icmp eq ptr %i.o, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !83
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %.pre.i.us, %bb.d ], [ %i.o, %bb.c ]
  %i.r = xor i64 %i.i, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.d ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79
  %i.u = and i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.v = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.v, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !3851

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.w = load ptr, ptr %3, align 8, !tbaa !153    ; 4 uses
  %.not.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i31, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader: ; preds = %.lr.ph37
  %xtraiter = and i64 %2, 1
  %i.x = icmp eq i64 %2, 1
  br i1 %i.x, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader
end_hunk_23
begin_hunk_24_@_ZN6duckdb13UnaryExecutor15ExecuteStandardIddNS_20UnaryOperatorWrapperENS_14TryAbsOperatorEEEvRNS_6VectorES5_mPvbNS_14FunctionErrorsE:bb.a
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ag

bb.ac:                                            ; preds = %bb.k, %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.n, %bb.m, %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.ac ], [ %i.cg, %bb.ae ], [ %i.cf, %bb.ad ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %bb.i, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIddNS_20UnaryOperatorWrapperENS_14TryAbsOperatorEEEvPKT_PT0_mRNS_12ValidityMaskESA_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x double>, ptr %i.b, align 8, !tbaa !80
  %wide.load126 = load <2 x double>, ptr %i.c, align 8, !tbaa !80
  %i.d = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load125)
  %i.e = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load126)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x double> %i.d, ptr %i.f, align 8, !tbaa !80
  store <2 x double> %i.e, ptr %i.g, align 8, !tbaa !80
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.h = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.h, label %middle.block128, label %vector.body123, !llvm.loop !3855

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = icmp eq ptr %4, %3
  br i1 %i.j, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 8 uses
  store <2 x ptr> %i.n, ptr %i.i, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !34
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !3647
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !36

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !83
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.an = add i64 %2, 63
  %i.ao = lshr i64 %i.an, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.ao, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ap = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %.not.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bi, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.aq = add i64 %.05470.us, 64
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %2) ; 5 uses
  %i.as = icmp ult i64 %.05470.us, %i.ar
  br i1 %i.as, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.at = sub nuw i64 %i.ar, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.at, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.at, -4                   ; 3 uses
  %i.au = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.av = add nuw i64 %.05470.us, %index111       ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load112 = load <2 x double>, ptr %i.aw, align 8, !tbaa !80
  %wide.load113 = load <2 x double>, ptr %i.ax, align 8, !tbaa !80
  %i.ay = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load112)
  %i.az = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load113)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x double> %i.ay, ptr %i.ba, align 8, !tbaa !80
  store <2 x double> %i.az, ptr %i.bb, align 8, !tbaa !80
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bc, label %middle.block115, label %vector.body110, !llvm.loop !3856

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.at, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.au, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bh, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.be = load double, ptr %i.bd, align 8, !tbaa !80
  %i.bf = tail call noundef double @llvm.fabs.f64(double %i.be)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store double %i.bf, ptr %i.bg, align 8, !tbaa !80
  %i.bh = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bh, %i.ar
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !3857

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.ar, %middle.block115 ], [ %i.ar, %.lr.ph.us ]
  %i.bi = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !3858

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dc, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.05569
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79 ; 4 uses
  %i.bl = add i64 %.05470, 64
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %2) ; 12 uses
  switch i64 %i.bk, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bn = icmp ult i64 %.05470, %i.bm
  br i1 %i.bn, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bo = sub nuw i64 %i.bm, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bo, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bo, -4                      ; 3 uses
  %i.bp = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = add nuw i64 %.05470, %index             ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <2 x double>, ptr %i.br, align 8, !tbaa !80
  %wide.load104 = load <2 x double>, ptr %i.bs, align 8, !tbaa !80
  %i.bt = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.bu = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load104)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> %i.bt, ptr %i.bv, align 8, !tbaa !80
  store <2 x double> %i.bu, ptr %i.bw, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !3859

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.by = icmp ult i64 %.05470, %i.bm
  br i1 %i.by, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.bz = sub nuw i64 %i.bm, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.bz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ca = and i64 %i.bk, 1
  %.not.prol = icmp eq i64 %i.ca, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !80
  %i.cd = tail call noundef double @llvm.fabs.f64(double %i.cc)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store double %i.cd, ptr %i.ce, align 8, !tbaa !80
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cf = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cf, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.cg = icmp eq i64 %i.bm, %.neg
  br i1 %i.cg, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cl, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !80
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store double %i.cj, ptr %i.ck, align 8, !tbaa !80
  %i.cl = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.bm
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !3860

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.db, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cm = sub nuw i64 %.266, %.05470
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, %i.bk
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !80
  %i.cr = tail call noundef double @llvm.fabs.f64(double %i.cq)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store double %i.cr, ptr %i.cs, align 8, !tbaa !80
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.ct = add nuw i64 %.266, 1                    ; 3 uses
  %i.cu = sub nuw i64 %i.ct, %.05470
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.bk
  %.not.1 = icmp eq i64 %i.cw, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ct
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !80
  %i.cz = tail call noundef double @llvm.fabs.f64(double %i.cy)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ct
  store double %i.cz, ptr %i.da, align 8, !tbaa !80
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.db = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.db, %i.bm
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !3861

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.bm, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.bm, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.bm, %.lr.ph67.prol.loopexit ], [ %i.bm, %bb.s ], [ %i.bm, %.lr.ph ]
  %i.dc = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dc, %i.ao
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !3858

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dh, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.de = load double, ptr %i.dd, align 8, !tbaa !80
  %i.df = tail call noundef double @llvm.fabs.f64(double %i.de)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store double %i.df, ptr %i.dg, align 8, !tbaa !80
  %i.dh = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dh, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !3862

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopIddNS_20UnaryOperatorWrapperENS_14TryAbsOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESD_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !78
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.v, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load double, ptr %i.k, align 8, !tbaa !80
  %i.m = tail call noundef double @llvm.fabs.f64(double %i.l)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store double %i.m, ptr %i.n, align 8, !tbaa !80
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.o = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %.not.i30.us = icmp eq ptr %i.o, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !83
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %.pre.i.us, %bb.d ], [ %i.o, %bb.c ]
  %i.r = xor i64 %i.i, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.d ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79
  %i.u = and i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.v = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.v, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !3863

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.w = load ptr, ptr %3, align 8, !tbaa !153    ; 4 uses
  %.not.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i31, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader: ; preds = %.lr.ph37
  %xtraiter = and i64 %2, 1
  %i.x = icmp eq i64 %2, 1
  br i1 %i.x, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader
end_hunk_24
begin_hunk_25_@_ZN6duckdb14ScalarFunction13UnaryFunctionIaaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 10 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77   ; 10 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3870)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78, !noalias !3872 ; 2 uses
  %.not.i.i60.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i60.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIaaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %iter.check100

iter.check100:                                    ; preds = %.preheader.i.i.i
  %min.iters.check86 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check86, label %.lr.ph17.i.i.i.preheader, label %vector.main.loop.iter.check87

vector.main.loop.iter.check87:                    ; preds = %iter.check100
  %min.iters.check88 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check88, label %vec.epilog.ph104, label %vector.ph89

vector.ph89:                                      ; preds = %vector.main.loop.iter.check87
  %n.mod.vf90 = and i64 %i.c, 28
  %n.vec91 = and i64 %i.c, -32                    ; 4 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next96, %vector.body92 ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %index93 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load94 = load <16 x i8>, ptr %i.t, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %wide.load95 = load <16 x i8>, ptr %i.u, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %i.v = tail call <16 x i8> @llvm.scmp.v16i8.v16i8(<16 x i8> %wide.load94, <16 x i8> zeroinitializer)
  %i.w = tail call <16 x i8> @llvm.scmp.v16i8.v16i8(<16 x i8> %wide.load95, <16 x i8> zeroinitializer)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %index93 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %i.v, ptr %i.x, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  store <16 x i8> %i.w, ptr %i.y, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  %index.next96 = add nuw i64 %index93, 32        ; 2 uses
  %i.z = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.z, label %middle.block97, label %vector.body92, !llvm.loop !3873

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %i.c, %n.vec91
  br i1 %cmp.n98, label %_ZN6duckdb13UnaryExecutor7ExecuteIaaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %vec.epilog.iter.check102

vec.epilog.iter.check102:                         ; preds = %middle.block97
  %min.epilog.iters.check103 = icmp eq i64 %n.mod.vf90, 0
  br i1 %min.epilog.iters.check103, label %.lr.ph17.i.i.i.preheader, label %vec.epilog.ph104, !prof !3645

vec.epilog.ph104:                                 ; preds = %vector.main.loop.iter.check87, %vec.epilog.iter.check102
  %vec.epilog.resume.val99 = phi i64 [ %n.vec91, %vec.epilog.iter.check102 ], [ 0, %vector.main.loop.iter.check87 ]
  %n.vec106 = and i64 %i.c, -4                    ; 3 uses
  br label %vec.epilog.vector.body107

vec.epilog.vector.body107:                        ; preds = %vec.epilog.vector.body107, %vec.epilog.ph104
  %index108 = phi i64 [ %vec.epilog.resume.val99, %vec.epilog.ph104 ], [ %index.next110, %vec.epilog.vector.body107 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %index108
  %wide.load109 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %i.ab = tail call <4 x i8> @llvm.scmp.v4i8.v4i8(<4 x i8> %wide.load109, <4 x i8> zeroinitializer)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %index108
  store <4 x i8> %i.ab, ptr %i.ac, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  %index.next110 = add nuw i64 %index108, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next110, %n.vec106
  br i1 %i.ad, label %vec.epilog.middle.block111, label %vec.epilog.vector.body107, !llvm.loop !3874

vec.epilog.middle.block111:                       ; preds = %vec.epilog.vector.body107
  %cmp.n112 = icmp eq i64 %i.c, %n.vec106
  br i1 %cmp.n112, label %_ZN6duckdb13UnaryExecutor7ExecuteIaaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %iter.check100, %vec.epilog.iter.check102, %vec.epilog.middle.block111
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check100 ], [ %n.vec91, %vec.epilog.iter.check102 ], [ %n.vec106, %vec.epilog.middle.block111 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !78, !noalias !3872
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = icmp eq ptr %2, %i.a
  br i1 %i.ag, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26, !noalias !3872 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !13, !noalias !3872
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !3872
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load i32, ptr %i.al, align 4, !tbaa !3, !noalias !3872
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !3, !noalias !3872
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4, !noalias !3872 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26, !noalias !3872 ; 8 uses
  store <2 x ptr> %i.ak, ptr %i.af, align 8, !tbaa !13, !noalias !3872
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8, !noalias !3872 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.as, align 8, !tbaa !32, !noalias !3872
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !34, !noalias !3872
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !22, !noalias !3872
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !3872
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #23, !noalias !3872, !inline_history !3875
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !22, !noalias !3872
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !3872
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #23, !noalias !3872, !inline_history !3875
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !3872
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3, !noalias !3872
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4, !noalias !3872
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.av, %bb.m ], [ %i.bf, %bb.n ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #23, !noalias !3872
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !83, !noalias !3872
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !83, !noalias !3872
  %i.bk = add i64 %i.c, 63
  %i.bl = lshr i64 %i.bk, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIaaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bm = load ptr, ptr %i.r, align 8, !tbaa !78, !noalias !3872 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.05414.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 9 uses
  %.05513.us.i.i.i = phi i64 [ %i.ck, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bn = add i64 %.05414.us.i.i.i, 64
  %i.bo = tail call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.c) ; 6 uses
  %i.bp = icmp ult i64 %.05414.us.i.i.i, %i.bo
  br i1 %i.bp, label %iter.check72, label %.loopexit7.us.i.i.i

iter.check72:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bq = sub nuw i64 %i.bo, %.05414.us.i.i.i     ; 7 uses
  %min.iters.check58 = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check58, label %.lr.ph.us.i.i.i.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %iter.check72
  %min.iters.check60 = icmp ult i64 %i.bq, 32
  br i1 %min.iters.check60, label %vec.epilog.ph76, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %n.mod.vf62 = and i64 %i.bq, 24
  %n.vec63 = and i64 %i.bq, -32                   ; 4 uses
  %i.br = add i64 %.05414.us.i.i.i, %n.vec63
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next68, %vector.body64 ] ; 2 uses
  %i.bs = add nuw i64 %.05414.us.i.i.i, %index65  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load66 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %wide.load67 = load <16 x i8>, ptr %i.bu, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %i.bv = tail call <16 x i8> @llvm.scmp.v16i8.v16i8(<16 x i8> %wide.load66, <16 x i8> zeroinitializer)
  %i.bw = tail call <16 x i8> @llvm.scmp.v16i8.v16i8(<16 x i8> %wide.load67, <16 x i8> zeroinitializer)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bs ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <16 x i8> %i.bv, ptr %i.bx, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  store <16 x i8> %i.bw, ptr %i.by, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  %index.next68 = add nuw i64 %index65, 32        ; 2 uses
  %i.bz = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.bz, label %middle.block69, label %vector.body64, !llvm.loop !3876

middle.block69:                                   ; preds = %vector.body64
  %cmp.n70 = icmp eq i64 %i.bq, %n.vec63
  br i1 %cmp.n70, label %.loopexit7.us.i.i.i, label %vec.epilog.iter.check74

vec.epilog.iter.check74:                          ; preds = %middle.block69
  %min.epilog.iters.check75 = icmp eq i64 %n.mod.vf62, 0
  br i1 %min.epilog.iters.check75, label %.lr.ph.us.i.i.i.preheader, label %vec.epilog.ph76, !prof !3877

vec.epilog.ph76:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check74
  %vec.epilog.resume.val71 = phi i64 [ %n.vec63, %vec.epilog.iter.check74 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec78 = and i64 %i.bq, -8                    ; 3 uses
  %i.ca = add i64 %.05414.us.i.i.i, %n.vec78
  br label %vec.epilog.vector.body79

vec.epilog.vector.body79:                         ; preds = %vec.epilog.vector.body79, %vec.epilog.ph76
  %index80 = phi i64 [ %vec.epilog.resume.val71, %vec.epilog.ph76 ], [ %index.next82, %vec.epilog.vector.body79 ] ; 2 uses
  %i.cb = add nuw i64 %.05414.us.i.i.i, %index80  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.cb
  %wide.load81 = load <8 x i8>, ptr %i.cc, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %i.cd = tail call <8 x i8> @llvm.scmp.v8i8.v8i8(<8 x i8> %wide.load81, <8 x i8> zeroinitializer)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cb
  store <8 x i8> %i.cd, ptr %i.ce, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  %index.next82 = add nuw i64 %index80, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.cf, label %vec.epilog.middle.block83, label %vec.epilog.vector.body79, !llvm.loop !3878

vec.epilog.middle.block83:                        ; preds = %vec.epilog.vector.body79
  %cmp.n84 = icmp eq i64 %i.bq, %n.vec78
  br i1 %cmp.n84, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader

.lr.ph.us.i.i.i.preheader:                        ; preds = %iter.check72, %vec.epilog.iter.check74, %vec.epilog.middle.block83
  %.19.us.i.i.i.ph = phi i64 [ %.05414.us.i.i.i, %iter.check72 ], [ %i.br, %vec.epilog.iter.check74 ], [ %i.ca, %vec.epilog.middle.block83 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cj, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.19.us.i.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %.0.i.i.us.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i8(i8 %i.ch, i8 0)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 %.19.us.i.i.i
  store i8 %.0.i.i.us.i.i.i, ptr %i.ci, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  %i.cj = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cj, %i.bo
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !3879

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block69, %vec.epilog.middle.block83, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.05414.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bo, %middle.block69 ], [ %i.bo, %vec.epilog.middle.block83 ], [ %i.bo, %.lr.ph.us.i.i.i ]
  %i.ck = add nuw nsw i64 %.05513.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.ck, %i.bl
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIaaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !3880

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.05414.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 13 uses
  %.05513.i.i.i = phi i64 [ %i.ds, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.05513.i.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !79, !noalias !3872 ; 2 uses
  %i.cn = add i64 %.05414.i.i.i, 64
  %i.co = tail call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.c) ; 10 uses
  switch i64 %i.cm, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cp = icmp ult i64 %.05414.i.i.i, %i.co
  br i1 %i.cp, label %iter.check, label %.loopexit5.i.i.i

iter.check:                                       ; preds = %.preheader6.i.i.i
  %i.cq = sub nuw i64 %i.co, %.05414.i.i.i        ; 7 uses
  %min.iters.check = icmp ult i64 %i.cq, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %i.cq, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cq, 24
  %n.vec = and i64 %i.cq, -32                     ; 4 uses
  %i.cr = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <16 x i8>, ptr %i.ct, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %wide.load50 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %i.cv = tail call <16 x i8> @llvm.scmp.v16i8.v16i8(<16 x i8> %wide.load, <16 x i8> zeroinitializer)
  %i.cw = tail call <16 x i8> @llvm.scmp.v16i8.v16i8(<16 x i8> %wide.load50, <16 x i8> zeroinitializer)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cs ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <16 x i8> %i.cv, ptr %i.cx, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  store <16 x i8> %i.cw, ptr %i.cy, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !3881

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !3877

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.cq, -8                    ; 3 uses
  %i.da = add i64 %.05414.i.i.i, %n.vec52
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.db = add nuw i64 %.05414.i.i.i, %index53     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.db
  %wide.load54 = load <8 x i8>, ptr %i.dc, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %i.dd = tail call <8 x i8> @llvm.scmp.v8i8.v8i8(<8 x i8> %wide.load54, <8 x i8> zeroinitializer)
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.db
  store <8 x i8> %i.dd, ptr %i.de, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  %index.next55 = add nuw i64 %index53, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next55, %n.vec52
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3882

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.cq, %n.vec52
  br i1 %cmp.n56, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dg = icmp ult i64 %.05414.i.i.i, %i.co
  br i1 %i.dg, label %.lr.ph11.i.i.i, label %.loopexit5.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 %.19.i.i.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %.0.i.i.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i8(i8 %i.di, i8 0)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 %.19.i.i.i
  store i8 %.0.i.i.i.i.i, ptr %i.dj, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  %i.dk = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dk, %i.co
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3883

.lr.ph11.i.i.i:                                   ; preds = %.preheader4.i.i.i, %bb.q
  %.210.i.i.i = phi i64 [ %i.dr, %bb.q ], [ %.05414.i.i.i, %.preheader4.i.i.i ] ; 4 uses
  %i.dl = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.cm
  %.not.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 %.210.i.i.i
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %.0.i.i57.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i8(i8 %i.dp, i8 0)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 %.210.i.i.i
  store i8 %.0.i.i57.i.i.i, ptr %i.dq, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph11.i.i.i
  %i.dr = add nuw i64 %.210.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.dr, %i.co
  br i1 %exitcond25.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !3884

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %bb.q, %middle.block, %vec.epilog.middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.co, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.co, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.co, %bb.q ], [ %i.co, %vec.epilog.middle.block ], [ %i.co, %.lr.ph.i.i.i ]
  %i.ds = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.ds, %i.bl
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIaaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !3880

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.dw, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 %.016.i.i.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !25, !alias.scope !3867, !noalias !3870
  %.0.i.i58.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i8(i8 %i.du, i8 0)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 %.016.i.i.i
  store i8 %.0.i.i58.i.i.i, ptr %i.dv, align 1, !tbaa !25, !alias.scope !3870, !noalias !3867
  %i.dw = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.dw, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIaaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !3885

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.s unwind label %bb.ar

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.t unwind label %bb.ar

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.u unwind label %bb.as

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !77 ; 8 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.v:                                             ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !131 ; 8 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.w:                                             ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3886)
  call void @llvm.experimental.noalias.scope.decl(metadata !3889)
  call void @llvm.experimental.noalias.scope.decl(metadata !3891)
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !78, !noalias !3893
  %.not.i.i61.i.i = icmp eq ptr %i.ee, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i61.i.i, label %.preheader.i67.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.w
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIaaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i62.i.i

.lr.ph.i62.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !153, !alias.scope !3891, !noalias !3894 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.ef, null
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i62.i.i, %bb.aa
  %.03.us.i.i.i = phi i64 [ %i.ey, %bb.aa ], [ 0, %.lr.ph.i62.i.i ] ; 5 uses
  %i.eh = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.ei = and i64 %.03.us.i.i.i, 63
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !78, !noalias !3893
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eh
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !79, !noalias !3893
  %i.em = shl nuw i64 1, %i.ei                    ; 2 uses
  %i.en = and i64 %i.el, %i.em
  %.not.us.i.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.us.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.03.us.i.i.i
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !25, !alias.scope !3886, !noalias !3895
  %.0.i.i.us.i66.i.i = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i8(i8 %i.ep, i8 0)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.03.us.i.i.i
  store i8 %.0.i.i.us.i66.i.i, ptr %i.eq, align 1, !tbaa !25, !alias.scope !3889, !noalias !3896
  br label %bb.aa

bb.y:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.er = load ptr, ptr %i.ec, align 8, !tbaa !78, !noalias !3893 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i30.us.i.i.i, label %bb.z, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.es = load i64, ptr %i.eg, align 8, !tbaa !83, !noalias !3893
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, i64 noundef %i.es)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.z
  %.pre.i.us.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !78, !noalias !3893
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.y
  %i.et = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.er, %bb.y ]
  %i.eu = xor i64 %i.em, -1
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.eh ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !79, !noalias !3893
  %i.ex = and i64 %i.ew, %i.eu
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !79, !noalias !3893
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i, %bb.x
  %i.ey = add nuw i64 %.03.us.i.i.i, 1            ; 2 uses
  %exitcond11.not.i.i.i = icmp eq i64 %i.ey, %i.c
  br i1 %exitcond11.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIaaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, !llvm.loop !3897

.preheader.i67.i.i:                               ; preds = %bb.w
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIaaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph5.i.i.i

.lr.ph5.i.i.i:                                    ; preds = %.preheader.i67.i.i
  %i.ez = load ptr, ptr %i.eb, align 8, !tbaa !153, !alias.scope !3891, !noalias !3894 ; 4 uses
  %.not.i31.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i31.i.i.i, label %iter.check127, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %xtraiter = and i64 %i.c, 1
  %i.fa = icmp eq i64 %i.c, 1
  br i1 %i.fa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i

iter.check127:                                    ; preds = %.lr.ph5.i.i.i
  %min.iters.check113 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check113, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %iter.check127
  %min.iters.check115 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check115, label %vec.epilog.ph131, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %n.mod.vf117 = and i64 %i.c, 28
  %n.vec118 = and i64 %i.c, -32                   ; 4 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph116
  %index120 = phi i64 [ 0, %vector.ph116 ], [ %index.next123, %vector.body119 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %index120 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load121 = load <16 x i8>, ptr %i.fb, align 1, !tbaa !25, !alias.scope !3886, !noalias !3895
end_hunk_25
begin_hunk_26_@_ZN6duckdb14ScalarFunction13UnaryFunctionIsaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 10 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77   ; 10 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3907)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78, !noalias !3909 ; 2 uses
  %.not.i.i60.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i60.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIsaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %iter.check100

iter.check100:                                    ; preds = %.preheader.i.i.i
  %min.iters.check86 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check86, label %.lr.ph17.i.i.i.preheader, label %vector.main.loop.iter.check87

vector.main.loop.iter.check87:                    ; preds = %iter.check100
  %min.iters.check88 = icmp ult i64 %i.c, 16
  br i1 %min.iters.check88, label %vec.epilog.ph104, label %vector.ph89

vector.ph89:                                      ; preds = %vector.main.loop.iter.check87
  %n.mod.vf90 = and i64 %i.c, 12
  %n.vec91 = and i64 %i.c, -16                    ; 4 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next96, %vector.body92 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index93 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load94 = load <8 x i16>, ptr %i.t, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %wide.load95 = load <8 x i16>, ptr %i.u, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %i.v = tail call <8 x i8> @llvm.scmp.v8i8.v8i16(<8 x i16> %wide.load94, <8 x i16> zeroinitializer)
  %i.w = tail call <8 x i8> @llvm.scmp.v8i8.v8i16(<8 x i16> %wide.load95, <8 x i16> zeroinitializer)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %index93 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store <8 x i8> %i.v, ptr %i.x, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  store <8 x i8> %i.w, ptr %i.y, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  %index.next96 = add nuw i64 %index93, 16        ; 2 uses
  %i.z = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.z, label %middle.block97, label %vector.body92, !llvm.loop !3910

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %i.c, %n.vec91
  br i1 %cmp.n98, label %_ZN6duckdb13UnaryExecutor7ExecuteIsaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %vec.epilog.iter.check102

vec.epilog.iter.check102:                         ; preds = %middle.block97
  %min.epilog.iters.check103 = icmp eq i64 %n.mod.vf90, 0
  br i1 %min.epilog.iters.check103, label %.lr.ph17.i.i.i.preheader, label %vec.epilog.ph104, !prof !3664

vec.epilog.ph104:                                 ; preds = %vector.main.loop.iter.check87, %vec.epilog.iter.check102
  %vec.epilog.resume.val99 = phi i64 [ %n.vec91, %vec.epilog.iter.check102 ], [ 0, %vector.main.loop.iter.check87 ]
  %n.vec106 = and i64 %i.c, -4                    ; 3 uses
  br label %vec.epilog.vector.body107

vec.epilog.vector.body107:                        ; preds = %vec.epilog.vector.body107, %vec.epilog.ph104
  %index108 = phi i64 [ %vec.epilog.resume.val99, %vec.epilog.ph104 ], [ %index.next110, %vec.epilog.vector.body107 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index108
  %wide.load109 = load <4 x i16>, ptr %i.aa, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %i.ab = tail call <4 x i8> @llvm.scmp.v4i8.v4i16(<4 x i16> %wide.load109, <4 x i16> zeroinitializer)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %index108
  store <4 x i8> %i.ab, ptr %i.ac, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  %index.next110 = add nuw i64 %index108, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next110, %n.vec106
  br i1 %i.ad, label %vec.epilog.middle.block111, label %vec.epilog.vector.body107, !llvm.loop !3911

vec.epilog.middle.block111:                       ; preds = %vec.epilog.vector.body107
  %cmp.n112 = icmp eq i64 %i.c, %n.vec106
  br i1 %cmp.n112, label %_ZN6duckdb13UnaryExecutor7ExecuteIsaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %iter.check100, %vec.epilog.iter.check102, %vec.epilog.middle.block111
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check100 ], [ %n.vec91, %vec.epilog.iter.check102 ], [ %n.vec106, %vec.epilog.middle.block111 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !78, !noalias !3909
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = icmp eq ptr %2, %i.a
  br i1 %i.ag, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26, !noalias !3909 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !13, !noalias !3909
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !3909
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load i32, ptr %i.al, align 4, !tbaa !3, !noalias !3909
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !3, !noalias !3909
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4, !noalias !3909 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26, !noalias !3909 ; 8 uses
  store <2 x ptr> %i.ak, ptr %i.af, align 8, !tbaa !13, !noalias !3909
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8, !noalias !3909 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.as, align 8, !tbaa !32, !noalias !3909
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !34, !noalias !3909
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !22, !noalias !3909
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !3909
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #23, !noalias !3909, !inline_history !3912
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !22, !noalias !3909
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !3909
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #23, !noalias !3909, !inline_history !3912
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !3909
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3, !noalias !3909
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4, !noalias !3909
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.av, %bb.m ], [ %i.bf, %bb.n ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #23, !noalias !3909
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !83, !noalias !3909
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !83, !noalias !3909
  %i.bk = add i64 %i.c, 63
  %i.bl = lshr i64 %i.bk, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIsaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bm = load ptr, ptr %i.r, align 8, !tbaa !78, !noalias !3909 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.05414.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 9 uses
  %.05513.us.i.i.i = phi i64 [ %i.ck, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bn = add i64 %.05414.us.i.i.i, 64
  %i.bo = tail call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.c) ; 6 uses
  %i.bp = icmp ult i64 %.05414.us.i.i.i, %i.bo
  br i1 %i.bp, label %iter.check72, label %.loopexit7.us.i.i.i

iter.check72:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bq = sub nuw i64 %i.bo, %.05414.us.i.i.i     ; 7 uses
  %min.iters.check58 = icmp ult i64 %i.bq, 4
  br i1 %min.iters.check58, label %.lr.ph.us.i.i.i.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %iter.check72
  %min.iters.check60 = icmp ult i64 %i.bq, 16
  br i1 %min.iters.check60, label %vec.epilog.ph76, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %n.mod.vf62 = and i64 %i.bq, 12
  %n.vec63 = and i64 %i.bq, -16                   ; 4 uses
  %i.br = add i64 %.05414.us.i.i.i, %n.vec63
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next68, %vector.body64 ] ; 2 uses
  %i.bs = add nuw i64 %.05414.us.i.i.i, %index65  ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load66 = load <8 x i16>, ptr %i.bt, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %wide.load67 = load <8 x i16>, ptr %i.bu, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %i.bv = tail call <8 x i8> @llvm.scmp.v8i8.v8i16(<8 x i16> %wide.load66, <8 x i16> zeroinitializer)
  %i.bw = tail call <8 x i8> @llvm.scmp.v8i8.v8i16(<8 x i16> %wide.load67, <8 x i16> zeroinitializer)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bs ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store <8 x i8> %i.bv, ptr %i.bx, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  store <8 x i8> %i.bw, ptr %i.by, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  %index.next68 = add nuw i64 %index65, 16        ; 2 uses
  %i.bz = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.bz, label %middle.block69, label %vector.body64, !llvm.loop !3913

middle.block69:                                   ; preds = %vector.body64
  %cmp.n70 = icmp eq i64 %i.bq, %n.vec63
  br i1 %cmp.n70, label %.loopexit7.us.i.i.i, label %vec.epilog.iter.check74

vec.epilog.iter.check74:                          ; preds = %middle.block69
  %min.epilog.iters.check75 = icmp eq i64 %n.mod.vf62, 0
  br i1 %min.epilog.iters.check75, label %.lr.ph.us.i.i.i.preheader, label %vec.epilog.ph76, !prof !3664

vec.epilog.ph76:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check74
  %vec.epilog.resume.val71 = phi i64 [ %n.vec63, %vec.epilog.iter.check74 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec78 = and i64 %i.bq, -4                    ; 3 uses
  %i.ca = add i64 %.05414.us.i.i.i, %n.vec78
  br label %vec.epilog.vector.body79

vec.epilog.vector.body79:                         ; preds = %vec.epilog.vector.body79, %vec.epilog.ph76
  %index80 = phi i64 [ %vec.epilog.resume.val71, %vec.epilog.ph76 ], [ %index.next82, %vec.epilog.vector.body79 ] ; 2 uses
  %i.cb = add nuw i64 %.05414.us.i.i.i, %index80  ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cb
  %wide.load81 = load <4 x i16>, ptr %i.cc, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %i.cd = tail call <4 x i8> @llvm.scmp.v4i8.v4i16(<4 x i16> %wide.load81, <4 x i16> zeroinitializer)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cb
  store <4 x i8> %i.cd, ptr %i.ce, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  %index.next82 = add nuw i64 %index80, 4         ; 2 uses
  %i.cf = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.cf, label %vec.epilog.middle.block83, label %vec.epilog.vector.body79, !llvm.loop !3914

vec.epilog.middle.block83:                        ; preds = %vec.epilog.vector.body79
  %cmp.n84 = icmp eq i64 %i.bq, %n.vec78
  br i1 %cmp.n84, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader

.lr.ph.us.i.i.i.preheader:                        ; preds = %iter.check72, %vec.epilog.iter.check74, %vec.epilog.middle.block83
  %.19.us.i.i.i.ph = phi i64 [ %.05414.us.i.i.i, %iter.check72 ], [ %i.br, %vec.epilog.iter.check74 ], [ %i.ca, %vec.epilog.middle.block83 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cj, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.19.us.i.i.i
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %.0.i.i.us.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i16(i16 %i.ch, i16 0)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 %.19.us.i.i.i
  store i8 %.0.i.i.us.i.i.i, ptr %i.ci, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  %i.cj = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cj, %i.bo
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !3915

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block69, %vec.epilog.middle.block83, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.05414.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bo, %middle.block69 ], [ %i.bo, %vec.epilog.middle.block83 ], [ %i.bo, %.lr.ph.us.i.i.i ]
  %i.ck = add nuw nsw i64 %.05513.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.ck, %i.bl
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIsaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !3916

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.05414.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 13 uses
  %.05513.i.i.i = phi i64 [ %i.ds, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.05513.i.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !79, !noalias !3909 ; 2 uses
  %i.cn = add i64 %.05414.i.i.i, 64
  %i.co = tail call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.c) ; 10 uses
  switch i64 %i.cm, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cp = icmp ult i64 %.05414.i.i.i, %i.co
  br i1 %i.cp, label %iter.check, label %.loopexit5.i.i.i

iter.check:                                       ; preds = %.preheader6.i.i.i
  %i.cq = sub nuw i64 %i.co, %.05414.i.i.i        ; 7 uses
  %min.iters.check = icmp ult i64 %i.cq, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %i.cq, 16
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cq, 12
  %n.vec = and i64 %i.cq, -16                     ; 4 uses
  %i.cr = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <8 x i16>, ptr %i.ct, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %wide.load50 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %i.cv = tail call <8 x i8> @llvm.scmp.v8i8.v8i16(<8 x i16> %wide.load, <8 x i16> zeroinitializer)
  %i.cw = tail call <8 x i8> @llvm.scmp.v8i8.v8i16(<8 x i16> %wide.load50, <8 x i16> zeroinitializer)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cs ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store <8 x i8> %i.cv, ptr %i.cx, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  store <8 x i8> %i.cw, ptr %i.cy, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !3917

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !3664

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.cq, -4                    ; 3 uses
  %i.da = add i64 %.05414.i.i.i, %n.vec52
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.db = add nuw i64 %.05414.i.i.i, %index53     ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.db
  %wide.load54 = load <4 x i16>, ptr %i.dc, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %i.dd = tail call <4 x i8> @llvm.scmp.v4i8.v4i16(<4 x i16> %wide.load54, <4 x i16> zeroinitializer)
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.db
  store <4 x i8> %i.dd, ptr %i.de, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  %index.next55 = add nuw i64 %index53, 4         ; 2 uses
  %i.df = icmp eq i64 %index.next55, %n.vec52
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3918

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.cq, %n.vec52
  br i1 %cmp.n56, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dg = icmp ult i64 %.05414.i.i.i, %i.co
  br i1 %i.dg, label %.lr.ph11.i.i.i, label %.loopexit5.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.19.i.i.i
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %.0.i.i.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i16(i16 %i.di, i16 0)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 %.19.i.i.i
  store i8 %.0.i.i.i.i.i, ptr %i.dj, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  %i.dk = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dk, %i.co
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3919

.lr.ph11.i.i.i:                                   ; preds = %.preheader4.i.i.i, %bb.q
  %.210.i.i.i = phi i64 [ %i.dr, %bb.q ], [ %.05414.i.i.i, %.preheader4.i.i.i ] ; 4 uses
  %i.dl = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.cm
  %.not.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.210.i.i.i
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %.0.i.i57.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i16(i16 %i.dp, i16 0)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 %.210.i.i.i
  store i8 %.0.i.i57.i.i.i, ptr %i.dq, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph11.i.i.i
  %i.dr = add nuw i64 %.210.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.dr, %i.co
  br i1 %exitcond25.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !3920

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %bb.q, %middle.block, %vec.epilog.middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.co, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.co, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.co, %bb.q ], [ %i.co, %vec.epilog.middle.block ], [ %i.co, %.lr.ph.i.i.i ]
  %i.ds = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.ds, %i.bl
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIsaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !3916

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.dw, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.016.i.i.i
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !308, !alias.scope !3904, !noalias !3907
  %.0.i.i58.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i16(i16 %i.du, i16 0)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 %.016.i.i.i
  store i8 %.0.i.i58.i.i.i, ptr %i.dv, align 1, !tbaa !25, !alias.scope !3907, !noalias !3904
  %i.dw = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.dw, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIsaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !3921

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.s unwind label %bb.ar

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.t unwind label %bb.ar

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.u unwind label %bb.as

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !77 ; 8 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.v:                                             ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !131 ; 8 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.w:                                             ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3922)
  call void @llvm.experimental.noalias.scope.decl(metadata !3925)
  call void @llvm.experimental.noalias.scope.decl(metadata !3927)
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !78, !noalias !3929
  %.not.i.i61.i.i = icmp eq ptr %i.ee, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i61.i.i, label %.preheader.i67.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.w
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIsaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i62.i.i

.lr.ph.i62.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !153, !alias.scope !3927, !noalias !3930 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.ef, null
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i62.i.i, %bb.aa
  %.03.us.i.i.i = phi i64 [ %i.ey, %bb.aa ], [ 0, %.lr.ph.i62.i.i ] ; 5 uses
  %i.eh = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.ei = and i64 %.03.us.i.i.i, 63
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !78, !noalias !3929
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eh
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !79, !noalias !3929
  %i.em = shl nuw i64 1, %i.ei                    ; 2 uses
  %i.en = and i64 %i.el, %i.em
  %.not.us.i.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.us.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %.03.us.i.i.i
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !308, !alias.scope !3922, !noalias !3931
  %.0.i.i.us.i66.i.i = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i16(i16 %i.ep, i16 0)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.03.us.i.i.i
  store i8 %.0.i.i.us.i66.i.i, ptr %i.eq, align 1, !tbaa !25, !alias.scope !3925, !noalias !3932
  br label %bb.aa

bb.y:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.er = load ptr, ptr %i.ec, align 8, !tbaa !78, !noalias !3929 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i30.us.i.i.i, label %bb.z, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.es = load i64, ptr %i.eg, align 8, !tbaa !83, !noalias !3929
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, i64 noundef %i.es)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.z
  %.pre.i.us.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !78, !noalias !3929
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.y
  %i.et = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.er, %bb.y ]
  %i.eu = xor i64 %i.em, -1
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.eh ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !79, !noalias !3929
  %i.ex = and i64 %i.ew, %i.eu
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !79, !noalias !3929
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i, %bb.x
  %i.ey = add nuw i64 %.03.us.i.i.i, 1            ; 2 uses
  %exitcond11.not.i.i.i = icmp eq i64 %i.ey, %i.c
  br i1 %exitcond11.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIsaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, !llvm.loop !3933

.preheader.i67.i.i:                               ; preds = %bb.w
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIsaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph5.i.i.i

.lr.ph5.i.i.i:                                    ; preds = %.preheader.i67.i.i
  %i.ez = load ptr, ptr %i.eb, align 8, !tbaa !153, !alias.scope !3927, !noalias !3930 ; 4 uses
  %.not.i31.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i31.i.i.i, label %iter.check127, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %xtraiter = and i64 %i.c, 1
  %i.fa = icmp eq i64 %i.c, 1
  br i1 %i.fa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i

iter.check127:                                    ; preds = %.lr.ph5.i.i.i
  %min.iters.check113 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check113, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %iter.check127
  %min.iters.check115 = icmp ult i64 %i.c, 16
  br i1 %min.iters.check115, label %vec.epilog.ph131, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %n.mod.vf117 = and i64 %i.c, 12
  %n.vec118 = and i64 %i.c, -16                   ; 4 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph116
  %index120 = phi i64 [ 0, %vector.ph116 ], [ %index.next123, %vector.body119 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %index120 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load121 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !308, !alias.scope !3922, !noalias !3931
end_hunk_26
begin_hunk_27_@_ZN6duckdb14ScalarFunction13UnaryFunctionIiaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIiaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load i32, ptr %i.h, align 4, !tbaa !3
  %.0.i.i59.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %i.m, i32 0)
  store i8 %.0.i.i59.i.i, ptr %i.f, align 1, !tbaa !25
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIiaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3943)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78, !noalias !3945 ; 2 uses
  %.not.i.i60.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i60.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIiaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check64 = icmp ult i64 %i.c, 8
  br i1 %min.iters.check64, label %.lr.ph17.i.i.i.preheader93, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.vec67 = and i64 %i.c, -8                     ; 3 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next72, %vector.body68 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index69 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load70 = load <4 x i32>, ptr %i.t, align 4, !tbaa !3, !alias.scope !3940, !noalias !3943
  %wide.load71 = load <4 x i32>, ptr %i.u, align 4, !tbaa !3, !alias.scope !3940, !noalias !3943
  %i.v = tail call <4 x i8> @llvm.scmp.v4i8.v4i32(<4 x i32> %wide.load70, <4 x i32> zeroinitializer)
  %i.w = tail call <4 x i8> @llvm.scmp.v4i8.v4i32(<4 x i32> %wide.load71, <4 x i32> zeroinitializer)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %index69 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store <4 x i8> %i.v, ptr %i.x, align 1, !tbaa !25, !alias.scope !3943, !noalias !3940
  store <4 x i8> %i.w, ptr %i.y, align 1, !tbaa !25, !alias.scope !3943, !noalias !3940
  %index.next72 = add nuw i64 %index69, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.z, label %middle.block73, label %vector.body68, !llvm.loop !3946

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.c, %n.vec67
  br i1 %cmp.n74, label %_ZN6duckdb13UnaryExecutor7ExecuteIiaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader93

.lr.ph17.i.i.i.preheader93:                       ; preds = %.lr.ph17.i.i.i.preheader, %middle.block73
  %.016.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec67, %middle.block73 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.s, ptr %i.aa, align 8, !tbaa !78, !noalias !3945
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = icmp eq ptr %2, %i.a
  br i1 %i.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26, !noalias !3945 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !13, !noalias !3945
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !3945
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3, !noalias !3945
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3, !noalias !3945
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !3945 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26, !noalias !3945 ; 8 uses
  store <2 x ptr> %i.ag, ptr %i.ab, align 8, !tbaa !13, !noalias !3945
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8, !noalias !3945 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ao, align 8, !tbaa !32, !noalias !3945
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !34, !noalias !3945
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !22, !noalias !3945
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !3945
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #23, !noalias !3945, !inline_history !3947
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !22, !noalias !3945
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !3945
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #23, !noalias !3945, !inline_history !3947
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !3945
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3, !noalias !3945
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4, !noalias !3945
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.m ], [ %i.bb, %bb.n ]
  %i.bc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #23, !noalias !3945
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !83, !noalias !3945
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !83, !noalias !3945
  %i.bg = add i64 %i.c, 63
  %i.bh = lshr i64 %i.bg, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIiaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bi = load ptr, ptr %i.r, align 8, !tbaa !78, !noalias !3945 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.05414.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05513.us.i.i.i = phi i64 [ %i.ca, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bj = add i64 %.05414.us.i.i.i, 64
  %i.bk = tail call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.c) ; 5 uses
  %i.bl = icmp ult i64 %.05414.us.i.i.i, %i.bk
  br i1 %i.bl, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bm = sub nuw i64 %i.bk, %.05414.us.i.i.i     ; 3 uses
  %min.iters.check51 = icmp ult i64 %i.bm, 8
  br i1 %min.iters.check51, label %.lr.ph.us.i.i.i.preheader94, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec54 = and i64 %i.bm, -8                    ; 3 uses
  %i.bn = add i64 %.05414.us.i.i.i, %n.vec54
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph52
  %index56 = phi i64 [ 0, %vector.ph52 ], [ %index.next59, %vector.body55 ] ; 2 uses
  %i.bo = add nuw i64 %.05414.us.i.i.i, %index56  ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load57 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !3, !alias.scope !3940, !noalias !3943
  %wide.load58 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !3, !alias.scope !3940, !noalias !3943
  %i.br = tail call <4 x i8> @llvm.scmp.v4i8.v4i32(<4 x i32> %wide.load57, <4 x i32> zeroinitializer)
  %i.bs = tail call <4 x i8> @llvm.scmp.v4i8.v4i32(<4 x i32> %wide.load58, <4 x i32> zeroinitializer)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bo ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store <4 x i8> %i.br, ptr %i.bt, align 1, !tbaa !25, !alias.scope !3943, !noalias !3940
  store <4 x i8> %i.bs, ptr %i.bu, align 1, !tbaa !25, !alias.scope !3943, !noalias !3940
  %index.next59 = add nuw i64 %index56, 8         ; 2 uses
  %i.bv = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.bv, label %middle.block60, label %vector.body55, !llvm.loop !3948

middle.block60:                                   ; preds = %vector.body55
  %cmp.n61 = icmp eq i64 %i.bm, %n.vec54
  br i1 %cmp.n61, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader94

.lr.ph.us.i.i.i.preheader94:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block60
  %.19.us.i.i.i.ph = phi i64 [ %.05414.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bn, %middle.block60 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader94, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.bz, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader94 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.19.us.i.i.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3, !alias.scope !3940, !noalias !3943
  %.0.i.i.us.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %i.bx, i32 0)
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 %.19.us.i.i.i
  store i8 %.0.i.i.us.i.i.i, ptr %i.by, align 1, !tbaa !25, !alias.scope !3943, !noalias !3940
  %i.bz = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.bz, %i.bk
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !3949

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.05414.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bk, %middle.block60 ], [ %i.bk, %.lr.ph.us.i.i.i ]
  %i.ca = add nuw nsw i64 %.05513.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.ca, %i.bh
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIiaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !3950

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.05414.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 11 uses
  %.05513.i.i.i = phi i64 [ %i.dc, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.05513.i.i.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !79, !noalias !3945 ; 2 uses
  %i.cd = add i64 %.05414.i.i.i, 64
  %i.ce = tail call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %i.c) ; 9 uses
  switch i64 %i.cc, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cf = icmp ult i64 %.05414.i.i.i, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.cg = sub nuw i64 %i.ce, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader96, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.cg, -8                      ; 3 uses
  %i.ch = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load = load <4 x i32>, ptr %i.cj, align 4, !tbaa !3, !alias.scope !3940, !noalias !3943
  %wide.load49 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !3, !alias.scope !3940, !noalias !3943
  %i.cl = tail call <4 x i8> @llvm.scmp.v4i8.v4i32(<4 x i32> %wide.load, <4 x i32> zeroinitializer)
  %i.cm = tail call <4 x i8> @llvm.scmp.v4i8.v4i32(<4 x i32> %wide.load49, <4 x i32> zeroinitializer)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ci ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store <4 x i8> %i.cl, ptr %i.cn, align 1, !tbaa !25, !alias.scope !3943, !noalias !3940
  store <4 x i8> %i.cm, ptr %i.co, align 1, !tbaa !25, !alias.scope !3943, !noalias !3940
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !3951

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader96

.lr.ph.i.i.i.preheader96:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cq = icmp ult i64 %.05414.i.i.i, %i.ce
  br i1 %i.cq, label %.lr.ph11.i.i.i, label %.loopexit5.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader96, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader96 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.19.i.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3, !alias.scope !3940, !noalias !3943
  %.0.i.i.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %i.cs, i32 0)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.o, i64 %.19.i.i.i
  store i8 %.0.i.i.i.i.i, ptr %i.ct, align 1, !tbaa !25, !alias.scope !3943, !noalias !3940
  %i.cu = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cu, %i.ce
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3952

.lr.ph11.i.i.i:                                   ; preds = %.preheader4.i.i.i, %bb.q
  %.210.i.i.i = phi i64 [ %i.db, %bb.q ], [ %.05414.i.i.i, %.preheader4.i.i.i ] ; 4 uses
  %i.cv = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.cc
  %.not.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.210.i.i.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3, !alias.scope !3940, !noalias !3943
  %.0.i.i57.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %i.cz, i32 0)
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 %.210.i.i.i
  store i8 %.0.i.i57.i.i.i, ptr %i.da, align 1, !tbaa !25, !alias.scope !3943, !noalias !3940
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph11.i.i.i
  %i.db = add nuw i64 %.210.i.i.i, 1              ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.db, %i.ce
  br i1 %exitcond25.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !3953

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %bb.q, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.ce, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.ce, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.ce, %bb.q ], [ %i.ce, %.lr.ph.i.i.i ]
  %i.dc = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.dc, %i.bh
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIiaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !3950

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader93, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.dg, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader93 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.016.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3, !alias.scope !3940, !noalias !3943
  %.0.i.i58.i.i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %i.de, i32 0)
  %i.df = getelementptr inbounds nuw i8, ptr %i.o, i64 %.016.i.i.i
  store i8 %.0.i.i58.i.i.i, ptr %i.df, align 1, !tbaa !25, !alias.scope !3943, !noalias !3940
  %i.dg = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.dg, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIiaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !3954

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.s unwind label %bb.ar

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.t unwind label %bb.ar

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.u unwind label %bb.as

bb.u:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !77 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.v:                                             ; preds = %bb.u
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !131 ; 7 uses
  %i.dl = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.w:                                             ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3955)
  call void @llvm.experimental.noalias.scope.decl(metadata !3958)
  call void @llvm.experimental.noalias.scope.decl(metadata !3960)
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !78, !noalias !3962
  %.not.i.i61.i.i = icmp eq ptr %i.do, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i61.i.i, label %.preheader.i67.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.w
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIiaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i62.i.i

.lr.ph.i62.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !153, !alias.scope !3960, !noalias !3963 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.dp, null
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i62.i.i, %bb.aa
  %.03.us.i.i.i = phi i64 [ %i.ei, %bb.aa ], [ 0, %.lr.ph.i62.i.i ] ; 5 uses
  %i.dr = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.ds = and i64 %.03.us.i.i.i, 63
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !78, !noalias !3962
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dr
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !79, !noalias !3962
  %i.dw = shl nuw i64 1, %i.ds                    ; 2 uses
  %i.dx = and i64 %i.dv, %i.dw
  %.not.us.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.us.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.03.us.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3, !alias.scope !3955, !noalias !3964
  %.0.i.i.us.i66.i.i = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %i.dz, i32 0)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.di, i64 %.03.us.i.i.i
  store i8 %.0.i.i.us.i66.i.i, ptr %i.ea, align 1, !tbaa !25, !alias.scope !3958, !noalias !3965
  br label %bb.aa

bb.y:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.eb = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !3962 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i30.us.i.i.i, label %bb.z, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ec = load i64, ptr %i.dq, align 8, !tbaa !83, !noalias !3962
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 noundef %i.ec)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.z
  %.pre.i.us.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !78, !noalias !3962
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.y
  %i.ed = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.eb, %bb.y ]
  %i.ee = xor i64 %i.dw, -1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dr ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !79, !noalias !3962
  %i.eh = and i64 %i.eg, %i.ee
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !79, !noalias !3962
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i, %bb.x
  %i.ei = add nuw i64 %.03.us.i.i.i, 1            ; 2 uses
  %exitcond11.not.i.i.i = icmp eq i64 %i.ei, %i.c
  br i1 %exitcond11.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIiaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, !llvm.loop !3966

.preheader.i67.i.i:                               ; preds = %bb.w
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIiaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph5.i.i.i

.lr.ph5.i.i.i:                                    ; preds = %.preheader.i67.i.i
  %i.ej = load ptr, ptr %i.dl, align 8, !tbaa !153, !alias.scope !3960, !noalias !3963 ; 4 uses
  %.not.i31.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i31.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %xtraiter = and i64 %i.c, 1
  %i.ek = icmp eq i64 %i.c, 1
  br i1 %i.ek, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %min.iters.check77 = icmp ult i64 %i.c, 8
  br i1 %min.iters.check77, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader89, label %vector.ph78

vector.ph78:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.i.preheader
  %n.vec80 = and i64 %i.c, -8                     ; 3 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph78
  %index82 = phi i64 [ 0, %vector.ph78 ], [ %index.next85, %vector.body81 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index82 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load83 = load <4 x i32>, ptr %i.el, align 4, !tbaa !3, !alias.scope !3955, !noalias !3964
end_hunk_27
begin_hunk_28_@_ZN6duckdb14ScalarFunction13UnaryFunctionIhaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 12 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4001)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !4003 ; 2 uses
  %.not.i.i60.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i60.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIhaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %iter.check100

iter.check100:                                    ; preds = %.preheader.i.i.i
  %min.iters.check86 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check86, label %.lr.ph17.i.i.i.preheader, label %vector.main.loop.iter.check87

vector.main.loop.iter.check87:                    ; preds = %iter.check100
  %min.iters.check88 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check88, label %vec.epilog.ph104, label %vector.ph89

vector.ph89:                                      ; preds = %vector.main.loop.iter.check87
  %n.mod.vf90 = and i64 %i.c, 28
  %n.vec91 = and i64 %i.c, -32                    ; 4 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next96, %vector.body92 ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %index93 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load94 = load <16 x i8>, ptr %i.u, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %wide.load95 = load <16 x i8>, ptr %i.v, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.w = icmp ne <16 x i8> %wide.load94, zeroinitializer
  %i.x = icmp ne <16 x i8> %wide.load95, zeroinitializer
  %i.y = zext <16 x i1> %i.w to <16 x i8>
  %i.z = zext <16 x i1> %i.x to <16 x i8>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %index93 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <16 x i8> %i.y, ptr %i.aa, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  store <16 x i8> %i.z, ptr %i.ab, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  %index.next96 = add nuw i64 %index93, 32        ; 2 uses
  %i.ac = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.ac, label %middle.block97, label %vector.body92, !llvm.loop !4004

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %i.c, %n.vec91
  br i1 %cmp.n98, label %_ZN6duckdb13UnaryExecutor7ExecuteIhaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %vec.epilog.iter.check102

vec.epilog.iter.check102:                         ; preds = %middle.block97
  %min.epilog.iters.check103 = icmp eq i64 %n.mod.vf90, 0
  br i1 %min.epilog.iters.check103, label %.lr.ph17.i.i.i.preheader, label %vec.epilog.ph104, !prof !3645

vec.epilog.ph104:                                 ; preds = %vector.main.loop.iter.check87, %vec.epilog.iter.check102
  %vec.epilog.resume.val99 = phi i64 [ %n.vec91, %vec.epilog.iter.check102 ], [ 0, %vector.main.loop.iter.check87 ]
  %n.vec106 = and i64 %i.c, -4                    ; 3 uses
  br label %vec.epilog.vector.body107

vec.epilog.vector.body107:                        ; preds = %vec.epilog.vector.body107, %vec.epilog.ph104
  %index108 = phi i64 [ %vec.epilog.resume.val99, %vec.epilog.ph104 ], [ %index.next110, %vec.epilog.vector.body107 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %index108
  %wide.load109 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.ae = icmp ne <4 x i8> %wide.load109, zeroinitializer
  %i.af = zext <4 x i1> %i.ae to <4 x i8>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 %index108
  store <4 x i8> %i.af, ptr %i.ag, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  %index.next110 = add nuw i64 %index108, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next110, %n.vec106
  br i1 %i.ah, label %vec.epilog.middle.block111, label %vec.epilog.vector.body107, !llvm.loop !4005

vec.epilog.middle.block111:                       ; preds = %vec.epilog.vector.body107
  %cmp.n112 = icmp eq i64 %i.c, %n.vec106
  br i1 %cmp.n112, label %_ZN6duckdb13UnaryExecutor7ExecuteIhaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %iter.check100, %vec.epilog.iter.check102, %vec.epilog.middle.block111
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check100 ], [ %n.vec91, %vec.epilog.iter.check102 ], [ %n.vec106, %vec.epilog.middle.block111 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.ai, align 8, !tbaa !78, !noalias !4003
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ak = icmp eq ptr %2, %i.a
  br i1 %i.ak, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26, !noalias !4003 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.al, align 8, !tbaa !13, !noalias !4003
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !4003
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !3, !noalias !4003
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !3, !noalias !4003
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !4003 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26, !noalias !4003 ; 8 uses
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !13, !noalias !4003
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8, !noalias !4003 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aw, align 8, !tbaa !32, !noalias !4003
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !34, !noalias !4003
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !22, !noalias !4003
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !4003
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !noalias !4003, !inline_history !4006
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !22, !noalias !4003
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !4003
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !noalias !4003, !inline_history !4006
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !4003
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !3, !noalias !4003
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4, !noalias !4003
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.az, %bb.m ], [ %i.bj, %bb.n ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !noalias !4003
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !83, !noalias !4003
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !83, !noalias !4003
  %i.bo = add i64 %i.c, 63
  %i.bp = lshr i64 %i.bo, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIhaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !4003 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.05414.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 9 uses
  %.05513.us.i.i.i = phi i64 [ %i.cs, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.br = add i64 %.05414.us.i.i.i, 64
  %i.bs = tail call noundef i64 @llvm.umin.i64(i64 %i.br, i64 %i.c) ; 6 uses
  %i.bt = icmp ult i64 %.05414.us.i.i.i, %i.bs
  br i1 %i.bt, label %iter.check72, label %.loopexit7.us.i.i.i

iter.check72:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bu = sub nuw i64 %i.bs, %.05414.us.i.i.i     ; 7 uses
  %min.iters.check58 = icmp ult i64 %i.bu, 8
  br i1 %min.iters.check58, label %.lr.ph.us.i.i.i.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %iter.check72
  %min.iters.check60 = icmp ult i64 %i.bu, 32
  br i1 %min.iters.check60, label %vec.epilog.ph76, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %n.mod.vf62 = and i64 %i.bu, 24
  %n.vec63 = and i64 %i.bu, -32                   ; 4 uses
  %i.bv = add i64 %.05414.us.i.i.i, %n.vec63
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next68, %vector.body64 ] ; 2 uses
  %i.bw = add nuw i64 %.05414.us.i.i.i, %index65  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load66 = load <16 x i8>, ptr %i.bx, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %wide.load67 = load <16 x i8>, ptr %i.by, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.bz = icmp ne <16 x i8> %wide.load66, zeroinitializer
  %i.ca = icmp ne <16 x i8> %wide.load67, zeroinitializer
  %i.cb = zext <16 x i1> %i.bz to <16 x i8>
  %i.cc = zext <16 x i1> %i.ca to <16 x i8>
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bw ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <16 x i8> %i.cb, ptr %i.cd, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  store <16 x i8> %i.cc, ptr %i.ce, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  %index.next68 = add nuw i64 %index65, 32        ; 2 uses
  %i.cf = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.cf, label %middle.block69, label %vector.body64, !llvm.loop !4007

middle.block69:                                   ; preds = %vector.body64
  %cmp.n70 = icmp eq i64 %i.bu, %n.vec63
  br i1 %cmp.n70, label %.loopexit7.us.i.i.i, label %vec.epilog.iter.check74

vec.epilog.iter.check74:                          ; preds = %middle.block69
  %min.epilog.iters.check75 = icmp eq i64 %n.mod.vf62, 0
  br i1 %min.epilog.iters.check75, label %.lr.ph.us.i.i.i.preheader, label %vec.epilog.ph76, !prof !3877

vec.epilog.ph76:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check74
  %vec.epilog.resume.val71 = phi i64 [ %n.vec63, %vec.epilog.iter.check74 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec78 = and i64 %i.bu, -8                    ; 3 uses
  %i.cg = add i64 %.05414.us.i.i.i, %n.vec78
  br label %vec.epilog.vector.body79

vec.epilog.vector.body79:                         ; preds = %vec.epilog.vector.body79, %vec.epilog.ph76
  %index80 = phi i64 [ %vec.epilog.resume.val71, %vec.epilog.ph76 ], [ %index.next82, %vec.epilog.vector.body79 ] ; 2 uses
  %i.ch = add nuw i64 %.05414.us.i.i.i, %index80  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ch
  %wide.load81 = load <8 x i8>, ptr %i.ci, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.cj = icmp ne <8 x i8> %wide.load81, zeroinitializer
  %i.ck = zext <8 x i1> %i.cj to <8 x i8>
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ch
  store <8 x i8> %i.ck, ptr %i.cl, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  %index.next82 = add nuw i64 %index80, 8         ; 2 uses
  %i.cm = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.cm, label %vec.epilog.middle.block83, label %vec.epilog.vector.body79, !llvm.loop !4008

vec.epilog.middle.block83:                        ; preds = %vec.epilog.vector.body79
  %cmp.n84 = icmp eq i64 %i.bu, %n.vec78
  br i1 %cmp.n84, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader

.lr.ph.us.i.i.i.preheader:                        ; preds = %iter.check72, %vec.epilog.iter.check74, %vec.epilog.middle.block83
  %.19.us.i.i.i.ph = phi i64 [ %.05414.us.i.i.i, %iter.check72 ], [ %i.bv, %vec.epilog.iter.check74 ], [ %i.cg, %vec.epilog.middle.block83 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cr, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 %.19.us.i.i.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.cp = icmp ne i8 %i.co, 0
  %.0.i.i.us.i.i.i = zext i1 %i.cp to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 %.19.us.i.i.i
  store i8 %.0.i.i.us.i.i.i, ptr %i.cq, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  %i.cr = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cr, %i.bs
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !4009

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block69, %vec.epilog.middle.block83, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.05414.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bs, %middle.block69 ], [ %i.bs, %vec.epilog.middle.block83 ], [ %i.bs, %.lr.ph.us.i.i.i ]
  %i.cs = add nuw nsw i64 %.05513.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.cs, %i.bp
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIhaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !4010

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.05414.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 19 uses
  %.05513.i.i.i = phi i64 [ %i.ev, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.05513.i.i.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !79, !noalias !4003 ; 4 uses
  %i.cv = add i64 %.05414.i.i.i, 64
  %i.cw = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 %i.c) ; 13 uses
  switch i64 %i.cu, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cx = icmp ult i64 %.05414.i.i.i, %i.cw
  br i1 %i.cx, label %iter.check, label %.loopexit5.i.i.i

iter.check:                                       ; preds = %.preheader6.i.i.i
  %i.cy = sub nuw i64 %i.cw, %.05414.i.i.i        ; 7 uses
  %min.iters.check = icmp ult i64 %i.cy, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %i.cy, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cy, 24
  %n.vec = and i64 %i.cy, -32                     ; 4 uses
  %i.cz = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load = load <16 x i8>, ptr %i.db, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %wide.load50 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.dd = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.de = icmp ne <16 x i8> %wide.load50, zeroinitializer
  %i.df = zext <16 x i1> %i.dd to <16 x i8>
  %i.dg = zext <16 x i1> %i.de to <16 x i8>
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.da ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <16 x i8> %i.df, ptr %i.dh, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  store <16 x i8> %i.dg, ptr %i.di, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !4011

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !3877

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.cy, -8                    ; 3 uses
  %i.dk = add i64 %.05414.i.i.i, %n.vec52
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.dl = add nuw i64 %.05414.i.i.i, %index53     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.dl
  %wide.load54 = load <8 x i8>, ptr %i.dm, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.dn = icmp ne <8 x i8> %wide.load54, zeroinitializer
  %i.do = zext <8 x i1> %i.dn to <8 x i8>
  %i.dp = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dl
  store <8 x i8> %i.do, ptr %i.dp, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  %index.next55 = add nuw i64 %index53, 8         ; 2 uses
  %i.dq = icmp eq i64 %index.next55, %n.vec52
  br i1 %i.dq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4012

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.cy, %n.vec52
  br i1 %cmp.n56, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %iter.check ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dr = icmp ult i64 %.05414.i.i.i, %i.cw
  br i1 %i.dr, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.ds = sub nuw i64 %i.cw, %.05414.i.i.i
  %.neg = add i64 %.05414.i.i.i, 1
  %xtraiter = and i64 %i.ds, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.dt = and i64 %i.cu, 1
  %.not.i.i.i.prol = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 %.05414.i.i.i
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.dw = icmp ne i8 %i.dv, 0
  %.0.i.i57.i.i.i.prol = zext i1 %i.dw to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 %.05414.i.i.i
  store i8 %.0.i.i57.i.i.i.prol, ptr %i.dx, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.dy = add nuw i64 %.05414.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.05414.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.dy, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dz = icmp eq i64 %i.cw, %.neg
  br i1 %i.dz, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.r, i64 %.19.i.i.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.ec = icmp ne i8 %i.eb, 0
  %.0.i.i.i.i.i = zext i1 %i.ec to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 %.19.i.i.i
  store i8 %.0.i.i.i.i.i, ptr %i.ed, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  %i.ee = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ee, %i.cw
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4013

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.eu, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.ef = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.eg = shl nuw i64 1, %i.ef
  %i.eh = and i64 %i.eg, %i.cu
  %.not.i.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.r, i64 %.210.i.i.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.ek = icmp ne i8 %i.ej, 0
  %.0.i.i57.i.i.i = zext i1 %i.ek to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.p, i64 %.210.i.i.i
  store i8 %.0.i.i57.i.i.i, ptr %i.el, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.em = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.en = sub nuw i64 %i.em, %.05414.i.i.i
  %i.eo = shl nuw i64 1, %i.en
  %i.ep = and i64 %i.eo, %i.cu
  %.not.i.i.i.1 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.em
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.es = icmp ne i8 %i.er, 0
  %.0.i.i57.i.i.i.1 = zext i1 %i.es to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.em
  store i8 %.0.i.i57.i.i.i.1, ptr %i.et, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.eu = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.eu, %i.cw
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !4014

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %middle.block, %vec.epilog.middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.cw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.cw, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.cw, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.cw, %vec.epilog.middle.block ], [ %i.cw, %bb.s ], [ %i.cw, %.lr.ph.i.i.i ]
  %i.ev = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.ev, %i.bp
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIhaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !4010

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.fa, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.r, i64 %.016.i.i.i
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !25, !alias.scope !3998, !noalias !4001
  %i.ey = icmp ne i8 %i.ex, 0
  %.0.i.i58.i.i.i = zext i1 %i.ey to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.p, i64 %.016.i.i.i
  store i8 %.0.i.i58.i.i.i, ptr %i.ez, align 1, !tbaa !25, !alias.scope !4001, !noalias !3998
  %i.fa = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.fa, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIhaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !4015

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !77 ; 8 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !131 ; 8 uses
  %i.ff = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4016)
  call void @llvm.experimental.noalias.scope.decl(metadata !4019)
  call void @llvm.experimental.noalias.scope.decl(metadata !4021)
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !78, !noalias !4023
  %.not.i.i61.i.i = icmp eq ptr %i.fi, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i61.i.i, label %.preheader.i67.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIhaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i62.i.i

.lr.ph.i62.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.fj = load ptr, ptr %i.ff, align 8, !tbaa !153, !alias.scope !4021, !noalias !4024 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.fj, null
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i62.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.gd, %bb.ac ], [ 0, %.lr.ph.i62.i.i ] ; 5 uses
  %i.fl = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.fm = and i64 %.03.us.i.i.i, 63
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !78, !noalias !4023
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !79, !noalias !4023
  %i.fq = shl nuw i64 1, %i.fm                    ; 2 uses
  %i.fr = and i64 %i.fp, %i.fq
  %.not.us.i.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.03.us.i.i.i
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !25, !alias.scope !4016, !noalias !4025
  %i.fu = icmp ne i8 %i.ft, 0
  %.0.i.i.us.i66.i.i = zext i1 %i.fu to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.03.us.i.i.i
  store i8 %.0.i.i.us.i66.i.i, ptr %i.fv, align 1, !tbaa !25, !alias.scope !4019, !noalias !4026
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fw = load ptr, ptr %i.fg, align 8, !tbaa !78, !noalias !4023 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i30.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.fx = load i64, ptr %i.fk, align 8, !tbaa !83, !noalias !4023
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i64 noundef %i.fx)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ab
end_hunk_28
begin_hunk_29_@_ZN6duckdb14ScalarFunction13UnaryFunctionItaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 12 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4037)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !4039 ; 2 uses
  %.not.i.i60.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i60.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteItaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %iter.check100

iter.check100:                                    ; preds = %.preheader.i.i.i
  %min.iters.check86 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check86, label %.lr.ph17.i.i.i.preheader, label %vector.main.loop.iter.check87

vector.main.loop.iter.check87:                    ; preds = %iter.check100
  %min.iters.check88 = icmp ult i64 %i.c, 16
  br i1 %min.iters.check88, label %vec.epilog.ph104, label %vector.ph89

vector.ph89:                                      ; preds = %vector.main.loop.iter.check87
  %n.mod.vf90 = and i64 %i.c, 12
  %n.vec91 = and i64 %i.c, -16                    ; 4 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next96, %vector.body92 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index93 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load94 = load <8 x i16>, ptr %i.u, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %wide.load95 = load <8 x i16>, ptr %i.v, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.w = icmp ne <8 x i16> %wide.load94, zeroinitializer
  %i.x = icmp ne <8 x i16> %wide.load95, zeroinitializer
  %i.y = zext <8 x i1> %i.w to <8 x i8>
  %i.z = zext <8 x i1> %i.x to <8 x i8>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %index93 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store <8 x i8> %i.y, ptr %i.aa, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  store <8 x i8> %i.z, ptr %i.ab, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  %index.next96 = add nuw i64 %index93, 16        ; 2 uses
  %i.ac = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.ac, label %middle.block97, label %vector.body92, !llvm.loop !4040

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %i.c, %n.vec91
  br i1 %cmp.n98, label %_ZN6duckdb13UnaryExecutor7ExecuteItaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %vec.epilog.iter.check102

vec.epilog.iter.check102:                         ; preds = %middle.block97
  %min.epilog.iters.check103 = icmp eq i64 %n.mod.vf90, 0
  br i1 %min.epilog.iters.check103, label %.lr.ph17.i.i.i.preheader, label %vec.epilog.ph104, !prof !3664

vec.epilog.ph104:                                 ; preds = %vector.main.loop.iter.check87, %vec.epilog.iter.check102
  %vec.epilog.resume.val99 = phi i64 [ %n.vec91, %vec.epilog.iter.check102 ], [ 0, %vector.main.loop.iter.check87 ]
  %n.vec106 = and i64 %i.c, -4                    ; 3 uses
  br label %vec.epilog.vector.body107

vec.epilog.vector.body107:                        ; preds = %vec.epilog.vector.body107, %vec.epilog.ph104
  %index108 = phi i64 [ %vec.epilog.resume.val99, %vec.epilog.ph104 ], [ %index.next110, %vec.epilog.vector.body107 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index108
  %wide.load109 = load <4 x i16>, ptr %i.ad, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.ae = icmp ne <4 x i16> %wide.load109, zeroinitializer
  %i.af = zext <4 x i1> %i.ae to <4 x i8>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 %index108
  store <4 x i8> %i.af, ptr %i.ag, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  %index.next110 = add nuw i64 %index108, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next110, %n.vec106
  br i1 %i.ah, label %vec.epilog.middle.block111, label %vec.epilog.vector.body107, !llvm.loop !4041

vec.epilog.middle.block111:                       ; preds = %vec.epilog.vector.body107
  %cmp.n112 = icmp eq i64 %i.c, %n.vec106
  br i1 %cmp.n112, label %_ZN6duckdb13UnaryExecutor7ExecuteItaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %iter.check100, %vec.epilog.iter.check102, %vec.epilog.middle.block111
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check100 ], [ %n.vec91, %vec.epilog.iter.check102 ], [ %n.vec106, %vec.epilog.middle.block111 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.ai, align 8, !tbaa !78, !noalias !4039
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ak = icmp eq ptr %2, %i.a
  br i1 %i.ak, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26, !noalias !4039 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.al, align 8, !tbaa !13, !noalias !4039
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !4039
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !3, !noalias !4039
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !3, !noalias !4039
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !4039 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26, !noalias !4039 ; 8 uses
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !13, !noalias !4039
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8, !noalias !4039 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aw, align 8, !tbaa !32, !noalias !4039
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !34, !noalias !4039
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !22, !noalias !4039
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !4039
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !noalias !4039, !inline_history !4042
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !22, !noalias !4039
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !4039
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !noalias !4039, !inline_history !4042
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !4039
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !3, !noalias !4039
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4, !noalias !4039
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.az, %bb.m ], [ %i.bj, %bb.n ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !noalias !4039
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !83, !noalias !4039
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !83, !noalias !4039
  %i.bo = add i64 %i.c, 63
  %i.bp = lshr i64 %i.bo, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteItaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !4039 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.05414.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 9 uses
  %.05513.us.i.i.i = phi i64 [ %i.cs, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.br = add i64 %.05414.us.i.i.i, 64
  %i.bs = tail call noundef i64 @llvm.umin.i64(i64 %i.br, i64 %i.c) ; 6 uses
  %i.bt = icmp ult i64 %.05414.us.i.i.i, %i.bs
  br i1 %i.bt, label %iter.check72, label %.loopexit7.us.i.i.i

iter.check72:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bu = sub nuw i64 %i.bs, %.05414.us.i.i.i     ; 7 uses
  %min.iters.check58 = icmp ult i64 %i.bu, 4
  br i1 %min.iters.check58, label %.lr.ph.us.i.i.i.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %iter.check72
  %min.iters.check60 = icmp ult i64 %i.bu, 16
  br i1 %min.iters.check60, label %vec.epilog.ph76, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %n.mod.vf62 = and i64 %i.bu, 12
  %n.vec63 = and i64 %i.bu, -16                   ; 4 uses
  %i.bv = add i64 %.05414.us.i.i.i, %n.vec63
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next68, %vector.body64 ] ; 2 uses
  %i.bw = add nuw i64 %.05414.us.i.i.i, %index65  ; 2 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load66 = load <8 x i16>, ptr %i.bx, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %wide.load67 = load <8 x i16>, ptr %i.by, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.bz = icmp ne <8 x i16> %wide.load66, zeroinitializer
  %i.ca = icmp ne <8 x i16> %wide.load67, zeroinitializer
  %i.cb = zext <8 x i1> %i.bz to <8 x i8>
  %i.cc = zext <8 x i1> %i.ca to <8 x i8>
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bw ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store <8 x i8> %i.cb, ptr %i.cd, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  store <8 x i8> %i.cc, ptr %i.ce, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  %index.next68 = add nuw i64 %index65, 16        ; 2 uses
  %i.cf = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.cf, label %middle.block69, label %vector.body64, !llvm.loop !4043

middle.block69:                                   ; preds = %vector.body64
  %cmp.n70 = icmp eq i64 %i.bu, %n.vec63
  br i1 %cmp.n70, label %.loopexit7.us.i.i.i, label %vec.epilog.iter.check74

vec.epilog.iter.check74:                          ; preds = %middle.block69
  %min.epilog.iters.check75 = icmp eq i64 %n.mod.vf62, 0
  br i1 %min.epilog.iters.check75, label %.lr.ph.us.i.i.i.preheader, label %vec.epilog.ph76, !prof !3664

vec.epilog.ph76:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check74
  %vec.epilog.resume.val71 = phi i64 [ %n.vec63, %vec.epilog.iter.check74 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec78 = and i64 %i.bu, -4                    ; 3 uses
  %i.cg = add i64 %.05414.us.i.i.i, %n.vec78
  br label %vec.epilog.vector.body79

vec.epilog.vector.body79:                         ; preds = %vec.epilog.vector.body79, %vec.epilog.ph76
  %index80 = phi i64 [ %vec.epilog.resume.val71, %vec.epilog.ph76 ], [ %index.next82, %vec.epilog.vector.body79 ] ; 2 uses
  %i.ch = add nuw i64 %.05414.us.i.i.i, %index80  ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ch
  %wide.load81 = load <4 x i16>, ptr %i.ci, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.cj = icmp ne <4 x i16> %wide.load81, zeroinitializer
  %i.ck = zext <4 x i1> %i.cj to <4 x i8>
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ch
  store <4 x i8> %i.ck, ptr %i.cl, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  %index.next82 = add nuw i64 %index80, 4         ; 2 uses
  %i.cm = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.cm, label %vec.epilog.middle.block83, label %vec.epilog.vector.body79, !llvm.loop !4044

vec.epilog.middle.block83:                        ; preds = %vec.epilog.vector.body79
  %cmp.n84 = icmp eq i64 %i.bu, %n.vec78
  br i1 %cmp.n84, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader

.lr.ph.us.i.i.i.preheader:                        ; preds = %iter.check72, %vec.epilog.iter.check74, %vec.epilog.middle.block83
  %.19.us.i.i.i.ph = phi i64 [ %.05414.us.i.i.i, %iter.check72 ], [ %i.bv, %vec.epilog.iter.check74 ], [ %i.cg, %vec.epilog.middle.block83 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cr, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.19.us.i.i.i
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.cp = icmp ne i16 %i.co, 0
  %.0.i.i.us.i.i.i = zext i1 %i.cp to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 %.19.us.i.i.i
  store i8 %.0.i.i.us.i.i.i, ptr %i.cq, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  %i.cr = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cr, %i.bs
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !4045

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block69, %vec.epilog.middle.block83, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.05414.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bs, %middle.block69 ], [ %i.bs, %vec.epilog.middle.block83 ], [ %i.bs, %.lr.ph.us.i.i.i ]
  %i.cs = add nuw nsw i64 %.05513.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.cs, %i.bp
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteItaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !4046

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.05414.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 19 uses
  %.05513.i.i.i = phi i64 [ %i.ev, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.05513.i.i.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !79, !noalias !4039 ; 4 uses
  %i.cv = add i64 %.05414.i.i.i, 64
  %i.cw = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 %i.c) ; 13 uses
  switch i64 %i.cu, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cx = icmp ult i64 %.05414.i.i.i, %i.cw
  br i1 %i.cx, label %iter.check, label %.loopexit5.i.i.i

iter.check:                                       ; preds = %.preheader6.i.i.i
  %i.cy = sub nuw i64 %i.cw, %.05414.i.i.i        ; 7 uses
  %min.iters.check = icmp ult i64 %i.cy, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %i.cy, 16
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cy, 12
  %n.vec = and i64 %i.cy, -16                     ; 4 uses
  %i.cz = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load = load <8 x i16>, ptr %i.db, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %wide.load50 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.dd = icmp ne <8 x i16> %wide.load, zeroinitializer
  %i.de = icmp ne <8 x i16> %wide.load50, zeroinitializer
  %i.df = zext <8 x i1> %i.dd to <8 x i8>
  %i.dg = zext <8 x i1> %i.de to <8 x i8>
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.da ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store <8 x i8> %i.df, ptr %i.dh, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  store <8 x i8> %i.dg, ptr %i.di, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !4047

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !3664

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.cy, -4                    ; 3 uses
  %i.dk = add i64 %.05414.i.i.i, %n.vec52
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.dl = add nuw i64 %.05414.i.i.i, %index53     ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.dl
  %wide.load54 = load <4 x i16>, ptr %i.dm, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.dn = icmp ne <4 x i16> %wide.load54, zeroinitializer
  %i.do = zext <4 x i1> %i.dn to <4 x i8>
  %i.dp = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dl
  store <4 x i8> %i.do, ptr %i.dp, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  %index.next55 = add nuw i64 %index53, 4         ; 2 uses
  %i.dq = icmp eq i64 %index.next55, %n.vec52
  br i1 %i.dq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4048

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.cy, %n.vec52
  br i1 %cmp.n56, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %iter.check ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dr = icmp ult i64 %.05414.i.i.i, %i.cw
  br i1 %i.dr, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.ds = sub nuw i64 %i.cw, %.05414.i.i.i
  %.neg = add i64 %.05414.i.i.i, 1
  %xtraiter = and i64 %i.ds, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.dt = and i64 %i.cu, 1
  %.not.i.i.i.prol = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.05414.i.i.i
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.dw = icmp ne i16 %i.dv, 0
  %.0.i.i57.i.i.i.prol = zext i1 %i.dw to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 %.05414.i.i.i
  store i8 %.0.i.i57.i.i.i.prol, ptr %i.dx, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.dy = add nuw i64 %.05414.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.05414.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.dy, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dz = icmp eq i64 %i.cw, %.neg
  br i1 %i.dz, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.19.i.i.i
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.ec = icmp ne i16 %i.eb, 0
  %.0.i.i.i.i.i = zext i1 %i.ec to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 %.19.i.i.i
  store i8 %.0.i.i.i.i.i, ptr %i.ed, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  %i.ee = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ee, %i.cw
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4049

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.eu, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.ef = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.eg = shl nuw i64 1, %i.ef
  %i.eh = and i64 %i.eg, %i.cu
  %.not.i.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.210.i.i.i
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.ek = icmp ne i16 %i.ej, 0
  %.0.i.i57.i.i.i = zext i1 %i.ek to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.p, i64 %.210.i.i.i
  store i8 %.0.i.i57.i.i.i, ptr %i.el, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.em = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.en = sub nuw i64 %i.em, %.05414.i.i.i
  %i.eo = shl nuw i64 1, %i.en
  %i.ep = and i64 %i.eo, %i.cu
  %.not.i.i.i.1 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.em
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.es = icmp ne i16 %i.er, 0
  %.0.i.i57.i.i.i.1 = zext i1 %i.es to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.em
  store i8 %.0.i.i57.i.i.i.1, ptr %i.et, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.eu = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.eu, %i.cw
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !4050

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %middle.block, %vec.epilog.middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.cw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.cw, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.cw, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.cw, %vec.epilog.middle.block ], [ %i.cw, %bb.s ], [ %i.cw, %.lr.ph.i.i.i ]
  %i.ev = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.ev, %i.bp
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteItaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !4046

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.fa, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.016.i.i.i
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !308, !alias.scope !4034, !noalias !4037
  %i.ey = icmp ne i16 %i.ex, 0
  %.0.i.i58.i.i.i = zext i1 %i.ey to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.p, i64 %.016.i.i.i
  store i8 %.0.i.i58.i.i.i, ptr %i.ez, align 1, !tbaa !25, !alias.scope !4037, !noalias !4034
  %i.fa = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.fa, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteItaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !4051

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !77 ; 8 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !131 ; 8 uses
  %i.ff = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4052)
  call void @llvm.experimental.noalias.scope.decl(metadata !4055)
  call void @llvm.experimental.noalias.scope.decl(metadata !4057)
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !78, !noalias !4059
  %.not.i.i61.i.i = icmp eq ptr %i.fi, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i61.i.i, label %.preheader.i67.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopItaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i62.i.i

.lr.ph.i62.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.fj = load ptr, ptr %i.ff, align 8, !tbaa !153, !alias.scope !4057, !noalias !4060 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.fj, null
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i62.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.gd, %bb.ac ], [ 0, %.lr.ph.i62.i.i ] ; 5 uses
  %i.fl = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.fm = and i64 %.03.us.i.i.i, 63
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !78, !noalias !4059
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !79, !noalias !4059
  %i.fq = shl nuw i64 1, %i.fm                    ; 2 uses
  %i.fr = and i64 %i.fp, %i.fq
  %.not.us.i.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %.03.us.i.i.i
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !308, !alias.scope !4052, !noalias !4061
  %i.fu = icmp ne i16 %i.ft, 0
  %.0.i.i.us.i66.i.i = zext i1 %i.fu to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.03.us.i.i.i
  store i8 %.0.i.i.us.i66.i.i, ptr %i.fv, align 1, !tbaa !25, !alias.scope !4055, !noalias !4062
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fw = load ptr, ptr %i.fg, align 8, !tbaa !78, !noalias !4059 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i30.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.fx = load i64, ptr %i.fk, align 8, !tbaa !83, !noalias !4059
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i64 noundef %i.fx)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ab
end_hunk_29
begin_hunk_30_@_ZN6duckdb14ScalarFunction13UnaryFunctionIjaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIjaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load i32, ptr %i.h, align 4, !tbaa !3
  %i.n = icmp ne i32 %i.m, 0
  %.0.i.i59.i.i = zext i1 %i.n to i8
  store i8 %.0.i.i59.i.i, ptr %i.f, align 1, !tbaa !25
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIjaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 9 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4073)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !4075 ; 2 uses
  %.not.i.i60.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i60.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIjaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check64 = icmp ult i64 %i.c, 8
  br i1 %min.iters.check64, label %.lr.ph17.i.i.i.preheader93, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.vec67 = and i64 %i.c, -8                     ; 3 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next72, %vector.body68 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index69 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load70 = load <4 x i32>, ptr %i.u, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %wide.load71 = load <4 x i32>, ptr %i.v, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %i.w = icmp ne <4 x i32> %wide.load70, zeroinitializer
  %i.x = icmp ne <4 x i32> %wide.load71, zeroinitializer
  %i.y = zext <4 x i1> %i.w to <4 x i8>
  %i.z = zext <4 x i1> %i.x to <4 x i8>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %index69 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store <4 x i8> %i.y, ptr %i.aa, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  store <4 x i8> %i.z, ptr %i.ab, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  %index.next72 = add nuw i64 %index69, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.ac, label %middle.block73, label %vector.body68, !llvm.loop !4076

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.c, %n.vec67
  br i1 %cmp.n74, label %_ZN6duckdb13UnaryExecutor7ExecuteIjaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader93

.lr.ph17.i.i.i.preheader93:                       ; preds = %.lr.ph17.i.i.i.preheader, %middle.block73
  %.016.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec67, %middle.block73 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.ad, align 8, !tbaa !78, !noalias !4075
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp eq ptr %2, %i.a
  br i1 %i.af, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26, !noalias !4075 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !13, !noalias !4075
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !4075
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !4075
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3, !noalias !4075
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !4075 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26, !noalias !4075 ; 8 uses
  store <2 x ptr> %i.aj, ptr %i.ae, align 8, !tbaa !13, !noalias !4075
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !noalias !4075 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ar, align 8, !tbaa !32, !noalias !4075
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !34, !noalias !4075
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !22, !noalias !4075
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !4075
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !4075, !inline_history !4077
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !22, !noalias !4075
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !4075
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !4075, !inline_history !4077
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !4075
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3, !noalias !4075
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4, !noalias !4075
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.au, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !4075
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !83, !noalias !4075
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !83, !noalias !4075
  %i.bj = add i64 %i.c, 63
  %i.bk = lshr i64 %i.bj, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIjaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !4075 ; 2 uses
  %.not.i56.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i56.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.05414.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05513.us.i.i.i = phi i64 [ %i.cg, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bm = add i64 %.05414.us.i.i.i, 64
  %i.bn = tail call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.c) ; 5 uses
  %i.bo = icmp ult i64 %.05414.us.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bp = sub nuw i64 %i.bn, %.05414.us.i.i.i     ; 3 uses
  %min.iters.check51 = icmp ult i64 %i.bp, 8
  br i1 %min.iters.check51, label %.lr.ph.us.i.i.i.preheader94, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec54 = and i64 %i.bp, -8                    ; 3 uses
  %i.bq = add i64 %.05414.us.i.i.i, %n.vec54
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph52
  %index56 = phi i64 [ 0, %vector.ph52 ], [ %index.next59, %vector.body55 ] ; 2 uses
  %i.br = add nuw i64 %.05414.us.i.i.i, %index56  ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load57 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %wide.load58 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %i.bu = icmp ne <4 x i32> %wide.load57, zeroinitializer
  %i.bv = icmp ne <4 x i32> %wide.load58, zeroinitializer
  %i.bw = zext <4 x i1> %i.bu to <4 x i8>
  %i.bx = zext <4 x i1> %i.bv to <4 x i8>
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.br ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store <4 x i8> %i.bw, ptr %i.by, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  store <4 x i8> %i.bx, ptr %i.bz, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  %index.next59 = add nuw i64 %index56, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.ca, label %middle.block60, label %vector.body55, !llvm.loop !4078

middle.block60:                                   ; preds = %vector.body55
  %cmp.n61 = icmp eq i64 %i.bp, %n.vec54
  br i1 %cmp.n61, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader94

.lr.ph.us.i.i.i.preheader94:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block60
  %.19.us.i.i.i.ph = phi i64 [ %.05414.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bq, %middle.block60 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader94, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cf, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader94 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.19.us.i.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %i.cd = icmp ne i32 %i.cc, 0
  %.0.i.i.us.i.i.i = zext i1 %i.cd to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 %.19.us.i.i.i
  store i8 %.0.i.i.us.i.i.i, ptr %i.ce, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  %i.cf = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cf, %i.bn
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !4079

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.05414.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bn, %middle.block60 ], [ %i.bn, %.lr.ph.us.i.i.i ]
  %i.cg = add nuw nsw i64 %.05513.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.cg, %i.bk
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIjaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !4080

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.05414.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05513.i.i.i = phi i64 [ %i.ec, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.05513.i.i.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !79, !noalias !4075 ; 4 uses
  %i.cj = add i64 %.05414.i.i.i, 64
  %i.ck = tail call noundef i64 @llvm.umin.i64(i64 %i.cj, i64 %i.c) ; 12 uses
  switch i64 %i.ci, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cl = icmp ult i64 %.05414.i.i.i, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.cm = sub nuw i64 %i.ck, %.05414.i.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.cm, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader96, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.cm, -8                      ; 3 uses
  %i.cn = add i64 %.05414.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = add nuw i64 %.05414.i.i.i, %index       ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <4 x i32>, ptr %i.cp, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %wide.load49 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %i.cr = icmp ne <4 x i32> %wide.load, zeroinitializer
  %i.cs = icmp ne <4 x i32> %wide.load49, zeroinitializer
  %i.ct = zext <4 x i1> %i.cr to <4 x i8>
  %i.cu = zext <4 x i1> %i.cs to <4 x i8>
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.co ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store <4 x i8> %i.ct, ptr %i.cv, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  store <4 x i8> %i.cu, ptr %i.cw, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !4081

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader96

.lr.ph.i.i.i.preheader96:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.05414.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cy = icmp ult i64 %.05414.i.i.i, %i.ck
  br i1 %i.cy, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.cz = sub nuw i64 %i.ck, %.05414.i.i.i
  %.neg = add i64 %.05414.i.i.i, 1
  %xtraiter = and i64 %i.cz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.da = and i64 %i.ci, 1
  %.not.i.i.i.prol = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05414.i.i.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %i.dd = icmp ne i32 %i.dc, 0
  %.0.i.i57.i.i.i.prol = zext i1 %i.dd to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 %.05414.i.i.i
  store i8 %.0.i.i57.i.i.i.prol, ptr %i.de, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.df = add nuw i64 %.05414.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.05414.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.df, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dg = icmp eq i64 %i.ck, %.neg
  br i1 %i.dg, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader96, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader96 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.19.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %i.dj = icmp ne i32 %i.di, 0
  %.0.i.i.i.i.i = zext i1 %i.dj to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 %.19.i.i.i
  store i8 %.0.i.i.i.i.i, ptr %i.dk, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  %i.dl = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dl, %i.ck
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4082

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.eb, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.dm = sub nuw i64 %.210.i.i.i, %.05414.i.i.i
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.ci
  %.not.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.210.i.i.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %i.dr = icmp ne i32 %i.dq, 0
  %.0.i.i57.i.i.i = zext i1 %i.dr to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 %.210.i.i.i
  store i8 %.0.i.i57.i.i.i, ptr %i.ds, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.dt = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.du = sub nuw i64 %i.dt, %.05414.i.i.i
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = and i64 %i.dv, %i.ci
  %.not.i.i.i.1 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dt
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %i.dz = icmp ne i32 %i.dy, 0
  %.0.i.i57.i.i.i.1 = zext i1 %i.dz to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dt
  store i8 %.0.i.i57.i.i.i.1, ptr %i.ea, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.eb = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.eb, %i.ck
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !4083

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.ck, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.ck, %middle.block ], [ %.05414.i.i.i, %.preheader4.i.i.i ], [ %.05414.i.i.i, %.preheader6.i.i.i ], [ %i.ck, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.ck, %bb.s ], [ %i.ck, %.lr.ph.i.i.i ]
  %i.ec = add nuw nsw i64 %.05513.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.ec, %i.bk
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIjaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !4080

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader93, %.lr.ph17.i.i.i
  %.016.i.i.i = phi i64 [ %i.eh, %.lr.ph17.i.i.i ], [ %.016.i.i.i.ph, %.lr.ph17.i.i.i.preheader93 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.016.i.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !alias.scope !4070, !noalias !4073
  %i.ef = icmp ne i32 %i.ee, 0
  %.0.i.i58.i.i.i = zext i1 %i.ef to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.p, i64 %.016.i.i.i
  store i8 %.0.i.i58.i.i.i, ptr %i.eg, align 1, !tbaa !25, !alias.scope !4073, !noalias !4070
  %i.eh = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.eh, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIjaNS_12_GLOBAL__N_112SignOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !4084

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !77 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !131 ; 7 uses
  %i.em = load ptr, ptr %3, align 8, !tbaa !140   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4085)
  call void @llvm.experimental.noalias.scope.decl(metadata !4088)
  call void @llvm.experimental.noalias.scope.decl(metadata !4090)
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !78, !noalias !4092
  %.not.i.i61.i.i = icmp eq ptr %i.ep, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i61.i.i, label %.preheader.i67.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopIjaNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_112SignOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESE_Pvb.exit.i.i, label %.lr.ph.i62.i.i

.lr.ph.i62.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.eq = load ptr, ptr %i.em, align 8, !tbaa !153, !alias.scope !4090, !noalias !4093 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.eq, null
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i29.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i62.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.fk, %bb.ac ], [ 0, %.lr.ph.i62.i.i ] ; 5 uses
  %i.es = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.et = and i64 %.03.us.i.i.i, 63
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !78, !noalias !4092
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.es
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !79, !noalias !4092
  %i.ex = shl nuw i64 1, %i.et                    ; 2 uses
  %i.ey = and i64 %i.ew, %i.ex
  %.not.us.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.03.us.i.i.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3, !alias.scope !4085, !noalias !4094
  %i.fb = icmp ne i32 %i.fa, 0
  %.0.i.i.us.i66.i.i = zext i1 %i.fb to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.03.us.i.i.i
  store i8 %.0.i.i.us.i66.i.i, ptr %i.fc, align 1, !tbaa !25, !alias.scope !4088, !noalias !4095
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fd = load ptr, ptr %i.en, align 8, !tbaa !78, !noalias !4092 ; 2 uses
  %.not.i30.us.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i30.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

end_hunk_30
begin_hunk_31_@_ZN6duckdbL27GenericRoundFunctionDecimalIsNS_13NumericHelperENS_12_GLOBAL__N_119CeilDecimalOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.dd = phi <8 x i32> [ %i.cx, %pred.sdiv.continue115 ], [ %i.dc, %pred.sdiv.if116 ] ; 2 uses
  %i.de = extractelement <8 x i1> %i.ao, i64 4
  br i1 %i.de, label %pred.sdiv.if118, label %pred.sdiv.continue119

pred.sdiv.if118:                                  ; preds = %pred.sdiv.continue117
  %i.df = extractelement <8 x i16> %wide.load93, i64 4
  %i.dg = sext i16 %i.df to i32
  %i.dh = sdiv i32 %i.dg, %i.am
  %i.di = insertelement <8 x i32> %i.dd, i32 %i.dh, i64 4
  br label %pred.sdiv.continue119

pred.sdiv.continue119:                            ; preds = %pred.sdiv.if118, %pred.sdiv.continue117
  %i.dj = phi <8 x i32> [ %i.dd, %pred.sdiv.continue117 ], [ %i.di, %pred.sdiv.if118 ] ; 2 uses
  %i.dk = extractelement <8 x i1> %i.ao, i64 5
  br i1 %i.dk, label %pred.sdiv.if120, label %pred.sdiv.continue121

pred.sdiv.if120:                                  ; preds = %pred.sdiv.continue119
  %i.dl = extractelement <8 x i16> %wide.load93, i64 5
  %i.dm = sext i16 %i.dl to i32
  %i.dn = sdiv i32 %i.dm, %i.am
  %i.do = insertelement <8 x i32> %i.dj, i32 %i.dn, i64 5
  br label %pred.sdiv.continue121

pred.sdiv.continue121:                            ; preds = %pred.sdiv.if120, %pred.sdiv.continue119
  %i.dp = phi <8 x i32> [ %i.dj, %pred.sdiv.continue119 ], [ %i.do, %pred.sdiv.if120 ] ; 2 uses
  %i.dq = extractelement <8 x i1> %i.ao, i64 6
  br i1 %i.dq, label %pred.sdiv.if122, label %pred.sdiv.continue123

pred.sdiv.if122:                                  ; preds = %pred.sdiv.continue121
  %i.dr = extractelement <8 x i16> %wide.load93, i64 6
  %i.ds = sext i16 %i.dr to i32
  %i.dt = sdiv i32 %i.ds, %i.am
  %i.du = insertelement <8 x i32> %i.dp, i32 %i.dt, i64 6
  br label %pred.sdiv.continue123

pred.sdiv.continue123:                            ; preds = %pred.sdiv.if122, %pred.sdiv.continue121
  %i.dv = phi <8 x i32> [ %i.dp, %pred.sdiv.continue121 ], [ %i.du, %pred.sdiv.if122 ] ; 2 uses
  %i.dw = extractelement <8 x i1> %i.ao, i64 7
  br i1 %i.dw, label %pred.sdiv.if124, label %pred.sdiv.continue125

pred.sdiv.if124:                                  ; preds = %pred.sdiv.continue123
  %i.dx = extractelement <8 x i16> %wide.load93, i64 7
  %i.dy = sext i16 %i.dx to i32
  %i.dz = sdiv i32 %i.dy, %i.am
  %i.ea = insertelement <8 x i32> %i.dv, i32 %i.dz, i64 7
  br label %pred.sdiv.continue125

pred.sdiv.continue125:                            ; preds = %pred.sdiv.if124, %pred.sdiv.continue123
  %i.eb = phi <8 x i32> [ %i.dv, %pred.sdiv.continue123 ], [ %i.ea, %pred.sdiv.if124 ]
  %i.ec = trunc <8 x i32> %i.eb to <8 x i16>
  %predphi126 = select <8 x i1> %i.ao, <8 x i16> %i.ec, <8 x i16> %i.cf
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %index92
  store <8 x i16> %predphi126, ptr %i.ed, align 2, !tbaa !308, !alias.scope !4256, !noalias !4253
  %index.next127 = add nuw i64 %index92, 8        ; 2 uses
  %i.ee = icmp eq i64 %index.next127, %n.vec90
  br i1 %i.ee, label %middle.block128, label %vector.body91, !llvm.loop !4259

middle.block128:                                  ; preds = %pred.sdiv.continue125
  %cmp.n129 = icmp eq i64 %i.o, %n.vec90
  br i1 %cmp.n129, label %_ZN6duckdb12_GLOBAL__N_119CeilDecimalOperator9OperationIsNS_13NumericHelperEEEvRNS_9DataChunkEhRNS_6VectorE.exit, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %.lr.ph81.i.i.i.i, %middle.block128
  %.080.i.i.i.i.ph = phi i64 [ 0, %.lr.ph81.i.i.i.i ], [ %n.vec90, %middle.block128 ]
  br label %scalar.ph86

bb.g:                                             ; preds = %bb.f
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.al, ptr %i.ef, align 8, !tbaa !78, !noalias !4258
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eh = icmp eq ptr %2, %i.m
  br i1 %i.eh, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.ej = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !26, !noalias !4258 ; 2 uses
  %i.el = load <2 x ptr>, ptr %i.ei, align 8, !tbaa !13, !noalias !4258
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 3 uses
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !4258
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !3, !noalias !4258
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.em, align 4, !tbaa !3, !noalias !4258
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.eq = atomicrmw volatile add ptr %i.em, i32 1 acq_rel, align 4, !noalias !4258 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !26, !noalias !4258 ; 8 uses
  store <2 x ptr> %i.el, ptr %i.eg, align 8, !tbaa !13, !noalias !4258
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 4 uses
  %i.eu = load atomic i64, ptr %i.et acquire, align 8, !noalias !4258 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 4294967297
  %i.ew = trunc i64 %i.eu to i32                  ; 2 uses
  br i1 %i.ev, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.et, align 8, !tbaa !32, !noalias !4258
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 0, ptr %i.ex, align 4, !tbaa !34, !noalias !4258
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !22, !noalias !4258
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !4258
  tail call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #23, !noalias !4258, !inline_history !4260
  %i.fb = load ptr, ptr %i.es, align 8, !tbaa !22, !noalias !4258
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !4258
  tail call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #23, !noalias !4258, !inline_history !4260
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !4258
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ff = add nsw i32 %i.ew, -1
  store i32 %i.ff, ptr %i.et, align 8, !tbaa !3, !noalias !4258
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.fg = atomicrmw volatile add ptr %i.et, i32 -1 acq_rel, align 4, !noalias !4258
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ew, %bb.o ], [ %i.fg, %bb.p ]
  %i.fh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fh, label %bb.q, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i, !prof !36

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #23, !noalias !4258
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.m, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, %bb.g
  %i.fi = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !83, !noalias !4258
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !83, !noalias !4258
  %i.fl = add i64 %i.o, 63
  %i.fm = lshr i64 %i.fl, 6                       ; 2 uses
  %.not82.i.i.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not82.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_119CeilDecimalOperator9OperationIsNS_13NumericHelperEEEvRNS_9DataChunkEhRNS_6VectorE.exit, label %.lr.ph79.i.i.i.i

.lr.ph79.i.i.i.i:                                 ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i
  %i.fn = load ptr, ptr %i.ak, align 8, !tbaa !78, !noalias !4258 ; 2 uses
  %.not.i58.i.i.i.i = icmp eq ptr %i.fn, null
  %i.fo = sext i16 %i.l to i32                    ; 10 uses
  br label %bb.r

bb.r:                                             ; preds = %.loopexit69.i.i.i.i, %.lr.ph79.i.i.i.i
  %.05478.i.i.i.i = phi i64 [ 0, %.lr.ph79.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit69.i.i.i.i ] ; 12 uses
  %.05577.i.i.i.i = phi i64 [ 0, %.lr.ph79.i.i.i.i ], [ %i.kq, %.loopexit69.i.i.i.i ] ; 2 uses
  br i1 %.not.i58.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i: ; preds = %bb.r
  %i.fp = add i64 %.05478.i.i.i.i, 64
  %i.fq = tail call noundef i64 @llvm.umin.i64(i64 %i.fp, i64 %i.o)
  br label %.preheader70.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.r
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.05577.i.i.i.i
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !79, !noalias !4258 ; 2 uses
  %i.ft = add i64 %.05478.i.i.i.i, 64
  %i.fu = tail call noundef i64 @llvm.umin.i64(i64 %i.ft, i64 %i.o) ; 5 uses
  switch i64 %i.fs, label %.preheader68.i.i.i.i [
    i64 -1, label %.preheader70.i.i.i.i
    i64 0, label %.loopexit69.i.i.i.i
  ]

.preheader70.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i
  %i.fv = phi i64 [ %i.fq, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i ], [ %i.fu, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ] ; 5 uses
  %i.fw = icmp ult i64 %.05478.i.i.i.i, %i.fv
  br i1 %i.fw, label %.lr.ph.i.i.i.i.preheader, label %.loopexit69.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %.preheader70.i.i.i.i
  %i.fx = sub nuw i64 %i.fv, %.05478.i.i.i.i      ; 3 uses
  %min.iters.check = icmp ult i64 %i.fx, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader179, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.fx, -8                      ; 3 uses
  %i.fy = add i64 %.05478.i.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.sdiv.continue85, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.sdiv.continue85 ] ; 2 uses
  %i.fz = add nuw i64 %.05478.i.i.i.i, %index     ; 2 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.fz
  %wide.load = load <8 x i16>, ptr %i.ga, align 2, !tbaa !308, !alias.scope !4253, !noalias !4256 ; 10 uses
  %i.gb = icmp slt <8 x i16> %wide.load, splat (i16 1) ; 10 uses
  %i.gc = xor <8 x i1> %i.gb, splat (i1 true)     ; 8 uses
  %i.gd = add nsw <8 x i16> %wide.load, splat (i16 -1) ; 8 uses
  %i.ge = extractelement <8 x i1> %i.gc, i64 0
  br i1 %i.ge, label %pred.sdiv.if, label %pred.sdiv.continue

pred.sdiv.if:                                     ; preds = %vector.body
  %i.gf = extractelement <8 x i16> %i.gd, i64 0
  %i.gg = sdiv i16 %i.gf, %i.l
  %i.gh = insertelement <8 x i16> poison, i16 %i.gg, i64 0
  br label %pred.sdiv.continue

pred.sdiv.continue:                               ; preds = %pred.sdiv.if, %vector.body
  %i.gi = phi <8 x i16> [ poison, %vector.body ], [ %i.gh, %pred.sdiv.if ] ; 2 uses
  %i.gj = extractelement <8 x i1> %i.gc, i64 1
  br i1 %i.gj, label %pred.sdiv.if56, label %pred.sdiv.continue57

pred.sdiv.if56:                                   ; preds = %pred.sdiv.continue
  %i.gk = extractelement <8 x i16> %i.gd, i64 1
  %i.gl = sdiv i16 %i.gk, %i.l
  %i.gm = insertelement <8 x i16> %i.gi, i16 %i.gl, i64 1
  br label %pred.sdiv.continue57

pred.sdiv.continue57:                             ; preds = %pred.sdiv.if56, %pred.sdiv.continue
  %i.gn = phi <8 x i16> [ %i.gi, %pred.sdiv.continue ], [ %i.gm, %pred.sdiv.if56 ] ; 2 uses
  %i.go = extractelement <8 x i1> %i.gc, i64 2
  br i1 %i.go, label %pred.sdiv.if58, label %pred.sdiv.continue59

pred.sdiv.if58:                                   ; preds = %pred.sdiv.continue57
  %i.gp = extractelement <8 x i16> %i.gd, i64 2
  %i.gq = sdiv i16 %i.gp, %i.l
  %i.gr = insertelement <8 x i16> %i.gn, i16 %i.gq, i64 2
  br label %pred.sdiv.continue59

pred.sdiv.continue59:                             ; preds = %pred.sdiv.if58, %pred.sdiv.continue57
  %i.gs = phi <8 x i16> [ %i.gn, %pred.sdiv.continue57 ], [ %i.gr, %pred.sdiv.if58 ] ; 2 uses
  %i.gt = extractelement <8 x i1> %i.gc, i64 3
  br i1 %i.gt, label %pred.sdiv.if60, label %pred.sdiv.continue61

pred.sdiv.if60:                                   ; preds = %pred.sdiv.continue59
  %i.gu = extractelement <8 x i16> %i.gd, i64 3
  %i.gv = sdiv i16 %i.gu, %i.l
  %i.gw = insertelement <8 x i16> %i.gs, i16 %i.gv, i64 3
  br label %pred.sdiv.continue61

pred.sdiv.continue61:                             ; preds = %pred.sdiv.if60, %pred.sdiv.continue59
  %i.gx = phi <8 x i16> [ %i.gs, %pred.sdiv.continue59 ], [ %i.gw, %pred.sdiv.if60 ] ; 2 uses
  %i.gy = extractelement <8 x i1> %i.gc, i64 4
  br i1 %i.gy, label %pred.sdiv.if62, label %pred.sdiv.continue63

pred.sdiv.if62:                                   ; preds = %pred.sdiv.continue61
  %i.gz = extractelement <8 x i16> %i.gd, i64 4
  %i.ha = sdiv i16 %i.gz, %i.l
  %i.hb = insertelement <8 x i16> %i.gx, i16 %i.ha, i64 4
  br label %pred.sdiv.continue63

pred.sdiv.continue63:                             ; preds = %pred.sdiv.if62, %pred.sdiv.continue61
  %i.hc = phi <8 x i16> [ %i.gx, %pred.sdiv.continue61 ], [ %i.hb, %pred.sdiv.if62 ] ; 2 uses
  %i.hd = extractelement <8 x i1> %i.gc, i64 5
  br i1 %i.hd, label %pred.sdiv.if64, label %pred.sdiv.continue65

pred.sdiv.if64:                                   ; preds = %pred.sdiv.continue63
  %i.he = extractelement <8 x i16> %i.gd, i64 5
  %i.hf = sdiv i16 %i.he, %i.l
  %i.hg = insertelement <8 x i16> %i.hc, i16 %i.hf, i64 5
  br label %pred.sdiv.continue65

pred.sdiv.continue65:                             ; preds = %pred.sdiv.if64, %pred.sdiv.continue63
  %i.hh = phi <8 x i16> [ %i.hc, %pred.sdiv.continue63 ], [ %i.hg, %pred.sdiv.if64 ] ; 2 uses
  %i.hi = extractelement <8 x i1> %i.gc, i64 6
  br i1 %i.hi, label %pred.sdiv.if66, label %pred.sdiv.continue67

pred.sdiv.if66:                                   ; preds = %pred.sdiv.continue65
  %i.hj = extractelement <8 x i16> %i.gd, i64 6
  %i.hk = sdiv i16 %i.hj, %i.l
  %i.hl = insertelement <8 x i16> %i.hh, i16 %i.hk, i64 6
  br label %pred.sdiv.continue67

pred.sdiv.continue67:                             ; preds = %pred.sdiv.if66, %pred.sdiv.continue65
  %i.hm = phi <8 x i16> [ %i.hh, %pred.sdiv.continue65 ], [ %i.hl, %pred.sdiv.if66 ] ; 2 uses
  %i.hn = extractelement <8 x i1> %i.gc, i64 7
  br i1 %i.hn, label %pred.sdiv.if68, label %pred.sdiv.continue69

pred.sdiv.if68:                                   ; preds = %pred.sdiv.continue67
  %i.ho = extractelement <8 x i16> %i.gd, i64 7
  %i.hp = sdiv i16 %i.ho, %i.l
  %i.hq = insertelement <8 x i16> %i.hm, i16 %i.hp, i64 7
  br label %pred.sdiv.continue69

pred.sdiv.continue69:                             ; preds = %pred.sdiv.if68, %pred.sdiv.continue67
  %i.hr = phi <8 x i16> [ %i.hm, %pred.sdiv.continue67 ], [ %i.hq, %pred.sdiv.if68 ]
  %i.hs = add nsw <8 x i16> %i.hr, splat (i16 1)
  %i.ht = extractelement <8 x i1> %i.gb, i64 0
  br i1 %i.ht, label %pred.sdiv.if70, label %pred.sdiv.continue71

pred.sdiv.if70:                                   ; preds = %pred.sdiv.continue69
  %i.hu = extractelement <8 x i16> %wide.load, i64 0
  %i.hv = sext i16 %i.hu to i32
  %i.hw = sdiv i32 %i.hv, %i.fo
  %i.hx = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  br label %pred.sdiv.continue71

pred.sdiv.continue71:                             ; preds = %pred.sdiv.if70, %pred.sdiv.continue69
  %i.hy = phi <8 x i32> [ poison, %pred.sdiv.continue69 ], [ %i.hx, %pred.sdiv.if70 ] ; 2 uses
  %i.hz = extractelement <8 x i1> %i.gb, i64 1
  br i1 %i.hz, label %pred.sdiv.if72, label %pred.sdiv.continue73

pred.sdiv.if72:                                   ; preds = %pred.sdiv.continue71
  %i.ia = extractelement <8 x i16> %wide.load, i64 1
  %i.ib = sext i16 %i.ia to i32
  %i.ic = sdiv i32 %i.ib, %i.fo
  %i.id = insertelement <8 x i32> %i.hy, i32 %i.ic, i64 1
  br label %pred.sdiv.continue73

pred.sdiv.continue73:                             ; preds = %pred.sdiv.if72, %pred.sdiv.continue71
  %i.ie = phi <8 x i32> [ %i.hy, %pred.sdiv.continue71 ], [ %i.id, %pred.sdiv.if72 ] ; 2 uses
  %i.if = extractelement <8 x i1> %i.gb, i64 2
  br i1 %i.if, label %pred.sdiv.if74, label %pred.sdiv.continue75

pred.sdiv.if74:                                   ; preds = %pred.sdiv.continue73
  %i.ig = extractelement <8 x i16> %wide.load, i64 2
  %i.ih = sext i16 %i.ig to i32
  %i.ii = sdiv i32 %i.ih, %i.fo
  %i.ij = insertelement <8 x i32> %i.ie, i32 %i.ii, i64 2
  br label %pred.sdiv.continue75

pred.sdiv.continue75:                             ; preds = %pred.sdiv.if74, %pred.sdiv.continue73
  %i.ik = phi <8 x i32> [ %i.ie, %pred.sdiv.continue73 ], [ %i.ij, %pred.sdiv.if74 ] ; 2 uses
  %i.il = extractelement <8 x i1> %i.gb, i64 3
  br i1 %i.il, label %pred.sdiv.if76, label %pred.sdiv.continue77

pred.sdiv.if76:                                   ; preds = %pred.sdiv.continue75
  %i.im = extractelement <8 x i16> %wide.load, i64 3
  %i.in = sext i16 %i.im to i32
  %i.io = sdiv i32 %i.in, %i.fo
  %i.ip = insertelement <8 x i32> %i.ik, i32 %i.io, i64 3
  br label %pred.sdiv.continue77

pred.sdiv.continue77:                             ; preds = %pred.sdiv.if76, %pred.sdiv.continue75
  %i.iq = phi <8 x i32> [ %i.ik, %pred.sdiv.continue75 ], [ %i.ip, %pred.sdiv.if76 ] ; 2 uses
  %i.ir = extractelement <8 x i1> %i.gb, i64 4
  br i1 %i.ir, label %pred.sdiv.if78, label %pred.sdiv.continue79

pred.sdiv.if78:                                   ; preds = %pred.sdiv.continue77
  %i.is = extractelement <8 x i16> %wide.load, i64 4
  %i.it = sext i16 %i.is to i32
  %i.iu = sdiv i32 %i.it, %i.fo
  %i.iv = insertelement <8 x i32> %i.iq, i32 %i.iu, i64 4
  br label %pred.sdiv.continue79

pred.sdiv.continue79:                             ; preds = %pred.sdiv.if78, %pred.sdiv.continue77
  %i.iw = phi <8 x i32> [ %i.iq, %pred.sdiv.continue77 ], [ %i.iv, %pred.sdiv.if78 ] ; 2 uses
  %i.ix = extractelement <8 x i1> %i.gb, i64 5
  br i1 %i.ix, label %pred.sdiv.if80, label %pred.sdiv.continue81

pred.sdiv.if80:                                   ; preds = %pred.sdiv.continue79
  %i.iy = extractelement <8 x i16> %wide.load, i64 5
  %i.iz = sext i16 %i.iy to i32
  %i.ja = sdiv i32 %i.iz, %i.fo
  %i.jb = insertelement <8 x i32> %i.iw, i32 %i.ja, i64 5
  br label %pred.sdiv.continue81

pred.sdiv.continue81:                             ; preds = %pred.sdiv.if80, %pred.sdiv.continue79
  %i.jc = phi <8 x i32> [ %i.iw, %pred.sdiv.continue79 ], [ %i.jb, %pred.sdiv.if80 ] ; 2 uses
  %i.jd = extractelement <8 x i1> %i.gb, i64 6
  br i1 %i.jd, label %pred.sdiv.if82, label %pred.sdiv.continue83

pred.sdiv.if82:                                   ; preds = %pred.sdiv.continue81
  %i.je = extractelement <8 x i16> %wide.load, i64 6
  %i.jf = sext i16 %i.je to i32
  %i.jg = sdiv i32 %i.jf, %i.fo
  %i.jh = insertelement <8 x i32> %i.jc, i32 %i.jg, i64 6
  br label %pred.sdiv.continue83

pred.sdiv.continue83:                             ; preds = %pred.sdiv.if82, %pred.sdiv.continue81
  %i.ji = phi <8 x i32> [ %i.jc, %pred.sdiv.continue81 ], [ %i.jh, %pred.sdiv.if82 ] ; 2 uses
  %i.jj = extractelement <8 x i1> %i.gb, i64 7
  br i1 %i.jj, label %pred.sdiv.if84, label %pred.sdiv.continue85

pred.sdiv.if84:                                   ; preds = %pred.sdiv.continue83
  %i.jk = extractelement <8 x i16> %wide.load, i64 7
  %i.jl = sext i16 %i.jk to i32
  %i.jm = sdiv i32 %i.jl, %i.fo
  %i.jn = insertelement <8 x i32> %i.ji, i32 %i.jm, i64 7
  br label %pred.sdiv.continue85

pred.sdiv.continue85:                             ; preds = %pred.sdiv.if84, %pred.sdiv.continue83
  %i.jo = phi <8 x i32> [ %i.ji, %pred.sdiv.continue83 ], [ %i.jn, %pred.sdiv.if84 ]
  %i.jp = trunc <8 x i32> %i.jo to <8 x i16>
  %predphi = select <8 x i1> %i.gb, <8 x i16> %i.jp, <8 x i16> %i.hs
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.fz
  store <8 x i16> %predphi, ptr %i.jq, align 2, !tbaa !308, !alias.scope !4256, !noalias !4253
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jr = icmp eq i64 %index.next, %n.vec
  br i1 %i.jr, label %middle.block, label %vector.body, !llvm.loop !4261

middle.block:                                     ; preds = %pred.sdiv.continue85
  %cmp.n = icmp eq i64 %i.fx, %n.vec
end_hunk_31
begin_hunk_32_@_ZN6duckdbL27GenericRoundFunctionDecimalIsNS_13NumericHelperENS_12_GLOBAL__N_120FloorDecimalOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.cs = sdiv i16 %i.cr, %i.l
  %i.ct = insertelement <8 x i16> %i.cp, i16 %i.cs, i64 3
  br label %pred.sdiv.continue117

pred.sdiv.continue117:                            ; preds = %pred.sdiv.if116, %pred.sdiv.continue115
  %i.cu = phi <8 x i16> [ %i.cp, %pred.sdiv.continue115 ], [ %i.ct, %pred.sdiv.if116 ] ; 2 uses
  %i.cv = extractelement <8 x i1> %i.ak, i64 4
  br i1 %i.cv, label %pred.sdiv.if118, label %pred.sdiv.continue119

pred.sdiv.if118:                                  ; preds = %pred.sdiv.continue117
  %i.cw = extractelement <8 x i16> %i.ca, i64 4
  %i.cx = sdiv i16 %i.cw, %i.l
  %i.cy = insertelement <8 x i16> %i.cu, i16 %i.cx, i64 4
  br label %pred.sdiv.continue119

pred.sdiv.continue119:                            ; preds = %pred.sdiv.if118, %pred.sdiv.continue117
  %i.cz = phi <8 x i16> [ %i.cu, %pred.sdiv.continue117 ], [ %i.cy, %pred.sdiv.if118 ] ; 2 uses
  %i.da = extractelement <8 x i1> %i.ak, i64 5
  br i1 %i.da, label %pred.sdiv.if120, label %pred.sdiv.continue121

pred.sdiv.if120:                                  ; preds = %pred.sdiv.continue119
  %i.db = extractelement <8 x i16> %i.ca, i64 5
  %i.dc = sdiv i16 %i.db, %i.l
  %i.dd = insertelement <8 x i16> %i.cz, i16 %i.dc, i64 5
  br label %pred.sdiv.continue121

pred.sdiv.continue121:                            ; preds = %pred.sdiv.if120, %pred.sdiv.continue119
  %i.de = phi <8 x i16> [ %i.cz, %pred.sdiv.continue119 ], [ %i.dd, %pred.sdiv.if120 ] ; 2 uses
  %i.df = extractelement <8 x i1> %i.ak, i64 6
  br i1 %i.df, label %pred.sdiv.if122, label %pred.sdiv.continue123

pred.sdiv.if122:                                  ; preds = %pred.sdiv.continue121
  %i.dg = extractelement <8 x i16> %i.ca, i64 6
  %i.dh = sdiv i16 %i.dg, %i.l
  %i.di = insertelement <8 x i16> %i.de, i16 %i.dh, i64 6
  br label %pred.sdiv.continue123

pred.sdiv.continue123:                            ; preds = %pred.sdiv.if122, %pred.sdiv.continue121
  %i.dj = phi <8 x i16> [ %i.de, %pred.sdiv.continue121 ], [ %i.di, %pred.sdiv.if122 ] ; 2 uses
  %i.dk = extractelement <8 x i1> %i.ak, i64 7
  br i1 %i.dk, label %pred.sdiv.if124, label %pred.sdiv.continue125

pred.sdiv.if124:                                  ; preds = %pred.sdiv.continue123
  %i.dl = extractelement <8 x i16> %i.ca, i64 7
  %i.dm = sdiv i16 %i.dl, %i.l
  %i.dn = insertelement <8 x i16> %i.dj, i16 %i.dm, i64 7
  br label %pred.sdiv.continue125

pred.sdiv.continue125:                            ; preds = %pred.sdiv.if124, %pred.sdiv.continue123
  %i.do = phi <8 x i16> [ %i.dj, %pred.sdiv.continue123 ], [ %i.dn, %pred.sdiv.if124 ]
  %i.dp = add nsw <8 x i16> %i.do, splat (i16 -1)
  %predphi126 = select <8 x i1> %i.ak, <8 x i16> %i.dp, <8 x i16> %i.bz
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %index92
  store <8 x i16> %predphi126, ptr %i.dq, align 2, !tbaa !308, !alias.scope !4374, !noalias !4371
  %index.next127 = add nuw i64 %index92, 8        ; 2 uses
  %i.dr = icmp eq i64 %index.next127, %n.vec90
  br i1 %i.dr, label %middle.block128, label %vector.body91, !llvm.loop !4377

middle.block128:                                  ; preds = %pred.sdiv.continue125
  %cmp.n129 = icmp eq i64 %i.o, %n.vec90
  br i1 %cmp.n129, label %_ZN6duckdb12_GLOBAL__N_120FloorDecimalOperator9OperationIsNS_13NumericHelperEEEvRNS_9DataChunkEhRNS_6VectorE.exit, label %.lr.ph81.i.i.i.i.preheader179

.lr.ph81.i.i.i.i.preheader179:                    ; preds = %.lr.ph81.i.i.i.i.preheader, %middle.block128
  %.080.i.i.i.i.ph = phi i64 [ 0, %.lr.ph81.i.i.i.i.preheader ], [ %n.vec90, %middle.block128 ]
  br label %.lr.ph81.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ai, ptr %i.ds, align 8, !tbaa !78, !noalias !4376
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.du = icmp eq ptr %2, %i.m
  br i1 %i.du, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !26, !noalias !4376 ; 2 uses
  %i.dy = load <2 x ptr>, ptr %i.dv, align 8, !tbaa !13, !noalias !4376
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 3 uses
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !4376
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !3, !noalias !4376
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !3, !noalias !4376
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ed = atomicrmw volatile add ptr %i.dz, i32 1 acq_rel, align 4, !noalias !4376 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !26, !noalias !4376 ; 8 uses
  store <2 x ptr> %i.dy, ptr %i.dt, align 8, !tbaa !13, !noalias !4376
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8, !noalias !4376 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.eg, align 8, !tbaa !32, !noalias !4376
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !34, !noalias !4376
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !22, !noalias !4376
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !noalias !4376
  tail call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23, !noalias !4376, !inline_history !4378
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !22, !noalias !4376
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !4376
  tail call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23, !noalias !4376, !inline_history !4378
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !4376
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !3, !noalias !4376
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4, !noalias !4376
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ej, %bb.o ], [ %i.et, %bb.p ]
  %i.eu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.eu, label %bb.q, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i, !prof !36

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23, !noalias !4376
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.m, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, %bb.g
  %i.ev = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !83, !noalias !4376
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !83, !noalias !4376
  %i.ey = add i64 %i.o, 63
  %i.ez = lshr i64 %i.ey, 6                       ; 2 uses
  %.not82.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not82.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_120FloorDecimalOperator9OperationIsNS_13NumericHelperEEEvRNS_9DataChunkEhRNS_6VectorE.exit, label %.lr.ph79.i.i.i.i

.lr.ph79.i.i.i.i:                                 ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i
  %i.fa = load ptr, ptr %i.ah, align 8, !tbaa !78, !noalias !4376 ; 2 uses
  %.not.i58.i.i.i.i = icmp eq ptr %i.fa, null
  br label %bb.r

bb.r:                                             ; preds = %.loopexit69.i.i.i.i, %.lr.ph79.i.i.i.i
  %.05478.i.i.i.i = phi i64 [ 0, %.lr.ph79.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit69.i.i.i.i ] ; 12 uses
  %.05577.i.i.i.i = phi i64 [ 0, %.lr.ph79.i.i.i.i ], [ %i.jp, %.loopexit69.i.i.i.i ] ; 2 uses
  br i1 %.not.i58.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i: ; preds = %bb.r
  %i.fb = add i64 %.05478.i.i.i.i, 64
  %i.fc = tail call noundef i64 @llvm.umin.i64(i64 %i.fb, i64 %i.o)
  br label %.preheader70.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.r
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.05577.i.i.i.i
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !79, !noalias !4376 ; 2 uses
  %i.ff = add i64 %.05478.i.i.i.i, 64
  %i.fg = tail call noundef i64 @llvm.umin.i64(i64 %i.ff, i64 %i.o) ; 5 uses
  switch i64 %i.fe, label %.preheader68.i.i.i.i [
    i64 -1, label %.preheader70.i.i.i.i
    i64 0, label %.loopexit69.i.i.i.i
  ]

.preheader70.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i
  %i.fh = phi i64 [ %i.fc, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i ], [ %i.fg, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ] ; 5 uses
  %i.fi = icmp ult i64 %.05478.i.i.i.i, %i.fh
  br i1 %i.fi, label %.lr.ph.i.i.i.i.preheader, label %.loopexit69.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %.preheader70.i.i.i.i
  %i.fj = sub nuw i64 %i.fh, %.05478.i.i.i.i      ; 3 uses
  %min.iters.check = icmp ult i64 %i.fj, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader180, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.fj, -8                      ; 3 uses
  %i.fk = add i64 %.05478.i.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.sdiv.continue85, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.sdiv.continue85 ] ; 2 uses
  %i.fl = add nuw i64 %.05478.i.i.i.i, %index     ; 2 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.fl
  %wide.load = load <8 x i16>, ptr %i.fm, align 2, !tbaa !308, !alias.scope !4371, !noalias !4374 ; 10 uses
  %i.fn = icmp slt <8 x i16> %wide.load, zeroinitializer ; 10 uses
  %i.fo = xor <8 x i1> %i.fn, splat (i1 true)     ; 8 uses
  %i.fp = extractelement <8 x i1> %i.fo, i64 0
  br i1 %i.fp, label %pred.sdiv.if, label %pred.sdiv.continue

pred.sdiv.if:                                     ; preds = %vector.body
  %i.fq = extractelement <8 x i16> %wide.load, i64 0
  %i.fr = sdiv i16 %i.fq, %i.l
  %i.fs = insertelement <8 x i16> poison, i16 %i.fr, i64 0
  br label %pred.sdiv.continue

pred.sdiv.continue:                               ; preds = %pred.sdiv.if, %vector.body
  %i.ft = phi <8 x i16> [ poison, %vector.body ], [ %i.fs, %pred.sdiv.if ] ; 2 uses
  %i.fu = extractelement <8 x i1> %i.fo, i64 1
  br i1 %i.fu, label %pred.sdiv.if56, label %pred.sdiv.continue57

pred.sdiv.if56:                                   ; preds = %pred.sdiv.continue
  %i.fv = extractelement <8 x i16> %wide.load, i64 1
  %i.fw = sdiv i16 %i.fv, %i.l
  %i.fx = insertelement <8 x i16> %i.ft, i16 %i.fw, i64 1
  br label %pred.sdiv.continue57

pred.sdiv.continue57:                             ; preds = %pred.sdiv.if56, %pred.sdiv.continue
  %i.fy = phi <8 x i16> [ %i.ft, %pred.sdiv.continue ], [ %i.fx, %pred.sdiv.if56 ] ; 2 uses
  %i.fz = extractelement <8 x i1> %i.fo, i64 2
  br i1 %i.fz, label %pred.sdiv.if58, label %pred.sdiv.continue59

pred.sdiv.if58:                                   ; preds = %pred.sdiv.continue57
  %i.ga = extractelement <8 x i16> %wide.load, i64 2
  %i.gb = sdiv i16 %i.ga, %i.l
  %i.gc = insertelement <8 x i16> %i.fy, i16 %i.gb, i64 2
  br label %pred.sdiv.continue59

pred.sdiv.continue59:                             ; preds = %pred.sdiv.if58, %pred.sdiv.continue57
  %i.gd = phi <8 x i16> [ %i.fy, %pred.sdiv.continue57 ], [ %i.gc, %pred.sdiv.if58 ] ; 2 uses
  %i.ge = extractelement <8 x i1> %i.fo, i64 3
  br i1 %i.ge, label %pred.sdiv.if60, label %pred.sdiv.continue61

pred.sdiv.if60:                                   ; preds = %pred.sdiv.continue59
  %i.gf = extractelement <8 x i16> %wide.load, i64 3
  %i.gg = sdiv i16 %i.gf, %i.l
  %i.gh = insertelement <8 x i16> %i.gd, i16 %i.gg, i64 3
  br label %pred.sdiv.continue61

pred.sdiv.continue61:                             ; preds = %pred.sdiv.if60, %pred.sdiv.continue59
  %i.gi = phi <8 x i16> [ %i.gd, %pred.sdiv.continue59 ], [ %i.gh, %pred.sdiv.if60 ] ; 2 uses
  %i.gj = extractelement <8 x i1> %i.fo, i64 4
  br i1 %i.gj, label %pred.sdiv.if62, label %pred.sdiv.continue63

pred.sdiv.if62:                                   ; preds = %pred.sdiv.continue61
  %i.gk = extractelement <8 x i16> %wide.load, i64 4
  %i.gl = sdiv i16 %i.gk, %i.l
  %i.gm = insertelement <8 x i16> %i.gi, i16 %i.gl, i64 4
  br label %pred.sdiv.continue63

pred.sdiv.continue63:                             ; preds = %pred.sdiv.if62, %pred.sdiv.continue61
  %i.gn = phi <8 x i16> [ %i.gi, %pred.sdiv.continue61 ], [ %i.gm, %pred.sdiv.if62 ] ; 2 uses
  %i.go = extractelement <8 x i1> %i.fo, i64 5
  br i1 %i.go, label %pred.sdiv.if64, label %pred.sdiv.continue65

pred.sdiv.if64:                                   ; preds = %pred.sdiv.continue63
  %i.gp = extractelement <8 x i16> %wide.load, i64 5
  %i.gq = sdiv i16 %i.gp, %i.l
  %i.gr = insertelement <8 x i16> %i.gn, i16 %i.gq, i64 5
  br label %pred.sdiv.continue65

pred.sdiv.continue65:                             ; preds = %pred.sdiv.if64, %pred.sdiv.continue63
  %i.gs = phi <8 x i16> [ %i.gn, %pred.sdiv.continue63 ], [ %i.gr, %pred.sdiv.if64 ] ; 2 uses
  %i.gt = extractelement <8 x i1> %i.fo, i64 6
  br i1 %i.gt, label %pred.sdiv.if66, label %pred.sdiv.continue67

pred.sdiv.if66:                                   ; preds = %pred.sdiv.continue65
  %i.gu = extractelement <8 x i16> %wide.load, i64 6
  %i.gv = sdiv i16 %i.gu, %i.l
  %i.gw = insertelement <8 x i16> %i.gs, i16 %i.gv, i64 6
  br label %pred.sdiv.continue67

pred.sdiv.continue67:                             ; preds = %pred.sdiv.if66, %pred.sdiv.continue65
  %i.gx = phi <8 x i16> [ %i.gs, %pred.sdiv.continue65 ], [ %i.gw, %pred.sdiv.if66 ] ; 2 uses
  %i.gy = extractelement <8 x i1> %i.fo, i64 7
  br i1 %i.gy, label %pred.sdiv.if68, label %pred.sdiv.continue69

pred.sdiv.if68:                                   ; preds = %pred.sdiv.continue67
  %i.gz = extractelement <8 x i16> %wide.load, i64 7
  %i.ha = sdiv i16 %i.gz, %i.l
  %i.hb = insertelement <8 x i16> %i.gx, i16 %i.ha, i64 7
  br label %pred.sdiv.continue69

pred.sdiv.continue69:                             ; preds = %pred.sdiv.if68, %pred.sdiv.continue67
  %i.hc = phi <8 x i16> [ %i.gx, %pred.sdiv.continue67 ], [ %i.hb, %pred.sdiv.if68 ]
  %i.hd = add nsw <8 x i16> %wide.load, splat (i16 1) ; 8 uses
  %i.he = extractelement <8 x i1> %i.fn, i64 0
  br i1 %i.he, label %pred.sdiv.if70, label %pred.sdiv.continue71

pred.sdiv.if70:                                   ; preds = %pred.sdiv.continue69
  %i.hf = extractelement <8 x i16> %i.hd, i64 0
  %i.hg = sdiv i16 %i.hf, %i.l
  %i.hh = insertelement <8 x i16> poison, i16 %i.hg, i64 0
  br label %pred.sdiv.continue71

pred.sdiv.continue71:                             ; preds = %pred.sdiv.if70, %pred.sdiv.continue69
  %i.hi = phi <8 x i16> [ poison, %pred.sdiv.continue69 ], [ %i.hh, %pred.sdiv.if70 ] ; 2 uses
  %i.hj = extractelement <8 x i1> %i.fn, i64 1
  br i1 %i.hj, label %pred.sdiv.if72, label %pred.sdiv.continue73

pred.sdiv.if72:                                   ; preds = %pred.sdiv.continue71
  %i.hk = extractelement <8 x i16> %i.hd, i64 1
  %i.hl = sdiv i16 %i.hk, %i.l
  %i.hm = insertelement <8 x i16> %i.hi, i16 %i.hl, i64 1
  br label %pred.sdiv.continue73

pred.sdiv.continue73:                             ; preds = %pred.sdiv.if72, %pred.sdiv.continue71
  %i.hn = phi <8 x i16> [ %i.hi, %pred.sdiv.continue71 ], [ %i.hm, %pred.sdiv.if72 ] ; 2 uses
  %i.ho = extractelement <8 x i1> %i.fn, i64 2
  br i1 %i.ho, label %pred.sdiv.if74, label %pred.sdiv.continue75

pred.sdiv.if74:                                   ; preds = %pred.sdiv.continue73
  %i.hp = extractelement <8 x i16> %i.hd, i64 2
  %i.hq = sdiv i16 %i.hp, %i.l
  %i.hr = insertelement <8 x i16> %i.hn, i16 %i.hq, i64 2
  br label %pred.sdiv.continue75

pred.sdiv.continue75:                             ; preds = %pred.sdiv.if74, %pred.sdiv.continue73
  %i.hs = phi <8 x i16> [ %i.hn, %pred.sdiv.continue73 ], [ %i.hr, %pred.sdiv.if74 ] ; 2 uses
  %i.ht = extractelement <8 x i1> %i.fn, i64 3
  br i1 %i.ht, label %pred.sdiv.if76, label %pred.sdiv.continue77

pred.sdiv.if76:                                   ; preds = %pred.sdiv.continue75
  %i.hu = extractelement <8 x i16> %i.hd, i64 3
  %i.hv = sdiv i16 %i.hu, %i.l
  %i.hw = insertelement <8 x i16> %i.hs, i16 %i.hv, i64 3
  br label %pred.sdiv.continue77

pred.sdiv.continue77:                             ; preds = %pred.sdiv.if76, %pred.sdiv.continue75
  %i.hx = phi <8 x i16> [ %i.hs, %pred.sdiv.continue75 ], [ %i.hw, %pred.sdiv.if76 ] ; 2 uses
  %i.hy = extractelement <8 x i1> %i.fn, i64 4
  br i1 %i.hy, label %pred.sdiv.if78, label %pred.sdiv.continue79

pred.sdiv.if78:                                   ; preds = %pred.sdiv.continue77
  %i.hz = extractelement <8 x i16> %i.hd, i64 4
  %i.ia = sdiv i16 %i.hz, %i.l
  %i.ib = insertelement <8 x i16> %i.hx, i16 %i.ia, i64 4
  br label %pred.sdiv.continue79

pred.sdiv.continue79:                             ; preds = %pred.sdiv.if78, %pred.sdiv.continue77
  %i.ic = phi <8 x i16> [ %i.hx, %pred.sdiv.continue77 ], [ %i.ib, %pred.sdiv.if78 ] ; 2 uses
  %i.id = extractelement <8 x i1> %i.fn, i64 5
  br i1 %i.id, label %pred.sdiv.if80, label %pred.sdiv.continue81

pred.sdiv.if80:                                   ; preds = %pred.sdiv.continue79
  %i.ie = extractelement <8 x i16> %i.hd, i64 5
  %i.if = sdiv i16 %i.ie, %i.l
  %i.ig = insertelement <8 x i16> %i.ic, i16 %i.if, i64 5
  br label %pred.sdiv.continue81

pred.sdiv.continue81:                             ; preds = %pred.sdiv.if80, %pred.sdiv.continue79
  %i.ih = phi <8 x i16> [ %i.ic, %pred.sdiv.continue79 ], [ %i.ig, %pred.sdiv.if80 ] ; 2 uses
  %i.ii = extractelement <8 x i1> %i.fn, i64 6
  br i1 %i.ii, label %pred.sdiv.if82, label %pred.sdiv.continue83

pred.sdiv.if82:                                   ; preds = %pred.sdiv.continue81
  %i.ij = extractelement <8 x i16> %i.hd, i64 6
  %i.ik = sdiv i16 %i.ij, %i.l
  %i.il = insertelement <8 x i16> %i.ih, i16 %i.ik, i64 6
  br label %pred.sdiv.continue83

pred.sdiv.continue83:                             ; preds = %pred.sdiv.if82, %pred.sdiv.continue81
  %i.im = phi <8 x i16> [ %i.ih, %pred.sdiv.continue81 ], [ %i.il, %pred.sdiv.if82 ] ; 2 uses
  %i.in = extractelement <8 x i1> %i.fn, i64 7
  br i1 %i.in, label %pred.sdiv.if84, label %pred.sdiv.continue85

pred.sdiv.if84:                                   ; preds = %pred.sdiv.continue83
  %i.io = extractelement <8 x i16> %i.hd, i64 7
  %i.ip = sdiv i16 %i.io, %i.l
  %i.iq = insertelement <8 x i16> %i.im, i16 %i.ip, i64 7
  br label %pred.sdiv.continue85

pred.sdiv.continue85:                             ; preds = %pred.sdiv.if84, %pred.sdiv.continue83
  %i.ir = phi <8 x i16> [ %i.im, %pred.sdiv.continue83 ], [ %i.iq, %pred.sdiv.if84 ]
  %i.is = add nsw <8 x i16> %i.ir, splat (i16 -1)
  %predphi = select <8 x i1> %i.fn, <8 x i16> %i.is, <8 x i16> %i.hc
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.fl
  store <8 x i16> %predphi, ptr %i.it, align 2, !tbaa !308, !alias.scope !4374, !noalias !4371
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iu = icmp eq i64 %index.next, %n.vec
  br i1 %i.iu, label %middle.block, label %vector.body, !llvm.loop !4379

middle.block:                                     ; preds = %pred.sdiv.continue85
  %cmp.n = icmp eq i64 %i.fj, %n.vec
  br i1 %cmp.n, label %.loopexit69.i.i.i.i, label %.lr.ph.i.i.i.i.preheader180

.lr.ph.i.i.i.i.preheader180:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.173.i.i.i.i.ph = phi i64 [ %.05478.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.fk, %middle.block ]
  br label %.lr.ph.i.i.i.i

.preheader68.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.iv = icmp ult i64 %.05478.i.i.i.i, %i.fg
  br i1 %i.iv, label %.lr.ph75.i.i.i.i, label %.loopexit69.i.i.i.i
end_hunk_32
