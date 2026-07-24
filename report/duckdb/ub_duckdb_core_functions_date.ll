inline.NumInlined: 23534
inline.NumDeleted: 3924
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 230
loop-unroll.NumUnrolled: 339
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_121TimeTZSortKeyFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEmNS_12_GLOBAL__N_121TimeTZSortKeyOperatorEEEvRNS_6VectorES6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !44 ; 2 uses
  %i.m = and i64 %.sroa.0.0.copyload.i.i, 16777215
  %i.n = mul i64 %i.m, 16777216000000
  %i.o = add i64 %i.n, %.sroa.0.0.copyload.i.i
  store i64 %i.o, ptr %i.f, align 8, !tbaa !44
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEmNS_12_GLOBAL__N_121TimeTZSortKeyOperatorEEEvRNS_6VectorES6_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97, !noalias !660 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEmNS_12_GLOBAL__N_121TimeTZSortKeyOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check64 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check64, label %.lr.ph17.i.i.i.preheader93, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.vec67 = and i64 %i.c, -4                     ; 3 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next72, %vector.body68 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index69 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load70 = load <2 x i64>, ptr %i.v, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %wide.load71 = load <2 x i64>, ptr %i.w, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %i.x = and <2 x i64> %wide.load70, splat (i64 16777215)
  %i.y = and <2 x i64> %wide.load71, splat (i64 16777215)
  %i.z = mul <2 x i64> %i.x, splat (i64 16777216000000)
  %i.aa = mul <2 x i64> %i.y, splat (i64 16777216000000)
  %i.ab = add <2 x i64> %i.z, %wide.load70
  %i.ac = add <2 x i64> %i.aa, %wide.load71
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index69 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %i.ab, ptr %i.ad, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  store <2 x i64> %i.ac, ptr %i.ae, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  %index.next72 = add nuw i64 %index69, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.af, label %middle.block73, label %vector.body68, !llvm.loop !661

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.c, %n.vec67
  br i1 %cmp.n74, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEmNS_12_GLOBAL__N_121TimeTZSortKeyOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i.preheader93

.lr.ph17.i.i.i.preheader93:                       ; preds = %.lr.ph17.i.i.i.preheader, %middle.block73
  %.05616.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec67, %middle.block73 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.u, ptr %i.ag, align 8, !tbaa !97, !noalias !660
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ai = icmp eq ptr %2, %i.a
  br i1 %i.ai, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47, !noalias !660 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !7, !noalias !660
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !660
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3, !noalias !660
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3, !noalias !660
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4, !noalias !660 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47, !noalias !660 ; 8 uses
  store <2 x ptr> %i.am, ptr %i.ah, align 8, !tbaa !7, !noalias !660
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !660 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.au, align 8, !tbaa !48, !noalias !660
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !50, !noalias !660
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !45, !noalias !660
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !660
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #25, !noalias !660, !inline_history !664
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !45, !noalias !660
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !660
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #25, !noalias !660, !inline_history !664
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !660
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3, !noalias !660
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4, !noalias !660
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.m ], [ %i.bh, %bb.n ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !53

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #25, !noalias !660
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !98, !noalias !660
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !98, !noalias !660
  %i.bm = add i64 %i.c, 63
  %i.bn = lshr i64 %i.bm, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEmNS_12_GLOBAL__N_121TimeTZSortKeyOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bo = load ptr, ptr %i.t, align 8, !tbaa !97, !noalias !660 ; 2 uses
  %.not.i58.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i58.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05713.us.i.i.i = phi i64 [ %i.cm, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bp = add i64 %.014.us.i.i.i, 64
  %i.bq = tail call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.c) ; 5 uses
  %i.br = icmp ult i64 %.014.us.i.i.i, %i.bq
  br i1 %i.br, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bs = sub nuw i64 %i.bq, %.014.us.i.i.i       ; 3 uses
  %min.iters.check51 = icmp ult i64 %i.bs, 4
  br i1 %min.iters.check51, label %.lr.ph.us.i.i.i.preheader94, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec54 = and i64 %i.bs, -4                    ; 3 uses
  %i.bt = add i64 %.014.us.i.i.i, %n.vec54
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph52
  %index56 = phi i64 [ 0, %vector.ph52 ], [ %index.next59, %vector.body55 ] ; 2 uses
  %i.bu = add nuw i64 %.014.us.i.i.i, %index56    ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %wide.load58 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %i.bx = and <2 x i64> %wide.load57, splat (i64 16777215)
  %i.by = and <2 x i64> %wide.load58, splat (i64 16777215)
  %i.bz = mul <2 x i64> %i.bx, splat (i64 16777216000000)
  %i.ca = mul <2 x i64> %i.by, splat (i64 16777216000000)
  %i.cb = add <2 x i64> %i.bz, %wide.load57
  %i.cc = add <2 x i64> %i.ca, %wide.load58
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bu ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  store <2 x i64> %i.cc, ptr %i.ce, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %i.cf = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.cf, label %middle.block60, label %vector.body55, !llvm.loop !665

middle.block60:                                   ; preds = %vector.body55
  %cmp.n61 = icmp eq i64 %i.bs, %n.vec54
  br i1 %cmp.n61, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader94

.lr.ph.us.i.i.i.preheader94:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block60
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bt, %middle.block60 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader94, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cl, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader94 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.19.us.i.i.i
  %.sroa.07.0.copyload.us.i.i.i = load i64, ptr %i.cg, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %i.ch = and i64 %.sroa.07.0.copyload.us.i.i.i, 16777215
  %i.ci = mul i64 %i.ch, 16777216000000
  %i.cj = add i64 %i.ci, %.sroa.07.0.copyload.us.i.i.i
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.19.us.i.i.i
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  %i.cl = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cl, %i.bq
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !666

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bq, %middle.block60 ], [ %i.bq, %.lr.ph.us.i.i.i ]
  %i.cm = add nuw nsw i64 %.05713.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.cm, %i.bn
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEmNS_12_GLOBAL__N_121TimeTZSortKeyOperatorEEEvRNS_6VectorES6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !667

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05713.i.i.i = phi i64 [ %i.eo, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.05713.i.i.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !44, !noalias !660 ; 4 uses
  %i.cp = add i64 %.014.i.i.i, 64
  %i.cq = tail call noundef i64 @llvm.umin.i64(i64 %i.cp, i64 %i.c) ; 12 uses
  switch i64 %i.co, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cr = icmp ult i64 %.014.i.i.i, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.cs = sub nuw i64 %i.cq, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader96, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.cs, -4                      ; 3 uses
  %i.ct = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = add nuw i64 %.014.i.i.i, %index         ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load = load <2 x i64>, ptr %i.cv, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %wide.load49 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %i.cx = and <2 x i64> %wide.load, splat (i64 16777215)
  %i.cy = and <2 x i64> %wide.load49, splat (i64 16777215)
  %i.cz = mul <2 x i64> %i.cx, splat (i64 16777216000000)
  %i.da = mul <2 x i64> %i.cy, splat (i64 16777216000000)
  %i.db = add <2 x i64> %i.cz, %wide.load
  %i.dc = add <2 x i64> %i.da, %wide.load49
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cu ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x i64> %i.db, ptr %i.dd, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  store <2 x i64> %i.dc, ptr %i.de, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader96

.lr.ph.i.i.i.preheader96:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dg = icmp ult i64 %.014.i.i.i, %i.cq
  br i1 %i.dg, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.dh = sub nuw i64 %i.cq, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.dh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.di = and i64 %i.co, 1
  %.not.i.i.i.prol = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.014.i.i.i
  %.sroa.05.0.copyload.i.i.i.prol = load i64, ptr %i.dj, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %i.dk = and i64 %.sroa.05.0.copyload.i.i.i.prol, 16777215
  %i.dl = mul i64 %i.dk, 16777216000000
  %i.dm = add i64 %i.dl, %.sroa.05.0.copyload.i.i.i.prol
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.014.i.i.i
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.do = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.do, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dp = icmp eq i64 %i.cq, %.neg
  br i1 %i.dp, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader96, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dv, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader96 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.19.i.i.i
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.dq, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %i.dr = and i64 %.sroa.07.0.copyload.i.i.i, 16777215
  %i.ds = mul i64 %i.dr, 16777216000000
  %i.dt = add i64 %i.ds, %.sroa.07.0.copyload.i.i.i
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.19.i.i.i
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  %i.dv = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dv, %i.cq
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !669

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.en, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.dw = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = and i64 %i.dx, %i.co
  %.not.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.210.i.i.i
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.dz, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %i.ea = and i64 %.sroa.05.0.copyload.i.i.i, 16777215
  %i.eb = mul i64 %i.ea, 16777216000000
  %i.ec = add i64 %i.eb, %.sroa.05.0.copyload.i.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.210.i.i.i
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.ee = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.ef = sub nuw i64 %i.ee, %.014.i.i.i
  %i.eg = shl nuw i64 1, %i.ef
  %i.eh = and i64 %i.eg, %i.co
  %.not.i.i.i.1 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ee
  %.sroa.05.0.copyload.i.i.i.1 = load i64, ptr %i.ei, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %i.ej = and i64 %.sroa.05.0.copyload.i.i.i.1, 16777215
  %i.ek = mul i64 %i.ej, 16777216000000
  %i.el = add i64 %i.ek, %.sroa.05.0.copyload.i.i.i.1
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ee
  store i64 %i.el, ptr %i.em, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.en = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.en, %i.cq
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !670

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.cq, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.cq, %middle.block ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.cq, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.cq, %bb.s ], [ %i.cq, %.lr.ph.i.i.i ]
  %i.eo = add nuw nsw i64 %.05713.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.eo, %i.bn
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEmNS_12_GLOBAL__N_121TimeTZSortKeyOperatorEEEvRNS_6VectorES6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !667

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader93, %.lr.ph17.i.i.i
  %.05616.i.i.i = phi i64 [ %i.eu, %.lr.ph17.i.i.i ], [ %.05616.i.i.i.ph, %.lr.ph17.i.i.i.preheader93 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.05616.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ep, align 8, !tbaa !44, !alias.scope !655, !noalias !658 ; 2 uses
  %i.eq = and i64 %.sroa.0.0.copyload.i.i.i, 16777215
  %i.er = mul i64 %i.eq, 16777216000000
  %i.es = add i64 %i.er, %.sroa.0.0.copyload.i.i.i
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05616.i.i.i
  store i64 %i.es, ptr %i.et, align 8, !tbaa !44, !alias.scope !658, !noalias !655
  %i.eu = add nuw i64 %.05616.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.eu, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEmNS_12_GLOBAL__N_121TimeTZSortKeyOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !671

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !96 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10dtime_tz_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !125 ; 7 uses
  %i.ez = load ptr, ptr %3, align 8, !tbaa !134   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !97, !noalias !679
  %.not.i.i60.i.i = icmp eq ptr %i.fc, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_10dtime_tz_tEmNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_121TimeTZSortKeyOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !143, !alias.scope !677, !noalias !680 ; 2 uses
  %.not.i30.i.i.i = icmp eq ptr %i.fd, null
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i30.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.fy, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.ff = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.fg = and i64 %.03.us.i.i.i, 63
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !97, !noalias !679
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ff
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !44, !noalias !679
  %i.fk = shl nuw i64 1, %i.fg                    ; 2 uses
  %i.fl = and i64 %i.fj, %i.fk
  %.not.us.i.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.03.us.i.i.i
  %.sroa.06.0.copyload.us.i.i.i = load i64, ptr %i.fm, align 8, !tbaa !44, !alias.scope !672, !noalias !681 ; 2 uses
  %i.fn = and i64 %.sroa.06.0.copyload.us.i.i.i, 16777215
  %i.fo = mul i64 %i.fn, 16777216000000
  %i.fp = add i64 %i.fo, %.sroa.06.0.copyload.us.i.i.i
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.03.us.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_18DatePart13UnaryFunctionINS_10interval_tEdNS1_13EpochOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  store i32 0, ptr %i.he, align 8, !tbaa !48
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  store i32 0, ptr %i.hi, align 4, !tbaa !50
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !45
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #25, !inline_history !1859
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !45
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #25, !inline_history !1859
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i.i2.i.i.i = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i.i.i2.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hq = add nsw i32 %i.hh, -1
  store i32 %i.hq, ptr %i.he, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.hr = atomicrmw volatile add ptr %i.he, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i4.i.i.i = phi i32 [ %i.hh, %bb.ad ], [ %i.hr, %bb.ae ]
  %i.hs = icmp eq i32 %.0.i.i.i.i.i.i4.i.i.i, 1
  br i1 %i.hs, label %bb.af, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i, !prof !53

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i:     ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i, %bb.ab, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_10interval_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit

bb.ag:                                            ; preds = %bb.j, %bb.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.k
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.i.i:                                    ; preds = %bb.s
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp.i.i:                           ; preds = %bb.m, %bb.l
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.ah, %bb.ag
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.ht, %bb.ag ], [ %i.hu, %bb.ah ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn.i.i

_ZN6duckdb13UnaryExecutor14GenericExecuteINS_10interval_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit: ; preds = %.loopexit5.i.i.i, %.lr.ph17.i.i.i, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, %.preheader.i.i.i, %bb.e, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_18DatePart13EpochOperator19PropagateStatisticsINS_10interval_tEEENS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS6_ELb1EEERNS_13ClientContextERNS_23FunctionStatisticsInputE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.15") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !787
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_18DatePart13UnaryFunctionINS_7dtime_tEdNS1_13EpochOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68   ; 20 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !82
  switch i8 %i.d, label %bb.j [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.m = sitofp i64 %.sroa.0.0.copyload.i.i to double
  %i.n = fdiv double %i.m, 1.000000e+06
  store double %i.n, ptr %i.f, align 8, !tbaa !359
  br label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97, !noalias !1865
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  switch i64 %i.c, label %vector.ph58 [
    i64 0, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit
    i64 1, label %.lr.ph17.i.i.i.preheader
  ]

vector.ph58:                                      ; preds = %.preheader.i.i.i
  %n.vec60 = and i64 %i.c, -2                     ; 3 uses
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph58
  %index62 = phi i64 [ 0, %vector.ph58 ], [ %index.next64, %vector.body61 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index62
  %wide.load63 = load <2 x i64>, ptr %i.u, align 8, !tbaa !44, !alias.scope !1860, !noalias !1863
  %i.v = sitofp <2 x i64> %wide.load63 to <2 x double>
  %i.w = fdiv <2 x double> %i.v, splat (double 1.000000e+06)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index62
  store <2 x double> %i.w, ptr %i.x, align 8, !tbaa !359, !alias.scope !1863, !noalias !1860
  %index.next64 = add nuw i64 %index62, 2         ; 2 uses
  %i.y = icmp eq i64 %index.next64, %n.vec60
  br i1 %i.y, label %middle.block65, label %vector.body61, !llvm.loop !1866

middle.block65:                                   ; preds = %vector.body61
  %cmp.n66 = icmp eq i64 %i.c, %n.vec60
  br i1 %cmp.n66, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i, %middle.block65
  %.05616.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i ], [ %n.vec60, %middle.block65 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.c), !noalias !1865
  %i.aa = add i64 %i.c, 63
  %i.ab = lshr i64 %i.aa, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %bb.e
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !97, !noalias !1865 ; 2 uses
  %.not.i58.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i58.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05713.us.i.i.i = phi i64 [ %i.at, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.ad = add i64 %.014.us.i.i.i, 64
  %i.ae = tail call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 %i.c) ; 5 uses
  %i.af = icmp ult i64 %.014.us.i.i.i, %i.ae
  br i1 %i.af, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.ag = sub nuw i64 %i.ae, %.014.us.i.i.i       ; 3 uses
  %min.iters.check45 = icmp ult i64 %i.ag, 2
  br i1 %min.iters.check45, label %.lr.ph.us.i.i.i.preheader84, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec48 = and i64 %i.ag, -2                    ; 3 uses
  %i.ah = add i64 %.014.us.i.i.i, %n.vec48
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph46
  %index50 = phi i64 [ 0, %vector.ph46 ], [ %index.next52, %vector.body49 ] ; 2 uses
  %i.ai = add nuw i64 %.014.us.i.i.i, %index50    ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ai
  %wide.load51 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !44, !alias.scope !1860, !noalias !1863
  %i.ak = sitofp <2 x i64> %wide.load51 to <2 x double>
  %i.al = fdiv <2 x double> %i.ak, splat (double 1.000000e+06)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ai
  store <2 x double> %i.al, ptr %i.am, align 8, !tbaa !359, !alias.scope !1863, !noalias !1860
  %index.next52 = add nuw i64 %index50, 2         ; 2 uses
  %i.an = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.an, label %middle.block53, label %vector.body49, !llvm.loop !1867

middle.block53:                                   ; preds = %vector.body49
  %cmp.n54 = icmp eq i64 %i.ag, %n.vec48
  br i1 %cmp.n54, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader84

.lr.ph.us.i.i.i.preheader84:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block53
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.ah, %middle.block53 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader84, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.as, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader84 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.us.i.i.i
  %.sroa.07.0.copyload.us.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !44, !alias.scope !1860, !noalias !1863
  %i.ap = sitofp i64 %.sroa.07.0.copyload.us.i.i.i to double
  %i.aq = fdiv double %i.ap, 1.000000e+06
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.us.i.i.i
  store double %i.aq, ptr %i.ar, align 8, !tbaa !359, !alias.scope !1863, !noalias !1860
  %i.as = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.as, %i.ae
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !1868

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block53, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.ae, %middle.block53 ], [ %i.ae, %.lr.ph.us.i.i.i ]
  %i.at = add nuw nsw i64 %.05713.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.at, %i.ab
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !1869

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05713.i.i.i = phi i64 [ %i.cl, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.05713.i.i.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !44, !noalias !1865 ; 4 uses
  %i.aw = add i64 %.014.i.i.i, 64
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.aw, i64 %i.c) ; 12 uses
  switch i64 %i.av, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.ay = icmp ult i64 %.014.i.i.i, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.az = sub nuw i64 %i.ax, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.az, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.az, -2                      ; 3 uses
  %i.ba = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = add nuw i64 %.014.i.i.i, %index         ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bb
  %wide.load = load <2 x i64>, ptr %i.bc, align 8, !tbaa !44, !alias.scope !1860, !noalias !1863
  %i.bd = sitofp <2 x i64> %wide.load to <2 x double>
  %i.be = fdiv <2 x double> %i.bd, splat (double 1.000000e+06)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bb
  store <2 x double> %i.be, ptr %i.bf, align 8, !tbaa !359, !alias.scope !1863, !noalias !1860
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader86

.lr.ph.i.i.i.preheader86:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bh = icmp ult i64 %.014.i.i.i, %i.ax
  br i1 %i.bh, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.bi = sub nuw i64 %i.ax, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.bi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.bj = and i64 %i.av, 1
  %.not.i.i.i.prol = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.f

bb.f:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.014.i.i.i
  %.sroa.05.0.copyload.i.i.i.prol = load i64, ptr %i.bk, align 8, !tbaa !44, !alias.scope !1860, !noalias !1863
  %i.bl = sitofp i64 %.sroa.05.0.copyload.i.i.i.prol to double
  %i.bm = fdiv double %i.bl, 1.000000e+06
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.014.i.i.i
  store double %i.bm, ptr %i.bn, align 8, !tbaa !359, !alias.scope !1863, !noalias !1860
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.f, %.lr.ph11.i.i.i.prol
  %i.bo = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.bo, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.bp = icmp eq i64 %i.ax, %.neg
  br i1 %i.bp, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader86, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader86 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.i.i.i
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.bq, align 8, !tbaa !44, !alias.scope !1860, !noalias !1863
  %i.br = sitofp i64 %.sroa.07.0.copyload.i.i.i to double
  %i.bs = fdiv double %i.br, 1.000000e+06
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.i.i.i
  store double %i.bs, ptr %i.bt, align 8, !tbaa !359, !alias.scope !1863, !noalias !1860
  %i.bu = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bu, %i.ax
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1871

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.i
  %.210.i.i.i = phi i64 [ %i.ck, %bb.i ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.bv = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.av
  %.not.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph11.i.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.210.i.i.i
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.by, align 8, !tbaa !44, !alias.scope !1860, !noalias !1863
  %i.bz = sitofp i64 %.sroa.05.0.copyload.i.i.i to double
  %i.ca = fdiv double %i.bz, 1.000000e+06
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.210.i.i.i
  store double %i.ca, ptr %i.cb, align 8, !tbaa !359, !alias.scope !1863, !noalias !1860
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.g, %.lr.ph11.i.i.i
  %i.cc = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.cd = sub nuw i64 %i.cc, %.014.i.i.i
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, %i.av
  %.not.i.i.i.1 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cc
  %.sroa.05.0.copyload.i.i.i.1 = load i64, ptr %i.cg, align 8, !tbaa !44, !alias.scope !1860, !noalias !1863
  %i.ch = sitofp i64 %.sroa.05.0.copyload.i.i.i.1 to double
  %i.ci = fdiv double %i.ch, 1.000000e+06
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cc
  store double %i.ci, ptr %i.cj, align 8, !tbaa !359, !alias.scope !1863, !noalias !1860
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph11.i.i.i.1
  %i.ck = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.ck, %i.ax
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !1872

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.i, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.ax, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.ax, %middle.block ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.ax, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.ax, %bb.i ], [ %i.ax, %.lr.ph.i.i.i ]
  %i.cl = add nuw nsw i64 %.05713.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.cl, %i.ab
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !1869

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.05616.i.i.i = phi i64 [ %i.cq, %.lr.ph17.i.i.i ], [ %.05616.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05616.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !44, !alias.scope !1860, !noalias !1863
  %i.cn = sitofp i64 %.sroa.0.0.copyload.i.i.i to double
  %i.co = fdiv double %i.cn, 1.000000e+06
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.05616.i.i.i
  store double %i.co, ptr %i.cp, align 8, !tbaa !359, !alias.scope !1863, !noalias !1860
  %i.cq = add nuw i64 %.05616.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.cq, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit, label %.lr.ph17.i.i.i, !llvm.loop !1873

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.l unwind label %bb.aj

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !96 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_7dtime_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !125 ; 7 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !134   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.o:                                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1874)
  call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !97, !noalias !1881
  %.not.i.i60.i.i = icmp eq ptr %i.cy, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.o
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_7dtime_tEdNS_19GenericUnaryWrapperENS_12_GLOBAL__N_18DatePart12PartOperatorINS5_13EpochOperatorEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESI_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !143, !alias.scope !1879, !noalias !1882 ; 2 uses
  %.not.i30.i.i.i = icmp eq ptr %i.cz, null
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i30.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.s
  %.03.us.i.i.i = phi i64 [ %i.dt, %bb.s ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.db = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.dc = and i64 %.03.us.i.i.i, 63
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !97, !noalias !1881
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  %i.df = load i64, ptr %i.de, align 8, !tbaa !44, !noalias !1881
  %i.dg = shl nuw i64 1, %i.dc                    ; 2 uses
  %i.dh = and i64 %i.df, %i.dg
  %.not.us.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.us.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.03.us.i.i.i
  %.sroa.06.0.copyload.us.i.i.i = load i64, ptr %i.di, align 8, !tbaa !44, !alias.scope !1874, !noalias !1883
  %i.dj = sitofp i64 %.sroa.06.0.copyload.us.i.i.i to double
  %i.dk = fdiv double %i.dj, 1.000000e+06
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.03.us.i.i.i
  store double %i.dk, ptr %i.dl, align 8, !tbaa !359, !alias.scope !1877, !noalias !1884
  br label %bb.s

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.dm = load ptr, ptr %i.cw, align 8, !tbaa !97, !noalias !1881 ; 2 uses
  %.not.i31.us.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i31.us.i.i.i, label %bb.r, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.dn = load i64, ptr %i.da, align 8, !tbaa !98, !noalias !1881
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 noundef %i.dn)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.r
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_18DatePart13EpochOperator19PropagateStatisticsINS_10dtime_ns_tEEENS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS6_ELb1EEERNS_13ClientContextERNS_23FunctionStatisticsInputE:bb.a
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !1916
  br label %bb.z

bb.p:                                             ; preds = %.noexc5
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25, !noalias !1916
  br label %bb.y

bb.q:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25, !noalias !1916
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.r ], [ %i.r, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !1916
  br label %bb.x

bb.t:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #25, !noalias !1916
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn17.i = phi { ptr, i32 } [ %i.u, %bb.u ], [ %i.t, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !1916
  br label %bb.x

bb.w:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.s
  %.pn19.i = phi { ptr, i32 } [ %i.v, %bb.w ], [ %.pn17.i, %bb.v ], [ %.pn.i, %bb.s ]
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.p
  %.pn19.pn.i = phi { ptr, i32 } [ %.pn19.i, %bb.x ], [ %i.q, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !1916
  br label %.body

bb.z:                                             ; preds = %bb.o, %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.aa:                                            ; preds = %bb.g, %_ZN6duckdb12NumericStats6GetMinINS_10dtime_ns_tEEET_RKNS_14BaseStatisticsE.exit.i, %bb.c, %.noexc, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.y, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.aa ], [ %i.f, %bb.d ], [ %i.h, %bb.e ], [ %.pn19.pn.i, %bb.y ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_18DatePart13UnaryFunctionINS_10dtime_tz_tEdNS1_13EpochOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68   ; 20 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !82
  switch i8 %i.d, label %bb.j [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.m = lshr i64 %.sroa.0.0.copyload.i.i, 24
  %i.n = uitofp nneg i64 %i.m to double
  %i.o = fdiv double %i.n, 1.000000e+06
  store double %i.o, ptr %i.f, align 8, !tbaa !359
  br label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97, !noalias !1924
  %.not.i.i59.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  switch i64 %i.c, label %vector.ph58 [
    i64 0, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit
    i64 1, label %.lr.ph17.i.i.i.preheader
  ]

vector.ph58:                                      ; preds = %.preheader.i.i.i
  %n.vec60 = and i64 %i.c, -2                     ; 3 uses
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph58
  %index62 = phi i64 [ 0, %vector.ph58 ], [ %index.next64, %vector.body61 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index62
  %wide.load63 = load <2 x i64>, ptr %i.v, align 8, !tbaa !44, !alias.scope !1919, !noalias !1922
  %i.w = lshr <2 x i64> %wide.load63, splat (i64 24)
  %i.x = uitofp nneg <2 x i64> %i.w to <2 x double>
  %i.y = fdiv <2 x double> %i.x, splat (double 1.000000e+06)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index62
  store <2 x double> %i.y, ptr %i.z, align 8, !tbaa !359, !alias.scope !1922, !noalias !1919
  %index.next64 = add nuw i64 %index62, 2         ; 2 uses
  %i.aa = icmp eq i64 %index.next64, %n.vec60
  br i1 %i.aa, label %middle.block65, label %vector.body61, !llvm.loop !1925

middle.block65:                                   ; preds = %vector.body61
  %cmp.n66 = icmp eq i64 %i.c, %n.vec60
  br i1 %cmp.n66, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i, %middle.block65
  %.05616.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i ], [ %n.vec60, %middle.block65 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.c), !noalias !1924
  %i.ac = add i64 %i.c, 63
  %i.ad = lshr i64 %i.ac, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %bb.e
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !97, !noalias !1924 ; 2 uses
  %.not.i58.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i58.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05713.us.i.i.i = phi i64 [ %i.ax, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.af = add i64 %.014.us.i.i.i, 64
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %i.c) ; 5 uses
  %i.ah = icmp ult i64 %.014.us.i.i.i, %i.ag
  br i1 %i.ah, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.ai = sub nuw i64 %i.ag, %.014.us.i.i.i       ; 3 uses
  %min.iters.check45 = icmp ult i64 %i.ai, 2
  br i1 %min.iters.check45, label %.lr.ph.us.i.i.i.preheader84, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec48 = and i64 %i.ai, -2                    ; 3 uses
  %i.aj = add i64 %.014.us.i.i.i, %n.vec48
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph46
  %index50 = phi i64 [ 0, %vector.ph46 ], [ %index.next52, %vector.body49 ] ; 2 uses
  %i.ak = add nuw i64 %.014.us.i.i.i, %index50    ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ak
  %wide.load51 = load <2 x i64>, ptr %i.al, align 8, !tbaa !44, !alias.scope !1919, !noalias !1922
  %i.am = lshr <2 x i64> %wide.load51, splat (i64 24)
  %i.an = uitofp nneg <2 x i64> %i.am to <2 x double>
  %i.ao = fdiv <2 x double> %i.an, splat (double 1.000000e+06)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  store <2 x double> %i.ao, ptr %i.ap, align 8, !tbaa !359, !alias.scope !1922, !noalias !1919
  %index.next52 = add nuw i64 %index50, 2         ; 2 uses
  %i.aq = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.aq, label %middle.block53, label %vector.body49, !llvm.loop !1926

middle.block53:                                   ; preds = %vector.body49
  %cmp.n54 = icmp eq i64 %i.ai, %n.vec48
  br i1 %cmp.n54, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader84

.lr.ph.us.i.i.i.preheader84:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block53
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.aj, %middle.block53 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader84, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.aw, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader84 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.19.us.i.i.i
  %.sroa.07.0.copyload.us.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !44, !alias.scope !1919, !noalias !1922
  %i.as = lshr i64 %.sroa.07.0.copyload.us.i.i.i, 24
  %i.at = uitofp nneg i64 %i.as to double
  %i.au = fdiv double %i.at, 1.000000e+06
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.19.us.i.i.i
  store double %i.au, ptr %i.av, align 8, !tbaa !359, !alias.scope !1922, !noalias !1919
  %i.aw = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.aw, %i.ag
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !1927

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block53, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.ag, %middle.block53 ], [ %i.ag, %.lr.ph.us.i.i.i ]
  %i.ax = add nuw nsw i64 %.05713.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.ax, %i.ad
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !1928

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05713.i.i.i = phi i64 [ %i.cu, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.05713.i.i.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !44, !noalias !1924 ; 4 uses
  %i.ba = add i64 %.014.i.i.i, 64
  %i.bb = tail call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.c) ; 12 uses
  switch i64 %i.az, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bc = icmp ult i64 %.014.i.i.i, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.bd = sub nuw i64 %i.bb, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.bd, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bd, -2                      ; 3 uses
  %i.be = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = add nuw i64 %.014.i.i.i, %index         ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bf
  %wide.load = load <2 x i64>, ptr %i.bg, align 8, !tbaa !44, !alias.scope !1919, !noalias !1922
  %i.bh = lshr <2 x i64> %wide.load, splat (i64 24)
  %i.bi = uitofp nneg <2 x i64> %i.bh to <2 x double>
  %i.bj = fdiv <2 x double> %i.bi, splat (double 1.000000e+06)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bf
  store <2 x double> %i.bj, ptr %i.bk, align 8, !tbaa !359, !alias.scope !1922, !noalias !1919
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !1929

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader86

.lr.ph.i.i.i.preheader86:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bm = icmp ult i64 %.014.i.i.i, %i.bb
  br i1 %i.bm, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.bn = sub nuw i64 %i.bb, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.bn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.bo = and i64 %i.az, 1
  %.not.i.i.i.prol = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.f

bb.f:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.014.i.i.i
  %.sroa.05.0.copyload.i.i.i.prol = load i64, ptr %i.bp, align 8, !tbaa !44, !alias.scope !1919, !noalias !1922
  %i.bq = lshr i64 %.sroa.05.0.copyload.i.i.i.prol, 24
  %i.br = uitofp nneg i64 %i.bq to double
  %i.bs = fdiv double %i.br, 1.000000e+06
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.014.i.i.i
  store double %i.bs, ptr %i.bt, align 8, !tbaa !359, !alias.scope !1922, !noalias !1919
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.f, %.lr.ph11.i.i.i.prol
  %i.bu = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.bu, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.bv = icmp eq i64 %i.bb, %.neg
  br i1 %i.bv, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader86, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader86 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.19.i.i.i
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.bw, align 8, !tbaa !44, !alias.scope !1919, !noalias !1922
  %i.bx = lshr i64 %.sroa.07.0.copyload.i.i.i, 24
  %i.by = uitofp nneg i64 %i.bx to double
  %i.bz = fdiv double %i.by, 1.000000e+06
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.19.i.i.i
  store double %i.bz, ptr %i.ca, align 8, !tbaa !359, !alias.scope !1922, !noalias !1919
  %i.cb = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cb, %i.bb
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1930

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.i
  %.210.i.i.i = phi i64 [ %i.ct, %bb.i ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.cc = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = and i64 %i.cd, %i.az
  %.not.i.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph11.i.i.i
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.210.i.i.i
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.cf, align 8, !tbaa !44, !alias.scope !1919, !noalias !1922
  %i.cg = lshr i64 %.sroa.05.0.copyload.i.i.i, 24
  %i.ch = uitofp nneg i64 %i.cg to double
  %i.ci = fdiv double %i.ch, 1.000000e+06
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.210.i.i.i
  store double %i.ci, ptr %i.cj, align 8, !tbaa !359, !alias.scope !1922, !noalias !1919
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.g, %.lr.ph11.i.i.i
  %i.ck = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.cl = sub nuw i64 %i.ck, %.014.i.i.i
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = and i64 %i.cm, %i.az
  %.not.i.i.i.1 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ck
  %.sroa.05.0.copyload.i.i.i.1 = load i64, ptr %i.co, align 8, !tbaa !44, !alias.scope !1919, !noalias !1922
  %i.cp = lshr i64 %.sroa.05.0.copyload.i.i.i.1, 24
  %i.cq = uitofp nneg i64 %i.cp to double
  %i.cr = fdiv double %i.cq, 1.000000e+06
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ck
  store double %i.cr, ptr %i.cs, align 8, !tbaa !359, !alias.scope !1922, !noalias !1919
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph11.i.i.i.1
  %i.ct = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.ct, %i.bb
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !1931

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.i, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.bb, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.bb, %middle.block ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.bb, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.bb, %bb.i ], [ %i.bb, %.lr.ph.i.i.i ]
  %i.cu = add nuw nsw i64 %.05713.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.cu, %i.ad
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !1928

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.05616.i.i.i = phi i64 [ %i.da, %.lr.ph17.i.i.i ], [ %.05616.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.05616.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cv, align 8, !tbaa !44, !alias.scope !1919, !noalias !1922
  %i.cw = lshr i64 %.sroa.0.0.copyload.i.i.i, 24
  %i.cx = uitofp nneg i64 %i.cw to double
  %i.cy = fdiv double %i.cx, 1.000000e+06
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05616.i.i.i
  store double %i.cy, ptr %i.cz, align 8, !tbaa !359, !alias.scope !1922, !noalias !1919
  %i.da = add nuw i64 %.05616.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.da, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor14GenericExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart12PartOperatorINS4_13EpochOperatorEEEEEvRNS_6VectorES9_mPvb.exit, label %.lr.ph17.i.i.i, !llvm.loop !1932

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.l unwind label %bb.aj

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !96 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10dtime_tz_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !125 ; 7 uses
  %i.df = load ptr, ptr %3, align 8, !tbaa !134   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !97, !noalias !1940
  %.not.i.i60.i.i = icmp eq ptr %i.di, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.o
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_10dtime_tz_tEdNS_19GenericUnaryWrapperENS_12_GLOBAL__N_18DatePart12PartOperatorINS5_13EpochOperatorEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESI_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !143, !alias.scope !1938, !noalias !1941 ; 2 uses
  %.not.i30.i.i.i = icmp eq ptr %i.dj, null
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i30.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.s
  %.03.us.i.i.i = phi i64 [ %i.ee, %bb.s ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.dl = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.dm = and i64 %.03.us.i.i.i, 63
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !97, !noalias !1940
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dl
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !44, !noalias !1940
  %i.dq = shl nuw i64 1, %i.dm                    ; 2 uses
  %i.dr = and i64 %i.dp, %i.dq
  %.not.us.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not.us.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.03.us.i.i.i
  %.sroa.06.0.copyload.us.i.i.i = load i64, ptr %i.ds, align 8, !tbaa !44, !alias.scope !1933, !noalias !1942
  %i.dt = lshr i64 %.sroa.06.0.copyload.us.i.i.i, 24
  %i.du = uitofp nneg i64 %i.dt to double
  %i.dv = fdiv double %i.du, 1.000000e+06
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.03.us.i.i.i
  store double %i.dv, ptr %i.dw, align 8, !tbaa !359, !alias.scope !1936, !noalias !1943
  br label %bb.s

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.dx = load ptr, ptr %i.dg, align 8, !tbaa !97, !noalias !1940 ; 2 uses
  %.not.i31.us.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i31.us.i.i.i, label %bb.r, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_122DateDiffBinaryExecutorINS_7dtime_tES2_lEEvNS_17DatePartSpecifierERNS_6VectorES5_S5_m:bb.a
          cleanup
  br label %.loopexit.split-lp.i.i.i.i1411

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i1463: ; preds = %bb.zh
  %lpad.loopexit40.i.i.i.i1464 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i1411

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i1413: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit55.i.invoke.i.i.i.i1437, %bb.yy, %bb.yx, %bb.yw, %bb.yv
  %lpad.loopexit.split-lp41.i.i.i.i1414 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i1411

.loopexit.split-lp.i.i.i.i1411:                   ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i1413, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i1463, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i1479, %.loopexit.split-lp.loopexit.i.i.i.i1496, %.loopexit.i.i.i.i1512, %bb.aai
  %.pn.i.i.i.i1412 = phi { ptr, i32 } [ %i.clr, %bb.aai ], [ %lpad.loopexit.i.i.i.i1513, %.loopexit.i.i.i.i1512 ], [ %lpad.loopexit31.i.i.i.i1497, %.loopexit.split-lp.loopexit.i.i.i.i1496 ], [ %lpad.loopexit36.i.i.i.i1480, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i1479 ], [ %lpad.loopexit40.i.i.i.i1464, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i1463 ], [ %lpad.loopexit.split-lp41.i.i.i.i1414, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i1413 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %16) #25
  br label %bb.aaj

bb.aaj:                                           ; preds = %.loopexit.split-lp.i.i.i.i1411, %bb.aah
  %.pn.pn.i.i.i.i1410 = phi { ptr, i32 } [ %.pn.i.i.i.i1412, %.loopexit.split-lp.i.i.i.i1411 ], [ %i.clq, %bb.aah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %common.resume

_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_7dtime_tES2_lNS_28BinaryLambdaWrapperWithNullsEbZNS_12_GLOBAL__N_18DateDiff13BinaryExecuteIS2_S2_lNS5_15ISOYearOperatorEEEvRNS_6VectorES9_S9_mEUlS2_S2_RNS_12ValidityMaskEmE_EEvS9_S9_S9_mT4_.exit.i.i.i: ; preds = %bb.aag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i27.i.i.i.i1461, %bb.aac, %_ZN6duckdb15SelectionVectorD2Ev.exit.i24.i.i.i.i1458
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit

bb.aak:                                           ; preds = %bb.a
  %i.cls = load i8, ptr %1, align 8, !tbaa !82    ; 3 uses
  %i.clt = load i8, ptr %2, align 8, !tbaa !82    ; 3 uses
  %i.clu = icmp eq i8 %i.cls, 2                   ; 2 uses
  %i.clv = icmp eq i8 %i.clt, 2                   ; 2 uses
  %or.cond.i.i.i1598 = and i1 %i.clu, %i.clv
  br i1 %or.cond.i.i.i1598, label %bb.aal, label %bb.aan

bb.aal:                                           ; preds = %bb.aak
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.clw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.clx = load ptr, ptr %i.clw, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.cly = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.clz = load ptr, ptr %i.cly, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.cma = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cmb = load ptr, ptr %i.cma, align 8, !tbaa !96
  %i.cmc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cmd = load ptr, ptr %i.cmc, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i.i.i1662 = icmp eq ptr %i.cmd, null
  br i1 %.not.i.i.i.i.i.i1662, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i1664, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i1663

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i1663: ; preds = %bb.aal
  %i.cme = load i64, ptr %i.cmd, align 8, !tbaa !44
  %i.cmf = trunc i64 %i.cme to i1
  br i1 %i.cmf, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i1664, label %bb.aam

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i1664: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i1663, %bb.aal
  %i.cmg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cmh = load ptr, ptr %i.cmg, align 8, !tbaa !97 ; 2 uses
  %.not.i.i12.i.i.i.i1665 = icmp eq ptr %i.cmh, null
  br i1 %.not.i.i12.i.i.i.i1665, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i.i1667, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i.i1666

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i.i1666: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i1664
  %i.cmi = load i64, ptr %i.cmh, align 8, !tbaa !44
  %i.cmj = trunc i64 %i.cmi to i1
  br i1 %i.cmj, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i.i1667, label %bb.aam

bb.aam:                                           ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i.i1666, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i1663
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %3, i1 noundef zeroext true)
  br label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i.i1667: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i.i1666, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i1664
  %.sroa.01.0.copyload.i.i.i.i1668 = load i64, ptr %i.clx, align 8, !tbaa !44
  %.sroa.0.0.copyload.i.i.i.i1669 = load i64, ptr %i.clz, align 8, !tbaa !44
  %i.cmk = sub nsw i64 %.sroa.0.0.copyload.i.i.i.i1669, %.sroa.01.0.copyload.i.i.i.i1668
  store i64 %i.cmk, ptr %i.cmb, align 8, !tbaa !44
  br label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit

bb.aan:                                           ; preds = %bb.aak
  %i.cml = icmp eq i8 %i.cls, 0
  %or.cond3.i.i.i1599 = and i1 %i.cml, %i.clv
  br i1 %or.cond3.i.i.i1599, label %bb.aao, label %bb.aav

bb.aao:                                           ; preds = %bb.aan
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.cmm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cmn = load ptr, ptr %i.cmm, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.cmo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cmp = load ptr, ptr %i.cmo, align 8, !tbaa !96 ; 5 uses
  %i.cmq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cmr = load ptr, ptr %i.cmq, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i35.i.i.i1645 = icmp eq ptr %i.cmr, null
  br i1 %.not.i.i.i35.i.i.i1645, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i.i1647, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i.i1646

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i.i1646: ; preds = %bb.aao
  %i.cms = load i64, ptr %i.cmr, align 8, !tbaa !44
  %i.cmt = trunc i64 %i.cms to i1
  br i1 %i.cmt, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i.i1647, label %bb.aap

bb.aap:                                           ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i.i1646
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %3, i1 noundef zeroext true)
  br label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i.i1647: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i.i1646, %bb.aao
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.cmu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cmv = load ptr, ptr %i.cmu, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.cmw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.cmx = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.cmw, ptr noundef nonnull align 8 dereferenceable(32) %i.cmx, i64 noundef %4)
  %.val.i.i.i.i1648 = load ptr, ptr %i.cmw, align 8, !tbaa !97 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4952)
  %.not.i.i17.i.i.i.i1649 = icmp eq ptr %.val.i.i.i.i1648, null
  br i1 %.not.i.i17.i.i.i.i1649, label %.preheader.i.i.i.i.i1659, label %bb.aaq

.preheader.i.i.i.i.i1659:                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i.i1647
  %.not18.i.i.i.i.i = icmp eq i64 %4, 0
  br i1 %.not18.i.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph16.i.i.i.i.i

.lr.ph16.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i1659
  %.sroa.02.0.copyload.i.i.i.i.i1660 = load i64, ptr %i.cmp, align 8, !tbaa !44, !alias.scope !4950, !noalias !4954 ; 2 uses
  %min.iters.check4542 = icmp ult i64 %4, 4
  br i1 %min.iters.check4542, label %scalar.ph4541.preheader, label %vector.ph4543

vector.ph4543:                                    ; preds = %.lr.ph16.i.i.i.i.i
  %n.vec4545 = and i64 %4, -4                     ; 3 uses
  %broadcast.splatinsert4546 = insertelement <2 x i64> poison, i64 %.sroa.02.0.copyload.i.i.i.i.i1660, i64 0
  %broadcast.splat4547 = shufflevector <2 x i64> %broadcast.splatinsert4546, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body4548

vector.body4548:                                  ; preds = %vector.body4548, %vector.ph4543
  %index4549 = phi i64 [ 0, %vector.ph4543 ], [ %index.next4552, %vector.body4548 ] ; 3 uses
  %i.cmy = getelementptr inbounds nuw [8 x i8], ptr %i.cmn, i64 %index4549 ; 2 uses
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmy, i64 16
  %wide.load4550 = load <2 x i64>, ptr %i.cmy, align 8, !tbaa !44, !alias.scope !4947, !noalias !4955
  %wide.load4551 = load <2 x i64>, ptr %i.cmz, align 8, !tbaa !44, !alias.scope !4947, !noalias !4955
  %i.cna = sub nsw <2 x i64> %broadcast.splat4547, %wide.load4550
  %i.cnb = sub nsw <2 x i64> %broadcast.splat4547, %wide.load4551
  %i.cnc = getelementptr inbounds nuw [8 x i8], ptr %i.cmv, i64 %index4549 ; 2 uses
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cnc, i64 16
  store <2 x i64> %i.cna, ptr %i.cnc, align 8, !tbaa !44, !alias.scope !4952, !noalias !4956
  store <2 x i64> %i.cnb, ptr %i.cnd, align 8, !tbaa !44, !alias.scope !4952, !noalias !4956
  %index.next4552 = add nuw i64 %index4549, 4     ; 2 uses
  %i.cne = icmp eq i64 %index.next4552, %n.vec4545
  br i1 %i.cne, label %middle.block4553, label %vector.body4548, !llvm.loop !4957

middle.block4553:                                 ; preds = %vector.body4548
  %cmp.n4554 = icmp eq i64 %4, %n.vec4545
  br i1 %cmp.n4554, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %scalar.ph4541.preheader

scalar.ph4541.preheader:                          ; preds = %.lr.ph16.i.i.i.i.i, %middle.block4553
  %.06015.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.i.i.i.i.i ], [ %n.vec4545, %middle.block4553 ]
  br label %scalar.ph4541

bb.aaq:                                           ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i.i1647
  %i.cnf = add i64 %4, 63
  %i.cng = lshr i64 %i.cnf, 6                     ; 2 uses
  %.not17.i.i.i.i.i = icmp eq i64 %i.cng, 0
  br i1 %.not17.i.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1650

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1650: ; preds = %bb.aaq, %.loopexit5.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %.4.i.i.i.i.i1651, %.loopexit5.i.i.i.i.i ], [ 0, %bb.aaq ] ; 17 uses
  %.05913.i.i.i.i.i = phi i64 [ %i.cow, %.loopexit5.i.i.i.i.i ], [ 0, %bb.aaq ] ; 2 uses
  %i.cnh = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i1648, i64 %.05913.i.i.i.i.i
  %i.cni = load i64, ptr %i.cnh, align 8, !tbaa !44, !noalias !4958 ; 4 uses
  %i.cnj = add i64 %.014.i.i.i.i.i, 64
  %i.cnk = tail call noundef i64 @llvm.umin.i64(i64 %i.cnj, i64 %4) ; 12 uses
  switch i64 %i.cni, label %.preheader4.i.i.i.i.i [
    i64 -1, label %.preheader6.i.i.i.i.i
    i64 0, label %.loopexit5.i.i.i.i.i
  ]

.preheader6.i.i.i.i.i:                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1650
  %i.cnl = icmp ult i64 %.014.i.i.i.i.i, %i.cnk
  br i1 %i.cnl, label %.lr.ph.i.i.i.i.i1652, label %.loopexit5.i.i.i.i.i

.lr.ph.i.i.i.i.i1652:                             ; preds = %.preheader6.i.i.i.i.i
  %.sroa.015.0.copyload.i.i.i.i.i1653 = load i64, ptr %i.cmp, align 8, !tbaa !44, !alias.scope !4950, !noalias !4954 ; 2 uses
  %i.cnm = sub nuw i64 %i.cnk, %.014.i.i.i.i.i    ; 3 uses
  %min.iters.check4527 = icmp ult i64 %i.cnm, 4
  br i1 %min.iters.check4527, label %scalar.ph4526.preheader, label %vector.ph4528

vector.ph4528:                                    ; preds = %.lr.ph.i.i.i.i.i1652
  %n.vec4530 = and i64 %i.cnm, -4                 ; 3 uses
  %i.cnn = add i64 %.014.i.i.i.i.i, %n.vec4530
  %broadcast.splatinsert4531 = insertelement <2 x i64> poison, i64 %.sroa.015.0.copyload.i.i.i.i.i1653, i64 0
  %broadcast.splat4532 = shufflevector <2 x i64> %broadcast.splatinsert4531, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body4533

vector.body4533:                                  ; preds = %vector.body4533, %vector.ph4528
  %index4534 = phi i64 [ 0, %vector.ph4528 ], [ %index.next4537, %vector.body4533 ] ; 2 uses
  %i.cno = add nuw i64 %.014.i.i.i.i.i, %index4534 ; 2 uses
  %i.cnp = getelementptr inbounds nuw [8 x i8], ptr %i.cmn, i64 %i.cno ; 2 uses
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnp, i64 16
  %wide.load4535 = load <2 x i64>, ptr %i.cnp, align 8, !tbaa !44, !alias.scope !4947, !noalias !4955
  %wide.load4536 = load <2 x i64>, ptr %i.cnq, align 8, !tbaa !44, !alias.scope !4947, !noalias !4955
  %i.cnr = sub nsw <2 x i64> %broadcast.splat4532, %wide.load4535
  %i.cns = sub nsw <2 x i64> %broadcast.splat4532, %wide.load4536
  %i.cnt = getelementptr inbounds nuw [8 x i8], ptr %i.cmv, i64 %i.cno ; 2 uses
  %i.cnu = getelementptr inbounds nuw i8, ptr %i.cnt, i64 16
  store <2 x i64> %i.cnr, ptr %i.cnt, align 8, !tbaa !44, !alias.scope !4952, !noalias !4956
  store <2 x i64> %i.cns, ptr %i.cnu, align 8, !tbaa !44, !alias.scope !4952, !noalias !4956
  %index.next4537 = add nuw i64 %index4534, 4     ; 2 uses
  %i.cnv = icmp eq i64 %index.next4537, %n.vec4530
  br i1 %i.cnv, label %middle.block4538, label %vector.body4533, !llvm.loop !4959

middle.block4538:                                 ; preds = %vector.body4533
  %cmp.n4539 = icmp eq i64 %i.cnm, %n.vec4530
  br i1 %cmp.n4539, label %.loopexit5.i.i.i.i.i, label %scalar.ph4526.preheader

scalar.ph4526.preheader:                          ; preds = %.lr.ph.i.i.i.i.i1652, %middle.block4538
  %.19.i.i.i.i.i.ph = phi i64 [ %.014.i.i.i.i.i, %.lr.ph.i.i.i.i.i1652 ], [ %i.cnn, %middle.block4538 ]
  br label %scalar.ph4526

.preheader4.i.i.i.i.i:                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1650
  %i.cnw = icmp ult i64 %.014.i.i.i.i.i, %i.cnk
  br i1 %i.cnw, label %.lr.ph11.i.i.i.i.i.preheader, label %.loopexit5.i.i.i.i.i

.lr.ph11.i.i.i.i.i.preheader:                     ; preds = %.preheader4.i.i.i.i.i
  %i.cnx = sub nuw i64 %i.cnk, %.014.i.i.i.i.i
  %.neg4807 = add i64 %.014.i.i.i.i.i, 1
  %xtraiter4796 = and i64 %i.cnx, 1
  %lcmp.mod4797.not = icmp eq i64 %xtraiter4796, 0
  br i1 %lcmp.mod4797.not, label %.lr.ph11.i.i.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.i.i.prol

.lr.ph11.i.i.i.i.i.prol:                          ; preds = %.lr.ph11.i.i.i.i.i.preheader
  %i.cny = and i64 %i.cni, 1
  %.not.i.i.i.i.i1656.prol = icmp eq i64 %i.cny, 0
  br i1 %.not.i.i.i.i.i1656.prol, label %.lr.ph11.i.i.i.i.i.prol.loopexit.unr-lcssa, label %bb.aar

bb.aar:                                           ; preds = %.lr.ph11.i.i.i.i.i.prol
  %i.cnz = getelementptr inbounds nuw [8 x i8], ptr %i.cmn, i64 %.014.i.i.i.i.i
  %.sroa.011.0.copyload.i.i.i.i.i1657.prol = load i64, ptr %i.cnz, align 8, !tbaa !44, !alias.scope !4947, !noalias !4955
  %.sroa.010.0.copyload.i.i.i.i.i1658.prol = load i64, ptr %i.cmp, align 8, !tbaa !44, !alias.scope !4950, !noalias !4954
  %i.coa = sub nsw i64 %.sroa.010.0.copyload.i.i.i.i.i1658.prol, %.sroa.011.0.copyload.i.i.i.i.i1657.prol
  %i.cob = getelementptr inbounds nuw [8 x i8], ptr %i.cmv, i64 %.014.i.i.i.i.i
  store i64 %i.coa, ptr %i.cob, align 8, !tbaa !44, !alias.scope !4952, !noalias !4956
  br label %.lr.ph11.i.i.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.i.i.prol.loopexit.unr-lcssa:       ; preds = %bb.aar, %.lr.ph11.i.i.i.i.i.prol
  %i.coc = add nuw i64 %.014.i.i.i.i.i, 1
  br label %.lr.ph11.i.i.i.i.i.prol.loopexit

.lr.ph11.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph11.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.i.i.preheader
  %.210.i.i.i.i.i.unr = phi i64 [ %.014.i.i.i.i.i, %.lr.ph11.i.i.i.i.i.preheader ], [ %i.coc, %.lr.ph11.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.cod = icmp eq i64 %i.cnk, %.neg4807
  br i1 %i.cod, label %.loopexit5.i.i.i.i.i, label %.lr.ph11.i.i.i.i.i

scalar.ph4526:                                    ; preds = %scalar.ph4526.preheader, %scalar.ph4526
  %.19.i.i.i.i.i = phi i64 [ %i.coh, %scalar.ph4526 ], [ %.19.i.i.i.i.i.ph, %scalar.ph4526.preheader ] ; 3 uses
  %i.coe = getelementptr inbounds nuw [8 x i8], ptr %i.cmn, i64 %.19.i.i.i.i.i
  %.sroa.016.0.copyload.i.i.i.i.i1654 = load i64, ptr %i.coe, align 8, !tbaa !44, !alias.scope !4947, !noalias !4955
  %i.cof = sub nsw i64 %.sroa.015.0.copyload.i.i.i.i.i1653, %.sroa.016.0.copyload.i.i.i.i.i1654
  %i.cog = getelementptr inbounds nuw [8 x i8], ptr %i.cmv, i64 %.19.i.i.i.i.i
  store i64 %i.cof, ptr %i.cog, align 8, !tbaa !44, !alias.scope !4952, !noalias !4956
  %i.coh = add nuw i64 %.19.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i.i1655 = icmp eq i64 %i.coh, %i.cnk
  br i1 %exitcond.not.i.i.i.i.i1655, label %.loopexit5.i.i.i.i.i, label %scalar.ph4526, !llvm.loop !4960

.lr.ph11.i.i.i.i.i:                               ; preds = %.lr.ph11.i.i.i.i.i.prol.loopexit, %bb.aau
  %.210.i.i.i.i.i = phi i64 [ %i.cov, %bb.aau ], [ %.210.i.i.i.i.i.unr, %.lr.ph11.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.coi = sub nuw i64 %.210.i.i.i.i.i, %.014.i.i.i.i.i
  %i.coj = shl nuw i64 1, %i.coi
  %i.cok = and i64 %i.coj, %i.cni
  %.not.i.i.i.i.i1656 = icmp eq i64 %i.cok, 0
  br i1 %.not.i.i.i.i.i1656, label %.lr.ph11.i.i.i.i.i.1, label %bb.aas

bb.aas:                                           ; preds = %.lr.ph11.i.i.i.i.i
  %i.col = getelementptr inbounds nuw [8 x i8], ptr %i.cmn, i64 %.210.i.i.i.i.i
  %.sroa.011.0.copyload.i.i.i.i.i1657 = load i64, ptr %i.col, align 8, !tbaa !44, !alias.scope !4947, !noalias !4955
  %.sroa.010.0.copyload.i.i.i.i.i1658 = load i64, ptr %i.cmp, align 8, !tbaa !44, !alias.scope !4950, !noalias !4954
  %i.com = sub nsw i64 %.sroa.010.0.copyload.i.i.i.i.i1658, %.sroa.011.0.copyload.i.i.i.i.i1657
  %i.con = getelementptr inbounds nuw [8 x i8], ptr %i.cmv, i64 %.210.i.i.i.i.i
  store i64 %i.com, ptr %i.con, align 8, !tbaa !44, !alias.scope !4952, !noalias !4956
  br label %.lr.ph11.i.i.i.i.i.1

.lr.ph11.i.i.i.i.i.1:                             ; preds = %bb.aas, %.lr.ph11.i.i.i.i.i
  %i.coo = add nuw i64 %.210.i.i.i.i.i, 1         ; 3 uses
  %i.cop = sub nuw i64 %i.coo, %.014.i.i.i.i.i
  %i.coq = shl nuw i64 1, %i.cop
  %i.cor = and i64 %i.coq, %i.cni
  %.not.i.i.i.i.i1656.1 = icmp eq i64 %i.cor, 0
  br i1 %.not.i.i.i.i.i1656.1, label %bb.aau, label %bb.aat

bb.aat:                                           ; preds = %.lr.ph11.i.i.i.i.i.1
  %i.cos = getelementptr inbounds nuw [8 x i8], ptr %i.cmn, i64 %i.coo
  %.sroa.011.0.copyload.i.i.i.i.i1657.1 = load i64, ptr %i.cos, align 8, !tbaa !44, !alias.scope !4947, !noalias !4955
  %.sroa.010.0.copyload.i.i.i.i.i1658.1 = load i64, ptr %i.cmp, align 8, !tbaa !44, !alias.scope !4950, !noalias !4954
  %i.cot = sub nsw i64 %.sroa.010.0.copyload.i.i.i.i.i1658.1, %.sroa.011.0.copyload.i.i.i.i.i1657.1
  %i.cou = getelementptr inbounds nuw [8 x i8], ptr %i.cmv, i64 %i.coo
  store i64 %i.cot, ptr %i.cou, align 8, !tbaa !44, !alias.scope !4952, !noalias !4956
  br label %bb.aau

bb.aau:                                           ; preds = %bb.aat, %.lr.ph11.i.i.i.i.i.1
  %i.cov = add nuw i64 %.210.i.i.i.i.i, 2         ; 2 uses
  %exitcond22.not.i.i.i.i.i.1 = icmp eq i64 %i.cov, %i.cnk
  br i1 %exitcond22.not.i.i.i.i.i.1, label %.loopexit5.i.i.i.i.i, label %.lr.ph11.i.i.i.i.i, !llvm.loop !4961

.loopexit5.i.i.i.i.i:                             ; preds = %scalar.ph4526, %.lr.ph11.i.i.i.i.i.prol.loopexit, %bb.aau, %middle.block4538, %.preheader4.i.i.i.i.i, %.preheader6.i.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1650
  %.4.i.i.i.i.i1651 = phi i64 [ %i.cnk, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1650 ], [ %i.cnk, %middle.block4538 ], [ %.014.i.i.i.i.i, %.preheader4.i.i.i.i.i ], [ %.014.i.i.i.i.i, %.preheader6.i.i.i.i.i ], [ %i.cnk, %.lr.ph11.i.i.i.i.i.prol.loopexit ], [ %i.cnk, %bb.aau ], [ %i.cnk, %scalar.ph4526 ]
  %i.cow = add nuw nsw i64 %.05913.i.i.i.i.i, 1   ; 2 uses
  %exitcond23.not.i.i.i.i.i = icmp eq i64 %i.cow, %i.cng
  br i1 %exitcond23.not.i.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1650, !llvm.loop !4962

scalar.ph4541:                                    ; preds = %scalar.ph4541.preheader, %scalar.ph4541
  %.06015.i.i.i.i.i = phi i64 [ %i.cpa, %scalar.ph4541 ], [ %.06015.i.i.i.i.i.ph, %scalar.ph4541.preheader ] ; 3 uses
  %i.cox = getelementptr inbounds nuw [8 x i8], ptr %i.cmn, i64 %.06015.i.i.i.i.i
  %.sroa.03.0.copyload.i.i.i.i.i1661 = load i64, ptr %i.cox, align 8, !tbaa !44, !alias.scope !4947, !noalias !4955
  %i.coy = sub nsw i64 %.sroa.02.0.copyload.i.i.i.i.i1660, %.sroa.03.0.copyload.i.i.i.i.i1661
  %i.coz = getelementptr inbounds nuw [8 x i8], ptr %i.cmv, i64 %.06015.i.i.i.i.i
  store i64 %i.coy, ptr %i.coz, align 8, !tbaa !44, !alias.scope !4952, !noalias !4956
  %i.cpa = add nuw i64 %.06015.i.i.i.i.i, 1       ; 2 uses
  %exitcond24.not.i.i.i.i.i = icmp eq i64 %i.cpa, %4
  br i1 %exitcond24.not.i.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %scalar.ph4541, !llvm.loop !4963

bb.aav:                                           ; preds = %bb.aan
  %i.cpb = icmp eq i8 %i.clt, 0
  %or.cond5.i.i.i1600 = and i1 %i.clu, %i.cpb
  br i1 %or.cond5.i.i.i1600, label %bb.aaw, label %bb.abd

bb.aaw:                                           ; preds = %bb.aav
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.cpc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cpd = load ptr, ptr %i.cpc, align 8, !tbaa !96 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.cpe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cpf = load ptr, ptr %i.cpe, align 8, !tbaa !96 ; 7 uses
  %i.cpg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cph = load ptr, ptr %i.cpg, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i38.i.i.i1638 = icmp eq ptr %i.cph, null
  br i1 %.not.i.i.i38.i.i.i1638, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i.i1640, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i.i1639

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i.i1639: ; preds = %bb.aaw
  %i.cpi = load i64, ptr %i.cph, align 8, !tbaa !44
  %i.cpj = trunc i64 %i.cpi to i1
  br i1 %i.cpj, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i.i1640, label %bb.aax

bb.aax:                                           ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i.i1639
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %3, i1 noundef zeroext true)
  br label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i.i1640: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i.i1639, %bb.aaw
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.cpk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cpl = load ptr, ptr %i.cpk, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.cpm = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.cpn = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.cpm, ptr noundef nonnull align 8 dereferenceable(32) %i.cpn, i64 noundef %4)
  %.val.i41.i.i.i1641 = load ptr, ptr %i.cpm, align 8, !tbaa !97 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4969)
  %.not.i.i17.i42.i.i.i1642 = icmp eq ptr %.val.i41.i.i.i1641, null
  br i1 %.not.i.i17.i42.i.i.i1642, label %.preheader.i.i63.i.i.i, label %bb.aay

.preheader.i.i63.i.i.i:                           ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i.i1640
  %.not18.i.i64.i.i.i = icmp eq i64 %4, 0
  br i1 %.not18.i.i64.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph16.i.i65.i.i.i

.lr.ph16.i.i65.i.i.i:                             ; preds = %.preheader.i.i63.i.i.i
  %.sroa.03.0.copyload.i.i66.i.i.i = load i64, ptr %i.cpd, align 8, !tbaa !44, !alias.scope !4964, !noalias !4971 ; 2 uses
  %min.iters.check4512 = icmp ult i64 %4, 4
  br i1 %min.iters.check4512, label %scalar.ph4511.preheader, label %vector.ph4513

vector.ph4513:                                    ; preds = %.lr.ph16.i.i65.i.i.i
  %n.vec4515 = and i64 %4, -4                     ; 3 uses
  %broadcast.splatinsert4516 = insertelement <2 x i64> poison, i64 %.sroa.03.0.copyload.i.i66.i.i.i, i64 0
  %broadcast.splat4517 = shufflevector <2 x i64> %broadcast.splatinsert4516, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body4518

vector.body4518:                                  ; preds = %vector.body4518, %vector.ph4513
  %index4519 = phi i64 [ 0, %vector.ph4513 ], [ %index.next4522, %vector.body4518 ] ; 3 uses
  %i.cpo = getelementptr inbounds nuw [8 x i8], ptr %i.cpf, i64 %index4519 ; 2 uses
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpo, i64 16
  %wide.load4520 = load <2 x i64>, ptr %i.cpo, align 8, !tbaa !44, !alias.scope !4967, !noalias !4972
  %wide.load4521 = load <2 x i64>, ptr %i.cpp, align 8, !tbaa !44, !alias.scope !4967, !noalias !4972
  %i.cpq = sub nsw <2 x i64> %wide.load4520, %broadcast.splat4517
  %i.cpr = sub nsw <2 x i64> %wide.load4521, %broadcast.splat4517
  %i.cps = getelementptr inbounds nuw [8 x i8], ptr %i.cpl, i64 %index4519 ; 2 uses
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cps, i64 16
  store <2 x i64> %i.cpq, ptr %i.cps, align 8, !tbaa !44, !alias.scope !4969, !noalias !4973
  store <2 x i64> %i.cpr, ptr %i.cpt, align 8, !tbaa !44, !alias.scope !4969, !noalias !4973
  %index.next4522 = add nuw i64 %index4519, 4     ; 2 uses
  %i.cpu = icmp eq i64 %index.next4522, %n.vec4515
  br i1 %i.cpu, label %middle.block4523, label %vector.body4518, !llvm.loop !4974

middle.block4523:                                 ; preds = %vector.body4518
  %cmp.n4524 = icmp eq i64 %4, %n.vec4515
  br i1 %cmp.n4524, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %scalar.ph4511.preheader

scalar.ph4511.preheader:                          ; preds = %.lr.ph16.i.i65.i.i.i, %middle.block4523
  %.06015.i.i67.i.i.i.ph = phi i64 [ 0, %.lr.ph16.i.i65.i.i.i ], [ %n.vec4515, %middle.block4523 ]
  br label %scalar.ph4511

bb.aay:                                           ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i.i1640
  %i.cpv = add i64 %4, 63
  %i.cpw = lshr i64 %i.cpv, 6                     ; 2 uses
  %.not17.i.i43.i.i.i = icmp eq i64 %i.cpw, 0
  br i1 %.not17.i.i43.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1643

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1643: ; preds = %bb.aay, %.loopexit5.i.i47.i.i.i
  %.014.i.i45.i.i.i = phi i64 [ %.4.i.i48.i.i.i1644, %.loopexit5.i.i47.i.i.i ], [ 0, %bb.aay ] ; 17 uses
  %.05913.i.i46.i.i.i = phi i64 [ %i.crm, %.loopexit5.i.i47.i.i.i ], [ 0, %bb.aay ] ; 2 uses
  %i.cpx = getelementptr inbounds nuw [8 x i8], ptr %.val.i41.i.i.i1641, i64 %.05913.i.i46.i.i.i
  %i.cpy = load i64, ptr %i.cpx, align 8, !tbaa !44, !noalias !4975 ; 4 uses
  %i.cpz = add i64 %.014.i.i45.i.i.i, 64
  %i.cqa = tail call noundef i64 @llvm.umin.i64(i64 %i.cpz, i64 %4) ; 12 uses
  switch i64 %i.cpy, label %.preheader4.i.i56.i.i.i [
    i64 -1, label %.preheader6.i.i50.i.i.i
    i64 0, label %.loopexit5.i.i47.i.i.i
  ]

.preheader6.i.i50.i.i.i:                          ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1643
  %i.cqb = icmp ult i64 %.014.i.i45.i.i.i, %i.cqa
  br i1 %i.cqb, label %.lr.ph.i.i51.i.i.i, label %.loopexit5.i.i47.i.i.i

.lr.ph.i.i51.i.i.i:                               ; preds = %.preheader6.i.i50.i.i.i
  %.sroa.016.0.copyload.i.i52.i.i.i = load i64, ptr %i.cpd, align 8, !tbaa !44, !alias.scope !4964, !noalias !4971 ; 2 uses
  %i.cqc = sub nuw i64 %i.cqa, %.014.i.i45.i.i.i  ; 3 uses
  %min.iters.check4499 = icmp ult i64 %i.cqc, 4
  br i1 %min.iters.check4499, label %scalar.ph4498.preheader, label %vector.ph4500

vector.ph4500:                                    ; preds = %.lr.ph.i.i51.i.i.i
  %n.vec4502 = and i64 %i.cqc, -4                 ; 3 uses
  %i.cqd = add i64 %.014.i.i45.i.i.i, %n.vec4502
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.016.0.copyload.i.i52.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body4503

vector.body4503:                                  ; preds = %vector.body4503, %vector.ph4500
  %index4504 = phi i64 [ 0, %vector.ph4500 ], [ %index.next4507, %vector.body4503 ] ; 2 uses
  %i.cqe = add nuw i64 %.014.i.i45.i.i.i, %index4504 ; 2 uses
  %i.cqf = getelementptr inbounds nuw [8 x i8], ptr %i.cpf, i64 %i.cqe ; 2 uses
  %i.cqg = getelementptr inbounds nuw i8, ptr %i.cqf, i64 16
  %wide.load4505 = load <2 x i64>, ptr %i.cqf, align 8, !tbaa !44, !alias.scope !4967, !noalias !4972
  %wide.load4506 = load <2 x i64>, ptr %i.cqg, align 8, !tbaa !44, !alias.scope !4967, !noalias !4972
  %i.cqh = sub nsw <2 x i64> %wide.load4505, %broadcast.splat
  %i.cqi = sub nsw <2 x i64> %wide.load4506, %broadcast.splat
  %i.cqj = getelementptr inbounds nuw [8 x i8], ptr %i.cpl, i64 %i.cqe ; 2 uses
  %i.cqk = getelementptr inbounds nuw i8, ptr %i.cqj, i64 16
  store <2 x i64> %i.cqh, ptr %i.cqj, align 8, !tbaa !44, !alias.scope !4969, !noalias !4973
  store <2 x i64> %i.cqi, ptr %i.cqk, align 8, !tbaa !44, !alias.scope !4969, !noalias !4973
  %index.next4507 = add nuw i64 %index4504, 4     ; 2 uses
  %i.cql = icmp eq i64 %index.next4507, %n.vec4502
  br i1 %i.cql, label %middle.block4508, label %vector.body4503, !llvm.loop !4976

middle.block4508:                                 ; preds = %vector.body4503
  %cmp.n4509 = icmp eq i64 %i.cqc, %n.vec4502
  br i1 %cmp.n4509, label %.loopexit5.i.i47.i.i.i, label %scalar.ph4498.preheader

scalar.ph4498.preheader:                          ; preds = %.lr.ph.i.i51.i.i.i, %middle.block4508
  %.19.i.i53.i.i.i.ph = phi i64 [ %.014.i.i45.i.i.i, %.lr.ph.i.i51.i.i.i ], [ %i.cqd, %middle.block4508 ]
  br label %scalar.ph4498

.preheader4.i.i56.i.i.i:                          ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1643
  %i.cqm = icmp ult i64 %.014.i.i45.i.i.i, %i.cqa
  br i1 %i.cqm, label %.lr.ph11.i.i57.i.i.i.preheader, label %.loopexit5.i.i47.i.i.i

.lr.ph11.i.i57.i.i.i.preheader:                   ; preds = %.preheader4.i.i56.i.i.i
  %i.cqn = sub nuw i64 %i.cqa, %.014.i.i45.i.i.i
  %.neg4806 = add i64 %.014.i.i45.i.i.i, 1
  %xtraiter4794 = and i64 %i.cqn, 1
  %lcmp.mod4795.not = icmp eq i64 %xtraiter4794, 0
  br i1 %lcmp.mod4795.not, label %.lr.ph11.i.i57.i.i.i.prol.loopexit, label %.lr.ph11.i.i57.i.i.i.prol

.lr.ph11.i.i57.i.i.i.prol:                        ; preds = %.lr.ph11.i.i57.i.i.i.preheader
  %i.cqo = and i64 %i.cpy, 1
  %.not.i.i59.i.i.i.prol = icmp eq i64 %i.cqo, 0
  br i1 %.not.i.i59.i.i.i.prol, label %.lr.ph11.i.i57.i.i.i.prol.loopexit.unr-lcssa, label %bb.aaz

bb.aaz:                                           ; preds = %.lr.ph11.i.i57.i.i.i.prol
  %.sroa.011.0.copyload.i.i60.i.i.i.prol = load i64, ptr %i.cpd, align 8, !tbaa !44, !alias.scope !4964, !noalias !4971
  %i.cqp = getelementptr inbounds nuw [8 x i8], ptr %i.cpf, i64 %.014.i.i45.i.i.i
  %.sroa.010.0.copyload.i.i61.i.i.i.prol = load i64, ptr %i.cqp, align 8, !tbaa !44, !alias.scope !4967, !noalias !4972
  %i.cqq = sub nsw i64 %.sroa.010.0.copyload.i.i61.i.i.i.prol, %.sroa.011.0.copyload.i.i60.i.i.i.prol
  %i.cqr = getelementptr inbounds nuw [8 x i8], ptr %i.cpl, i64 %.014.i.i45.i.i.i
  store i64 %i.cqq, ptr %i.cqr, align 8, !tbaa !44, !alias.scope !4969, !noalias !4973
  br label %.lr.ph11.i.i57.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i57.i.i.i.prol.loopexit.unr-lcssa:     ; preds = %bb.aaz, %.lr.ph11.i.i57.i.i.i.prol
  %i.cqs = add nuw i64 %.014.i.i45.i.i.i, 1
  br label %.lr.ph11.i.i57.i.i.i.prol.loopexit

.lr.ph11.i.i57.i.i.i.prol.loopexit:               ; preds = %.lr.ph11.i.i57.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i57.i.i.i.preheader
  %.210.i.i58.i.i.i.unr = phi i64 [ %.014.i.i45.i.i.i, %.lr.ph11.i.i57.i.i.i.preheader ], [ %i.cqs, %.lr.ph11.i.i57.i.i.i.prol.loopexit.unr-lcssa ]
  %i.cqt = icmp eq i64 %i.cqa, %.neg4806
  br i1 %i.cqt, label %.loopexit5.i.i47.i.i.i, label %.lr.ph11.i.i57.i.i.i

scalar.ph4498:                                    ; preds = %scalar.ph4498.preheader, %scalar.ph4498
  %.19.i.i53.i.i.i = phi i64 [ %i.cqx, %scalar.ph4498 ], [ %.19.i.i53.i.i.i.ph, %scalar.ph4498.preheader ] ; 3 uses
  %i.cqu = getelementptr inbounds nuw [8 x i8], ptr %i.cpf, i64 %.19.i.i53.i.i.i
  %.sroa.015.0.copyload.i.i54.i.i.i = load i64, ptr %i.cqu, align 8, !tbaa !44, !alias.scope !4967, !noalias !4972
  %i.cqv = sub nsw i64 %.sroa.015.0.copyload.i.i54.i.i.i, %.sroa.016.0.copyload.i.i52.i.i.i
  %i.cqw = getelementptr inbounds nuw [8 x i8], ptr %i.cpl, i64 %.19.i.i53.i.i.i
  store i64 %i.cqv, ptr %i.cqw, align 8, !tbaa !44, !alias.scope !4969, !noalias !4973
  %i.cqx = add nuw i64 %.19.i.i53.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i55.i.i.i = icmp eq i64 %i.cqx, %i.cqa
  br i1 %exitcond.not.i.i55.i.i.i, label %.loopexit5.i.i47.i.i.i, label %scalar.ph4498, !llvm.loop !4977

.lr.ph11.i.i57.i.i.i:                             ; preds = %.lr.ph11.i.i57.i.i.i.prol.loopexit, %bb.abc
  %.210.i.i58.i.i.i = phi i64 [ %i.crl, %bb.abc ], [ %.210.i.i58.i.i.i.unr, %.lr.ph11.i.i57.i.i.i.prol.loopexit ] ; 5 uses
  %i.cqy = sub nuw i64 %.210.i.i58.i.i.i, %.014.i.i45.i.i.i
  %i.cqz = shl nuw i64 1, %i.cqy
  %i.cra = and i64 %i.cqz, %i.cpy
  %.not.i.i59.i.i.i = icmp eq i64 %i.cra, 0
  br i1 %.not.i.i59.i.i.i, label %.lr.ph11.i.i57.i.i.i.1, label %bb.aba

bb.aba:                                           ; preds = %.lr.ph11.i.i57.i.i.i
  %.sroa.011.0.copyload.i.i60.i.i.i = load i64, ptr %i.cpd, align 8, !tbaa !44, !alias.scope !4964, !noalias !4971
  %i.crb = getelementptr inbounds nuw [8 x i8], ptr %i.cpf, i64 %.210.i.i58.i.i.i
  %.sroa.010.0.copyload.i.i61.i.i.i = load i64, ptr %i.crb, align 8, !tbaa !44, !alias.scope !4967, !noalias !4972
  %i.crc = sub nsw i64 %.sroa.010.0.copyload.i.i61.i.i.i, %.sroa.011.0.copyload.i.i60.i.i.i
  %i.crd = getelementptr inbounds nuw [8 x i8], ptr %i.cpl, i64 %.210.i.i58.i.i.i
  store i64 %i.crc, ptr %i.crd, align 8, !tbaa !44, !alias.scope !4969, !noalias !4973
  br label %.lr.ph11.i.i57.i.i.i.1

.lr.ph11.i.i57.i.i.i.1:                           ; preds = %bb.aba, %.lr.ph11.i.i57.i.i.i
  %i.cre = add nuw i64 %.210.i.i58.i.i.i, 1       ; 3 uses
  %i.crf = sub nuw i64 %i.cre, %.014.i.i45.i.i.i
  %i.crg = shl nuw i64 1, %i.crf
  %i.crh = and i64 %i.crg, %i.cpy
  %.not.i.i59.i.i.i.1 = icmp eq i64 %i.crh, 0
  br i1 %.not.i.i59.i.i.i.1, label %bb.abc, label %bb.abb

bb.abb:                                           ; preds = %.lr.ph11.i.i57.i.i.i.1
  %.sroa.011.0.copyload.i.i60.i.i.i.1 = load i64, ptr %i.cpd, align 8, !tbaa !44, !alias.scope !4964, !noalias !4971
  %i.cri = getelementptr inbounds nuw [8 x i8], ptr %i.cpf, i64 %i.cre
  %.sroa.010.0.copyload.i.i61.i.i.i.1 = load i64, ptr %i.cri, align 8, !tbaa !44, !alias.scope !4967, !noalias !4972
  %i.crj = sub nsw i64 %.sroa.010.0.copyload.i.i61.i.i.i.1, %.sroa.011.0.copyload.i.i60.i.i.i.1
  %i.crk = getelementptr inbounds nuw [8 x i8], ptr %i.cpl, i64 %i.cre
  store i64 %i.crj, ptr %i.crk, align 8, !tbaa !44, !alias.scope !4969, !noalias !4973
  br label %bb.abc

bb.abc:                                           ; preds = %bb.abb, %.lr.ph11.i.i57.i.i.i.1
  %i.crl = add nuw i64 %.210.i.i58.i.i.i, 2       ; 2 uses
  %exitcond22.not.i.i62.i.i.i.1 = icmp eq i64 %i.crl, %i.cqa
  br i1 %exitcond22.not.i.i62.i.i.i.1, label %.loopexit5.i.i47.i.i.i, label %.lr.ph11.i.i57.i.i.i, !llvm.loop !4978

.loopexit5.i.i47.i.i.i:                           ; preds = %scalar.ph4498, %.lr.ph11.i.i57.i.i.i.prol.loopexit, %bb.abc, %middle.block4508, %.preheader4.i.i56.i.i.i, %.preheader6.i.i50.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1643
  %.4.i.i48.i.i.i1644 = phi i64 [ %i.cqa, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1643 ], [ %i.cqa, %middle.block4508 ], [ %.014.i.i45.i.i.i, %.preheader4.i.i56.i.i.i ], [ %.014.i.i45.i.i.i, %.preheader6.i.i50.i.i.i ], [ %i.cqa, %.lr.ph11.i.i57.i.i.i.prol.loopexit ], [ %i.cqa, %bb.abc ], [ %i.cqa, %scalar.ph4498 ]
  %i.crm = add nuw nsw i64 %.05913.i.i46.i.i.i, 1 ; 2 uses
  %exitcond23.not.i.i49.i.i.i = icmp eq i64 %i.crm, %i.cpw
  br i1 %exitcond23.not.i.i49.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1643, !llvm.loop !4979

scalar.ph4511:                                    ; preds = %scalar.ph4511.preheader, %scalar.ph4511
  %.06015.i.i67.i.i.i = phi i64 [ %i.crq, %scalar.ph4511 ], [ %.06015.i.i67.i.i.i.ph, %scalar.ph4511.preheader ] ; 3 uses
  %i.crn = getelementptr inbounds nuw [8 x i8], ptr %i.cpf, i64 %.06015.i.i67.i.i.i
  %.sroa.02.0.copyload.i.i68.i.i.i = load i64, ptr %i.crn, align 8, !tbaa !44, !alias.scope !4967, !noalias !4972
  %i.cro = sub nsw i64 %.sroa.02.0.copyload.i.i68.i.i.i, %.sroa.03.0.copyload.i.i66.i.i.i
  %i.crp = getelementptr inbounds nuw [8 x i8], ptr %i.cpl, i64 %.06015.i.i67.i.i.i
  store i64 %i.cro, ptr %i.crp, align 8, !tbaa !44, !alias.scope !4969, !noalias !4973
  %i.crq = add nuw i64 %.06015.i.i67.i.i.i, 1     ; 2 uses
  %exitcond24.not.i.i69.i.i.i = icmp eq i64 %i.crq, %4
  br i1 %exitcond24.not.i.i69.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %scalar.ph4511, !llvm.loop !4980

bb.abd:                                           ; preds = %bb.aav
  %i.crr = or i8 %i.clt, %i.cls
  %or.cond7.i.i.i1601 = icmp eq i8 %i.crr, 0
  br i1 %or.cond7.i.i.i1601, label %bb.abe, label %bb.abn

bb.abe:                                           ; preds = %bb.abd
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.crs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.crt = load ptr, ptr %i.crs, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.cru = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.crv = load ptr, ptr %i.cru, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.crw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.crx = load ptr, ptr %i.crw, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.cry = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.crz = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.cry, ptr noundef nonnull align 8 dereferenceable(32) %i.crz, i64 noundef %4)
  %i.csa = load ptr, ptr %i.cry, align 8, !tbaa !97
  %.not.i.i70.i.i.i = icmp eq ptr %i.csa, null
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.csb = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br i1 %.not.i.i70.i.i.i, label %bb.abf, label %bb.abg

bb.abf:                                           ; preds = %bb.abe
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.cry, ptr noundef nonnull align 8 dereferenceable(32) %i.csb, i64 noundef %4)
  br label %bb.abh

bb.abg:                                           ; preds = %bb.abe
  tail call void @_ZN6duckdb12ValidityMask7CombineERKS0_m(ptr noundef nonnull align 8 dereferenceable(32) %i.cry, ptr noundef nonnull align 8 dereferenceable(32) %i.csb, i64 noundef %4)
  br label %bb.abh

bb.abh:                                           ; preds = %bb.abg, %bb.abf
  %.val.i71.i.i.i = load ptr, ptr %i.cry, align 8, !tbaa !97 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4986)
  %.not.i.i.i72.i.i.i = icmp eq ptr %.val.i71.i.i.i, null
  br i1 %.not.i.i.i72.i.i.i, label %.preheader.i.i89.i.i.i, label %bb.abi

.preheader.i.i89.i.i.i:                           ; preds = %bb.abh
  %.not18.i.i90.i.i.i = icmp eq i64 %4, 0
  br i1 %.not18.i.i90.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph16.i.i91.i.i.i.preheader

.lr.ph16.i.i91.i.i.i.preheader:                   ; preds = %.preheader.i.i89.i.i.i
  %min.iters.check4484 = icmp ult i64 %4, 4
  br i1 %min.iters.check4484, label %.lr.ph16.i.i91.i.i.i.preheader4642, label %vector.ph4485

vector.ph4485:                                    ; preds = %.lr.ph16.i.i91.i.i.i.preheader
  %n.vec4487 = and i64 %4, -4                     ; 3 uses
  br label %vector.body4488

vector.body4488:                                  ; preds = %vector.body4488, %vector.ph4485
  %index4489 = phi i64 [ 0, %vector.ph4485 ], [ %index.next4494, %vector.body4488 ] ; 4 uses
  %i.csc = getelementptr inbounds nuw [8 x i8], ptr %i.crt, i64 %index4489 ; 2 uses
  %i.csd = getelementptr inbounds nuw i8, ptr %i.csc, i64 16
  %wide.load4490 = load <2 x i64>, ptr %i.csc, align 8, !tbaa !44, !alias.scope !4981, !noalias !4988
  %wide.load4491 = load <2 x i64>, ptr %i.csd, align 8, !tbaa !44, !alias.scope !4981, !noalias !4988
  %i.cse = getelementptr inbounds nuw [8 x i8], ptr %i.crv, i64 %index4489 ; 2 uses
  %i.csf = getelementptr inbounds nuw i8, ptr %i.cse, i64 16
  %wide.load4492 = load <2 x i64>, ptr %i.cse, align 8, !tbaa !44, !alias.scope !4984, !noalias !4989
  %wide.load4493 = load <2 x i64>, ptr %i.csf, align 8, !tbaa !44, !alias.scope !4984, !noalias !4989
  %i.csg = sub nsw <2 x i64> %wide.load4492, %wide.load4490
  %i.csh = sub nsw <2 x i64> %wide.load4493, %wide.load4491
  %i.csi = getelementptr inbounds nuw [8 x i8], ptr %i.crx, i64 %index4489 ; 2 uses
  %i.csj = getelementptr inbounds nuw i8, ptr %i.csi, i64 16
  store <2 x i64> %i.csg, ptr %i.csi, align 8, !tbaa !44, !alias.scope !4986, !noalias !4990
  store <2 x i64> %i.csh, ptr %i.csj, align 8, !tbaa !44, !alias.scope !4986, !noalias !4990
  %index.next4494 = add nuw i64 %index4489, 4     ; 2 uses
  %i.csk = icmp eq i64 %index.next4494, %n.vec4487
  br i1 %i.csk, label %middle.block4495, label %vector.body4488, !llvm.loop !4991

middle.block4495:                                 ; preds = %vector.body4488
  %cmp.n4496 = icmp eq i64 %4, %n.vec4487
  br i1 %cmp.n4496, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph16.i.i91.i.i.i.preheader4642

.lr.ph16.i.i91.i.i.i.preheader4642:               ; preds = %.lr.ph16.i.i91.i.i.i.preheader, %middle.block4495
  %.06915.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.i.i91.i.i.i.preheader ], [ %n.vec4487, %middle.block4495 ]
  br label %.lr.ph16.i.i91.i.i.i

bb.abi:                                           ; preds = %bb.abh
  %i.csl = add i64 %4, 63
  %i.csm = lshr i64 %i.csl, 6                     ; 2 uses
  %.not17.i.i73.i.i.i = icmp eq i64 %i.csm, 0
  br i1 %.not17.i.i73.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i: ; preds = %bb.abi, %.loopexit5.i.i76.i.i.i
  %.014.i.i75.i.i.i = phi i64 [ %.4.i.i77.i.i.i, %.loopexit5.i.i76.i.i.i ], [ 0, %bb.abi ] ; 18 uses
  %.06813.i.i.i.i.i = phi i64 [ %i.cui, %.loopexit5.i.i76.i.i.i ], [ 0, %bb.abi ] ; 2 uses
  %i.csn = getelementptr inbounds nuw [8 x i8], ptr %.val.i71.i.i.i, i64 %.06813.i.i.i.i.i
  %i.cso = load i64, ptr %i.csn, align 8, !tbaa !44, !noalias !4992 ; 4 uses
  %i.csp = add i64 %.014.i.i75.i.i.i, 64
  %i.csq = tail call noundef i64 @llvm.umin.i64(i64 %i.csp, i64 %4) ; 12 uses
  switch i64 %i.cso, label %.preheader4.i.i84.i.i.i [
    i64 -1, label %.preheader6.i.i79.i.i.i
    i64 0, label %.loopexit5.i.i76.i.i.i
  ]

.preheader6.i.i79.i.i.i:                          ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i
  %i.csr = icmp ult i64 %.014.i.i75.i.i.i, %i.csq
  br i1 %i.csr, label %.lr.ph.i.i80.i.i.i.preheader, label %.loopexit5.i.i76.i.i.i

.lr.ph.i.i80.i.i.i.preheader:                     ; preds = %.preheader6.i.i79.i.i.i
  %i.css = sub nuw i64 %i.csq, %.014.i.i75.i.i.i  ; 3 uses
  %min.iters.check4469 = icmp ult i64 %i.css, 4
  br i1 %min.iters.check4469, label %.lr.ph.i.i80.i.i.i.preheader4644, label %vector.ph4470

vector.ph4470:                                    ; preds = %.lr.ph.i.i80.i.i.i.preheader
  %n.vec4472 = and i64 %i.css, -4                 ; 3 uses
  %i.cst = add i64 %.014.i.i75.i.i.i, %n.vec4472
  br label %vector.body4473

vector.body4473:                                  ; preds = %vector.body4473, %vector.ph4470
  %index4474 = phi i64 [ 0, %vector.ph4470 ], [ %index.next4479, %vector.body4473 ] ; 2 uses
  %i.csu = add nuw i64 %.014.i.i75.i.i.i, %index4474 ; 3 uses
  %i.csv = getelementptr inbounds nuw [8 x i8], ptr %i.crt, i64 %i.csu ; 2 uses
  %i.csw = getelementptr inbounds nuw i8, ptr %i.csv, i64 16
  %wide.load4475 = load <2 x i64>, ptr %i.csv, align 8, !tbaa !44, !alias.scope !4981, !noalias !4988
  %wide.load4476 = load <2 x i64>, ptr %i.csw, align 8, !tbaa !44, !alias.scope !4981, !noalias !4988
  %i.csx = getelementptr inbounds nuw [8 x i8], ptr %i.crv, i64 %i.csu ; 2 uses
  %i.csy = getelementptr inbounds nuw i8, ptr %i.csx, i64 16
  %wide.load4477 = load <2 x i64>, ptr %i.csx, align 8, !tbaa !44, !alias.scope !4984, !noalias !4989
  %wide.load4478 = load <2 x i64>, ptr %i.csy, align 8, !tbaa !44, !alias.scope !4984, !noalias !4989
  %i.csz = sub nsw <2 x i64> %wide.load4477, %wide.load4475
  %i.cta = sub nsw <2 x i64> %wide.load4478, %wide.load4476
  %i.ctb = getelementptr inbounds nuw [8 x i8], ptr %i.crx, i64 %i.csu ; 2 uses
  %i.ctc = getelementptr inbounds nuw i8, ptr %i.ctb, i64 16
  store <2 x i64> %i.csz, ptr %i.ctb, align 8, !tbaa !44, !alias.scope !4986, !noalias !4990
  store <2 x i64> %i.cta, ptr %i.ctc, align 8, !tbaa !44, !alias.scope !4986, !noalias !4990
  %index.next4479 = add nuw i64 %index4474, 4     ; 2 uses
  %i.ctd = icmp eq i64 %index.next4479, %n.vec4472
  br i1 %i.ctd, label %middle.block4480, label %vector.body4473, !llvm.loop !4993

middle.block4480:                                 ; preds = %vector.body4473
  %cmp.n4481 = icmp eq i64 %i.css, %n.vec4472
  br i1 %cmp.n4481, label %.loopexit5.i.i76.i.i.i, label %.lr.ph.i.i80.i.i.i.preheader4644

.lr.ph.i.i80.i.i.i.preheader4644:                 ; preds = %.lr.ph.i.i80.i.i.i.preheader, %middle.block4480
  %.19.i.i81.i.i.i.ph = phi i64 [ %.014.i.i75.i.i.i, %.lr.ph.i.i80.i.i.i.preheader ], [ %i.cst, %middle.block4480 ]
  br label %.lr.ph.i.i80.i.i.i

.preheader4.i.i84.i.i.i:                          ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i
  %i.cte = icmp ult i64 %.014.i.i75.i.i.i, %i.csq
  br i1 %i.cte, label %.lr.ph11.i.i85.i.i.i.preheader, label %.loopexit5.i.i76.i.i.i

.lr.ph11.i.i85.i.i.i.preheader:                   ; preds = %.preheader4.i.i84.i.i.i
  %i.ctf = sub nuw i64 %i.csq, %.014.i.i75.i.i.i
  %.neg4805 = add i64 %.014.i.i75.i.i.i, 1
  %xtraiter4792 = and i64 %i.ctf, 1
  %lcmp.mod4793.not = icmp eq i64 %xtraiter4792, 0
  br i1 %lcmp.mod4793.not, label %.lr.ph11.i.i85.i.i.i.prol.loopexit, label %.lr.ph11.i.i85.i.i.i.prol

.lr.ph11.i.i85.i.i.i.prol:                        ; preds = %.lr.ph11.i.i85.i.i.i.preheader
  %i.ctg = and i64 %i.cso, 1
  %.not.i24.i.i.i.i1636.prol = icmp eq i64 %i.ctg, 0
  br i1 %.not.i24.i.i.i.i1636.prol, label %.lr.ph11.i.i85.i.i.i.prol.loopexit.unr-lcssa, label %bb.abj

bb.abj:                                           ; preds = %.lr.ph11.i.i85.i.i.i.prol
  %i.cth = getelementptr inbounds nuw [8 x i8], ptr %i.crt, i64 %.014.i.i75.i.i.i
  %.sroa.012.0.copyload.i.i.i.i.i1637.prol = load i64, ptr %i.cth, align 8, !tbaa !44, !alias.scope !4981, !noalias !4988
  %i.cti = getelementptr inbounds nuw [8 x i8], ptr %i.crv, i64 %.014.i.i75.i.i.i
  %.sroa.011.0.copyload.i.i87.i.i.i.prol = load i64, ptr %i.cti, align 8, !tbaa !44, !alias.scope !4984, !noalias !4989
  %i.ctj = sub nsw i64 %.sroa.011.0.copyload.i.i87.i.i.i.prol, %.sroa.012.0.copyload.i.i.i.i.i1637.prol
  %i.ctk = getelementptr inbounds nuw [8 x i8], ptr %i.crx, i64 %.014.i.i75.i.i.i
  store i64 %i.ctj, ptr %i.ctk, align 8, !tbaa !44, !alias.scope !4986, !noalias !4990
  br label %.lr.ph11.i.i85.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i85.i.i.i.prol.loopexit.unr-lcssa:     ; preds = %bb.abj, %.lr.ph11.i.i85.i.i.i.prol
  %i.ctl = add nuw i64 %.014.i.i75.i.i.i, 1
  br label %.lr.ph11.i.i85.i.i.i.prol.loopexit

.lr.ph11.i.i85.i.i.i.prol.loopexit:               ; preds = %.lr.ph11.i.i85.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i85.i.i.i.preheader
  %.210.i.i86.i.i.i.unr = phi i64 [ %.014.i.i75.i.i.i, %.lr.ph11.i.i85.i.i.i.preheader ], [ %i.ctl, %.lr.ph11.i.i85.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ctm = icmp eq i64 %i.csq, %.neg4805
  br i1 %i.ctm, label %.loopexit5.i.i76.i.i.i, label %.lr.ph11.i.i85.i.i.i

.lr.ph.i.i80.i.i.i:                               ; preds = %.lr.ph.i.i80.i.i.i.preheader4644, %.lr.ph.i.i80.i.i.i
  %.19.i.i81.i.i.i = phi i64 [ %i.ctr, %.lr.ph.i.i80.i.i.i ], [ %.19.i.i81.i.i.i.ph, %.lr.ph.i.i80.i.i.i.preheader4644 ] ; 4 uses
  %i.ctn = getelementptr inbounds nuw [8 x i8], ptr %i.crt, i64 %.19.i.i81.i.i.i
  %.sroa.017.0.copyload.i.i.i.i.i1635 = load i64, ptr %i.ctn, align 8, !tbaa !44, !alias.scope !4981, !noalias !4988
  %i.cto = getelementptr inbounds nuw [8 x i8], ptr %i.crv, i64 %.19.i.i81.i.i.i
  %.sroa.016.0.copyload.i.i82.i.i.i = load i64, ptr %i.cto, align 8, !tbaa !44, !alias.scope !4984, !noalias !4989
  %i.ctp = sub nsw i64 %.sroa.016.0.copyload.i.i82.i.i.i, %.sroa.017.0.copyload.i.i.i.i.i1635
  %i.ctq = getelementptr inbounds nuw [8 x i8], ptr %i.crx, i64 %.19.i.i81.i.i.i
  store i64 %i.ctp, ptr %i.ctq, align 8, !tbaa !44, !alias.scope !4986, !noalias !4990
  %i.ctr = add nuw i64 %.19.i.i81.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i83.i.i.i = icmp eq i64 %i.ctr, %i.csq
  br i1 %exitcond.not.i.i83.i.i.i, label %.loopexit5.i.i76.i.i.i, label %.lr.ph.i.i80.i.i.i, !llvm.loop !4994

.lr.ph11.i.i85.i.i.i:                             ; preds = %.lr.ph11.i.i85.i.i.i.prol.loopexit, %bb.abm
  %.210.i.i86.i.i.i = phi i64 [ %i.cuh, %bb.abm ], [ %.210.i.i86.i.i.i.unr, %.lr.ph11.i.i85.i.i.i.prol.loopexit ] ; 6 uses
  %i.cts = sub nuw i64 %.210.i.i86.i.i.i, %.014.i.i75.i.i.i
  %i.ctt = shl nuw i64 1, %i.cts
  %i.ctu = and i64 %i.ctt, %i.cso
  %.not.i24.i.i.i.i1636 = icmp eq i64 %i.ctu, 0
  br i1 %.not.i24.i.i.i.i1636, label %.lr.ph11.i.i85.i.i.i.1, label %bb.abk

bb.abk:                                           ; preds = %.lr.ph11.i.i85.i.i.i
  %i.ctv = getelementptr inbounds nuw [8 x i8], ptr %i.crt, i64 %.210.i.i86.i.i.i
  %.sroa.012.0.copyload.i.i.i.i.i1637 = load i64, ptr %i.ctv, align 8, !tbaa !44, !alias.scope !4981, !noalias !4988
  %i.ctw = getelementptr inbounds nuw [8 x i8], ptr %i.crv, i64 %.210.i.i86.i.i.i
  %.sroa.011.0.copyload.i.i87.i.i.i = load i64, ptr %i.ctw, align 8, !tbaa !44, !alias.scope !4984, !noalias !4989
  %i.ctx = sub nsw i64 %.sroa.011.0.copyload.i.i87.i.i.i, %.sroa.012.0.copyload.i.i.i.i.i1637
  %i.cty = getelementptr inbounds nuw [8 x i8], ptr %i.crx, i64 %.210.i.i86.i.i.i
  store i64 %i.ctx, ptr %i.cty, align 8, !tbaa !44, !alias.scope !4986, !noalias !4990
  br label %.lr.ph11.i.i85.i.i.i.1

.lr.ph11.i.i85.i.i.i.1:                           ; preds = %bb.abk, %.lr.ph11.i.i85.i.i.i
  %i.ctz = add nuw i64 %.210.i.i86.i.i.i, 1       ; 4 uses
  %i.cua = sub nuw i64 %i.ctz, %.014.i.i75.i.i.i
  %i.cub = shl nuw i64 1, %i.cua
  %i.cuc = and i64 %i.cub, %i.cso
  %.not.i24.i.i.i.i1636.1 = icmp eq i64 %i.cuc, 0
  br i1 %.not.i24.i.i.i.i1636.1, label %bb.abm, label %bb.abl

bb.abl:                                           ; preds = %.lr.ph11.i.i85.i.i.i.1
  %i.cud = getelementptr inbounds nuw [8 x i8], ptr %i.crt, i64 %i.ctz
  %.sroa.012.0.copyload.i.i.i.i.i1637.1 = load i64, ptr %i.cud, align 8, !tbaa !44, !alias.scope !4981, !noalias !4988
  %i.cue = getelementptr inbounds nuw [8 x i8], ptr %i.crv, i64 %i.ctz
  %.sroa.011.0.copyload.i.i87.i.i.i.1 = load i64, ptr %i.cue, align 8, !tbaa !44, !alias.scope !4984, !noalias !4989
  %i.cuf = sub nsw i64 %.sroa.011.0.copyload.i.i87.i.i.i.1, %.sroa.012.0.copyload.i.i.i.i.i1637.1
  %i.cug = getelementptr inbounds nuw [8 x i8], ptr %i.crx, i64 %i.ctz
  store i64 %i.cuf, ptr %i.cug, align 8, !tbaa !44, !alias.scope !4986, !noalias !4990
  br label %bb.abm

bb.abm:                                           ; preds = %bb.abl, %.lr.ph11.i.i85.i.i.i.1
  %i.cuh = add nuw i64 %.210.i.i86.i.i.i, 2       ; 2 uses
  %exitcond22.not.i.i88.i.i.i.1 = icmp eq i64 %i.cuh, %i.csq
  br i1 %exitcond22.not.i.i88.i.i.i.1, label %.loopexit5.i.i76.i.i.i, label %.lr.ph11.i.i85.i.i.i, !llvm.loop !4995

.loopexit5.i.i76.i.i.i:                           ; preds = %.lr.ph.i.i80.i.i.i, %.lr.ph11.i.i85.i.i.i.prol.loopexit, %bb.abm, %middle.block4480, %.preheader4.i.i84.i.i.i, %.preheader6.i.i79.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i
  %.4.i.i77.i.i.i = phi i64 [ %i.csq, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i ], [ %i.csq, %middle.block4480 ], [ %.014.i.i75.i.i.i, %.preheader4.i.i84.i.i.i ], [ %.014.i.i75.i.i.i, %.preheader6.i.i79.i.i.i ], [ %i.csq, %.lr.ph11.i.i85.i.i.i.prol.loopexit ], [ %i.csq, %bb.abm ], [ %i.csq, %.lr.ph.i.i80.i.i.i ]
  %i.cui = add nuw nsw i64 %.06813.i.i.i.i.i, 1   ; 2 uses
  %exitcond23.not.i.i78.i.i.i = icmp eq i64 %i.cui, %i.csm
  br i1 %exitcond23.not.i.i78.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i, !llvm.loop !4996

.lr.ph16.i.i91.i.i.i:                             ; preds = %.lr.ph16.i.i91.i.i.i.preheader4642, %.lr.ph16.i.i91.i.i.i
  %.06915.i.i.i.i.i = phi i64 [ %i.cun, %.lr.ph16.i.i91.i.i.i ], [ %.06915.i.i.i.i.i.ph, %.lr.ph16.i.i91.i.i.i.preheader4642 ] ; 4 uses
  %i.cuj = getelementptr inbounds nuw [8 x i8], ptr %i.crt, i64 %.06915.i.i.i.i.i
  %.sroa.03.0.copyload.i.i92.i.i.i = load i64, ptr %i.cuj, align 8, !tbaa !44, !alias.scope !4981, !noalias !4988
  %i.cuk = getelementptr inbounds nuw [8 x i8], ptr %i.crv, i64 %.06915.i.i.i.i.i
  %.sroa.02.0.copyload.i.i93.i.i.i = load i64, ptr %i.cuk, align 8, !tbaa !44, !alias.scope !4984, !noalias !4989
  %i.cul = sub nsw i64 %.sroa.02.0.copyload.i.i93.i.i.i, %.sroa.03.0.copyload.i.i92.i.i.i
  %i.cum = getelementptr inbounds nuw [8 x i8], ptr %i.crx, i64 %.06915.i.i.i.i.i
  store i64 %i.cul, ptr %i.cum, align 8, !tbaa !44, !alias.scope !4986, !noalias !4990
  %i.cun = add nuw i64 %.06915.i.i.i.i.i, 1       ; 2 uses
  %exitcond24.not.i.i94.i.i.i = icmp eq i64 %i.cun, %4
  br i1 %exitcond24.not.i.i94.i.i.i, label %_ZN6duckdb12_GLOBAL__N_18DateDiff13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph16.i.i91.i.i.i, !llvm.loop !4997

bb.abn:                                           ; preds = %bb.abd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %14)
          to label %bb.abo unwind label %bb.ada

bb.abo:                                           ; preds = %bb.abn
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %13)
          to label %bb.abp unwind label %bb.adb

bb.abp:                                           ; preds = %bb.abo
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %14)
          to label %bb.abq unwind label %bb.adb

bb.abq:                                           ; preds = %bb.abp
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
          to label %bb.abr unwind label %bb.adb

bb.abr:                                           ; preds = %bb.abq
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.abs unwind label %.loopexit.split-lp.i.i.i.i1604

bb.abs:                                           ; preds = %bb.abr
  %i.cuo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cup = load ptr, ptr %i.cuo, align 8, !tbaa !96 ; 12 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_7dtime_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %13)
          to label %bb.abt unwind label %.loopexit.split-lp.i.i.i.i1604

bb.abt:                                           ; preds = %bb.abs
  %i.cuq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cur = load ptr, ptr %i.cuq, align 8, !tbaa !125 ; 12 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_7dtime_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %14)
          to label %bb.abu unwind label %.loopexit.split-lp.i.i.i.i1604

bb.abu:                                           ; preds = %bb.abt
  %i.cus = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cut = load ptr, ptr %i.cus, align 8, !tbaa !125 ; 12 uses
  %i.cuu = load ptr, ptr %13, align 8, !tbaa !134 ; 2 uses
  %i.cuv = load ptr, ptr %14, align 8, !tbaa !134 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.abv unwind label %.loopexit.split-lp.i.i.i.i1604

bb.abv:                                           ; preds = %bb.abu
  %i.cuw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.cux = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cuy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4998)
  call void @llvm.experimental.noalias.scope.decl(metadata !5001)
  call void @llvm.experimental.noalias.scope.decl(metadata !5003)
  call void @llvm.experimental.noalias.scope.decl(metadata !5005)
  call void @llvm.experimental.noalias.scope.decl(metadata !5007)
  %i.cuz = load ptr, ptr %i.cuy, align 8, !tbaa !97, !noalias !5009
  %.not.i.i.i95.i.i.i = icmp eq ptr %i.cuz, null
  %i.cva = load ptr, ptr %i.cux, align 8, !noalias !5009
  %.not.i43.i.i.i.i.i1605 = icmp eq ptr %i.cva, null
  %or.cond.i.i.i.i.i1606 = select i1 %.not.i.i.i95.i.i.i, i1 %.not.i43.i.i.i.i.i1605, i1 false
  %.not70.i.i.i.i.i = icmp eq i64 %4, 0           ; 2 uses
  br i1 %or.cond.i.i.i.i.i1606, label %.preheader.i.i101.i.i.i, label %.preheader59.i.i.i.i.i

.preheader59.i.i.i.i.i:                           ; preds = %bb.abv
  br i1 %.not70.i.i.i.i.i, label %_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_7dtime_tES2_lNS_28BinaryLambdaWrapperWithNullsEbZNS_12_GLOBAL__N_18DateDiff13BinaryExecuteIS2_S2_lNS5_20MicrosecondsOperatorEEEvRNS_6VectorES9_S9_mEUlS2_S2_RNS_12ValidityMaskEmE_EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESN_mSB_SB_SB_T4_.exit.i.i.i.i, label %.lr.ph.i.i96.i.i.i

.lr.ph.i.i96.i.i.i:                               ; preds = %.preheader59.i.i.i.i.i
  %i.cvb = load ptr, ptr %i.cuu, align 8, !tbaa !143, !alias.scope !5005, !noalias !5010 ; 2 uses
  %.not.i44.i.i.i.i.i1607 = icmp eq ptr %i.cvb, null
end_hunk_3
begin_hunk_4_@_ZN6duckdb12_GLOBAL__N_121DateSubBinaryExecutorINS_7dtime_tES2_lEEvNS_17DatePartSpecifierERNS_6VectorES5_S5_m:bb.a
          cleanup
  br label %.loopexit.split-lp.i.i.i.i1215

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i1267: ; preds = %bb.wg
  %lpad.loopexit40.i.i.i.i1268 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i1215

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i1217: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit55.i.invoke.i.i.i.i1241, %bb.vx, %bb.vw, %bb.vv, %bb.vu
  %lpad.loopexit.split-lp41.i.i.i.i1218 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i1215

.loopexit.split-lp.i.i.i.i1215:                   ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i1217, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i1267, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i1283, %.loopexit.split-lp.loopexit.i.i.i.i1300, %.loopexit.i.i.i.i1316, %bb.xh
  %.pn.i.i.i.i1216 = phi { ptr, i32 } [ %i.cbp, %bb.xh ], [ %lpad.loopexit.i.i.i.i1317, %.loopexit.i.i.i.i1316 ], [ %lpad.loopexit31.i.i.i.i1301, %.loopexit.split-lp.loopexit.i.i.i.i1300 ], [ %lpad.loopexit36.i.i.i.i1284, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i1283 ], [ %lpad.loopexit40.i.i.i.i1268, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i1267 ], [ %lpad.loopexit.split-lp41.i.i.i.i1218, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i1217 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %16) #25
  br label %bb.xi

bb.xi:                                            ; preds = %.loopexit.split-lp.i.i.i.i1215, %bb.xg
  %.pn.pn.i.i.i.i1214 = phi { ptr, i32 } [ %.pn.i.i.i.i1216, %.loopexit.split-lp.i.i.i.i1215 ], [ %i.cbo, %bb.xg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %common.resume

_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_7dtime_tES2_lNS_28BinaryLambdaWrapperWithNullsEbZNS_12_GLOBAL__N_17DateSub13BinaryExecuteIS2_S2_lNS5_12WeekOperatorEEEvRNS_6VectorES9_S9_mEUlS2_S2_RNS_12ValidityMaskEmE_EEvS9_S9_S9_mT4_.exit.i.i.i: ; preds = %bb.xf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i27.i.i.i.i1265, %bb.xb, %_ZN6duckdb15SelectionVectorD2Ev.exit.i24.i.i.i.i1262
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit

bb.xj:                                            ; preds = %bb.a
  %i.cbq = load i8, ptr %1, align 8, !tbaa !82    ; 3 uses
  %i.cbr = load i8, ptr %2, align 8, !tbaa !82    ; 3 uses
  %i.cbs = icmp eq i8 %i.cbq, 2                   ; 2 uses
  %i.cbt = icmp eq i8 %i.cbr, 2                   ; 2 uses
  %or.cond.i.i.i1402 = and i1 %i.cbs, %i.cbt
  br i1 %or.cond.i.i.i1402, label %bb.xk, label %bb.xm

bb.xk:                                            ; preds = %bb.xj
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.cbu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cbv = load ptr, ptr %i.cbu, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.cbw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cbx = load ptr, ptr %i.cbw, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.cby = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cbz = load ptr, ptr %i.cby, align 8, !tbaa !96
  %i.cca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ccb = load ptr, ptr %i.cca, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i.i.i1466 = icmp eq ptr %i.ccb, null
  br i1 %.not.i.i.i.i.i.i1466, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i1468, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i1467

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i1467: ; preds = %bb.xk
  %i.ccc = load i64, ptr %i.ccb, align 8, !tbaa !44
  %i.ccd = trunc i64 %i.ccc to i1
  br i1 %i.ccd, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i1468, label %bb.xl

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i1468: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i1467, %bb.xk
  %i.cce = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ccf = load ptr, ptr %i.cce, align 8, !tbaa !97 ; 2 uses
  %.not.i.i12.i.i.i.i1469 = icmp eq ptr %i.ccf, null
  br i1 %.not.i.i12.i.i.i.i1469, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i.i1471, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i.i1470

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i.i1470: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i1468
  %i.ccg = load i64, ptr %i.ccf, align 8, !tbaa !44
  %i.cch = trunc i64 %i.ccg to i1
  br i1 %i.cch, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i.i1471, label %bb.xl

bb.xl:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i.i1470, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i.i1467
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %3, i1 noundef zeroext true)
  br label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i.i1471: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i.i1470, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i.i1468
  %.sroa.01.0.copyload.i.i.i.i1472 = load i64, ptr %i.cbv, align 8, !tbaa !44
  %.sroa.0.0.copyload.i.i.i.i1473 = load i64, ptr %i.cbx, align 8, !tbaa !44
  %i.cci = sub nsw i64 %.sroa.0.0.copyload.i.i.i.i1473, %.sroa.01.0.copyload.i.i.i.i1472
  store i64 %i.cci, ptr %i.cbz, align 8, !tbaa !44
  br label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit

bb.xm:                                            ; preds = %bb.xj
  %i.ccj = icmp eq i8 %i.cbq, 0
  %or.cond3.i.i.i1403 = and i1 %i.ccj, %i.cbt
  br i1 %or.cond3.i.i.i1403, label %bb.xn, label %bb.xu

bb.xn:                                            ; preds = %bb.xm
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.cck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ccl = load ptr, ptr %i.cck, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ccm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ccn = load ptr, ptr %i.ccm, align 8, !tbaa !96 ; 5 uses
  %i.cco = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ccp = load ptr, ptr %i.cco, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i35.i.i.i1449 = icmp eq ptr %i.ccp, null
  br i1 %.not.i.i.i35.i.i.i1449, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i.i1451, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i.i1450

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i.i1450: ; preds = %bb.xn
  %i.ccq = load i64, ptr %i.ccp, align 8, !tbaa !44
  %i.ccr = trunc i64 %i.ccq to i1
  br i1 %i.ccr, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i.i1451, label %bb.xo

bb.xo:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i.i1450
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %3, i1 noundef zeroext true)
  br label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i.i1451: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i.i1450, %bb.xn
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.ccs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cct = load ptr, ptr %i.ccs, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.ccu = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ccv = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.ccu, ptr noundef nonnull align 8 dereferenceable(32) %i.ccv, i64 noundef %4)
  %.val.i.i.i.i1452 = load ptr, ptr %i.ccu, align 8, !tbaa !97 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8046)
  %.not.i.i17.i.i.i.i1453 = icmp eq ptr %.val.i.i.i.i1452, null
  br i1 %.not.i.i17.i.i.i.i1453, label %.preheader.i.i.i.i.i1463, label %bb.xp

.preheader.i.i.i.i.i1463:                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i.i1451
  %.not18.i.i.i.i.i = icmp eq i64 %4, 0
  br i1 %.not18.i.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph16.i.i.i.i.i

.lr.ph16.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i1463
  %.sroa.02.0.copyload.i.i.i.i.i1464 = load i64, ptr %i.ccn, align 8, !tbaa !44, !alias.scope !8044, !noalias !8048 ; 2 uses
  %min.iters.check4181 = icmp ult i64 %4, 4
  br i1 %min.iters.check4181, label %scalar.ph4180.preheader, label %vector.ph4182

vector.ph4182:                                    ; preds = %.lr.ph16.i.i.i.i.i
  %n.vec4184 = and i64 %4, -4                     ; 3 uses
  %broadcast.splatinsert4185 = insertelement <2 x i64> poison, i64 %.sroa.02.0.copyload.i.i.i.i.i1464, i64 0
  %broadcast.splat4186 = shufflevector <2 x i64> %broadcast.splatinsert4185, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body4187

vector.body4187:                                  ; preds = %vector.body4187, %vector.ph4182
  %index4188 = phi i64 [ 0, %vector.ph4182 ], [ %index.next4191, %vector.body4187 ] ; 3 uses
  %i.ccw = getelementptr inbounds nuw [8 x i8], ptr %i.ccl, i64 %index4188 ; 2 uses
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccw, i64 16
  %wide.load4189 = load <2 x i64>, ptr %i.ccw, align 8, !tbaa !44, !alias.scope !8041, !noalias !8049
  %wide.load4190 = load <2 x i64>, ptr %i.ccx, align 8, !tbaa !44, !alias.scope !8041, !noalias !8049
  %i.ccy = sub nsw <2 x i64> %broadcast.splat4186, %wide.load4189
  %i.ccz = sub nsw <2 x i64> %broadcast.splat4186, %wide.load4190
  %i.cda = getelementptr inbounds nuw [8 x i8], ptr %i.cct, i64 %index4188 ; 2 uses
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.cda, i64 16
  store <2 x i64> %i.ccy, ptr %i.cda, align 8, !tbaa !44, !alias.scope !8046, !noalias !8050
  store <2 x i64> %i.ccz, ptr %i.cdb, align 8, !tbaa !44, !alias.scope !8046, !noalias !8050
  %index.next4191 = add nuw i64 %index4188, 4     ; 2 uses
  %i.cdc = icmp eq i64 %index.next4191, %n.vec4184
  br i1 %i.cdc, label %middle.block4192, label %vector.body4187, !llvm.loop !8051

middle.block4192:                                 ; preds = %vector.body4187
  %cmp.n4193 = icmp eq i64 %4, %n.vec4184
  br i1 %cmp.n4193, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %scalar.ph4180.preheader

scalar.ph4180.preheader:                          ; preds = %.lr.ph16.i.i.i.i.i, %middle.block4192
  %.06015.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.i.i.i.i.i ], [ %n.vec4184, %middle.block4192 ]
  br label %scalar.ph4180

bb.xp:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i.i1451
  %i.cdd = add i64 %4, 63
  %i.cde = lshr i64 %i.cdd, 6                     ; 2 uses
  %.not17.i.i.i.i.i = icmp eq i64 %i.cde, 0
  br i1 %.not17.i.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1454

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1454: ; preds = %bb.xp, %.loopexit5.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %.4.i.i.i.i.i1455, %.loopexit5.i.i.i.i.i ], [ 0, %bb.xp ] ; 17 uses
  %.05913.i.i.i.i.i = phi i64 [ %i.ceu, %.loopexit5.i.i.i.i.i ], [ 0, %bb.xp ] ; 2 uses
  %i.cdf = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i1452, i64 %.05913.i.i.i.i.i
  %i.cdg = load i64, ptr %i.cdf, align 8, !tbaa !44, !noalias !8052 ; 4 uses
  %i.cdh = add i64 %.014.i.i.i.i.i, 64
  %i.cdi = tail call noundef i64 @llvm.umin.i64(i64 %i.cdh, i64 %4) ; 12 uses
  switch i64 %i.cdg, label %.preheader4.i.i.i.i.i [
    i64 -1, label %.preheader6.i.i.i.i.i
    i64 0, label %.loopexit5.i.i.i.i.i
  ]

.preheader6.i.i.i.i.i:                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1454
  %i.cdj = icmp ult i64 %.014.i.i.i.i.i, %i.cdi
  br i1 %i.cdj, label %.lr.ph.i.i.i.i.i1456, label %.loopexit5.i.i.i.i.i

.lr.ph.i.i.i.i.i1456:                             ; preds = %.preheader6.i.i.i.i.i
  %.sroa.015.0.copyload.i.i.i.i.i1457 = load i64, ptr %i.ccn, align 8, !tbaa !44, !alias.scope !8044, !noalias !8048 ; 2 uses
  %i.cdk = sub nuw i64 %i.cdi, %.014.i.i.i.i.i    ; 3 uses
  %min.iters.check4166 = icmp ult i64 %i.cdk, 4
  br i1 %min.iters.check4166, label %scalar.ph4165.preheader, label %vector.ph4167

vector.ph4167:                                    ; preds = %.lr.ph.i.i.i.i.i1456
  %n.vec4169 = and i64 %i.cdk, -4                 ; 3 uses
  %i.cdl = add i64 %.014.i.i.i.i.i, %n.vec4169
  %broadcast.splatinsert4170 = insertelement <2 x i64> poison, i64 %.sroa.015.0.copyload.i.i.i.i.i1457, i64 0
  %broadcast.splat4171 = shufflevector <2 x i64> %broadcast.splatinsert4170, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body4172

vector.body4172:                                  ; preds = %vector.body4172, %vector.ph4167
  %index4173 = phi i64 [ 0, %vector.ph4167 ], [ %index.next4176, %vector.body4172 ] ; 2 uses
  %i.cdm = add nuw i64 %.014.i.i.i.i.i, %index4173 ; 2 uses
  %i.cdn = getelementptr inbounds nuw [8 x i8], ptr %i.ccl, i64 %i.cdm ; 2 uses
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cdn, i64 16
  %wide.load4174 = load <2 x i64>, ptr %i.cdn, align 8, !tbaa !44, !alias.scope !8041, !noalias !8049
  %wide.load4175 = load <2 x i64>, ptr %i.cdo, align 8, !tbaa !44, !alias.scope !8041, !noalias !8049
  %i.cdp = sub nsw <2 x i64> %broadcast.splat4171, %wide.load4174
  %i.cdq = sub nsw <2 x i64> %broadcast.splat4171, %wide.load4175
  %i.cdr = getelementptr inbounds nuw [8 x i8], ptr %i.cct, i64 %i.cdm ; 2 uses
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 16
  store <2 x i64> %i.cdp, ptr %i.cdr, align 8, !tbaa !44, !alias.scope !8046, !noalias !8050
  store <2 x i64> %i.cdq, ptr %i.cds, align 8, !tbaa !44, !alias.scope !8046, !noalias !8050
  %index.next4176 = add nuw i64 %index4173, 4     ; 2 uses
  %i.cdt = icmp eq i64 %index.next4176, %n.vec4169
  br i1 %i.cdt, label %middle.block4177, label %vector.body4172, !llvm.loop !8053

middle.block4177:                                 ; preds = %vector.body4172
  %cmp.n4178 = icmp eq i64 %i.cdk, %n.vec4169
  br i1 %cmp.n4178, label %.loopexit5.i.i.i.i.i, label %scalar.ph4165.preheader

scalar.ph4165.preheader:                          ; preds = %.lr.ph.i.i.i.i.i1456, %middle.block4177
  %.19.i.i.i.i.i.ph = phi i64 [ %.014.i.i.i.i.i, %.lr.ph.i.i.i.i.i1456 ], [ %i.cdl, %middle.block4177 ]
  br label %scalar.ph4165

.preheader4.i.i.i.i.i:                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1454
  %i.cdu = icmp ult i64 %.014.i.i.i.i.i, %i.cdi
  br i1 %i.cdu, label %.lr.ph11.i.i.i.i.i.preheader, label %.loopexit5.i.i.i.i.i

.lr.ph11.i.i.i.i.i.preheader:                     ; preds = %.preheader4.i.i.i.i.i
  %i.cdv = sub nuw i64 %i.cdi, %.014.i.i.i.i.i
  %.neg4549 = add i64 %.014.i.i.i.i.i, 1
  %xtraiter4534 = and i64 %i.cdv, 1
  %lcmp.mod4535.not = icmp eq i64 %xtraiter4534, 0
  br i1 %lcmp.mod4535.not, label %.lr.ph11.i.i.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.i.i.prol

.lr.ph11.i.i.i.i.i.prol:                          ; preds = %.lr.ph11.i.i.i.i.i.preheader
  %i.cdw = and i64 %i.cdg, 1
  %.not.i.i.i.i.i1460.prol = icmp eq i64 %i.cdw, 0
  br i1 %.not.i.i.i.i.i1460.prol, label %.lr.ph11.i.i.i.i.i.prol.loopexit.unr-lcssa, label %bb.xq

bb.xq:                                            ; preds = %.lr.ph11.i.i.i.i.i.prol
  %i.cdx = getelementptr inbounds nuw [8 x i8], ptr %i.ccl, i64 %.014.i.i.i.i.i
  %.sroa.011.0.copyload.i.i.i.i.i1461.prol = load i64, ptr %i.cdx, align 8, !tbaa !44, !alias.scope !8041, !noalias !8049
  %.sroa.010.0.copyload.i.i.i.i.i1462.prol = load i64, ptr %i.ccn, align 8, !tbaa !44, !alias.scope !8044, !noalias !8048
  %i.cdy = sub nsw i64 %.sroa.010.0.copyload.i.i.i.i.i1462.prol, %.sroa.011.0.copyload.i.i.i.i.i1461.prol
  %i.cdz = getelementptr inbounds nuw [8 x i8], ptr %i.cct, i64 %.014.i.i.i.i.i
  store i64 %i.cdy, ptr %i.cdz, align 8, !tbaa !44, !alias.scope !8046, !noalias !8050
  br label %.lr.ph11.i.i.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.i.i.prol.loopexit.unr-lcssa:       ; preds = %bb.xq, %.lr.ph11.i.i.i.i.i.prol
  %i.cea = add nuw i64 %.014.i.i.i.i.i, 1
  br label %.lr.ph11.i.i.i.i.i.prol.loopexit

.lr.ph11.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph11.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.i.i.preheader
  %.210.i.i.i.i.i.unr = phi i64 [ %.014.i.i.i.i.i, %.lr.ph11.i.i.i.i.i.preheader ], [ %i.cea, %.lr.ph11.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ceb = icmp eq i64 %i.cdi, %.neg4549
  br i1 %i.ceb, label %.loopexit5.i.i.i.i.i, label %.lr.ph11.i.i.i.i.i

scalar.ph4165:                                    ; preds = %scalar.ph4165.preheader, %scalar.ph4165
  %.19.i.i.i.i.i = phi i64 [ %i.cef, %scalar.ph4165 ], [ %.19.i.i.i.i.i.ph, %scalar.ph4165.preheader ] ; 3 uses
  %i.cec = getelementptr inbounds nuw [8 x i8], ptr %i.ccl, i64 %.19.i.i.i.i.i
  %.sroa.016.0.copyload.i.i.i.i.i1458 = load i64, ptr %i.cec, align 8, !tbaa !44, !alias.scope !8041, !noalias !8049
  %i.ced = sub nsw i64 %.sroa.015.0.copyload.i.i.i.i.i1457, %.sroa.016.0.copyload.i.i.i.i.i1458
  %i.cee = getelementptr inbounds nuw [8 x i8], ptr %i.cct, i64 %.19.i.i.i.i.i
  store i64 %i.ced, ptr %i.cee, align 8, !tbaa !44, !alias.scope !8046, !noalias !8050
  %i.cef = add nuw i64 %.19.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i.i1459 = icmp eq i64 %i.cef, %i.cdi
  br i1 %exitcond.not.i.i.i.i.i1459, label %.loopexit5.i.i.i.i.i, label %scalar.ph4165, !llvm.loop !8054

.lr.ph11.i.i.i.i.i:                               ; preds = %.lr.ph11.i.i.i.i.i.prol.loopexit, %bb.xt
  %.210.i.i.i.i.i = phi i64 [ %i.cet, %bb.xt ], [ %.210.i.i.i.i.i.unr, %.lr.ph11.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ceg = sub nuw i64 %.210.i.i.i.i.i, %.014.i.i.i.i.i
  %i.ceh = shl nuw i64 1, %i.ceg
  %i.cei = and i64 %i.ceh, %i.cdg
  %.not.i.i.i.i.i1460 = icmp eq i64 %i.cei, 0
  br i1 %.not.i.i.i.i.i1460, label %.lr.ph11.i.i.i.i.i.1, label %bb.xr

bb.xr:                                            ; preds = %.lr.ph11.i.i.i.i.i
  %i.cej = getelementptr inbounds nuw [8 x i8], ptr %i.ccl, i64 %.210.i.i.i.i.i
  %.sroa.011.0.copyload.i.i.i.i.i1461 = load i64, ptr %i.cej, align 8, !tbaa !44, !alias.scope !8041, !noalias !8049
  %.sroa.010.0.copyload.i.i.i.i.i1462 = load i64, ptr %i.ccn, align 8, !tbaa !44, !alias.scope !8044, !noalias !8048
  %i.cek = sub nsw i64 %.sroa.010.0.copyload.i.i.i.i.i1462, %.sroa.011.0.copyload.i.i.i.i.i1461
  %i.cel = getelementptr inbounds nuw [8 x i8], ptr %i.cct, i64 %.210.i.i.i.i.i
  store i64 %i.cek, ptr %i.cel, align 8, !tbaa !44, !alias.scope !8046, !noalias !8050
  br label %.lr.ph11.i.i.i.i.i.1

.lr.ph11.i.i.i.i.i.1:                             ; preds = %bb.xr, %.lr.ph11.i.i.i.i.i
  %i.cem = add nuw i64 %.210.i.i.i.i.i, 1         ; 3 uses
  %i.cen = sub nuw i64 %i.cem, %.014.i.i.i.i.i
  %i.ceo = shl nuw i64 1, %i.cen
  %i.cep = and i64 %i.ceo, %i.cdg
  %.not.i.i.i.i.i1460.1 = icmp eq i64 %i.cep, 0
  br i1 %.not.i.i.i.i.i1460.1, label %bb.xt, label %bb.xs

bb.xs:                                            ; preds = %.lr.ph11.i.i.i.i.i.1
  %i.ceq = getelementptr inbounds nuw [8 x i8], ptr %i.ccl, i64 %i.cem
  %.sroa.011.0.copyload.i.i.i.i.i1461.1 = load i64, ptr %i.ceq, align 8, !tbaa !44, !alias.scope !8041, !noalias !8049
  %.sroa.010.0.copyload.i.i.i.i.i1462.1 = load i64, ptr %i.ccn, align 8, !tbaa !44, !alias.scope !8044, !noalias !8048
  %i.cer = sub nsw i64 %.sroa.010.0.copyload.i.i.i.i.i1462.1, %.sroa.011.0.copyload.i.i.i.i.i1461.1
  %i.ces = getelementptr inbounds nuw [8 x i8], ptr %i.cct, i64 %i.cem
  store i64 %i.cer, ptr %i.ces, align 8, !tbaa !44, !alias.scope !8046, !noalias !8050
  br label %bb.xt

bb.xt:                                            ; preds = %bb.xs, %.lr.ph11.i.i.i.i.i.1
  %i.cet = add nuw i64 %.210.i.i.i.i.i, 2         ; 2 uses
  %exitcond22.not.i.i.i.i.i.1 = icmp eq i64 %i.cet, %i.cdi
  br i1 %exitcond22.not.i.i.i.i.i.1, label %.loopexit5.i.i.i.i.i, label %.lr.ph11.i.i.i.i.i, !llvm.loop !8055

.loopexit5.i.i.i.i.i:                             ; preds = %scalar.ph4165, %.lr.ph11.i.i.i.i.i.prol.loopexit, %bb.xt, %middle.block4177, %.preheader4.i.i.i.i.i, %.preheader6.i.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1454
  %.4.i.i.i.i.i1455 = phi i64 [ %i.cdi, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1454 ], [ %i.cdi, %middle.block4177 ], [ %.014.i.i.i.i.i, %.preheader4.i.i.i.i.i ], [ %.014.i.i.i.i.i, %.preheader6.i.i.i.i.i ], [ %i.cdi, %.lr.ph11.i.i.i.i.i.prol.loopexit ], [ %i.cdi, %bb.xt ], [ %i.cdi, %scalar.ph4165 ]
  %i.ceu = add nuw nsw i64 %.05913.i.i.i.i.i, 1   ; 2 uses
  %exitcond23.not.i.i.i.i.i = icmp eq i64 %i.ceu, %i.cde
  br i1 %exitcond23.not.i.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i.i1454, !llvm.loop !8056

scalar.ph4180:                                    ; preds = %scalar.ph4180.preheader, %scalar.ph4180
  %.06015.i.i.i.i.i = phi i64 [ %i.cey, %scalar.ph4180 ], [ %.06015.i.i.i.i.i.ph, %scalar.ph4180.preheader ] ; 3 uses
  %i.cev = getelementptr inbounds nuw [8 x i8], ptr %i.ccl, i64 %.06015.i.i.i.i.i
  %.sroa.03.0.copyload.i.i.i.i.i1465 = load i64, ptr %i.cev, align 8, !tbaa !44, !alias.scope !8041, !noalias !8049
  %i.cew = sub nsw i64 %.sroa.02.0.copyload.i.i.i.i.i1464, %.sroa.03.0.copyload.i.i.i.i.i1465
  %i.cex = getelementptr inbounds nuw [8 x i8], ptr %i.cct, i64 %.06015.i.i.i.i.i
  store i64 %i.cew, ptr %i.cex, align 8, !tbaa !44, !alias.scope !8046, !noalias !8050
  %i.cey = add nuw i64 %.06015.i.i.i.i.i, 1       ; 2 uses
  %exitcond24.not.i.i.i.i.i = icmp eq i64 %i.cey, %4
  br i1 %exitcond24.not.i.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %scalar.ph4180, !llvm.loop !8057

bb.xu:                                            ; preds = %bb.xm
  %i.cez = icmp eq i8 %i.cbr, 0
  %or.cond5.i.i.i1404 = and i1 %i.cbs, %i.cez
  br i1 %or.cond5.i.i.i1404, label %bb.xv, label %bb.yc

bb.xv:                                            ; preds = %bb.xu
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.cfa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cfb = load ptr, ptr %i.cfa, align 8, !tbaa !96 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.cfc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cfd = load ptr, ptr %i.cfc, align 8, !tbaa !96 ; 7 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cff = load ptr, ptr %i.cfe, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i38.i.i.i1442 = icmp eq ptr %i.cff, null
  br i1 %.not.i.i.i38.i.i.i1442, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i.i1444, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i.i1443

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i.i1443: ; preds = %bb.xv
  %i.cfg = load i64, ptr %i.cff, align 8, !tbaa !44
  %i.cfh = trunc i64 %i.cfg to i1
  br i1 %i.cfh, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i.i1444, label %bb.xw

bb.xw:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i.i1443
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %3, i1 noundef zeroext true)
  br label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i.i1444: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i39.i.i.i1443, %bb.xv
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.cfi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cfj = load ptr, ptr %i.cfi, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.cfk = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.cfl = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.cfk, ptr noundef nonnull align 8 dereferenceable(32) %i.cfl, i64 noundef %4)
  %.val.i41.i.i.i1445 = load ptr, ptr %i.cfk, align 8, !tbaa !97 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8063)
  %.not.i.i17.i42.i.i.i1446 = icmp eq ptr %.val.i41.i.i.i1445, null
  br i1 %.not.i.i17.i42.i.i.i1446, label %.preheader.i.i63.i.i.i, label %bb.xx

.preheader.i.i63.i.i.i:                           ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i.i1444
  %.not18.i.i64.i.i.i = icmp eq i64 %4, 0
  br i1 %.not18.i.i64.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph16.i.i65.i.i.i

.lr.ph16.i.i65.i.i.i:                             ; preds = %.preheader.i.i63.i.i.i
  %.sroa.03.0.copyload.i.i66.i.i.i = load i64, ptr %i.cfb, align 8, !tbaa !44, !alias.scope !8058, !noalias !8065 ; 2 uses
  %min.iters.check4151 = icmp ult i64 %4, 4
  br i1 %min.iters.check4151, label %scalar.ph4150.preheader, label %vector.ph4152

vector.ph4152:                                    ; preds = %.lr.ph16.i.i65.i.i.i
  %n.vec4154 = and i64 %4, -4                     ; 3 uses
  %broadcast.splatinsert4155 = insertelement <2 x i64> poison, i64 %.sroa.03.0.copyload.i.i66.i.i.i, i64 0
  %broadcast.splat4156 = shufflevector <2 x i64> %broadcast.splatinsert4155, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body4157

vector.body4157:                                  ; preds = %vector.body4157, %vector.ph4152
  %index4158 = phi i64 [ 0, %vector.ph4152 ], [ %index.next4161, %vector.body4157 ] ; 3 uses
  %i.cfm = getelementptr inbounds nuw [8 x i8], ptr %i.cfd, i64 %index4158 ; 2 uses
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfm, i64 16
  %wide.load4159 = load <2 x i64>, ptr %i.cfm, align 8, !tbaa !44, !alias.scope !8061, !noalias !8066
  %wide.load4160 = load <2 x i64>, ptr %i.cfn, align 8, !tbaa !44, !alias.scope !8061, !noalias !8066
  %i.cfo = sub nsw <2 x i64> %wide.load4159, %broadcast.splat4156
  %i.cfp = sub nsw <2 x i64> %wide.load4160, %broadcast.splat4156
  %i.cfq = getelementptr inbounds nuw [8 x i8], ptr %i.cfj, i64 %index4158 ; 2 uses
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfq, i64 16
  store <2 x i64> %i.cfo, ptr %i.cfq, align 8, !tbaa !44, !alias.scope !8063, !noalias !8067
  store <2 x i64> %i.cfp, ptr %i.cfr, align 8, !tbaa !44, !alias.scope !8063, !noalias !8067
  %index.next4161 = add nuw i64 %index4158, 4     ; 2 uses
  %i.cfs = icmp eq i64 %index.next4161, %n.vec4154
  br i1 %i.cfs, label %middle.block4162, label %vector.body4157, !llvm.loop !8068

middle.block4162:                                 ; preds = %vector.body4157
  %cmp.n4163 = icmp eq i64 %4, %n.vec4154
  br i1 %cmp.n4163, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %scalar.ph4150.preheader

scalar.ph4150.preheader:                          ; preds = %.lr.ph16.i.i65.i.i.i, %middle.block4162
  %.06015.i.i67.i.i.i.ph = phi i64 [ 0, %.lr.ph16.i.i65.i.i.i ], [ %n.vec4154, %middle.block4162 ]
  br label %scalar.ph4150

bb.xx:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i40.i.i.i1444
  %i.cft = add i64 %4, 63
  %i.cfu = lshr i64 %i.cft, 6                     ; 2 uses
  %.not17.i.i43.i.i.i = icmp eq i64 %i.cfu, 0
  br i1 %.not17.i.i43.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1447

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1447: ; preds = %bb.xx, %.loopexit5.i.i47.i.i.i
  %.014.i.i45.i.i.i = phi i64 [ %.4.i.i48.i.i.i1448, %.loopexit5.i.i47.i.i.i ], [ 0, %bb.xx ] ; 17 uses
  %.05913.i.i46.i.i.i = phi i64 [ %i.chk, %.loopexit5.i.i47.i.i.i ], [ 0, %bb.xx ] ; 2 uses
  %i.cfv = getelementptr inbounds nuw [8 x i8], ptr %.val.i41.i.i.i1445, i64 %.05913.i.i46.i.i.i
  %i.cfw = load i64, ptr %i.cfv, align 8, !tbaa !44, !noalias !8069 ; 4 uses
  %i.cfx = add i64 %.014.i.i45.i.i.i, 64
  %i.cfy = tail call noundef i64 @llvm.umin.i64(i64 %i.cfx, i64 %4) ; 12 uses
  switch i64 %i.cfw, label %.preheader4.i.i56.i.i.i [
    i64 -1, label %.preheader6.i.i50.i.i.i
    i64 0, label %.loopexit5.i.i47.i.i.i
  ]

.preheader6.i.i50.i.i.i:                          ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1447
  %i.cfz = icmp ult i64 %.014.i.i45.i.i.i, %i.cfy
  br i1 %i.cfz, label %.lr.ph.i.i51.i.i.i, label %.loopexit5.i.i47.i.i.i

.lr.ph.i.i51.i.i.i:                               ; preds = %.preheader6.i.i50.i.i.i
  %.sroa.016.0.copyload.i.i52.i.i.i = load i64, ptr %i.cfb, align 8, !tbaa !44, !alias.scope !8058, !noalias !8065 ; 2 uses
  %i.cga = sub nuw i64 %i.cfy, %.014.i.i45.i.i.i  ; 3 uses
  %min.iters.check4138 = icmp ult i64 %i.cga, 4
  br i1 %min.iters.check4138, label %scalar.ph4137.preheader, label %vector.ph4139

vector.ph4139:                                    ; preds = %.lr.ph.i.i51.i.i.i
  %n.vec4141 = and i64 %i.cga, -4                 ; 3 uses
  %i.cgb = add i64 %.014.i.i45.i.i.i, %n.vec4141
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.016.0.copyload.i.i52.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body4142

vector.body4142:                                  ; preds = %vector.body4142, %vector.ph4139
  %index4143 = phi i64 [ 0, %vector.ph4139 ], [ %index.next4146, %vector.body4142 ] ; 2 uses
  %i.cgc = add nuw i64 %.014.i.i45.i.i.i, %index4143 ; 2 uses
  %i.cgd = getelementptr inbounds nuw [8 x i8], ptr %i.cfd, i64 %i.cgc ; 2 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cgd, i64 16
  %wide.load4144 = load <2 x i64>, ptr %i.cgd, align 8, !tbaa !44, !alias.scope !8061, !noalias !8066
  %wide.load4145 = load <2 x i64>, ptr %i.cge, align 8, !tbaa !44, !alias.scope !8061, !noalias !8066
  %i.cgf = sub nsw <2 x i64> %wide.load4144, %broadcast.splat
  %i.cgg = sub nsw <2 x i64> %wide.load4145, %broadcast.splat
  %i.cgh = getelementptr inbounds nuw [8 x i8], ptr %i.cfj, i64 %i.cgc ; 2 uses
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cgh, i64 16
  store <2 x i64> %i.cgf, ptr %i.cgh, align 8, !tbaa !44, !alias.scope !8063, !noalias !8067
  store <2 x i64> %i.cgg, ptr %i.cgi, align 8, !tbaa !44, !alias.scope !8063, !noalias !8067
  %index.next4146 = add nuw i64 %index4143, 4     ; 2 uses
  %i.cgj = icmp eq i64 %index.next4146, %n.vec4141
  br i1 %i.cgj, label %middle.block4147, label %vector.body4142, !llvm.loop !8070

middle.block4147:                                 ; preds = %vector.body4142
  %cmp.n4148 = icmp eq i64 %i.cga, %n.vec4141
  br i1 %cmp.n4148, label %.loopexit5.i.i47.i.i.i, label %scalar.ph4137.preheader

scalar.ph4137.preheader:                          ; preds = %.lr.ph.i.i51.i.i.i, %middle.block4147
  %.19.i.i53.i.i.i.ph = phi i64 [ %.014.i.i45.i.i.i, %.lr.ph.i.i51.i.i.i ], [ %i.cgb, %middle.block4147 ]
  br label %scalar.ph4137

.preheader4.i.i56.i.i.i:                          ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1447
  %i.cgk = icmp ult i64 %.014.i.i45.i.i.i, %i.cfy
  br i1 %i.cgk, label %.lr.ph11.i.i57.i.i.i.preheader, label %.loopexit5.i.i47.i.i.i

.lr.ph11.i.i57.i.i.i.preheader:                   ; preds = %.preheader4.i.i56.i.i.i
  %i.cgl = sub nuw i64 %i.cfy, %.014.i.i45.i.i.i
  %.neg4548 = add i64 %.014.i.i45.i.i.i, 1
  %xtraiter4532 = and i64 %i.cgl, 1
  %lcmp.mod4533.not = icmp eq i64 %xtraiter4532, 0
  br i1 %lcmp.mod4533.not, label %.lr.ph11.i.i57.i.i.i.prol.loopexit, label %.lr.ph11.i.i57.i.i.i.prol

.lr.ph11.i.i57.i.i.i.prol:                        ; preds = %.lr.ph11.i.i57.i.i.i.preheader
  %i.cgm = and i64 %i.cfw, 1
  %.not.i.i59.i.i.i.prol = icmp eq i64 %i.cgm, 0
  br i1 %.not.i.i59.i.i.i.prol, label %.lr.ph11.i.i57.i.i.i.prol.loopexit.unr-lcssa, label %bb.xy

bb.xy:                                            ; preds = %.lr.ph11.i.i57.i.i.i.prol
  %.sroa.011.0.copyload.i.i60.i.i.i.prol = load i64, ptr %i.cfb, align 8, !tbaa !44, !alias.scope !8058, !noalias !8065
  %i.cgn = getelementptr inbounds nuw [8 x i8], ptr %i.cfd, i64 %.014.i.i45.i.i.i
  %.sroa.010.0.copyload.i.i61.i.i.i.prol = load i64, ptr %i.cgn, align 8, !tbaa !44, !alias.scope !8061, !noalias !8066
  %i.cgo = sub nsw i64 %.sroa.010.0.copyload.i.i61.i.i.i.prol, %.sroa.011.0.copyload.i.i60.i.i.i.prol
  %i.cgp = getelementptr inbounds nuw [8 x i8], ptr %i.cfj, i64 %.014.i.i45.i.i.i
  store i64 %i.cgo, ptr %i.cgp, align 8, !tbaa !44, !alias.scope !8063, !noalias !8067
  br label %.lr.ph11.i.i57.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i57.i.i.i.prol.loopexit.unr-lcssa:     ; preds = %bb.xy, %.lr.ph11.i.i57.i.i.i.prol
  %i.cgq = add nuw i64 %.014.i.i45.i.i.i, 1
  br label %.lr.ph11.i.i57.i.i.i.prol.loopexit

.lr.ph11.i.i57.i.i.i.prol.loopexit:               ; preds = %.lr.ph11.i.i57.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i57.i.i.i.preheader
  %.210.i.i58.i.i.i.unr = phi i64 [ %.014.i.i45.i.i.i, %.lr.ph11.i.i57.i.i.i.preheader ], [ %i.cgq, %.lr.ph11.i.i57.i.i.i.prol.loopexit.unr-lcssa ]
  %i.cgr = icmp eq i64 %i.cfy, %.neg4548
  br i1 %i.cgr, label %.loopexit5.i.i47.i.i.i, label %.lr.ph11.i.i57.i.i.i

scalar.ph4137:                                    ; preds = %scalar.ph4137.preheader, %scalar.ph4137
  %.19.i.i53.i.i.i = phi i64 [ %i.cgv, %scalar.ph4137 ], [ %.19.i.i53.i.i.i.ph, %scalar.ph4137.preheader ] ; 3 uses
  %i.cgs = getelementptr inbounds nuw [8 x i8], ptr %i.cfd, i64 %.19.i.i53.i.i.i
  %.sroa.015.0.copyload.i.i54.i.i.i = load i64, ptr %i.cgs, align 8, !tbaa !44, !alias.scope !8061, !noalias !8066
  %i.cgt = sub nsw i64 %.sroa.015.0.copyload.i.i54.i.i.i, %.sroa.016.0.copyload.i.i52.i.i.i
  %i.cgu = getelementptr inbounds nuw [8 x i8], ptr %i.cfj, i64 %.19.i.i53.i.i.i
  store i64 %i.cgt, ptr %i.cgu, align 8, !tbaa !44, !alias.scope !8063, !noalias !8067
  %i.cgv = add nuw i64 %.19.i.i53.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i55.i.i.i = icmp eq i64 %i.cgv, %i.cfy
  br i1 %exitcond.not.i.i55.i.i.i, label %.loopexit5.i.i47.i.i.i, label %scalar.ph4137, !llvm.loop !8071

.lr.ph11.i.i57.i.i.i:                             ; preds = %.lr.ph11.i.i57.i.i.i.prol.loopexit, %bb.yb
  %.210.i.i58.i.i.i = phi i64 [ %i.chj, %bb.yb ], [ %.210.i.i58.i.i.i.unr, %.lr.ph11.i.i57.i.i.i.prol.loopexit ] ; 5 uses
  %i.cgw = sub nuw i64 %.210.i.i58.i.i.i, %.014.i.i45.i.i.i
  %i.cgx = shl nuw i64 1, %i.cgw
  %i.cgy = and i64 %i.cgx, %i.cfw
  %.not.i.i59.i.i.i = icmp eq i64 %i.cgy, 0
  br i1 %.not.i.i59.i.i.i, label %.lr.ph11.i.i57.i.i.i.1, label %bb.xz

bb.xz:                                            ; preds = %.lr.ph11.i.i57.i.i.i
  %.sroa.011.0.copyload.i.i60.i.i.i = load i64, ptr %i.cfb, align 8, !tbaa !44, !alias.scope !8058, !noalias !8065
  %i.cgz = getelementptr inbounds nuw [8 x i8], ptr %i.cfd, i64 %.210.i.i58.i.i.i
  %.sroa.010.0.copyload.i.i61.i.i.i = load i64, ptr %i.cgz, align 8, !tbaa !44, !alias.scope !8061, !noalias !8066
  %i.cha = sub nsw i64 %.sroa.010.0.copyload.i.i61.i.i.i, %.sroa.011.0.copyload.i.i60.i.i.i
  %i.chb = getelementptr inbounds nuw [8 x i8], ptr %i.cfj, i64 %.210.i.i58.i.i.i
  store i64 %i.cha, ptr %i.chb, align 8, !tbaa !44, !alias.scope !8063, !noalias !8067
  br label %.lr.ph11.i.i57.i.i.i.1

.lr.ph11.i.i57.i.i.i.1:                           ; preds = %bb.xz, %.lr.ph11.i.i57.i.i.i
  %i.chc = add nuw i64 %.210.i.i58.i.i.i, 1       ; 3 uses
  %i.chd = sub nuw i64 %i.chc, %.014.i.i45.i.i.i
  %i.che = shl nuw i64 1, %i.chd
  %i.chf = and i64 %i.che, %i.cfw
  %.not.i.i59.i.i.i.1 = icmp eq i64 %i.chf, 0
  br i1 %.not.i.i59.i.i.i.1, label %bb.yb, label %bb.ya

bb.ya:                                            ; preds = %.lr.ph11.i.i57.i.i.i.1
  %.sroa.011.0.copyload.i.i60.i.i.i.1 = load i64, ptr %i.cfb, align 8, !tbaa !44, !alias.scope !8058, !noalias !8065
  %i.chg = getelementptr inbounds nuw [8 x i8], ptr %i.cfd, i64 %i.chc
  %.sroa.010.0.copyload.i.i61.i.i.i.1 = load i64, ptr %i.chg, align 8, !tbaa !44, !alias.scope !8061, !noalias !8066
  %i.chh = sub nsw i64 %.sroa.010.0.copyload.i.i61.i.i.i.1, %.sroa.011.0.copyload.i.i60.i.i.i.1
  %i.chi = getelementptr inbounds nuw [8 x i8], ptr %i.cfj, i64 %i.chc
  store i64 %i.chh, ptr %i.chi, align 8, !tbaa !44, !alias.scope !8063, !noalias !8067
  br label %bb.yb

bb.yb:                                            ; preds = %bb.ya, %.lr.ph11.i.i57.i.i.i.1
  %i.chj = add nuw i64 %.210.i.i58.i.i.i, 2       ; 2 uses
  %exitcond22.not.i.i62.i.i.i.1 = icmp eq i64 %i.chj, %i.cfy
  br i1 %exitcond22.not.i.i62.i.i.i.1, label %.loopexit5.i.i47.i.i.i, label %.lr.ph11.i.i57.i.i.i, !llvm.loop !8072

.loopexit5.i.i47.i.i.i:                           ; preds = %scalar.ph4137, %.lr.ph11.i.i57.i.i.i.prol.loopexit, %bb.yb, %middle.block4147, %.preheader4.i.i56.i.i.i, %.preheader6.i.i50.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1447
  %.4.i.i48.i.i.i1448 = phi i64 [ %i.cfy, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1447 ], [ %i.cfy, %middle.block4147 ], [ %.014.i.i45.i.i.i, %.preheader4.i.i56.i.i.i ], [ %.014.i.i45.i.i.i, %.preheader6.i.i50.i.i.i ], [ %i.cfy, %.lr.ph11.i.i57.i.i.i.prol.loopexit ], [ %i.cfy, %bb.yb ], [ %i.cfy, %scalar.ph4137 ]
  %i.chk = add nuw nsw i64 %.05913.i.i46.i.i.i, 1 ; 2 uses
  %exitcond23.not.i.i49.i.i.i = icmp eq i64 %i.chk, %i.cfu
  br i1 %exitcond23.not.i.i49.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i44.i.i.i1447, !llvm.loop !8073

scalar.ph4150:                                    ; preds = %scalar.ph4150.preheader, %scalar.ph4150
  %.06015.i.i67.i.i.i = phi i64 [ %i.cho, %scalar.ph4150 ], [ %.06015.i.i67.i.i.i.ph, %scalar.ph4150.preheader ] ; 3 uses
  %i.chl = getelementptr inbounds nuw [8 x i8], ptr %i.cfd, i64 %.06015.i.i67.i.i.i
  %.sroa.02.0.copyload.i.i68.i.i.i = load i64, ptr %i.chl, align 8, !tbaa !44, !alias.scope !8061, !noalias !8066
  %i.chm = sub nsw i64 %.sroa.02.0.copyload.i.i68.i.i.i, %.sroa.03.0.copyload.i.i66.i.i.i
  %i.chn = getelementptr inbounds nuw [8 x i8], ptr %i.cfj, i64 %.06015.i.i67.i.i.i
  store i64 %i.chm, ptr %i.chn, align 8, !tbaa !44, !alias.scope !8063, !noalias !8067
  %i.cho = add nuw i64 %.06015.i.i67.i.i.i, 1     ; 2 uses
  %exitcond24.not.i.i69.i.i.i = icmp eq i64 %i.cho, %4
  br i1 %exitcond24.not.i.i69.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %scalar.ph4150, !llvm.loop !8074

bb.yc:                                            ; preds = %bb.xu
  %i.chp = or i8 %i.cbr, %i.cbq
  %or.cond7.i.i.i1405 = icmp eq i8 %i.chp, 0
  br i1 %or.cond7.i.i.i1405, label %bb.yd, label %bb.ym

bb.yd:                                            ; preds = %bb.yc
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.chq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.chr = load ptr, ptr %i.chq, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.chs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cht = load ptr, ptr %i.chs, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.chu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.chv = load ptr, ptr %i.chu, align 8, !tbaa !96 ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.chw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.chx = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.chw, ptr noundef nonnull align 8 dereferenceable(32) %i.chx, i64 noundef %4)
  %i.chy = load ptr, ptr %i.chw, align 8, !tbaa !97
  %.not.i.i70.i.i.i = icmp eq ptr %i.chy, null
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.chz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br i1 %.not.i.i70.i.i.i, label %bb.ye, label %bb.yf

bb.ye:                                            ; preds = %bb.yd
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.chw, ptr noundef nonnull align 8 dereferenceable(32) %i.chz, i64 noundef %4)
  br label %bb.yg

bb.yf:                                            ; preds = %bb.yd
  tail call void @_ZN6duckdb12ValidityMask7CombineERKS0_m(ptr noundef nonnull align 8 dereferenceable(32) %i.chw, ptr noundef nonnull align 8 dereferenceable(32) %i.chz, i64 noundef %4)
  br label %bb.yg

bb.yg:                                            ; preds = %bb.yf, %bb.ye
  %.val.i71.i.i.i = load ptr, ptr %i.chw, align 8, !tbaa !97 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8080)
  %.not.i.i.i72.i.i.i = icmp eq ptr %.val.i71.i.i.i, null
  br i1 %.not.i.i.i72.i.i.i, label %.preheader.i.i89.i.i.i, label %bb.yh

.preheader.i.i89.i.i.i:                           ; preds = %bb.yg
  %.not18.i.i90.i.i.i = icmp eq i64 %4, 0
  br i1 %.not18.i.i90.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph16.i.i91.i.i.i.preheader

.lr.ph16.i.i91.i.i.i.preheader:                   ; preds = %.preheader.i.i89.i.i.i
  %min.iters.check4123 = icmp ult i64 %4, 4
  br i1 %min.iters.check4123, label %.lr.ph16.i.i91.i.i.i.preheader4272, label %vector.ph4124

vector.ph4124:                                    ; preds = %.lr.ph16.i.i91.i.i.i.preheader
  %n.vec4126 = and i64 %4, -4                     ; 3 uses
  br label %vector.body4127

vector.body4127:                                  ; preds = %vector.body4127, %vector.ph4124
  %index4128 = phi i64 [ 0, %vector.ph4124 ], [ %index.next4133, %vector.body4127 ] ; 4 uses
  %i.cia = getelementptr inbounds nuw [8 x i8], ptr %i.chr, i64 %index4128 ; 2 uses
  %i.cib = getelementptr inbounds nuw i8, ptr %i.cia, i64 16
  %wide.load4129 = load <2 x i64>, ptr %i.cia, align 8, !tbaa !44, !alias.scope !8075, !noalias !8082
  %wide.load4130 = load <2 x i64>, ptr %i.cib, align 8, !tbaa !44, !alias.scope !8075, !noalias !8082
  %i.cic = getelementptr inbounds nuw [8 x i8], ptr %i.cht, i64 %index4128 ; 2 uses
  %i.cid = getelementptr inbounds nuw i8, ptr %i.cic, i64 16
  %wide.load4131 = load <2 x i64>, ptr %i.cic, align 8, !tbaa !44, !alias.scope !8078, !noalias !8083
  %wide.load4132 = load <2 x i64>, ptr %i.cid, align 8, !tbaa !44, !alias.scope !8078, !noalias !8083
  %i.cie = sub nsw <2 x i64> %wide.load4131, %wide.load4129
  %i.cif = sub nsw <2 x i64> %wide.load4132, %wide.load4130
  %i.cig = getelementptr inbounds nuw [8 x i8], ptr %i.chv, i64 %index4128 ; 2 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %i.cig, i64 16
  store <2 x i64> %i.cie, ptr %i.cig, align 8, !tbaa !44, !alias.scope !8080, !noalias !8084
  store <2 x i64> %i.cif, ptr %i.cih, align 8, !tbaa !44, !alias.scope !8080, !noalias !8084
  %index.next4133 = add nuw i64 %index4128, 4     ; 2 uses
  %i.cii = icmp eq i64 %index.next4133, %n.vec4126
  br i1 %i.cii, label %middle.block4134, label %vector.body4127, !llvm.loop !8085

middle.block4134:                                 ; preds = %vector.body4127
  %cmp.n4135 = icmp eq i64 %4, %n.vec4126
  br i1 %cmp.n4135, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph16.i.i91.i.i.i.preheader4272

.lr.ph16.i.i91.i.i.i.preheader4272:               ; preds = %.lr.ph16.i.i91.i.i.i.preheader, %middle.block4134
  %.06915.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph16.i.i91.i.i.i.preheader ], [ %n.vec4126, %middle.block4134 ]
  br label %.lr.ph16.i.i91.i.i.i

bb.yh:                                            ; preds = %bb.yg
  %i.cij = add i64 %4, 63
  %i.cik = lshr i64 %i.cij, 6                     ; 2 uses
  %.not17.i.i73.i.i.i = icmp eq i64 %i.cik, 0
  br i1 %.not17.i.i73.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i: ; preds = %bb.yh, %.loopexit5.i.i76.i.i.i
  %.014.i.i75.i.i.i = phi i64 [ %.4.i.i77.i.i.i, %.loopexit5.i.i76.i.i.i ], [ 0, %bb.yh ] ; 18 uses
  %.06813.i.i.i.i.i = phi i64 [ %i.ckg, %.loopexit5.i.i76.i.i.i ], [ 0, %bb.yh ] ; 2 uses
  %i.cil = getelementptr inbounds nuw [8 x i8], ptr %.val.i71.i.i.i, i64 %.06813.i.i.i.i.i
  %i.cim = load i64, ptr %i.cil, align 8, !tbaa !44, !noalias !8086 ; 4 uses
  %i.cin = add i64 %.014.i.i75.i.i.i, 64
  %i.cio = tail call noundef i64 @llvm.umin.i64(i64 %i.cin, i64 %4) ; 12 uses
  switch i64 %i.cim, label %.preheader4.i.i84.i.i.i [
    i64 -1, label %.preheader6.i.i79.i.i.i
    i64 0, label %.loopexit5.i.i76.i.i.i
  ]

.preheader6.i.i79.i.i.i:                          ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i
  %i.cip = icmp ult i64 %.014.i.i75.i.i.i, %i.cio
  br i1 %i.cip, label %.lr.ph.i.i80.i.i.i.preheader, label %.loopexit5.i.i76.i.i.i

.lr.ph.i.i80.i.i.i.preheader:                     ; preds = %.preheader6.i.i79.i.i.i
  %i.ciq = sub nuw i64 %i.cio, %.014.i.i75.i.i.i  ; 3 uses
  %min.iters.check4108 = icmp ult i64 %i.ciq, 4
  br i1 %min.iters.check4108, label %.lr.ph.i.i80.i.i.i.preheader4274, label %vector.ph4109

vector.ph4109:                                    ; preds = %.lr.ph.i.i80.i.i.i.preheader
  %n.vec4111 = and i64 %i.ciq, -4                 ; 3 uses
  %i.cir = add i64 %.014.i.i75.i.i.i, %n.vec4111
  br label %vector.body4112

vector.body4112:                                  ; preds = %vector.body4112, %vector.ph4109
  %index4113 = phi i64 [ 0, %vector.ph4109 ], [ %index.next4118, %vector.body4112 ] ; 2 uses
  %i.cis = add nuw i64 %.014.i.i75.i.i.i, %index4113 ; 3 uses
  %i.cit = getelementptr inbounds nuw [8 x i8], ptr %i.chr, i64 %i.cis ; 2 uses
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.cit, i64 16
  %wide.load4114 = load <2 x i64>, ptr %i.cit, align 8, !tbaa !44, !alias.scope !8075, !noalias !8082
  %wide.load4115 = load <2 x i64>, ptr %i.ciu, align 8, !tbaa !44, !alias.scope !8075, !noalias !8082
  %i.civ = getelementptr inbounds nuw [8 x i8], ptr %i.cht, i64 %i.cis ; 2 uses
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.civ, i64 16
  %wide.load4116 = load <2 x i64>, ptr %i.civ, align 8, !tbaa !44, !alias.scope !8078, !noalias !8083
  %wide.load4117 = load <2 x i64>, ptr %i.ciw, align 8, !tbaa !44, !alias.scope !8078, !noalias !8083
  %i.cix = sub nsw <2 x i64> %wide.load4116, %wide.load4114
  %i.ciy = sub nsw <2 x i64> %wide.load4117, %wide.load4115
  %i.ciz = getelementptr inbounds nuw [8 x i8], ptr %i.chv, i64 %i.cis ; 2 uses
  %i.cja = getelementptr inbounds nuw i8, ptr %i.ciz, i64 16
  store <2 x i64> %i.cix, ptr %i.ciz, align 8, !tbaa !44, !alias.scope !8080, !noalias !8084
  store <2 x i64> %i.ciy, ptr %i.cja, align 8, !tbaa !44, !alias.scope !8080, !noalias !8084
  %index.next4118 = add nuw i64 %index4113, 4     ; 2 uses
  %i.cjb = icmp eq i64 %index.next4118, %n.vec4111
  br i1 %i.cjb, label %middle.block4119, label %vector.body4112, !llvm.loop !8087

middle.block4119:                                 ; preds = %vector.body4112
  %cmp.n4120 = icmp eq i64 %i.ciq, %n.vec4111
  br i1 %cmp.n4120, label %.loopexit5.i.i76.i.i.i, label %.lr.ph.i.i80.i.i.i.preheader4274

.lr.ph.i.i80.i.i.i.preheader4274:                 ; preds = %.lr.ph.i.i80.i.i.i.preheader, %middle.block4119
  %.19.i.i81.i.i.i.ph = phi i64 [ %.014.i.i75.i.i.i, %.lr.ph.i.i80.i.i.i.preheader ], [ %i.cir, %middle.block4119 ]
  br label %.lr.ph.i.i80.i.i.i

.preheader4.i.i84.i.i.i:                          ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i
  %i.cjc = icmp ult i64 %.014.i.i75.i.i.i, %i.cio
  br i1 %i.cjc, label %.lr.ph11.i.i85.i.i.i.preheader, label %.loopexit5.i.i76.i.i.i

.lr.ph11.i.i85.i.i.i.preheader:                   ; preds = %.preheader4.i.i84.i.i.i
  %i.cjd = sub nuw i64 %i.cio, %.014.i.i75.i.i.i
  %.neg4547 = add i64 %.014.i.i75.i.i.i, 1
  %xtraiter4530 = and i64 %i.cjd, 1
  %lcmp.mod4531.not = icmp eq i64 %xtraiter4530, 0
  br i1 %lcmp.mod4531.not, label %.lr.ph11.i.i85.i.i.i.prol.loopexit, label %.lr.ph11.i.i85.i.i.i.prol

.lr.ph11.i.i85.i.i.i.prol:                        ; preds = %.lr.ph11.i.i85.i.i.i.preheader
  %i.cje = and i64 %i.cim, 1
  %.not.i24.i.i.i.i1440.prol = icmp eq i64 %i.cje, 0
  br i1 %.not.i24.i.i.i.i1440.prol, label %.lr.ph11.i.i85.i.i.i.prol.loopexit.unr-lcssa, label %bb.yi

bb.yi:                                            ; preds = %.lr.ph11.i.i85.i.i.i.prol
  %i.cjf = getelementptr inbounds nuw [8 x i8], ptr %i.chr, i64 %.014.i.i75.i.i.i
  %.sroa.012.0.copyload.i.i.i.i.i1441.prol = load i64, ptr %i.cjf, align 8, !tbaa !44, !alias.scope !8075, !noalias !8082
  %i.cjg = getelementptr inbounds nuw [8 x i8], ptr %i.cht, i64 %.014.i.i75.i.i.i
  %.sroa.011.0.copyload.i.i87.i.i.i.prol = load i64, ptr %i.cjg, align 8, !tbaa !44, !alias.scope !8078, !noalias !8083
  %i.cjh = sub nsw i64 %.sroa.011.0.copyload.i.i87.i.i.i.prol, %.sroa.012.0.copyload.i.i.i.i.i1441.prol
  %i.cji = getelementptr inbounds nuw [8 x i8], ptr %i.chv, i64 %.014.i.i75.i.i.i
  store i64 %i.cjh, ptr %i.cji, align 8, !tbaa !44, !alias.scope !8080, !noalias !8084
  br label %.lr.ph11.i.i85.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i85.i.i.i.prol.loopexit.unr-lcssa:     ; preds = %bb.yi, %.lr.ph11.i.i85.i.i.i.prol
  %i.cjj = add nuw i64 %.014.i.i75.i.i.i, 1
  br label %.lr.ph11.i.i85.i.i.i.prol.loopexit

.lr.ph11.i.i85.i.i.i.prol.loopexit:               ; preds = %.lr.ph11.i.i85.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i85.i.i.i.preheader
  %.210.i.i86.i.i.i.unr = phi i64 [ %.014.i.i75.i.i.i, %.lr.ph11.i.i85.i.i.i.preheader ], [ %i.cjj, %.lr.ph11.i.i85.i.i.i.prol.loopexit.unr-lcssa ]
  %i.cjk = icmp eq i64 %i.cio, %.neg4547
  br i1 %i.cjk, label %.loopexit5.i.i76.i.i.i, label %.lr.ph11.i.i85.i.i.i

.lr.ph.i.i80.i.i.i:                               ; preds = %.lr.ph.i.i80.i.i.i.preheader4274, %.lr.ph.i.i80.i.i.i
  %.19.i.i81.i.i.i = phi i64 [ %i.cjp, %.lr.ph.i.i80.i.i.i ], [ %.19.i.i81.i.i.i.ph, %.lr.ph.i.i80.i.i.i.preheader4274 ] ; 4 uses
  %i.cjl = getelementptr inbounds nuw [8 x i8], ptr %i.chr, i64 %.19.i.i81.i.i.i
  %.sroa.017.0.copyload.i.i.i.i.i1439 = load i64, ptr %i.cjl, align 8, !tbaa !44, !alias.scope !8075, !noalias !8082
  %i.cjm = getelementptr inbounds nuw [8 x i8], ptr %i.cht, i64 %.19.i.i81.i.i.i
  %.sroa.016.0.copyload.i.i82.i.i.i = load i64, ptr %i.cjm, align 8, !tbaa !44, !alias.scope !8078, !noalias !8083
  %i.cjn = sub nsw i64 %.sroa.016.0.copyload.i.i82.i.i.i, %.sroa.017.0.copyload.i.i.i.i.i1439
  %i.cjo = getelementptr inbounds nuw [8 x i8], ptr %i.chv, i64 %.19.i.i81.i.i.i
  store i64 %i.cjn, ptr %i.cjo, align 8, !tbaa !44, !alias.scope !8080, !noalias !8084
  %i.cjp = add nuw i64 %.19.i.i81.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i83.i.i.i = icmp eq i64 %i.cjp, %i.cio
  br i1 %exitcond.not.i.i83.i.i.i, label %.loopexit5.i.i76.i.i.i, label %.lr.ph.i.i80.i.i.i, !llvm.loop !8088

.lr.ph11.i.i85.i.i.i:                             ; preds = %.lr.ph11.i.i85.i.i.i.prol.loopexit, %bb.yl
  %.210.i.i86.i.i.i = phi i64 [ %i.ckf, %bb.yl ], [ %.210.i.i86.i.i.i.unr, %.lr.ph11.i.i85.i.i.i.prol.loopexit ] ; 6 uses
  %i.cjq = sub nuw i64 %.210.i.i86.i.i.i, %.014.i.i75.i.i.i
  %i.cjr = shl nuw i64 1, %i.cjq
  %i.cjs = and i64 %i.cjr, %i.cim
  %.not.i24.i.i.i.i1440 = icmp eq i64 %i.cjs, 0
  br i1 %.not.i24.i.i.i.i1440, label %.lr.ph11.i.i85.i.i.i.1, label %bb.yj

bb.yj:                                            ; preds = %.lr.ph11.i.i85.i.i.i
  %i.cjt = getelementptr inbounds nuw [8 x i8], ptr %i.chr, i64 %.210.i.i86.i.i.i
  %.sroa.012.0.copyload.i.i.i.i.i1441 = load i64, ptr %i.cjt, align 8, !tbaa !44, !alias.scope !8075, !noalias !8082
  %i.cju = getelementptr inbounds nuw [8 x i8], ptr %i.cht, i64 %.210.i.i86.i.i.i
  %.sroa.011.0.copyload.i.i87.i.i.i = load i64, ptr %i.cju, align 8, !tbaa !44, !alias.scope !8078, !noalias !8083
  %i.cjv = sub nsw i64 %.sroa.011.0.copyload.i.i87.i.i.i, %.sroa.012.0.copyload.i.i.i.i.i1441
  %i.cjw = getelementptr inbounds nuw [8 x i8], ptr %i.chv, i64 %.210.i.i86.i.i.i
  store i64 %i.cjv, ptr %i.cjw, align 8, !tbaa !44, !alias.scope !8080, !noalias !8084
  br label %.lr.ph11.i.i85.i.i.i.1

.lr.ph11.i.i85.i.i.i.1:                           ; preds = %bb.yj, %.lr.ph11.i.i85.i.i.i
  %i.cjx = add nuw i64 %.210.i.i86.i.i.i, 1       ; 4 uses
  %i.cjy = sub nuw i64 %i.cjx, %.014.i.i75.i.i.i
  %i.cjz = shl nuw i64 1, %i.cjy
  %i.cka = and i64 %i.cjz, %i.cim
  %.not.i24.i.i.i.i1440.1 = icmp eq i64 %i.cka, 0
  br i1 %.not.i24.i.i.i.i1440.1, label %bb.yl, label %bb.yk

bb.yk:                                            ; preds = %.lr.ph11.i.i85.i.i.i.1
  %i.ckb = getelementptr inbounds nuw [8 x i8], ptr %i.chr, i64 %i.cjx
  %.sroa.012.0.copyload.i.i.i.i.i1441.1 = load i64, ptr %i.ckb, align 8, !tbaa !44, !alias.scope !8075, !noalias !8082
  %i.ckc = getelementptr inbounds nuw [8 x i8], ptr %i.cht, i64 %i.cjx
  %.sroa.011.0.copyload.i.i87.i.i.i.1 = load i64, ptr %i.ckc, align 8, !tbaa !44, !alias.scope !8078, !noalias !8083
  %i.ckd = sub nsw i64 %.sroa.011.0.copyload.i.i87.i.i.i.1, %.sroa.012.0.copyload.i.i.i.i.i1441.1
  %i.cke = getelementptr inbounds nuw [8 x i8], ptr %i.chv, i64 %i.cjx
  store i64 %i.ckd, ptr %i.cke, align 8, !tbaa !44, !alias.scope !8080, !noalias !8084
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %.lr.ph11.i.i85.i.i.i.1
  %i.ckf = add nuw i64 %.210.i.i86.i.i.i, 2       ; 2 uses
  %exitcond22.not.i.i88.i.i.i.1 = icmp eq i64 %i.ckf, %i.cio
  br i1 %exitcond22.not.i.i88.i.i.i.1, label %.loopexit5.i.i76.i.i.i, label %.lr.ph11.i.i85.i.i.i, !llvm.loop !8089

.loopexit5.i.i76.i.i.i:                           ; preds = %.lr.ph.i.i80.i.i.i, %.lr.ph11.i.i85.i.i.i.prol.loopexit, %bb.yl, %middle.block4119, %.preheader4.i.i84.i.i.i, %.preheader6.i.i79.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i
  %.4.i.i77.i.i.i = phi i64 [ %i.cio, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i ], [ %i.cio, %middle.block4119 ], [ %.014.i.i75.i.i.i, %.preheader4.i.i84.i.i.i ], [ %.014.i.i75.i.i.i, %.preheader6.i.i79.i.i.i ], [ %i.cio, %.lr.ph11.i.i85.i.i.i.prol.loopexit ], [ %i.cio, %bb.yl ], [ %i.cio, %.lr.ph.i.i80.i.i.i ]
  %i.ckg = add nuw nsw i64 %.06813.i.i.i.i.i, 1   ; 2 uses
  %exitcond23.not.i.i78.i.i.i = icmp eq i64 %i.ckg, %i.cik
  br i1 %exitcond23.not.i.i78.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i74.i.i.i, !llvm.loop !8090

.lr.ph16.i.i91.i.i.i:                             ; preds = %.lr.ph16.i.i91.i.i.i.preheader4272, %.lr.ph16.i.i91.i.i.i
  %.06915.i.i.i.i.i = phi i64 [ %i.ckl, %.lr.ph16.i.i91.i.i.i ], [ %.06915.i.i.i.i.i.ph, %.lr.ph16.i.i91.i.i.i.preheader4272 ] ; 4 uses
  %i.ckh = getelementptr inbounds nuw [8 x i8], ptr %i.chr, i64 %.06915.i.i.i.i.i
  %.sroa.03.0.copyload.i.i92.i.i.i = load i64, ptr %i.ckh, align 8, !tbaa !44, !alias.scope !8075, !noalias !8082
  %i.cki = getelementptr inbounds nuw [8 x i8], ptr %i.cht, i64 %.06915.i.i.i.i.i
  %.sroa.02.0.copyload.i.i93.i.i.i = load i64, ptr %i.cki, align 8, !tbaa !44, !alias.scope !8078, !noalias !8083
  %i.ckj = sub nsw i64 %.sroa.02.0.copyload.i.i93.i.i.i, %.sroa.03.0.copyload.i.i92.i.i.i
  %i.ckk = getelementptr inbounds nuw [8 x i8], ptr %i.chv, i64 %.06915.i.i.i.i.i
  store i64 %i.ckj, ptr %i.ckk, align 8, !tbaa !44, !alias.scope !8080, !noalias !8084
  %i.ckl = add nuw i64 %.06915.i.i.i.i.i, 1       ; 2 uses
  %exitcond24.not.i.i94.i.i.i = icmp eq i64 %i.ckl, %4
  br i1 %exitcond24.not.i.i94.i.i.i, label %_ZN6duckdb12_GLOBAL__N_17DateSub13BinaryExecuteINS_7dtime_tES3_lNS1_12YearOperatorEEEvRNS_6VectorES6_S6_m.exit, label %.lr.ph16.i.i91.i.i.i, !llvm.loop !8091

bb.ym:                                            ; preds = %bb.yc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %14)
          to label %bb.yn unwind label %bb.zz

bb.yn:                                            ; preds = %bb.ym
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %13)
          to label %bb.yo unwind label %bb.aaa

bb.yo:                                            ; preds = %bb.yn
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %14)
          to label %bb.yp unwind label %bb.aaa

bb.yp:                                            ; preds = %bb.yo
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
          to label %bb.yq unwind label %bb.aaa

bb.yq:                                            ; preds = %bb.yp
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.yr unwind label %.loopexit.split-lp.i.i.i.i1408

bb.yr:                                            ; preds = %bb.yq
  %i.ckm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ckn = load ptr, ptr %i.ckm, align 8, !tbaa !96 ; 12 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_7dtime_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %13)
          to label %bb.ys unwind label %.loopexit.split-lp.i.i.i.i1408

bb.ys:                                            ; preds = %bb.yr
  %i.cko = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ckp = load ptr, ptr %i.cko, align 8, !tbaa !125 ; 12 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_7dtime_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %14)
          to label %bb.yt unwind label %.loopexit.split-lp.i.i.i.i1408

bb.yt:                                            ; preds = %bb.ys
  %i.ckq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ckr = load ptr, ptr %i.ckq, align 8, !tbaa !125 ; 12 uses
  %i.cks = load ptr, ptr %13, align 8, !tbaa !134 ; 2 uses
  %i.ckt = load ptr, ptr %14, align 8, !tbaa !134 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.yu unwind label %.loopexit.split-lp.i.i.i.i1408

bb.yu:                                            ; preds = %bb.yt
  %i.cku = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.ckv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ckw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8092)
  call void @llvm.experimental.noalias.scope.decl(metadata !8095)
  call void @llvm.experimental.noalias.scope.decl(metadata !8097)
  call void @llvm.experimental.noalias.scope.decl(metadata !8099)
  call void @llvm.experimental.noalias.scope.decl(metadata !8101)
  %i.ckx = load ptr, ptr %i.ckw, align 8, !tbaa !97, !noalias !8103
  %.not.i.i.i95.i.i.i = icmp eq ptr %i.ckx, null
  %i.cky = load ptr, ptr %i.ckv, align 8, !noalias !8103
  %.not.i43.i.i.i.i.i1409 = icmp eq ptr %i.cky, null
  %or.cond.i.i.i.i.i1410 = select i1 %.not.i.i.i95.i.i.i, i1 %.not.i43.i.i.i.i.i1409, i1 false
  %.not70.i.i.i.i.i = icmp eq i64 %4, 0           ; 2 uses
  br i1 %or.cond.i.i.i.i.i1410, label %.preheader.i.i101.i.i.i, label %.preheader59.i.i.i.i.i

.preheader59.i.i.i.i.i:                           ; preds = %bb.yu
  br i1 %.not70.i.i.i.i.i, label %_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_7dtime_tES2_lNS_28BinaryLambdaWrapperWithNullsEbZNS_12_GLOBAL__N_17DateSub13BinaryExecuteIS2_S2_lNS5_20MicrosecondsOperatorEEEvRNS_6VectorES9_S9_mEUlS2_S2_RNS_12ValidityMaskEmE_EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESN_mSB_SB_SB_T4_.exit.i.i.i.i, label %.lr.ph.i.i96.i.i.i

.lr.ph.i.i96.i.i.i:                               ; preds = %.preheader59.i.i.i.i.i
  %i.ckz = load ptr, ptr %i.cks, align 8, !tbaa !143, !alias.scope !8099, !noalias !8104 ; 2 uses
  %.not.i44.i.i.i.i.i1411 = icmp eq ptr %i.ckz, null
end_hunk_4
begin_hunk_5_@_ZN6duckdb14ScalarFunction13UnaryFunctionINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.d = load i8, ptr %i.a, align 8, !tbaa !82
  switch i8 %i.d, label %bb.t [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.m = sitofp i64 %.sroa.0.0.copyload.i.i to double
  %i.n = fdiv double %i.m, 1.000000e+06
  store double %i.n, ptr %i.f, align 8, !tbaa !359
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10210)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97, !noalias !10212 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  switch i64 %i.c, label %vector.ph63 [
    i64 0, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit
    i64 1, label %.lr.ph17.i.i.i.preheader
  ]

vector.ph63:                                      ; preds = %.preheader.i.i.i
  %n.vec65 = and i64 %i.c, -2                     ; 3 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next69, %vector.body66 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index67
  %wide.load68 = load <2 x i64>, ptr %i.u, align 8, !tbaa !44, !alias.scope !10207, !noalias !10210
  %i.v = sitofp <2 x i64> %wide.load68 to <2 x double>
  %i.w = fdiv <2 x double> %i.v, splat (double 1.000000e+06)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index67
  store <2 x double> %i.w, ptr %i.x, align 8, !tbaa !359, !alias.scope !10210, !noalias !10207
  %index.next69 = add nuw i64 %index67, 2         ; 2 uses
  %i.y = icmp eq i64 %index.next69, %n.vec65
  br i1 %i.y, label %middle.block70, label %vector.body66, !llvm.loop !10213

middle.block70:                                   ; preds = %vector.body66
  %cmp.n71 = icmp eq i64 %i.c, %n.vec65
  br i1 %cmp.n71, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i, %middle.block70
  %.05616.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i ], [ %n.vec65, %middle.block70 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.z, align 8, !tbaa !97, !noalias !10212
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = icmp eq ptr %2, %i.a
  br i1 %i.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47, !noalias !10212 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !7, !noalias !10212
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !10212
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !3, !noalias !10212
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !3, !noalias !10212
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4, !noalias !10212 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47, !noalias !10212 ; 8 uses
  store <2 x ptr> %i.af, ptr %i.aa, align 8, !tbaa !7, !noalias !10212
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8, !noalias !10212 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.an, align 8, !tbaa !48, !noalias !10212
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !50, !noalias !10212
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !45, !noalias !10212
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !noalias !10212
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #25, !noalias !10212, !inline_history !10214
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !45, !noalias !10212
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !10212
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #25, !noalias !10212, !inline_history !10214
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !10212
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3, !noalias !10212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4, !noalias !10212
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aq, %bb.m ], [ %i.ba, %bb.n ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !53

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #25, !noalias !10212
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !98, !noalias !10212
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !98, !noalias !10212
  %i.bf = add i64 %i.c, 63
  %i.bg = lshr i64 %i.bf, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bh = load ptr, ptr %i.s, align 8, !tbaa !97, !noalias !10212 ; 2 uses
  %.not.i58.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i58.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05713.us.i.i.i = phi i64 [ %i.by, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bi = add i64 %.014.us.i.i.i, 64
  %i.bj = tail call noundef i64 @llvm.umin.i64(i64 %i.bi, i64 %i.c) ; 5 uses
  %i.bk = icmp ult i64 %.014.us.i.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bl = sub nuw i64 %i.bj, %.014.us.i.i.i       ; 3 uses
  %min.iters.check50 = icmp ult i64 %i.bl, 2
  br i1 %min.iters.check50, label %.lr.ph.us.i.i.i.preheader89, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec53 = and i64 %i.bl, -2                    ; 3 uses
  %i.bm = add i64 %.014.us.i.i.i, %n.vec53
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next57, %vector.body54 ] ; 2 uses
  %i.bn = add nuw i64 %.014.us.i.i.i, %index55    ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bn
  %wide.load56 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !44, !alias.scope !10207, !noalias !10210
  %i.bp = sitofp <2 x i64> %wide.load56 to <2 x double>
  %i.bq = fdiv <2 x double> %i.bp, splat (double 1.000000e+06)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn
  store <2 x double> %i.bq, ptr %i.br, align 8, !tbaa !359, !alias.scope !10210, !noalias !10207
  %index.next57 = add nuw i64 %index55, 2         ; 2 uses
  %i.bs = icmp eq i64 %index.next57, %n.vec53
  br i1 %i.bs, label %middle.block58, label %vector.body54, !llvm.loop !10215

middle.block58:                                   ; preds = %vector.body54
  %cmp.n59 = icmp eq i64 %i.bl, %n.vec53
  br i1 %cmp.n59, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader89

.lr.ph.us.i.i.i.preheader89:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block58
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bm, %middle.block58 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader89, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.bx, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader89 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.us.i.i.i
  %.sroa.07.0.copyload.us.i.i.i = load i64, ptr %i.bt, align 8, !tbaa !44, !alias.scope !10207, !noalias !10210
  %i.bu = sitofp i64 %.sroa.07.0.copyload.us.i.i.i to double
  %i.bv = fdiv double %i.bu, 1.000000e+06
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.us.i.i.i
  store double %i.bv, ptr %i.bw, align 8, !tbaa !359, !alias.scope !10210, !noalias !10207
  %i.bx = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.bx, %i.bj
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !10216

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block58, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bj, %middle.block58 ], [ %i.bj, %.lr.ph.us.i.i.i ]
  %i.by = add nuw nsw i64 %.05713.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.by, %i.bg
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !10217

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05713.i.i.i = phi i64 [ %i.dq, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.05713.i.i.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !44, !noalias !10212 ; 4 uses
  %i.cb = add i64 %.014.i.i.i, 64
  %i.cc = tail call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %i.c) ; 12 uses
  switch i64 %i.ca, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cd = icmp ult i64 %.014.i.i.i, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.ce = sub nuw i64 %i.cc, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ce, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader91, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ce, -2                      ; 3 uses
  %i.cf = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = add nuw i64 %.014.i.i.i, %index         ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cg
  %wide.load = load <2 x i64>, ptr %i.ch, align 8, !tbaa !44, !alias.scope !10207, !noalias !10210
  %i.ci = sitofp <2 x i64> %wide.load to <2 x double>
  %i.cj = fdiv <2 x double> %i.ci, splat (double 1.000000e+06)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cg
  store <2 x double> %i.cj, ptr %i.ck, align 8, !tbaa !359, !alias.scope !10210, !noalias !10207
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !10218

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader91

.lr.ph.i.i.i.preheader91:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cm = icmp ult i64 %.014.i.i.i, %i.cc
  br i1 %i.cm, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.cn = sub nuw i64 %i.cc, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.cn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.co = and i64 %i.ca, 1
  %.not.i.i.i.prol = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.014.i.i.i
  %.sroa.05.0.copyload.i.i.i.prol = load i64, ptr %i.cp, align 8, !tbaa !44, !alias.scope !10207, !noalias !10210
  %i.cq = sitofp i64 %.sroa.05.0.copyload.i.i.i.prol to double
  %i.cr = fdiv double %i.cq, 1.000000e+06
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.014.i.i.i
  store double %i.cr, ptr %i.cs, align 8, !tbaa !359, !alias.scope !10210, !noalias !10207
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.ct = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.ct, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.cu = icmp eq i64 %i.cc, %.neg
  br i1 %i.cu, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader91, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.cz, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader91 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.i.i.i
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.cv, align 8, !tbaa !44, !alias.scope !10207, !noalias !10210
  %i.cw = sitofp i64 %.sroa.07.0.copyload.i.i.i to double
  %i.cx = fdiv double %i.cw, 1.000000e+06
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.i.i.i
  store double %i.cx, ptr %i.cy, align 8, !tbaa !359, !alias.scope !10210, !noalias !10207
  %i.cz = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cz, %i.cc
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !10219

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.dp, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.da = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.db, %i.ca
  %.not.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.210.i.i.i
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.dd, align 8, !tbaa !44, !alias.scope !10207, !noalias !10210
  %i.de = sitofp i64 %.sroa.05.0.copyload.i.i.i to double
  %i.df = fdiv double %i.de, 1.000000e+06
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.210.i.i.i
  store double %i.df, ptr %i.dg, align 8, !tbaa !359, !alias.scope !10210, !noalias !10207
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.dh = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.di = sub nuw i64 %i.dh, %.014.i.i.i
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.ca
  %.not.i.i.i.1 = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dh
  %.sroa.05.0.copyload.i.i.i.1 = load i64, ptr %i.dl, align 8, !tbaa !44, !alias.scope !10207, !noalias !10210
  %i.dm = sitofp i64 %.sroa.05.0.copyload.i.i.i.1 to double
  %i.dn = fdiv double %i.dm, 1.000000e+06
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dh
  store double %i.dn, ptr %i.do, align 8, !tbaa !359, !alias.scope !10210, !noalias !10207
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.dp = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.dp, %i.cc
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !10220

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.cc, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.cc, %middle.block ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.cc, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.cc, %bb.s ], [ %i.cc, %.lr.ph.i.i.i ]
  %i.dq = add nuw nsw i64 %.05713.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.dq, %i.bg
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !10217

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.05616.i.i.i = phi i64 [ %i.dv, %.lr.ph17.i.i.i ], [ %.05616.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05616.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dr, align 8, !tbaa !44, !alias.scope !10207, !noalias !10210
  %i.ds = sitofp i64 %.sroa.0.0.copyload.i.i.i to double
  %i.dt = fdiv double %i.ds, 1.000000e+06
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.05616.i.i.i
  store double %i.dt, ptr %i.du, align 8, !tbaa !359, !alias.scope !10210, !noalias !10207
  %i.dv = add nuw i64 %.05616.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.dv, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_7dtime_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !10221

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
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
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !96 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_7dtime_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !125 ; 7 uses
  %i.ea = load ptr, ptr %3, align 8, !tbaa !134   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10222)
  call void @llvm.experimental.noalias.scope.decl(metadata !10225)
  call void @llvm.experimental.noalias.scope.decl(metadata !10227)
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !97, !noalias !10229
  %.not.i.i60.i.i = icmp eq ptr %i.ed, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_7dtime_tEdNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESG_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !143, !alias.scope !10227, !noalias !10230 ; 2 uses
  %.not.i30.i.i.i = icmp eq ptr %i.ee, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i30.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.ey, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.eg = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.eh = and i64 %.03.us.i.i.i, 63
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !97, !noalias !10229
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !44, !noalias !10229
  %i.el = shl nuw i64 1, %i.eh                    ; 2 uses
  %i.em = and i64 %i.ek, %i.el
  %.not.us.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.03.us.i.i.i
  %.sroa.06.0.copyload.us.i.i.i = load i64, ptr %i.en, align 8, !tbaa !44, !alias.scope !10222, !noalias !10231
  %i.eo = sitofp i64 %.sroa.06.0.copyload.us.i.i.i to double
  %i.ep = fdiv double %i.eo, 1.000000e+06
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.03.us.i.i.i
  store double %i.ep, ptr %i.eq, align 8, !tbaa !359, !alias.scope !10225, !noalias !10232
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.er = load ptr, ptr %i.eb, align 8, !tbaa !97, !noalias !10229 ; 2 uses
  %.not.i31.us.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i31.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.es = load i64, ptr %i.ef, align 8, !tbaa !98, !noalias !10229
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 noundef %i.es)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ab
end_hunk_5
begin_hunk_6_@_ZN6duckdb14ScalarFunction13UnaryFunctionINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.m = lshr i64 %.sroa.0.0.copyload.i.i, 24
  %i.n = uitofp nneg i64 %i.m to double
  %i.o = fdiv double %i.n, 1.000000e+06
  store double %i.o, ptr %i.f, align 8, !tbaa !359
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10268)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97, !noalias !10270 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  switch i64 %i.c, label %vector.ph63 [
    i64 0, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit
    i64 1, label %.lr.ph17.i.i.i.preheader
  ]

vector.ph63:                                      ; preds = %.preheader.i.i.i
  %n.vec65 = and i64 %i.c, -2                     ; 3 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next69, %vector.body66 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index67
  %wide.load68 = load <2 x i64>, ptr %i.v, align 8, !tbaa !44, !alias.scope !10265, !noalias !10268
  %i.w = lshr <2 x i64> %wide.load68, splat (i64 24)
  %i.x = uitofp nneg <2 x i64> %i.w to <2 x double>
  %i.y = fdiv <2 x double> %i.x, splat (double 1.000000e+06)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index67
  store <2 x double> %i.y, ptr %i.z, align 8, !tbaa !359, !alias.scope !10268, !noalias !10265
  %index.next69 = add nuw i64 %index67, 2         ; 2 uses
  %i.aa = icmp eq i64 %index.next69, %n.vec65
  br i1 %i.aa, label %middle.block70, label %vector.body66, !llvm.loop !10271

middle.block70:                                   ; preds = %vector.body66
  %cmp.n71 = icmp eq i64 %i.c, %n.vec65
  br i1 %cmp.n71, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i, %middle.block70
  %.05616.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i ], [ %n.vec65, %middle.block70 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.u, ptr %i.ab, align 8, !tbaa !97, !noalias !10270
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = icmp eq ptr %2, %i.a
  br i1 %i.ad, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47, !noalias !10270 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !7, !noalias !10270
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !10270
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !10270
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !3, !noalias !10270
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4, !noalias !10270 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47, !noalias !10270 ; 8 uses
  store <2 x ptr> %i.ah, ptr %i.ac, align 8, !tbaa !7, !noalias !10270
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8, !noalias !10270 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ap, align 8, !tbaa !48, !noalias !10270
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !50, !noalias !10270
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !45, !noalias !10270
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !10270
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #25, !noalias !10270, !inline_history !10272
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !45, !noalias !10270
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !10270
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #25, !noalias !10270, !inline_history !10272
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !10270
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !3, !noalias !10270
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4, !noalias !10270
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.as, %bb.m ], [ %i.bc, %bb.n ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !53

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #25, !noalias !10270
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !98, !noalias !10270
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !98, !noalias !10270
  %i.bh = add i64 %i.c, 63
  %i.bi = lshr i64 %i.bh, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !97, !noalias !10270 ; 2 uses
  %.not.i58.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i58.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05713.us.i.i.i = phi i64 [ %i.cc, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bk = add i64 %.014.us.i.i.i, 64
  %i.bl = tail call noundef i64 @llvm.umin.i64(i64 %i.bk, i64 %i.c) ; 5 uses
  %i.bm = icmp ult i64 %.014.us.i.i.i, %i.bl
  br i1 %i.bm, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bn = sub nuw i64 %i.bl, %.014.us.i.i.i       ; 3 uses
  %min.iters.check50 = icmp ult i64 %i.bn, 2
  br i1 %min.iters.check50, label %.lr.ph.us.i.i.i.preheader89, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec53 = and i64 %i.bn, -2                    ; 3 uses
  %i.bo = add i64 %.014.us.i.i.i, %n.vec53
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next57, %vector.body54 ] ; 2 uses
  %i.bp = add nuw i64 %.014.us.i.i.i, %index55    ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bp
  %wide.load56 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !44, !alias.scope !10265, !noalias !10268
  %i.br = lshr <2 x i64> %wide.load56, splat (i64 24)
  %i.bs = uitofp nneg <2 x i64> %i.br to <2 x double>
  %i.bt = fdiv <2 x double> %i.bs, splat (double 1.000000e+06)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bp
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !359, !alias.scope !10268, !noalias !10265
  %index.next57 = add nuw i64 %index55, 2         ; 2 uses
  %i.bv = icmp eq i64 %index.next57, %n.vec53
  br i1 %i.bv, label %middle.block58, label %vector.body54, !llvm.loop !10273

middle.block58:                                   ; preds = %vector.body54
  %cmp.n59 = icmp eq i64 %i.bn, %n.vec53
  br i1 %cmp.n59, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader89

.lr.ph.us.i.i.i.preheader89:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block58
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bo, %middle.block58 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader89, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cb, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader89 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.19.us.i.i.i
  %.sroa.07.0.copyload.us.i.i.i = load i64, ptr %i.bw, align 8, !tbaa !44, !alias.scope !10265, !noalias !10268
  %i.bx = lshr i64 %.sroa.07.0.copyload.us.i.i.i, 24
  %i.by = uitofp nneg i64 %i.bx to double
  %i.bz = fdiv double %i.by, 1.000000e+06
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.19.us.i.i.i
  store double %i.bz, ptr %i.ca, align 8, !tbaa !359, !alias.scope !10268, !noalias !10265
  %i.cb = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cb, %i.bl
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !10274

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block58, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bl, %middle.block58 ], [ %i.bl, %.lr.ph.us.i.i.i ]
  %i.cc = add nuw nsw i64 %.05713.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.cc, %i.bi
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !10275

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05713.i.i.i = phi i64 [ %i.dz, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.05713.i.i.i
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !44, !noalias !10270 ; 4 uses
  %i.cf = add i64 %.014.i.i.i, 64
  %i.cg = tail call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 %i.c) ; 12 uses
  switch i64 %i.ce, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.ch = icmp ult i64 %.014.i.i.i, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.ci = sub nuw i64 %i.cg, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ci, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader91, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ci, -2                      ; 3 uses
  %i.cj = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = add nuw i64 %.014.i.i.i, %index         ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ck
  %wide.load = load <2 x i64>, ptr %i.cl, align 8, !tbaa !44, !alias.scope !10265, !noalias !10268
  %i.cm = lshr <2 x i64> %wide.load, splat (i64 24)
  %i.cn = uitofp nneg <2 x i64> %i.cm to <2 x double>
  %i.co = fdiv <2 x double> %i.cn, splat (double 1.000000e+06)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ck
  store <2 x double> %i.co, ptr %i.cp, align 8, !tbaa !359, !alias.scope !10268, !noalias !10265
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !10276

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader91

.lr.ph.i.i.i.preheader91:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cr = icmp ult i64 %.014.i.i.i, %i.cg
  br i1 %i.cr, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.cs = sub nuw i64 %i.cg, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.cs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.ct = and i64 %i.ce, 1
  %.not.i.i.i.prol = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.014.i.i.i
  %.sroa.05.0.copyload.i.i.i.prol = load i64, ptr %i.cu, align 8, !tbaa !44, !alias.scope !10265, !noalias !10268
  %i.cv = lshr i64 %.sroa.05.0.copyload.i.i.i.prol, 24
  %i.cw = uitofp nneg i64 %i.cv to double
  %i.cx = fdiv double %i.cw, 1.000000e+06
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.014.i.i.i
  store double %i.cx, ptr %i.cy, align 8, !tbaa !359, !alias.scope !10268, !noalias !10265
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.cz = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.cz, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.da = icmp eq i64 %i.cg, %.neg
  br i1 %i.da, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader91, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader91 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.19.i.i.i
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.db, align 8, !tbaa !44, !alias.scope !10265, !noalias !10268
  %i.dc = lshr i64 %.sroa.07.0.copyload.i.i.i, 24
  %i.dd = uitofp nneg i64 %i.dc to double
  %i.de = fdiv double %i.dd, 1.000000e+06
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.19.i.i.i
  store double %i.de, ptr %i.df, align 8, !tbaa !359, !alias.scope !10268, !noalias !10265
  %i.dg = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dg, %i.cg
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !10277

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.dy, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.dh = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = and i64 %i.di, %i.ce
  %.not.i.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.210.i.i.i
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.dk, align 8, !tbaa !44, !alias.scope !10265, !noalias !10268
  %i.dl = lshr i64 %.sroa.05.0.copyload.i.i.i, 24
  %i.dm = uitofp nneg i64 %i.dl to double
  %i.dn = fdiv double %i.dm, 1.000000e+06
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.210.i.i.i
  store double %i.dn, ptr %i.do, align 8, !tbaa !359, !alias.scope !10268, !noalias !10265
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.dp = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.dq = sub nuw i64 %i.dp, %.014.i.i.i
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = and i64 %i.dr, %i.ce
  %.not.i.i.i.1 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dp
  %.sroa.05.0.copyload.i.i.i.1 = load i64, ptr %i.dt, align 8, !tbaa !44, !alias.scope !10265, !noalias !10268
  %i.du = lshr i64 %.sroa.05.0.copyload.i.i.i.1, 24
  %i.dv = uitofp nneg i64 %i.du to double
  %i.dw = fdiv double %i.dv, 1.000000e+06
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dp
  store double %i.dw, ptr %i.dx, align 8, !tbaa !359, !alias.scope !10268, !noalias !10265
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.dy = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.dy, %i.cg
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !10278

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.cg, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.cg, %middle.block ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.cg, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.cg, %bb.s ], [ %i.cg, %.lr.ph.i.i.i ]
  %i.dz = add nuw nsw i64 %.05713.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.dz, %i.bi
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !10275

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader, %.lr.ph17.i.i.i
  %.05616.i.i.i = phi i64 [ %i.ef, %.lr.ph17.i.i.i ], [ %.05616.i.i.i.ph, %.lr.ph17.i.i.i.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.05616.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ea, align 8, !tbaa !44, !alias.scope !10265, !noalias !10268
  %i.eb = lshr i64 %.sroa.0.0.copyload.i.i.i, 24
  %i.ec = uitofp nneg i64 %i.eb to double
  %i.ed = fdiv double %i.ec, 1.000000e+06
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05616.i.i.i
  store double %i.ed, ptr %i.ee, align 8, !tbaa !359, !alias.scope !10268, !noalias !10265
  %i.ef = add nuw i64 %.05616.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.ef, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tEdNS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !10279

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
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
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !96 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10dtime_tz_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !125 ; 7 uses
  %i.ek = load ptr, ptr %3, align 8, !tbaa !134   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10280)
  call void @llvm.experimental.noalias.scope.decl(metadata !10283)
  call void @llvm.experimental.noalias.scope.decl(metadata !10285)
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !97, !noalias !10287
  %.not.i.i60.i.i = icmp eq ptr %i.en, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_10dtime_tz_tEdNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_18DatePart13EpochOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESG_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.eo = load ptr, ptr %i.ek, align 8, !tbaa !143, !alias.scope !10285, !noalias !10288 ; 2 uses
  %.not.i30.i.i.i = icmp eq ptr %i.eo, null
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i30.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.fj, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.eq = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.er = and i64 %.03.us.i.i.i, 63
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !97, !noalias !10287
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.eq
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !44, !noalias !10287
  %i.ev = shl nuw i64 1, %i.er                    ; 2 uses
  %i.ew = and i64 %i.eu, %i.ev
  %.not.us.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.03.us.i.i.i
  %.sroa.06.0.copyload.us.i.i.i = load i64, ptr %i.ex, align 8, !tbaa !44, !alias.scope !10280, !noalias !10289
  %i.ey = lshr i64 %.sroa.06.0.copyload.us.i.i.i, 24
  %i.ez = uitofp nneg i64 %i.ey to double
  %i.fa = fdiv double %i.ez, 1.000000e+06
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.03.us.i.i.i
  store double %i.fa, ptr %i.fb, align 8, !tbaa !359, !alias.scope !10283, !noalias !10290
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fc = load ptr, ptr %i.el, align 8, !tbaa !97, !noalias !10287 ; 2 uses
  %.not.i31.us.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i31.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i
end_hunk_6
begin_hunk_7_@_ZN6duckdb14ScalarFunction13UnaryFunctionINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart24EpochNanosecondsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart24EpochNanosecondsOperatorEEEvRNS_6VectorES7_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.m = lshr i64 %.sroa.0.0.copyload.i.i, 24
  %i.n = mul nuw nsw i64 %i.m, 1000
  store i64 %i.n, ptr %i.f, align 8, !tbaa !44
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart24EpochNanosecondsOperatorEEEvRNS_6VectorES7_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10408)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97, !noalias !10410 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart24EpochNanosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check64 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check64, label %.lr.ph17.i.i.i.preheader93, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.vec67 = and i64 %i.c, -4                     ; 3 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next72, %vector.body68 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index69 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load70 = load <2 x i64>, ptr %i.u, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %wide.load71 = load <2 x i64>, ptr %i.v, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %i.w = lshr <2 x i64> %wide.load70, splat (i64 24)
  %i.x = lshr <2 x i64> %wide.load71, splat (i64 24)
  %i.y = mul nuw nsw <2 x i64> %i.w, splat (i64 1000)
  %i.z = mul nuw nsw <2 x i64> %i.x, splat (i64 1000)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index69 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x i64> %i.y, ptr %i.aa, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  store <2 x i64> %i.z, ptr %i.ab, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  %index.next72 = add nuw i64 %index69, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.ac, label %middle.block73, label %vector.body68, !llvm.loop !10411

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.c, %n.vec67
  br i1 %cmp.n74, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart24EpochNanosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph17.i.i.i.preheader93

.lr.ph17.i.i.i.preheader93:                       ; preds = %.lr.ph17.i.i.i.preheader, %middle.block73
  %.05616.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec67, %middle.block73 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.ad, align 8, !tbaa !97, !noalias !10410
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp eq ptr %2, %i.a
  br i1 %i.af, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47, !noalias !10410 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !7, !noalias !10410
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !10410
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !10410
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3, !noalias !10410
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !10410 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47, !noalias !10410 ; 8 uses
  store <2 x ptr> %i.aj, ptr %i.ae, align 8, !tbaa !7, !noalias !10410
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !noalias !10410 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ar, align 8, !tbaa !48, !noalias !10410
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !50, !noalias !10410
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !45, !noalias !10410
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !10410
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #25, !noalias !10410, !inline_history !10412
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !45, !noalias !10410
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !10410
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #25, !noalias !10410, !inline_history !10412
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !10410
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3, !noalias !10410
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4, !noalias !10410
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.au, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !53

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #25, !noalias !10410
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !98, !noalias !10410
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !98, !noalias !10410
  %i.bj = add i64 %i.c, 63
  %i.bk = lshr i64 %i.bj, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart24EpochNanosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !97, !noalias !10410 ; 2 uses
  %.not.i58.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i58.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05713.us.i.i.i = phi i64 [ %i.cg, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bm = add i64 %.014.us.i.i.i, 64
  %i.bn = tail call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.c) ; 5 uses
  %i.bo = icmp ult i64 %.014.us.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bp = sub nuw i64 %i.bn, %.014.us.i.i.i       ; 3 uses
  %min.iters.check51 = icmp ult i64 %i.bp, 4
  br i1 %min.iters.check51, label %.lr.ph.us.i.i.i.preheader94, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec54 = and i64 %i.bp, -4                    ; 3 uses
  %i.bq = add i64 %.014.us.i.i.i, %n.vec54
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph52
  %index56 = phi i64 [ 0, %vector.ph52 ], [ %index.next59, %vector.body55 ] ; 2 uses
  %i.br = add nuw i64 %.014.us.i.i.i, %index56    ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %wide.load58 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %i.bu = lshr <2 x i64> %wide.load57, splat (i64 24)
  %i.bv = lshr <2 x i64> %wide.load58, splat (i64 24)
  %i.bw = mul nuw nsw <2 x i64> %i.bu, splat (i64 1000)
  %i.bx = mul nuw nsw <2 x i64> %i.bv, splat (i64 1000)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.br ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <2 x i64> %i.bw, ptr %i.by, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  store <2 x i64> %i.bx, ptr %i.bz, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.ca, label %middle.block60, label %vector.body55, !llvm.loop !10413

middle.block60:                                   ; preds = %vector.body55
  %cmp.n61 = icmp eq i64 %i.bp, %n.vec54
  br i1 %cmp.n61, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader94

.lr.ph.us.i.i.i.preheader94:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block60
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bq, %middle.block60 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader94, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cf, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader94 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.us.i.i.i
  %.sroa.07.0.copyload.us.i.i.i = load i64, ptr %i.cb, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %i.cc = lshr i64 %.sroa.07.0.copyload.us.i.i.i, 24
  %i.cd = mul nuw nsw i64 %i.cc, 1000
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.us.i.i.i
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  %i.cf = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cf, %i.bn
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !10414

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bn, %middle.block60 ], [ %i.bn, %.lr.ph.us.i.i.i ]
  %i.cg = add nuw nsw i64 %.05713.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.cg, %i.bk
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart24EpochNanosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !10415

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05713.i.i.i = phi i64 [ %i.ec, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.05713.i.i.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !44, !noalias !10410 ; 4 uses
  %i.cj = add i64 %.014.i.i.i, 64
  %i.ck = tail call noundef i64 @llvm.umin.i64(i64 %i.cj, i64 %i.c) ; 12 uses
  switch i64 %i.ci, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cl = icmp ult i64 %.014.i.i.i, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.cm = sub nuw i64 %i.ck, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cm, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader96, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.cm, -4                      ; 3 uses
  %i.cn = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = add nuw i64 %.014.i.i.i, %index         ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <2 x i64>, ptr %i.cp, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %wide.load49 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %i.cr = lshr <2 x i64> %wide.load, splat (i64 24)
  %i.cs = lshr <2 x i64> %wide.load49, splat (i64 24)
  %i.ct = mul nuw nsw <2 x i64> %i.cr, splat (i64 1000)
  %i.cu = mul nuw nsw <2 x i64> %i.cs, splat (i64 1000)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.co ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <2 x i64> %i.ct, ptr %i.cv, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  store <2 x i64> %i.cu, ptr %i.cw, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !10416

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader96

.lr.ph.i.i.i.preheader96:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cy = icmp ult i64 %.014.i.i.i, %i.ck
  br i1 %i.cy, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.cz = sub nuw i64 %i.ck, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.cz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.da = and i64 %i.ci, 1
  %.not.i.i.i.prol = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.014.i.i.i
  %.sroa.05.0.copyload.i.i.i.prol = load i64, ptr %i.db, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %i.dc = lshr i64 %.sroa.05.0.copyload.i.i.i.prol, 24
  %i.dd = mul nuw nsw i64 %i.dc, 1000
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.014.i.i.i
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.df = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.df, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dg = icmp eq i64 %i.ck, %.neg
  br i1 %i.dg, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader96, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader96 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.19.i.i.i
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.dh, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %i.di = lshr i64 %.sroa.07.0.copyload.i.i.i, 24
  %i.dj = mul nuw nsw i64 %i.di, 1000
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.i.i.i
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  %i.dl = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dl, %i.ck
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !10417

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.eb, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.dm = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.ci
  %.not.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.210.i.i.i
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.dp, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %i.dq = lshr i64 %.sroa.05.0.copyload.i.i.i, 24
  %i.dr = mul nuw nsw i64 %i.dq, 1000
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.210.i.i.i
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.dt = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.du = sub nuw i64 %i.dt, %.014.i.i.i
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = and i64 %i.dv, %i.ci
  %.not.i.i.i.1 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dt
  %.sroa.05.0.copyload.i.i.i.1 = load i64, ptr %i.dx, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %i.dy = lshr i64 %.sroa.05.0.copyload.i.i.i.1, 24
  %i.dz = mul nuw nsw i64 %i.dy, 1000
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dt
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.eb = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.eb, %i.ck
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !10418

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.ck, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.ck, %middle.block ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.ck, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.ck, %bb.s ], [ %i.ck, %.lr.ph.i.i.i ]
  %i.ec = add nuw nsw i64 %.05713.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.ec, %i.bk
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart24EpochNanosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !10415

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader93, %.lr.ph17.i.i.i
  %.05616.i.i.i = phi i64 [ %i.eh, %.lr.ph17.i.i.i ], [ %.05616.i.i.i.ph, %.lr.ph17.i.i.i.preheader93 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05616.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ed, align 8, !tbaa !44, !alias.scope !10405, !noalias !10408
  %i.ee = lshr i64 %.sroa.0.0.copyload.i.i.i, 24
  %i.ef = mul nuw nsw i64 %i.ee, 1000
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.05616.i.i.i
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !44, !alias.scope !10408, !noalias !10405
  %i.eh = add nuw i64 %.05616.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.eh, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart24EpochNanosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !10419

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
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
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !96 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10dtime_tz_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !125 ; 7 uses
  %i.em = load ptr, ptr %3, align 8, !tbaa !134   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10420)
  call void @llvm.experimental.noalias.scope.decl(metadata !10423)
  call void @llvm.experimental.noalias.scope.decl(metadata !10425)
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !97, !noalias !10427
  %.not.i.i60.i.i = icmp eq ptr %i.ep, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_10dtime_tz_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_18DatePart24EpochNanosecondsOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESG_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.eq = load ptr, ptr %i.em, align 8, !tbaa !143, !alias.scope !10425, !noalias !10428 ; 2 uses
  %.not.i30.i.i.i = icmp eq ptr %i.eq, null
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i30.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.fk, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.es = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.et = and i64 %.03.us.i.i.i, 63
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !97, !noalias !10427
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.es
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !44, !noalias !10427
  %i.ex = shl nuw i64 1, %i.et                    ; 2 uses
  %i.ey = and i64 %i.ew, %i.ex
  %.not.us.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.03.us.i.i.i
  %.sroa.06.0.copyload.us.i.i.i = load i64, ptr %i.ez, align 8, !tbaa !44, !alias.scope !10420, !noalias !10429
  %i.fa = lshr i64 %.sroa.06.0.copyload.us.i.i.i, 24
  %i.fb = mul nuw nsw i64 %i.fa, 1000
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.03.us.i.i.i
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !44, !alias.scope !10423, !noalias !10430
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fd = load ptr, ptr %i.en, align 8, !tbaa !97, !noalias !10427 ; 2 uses
  %.not.i31.us.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i31.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

end_hunk_7
begin_hunk_8_@_ZN6duckdb14ScalarFunction13UnaryFunctionINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart25EpochMicrosecondsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart25EpochMicrosecondsOperatorEEEvRNS_6VectorES7_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.m = lshr i64 %.sroa.0.0.copyload.i.i, 24
  store i64 %i.m, ptr %i.f, align 8, !tbaa !44
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart25EpochMicrosecondsOperatorEEEvRNS_6VectorES7_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96   ; 9 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10554)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !97, !noalias !10556 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart25EpochMicrosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check64 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check64, label %.lr.ph17.i.i.i.preheader93, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.vec67 = and i64 %i.c, -4                     ; 3 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next72, %vector.body68 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index69 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load70 = load <2 x i64>, ptr %i.t, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %wide.load71 = load <2 x i64>, ptr %i.u, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %i.v = lshr <2 x i64> %wide.load70, splat (i64 24)
  %i.w = lshr <2 x i64> %wide.load71, splat (i64 24)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index69 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x i64> %i.v, ptr %i.x, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  store <2 x i64> %i.w, ptr %i.y, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  %index.next72 = add nuw i64 %index69, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.z, label %middle.block73, label %vector.body68, !llvm.loop !10557

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.c, %n.vec67
  br i1 %cmp.n74, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart25EpochMicrosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph17.i.i.i.preheader93

.lr.ph17.i.i.i.preheader93:                       ; preds = %.lr.ph17.i.i.i.preheader, %middle.block73
  %.05616.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec67, %middle.block73 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.s, ptr %i.aa, align 8, !tbaa !97, !noalias !10556
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = icmp eq ptr %2, %i.a
  br i1 %i.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47, !noalias !10556 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !7, !noalias !10556
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !10556
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3, !noalias !10556
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3, !noalias !10556
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !10556 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !47, !noalias !10556 ; 8 uses
  store <2 x ptr> %i.ag, ptr %i.ab, align 8, !tbaa !7, !noalias !10556
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8, !noalias !10556 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ao, align 8, !tbaa !48, !noalias !10556
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !50, !noalias !10556
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !45, !noalias !10556
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !10556
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #25, !noalias !10556, !inline_history !10558
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !45, !noalias !10556
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !10556
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #25, !noalias !10556, !inline_history !10558
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52, !noalias !10556
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3, !noalias !10556
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4, !noalias !10556
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.m ], [ %i.bb, %bb.n ]
  %i.bc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !53

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #25, !noalias !10556
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !98, !noalias !10556
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !98, !noalias !10556
  %i.bg = add i64 %i.c, 63
  %i.bh = lshr i64 %i.bg, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart25EpochMicrosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bi = load ptr, ptr %i.r, align 8, !tbaa !97, !noalias !10556 ; 2 uses
  %.not.i58.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i58.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05713.us.i.i.i = phi i64 [ %i.ca, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bj = add i64 %.014.us.i.i.i, 64
  %i.bk = tail call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.c) ; 5 uses
  %i.bl = icmp ult i64 %.014.us.i.i.i, %i.bk
  br i1 %i.bl, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bm = sub nuw i64 %i.bk, %.014.us.i.i.i       ; 3 uses
  %min.iters.check51 = icmp ult i64 %i.bm, 4
  br i1 %min.iters.check51, label %.lr.ph.us.i.i.i.preheader94, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.vec54 = and i64 %i.bm, -4                    ; 3 uses
  %i.bn = add i64 %.014.us.i.i.i, %n.vec54
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph52
  %index56 = phi i64 [ 0, %vector.ph52 ], [ %index.next59, %vector.body55 ] ; 2 uses
  %i.bo = add nuw i64 %.014.us.i.i.i, %index56    ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %wide.load58 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %i.br = lshr <2 x i64> %wide.load57, splat (i64 24)
  %i.bs = lshr <2 x i64> %wide.load58, splat (i64 24)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bo ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x i64> %i.br, ptr %i.bt, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  store <2 x i64> %i.bs, ptr %i.bu, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.bv, label %middle.block60, label %vector.body55, !llvm.loop !10559

middle.block60:                                   ; preds = %vector.body55
  %cmp.n61 = icmp eq i64 %i.bm, %n.vec54
  br i1 %cmp.n61, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i.preheader94

.lr.ph.us.i.i.i.preheader94:                      ; preds = %.lr.ph.us.i.i.i.preheader, %middle.block60
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bn, %middle.block60 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader94, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.bz, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader94 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.19.us.i.i.i
  %.sroa.07.0.copyload.us.i.i.i = load i64, ptr %i.bw, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %i.bx = lshr i64 %.sroa.07.0.copyload.us.i.i.i, 24
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.19.us.i.i.i
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  %i.bz = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.bz, %i.bk
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !10560

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %middle.block60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bk, %middle.block60 ], [ %i.bk, %.lr.ph.us.i.i.i ]
  %i.ca = add nuw nsw i64 %.05713.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.ca, %i.bh
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart25EpochMicrosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !10561

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05713.i.i.i = phi i64 [ %i.dq, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.05713.i.i.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !44, !noalias !10556 ; 4 uses
  %i.cd = add i64 %.014.i.i.i, 64
  %i.ce = tail call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %i.c) ; 12 uses
  switch i64 %i.cc, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cf = icmp ult i64 %.014.i.i.i, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.cg = sub nuw i64 %i.ce, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cg, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader96, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.cg, -4                      ; 3 uses
  %i.ch = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = add nuw i64 %.014.i.i.i, %index         ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load = load <2 x i64>, ptr %i.cj, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %wide.load49 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %i.cl = lshr <2 x i64> %wide.load, splat (i64 24)
  %i.cm = lshr <2 x i64> %wide.load49, splat (i64 24)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ci ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <2 x i64> %i.cl, ptr %i.cn, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  store <2 x i64> %i.cm, ptr %i.co, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !10562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i.preheader96

.lr.ph.i.i.i.preheader96:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i.i.i

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cq = icmp ult i64 %.014.i.i.i, %i.ce
  br i1 %i.cq, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.cr = sub nuw i64 %i.ce, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.cr, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.cs = and i64 %i.cc, 1
  %.not.i.i.i.prol = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.014.i.i.i
  %.sroa.05.0.copyload.i.i.i.prol = load i64, ptr %i.ct, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %i.cu = lshr i64 %.sroa.05.0.copyload.i.i.i.prol, 24
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.014.i.i.i
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.cw = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.cw, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.cx = icmp eq i64 %i.ce, %.neg
  br i1 %i.cx, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader96, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader96 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.19.i.i.i
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.cy, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %i.cz = lshr i64 %.sroa.07.0.copyload.i.i.i, 24
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.19.i.i.i
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  %i.db = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.db, %i.ce
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !10563

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.dp, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.dc = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.dd, %i.cc
  %.not.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.210.i.i.i
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.df, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %i.dg = lshr i64 %.sroa.05.0.copyload.i.i.i, 24
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.210.i.i.i
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.di = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.dj = sub nuw i64 %i.di, %.014.i.i.i
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.cc
  %.not.i.i.i.1 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.di
  %.sroa.05.0.copyload.i.i.i.1 = load i64, ptr %i.dm, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %i.dn = lshr i64 %.sroa.05.0.copyload.i.i.i.1, 24
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.di
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.dp = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.dp, %i.ce
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !10564

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %middle.block, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.ce, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.ce, %middle.block ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.ce, %.lr.ph11.i.i.i.prol.loopexit ], [ %i.ce, %bb.s ], [ %i.ce, %.lr.ph.i.i.i ]
  %i.dq = add nuw nsw i64 %.05713.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.dq, %i.bh
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart25EpochMicrosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !10561

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader93, %.lr.ph17.i.i.i
  %.05616.i.i.i = phi i64 [ %i.du, %.lr.ph17.i.i.i ], [ %.05616.i.i.i.ph, %.lr.ph17.i.i.i.preheader93 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05616.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dr, align 8, !tbaa !44, !alias.scope !10551, !noalias !10554
  %i.ds = lshr i64 %.sroa.0.0.copyload.i.i.i, 24
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05616.i.i.i
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !44, !alias.scope !10554, !noalias !10551
  %i.du = add nuw i64 %.05616.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.du, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_10dtime_tz_tElNS_12_GLOBAL__N_18DatePart25EpochMicrosecondsOperatorEEEvRNS_6VectorES7_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !10565

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
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
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !96 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10dtime_tz_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !125 ; 9 uses
  %i.dz = load ptr, ptr %3, align 8, !tbaa !134   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10566)
  call void @llvm.experimental.noalias.scope.decl(metadata !10569)
  call void @llvm.experimental.noalias.scope.decl(metadata !10571)
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !97, !noalias !10573
  %.not.i.i60.i.i = icmp eq ptr %i.ec, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_10dtime_tz_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_18DatePart25EpochMicrosecondsOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESG_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !143, !alias.scope !10571, !noalias !10574 ; 2 uses
  %.not.i30.i.i.i = icmp eq ptr %i.ed, null
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i30.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.ew, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.ef = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.eg = and i64 %.03.us.i.i.i, 63
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !97, !noalias !10573
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ef
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !44, !noalias !10573
  %i.ek = shl nuw i64 1, %i.eg                    ; 2 uses
  %i.el = and i64 %i.ej, %i.ek
  %.not.us.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.03.us.i.i.i
  %.sroa.06.0.copyload.us.i.i.i = load i64, ptr %i.em, align 8, !tbaa !44, !alias.scope !10566, !noalias !10575
  %i.en = lshr i64 %.sroa.06.0.copyload.us.i.i.i, 24
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.03.us.i.i.i
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !44, !alias.scope !10569, !noalias !10576
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.ep = load ptr, ptr %i.ea, align 8, !tbaa !97, !noalias !10573 ; 2 uses
  %.not.i31.us.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i31.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load i64, ptr %i.ee, align 8, !tbaa !98, !noalias !10573
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 noundef %i.eq)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ab
  %.pre.i.us.i.i.i = load ptr, ptr %i.ea, align 8, !tbaa !97, !noalias !10573
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i
end_hunk_8
