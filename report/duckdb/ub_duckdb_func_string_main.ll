inline.NumInlined: 6990
inline.NumDeleted: 1937
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN6duckdb14ScalarFunction13UnaryFunctionINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8
  %i.m = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  store i64 %i.m, ptr %i.f, align 8, !tbaa !69
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67   ; 12 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68, !noalias !458 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check66 = icmp ult i64 %i.c, 5
  br i1 %min.iters.check66, label %.lr.ph17.i.i.i.preheader97, label %vector.ph67

.lr.ph17.i.i.i.preheader97:                       ; preds = %vector.body70, %.lr.ph17.i.i.i.preheader
  %.05916.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec69, %vector.body70 ]
  br label %.lr.ph17.i.i.i

vector.ph67:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.mod.vf68 = and i64 %i.c, 3                   ; 2 uses
  %i.t = icmp eq i64 %n.mod.vf68, 0
  %i.u = select i1 %i.t, i64 4, i64 %n.mod.vf68
  %n.vec69 = sub i64 %i.c, %i.u                   ; 2 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %index71
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %index71
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load <3 x i64>, ptr %i.v, align 8, !alias.scope !453, !noalias !456
  %strided.vec73 = shufflevector <3 x i64> %i.y, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.z = load <3 x i64>, ptr %i.x, align 8, !alias.scope !453, !noalias !456
  %strided.vec75 = shufflevector <3 x i64> %i.z, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.aa = and <2 x i64> %strided.vec73, splat (i64 4294967295)
  %i.ab = and <2 x i64> %strided.vec75, splat (i64 4294967295)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index71 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x i64> %i.aa, ptr %i.ac, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  store <2 x i64> %i.ab, ptr %i.ad, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %index.next76 = add nuw i64 %index71, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.ae, label %.lr.ph17.i.i.i.preheader97, label %vector.body70, !llvm.loop !459

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.s, ptr %i.af, align 8, !tbaa !68, !noalias !458
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = icmp eq ptr %2, %i.a
  br i1 %i.ah, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !76, !noalias !458 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !23, !noalias !458
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !458
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !458
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !458
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !458 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76, !noalias !458 ; 8 uses
  store <2 x ptr> %i.al, ptr %i.ag, align 8, !tbaa !23, !noalias !458
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !458 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.at, align 8, !tbaa !77, !noalias !458
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !79, !noalias !458
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !80, !noalias !458
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !458
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #28, !noalias !458, !inline_history !460
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !80, !noalias !458
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !458
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #28, !noalias !458, !inline_history !460
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !458
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3, !noalias !458
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4, !noalias !458
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.m ], [ %i.bg, %bb.n ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !83

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #28, !noalias !458
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !84, !noalias !458
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !84, !noalias !458
  %i.bl = add i64 %i.c, 63
  %i.bm = lshr i64 %i.bl, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !68, !noalias !458 ; 2 uses
  %.not.i60.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i60.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05813.us.i.i.i = phi i64 [ %i.ck, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bo = add i64 %.014.us.i.i.i, 64
  %i.bp = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.c) ; 4 uses
  %i.bq = icmp ult i64 %.014.us.i.i.i, %i.bp
  br i1 %i.bq, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.br = sub nuw i64 %i.bp, %.014.us.i.i.i       ; 3 uses
  %min.iters.check52 = icmp ult i64 %i.br, 5
  br i1 %min.iters.check52, label %.lr.ph.us.i.i.i.preheader98, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.mod.vf54 = and i64 %i.br, 3                  ; 2 uses
  %i.bs = icmp eq i64 %n.mod.vf54, 0
  %i.bt = select i1 %i.bs, i64 4, i64 %n.mod.vf54
  %n.vec55 = sub i64 %i.br, %i.bt                 ; 2 uses
  %i.bu = add i64 %.014.us.i.i.i, %n.vec55
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph53
  %index57 = phi i64 [ 0, %vector.ph53 ], [ %index.next62, %vector.body56 ] ; 2 uses
  %i.bv = add nuw i64 %.014.us.i.i.i, %index57    ; 3 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bv
  %i.bx = getelementptr [16 x i8], ptr %i.q, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 32
  %i.bz = load <3 x i64>, ptr %i.bw, align 8, !alias.scope !453, !noalias !456
  %strided.vec59 = shufflevector <3 x i64> %i.bz, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ca = load <3 x i64>, ptr %i.by, align 8, !alias.scope !453, !noalias !456
  %strided.vec61 = shufflevector <3 x i64> %i.ca, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cb = and <2 x i64> %strided.vec59, splat (i64 4294967295)
  %i.cc = and <2 x i64> %strided.vec61, splat (i64 4294967295)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bv ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  store <2 x i64> %i.cc, ptr %i.ce, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %index.next62 = add nuw i64 %index57, 4         ; 2 uses
  %i.cf = icmp eq i64 %index.next62, %n.vec55
  br i1 %i.cf, label %.lr.ph.us.i.i.i.preheader98, label %vector.body56, !llvm.loop !461

.lr.ph.us.i.i.i.preheader98:                      ; preds = %vector.body56, %.lr.ph.us.i.i.i.preheader
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bu, %vector.body56 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader98, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cj, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader98 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.19.us.i.i.i
  %.sroa.08.0.copyload.us.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !453, !noalias !456
  %i.ch = and i64 %.sroa.08.0.copyload.us.i.i.i, 4294967295
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.19.us.i.i.i
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %i.cj = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cj, %i.bp
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !462

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bp, %.lr.ph.us.i.i.i ]
  %i.ck = add nuw nsw i64 %.05813.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.ck, %i.bm
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !463

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05813.i.i.i = phi i64 [ %i.ef, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.05813.i.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !69, !noalias !458 ; 4 uses
  %i.cn = add i64 %.014.i.i.i, 64
  %i.co = tail call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.c) ; 11 uses
  switch i64 %i.cm, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cp = icmp ult i64 %.014.i.i.i, %i.co
  br i1 %i.cp, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.cq = sub nuw i64 %i.co, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cq, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader100, label %vector.ph

.lr.ph.i.i.i.preheader100:                        ; preds = %vector.body, %.lr.ph.i.i.i.preheader
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ct, %vector.body ]
  br label %.lr.ph.i.i.i

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.mod.vf = and i64 %i.cq, 3                    ; 2 uses
  %i.cr = icmp eq i64 %n.mod.vf, 0
  %i.cs = select i1 %i.cr, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.cq, %i.cs                   ; 2 uses
  %i.ct = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = add nuw i64 %.014.i.i.i, %index         ; 3 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.cu
  %i.cw = getelementptr [16 x i8], ptr %i.q, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cw, i64 32
  %i.cy = load <3 x i64>, ptr %i.cv, align 8, !alias.scope !453, !noalias !456
  %strided.vec = shufflevector <3 x i64> %i.cy, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cz = load <3 x i64>, ptr %i.cx, align 8, !alias.scope !453, !noalias !456
  %strided.vec50 = shufflevector <3 x i64> %i.cz, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.da = and <2 x i64> %strided.vec, splat (i64 4294967295)
  %i.db = and <2 x i64> %strided.vec50, splat (i64 4294967295)
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cu ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x i64> %i.da, ptr %i.dc, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  store <2 x i64> %i.db, ptr %i.dd, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %.lr.ph.i.i.i.preheader100, label %vector.body, !llvm.loop !464

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.df = icmp ult i64 %.014.i.i.i, %i.co
  br i1 %i.df, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.dg = sub nuw i64 %i.co, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.dg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.dh = and i64 %i.cm, 1
  %.not.i.i.i.prol = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.014.i.i.i
  %.sroa.05.0.copyload.i.i.i.prol = load i64, ptr %i.di, align 8, !alias.scope !453, !noalias !456
  %i.dj = and i64 %.sroa.05.0.copyload.i.i.i.prol, 4294967295
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.014.i.i.i
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.dl = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.dl, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dm = icmp eq i64 %i.co, %.neg
  br i1 %i.dm, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader100, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader100 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.19.i.i.i
  %.sroa.08.0.copyload.i.i.i = load i64, ptr %i.dn, align 8, !alias.scope !453, !noalias !456
  %i.do = and i64 %.sroa.08.0.copyload.i.i.i, 4294967295
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.19.i.i.i
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %i.dq = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dq, %i.co
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !465

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.ee, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.dr = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %i.cm
  %.not.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.210.i.i.i
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.du, align 8, !alias.scope !453, !noalias !456
  %i.dv = and i64 %.sroa.05.0.copyload.i.i.i, 4294967295
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.210.i.i.i
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.dx = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.dy = sub nuw i64 %i.dx, %.014.i.i.i
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = and i64 %i.dz, %i.cm
  %.not.i.i.i.1 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.dx
  %.sroa.05.0.copyload.i.i.i.1 = load i64, ptr %i.eb, align 8, !alias.scope !453, !noalias !456
  %i.ec = and i64 %.sroa.05.0.copyload.i.i.i.1, 4294967295
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dx
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.ee = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.ee, %i.co
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !466

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.co, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.co, %.lr.ph11.i.i.i.prol.loopexit ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.co, %bb.s ], [ %i.co, %.lr.ph.i.i.i ]
  %i.ef = add nuw nsw i64 %.05813.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.ef, %i.bm
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !463

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader97, %.lr.ph17.i.i.i
  %.05916.i.i.i = phi i64 [ %i.ej, %.lr.ph17.i.i.i ], [ %.05916.i.i.i.ph, %.lr.ph17.i.i.i.preheader97 ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.05916.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.eg, align 8, !alias.scope !453, !noalias !456
  %i.eh = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05916.i.i.i
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %i.ej = add nuw i64 %.05916.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.ej, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !467

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !67 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !89 ; 8 uses
  %i.eo = load ptr, ptr %3, align 8, !tbaa !98    ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !68, !noalias !475
  %.not.i.i60.i.i = icmp eq ptr %i.er, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !107, !alias.scope !473, !noalias !476 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %i.es, null
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i31.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.fl, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.eu = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.ev = and i64 %.03.us.i.i.i, 63
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !68, !noalias !475
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.eu
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !69, !noalias !475
  %i.ez = shl nuw i64 1, %i.ev                    ; 2 uses
  %i.fa = and i64 %i.ey, %i.ez
  %.not.us.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.03.us.i.i.i
  %.sroa.06.0.copyload.us.i.i.i = load i64, ptr %i.fb, align 8, !alias.scope !468, !noalias !477
  %i.fc = and i64 %.sroa.06.0.copyload.us.i.i.i, 4294967295
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.03.us.i.i.i
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !69, !alias.scope !471, !noalias !478
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fe = load ptr, ptr %i.ep, align 8, !tbaa !68, !noalias !475 ; 2 uses
  %.not.i32.us.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i32.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ff = load i64, ptr %i.et, align 8, !tbaa !84, !noalias !475
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ep, i64 noundef %i.ff)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ab
  %.pre.i.us.i.i.i = load ptr, ptr %i.ep, align 8, !tbaa !68, !noalias !475
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.aa
  %i.fg = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.fe, %bb.aa ]
  %i.fh = xor i64 %i.ez, -1
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.eu ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb14ScalarFunction13UnaryFunctionINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8
  %i.m = shl i64 %.sroa.0.0.copyload.i.i, 3
  %i.n = and i64 %i.m, 34359738360
  store i64 %i.n, ptr %i.f, align 8, !tbaa !69
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67   ; 12 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68, !noalias !490 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check66 = icmp ult i64 %i.c, 5
  br i1 %min.iters.check66, label %.lr.ph17.i.i.i.preheader97, label %vector.ph67

.lr.ph17.i.i.i.preheader97:                       ; preds = %vector.body70, %.lr.ph17.i.i.i.preheader
  %.05916.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec69, %vector.body70 ]
  br label %.lr.ph17.i.i.i

vector.ph67:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.mod.vf68 = and i64 %i.c, 3                   ; 2 uses
  %i.u = icmp eq i64 %n.mod.vf68, 0
  %i.v = select i1 %i.u, i64 4, i64 %n.mod.vf68
  %n.vec69 = sub i64 %i.c, %i.v                   ; 2 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %index71
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %index71
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load <3 x i64>, ptr %i.w, align 8, !alias.scope !485, !noalias !488
  %strided.vec73 = shufflevector <3 x i64> %i.z, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.aa = load <3 x i64>, ptr %i.y, align 8, !alias.scope !485, !noalias !488
  %strided.vec75 = shufflevector <3 x i64> %i.aa, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ab = shl <2 x i64> %strided.vec73, splat (i64 3)
  %i.ac = shl <2 x i64> %strided.vec75, splat (i64 3)
  %i.ad = and <2 x i64> %i.ab, splat (i64 34359738360)
  %i.ae = and <2 x i64> %i.ac, splat (i64 34359738360)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index71 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x i64> %i.ad, ptr %i.af, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  store <2 x i64> %i.ae, ptr %i.ag, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %index.next76 = add nuw i64 %index71, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.ah, label %.lr.ph17.i.i.i.preheader97, label %vector.body70, !llvm.loop !491

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.ai, align 8, !tbaa !68, !noalias !490
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ak = icmp eq ptr %2, %i.a
  br i1 %i.ak, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !76, !noalias !490 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.al, align 8, !tbaa !23, !noalias !490
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !490
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !3, !noalias !490
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !3, !noalias !490
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !490 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !76, !noalias !490 ; 8 uses
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !23, !noalias !490
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8, !noalias !490 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aw, align 8, !tbaa !77, !noalias !490
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !79, !noalias !490
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !80, !noalias !490
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !490
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #28, !noalias !490, !inline_history !492
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !80, !noalias !490
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !490
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #28, !noalias !490, !inline_history !492
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !490
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !3, !noalias !490
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4, !noalias !490
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.az, %bb.m ], [ %i.bj, %bb.n ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !83

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #28, !noalias !490
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !84, !noalias !490
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !84, !noalias !490
  %i.bo = add i64 %i.c, 63
  %i.bp = lshr i64 %i.bo, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !68, !noalias !490 ; 2 uses
  %.not.i60.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i60.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05813.us.i.i.i = phi i64 [ %i.cq, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.br = add i64 %.014.us.i.i.i, 64
  %i.bs = tail call noundef i64 @llvm.umin.i64(i64 %i.br, i64 %i.c) ; 4 uses
  %i.bt = icmp ult i64 %.014.us.i.i.i, %i.bs
  br i1 %i.bt, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bu = sub nuw i64 %i.bs, %.014.us.i.i.i       ; 3 uses
  %min.iters.check52 = icmp ult i64 %i.bu, 5
  br i1 %min.iters.check52, label %.lr.ph.us.i.i.i.preheader98, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.mod.vf54 = and i64 %i.bu, 3                  ; 2 uses
  %i.bv = icmp eq i64 %n.mod.vf54, 0
  %i.bw = select i1 %i.bv, i64 4, i64 %n.mod.vf54
  %n.vec55 = sub i64 %i.bu, %i.bw                 ; 2 uses
  %i.bx = add i64 %.014.us.i.i.i, %n.vec55
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph53
  %index57 = phi i64 [ 0, %vector.ph53 ], [ %index.next62, %vector.body56 ] ; 2 uses
  %i.by = add nuw i64 %.014.us.i.i.i, %index57    ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.by
  %i.ca = getelementptr [16 x i8], ptr %i.r, i64 %i.by
  %i.cb = getelementptr i8, ptr %i.ca, i64 32
  %i.cc = load <3 x i64>, ptr %i.bz, align 8, !alias.scope !485, !noalias !488
  %strided.vec59 = shufflevector <3 x i64> %i.cc, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cd = load <3 x i64>, ptr %i.cb, align 8, !alias.scope !485, !noalias !488
  %strided.vec61 = shufflevector <3 x i64> %i.cd, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ce = shl <2 x i64> %strided.vec59, splat (i64 3)
  %i.cf = shl <2 x i64> %strided.vec61, splat (i64 3)
  %i.cg = and <2 x i64> %i.ce, splat (i64 34359738360)
  %i.ch = and <2 x i64> %i.cf, splat (i64 34359738360)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.by ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x i64> %i.cg, ptr %i.ci, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  store <2 x i64> %i.ch, ptr %i.cj, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %index.next62 = add nuw i64 %index57, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next62, %n.vec55
  br i1 %i.ck, label %.lr.ph.us.i.i.i.preheader98, label %vector.body56, !llvm.loop !493

.lr.ph.us.i.i.i.preheader98:                      ; preds = %vector.body56, %.lr.ph.us.i.i.i.preheader
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bx, %vector.body56 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader98, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cp, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader98 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.19.us.i.i.i
  %.sroa.08.0.copyload.us.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !485, !noalias !488
  %i.cm = shl i64 %.sroa.08.0.copyload.us.i.i.i, 3
  %i.cn = and i64 %i.cm, 34359738360
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.us.i.i.i
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %i.cp = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cp, %i.bs
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !494

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bs, %.lr.ph.us.i.i.i ]
  %i.cq = add nuw nsw i64 %.05813.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.cq, %i.bp
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !495

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05813.i.i.i = phi i64 [ %i.er, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.05813.i.i.i
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !69, !noalias !490 ; 4 uses
  %i.ct = add i64 %.014.i.i.i, 64
  %i.cu = tail call noundef i64 @llvm.umin.i64(i64 %i.ct, i64 %i.c) ; 11 uses
  switch i64 %i.cs, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cv = icmp ult i64 %.014.i.i.i, %i.cu
  br i1 %i.cv, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.cw = sub nuw i64 %i.cu, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cw, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader100, label %vector.ph

.lr.ph.i.i.i.preheader100:                        ; preds = %vector.body, %.lr.ph.i.i.i.preheader
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cz, %vector.body ]
  br label %.lr.ph.i.i.i

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.mod.vf = and i64 %i.cw, 3                    ; 2 uses
  %i.cx = icmp eq i64 %n.mod.vf, 0
  %i.cy = select i1 %i.cx, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.cw, %i.cy                   ; 2 uses
  %i.cz = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = add nuw i64 %.014.i.i.i, %index         ; 3 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.da
  %i.dc = getelementptr [16 x i8], ptr %i.r, i64 %i.da
  %i.dd = getelementptr i8, ptr %i.dc, i64 32
  %i.de = load <3 x i64>, ptr %i.db, align 8, !alias.scope !485, !noalias !488
  %strided.vec = shufflevector <3 x i64> %i.de, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.df = load <3 x i64>, ptr %i.dd, align 8, !alias.scope !485, !noalias !488
  %strided.vec50 = shufflevector <3 x i64> %i.df, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.dg = shl <2 x i64> %strided.vec, splat (i64 3)
  %i.dh = shl <2 x i64> %strided.vec50, splat (i64 3)
  %i.di = and <2 x i64> %i.dg, splat (i64 34359738360)
  %i.dj = and <2 x i64> %i.dh, splat (i64 34359738360)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.da ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <2 x i64> %i.di, ptr %i.dk, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  store <2 x i64> %i.dj, ptr %i.dl, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %.lr.ph.i.i.i.preheader100, label %vector.body, !llvm.loop !496

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dn = icmp ult i64 %.014.i.i.i, %i.cu
  br i1 %i.dn, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.do = sub nuw i64 %i.cu, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.do, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.dp = and i64 %i.cs, 1
  %.not.i.i.i.prol = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.014.i.i.i
  %.sroa.05.0.copyload.i.i.i.prol = load i64, ptr %i.dq, align 8, !alias.scope !485, !noalias !488
  %i.dr = shl i64 %.sroa.05.0.copyload.i.i.i.prol, 3
  %i.ds = and i64 %i.dr, 34359738360
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.014.i.i.i
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.du = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.du, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dv = icmp eq i64 %i.cu, %.neg
  br i1 %i.dv, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader100, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.ea, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader100 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.19.i.i.i
  %.sroa.08.0.copyload.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !485, !noalias !488
  %i.dx = shl i64 %.sroa.08.0.copyload.i.i.i, 3
  %i.dy = and i64 %i.dx, 34359738360
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.i.i.i
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %i.ea = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ea, %i.cu
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !497

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.eq, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.eb = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.ec = shl nuw i64 1, %i.eb
  %i.ed = and i64 %i.ec, %i.cs
  %.not.i.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.210.i.i.i
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.ee, align 8, !alias.scope !485, !noalias !488
  %i.ef = shl i64 %.sroa.05.0.copyload.i.i.i, 3
  %i.eg = and i64 %i.ef, 34359738360
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.210.i.i.i
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.ei = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.ej = sub nuw i64 %i.ei, %.014.i.i.i
  %i.ek = shl nuw i64 1, %i.ej
  %i.el = and i64 %i.ek, %i.cs
  %.not.i.i.i.1 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ei
  %.sroa.05.0.copyload.i.i.i.1 = load i64, ptr %i.em, align 8, !alias.scope !485, !noalias !488
  %i.en = shl i64 %.sroa.05.0.copyload.i.i.i.1, 3
  %i.eo = and i64 %i.en, 34359738360
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ei
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.eq = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.eq, %i.cu
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !498

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.cu, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.cu, %.lr.ph11.i.i.i.prol.loopexit ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.cu, %bb.s ], [ %i.cu, %.lr.ph.i.i.i ]
  %i.er = add nuw nsw i64 %.05813.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.er, %i.bp
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !495

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader97, %.lr.ph17.i.i.i
  %.05916.i.i.i = phi i64 [ %i.ew, %.lr.ph17.i.i.i ], [ %.05916.i.i.i.ph, %.lr.ph17.i.i.i.preheader97 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.05916.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !485, !noalias !488
  %i.et = shl i64 %.sroa.0.0.copyload.i.i.i, 3
  %i.eu = and i64 %i.et, 34359738360
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.05916.i.i.i
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %i.ew = add nuw i64 %.05916.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.ew, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !499

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !67 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !89 ; 8 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !98    ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !68, !noalias !507
  %.not.i.i60.i.i = icmp eq ptr %i.fe, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.ff = load ptr, ptr %i.fb, align 8, !tbaa !107, !alias.scope !505, !noalias !508 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %i.ff, null
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i31.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.fz, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.fh = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.fi = and i64 %.03.us.i.i.i, 63
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !68, !noalias !507
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fh
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !69, !noalias !507
  %i.fm = shl nuw i64 1, %i.fi                    ; 2 uses
  %i.fn = and i64 %i.fl, %i.fm
  %.not.us.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %.03.us.i.i.i
  %.sroa.06.0.copyload.us.i.i.i = load i64, ptr %i.fo, align 8, !alias.scope !500, !noalias !509
  %i.fp = shl i64 %.sroa.06.0.copyload.us.i.i.i, 3
  %i.fq = and i64 %i.fp, 34359738360
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.03.us.i.i.i
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !69, !alias.scope !503, !noalias !510
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fs = load ptr, ptr %i.fc, align 8, !tbaa !68, !noalias !507 ; 2 uses
  %.not.i32.us.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i32.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ft = load i64, ptr %i.fg, align 8, !tbaa !84, !noalias !507
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i64 noundef %i.ft)
          to label %.noexc.i.i unwind label %.loopexit.i.i

end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit"

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !69
  store i64 %.sroa.2.0.copyload.i.i, ptr %i.f, align 8, !tbaa !69
  br label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67   ; 12 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68, !noalias !2228 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit", label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check69 = icmp ult i64 %i.c, 5
  br i1 %min.iters.check69, label %.lr.ph17.i.i.i.preheader100, label %vector.ph70

.lr.ph17.i.i.i.preheader100:                      ; preds = %vector.body73, %.lr.ph17.i.i.i.preheader
  %.05916.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec72, %vector.body73 ]
  br label %.lr.ph17.i.i.i

vector.ph70:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.mod.vf71 = and i64 %i.c, 3                   ; 2 uses
  %i.s = icmp eq i64 %n.mod.vf71, 0
  %i.t = select i1 %i.s, i64 4, i64 %n.mod.vf71
  %n.vec72 = sub i64 %i.c, %i.t                   ; 2 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph70
  %index74 = phi i64 [ 0, %vector.ph70 ], [ %index.next79, %vector.body73 ] ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %index74
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %index74
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.y = load <3 x i64>, ptr %i.w, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec76 = shufflevector <3 x i64> %i.y, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.z = load <3 x i64>, ptr %i.x, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec78 = shufflevector <3 x i64> %i.z, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index74 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x i64> %strided.vec76, ptr %i.aa, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  store <2 x i64> %strided.vec78, ptr %i.ab, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %index.next79 = add nuw i64 %index74, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.ac, label %.lr.ph17.i.i.i.preheader100, label %vector.body73, !llvm.loop !2229

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.r, ptr %i.ad, align 8, !tbaa !68, !noalias !2228
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp eq ptr %2, %i.a
  br i1 %i.af, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76, !noalias !2228 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !23, !noalias !2228
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !2228
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !2228
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3, !noalias !2228
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !2228 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !76, !noalias !2228 ; 8 uses
  store <2 x ptr> %i.aj, ptr %i.ae, align 8, !tbaa !23, !noalias !2228
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !noalias !2228 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ar, align 8, !tbaa !77, !noalias !2228
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !79, !noalias !2228
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !80, !noalias !2228
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !2228
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28, !noalias !2228, !inline_history !2230
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !80, !noalias !2228
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !2228
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28, !noalias !2228, !inline_history !2230
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !2228
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3, !noalias !2228
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4, !noalias !2228
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.au, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !83

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28, !noalias !2228
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !84, !noalias !2228
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !84, !noalias !2228
  %i.bj = add i64 %i.c, 63
  %i.bk = lshr i64 %i.bj, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not18.i.i.i, label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit", label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !68, !noalias !2228 ; 2 uses
  %.not.i60.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i60.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05813.us.i.i.i = phi i64 [ %i.cg, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bm = add i64 %.014.us.i.i.i, 64
  %i.bn = tail call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.c) ; 4 uses
  %i.bo = icmp ult i64 %.014.us.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bp = sub nuw i64 %i.bn, %.014.us.i.i.i       ; 3 uses
  %min.iters.check55 = icmp ult i64 %i.bp, 5
  br i1 %min.iters.check55, label %.lr.ph.us.i.i.i.preheader101, label %vector.ph56

vector.ph56:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.mod.vf57 = and i64 %i.bp, 3                  ; 2 uses
  %i.bq = icmp eq i64 %n.mod.vf57, 0
  %i.br = select i1 %i.bq, i64 4, i64 %n.mod.vf57
  %n.vec58 = sub i64 %i.bp, %i.br                 ; 2 uses
  %i.bs = add i64 %.014.us.i.i.i, %n.vec58
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %i.bt = add nuw i64 %.014.us.i.i.i, %index60    ; 3 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bt
  %i.bv = getelementptr [16 x i8], ptr %i.p, i64 %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = getelementptr i8, ptr %i.bv, i64 40
  %i.by = load <3 x i64>, ptr %i.bw, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec62 = shufflevector <3 x i64> %i.by, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bz = load <3 x i64>, ptr %i.bx, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec64 = shufflevector <3 x i64> %i.bz, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bt ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <2 x i64> %strided.vec62, ptr %i.ca, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  store <2 x i64> %strided.vec64, ptr %i.cb, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %index.next65 = add nuw i64 %index60, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.cc, label %.lr.ph.us.i.i.i.preheader101, label %vector.body59, !llvm.loop !2231

.lr.ph.us.i.i.i.preheader101:                     ; preds = %vector.body59, %.lr.ph.us.i.i.i.preheader
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bs, %vector.body59 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader101, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cf, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader101 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.19.us.i.i.i
  %.sroa.29.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.29.0.copyload.us.i.i.i = load i64, ptr %.sroa.29.0..sroa_idx.us.i.i.i, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.19.us.i.i.i
  store i64 %.sroa.29.0.copyload.us.i.i.i, ptr %i.ce, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %i.cf = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cf, %i.bn
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !2232

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bn, %.lr.ph.us.i.i.i ]
  %i.cg = add nuw nsw i64 %.05813.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.cg, %i.bk
  br i1 %exitcond28.not.i.i.i, label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit", label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !2233

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05813.i.i.i = phi i64 [ %i.dw, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.05813.i.i.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !69, !noalias !2228 ; 4 uses
  %i.cj = add i64 %.014.i.i.i, 64
  %i.ck = tail call noundef i64 @llvm.umin.i64(i64 %i.cj, i64 %i.c) ; 11 uses
  switch i64 %i.ci, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cl = icmp ult i64 %.014.i.i.i, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.cm = sub nuw i64 %i.ck, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cm, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader103, label %vector.ph

.lr.ph.i.i.i.preheader103:                        ; preds = %vector.body, %.lr.ph.i.i.i.preheader
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cp, %vector.body ]
  br label %.lr.ph.i.i.i

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.mod.vf = and i64 %i.cm, 3                    ; 2 uses
  %i.cn = icmp eq i64 %n.mod.vf, 0
  %i.co = select i1 %i.cn, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.cm, %i.co                   ; 2 uses
  %i.cp = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = add nuw i64 %.014.i.i.i, %index         ; 3 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.cq
  %i.cs = getelementptr [16 x i8], ptr %i.p, i64 %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = getelementptr i8, ptr %i.cs, i64 40
  %i.cv = load <3 x i64>, ptr %i.ct, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec = shufflevector <3 x i64> %i.cv, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cw = load <3 x i64>, ptr %i.cu, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec53 = shufflevector <3 x i64> %i.cw, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cq ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x i64> %strided.vec, ptr %i.cx, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  store <2 x i64> %strided.vec53, ptr %i.cy, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %.lr.ph.i.i.i.preheader103, label %vector.body, !llvm.loop !2234

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.da = icmp ult i64 %.014.i.i.i, %i.ck
  br i1 %i.da, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.db = sub nuw i64 %i.ck, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.db, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.dc = and i64 %i.ci, 1
  %.not.i.i.i.prol = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.014.i.i.i
  %.sroa.26.0..sroa_idx.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.26.0.copyload.i.i.i.prol = load i64, ptr %.sroa.26.0..sroa_idx.i.i.i.prol, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.014.i.i.i
  store i64 %.sroa.26.0.copyload.i.i.i.prol, ptr %i.de, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.df = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.df, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dg = icmp eq i64 %i.ck, %.neg
  br i1 %i.dg, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader103, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader103 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.19.i.i.i
  %.sroa.29.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.29.0.copyload.i.i.i = load i64, ptr %.sroa.29.0..sroa_idx.i.i.i, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.19.i.i.i
  store i64 %.sroa.29.0.copyload.i.i.i, ptr %i.di, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %i.dj = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dj, %i.ck
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2235

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.dv, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.dk = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dl, %i.ci
  %.not.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.210.i.i.i
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.26.0.copyload.i.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.210.i.i.i
  store i64 %.sroa.26.0.copyload.i.i.i, ptr %i.do, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.dp = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.dq = sub nuw i64 %i.dp, %.014.i.i.i
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = and i64 %i.dr, %i.ci
  %.not.i.i.i.1 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.dp
  %.sroa.26.0..sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.26.0.copyload.i.i.i.1 = load i64, ptr %.sroa.26.0..sroa_idx.i.i.i.1, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dp
  store i64 %.sroa.26.0.copyload.i.i.i.1, ptr %i.du, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.dv = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.dv, %i.ck
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !2236

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.ck, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.ck, %.lr.ph11.i.i.i.prol.loopexit ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.ck, %bb.s ], [ %i.ck, %.lr.ph.i.i.i ]
  %i.dw = add nuw nsw i64 %.05813.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.dw, %i.bk
  br i1 %exitcond26.not.i.i.i, label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit", label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !2233

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader100, %.lr.ph17.i.i.i
  %.05916.i.i.i = phi i64 [ %i.dz, %.lr.ph17.i.i.i ], [ %.05916.i.i.i.ph, %.lr.ph17.i.i.i.preheader100 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.05916.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.05916.i.i.i
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.dy, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %i.dz = add nuw i64 %.05916.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.dz, %i.c
  br i1 %exitcond29.not.i.i.i, label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit", label %.lr.ph17.i.i.i, !llvm.loop !2237

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !67 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !89 ; 10 uses
  %i.ee = load ptr, ptr %3, align 8, !tbaa !98    ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !68, !noalias !2245
  %.not.i.i60.i.i = icmp eq ptr %i.eh, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i", label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !107, !alias.scope !2243, !noalias !2246 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %i.ei, null
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i31.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.fa, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.ek = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.el = and i64 %.03.us.i.i.i, 63
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !68, !noalias !2245
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ek
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !69, !noalias !2245
  %i.ep = shl nuw i64 1, %i.el                    ; 2 uses
  %i.eq = and i64 %i.eo, %i.ep
  %.not.us.i.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.03.us.i.i.i
  %.sroa.27.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.27.0.copyload.us.i.i.i = load i64, ptr %.sroa.27.0..sroa_idx.us.i.i.i, align 8, !tbaa !69, !alias.scope !2238, !noalias !2247
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.03.us.i.i.i
  store i64 %.sroa.27.0.copyload.us.i.i.i, ptr %i.es, align 8, !tbaa !69, !alias.scope !2241, !noalias !2248
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.et = load ptr, ptr %i.ef, align 8, !tbaa !68, !noalias !2245 ; 2 uses
  %.not.i32.us.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i32.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.eu = load i64, ptr %i.ej, align 8, !tbaa !84, !noalias !2245
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, i64 noundef %i.eu)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ab
  %.pre.i.us.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !68, !noalias !2245
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.aa
  %i.ev = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.et, %bb.aa ]
  %i.ew = xor i64 %i.ep, -1
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ek ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !69, !noalias !2245
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !67 ; 5 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc22 unwind label %bb.fc

.noexc22:                                         ; preds = %.noexc21
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
          to label %.noexc23 unwind label %bb.fc

.noexc23:                                         ; preds = %.noexc22
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc24 unwind label %bb.fc

.noexc24:                                         ; preds = %.noexc23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !68 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.au = icmp eq ptr %2, %i.c
  br i1 %i.au, label %bb.w, label %bb.m

bb.m:                                             ; preds = %.noexc24
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !76 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %i.av, align 8, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bd = atomicrmw volatile add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !76 ; 8 uses
  store <2 x ptr> %i.ay, ptr %i.at, align 8, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %thread-pre-split.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !77
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !2282
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !80
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !2282
  br label %thread-pre-split.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.v, label %thread-pre-split.i.i.i, !prof !83

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.r, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !68
  br label %bb.w

bb.w:                                             ; preds = %thread-pre-split.i.i.i, %.noexc24
  %.val.i.i.i = phi ptr [ %.val.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.as, %.noexc24 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !84
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !84
  call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  %.not.i.i17.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i17.i.i.i, label %.preheader.i.i.i.i, label %bb.x

.preheader.i.i.i.i:                               ; preds = %bb.w
  %.not20.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not20.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_12list_entry_tEllZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT2_.exit", label %.lr.ph18.i.i.i.i

.lr.ph18.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %i.by = load i64, ptr %i.aj, align 8, !tbaa !69, !alias.scope !2286, !noalias !2290
  %.not.i.i71.i.i.i.i = icmp eq i64 %i.by, 1
  br i1 %.not.i.i71.i.i.i.i, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader", label %bb.ak

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader": ; preds = %.lr.ph18.i.i.i.i
  %min.iters.check171 = icmp ult i64 %i.f, 5
  br i1 %min.iters.check171, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader184", label %vector.ph172

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader184": ; preds = %vector.body175, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader"
  %.06117.i.i.i.i.ph = phi i64 [ 0, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader" ], [ %n.vec174, %vector.body175 ]
  br label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i"

vector.ph172:                                     ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader"
  %n.mod.vf173 = and i64 %i.f, 3                  ; 2 uses
  %i.bz = icmp eq i64 %n.mod.vf173, 0
  %i.ca = select i1 %i.bz, i64 4, i64 %n.mod.vf173
  %n.vec174 = sub i64 %i.f, %i.ca                 ; 2 uses
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph172
  %index176 = phi i64 [ 0, %vector.ph172 ], [ %index.next181, %vector.body175 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %index176
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %index176
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cf = load <3 x i64>, ptr %i.cd, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %strided.vec178 = shufflevector <3 x i64> %i.cf, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cg = load <3 x i64>, ptr %i.ce, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %strided.vec180 = shufflevector <3 x i64> %i.cg, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index176 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x i64> %strided.vec178, ptr %i.ch, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  store <2 x i64> %strided.vec180, ptr %i.ci, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  %index.next181 = add nuw i64 %index176, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.cj, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader184", label %vector.body175, !llvm.loop !2293

bb.x:                                             ; preds = %bb.w
  %i.ck = add i64 %i.f, 63
  %i.cl = lshr i64 %i.ck, 6                       ; 2 uses
  %.not19.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not19.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_12list_entry_tEllZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT2_.exit", label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.x, %.loopexit5.i.i.i.i
  %.016.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit5.i.i.i.i ], [ 0, %bb.x ] ; 11 uses
  %.06015.i.i.i.i = phi i64 [ %i.ed, %.loopexit5.i.i.i.i ], [ 0, %bb.x ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.06015.i.i.i.i
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !69, !noalias !2294 ; 2 uses
  %i.co = add i64 %.016.i.i.i.i, 64
  %i.cp = call noundef i64 @llvm.umin.i64(i64 %i.co, i64 %i.f) ; 8 uses
  switch i64 %i.cn, label %.preheader4.i.i.i.i [
    i64 -1, label %.preheader6.i.i.i.i
    i64 0, label %.loopexit5.i.i.i.i
  ]

.preheader6.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.cq = icmp ult i64 %.016.i.i.i.i, %i.cp
  br i1 %i.cq, label %.lr.ph.i.i.i.i, label %.loopexit5.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader6.i.i.i.i
  %i.cr = load i64, ptr %i.aj, align 8, !tbaa !69, !alias.scope !2286, !noalias !2290
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cr, 1
  br i1 %.not.i.i.i.i.i.i, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader", label %bb.y

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader": ; preds = %.lr.ph.i.i.i.i
  %i.cs = sub i64 %i.cp, %.016.i.i.i.i            ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 5
  br i1 %min.iters.check, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader185", label %vector.ph

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader185": ; preds = %vector.body, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader"
  %.111.i.i.i.i.ph = phi i64 [ %.016.i.i.i.i, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader" ], [ %i.cv, %vector.body ]
  br label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i"

vector.ph:                                        ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader"
  %n.mod.vf = and i64 %i.cs, 3                    ; 2 uses
  %i.ct = icmp eq i64 %n.mod.vf, 0
  %i.cu = select i1 %i.ct, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.cs, %i.cu                   ; 2 uses
  %i.cv = add i64 %.016.i.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = add nuw i64 %.016.i.i.i.i, %index       ; 3 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.cw
  %i.cy = getelementptr [16 x i8], ptr %i.ah, i64 %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = getelementptr i8, ptr %i.cy, i64 40
  %i.db = load <3 x i64>, ptr %i.cz, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %strided.vec = shufflevector <3 x i64> %i.db, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.dc = load <3 x i64>, ptr %i.da, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %strided.vec169 = shufflevector <3 x i64> %i.dc, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.cw ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x i64> %strided.vec, ptr %i.dd, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  store <2 x i64> %strided.vec169, ptr %i.de, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader185", label %vector.body, !llvm.loop !2295

.preheader4.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.dg = icmp ult i64 %.016.i.i.i.i, %i.cp
  br i1 %i.dg, label %.lr.ph13.i.i.i.i, label %.loopexit5.i.i.i.i

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i": ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader185", %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i"
  %.111.i.i.i.i = phi i64 [ %i.dj, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i" ], [ %.111.i.i.i.i.ph, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader185" ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.111.i.i.i.i
  %.sroa.417.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.417.0.copyload.i.i.i.i = load i64, ptr %.sroa.417.0..sroa_idx.i.i.i.i, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.111.i.i.i.i
  store i64 %.sroa.417.0.copyload.i.i.i.i, ptr %i.di, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  %i.dj = add nuw i64 %.111.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dj, %i.cp
  br i1 %exitcond.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i", !llvm.loop !2296

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #28, !noalias !2294 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28, !noalias !2294
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28, !noalias !2294
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i, !noalias !2294

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.aa unwind label %bb.ab, !noalias !2294

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ac unwind label %bb.ab, !noalias !2294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i: ; preds = %bb.y
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28, !noalias !2294
  br label %common.resume.sink.split.i.i.i.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dn = load ptr, ptr %25, align 8, !tbaa !29, !noalias !2294 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.dn) #32, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28, !noalias !2294
  br i1 %.0.i.i.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28, !noalias !2294
  br i1 %.0.i.i.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body

common.resume.sink.split.i.i.i.i:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i77.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i72.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i69.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i68.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i64.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i
  %.sink.i.i.i.i = phi ptr [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i64.i.i.i.i ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i72.i.i.i.i ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i69.i.i.i.i ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i68.i.i.i.i ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i77.i.i.i.i ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76.i.i.i.i ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i ]
  %common.resume.op.ph.i.i.i.i = phi { ptr, i32 } [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i64.i.i.i.i ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i72.i.i.i.i ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i69.i.i.i.i ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i68.i.i.i.i ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i77.i.i.i.i ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76.i.i.i.i ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i.i.i) #28, !noalias !2294
  br label %.body

bb.ac:                                            ; preds = %bb.aa
  unreachable

.lr.ph13.i.i.i.i:                                 ; preds = %.preheader4.i.i.i.i, %bb.aj
  %.212.i.i.i.i = phi i64 [ %i.ec, %bb.aj ], [ %.016.i.i.i.i, %.preheader4.i.i.i.i ] ; 4 uses
  %i.dq = sub nuw i64 %.212.i.i.i.i, %.016.i.i.i.i
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = and i64 %i.dr, %i.cn
  %.not.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph13.i.i.i.i
  %i.dt = load i64, ptr %i.aj, align 8, !tbaa !69, !alias.scope !2286, !noalias !2290
  %.not.i.i63.i.i.i.i = icmp eq i64 %i.dt, 1
  br i1 %.not.i.i63.i.i.i.i, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit70.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = call ptr @__cxa_allocate_exception(i64 16) #28, !noalias !2294 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28, !noalias !2294
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28, !noalias !2294
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i64.i.i.i.i, !noalias !2294

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ag unwind label %bb.ah, !noalias !2294

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ai unwind label %bb.ah, !noalias !2294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i64.i.i.i.i: ; preds = %bb.ae
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28, !noalias !2294
  br label %common.resume.sink.split.i.i.i.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i.i67.i.i.i.i = phi i1 [ false, %bb.ag ], [ true, %bb.af ] ; 2 uses
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dx = load ptr, ptr %23, align 8, !tbaa !29, !noalias !2294 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i69.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i68.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i68.i.i.i.i: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.dx) #32, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28, !noalias !2294
  br i1 %.0.i.i67.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i69.i.i.i.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28, !noalias !2294
  br i1 %.0.i.i67.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body

bb.ai:                                            ; preds = %bb.ag
  unreachable

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit70.i.i.i.i": ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.212.i.i.i.i
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.411.0.copyload.i.i.i.i = load i64, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.212.i.i.i.i
  store i64 %.sroa.411.0.copyload.i.i.i.i, ptr %i.eb, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit70.i.i.i.i", %.lr.ph13.i.i.i.i
  %i.ec = add i64 %.212.i.i.i.i, 1                ; 2 uses
  %exitcond24.not.i.i.i.i = icmp eq i64 %i.ec, %i.cp
  br i1 %exitcond24.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %.lr.ph13.i.i.i.i, !llvm.loop !2297

.loopexit5.i.i.i.i:                               ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i", %bb.aj, %.preheader4.i.i.i.i, %.preheader6.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.cp, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.cp, %bb.aj ], [ %.016.i.i.i.i, %.preheader4.i.i.i.i ], [ %.016.i.i.i.i, %.preheader6.i.i.i.i ], [ %i.cp, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i" ]
  %i.ed = add nuw nsw i64 %.06015.i.i.i.i, 1      ; 2 uses
  %exitcond25.not.i.i.i.i = icmp eq i64 %i.ed, %i.cl
  br i1 %exitcond25.not.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_12list_entry_tEllZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT2_.exit", label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, !llvm.loop !2298

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i": ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader184", %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i"
  %.06117.i.i.i.i = phi i64 [ %i.eg, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i" ], [ %.06117.i.i.i.i.ph, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader184" ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.06117.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.06117.i.i.i.i
  store i64 %.sroa.4.0.copyload.i.i.i.i, ptr %i.ef, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  %i.eg = add nuw i64 %.06117.i.i.i.i, 1          ; 2 uses
  %exitcond26.not.i.i.i.i = icmp eq i64 %i.eg, %i.f
  br i1 %exitcond26.not.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_12list_entry_tEllZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT2_.exit", label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i", !llvm.loop !2299

bb.ak:                                            ; preds = %.lr.ph18.i.i.i.i
  %i.eh = call ptr @__cxa_allocate_exception(i64 16) #28, !noalias !2294 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28, !noalias !2294
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28, !noalias !2294
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i72.i.i.i.i, !noalias !2294

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.am unwind label %bb.an, !noalias !2294

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.eh, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ao unwind label %bb.an, !noalias !2294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i72.i.i.i.i: ; preds = %bb.ak
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28, !noalias !2294
  br label %common.resume.sink.split.i.i.i.i

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i.i75.i.i.i.i = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ek = load ptr, ptr %21, align 8, !tbaa !29, !noalias !2294 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i77.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76.i.i.i.i
end_hunk_3
