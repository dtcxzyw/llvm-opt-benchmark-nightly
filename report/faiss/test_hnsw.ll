Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_hnsw?download=true
inline.NumInlined: 2525
inline.NumDeleted: 990
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN33HNSWTest_TEST_search_level_0_TestD0Ev:bb.a

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN33HNSWTest_TEST_search_level_0_Test8TestBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.faiss::HeapBlockResultHandler", align 8 ; 10 uses
  %2 = alloca %"struct.faiss::HeapBlockResultHandler<faiss::CMax<float, long>>::SingleResultHandler", align 8 ; 12 uses
  %3 = alloca %"struct.faiss::HeapBlockResultHandler", align 8 ; 10 uses
  %4 = alloca %"struct.faiss::HeapBlockResultHandler<faiss::CMax<float, long>>::SingleResultHandler", align 8 ; 12 uses
  %5 = alloca %"struct.faiss::HNSWStats", align 8 ; 10 uses
  %6 = alloca %"struct.faiss::HNSWStats", align 8 ; 10 uses
  %7 = alloca %"class.std::unique_ptr.115", align 8 ; 7 uses
  %8 = alloca %"class.std::unique_ptr.115", align 8 ; 7 uses
  %i.a = alloca [5 x i32], align 16               ; 6 uses
  %i.b = alloca [5 x float], align 16             ; 6 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  tail call void @omp_set_num_threads(i32 noundef 1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !160
  %i.g = mul nsw i32 %i.f, %i.d                   ; 3 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #35
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %.noexc54

.noexc54:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #34 ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !35
  %i.m = add nsw i64 %i.h, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc54
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !35
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc54, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11149.0 = phi ptr [ %i.l, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc54 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0144.0 = phi ptr [ %i.k, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc54 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.p = load i32, ptr %i.c, align 8, !tbaa !151
  %i.q = load i32, ptr %i.e, align 4, !tbaa !160
  %i.r = mul nsw i32 %i.q, %i.p                   ; 3 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #35
          to label %.noexc58 unwind label %bb.m

.noexc58:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %.not.i.i.i.i55 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.u = shl nuw nsw i64 %i.s, 2
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #34
          to label %.noexc59 unwind label %bb.m   ; 5 uses

.noexc59:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.s ; 2 uses
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !41
  %i.x = add nsw i64 %i.s, -1                     ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc59
  %i.z = getelementptr i8, ptr %i.v, i64 4
  %.idx.i.i.i.i.i.i.i56 = shl nuw nsw i64 %i.x, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 0, i64 %.idx.i.i.i.i.i.i.i56, i1 false), !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc59, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.w, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.w, %.noexc59 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0138.0 = phi ptr [ %i.v, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.v, %.noexc59 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.aa = load i32, ptr %i.e, align 4, !tbaa !160
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !151
  %i.ad = sext i32 %i.ac to i64                   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ab, ptr %i.ae, align 8, !tbaa !174
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store ptr %.sroa.0138.0, ptr %i.ag, align 8, !tbaa !176
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %.sroa.0144.0, ptr %i.ah, align 8, !tbaa !177
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.ad, ptr %i.ai, align 8, !tbaa !178
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EEE, i64 16), ptr %1, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store float f0x7F7FFFFF, ptr %i.aj, align 8, !tbaa !190
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 %i.ad, ptr %i.al, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE19SingleResultHandlerE, i64 16), ptr %2, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr %1, ptr %i.an, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ab, ptr %i.ao, align 8, !tbaa !174
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  store ptr %.sroa.0138.0, ptr %i.aq, align 8, !tbaa !176
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.sroa.0144.0, ptr %i.ar, align 8, !tbaa !177
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.ad, ptr %i.as, align 8, !tbaa !178
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EEE, i64 16), ptr %3, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store float f0x7F7FFFFF, ptr %i.at, align 8, !tbaa !190
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 %i.ad, ptr %i.av, align 8, !tbaa !183
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE19SingleResultHandlerE, i64 16), ptr %4, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %3, ptr %i.ax, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !110
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !123
  invoke void @_ZN5faiss12VisitedTable6createEmSt8optionalIbE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.115") align 8 %7, i64 noundef %i.bb, i16 0)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !110
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !123
  invoke void @_ZN5faiss12VisitedTable6createEmSt8optionalIbE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.115") align 8 %8, i64 noundef %i.be, i16 0)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, ptr noundef nonnull align 16 dereferenceable(20) @__const._ZN33HNSWTest_TEST_search_level_0_Test8TestBodyEv.values, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, ptr noundef nonnull align 16 dereferenceable(20) @__const._ZN33HNSWTest_TEST_search_level_0_Test8TestBodyEv.distances, i64 20, i1 false)
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !361, !nonnull !53, !align !362 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !176 ; 4 uses
  %i.bi = load i64, ptr %i.al, align 8, !tbaa !183 ; 5 uses
  store ptr %i.bh, ptr %i.am, align 8, !tbaa !186
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !177 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !187
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %.loopexit151, label %.lr.ph46.i.i.preheader

.lr.ph46.i.i.preheader:                           ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.bi, 4
  br i1 %min.iters.check, label %.lr.ph46.i.i.preheader196, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.i.i.preheader
  %n.vec = and i64 %i.bi, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.bm, align 4, !tbaa !41
  store <2 x float> splat (float f0x7F7FFFFF), ptr %21, align 4, !tbaa !41
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.bn, align 8, !tbaa !35
  store <2 x i64> splat (i64 -1), ptr %i.bo, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.loopexit151, label %.lr.ph46.i.i.preheader196

.lr.ph46.i.i.preheader196:                        ; preds = %.lr.ph46.i.i.preheader, %middle.block
  %.045.i.i.ph = phi i64 [ 0, %.lr.ph46.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph46.i.i

.lr.ph46.i.i:                                     ; preds = %.lr.ph46.i.i.preheader196, %.lr.ph46.i.i
  %.045.i.i = phi i64 [ %i.bs, %.lr.ph46.i.i ], [ %.045.i.i.ph, %.lr.ph46.i.i.preheader196 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.045.i.i
  store float f0x7F7FFFFF, ptr %i.bq, align 4, !tbaa !41
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.045.i.i
  store i64 -1, ptr %i.br, align 8, !tbaa !35
  %i.bs = add nuw i64 %.045.i.i, 1                ; 2 uses
  %exitcond51.not.i.i = icmp eq i64 %i.bs, %i.bi
  br i1 %exitcond51.not.i.i, label %.loopexit151, label %.lr.ph46.i.i, !llvm.loop !349

.loopexit151:                                     ; preds = %.lr.ph46.i.i, %middle.block, %bb.f
  %i.bt = load float, ptr %i.bh, align 4, !tbaa !41
  store float %i.bt, ptr %i.aj, align 8, !tbaa !190
  %i.bu = load ptr, ptr %i.ay, align 8, !tbaa !110
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !112
  %i.by = load ptr, ptr %7, align 8, !tbaa !153
  invoke void @_ZNK5faiss4HNSW14search_level_0ERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEElPKiPKfiRNS_9HNSWStatsERNS_12VisitedTableEPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(5206) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef null)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %.loopexit151
  invoke void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE19SingleResultHandler3endEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.bz = load ptr, ptr %i.ax, align 8, !tbaa !361, !nonnull !53, !align !362 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !176 ; 4 uses
  %i.cc = load i64, ptr %i.av, align 8, !tbaa !183 ; 5 uses
  store ptr %i.cb, ptr %i.aw, align 8, !tbaa !186
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !177 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !187
  %.not.i60 = icmp eq i64 %i.cc, 0
  br i1 %.not.i60, label %.loopexit, label %.lr.ph46.i.i61.preheader

.lr.ph46.i.i61.preheader:                         ; preds = %bb.h
  %min.iters.check186 = icmp ult i64 %i.cc, 4
  br i1 %min.iters.check186, label %.lr.ph46.i.i61.preheader195, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph46.i.i61.preheader
  %n.vec188 = and i64 %i.cc, -4                   ; 3 uses
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next191, %vector.body189 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index190 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.cg, align 4, !tbaa !41
  store <2 x float> splat (float f0x7F7FFFFF), ptr %22, align 4, !tbaa !41
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index190 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ch, align 8, !tbaa !35
  store <2 x i64> splat (i64 -1), ptr %i.ci, align 8, !tbaa !35
  %index.next191 = add nuw i64 %index190, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next191, %n.vec188
  br i1 %i.cj, label %middle.block192, label %vector.body189, !llvm.loop !350

middle.block192:                                  ; preds = %vector.body189
  %cmp.n193 = icmp eq i64 %i.cc, %n.vec188
  br i1 %cmp.n193, label %.loopexit, label %.lr.ph46.i.i61.preheader195

.lr.ph46.i.i61.preheader195:                      ; preds = %.lr.ph46.i.i61.preheader, %middle.block192
  %.045.i.i62.ph = phi i64 [ 0, %.lr.ph46.i.i61.preheader ], [ %n.vec188, %middle.block192 ]
  br label %.lr.ph46.i.i61

.lr.ph46.i.i61:                                   ; preds = %.lr.ph46.i.i61.preheader195, %.lr.ph46.i.i61
  %.045.i.i62 = phi i64 [ %i.cm, %.lr.ph46.i.i61 ], [ %.045.i.i62.ph, %.lr.ph46.i.i61.preheader195 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.045.i.i62
  store float f0x7F7FFFFF, ptr %i.ck, align 4, !tbaa !41
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.045.i.i62
  store i64 -1, ptr %i.cl, align 8, !tbaa !35
  %i.cm = add nuw i64 %.045.i.i62, 1              ; 2 uses
  %exitcond51.not.i.i63 = icmp eq i64 %i.cm, %i.cc
  br i1 %exitcond51.not.i.i63, label %.loopexit, label %.lr.ph46.i.i61, !llvm.loop !351

.loopexit:                                        ; preds = %.lr.ph46.i.i61, %middle.block192, %bb.h
  %i.cn = load float, ptr %i.cb, align 4, !tbaa !41
  store float %i.cn, ptr %i.at, align 8, !tbaa !190
  %i.co = load ptr, ptr %i.ay, align 8, !tbaa !110
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.bw, align 8, !tbaa !112
  %i.cr = load ptr, ptr %8, align 8, !tbaa !153
  invoke void @_ZNK5faiss4HNSW14search_level_0ERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEElPKiPKfiRNS_9HNSWStatsERNS_12VisitedTableEPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(5206) %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef null)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %.loopexit
  invoke void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE19SingleResultHandler3endEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !35, !noalias !363
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !35, !noalias !363
  %i.cw = icmp ugt i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal11CmpHelperGTImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.q

bb.l:                                             ; preds = %bb.j
  invoke void @_ZN7testing8internal18CmpHelperOpFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.49)
          to label %_ZN7testing8internal11CmpHelperGTImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.q

_ZN7testing8internal11CmpHelperGTImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.k, %bb.l
  %i.cx = load i8, ptr %9, align 8, !tbaa !51, !range !52, !noundef !53
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.aa, label %bb.r

bb.m:                                             ; preds = %bb.c, %bb.b
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit132

bb.n:                                             ; preds = %bb.d
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss12VisitedTableESt14default_deleteIS1_EED2Ev.exit130

bb.o:                                             ; preds = %bb.e
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss12VisitedTableESt14default_deleteIS1_EED2Ev.exit127

bb.p:                                             ; preds = %bb.i, %.loopexit, %bb.g, %.loopexit151
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.r:                                             ; preds = %_ZN7testing8internal11CmpHelperGTImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !54 ; 2 uses
  %.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !58
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.t, %bb.s
  %i.dh = phi ptr [ %i.dg, %bb.t ], [ @.str.20, %bb.s ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 748, ptr noundef %i.dh)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.di = load ptr, ptr %10, align 8, !tbaa !60   ; 3 uses
  %.not.i.i67 = icmp eq ptr %i.di, null
  br i1 %.not.i.i67, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.v
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !62
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.v, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.aa

bb.w:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit70

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.do, %bb.y ], [ %i.dn, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.dp = load ptr, ptr %10, align 8, !tbaa !60   ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i68, label %_ZN7testing7MessageD2Ev.exit70, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %bb.z
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !62
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(128) %i.dp) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit70

_ZN7testing7MessageD2Ev.exit70:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %bb.z, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.w ], [ %.pn, %bb.z ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  br label %bb.ae

bb.aa:                                            ; preds = %_ZN7testing8internal11CmpHelperGTImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !54 ; 4 uses
  %.not.i.i71 = icmp eq ptr %i.du, null
  br i1 %.not.i.i71, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !58 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ab
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !63
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !35, !noalias !364
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !35, !noalias !364
  %i.ee = icmp ugt i64 %i.ec, %i.ed
  br i1 %i.ee, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
end_hunk_0
begin_hunk_1_@_ZN7testing8internal15TestFactoryImplI40HNSWTest_TEST_greedy_update_nearest_TestED0Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI40HNSWTest_TEST_greedy_update_nearest_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34 ; 4 uses
  invoke void @_ZN8HNSWTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV40HNSWTest_TEST_greedy_update_nearest_Test, i64 16), ptr %i.a, align 8, !tbaa !62
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #33
  resume { ptr, i32 } %i.b
}

declare void @_ZN5faiss11hnsw_detail21greedy_update_nearestERKNS_4HNSWERNS_16DistanceComputerEiRiRf(ptr dead_on_unwind writable sret(%"struct.faiss::HNSWStats") align 8, ptr noundef nonnull align 8 dereferenceable(5206), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI41HNSWTest_TEST_search_from_candidates_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI41HNSWTest_TEST_search_from_candidates_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34 ; 4 uses
  invoke void @_ZN8HNSWTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV41HNSWTest_TEST_search_from_candidates_Test, i64 16), ptr %i.a, align 8, !tbaa !62
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #33
  resume { ptr, i32 } %i.b
}

declare noundef i32 @_ZN5faiss11hnsw_detail22search_from_candidatesERKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINS_4CMaxIfiEEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(5206), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE19SingleResultHandler3endEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !183  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 8 uses
  %.not46.i = icmp eq i64 %i.b, 0
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, %.lr.ph.i
  %.041.i = phi i64 [ 0, %.lr.ph.i ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %.03740.i = phi i64 [ 0, %.lr.ph.i ], [ %i.be, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %i.i = load float, ptr %i.d, align 4, !tbaa !41
  %i.j = load i64, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %i.k = sub nuw i64 %i.b, %.03740.i              ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.k ; 3 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !41 ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35   ; 3 uses
  %i.p = icmp ult i64 %i.k, 2
  br i1 %i.p, label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.e
  %i.q = phi i64 [ %i.at, %bb.e ], [ 3, %bb.b ]
  %i.r = phi i64 [ %i.as, %bb.e ], [ 2, %bb.b ]   ; 7 uses
  %.062.i.i = phi i64 [ %.1.i.i, %bb.e ], [ 1, %bb.b ] ; 6 uses
  %i.s = icmp eq i64 %i.r, %i.k
  br i1 %i.s, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i, label %bb.c

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load float, ptr %i.l, align 4, !tbaa !41
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.r
  %i.u = load float, ptr %i.t, align 4, !tbaa !41 ; 4 uses
  %i.v = getelementptr [4 x i8], ptr %i.d, i64 %i.r
  %i.w = load float, ptr %i.v, align 4, !tbaa !41 ; 5 uses
  %i.x = getelementptr [8 x i8], ptr %i.f, i64 %i.r
  %i.y = load i64, ptr %i.x, align 8, !tbaa !35   ; 3 uses
  %i.z = fcmp ogt float %i.u, %i.w
  br i1 %i.z, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i:            ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.r
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !35
  %i.ac = fcmp oeq float %i.u, %i.w
  %i.ad = icmp sgt i64 %i.ab, %i.y
  %i.ae = and i1 %i.ac, %i.ad
  br i1 %i.ae, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %bb.d

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i:     ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i, %bb.c, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i
  %i.af = phi float [ %.pre.i.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i ], [ %i.u, %bb.c ], [ %i.u, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i ] ; 3 uses
  %i.ag = fcmp ogt float %i.m, %i.af
  br i1 %i.ag, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i:          ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.r
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !35 ; 2 uses
  %i.aj = fcmp oeq float %i.m, %i.af
  %i.ak = icmp sgt i64 %i.o, %i.ai
  %i.al = and i1 %i.aj, %i.ak
  br i1 %i.al, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %bb.e

bb.d:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i
  %i.am = fcmp ogt float %i.m, %i.w
  br i1 %i.am, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i:          ; preds = %bb.d
  %i.an = fcmp oeq float %i.m, %i.w
  %i.ao = icmp sgt i64 %i.o, %i.y
  %i.ap = and i1 %i.an, %i.ao
  br i1 %i.ap, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i
  %.sink79.i.i = phi float [ %i.af, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.w, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ]
  %.sink.i.i = phi i64 [ %i.ai, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.y, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.r, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.q, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.062.i.i
  store float %.sink79.i.i, ptr %i.aq, align 4, !tbaa !41
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.062.i.i
  store i64 %.sink.i.i, ptr %i.ar, align 8, !tbaa !35
  %i.as = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.at = or disjoint i64 %i.as, 1
  %i.au = icmp ugt i64 %i.as, %i.k
  br i1 %i.au, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !21

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i: ; preds = %bb.e, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i, %bb.d, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i ], [ %.062.i.i, %bb.d ]
  %.pre68.i.i = load float, ptr %i.l, align 4, !tbaa !41
  %.pre69.i.i = load i64, ptr %i.n, align 8, !tbaa !35
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, %bb.b
  %i.av = phi i64 [ %i.o, %bb.b ], [ %.pre69.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %i.aw = phi float [ %i.m, %bb.b ], [ %.pre68.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.b ], [ %.0.lcssa.ph.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0.lcssa.i.i
  store float %i.aw, ptr %i.ax, align 4, !tbaa !41
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0.lcssa.i.i
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !35
  %i.az = xor i64 %.041.i, -1
  %i.ba = add i64 %i.b, %i.az                     ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ba
  store float %i.i, ptr %i.bb, align 4, !tbaa !41
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ba
  store i64 %i.j, ptr %i.bc, align 8, !tbaa !35
  %.not.i = icmp ne i64 %i.j, -1
  %i.bd = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.041.i, %i.bd         ; 2 uses
  %i.be = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !22

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 8 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.b
  %i.bg = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = shl i64 %.0.lcssa.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr align 4 %i.bh, i64 %i.bi, i1 false)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bg
  %i.bl = shl i64 %.0.lcssa.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %i.bk, i64 %i.bl, i1 false)
  %i.bm = icmp ult i64 %.0.lcssa.i, %i.b
  br i1 %i.bm, label %.lr.ph44.i.preheader, label %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i
  %i.bn = sub nuw i64 %i.b, %.0.lcssa.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.bn, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %i.bn, -4                      ; 3 uses
  %i.bo = add i64 %.0.lcssa.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = add nuw i64 %.0.lcssa.i, %index         ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bp ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.bq, align 4, !tbaa !41
  store <2 x float> splat (float f0x7F7FFFFF), ptr %1, align 4, !tbaa !41
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bp ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.br, align 8, !tbaa !35
  store <2 x i64> splat (i64 -1), ptr %i.bs, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !636

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i.preheader11

.lr.ph44.i.preheader11:                           ; preds = %.lr.ph44.i.preheader, %middle.block
  %.242.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph44.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader11, %.lr.ph44.i
  %.242.i = phi i64 [ %i.bw, %.lr.ph44.i ], [ %.242.i.ph, %.lr.ph44.i.preheader11 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.242.i
  store float f0x7F7FFFFF, ptr %i.bu, align 4, !tbaa !41
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.242.i
  store i64 -1, ptr %i.bv, align 8, !tbaa !35
  %i.bw = add nuw i64 %.242.i, 1                  ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.bw, %i.b
  br i1 %exitcond47.not.i, label %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i, !llvm.loop !637

_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit: ; preds = %.lr.ph44.i, %middle.block, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5faiss22ResultHandlerUnorderedIflED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5faiss18BlockResultHandlerINS_4CMaxIflEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE14begin_multipleEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.a, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !239
  %i.c = icmp ult i64 %1, %2
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !177
  %i.i = load i64, ptr %i.d, align 8, !tbaa !178  ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, %.lr.ph, %bb.a
  ret void

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit
  %.pr = load i64, ptr %i.d, align 8, !tbaa !178
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.k = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.i, %.lr.ph ] ; 6 uses
  %i.l = phi i64 [ %i.w, %.lr.ph.splitthread-pre-split ], [ %2, %.lr.ph ]
  %.06 = phi i64 [ %i.x, %.lr.ph.splitthread-pre-split ], [ %1, %.lr.ph ] ; 2 uses
  %i.m = mul i64 %i.k, %.06                       ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.m ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph46.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.i.preheader
  %n.vec = and i64 %i.k, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.p, align 4, !tbaa !41
  store <2 x float> splat (float f0x7F7FFFFF), ptr %3, align 4, !tbaa !41
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.q, align 8, !tbaa !35
  store <2 x i64> splat (i64 -1), ptr %i.r, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !638

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit, label %.lr.ph46.i.preheader12

.lr.ph46.i.preheader12:                           ; preds = %.lr.ph46.i.preheader, %middle.block
  %.045.i.ph = phi i64 [ 0, %.lr.ph46.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader12, %.lr.ph46.i
  %.045.i = phi i64 [ %i.v, %.lr.ph46.i ], [ %.045.i.ph, %.lr.ph46.i.preheader12 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.045.i
  store float f0x7F7FFFFF, ptr %i.t, align 4, !tbaa !41
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.045.i
  store i64 -1, ptr %i.u, align 8, !tbaa !35
  %i.v = add nuw i64 %.045.i, 1                   ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.v, %i.k
  br i1 %exitcond51.not.i, label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit, label %.lr.ph46.i, !llvm.loop !639

_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit: ; preds = %.lr.ph46.i, %middle.block
  %.pre = load i64, ptr %i.b, align 8, !tbaa !239
  br label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit

_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit: ; preds = %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit, %.lr.ph.split
  %i.w = phi i64 [ %.pre, %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit ], [ %i.l, %.lr.ph.split ] ; 2 uses
  %i.x = add nuw i64 %.06, 1                      ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  br i1 %i.y, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !640
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKf(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !35
  store i64 %2, ptr %i.b, align 8, !tbaa !35
  store ptr %3, ptr %i.c, align 8, !tbaa !214
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKf.omp_outlined, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE12end_multipleEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !238
  %i.g = sub i64 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !178
  %i.j = mul i64 %i.g, %i.i
  %i.k = icmp ugt i64 %i.j, 1023
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE12end_multipleEv.omp_outlined, ptr nonnull %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.b)
  store i32 %i.b, ptr %i.a, align 4, !tbaa !64
  call void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE12end_multipleEv.omp_outlined(ptr nonnull %i.a, ptr nonnull poison, ptr nonnull %0) #24
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #33
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !238  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !239  ; 2 uses
  %i.i = icmp slt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = xor i64 %i.f, -1
  %i.k = add i64 %i.h, %i.j                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.k, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 1, ptr %i.c, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !64
  %i.l = load i32, ptr %0, align 4, !tbaa !64     ; 2 uses
  call void @__kmpc_for_static_init_8u(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.m = load i64, ptr %i.b, align 8, !tbaa !35
  %i.n = call i64 @llvm.umin.i64(i64 %i.m, i64 %i.k) ; 3 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !35
  %i.o = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.p = add i64 %i.n, 1
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !176
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !177
  %i.w = load ptr, ptr %3, align 8, !tbaa !214
  %i.x = load i64, ptr %5, align 8, !tbaa !35
  %i.y = load i64, ptr %4, align 8, !tbaa !35     ; 3 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %.lr.ph41.split, label %._crit_edge42

.lr.ph41.split:                                   ; preds = %.lr.ph41, %._crit_edge
  %i.aa = phi i64 [ %i.au, %._crit_edge ], [ %i.n, %.lr.ph41 ]
  %i.ab = phi i64 [ %i.av, %._crit_edge ], [ %i.y, %.lr.ph41 ] ; 2 uses
  %i.ac = phi i64 [ %i.aw, %._crit_edge ], [ %i.y, %.lr.ph41 ] ; 3 uses
  %.03339 = phi i64 [ %i.ax, %._crit_edge ], [ %i.o, %.lr.ph41 ] ; 2 uses
  %i.ad = add i64 %.03339, %i.f                   ; 2 uses
  %i.ae = load i64, ptr %i.t, align 8, !tbaa !178
  %i.af = mul nsw i64 %i.ae, %i.ad                ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.af ; 2 uses
  %i.ai = load i64, ptr %5, align 8, !tbaa !35    ; 4 uses
  %i.aj = sub i64 %i.ac, %i.ai
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !238
  %i.al = sub nsw i64 %i.ad, %i.ak
  %i.am = mul i64 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.am
  %i.ao = sub i64 0, %i.ai
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = icmp ult i64 %i.ai, %i.ac
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph41.split
  %i.ar = load float, ptr %i.ag, align 4, !tbaa !41
  %i.as = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 4 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre44 = load i64, ptr %i.b, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph41.split
  %i.au = phi i64 [ %.pre44, %._crit_edge.loopexit ], [ %i.aa, %.lr.ph41.split ] ; 2 uses
  %i.av = phi i64 [ %i.co, %._crit_edge.loopexit ], [ %i.ab, %.lr.ph41.split ]
  %i.aw = phi i64 [ %i.co, %._crit_edge.loopexit ], [ %i.ac, %.lr.ph41.split ]
  %i.ax = add nuw i64 %.03339, 1                  ; 2 uses
  %i.ay = add i64 %i.au, 1
  %i.az = icmp ult i64 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph41.split, label %._crit_edge42, !llvm.loop !641

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %i.ba = phi i64 [ %i.ab, %.lr.ph ], [ %i.co, %bb.h ]
  %.036 = phi i64 [ %i.ai, %.lr.ph ], [ %i.cp, %bb.h ] ; 5 uses
  %.03235 = phi float [ %i.ar, %.lr.ph ], [ %.1, %bb.h ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.036
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !41 ; 6 uses
  %i.bd = fcmp ogt float %.03235, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.be = load i64, ptr %i.t, align 8, !tbaa !178 ; 4 uses
  %i.bf = icmp ult i64 %i.be, 2
  br i1 %i.bf, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.be
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %i.bg = phi i64 [ %i.cj, %bb.g ], [ 3, %.lr.ph.preheader.i ]
  %i.bh = phi i64 [ %i.ci, %bb.g ], [ 2, %.lr.ph.preheader.i ] ; 7 uses
  %.056.i = phi i64 [ %.1.i, %bb.g ], [ 1, %.lr.ph.preheader.i ] ; 6 uses
  %i.bi = icmp eq i64 %i.bh, %i.be
  br i1 %i.bi, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i, label %bb.e

end_hunk_1
begin_hunk_2_@_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKf.omp_outlined:bb.a

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8u(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #24

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #24

; Function Attrs: nounwind
declare !callback !241 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #24

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE12end_multipleEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #25 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !238  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !239  ; 2 uses
  %i.i = icmp slt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = xor i64 %i.f, -1
  %i.k = add i64 %i.h, %i.j                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.k, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 1, ptr %i.c, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !64
  %i.l = load i32, ptr %0, align 4, !tbaa !64     ; 2 uses
  call void @__kmpc_for_static_init_8u(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.m = load i64, ptr %i.b, align 8, !tbaa !35
  %i.n = call i64 @llvm.umin.i64(i64 %i.m, i64 %i.k) ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !35
  %i.o = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.p = add i64 %i.n, 1
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit
  %.017 = phi i64 [ %i.o, %.lr.ph ], [ %i.cs, %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit ] ; 2 uses
  %i.u = add i64 %.017, %i.f
  %i.v = load i64, ptr %i.r, align 8, !tbaa !178  ; 10 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !176
  %i.x = mul nsw i64 %i.v, %i.u                   ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x ; 8 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !177
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.x ; 8 uses
  %.not46.i = icmp eq i64 %i.v, 0
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, %.lr.ph.i
  %.041.i = phi i64 [ 0, %.lr.ph.i ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %.03740.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bz, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  %i.ad = load float, ptr %i.y, align 4, !tbaa !41
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.af = sub nuw i64 %i.v, %.03740.i             ; 5 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.af ; 3 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !41 ; 5 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !35 ; 3 uses
  %i.ak = icmp ult i64 %i.af, 2
  br i1 %i.ak, label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.g
  %i.al = phi i64 [ %i.bo, %bb.g ], [ 3, %bb.d ]
  %i.am = phi i64 [ %i.bn, %bb.g ], [ 2, %bb.d ]  ; 7 uses
  %.062.i.i = phi i64 [ %.1.i.i, %bb.g ], [ 1, %bb.d ] ; 6 uses
  %i.an = icmp eq i64 %i.am, %i.af
  br i1 %i.an, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i, label %bb.e

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load float, ptr %i.ag, align 4, !tbaa !41
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.am
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !41 ; 4 uses
  %i.aq = getelementptr [4 x i8], ptr %i.y, i64 %i.am
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !41 ; 5 uses
  %i.as = getelementptr [8 x i8], ptr %i.aa, i64 %i.am
  %i.at = load i64, ptr %i.as, align 8, !tbaa !35 ; 3 uses
  %i.au = fcmp ogt float %i.ap, %i.ar
  br i1 %i.au, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i:            ; preds = %bb.e
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.am
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !35
  %i.ax = fcmp oeq float %i.ap, %i.ar
  %i.ay = icmp sgt i64 %i.aw, %i.at
  %i.az = and i1 %i.ax, %i.ay
  br i1 %i.az, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %bb.f

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i:     ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i, %bb.e, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i
  %i.ba = phi float [ %.pre.i.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i ], [ %i.ap, %bb.e ], [ %i.ap, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i ] ; 3 uses
  %i.bb = fcmp ogt float %i.ah, %i.ba
  br i1 %i.bb, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i:          ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.am
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %i.be = fcmp oeq float %i.ah, %i.ba
  %i.bf = icmp sgt i64 %i.aj, %i.bd
  %i.bg = and i1 %i.be, %i.bf
  br i1 %i.bg, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %bb.g

bb.f:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i
  %i.bh = fcmp ogt float %i.ah, %i.ar
  br i1 %i.bh, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i:          ; preds = %bb.f
  %i.bi = fcmp oeq float %i.ah, %i.ar
  %i.bj = icmp sgt i64 %i.aj, %i.at
  %i.bk = and i1 %i.bi, %i.bj
  br i1 %i.bk, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i
  %.sink79.i.i = phi float [ %i.ba, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.ar, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ]
  %.sink.i.i = phi i64 [ %i.bd, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.at, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.am, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.al, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.062.i.i
  store float %.sink79.i.i, ptr %i.bl, align 4, !tbaa !41
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.062.i.i
  store i64 %.sink.i.i, ptr %i.bm, align 8, !tbaa !35
  %i.bn = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.bo = or disjoint i64 %i.bn, 1
  %i.bp = icmp ugt i64 %i.bn, %i.af
  br i1 %i.bp, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !21

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i: ; preds = %bb.g, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i, %bb.f, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.g ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i ], [ %.062.i.i, %bb.f ]
  %.pre68.i.i = load float, ptr %i.ag, align 4, !tbaa !41
  %.pre69.i.i = load i64, ptr %i.ai, align 8, !tbaa !35
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, %bb.d
  %i.bq = phi i64 [ %i.aj, %bb.d ], [ %.pre69.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %i.br = phi float [ %i.ah, %bb.d ], [ %.pre68.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.d ], [ %.0.lcssa.ph.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.0.lcssa.i.i
  store float %i.br, ptr %i.bs, align 4, !tbaa !41
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.0.lcssa.i.i
  store i64 %i.bq, ptr %i.bt, align 8, !tbaa !35
  %i.bu = xor i64 %.041.i, -1
  %i.bv = add i64 %i.v, %i.bu                     ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bv
  store float %i.ad, ptr %i.bw, align 4, !tbaa !41
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bv
  store i64 %i.ae, ptr %i.bx, align 8, !tbaa !35
  %.not.i = icmp ne i64 %i.ae, -1
  %i.by = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.041.i, %i.by         ; 2 uses
  %i.bz = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bz, %i.v
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !22

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 8 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v
  %i.cb = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = shl i64 %.0.lcssa.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.cc, i64 %i.cd, i1 false)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.v
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cb
  %i.cg = shl i64 %.0.lcssa.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aa, ptr align 8 %i.cf, i64 %i.cg, i1 false)
  %i.ch = icmp ult i64 %.0.lcssa.i, %i.v
  br i1 %i.ch, label %.lr.ph44.i.preheader, label %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i
  %i.ci = sub nuw i64 %i.v, %.0.lcssa.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.ci, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %i.ci, -4                      ; 3 uses
  %i.cj = add i64 %.0.lcssa.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = add nuw i64 %.0.lcssa.i, %index         ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ck ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.cl, align 4, !tbaa !41
  store <2 x float> splat (float f0x7F7FFFFF), ptr %3, align 4, !tbaa !41
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ck ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.cm, align 8, !tbaa !35
  store <2 x i64> splat (i64 -1), ptr %i.cn, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !643

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i.preheader32

.lr.ph44.i.preheader32:                           ; preds = %.lr.ph44.i.preheader, %middle.block
  %.242.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph44.i.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader32, %.lr.ph44.i
  %.242.i = phi i64 [ %i.cr, %.lr.ph44.i ], [ %.242.i.ph, %.lr.ph44.i.preheader32 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.242.i
  store float f0x7F7FFFFF, ptr %i.cp, align 4, !tbaa !41
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.242.i
  store i64 -1, ptr %i.cq, align 8, !tbaa !35
  %i.cr = add nuw i64 %.242.i, 1                  ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.cr, %i.v
  br i1 %exitcond47.not.i, label %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i, !llvm.loop !644

_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit: ; preds = %.lr.ph44.i, %middle.block, %._crit_edge.i
  %i.cs = add nuw i64 %.017, 1                    ; 2 uses
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !35
  %i.cu = add i64 %i.ct, 1
  %i.cv = icmp ult i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #24

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #24

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #24

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5faiss17HeapResultHandlerINS_4CMaxIflEELb0EE10add_resultEfl(ptr noundef nonnull align 8 dereferenceable(56) %0, float noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !190
  %i.c = fcmp ogt float %i.b, %1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !183  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !186  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !187  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 4 uses
  %i.l = icmp ult i64 %i.e, 2
  br i1 %i.l, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %i.m = phi i64 [ %i.ap, %bb.e ], [ 3, %.lr.ph.preheader.i ]
  %i.n = phi i64 [ %i.ao, %bb.e ], [ 2, %.lr.ph.preheader.i ] ; 7 uses
  %.056.i = phi i64 [ %.1.i, %bb.e ], [ 1, %.lr.ph.preheader.i ] ; 6 uses
  %i.o = icmp eq i64 %i.n, %i.e
  br i1 %i.o, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i, label %bb.c

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !41
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.n
  %i.q = load float, ptr %i.p, align 4, !tbaa !41 ; 4 uses
  %i.r = getelementptr [4 x i8], ptr %i.g, i64 %i.n
  %i.s = load float, ptr %i.r, align 4, !tbaa !41 ; 5 uses
  %i.t = getelementptr [8 x i8], ptr %i.i, i64 %i.n
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35   ; 3 uses
  %i.v = fcmp ogt float %i.q, %i.s
  br i1 %i.v, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i:              ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35
  %i.y = fcmp oeq float %i.q, %i.s
  %i.z = icmp sgt i64 %i.x, %i.u
  %i.aa = and i1 %i.y, %i.z
  br i1 %i.aa, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, label %bb.d

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i:       ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i, %bb.c, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i
  %i.ab = phi float [ %.pre.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i ], [ %i.q, %bb.c ], [ %i.q, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i ] ; 3 uses
  %i.ac = fcmp ogt float %1, %i.ab
  br i1 %i.ac, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i:            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.af = fcmp oeq float %1, %i.ab
  %i.ag = icmp sgt i64 %2, %i.ae
  %i.ah = and i1 %i.af, %i.ag
  br i1 %i.ah, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %bb.e

bb.d:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i
  %i.ai = fcmp ogt float %1, %i.s
  br i1 %i.ai, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i:            ; preds = %bb.d
  %i.aj = fcmp oeq float %1, %i.s
  %i.ak = icmp sgt i64 %2, %i.u
  %i.al = and i1 %i.aj, %i.ak
  br i1 %i.al, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i
  %.sink71.i = phi float [ %i.ab, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %i.s, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ]
  %.sink.i = phi i64 [ %i.ae, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %i.u, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ]
  %.1.i = phi i64 [ %i.n, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %i.m, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.056.i
  store float %.sink71.i, ptr %i.am, align 4, !tbaa !41
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.056.i
  store i64 %.sink.i, ptr %i.an, align 8, !tbaa !35
  %i.ao = shl i64 %.1.i, 1                        ; 3 uses
  %i.ap = or disjoint i64 %i.ao, 1
  %i.aq = icmp ugt i64 %i.ao, %i.e
  br i1 %i.aq, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %.lr.ph.i, !llvm.loop !23

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i, %bb.d, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i, %bb.e, %bb.b
  %.0.lcssa.i = phi i64 [ 1, %bb.b ], [ %.1.i, %bb.e ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i ], [ %.056.i, %bb.d ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.0.lcssa.i
  store float %1, ptr %i.ar, align 4, !tbaa !41
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0.lcssa.i
  store i64 %2, ptr %i.as, align 8, !tbaa !35
  %i.at = load float, ptr %i.g, align 4, !tbaa !41
  store float %i.at, ptr %i.a, align 8, !tbaa !190
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE19SingleResultHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #33
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI42HNSWTest_TEST_search_neighbors_to_add_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI42HNSWTest_TEST_search_neighbors_to_add_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34 ; 4 uses
  invoke void @_ZN8HNSWTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV42HNSWTest_TEST_search_neighbors_to_add_Test, i64 16), ptr %i.a, align 8, !tbaa !62
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #33
  resume { ptr, i32 } %i.b
}

declare void @_ZN5faiss11hnsw_detail23search_neighbors_to_addERNS_4HNSWERNS_16DistanceComputerERSt14priority_queueINS1_15NodeDistCloserTINS_4CMaxIflEEEESt6vectorIS9_SaIS9_EESt4lessIS9_EEifiRNS_12VisitedTableEb(ptr noundef nonnull align 8 dereferenceable(5206), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(25), i32 noundef, float noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI37HNSWTest_TEST_nb_neighbors_bound_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI37HNSWTest_TEST_nb_neighbors_bound_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_2
