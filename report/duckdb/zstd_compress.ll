inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11duckdb_zstd25ZSTD_createCDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_26ZSTD_compressionParametersENS_14ZSTD_customMemE:bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.b, ptr noundef nonnull align 8 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !89
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !347
  %i.d = call noundef ptr @_ZN11duckdb_zstd26ZSTD_createCDict_advanced2EPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eEPKNS_18ZSTD_CCtx_params_sENS_14ZSTD_customMemE(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd26ZSTD_createCDict_advanced2EPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eEPKNS_18ZSTD_CCtx_params_sENS_14ZSTD_customMemE(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::ZSTD_CCtx_params_s", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 16 ; 8 uses
  %8 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 16 ; 6 uses
  %9 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %6, ptr noundef nonnull align 8 dereferenceable(216) %4, i64 216, i1 false)
  %i.a = load ptr, ptr %5, align 8, !tbaa !60     ; 3 uses
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %.not16 = icmp eq ptr %i.c, null
  %i.d = xor i1 %.not, %.not16
  br i1 %i.d, label %_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.c, label %_ZN11duckdb_zstdL35ZSTD_dedicatedDictSearch_getCParamsEim.exit

_ZN11duckdb_zstdL35ZSTD_dedicatedDictSearch_getCParamsEim.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.h = load i32, ptr %i.g, align 4
  call fastcc void @_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind noalias nonnull writable align 4 %7, i32 noundef %i.h, i64 noundef 0, i64 noundef %1, i32 noundef 2), !alias.scope !348
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !101, !alias.scope !348 ; 2 uses
  %.off.i = add i32 %i.j, -3
  %switch.i = icmp ult i32 %.off.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !3    ; 2 uses
  %i.m = add i32 %i.l, 2
  %.sroa.10.0.copyload = select i1 %switch.i, i32 %i.m, i32 %i.l
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !3
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.o = load <4 x i32>, ptr %7, align 16
  %i.p = insertelement <4 x i32> poison, i32 %.sroa.10.0.copyload, i64 2
  %i.q = insertelement <4 x i32> %i.p, i32 %.sroa.12.0.copyload, i64 3
  %i.r = shufflevector <4 x i32> %i.o, <4 x i32> %i.q, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.t = load <2 x i32>, ptr %.sroa.13.0..sroa_idx, align 16, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.u = load <4 x i32>, ptr %i.n, align 4        ; 2 uses
  %i.v = icmp eq <4 x i32> %i.u, zeroinitializer
  %i.w = select <4 x i1> %i.v, <4 x i32> %i.r, <4 x i32> %i.u
  %i.x = load <2 x i32>, ptr %i.s, align 4        ; 2 uses
  %i.y = icmp eq <2 x i32> %i.x, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x i32> %i.t, <2 x i32> %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not32.i = icmp eq i32 %i.ab, 0
  %spec.select85 = select i1 %.not32.i, i32 %i.j, i32 %i.ab
  br label %_ZN11duckdb_zstdL20ZSTD_overrideCParamsEPNS_26ZSTD_compressionParametersEPKS0_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN11duckdb_zstd29ZSTD_getCParamsFromCCtxParamsEPKNS_18ZSTD_CCtx_params_sEmmNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 4 %8, ptr noundef nonnull %4, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  %i.ac = load <4 x i32>, ptr %8, align 16, !tbaa !3
  %.sroa.13.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ad = load <2 x i32>, ptr %.sroa.13.0..sroa_idx48, align 16, !tbaa !3
  %.sroa.15.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.15.0.copyload61 = load i32, ptr %.sroa.15.0..sroa_idx60, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZN11duckdb_zstdL20ZSTD_overrideCParamsEPNS_26ZSTD_compressionParametersEPKS0_.exit

_ZN11duckdb_zstdL20ZSTD_overrideCParamsEPNS_26ZSTD_compressionParametersEPKS0_.exit: ; preds = %_ZN11duckdb_zstdL35ZSTD_dedicatedDictSearch_getCParamsEim.exit, %bb.c
  %.sroa.15.0 = phi i32 [ %.sroa.15.0.copyload61, %bb.c ], [ %spec.select85, %_ZN11duckdb_zstdL35ZSTD_dedicatedDictSearch_getCParamsEim.exit ] ; 2 uses
  %i.ae = phi <4 x i32> [ %i.ac, %bb.c ], [ %i.w, %_ZN11duckdb_zstdL35ZSTD_dedicatedDictSearch_getCParamsEim.exit ] ; 3 uses
  %i.af = phi <2 x i32> [ %i.ad, %bb.c ], [ %i.z, %_ZN11duckdb_zstdL35ZSTD_dedicatedDictSearch_getCParamsEim.exit ]
  %i.ag = add i32 %.sroa.15.0, -6
  %or.cond.i = icmp ult i32 %i.ag, -3
  %i.ah = extractelement <4 x i32> %i.ae, i64 1   ; 2 uses
  %i.ai = extractelement <4 x i32> %i.ae, i64 2
  %i.aj = icmp ule i32 %i.ai, %i.ah
  %i.ak = icmp ugt i32 %i.ah, 24
  %i.al = or i1 %i.aj, %i.ak
  %or.cond86 = select i1 %or.cond.i, i1 true, i1 %i.al
  br i1 %or.cond86, label %_ZN11duckdb_zstdL36ZSTD_dedicatedDictSearch_isSupportedEPKNS_26ZSTD_compressionParametersE.exit.thread, label %bb.d

_ZN11duckdb_zstdL36ZSTD_dedicatedDictSearch_isSupportedEPKNS_26ZSTD_compressionParametersE.exit.thread: ; preds = %_ZN11duckdb_zstdL20ZSTD_overrideCParamsEPNS_26ZSTD_compressionParametersEPKS0_.exit
  store i32 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @_ZN11duckdb_zstd29ZSTD_getCParamsFromCCtxParamsEPKNS_18ZSTD_CCtx_params_sEmmNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 4 %9, ptr noundef nonnull %6, i64 noundef -1, i64 noundef %1, i32 noundef 2)
  %i.am = load <4 x i32>, ptr %9, align 16, !tbaa !3
  %.sroa.13.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.an = load <2 x i32>, ptr %.sroa.13.0..sroa_idx50, align 16, !tbaa !3
  %.sroa.15.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.15.0.copyload63 = load i32, ptr %.sroa.15.0..sroa_idx62, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZN11duckdb_zstdL20ZSTD_overrideCParamsEPNS_26ZSTD_compressionParametersEPKS0_.exit, %_ZN11duckdb_zstdL36ZSTD_dedicatedDictSearch_isSupportedEPKNS_26ZSTD_compressionParametersE.exit.thread
  %i.ao = phi i32 [ 0, %_ZN11duckdb_zstdL36ZSTD_dedicatedDictSearch_isSupportedEPKNS_26ZSTD_compressionParametersE.exit.thread ], [ %i.f, %_ZN11duckdb_zstdL20ZSTD_overrideCParamsEPNS_26ZSTD_compressionParametersEPKS0_.exit ]
  %.sroa.15.1 = phi i32 [ %.sroa.15.0.copyload63, %_ZN11duckdb_zstdL36ZSTD_dedicatedDictSearch_isSupportedEPKNS_26ZSTD_compressionParametersE.exit.thread ], [ %.sroa.15.0, %_ZN11duckdb_zstdL20ZSTD_overrideCParamsEPNS_26ZSTD_compressionParametersEPKS0_.exit ] ; 5 uses
  %i.ap = phi <4 x i32> [ %i.am, %_ZN11duckdb_zstdL36ZSTD_dedicatedDictSearch_isSupportedEPKNS_26ZSTD_compressionParametersE.exit.thread ], [ %i.ae, %_ZN11duckdb_zstdL20ZSTD_overrideCParamsEPNS_26ZSTD_compressionParametersEPKS0_.exit ] ; 4 uses
  %i.aq = phi <2 x i32> [ %i.an, %_ZN11duckdb_zstdL36ZSTD_dedicatedDictSearch_isSupportedEPKNS_26ZSTD_compressionParametersE.exit.thread ], [ %i.af, %_ZN11duckdb_zstdL20ZSTD_overrideCParamsEPNS_26ZSTD_compressionParametersEPKS0_.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 4
  store <4 x i32> %i.ap, ptr %i.ar, align 4
  %.sroa.13.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <2 x i32> %i.aq, ptr %.sroa.13.0..sroa_idx52, align 4
  %.sroa.15.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %.sroa.15.1, ptr %.sroa.15.0..sroa_idx64, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8            ; 2 uses
  %.not.i21 = icmp eq i32 %i.at, 0
  br i1 %.not.i21, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.au = add i32 %.sroa.15.1, -6
  %i.av = icmp ult i32 %i.au, -3
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = extractelement <4 x i32> %i.ap, i64 0
  %i.ax = icmp ugt i32 %i.aw, 14
  %spec.select.i = select i1 %i.ax, i32 1, i32 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i32 [ %i.at, %bb.d ], [ %spec.select.i, %bb.f ], [ 2, %bb.e ] ; 4 uses
  store i32 %.0.i, ptr %i.as, align 8
  %.sroa.382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.382.0.copyload = load ptr, ptr %.sroa.382.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread32.i.i

bb.h:                                             ; preds = %bb.g
  %.not4.i.i.i = icmp eq i32 %.sroa.15.1, 1
  br i1 %.not4.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_sizeof_matchStateEPKNS_26ZSTD_compressionParametersENS_18ZSTD_paramSwitch_eEjj.exit.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i.i: ; preds = %bb.h
  %i.ay = add i32 %.sroa.15.1, -3
  %i.az = icmp ult i32 %i.ay, 3
  %i.ba = icmp eq i32 %.0.i, 1
  %.not8.i.not.i.i = and i1 %i.az, %i.ba
  br i1 %.not8.i.not.i.i, label %_ZN11duckdb_zstdL22ZSTD_sizeof_matchStateEPKNS_26ZSTD_compressionParametersENS_18ZSTD_paramSwitch_eEjj.exit.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread32.i.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread32.i.i: ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i.i, %bb.g
  %i.bb = extractelement <4 x i32> %i.ap, i64 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl i64 4, %i.bc
  %i.be = add nuw i64 %i.bd, 128
  br label %_ZN11duckdb_zstdL22ZSTD_sizeof_matchStateEPKNS_26ZSTD_compressionParametersENS_18ZSTD_paramSwitch_eEjj.exit.i

_ZN11duckdb_zstdL22ZSTD_sizeof_matchStateEPKNS_26ZSTD_compressionParametersENS_18ZSTD_paramSwitch_eEjj.exit.i: ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread32.i.i, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i.i, %bb.h
  %i.bf = phi i64 [ %i.be, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread32.i.i ], [ 128, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i.i ], [ 128, %bb.h ]
  %i.bg = extractelement <4 x i32> %i.ap, i64 2
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = add i32 %.sroa.15.1, -6
  %i.bk = icmp ult i32 %i.bj, -3
  %i.bl = icmp ne i32 %.0.i, 1
  %.not39.i.i = or i1 %i.bk, %i.bl
  %i.bm = add nuw i64 %i.bi, 63
  %i.bn = and i64 %i.bm, -64
  %i.bo = select i1 %.not39.i.i, i64 0, i64 %i.bn
  %i.bp = shl i64 4, %i.bh
  %i.bq = icmp eq i32 %2, 1
  %i.br = add i64 %1, 7
  %i.bs = and i64 %i.br, -8
  %i.bt = add i64 %i.bs, 14784
  %i.bu = select i1 %i.bq, i64 14784, i64 %i.bt
  %i.bv = add i64 %i.bp, %i.bu
  %i.bw = add i64 %i.bv, %i.bo
  %i.bx = add i64 %i.bw, %i.bf                    ; 4 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN11duckdb_zstdL22ZSTD_sizeof_matchStateEPKNS_26ZSTD_compressionParametersENS_18ZSTD_paramSwitch_eEjj.exit.i
  %i.by = tail call noundef ptr %i.a(ptr noundef %.sroa.382.0.copyload, i64 noundef %i.bx), !inline_history !351
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

bb.j:                                             ; preds = %_ZN11duckdb_zstdL22ZSTD_sizeof_matchStateEPKNS_26ZSTD_compressionParametersENS_18ZSTD_paramSwitch_eEjj.exit.i
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.bx) #26
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.by, %bb.i ], [ %i.bz, %bb.j ] ; 26 uses
  %.not18.i = icmp eq ptr %.0.i.i, null
  br i1 %.not18.i, label %_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.bx ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = and i64 %i.cb, -64
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 6080 ; 3 uses
  %i.cf = icmp ugt i64 %i.bx, 6079
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 3 uses
  store ptr %.0.i.i, ptr %i.cg, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 2 uses
  store ptr %i.ca, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store ptr %i.ce, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  store ptr %i.ce, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store ptr %i.ce, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  store ptr %i.cd, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  store ptr %i.cd, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88
  store i8 0, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !220
  %.sroa.1826.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 92
  store i32 0, ptr %.sroa.1826.0..sroa_idx.i, align 4, !tbaa !3
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 96
  store i32 0, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !352
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 100
  store i32 0, ptr %.sroa.21.0..sroa_idx.i, align 4, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 6040
  store ptr %i.a, ptr %i.ch, align 8, !tbaa !62
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 6048 ; 2 uses
  store ptr %i.c, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !62
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 6056 ; 2 uses
  store ptr %.sroa.382.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !62
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 6068
  store i32 0, ptr %i.ci, align 4, !tbaa !291
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 6072
  store i32 %.0.i, ptr %i.cj, align 8, !tbaa !293
  %i.ck = tail call fastcc noundef i64 @_ZN11duckdb_zstdL23ZSTD_initCDict_internalEPNS_12ZSTD_CDict_sEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_18ZSTD_CCtx_params_sE(ptr noundef nonnull %.0.i.i, ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_CCtx_params_s") align 8 %6)
  %i.cl = icmp ult i64 %i.ck, -119
  br i1 %i.cl, label %_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE.exit, label %.split14

.split14:                                         ; preds = %bb.k
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !62 ; 4 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !73 ; 4 uses
  %.not.i.i24 = icmp ugt ptr %i.cm, %.0.i.i
  br i1 %.not.i.i24, label %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i, label %bb.l

bb.l:                                             ; preds = %.split14
  %i.cn = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !74
  %i.co = icmp uge ptr %.0.i.i, %i.cn
  br label %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i

_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i: ; preds = %bb.l, %.split14
  %.not.i25 = phi i1 [ true, %.split14 ], [ %i.co, %bb.l ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cg, i8 0, i64 72, i1 false)
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i
  %.not4.i.i.i26 = icmp eq ptr %.sroa.5.0.copyload.i, null
  br i1 %.not4.i.i.i26, label %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void %.sroa.5.0.copyload.i(ptr noundef %.sroa.6.0.copyload.i, ptr noundef nonnull %i.cm), !inline_history !145
  br label %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit.i: ; preds = %bb.n, %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i
  br i1 %.not.i25, label %bb.o, label %_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE.exit

_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit.thread.i: ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.cm) #27
  br i1 %.not.i25, label %.thread.i, label %_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE.exit

bb.o:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit.i
  %.not4.i.i = icmp eq ptr %.sroa.5.0.copyload.i, null
  br i1 %.not4.i.i, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void %.sroa.5.0.copyload.i(ptr noundef %.sroa.6.0.copyload.i, ptr noundef nonnull %.0.i.i), !inline_history !146
  br label %_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE.exit

.thread.i:                                        ; preds = %bb.o, %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit.thread.i
  tail call void @free(ptr noundef nonnull %.0.i.i) #27
  br label %_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE.exit

_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE.exit: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i, %.thread.i, %bb.p, %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit.thread.i, %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit.i, %bb.k, %bb.a
  %.0 = phi ptr [ null, %.thread.i ], [ null, %bb.a ], [ %.0.i.i, %bb.k ], [ null, %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit.i ], [ null, %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit.thread.i ], [ null, %bb.p ], [ null, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -119, 1) i64 @_ZN11duckdb_zstdL23ZSTD_initCDict_internalEPNS_12ZSTD_CDict_sEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_18ZSTD_CCtx_params_sE(ptr noundef initializes((244, 248), (360, 388)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%"struct.duckdb_zstd::ZSTD_CCtx_params_s") align 8 %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.c, ptr noundef nonnull align 4 dereferenceable(28) %i.a, i64 28, i1 false), !tbaa.struct !89
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.e = load i32, ptr %i.d, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 %i.e, ptr %i.f, align 4, !tbaa !292
  %i.g = icmp ne i32 %3, 1
  %i.h = icmp ne ptr %1, null
  %or.cond = and i1 %i.h, %i.g
  %i.i = icmp ne i64 %2, 0
  %or.cond3 = and i1 %i.i, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !316
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = add i64 %2, 7
  %i.k = and i64 %i.j, -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load i32, ptr %i.o, align 8, !tbaa !353
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.d, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.s = icmp ugt ptr %i.n, %i.r
  br i1 %i.s, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread: ; preds = %bb.c, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.t, align 8, !tbaa !66
  br label %.thread

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit: ; preds = %bb.d
  store ptr %i.n, ptr %i.l, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.n, ptr %i.u, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.n, ptr %i.v, align 8, !tbaa !69
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit
  store ptr %i.m, ptr %0, align 8, !tbaa !316
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %2, ptr %i.w, align 8, !tbaa !289
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %i.x, align 8, !tbaa !317
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8704 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !353
  %.not.i53 = icmp eq i32 %i.ad, 0
  br i1 %.not.i53, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !74
  %i.ag = icmp ugt ptr %i.ab, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.ah, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit55

bb.i:                                             ; preds = %bb.g
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ab, ptr %i.ai, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ab, ptr %i.aj, align 8, !tbaa !69
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit55

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit55: ; preds = %bb.h, %bb.i
  %.0.i54 = phi ptr [ null, %bb.h ], [ %i.aa, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.0.i54, ptr %i.ak, align 8, !tbaa !354
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 6024
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) @_ZN11duckdb_zstdL13repStartValueE, i64 12, i1 false), !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2464
  store i32 0, ptr %i.am, align 8, !tbaa !191
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 6012
  store i32 0, ptr %i.an, align 4, !tbaa !192
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 6016
  store i32 0, ptr %i.ao, align 8, !tbaa !193
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 6020
  store i32 0, ptr %i.ap, align 4, !tbaa !194
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !91
  %i.as = call fastcc noundef i64 @_ZN11duckdb_zstdL21ZSTD_reset_matchStateEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_26ZSTD_compressionParametersENS_18ZSTD_paramSwitch_eENS_22ZSTD_compResetPolicy_eENS_23ZSTD_indexResetPolicy_eENS_18ZSTD_resetTarget_eE(ptr noundef nonnull %i.b, ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i32 noundef %i.ar, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.at = icmp ult i64 %i.as, -119
  br i1 %i.at, label %bb.j, label %.thread

bb.j:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit55
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 408
end_hunk_0
