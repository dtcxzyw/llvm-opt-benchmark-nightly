Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/distances?download=true
inline.NumInlined: 1926
inline.NumDeleted: 792
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5faiss9knn_L2sqrEPKfS1_mmmmPfPlS1_PKNS_10IDSelectorE:bb.a
  %i.aj = alloca ptr, align 8                     ; 5 uses
  %i.ak = alloca ptr, align 8                     ; 5 uses
  %i.al = alloca i64, align 8                     ; 5 uses
  %i.am = alloca i64, align 8                     ; 5 uses
  %i.an = alloca i64, align 8                     ; 5 uses
  %i.ao = alloca ptr, align 8                     ; 4 uses
  %i.ap = alloca ptr, align 8                     ; 4 uses
  %i.aq = alloca i64, align 8                     ; 4 uses
  %i.ar = alloca i64, align 8                     ; 4 uses
  %i.as = alloca i64, align 8                     ; 4 uses
  %i.at = alloca ptr, align 8                     ; 4 uses
  %i.au = alloca ptr, align 8                     ; 4 uses
  %i.av = alloca i64, align 8                     ; 4 uses
  %i.aw = alloca i64, align 8                     ; 4 uses
  %i.ax = alloca i64, align 8                     ; 4 uses
  %10 = alloca %"struct.faiss::Top1BlockResultHandler.38", align 8 ; 10 uses
  %11 = alloca %"struct.faiss::HeapBlockResultHandler.41", align 8 ; 10 uses
  %12 = alloca %"struct.faiss::ReservoirBlockResultHandler.42", align 8 ; 20 uses
  %13 = alloca %"struct.faiss::Top1BlockResultHandler.48", align 8 ; 16 uses
  %14 = alloca %"struct.faiss::HeapBlockResultHandler.51", align 8 ; 15 uses
  %15 = alloca %"struct.faiss::ReservoirBlockResultHandler.52", align 8 ; 30 uses
  %i.ay = alloca ptr, align 8                     ; 4 uses
  %i.az = alloca ptr, align 8                     ; 4 uses
  %i.ba = alloca i64, align 8                     ; 4 uses
  %i.bb = alloca i64, align 8                     ; 5 uses
  %i.bc = alloca i64, align 8                     ; 4 uses
  %i.bd = alloca i64, align 8                     ; 5 uses
  %i.be = alloca ptr, align 8                     ; 4 uses
  %i.bf = alloca ptr, align 8                     ; 4 uses
  %i.bg = alloca ptr, align 8                     ; 5 uses
  %i.bh = alloca i32, align 4                     ; 6 uses
  %i.bi = alloca i64, align 8                     ; 5 uses
  %16 = alloca %"class.std::vector", align 8      ; 11 uses
  %17 = alloca %"class.std::vector.21", align 8   ; 14 uses
  %18 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.bj = alloca ptr, align 8                     ; 6 uses
  %i.bk = icmp eq ptr %9, null
  br i1 %i.bk, label %_ZN5faissL22should_use_db_parallelEmmPKNS_10IDSelectorE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bl = tail call ptr @__dynamic_cast(ptr nonnull %9, ptr nonnull @_ZTIN5faiss10IDSelectorE, ptr nonnull @_ZTIN5faiss15IDSelectorRangeE, i64 0) #5 ; 3 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !32
  %.sroa.speculated71 = tail call i64 @llvm.smax.i64(i64 %i.bn, i64 0) ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !32
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %4, i64 %i.bp)
  %i.bq = sub nsw i64 %.sroa.speculated, %.sroa.speculated71
  %i.br = mul i64 %.sroa.speculated71, %2
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.br
  br label %_ZN5faissL22should_use_db_parallelEmmPKNS_10IDSelectorE.exit

bb.d:                                             ; preds = %bb.b
  %i.bt = tail call ptr @__dynamic_cast(ptr nonnull %9, ptr nonnull @_ZTIN5faiss10IDSelectorE, ptr nonnull @_ZTIN5faiss15IDSelectorArrayE, i64 0) #5 ; 3 uses
  %.not64 = icmp eq ptr %i.bt, null
  br i1 %.not64, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !45
  tail call void @_ZN5faiss16knn_L2sqr_by_idxEPKfS1_PKlmmmmmPfPll(ptr noundef %0, ptr noundef %1, ptr noundef %i.bv, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %i.bx, i64 noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef 0)
  br label %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread

_ZN5faissL22should_use_db_parallelEmmPKNS_10IDSelectorE.exit: ; preds = %bb.a, %bb.c
  %.059.ph = phi i64 [ %i.bq, %bb.c ], [ %4, %bb.a ] ; 31 uses
  %.057.ph = phi i64 [ %.sroa.speculated71, %bb.c ], [ 0, %bb.a ] ; 4 uses
  %.056.ph = phi ptr [ %i.bs, %bb.c ], [ %1, %bb.a ] ; 12 uses
  %i.by = tail call i32 @omp_get_max_threads()    ; 2 uses
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = load i32, ptr @_ZN5faiss33distance_compute_blas_database_bsE, align 4, !tbaa !33
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, %i.bz
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 10000)
  %i.cd = icmp sgt i32 %i.by, 1
  %i.ce = icmp ult i64 %3, %i.bz
  %or.cond.i = and i1 %i.cd, %i.ce
  %i.cf = icmp uge i64 %.059.ph, %.sroa.speculated.i
  %i.cg = select i1 %or.cond.i, i1 %i.cf, i1 false
  %i.ch = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 10 uses
  br i1 %i.cg, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN5faissL22should_use_db_parallelEmmPKNS_10IDSelectorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store ptr %0, ptr %i.ay, align 8, !tbaa !30
  store ptr %.056.ph, ptr %i.az, align 8, !tbaa !30
  store i64 %2, ptr %i.ba, align 8, !tbaa !32
  store i64 %3, ptr %i.bb, align 8, !tbaa !32
  store i64 %.059.ph, ptr %i.bc, align 8, !tbaa !32
  store i64 %5, ptr %i.bd, align 8, !tbaa !32
  store ptr %6, ptr %i.be, align 8, !tbaa !30
  store ptr %7, ptr %i.bf, align 8, !tbaa !46
  store ptr %8, ptr %i.bg, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #5
  %i.ci = tail call i32 @omp_get_max_threads()    ; 3 uses
  store i32 %i.ci, ptr %i.bh, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #5
  %i.cj = load i32, ptr @_ZN5faiss33distance_compute_blas_database_bsE, align 4, !tbaa !33
  %i.ck = sext i32 %i.cj to i64
  store i64 %i.ck, ptr %i.bi, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  %i.cl = sext i32 %i.ci to i64
  %i.cm = mul i64 %5, %3
  %i.cn = mul i64 %i.cm, %i.cl                    ; 8 uses
  %i.co = icmp ugt i64 %i.cn, 2305843009213693951
  br i1 %i.co, label %.noexc.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i, label %.noexc5.i

.noexc5.i:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cq = shl nuw nsw i64 %i.cn, 2
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #26 ; 7 uses
  store ptr %i.cr, ptr %16, align 8, !tbaa !48
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cn ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !49
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !35
  %i.cu = getelementptr i8, ptr %i.cr, i64 4      ; 3 uses
  %i.cv = add nsw i64 %i.cn, -1                   ; 3 uses
  %i.cw = icmp eq i64 %i.cv, 0                    ; 2 uses
  br i1 %i.cw, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.noexc5.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cv, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cu, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx.i.i.i.i.i.i.i.i
  store ptr %i.cx, ptr %i.cp, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #5
  %i.cy = icmp samesign ugt i64 %i.cn, 1152921504606846975
  br i1 %i.cy, label %bb.h, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.thread.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %.noexc9.i unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit.thread.i

.noexc9.i:                                        ; preds = %bb.h
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %.noexc5.i
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #5
  br label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.thread.i

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br label %bb.i

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.g
  %i.cz = shl nuw nsw i64 %i.cn, 3
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #26
          to label %.noexc10.i unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit.thread.i ; 6 uses

.noexc10.i:                                       ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.thread.i
  store ptr %i.da, ptr %17, align 8, !tbaa !52
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cn ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !53
  store i64 0, ptr %i.da, align 8, !tbaa !32
  %i.dd = getelementptr i8, ptr %i.da, i64 8      ; 3 uses
  br i1 %i.cw, label %bb.i, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc10.i
  %.idx.i.i.i.i.i.i.i7.i = shl nuw nsw i64 %i.cv, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dd, i8 0, i64 %.idx.i.i.i.i.i.i.i7.i, i1 false), !tbaa !32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx.i.i.i.i.i.i.i7.i
  br label %bb.i

bb.i:                                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc10.i, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i
  %i.df = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ], [ %i.cs, %.noexc10.i ], [ %i.cs, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ]
  %i.dg = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ], [ %i.cr, %.noexc10.i ], [ %i.cr, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 2 uses
  %i.dh = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ], [ %i.db, %.noexc10.i ], [ %i.db, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ]
  %i.di = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ], [ %i.da, %.noexc10.i ], [ %i.da, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 3 uses
  %.0.i.i.i.i.i8.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ], [ %i.dd, %.noexc10.i ], [ %i.de, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.0.i.i.i.i.i8.i, ptr %i.dj, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #5
  store ptr null, ptr %18, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #5
  %19 = icmp ugt i64 %3, 4611686018427387903
  %i.dk = shl nuw i64 %3, 2
  %20 = select i1 %19, i64 -1, i64 %i.dk
  %i.dl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %20) #26
          to label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.thread.i ; 4 uses

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.thread.i: ; preds = %bb.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16.i

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i: ; preds = %bb.i
  tail call void @_ZN5faiss16fvec_norms_L2sqrEPfPKfmm(ptr noundef nonnull %i.dl, ptr noundef %0, i64 noundef %2, i64 noundef %3)
  store ptr %i.dl, ptr %i.bj, align 8, !tbaa !30
  %.not.i67 = icmp eq ptr %8, null
  br i1 %.not.i67, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i
  %i.dn = icmp ugt i64 %.059.ph, 4611686018427387903
  %i.do = shl nuw i64 %.059.ph, 2
  %i.dp = select i1 %i.dn, i64 -1, i64 %i.do
  %i.dq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dp) #26
          to label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit13.i unwind label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15.i ; 2 uses

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit13.i: ; preds = %bb.j
  store ptr %i.dq, ptr %18, align 8, !tbaa !30
  store ptr %i.dq, ptr %i.bg, align 8, !tbaa !30
  br label %bb.l

_ZNSt6vectorIlSaIlEED2Ev.exit.thread.i:           ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.thread.i, %bb.h
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #5
  br label %bb.o

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15.i: ; preds = %bb.j
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  tail call void @_ZdaPv(ptr noundef nonnull %i.dl) #27
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16.i

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16.i: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15.i, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.thread.i
  %i.dt = phi { ptr, i32 } [ %i.dm, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit.thread.i ], [ %i.ds, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i15.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16.i
  %i.du = ptrtoint ptr %i.dh to i64
  %i.dv = ptrtoint ptr %i.di to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dw) #27
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

bb.l:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit13.i, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.i
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.ch, i32 %i.ci)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN5faissL20knn_db_parallel_implINS_4CMaxIflEEEEvPKfS4_mmmmPfPlS4_.omp_outlined, ptr nonnull %i.bc, ptr nonnull %i.bh, ptr nonnull %18, ptr nonnull %i.az, ptr nonnull %i.ba, ptr nonnull %16, ptr nonnull %i.bb, ptr nonnull %i.bd, ptr nonnull %17, ptr nonnull %i.bi, ptr nonnull %i.ay, ptr nonnull %i.bj, ptr nonnull %i.bg)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN5faissL20knn_db_parallel_implINS_4CMaxIflEEEEvPKfS4_mmmmPfPlS4_.omp_outlined.11, ptr nonnull %i.bb, ptr nonnull %i.bd, ptr nonnull %i.be, ptr nonnull %i.bf, ptr nonnull %i.bh, ptr nonnull %16, ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #5
  %i.dx = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %.not.i17.i = icmp eq ptr %i.dx, null
  br i1 %.not.i17.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22.i, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18.i: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #27
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22.i

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22.i: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i18.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #27
  %i.dy = load ptr, ptr %17, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i23.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i23.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit24.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22.i
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !53
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #27
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit24.i

_ZNSt6vectorIlSaIlEED2Ev.exit24.i:                ; preds = %bb.m, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #5
  %i.ee = load ptr, ptr %16, align 8, !tbaa !48   ; 3 uses
  %.not.i.i.i25.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i25.i, label %_ZN5faissL20knn_db_parallel_implINS_4CMaxIflEEEEvPKfS4_mmmmPfPlS4_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit24.i
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !49
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #27
  br label %_ZN5faissL20knn_db_parallel_implINS_4CMaxIflEEEEvPKfS4_mmmmPfPlS4_.exit

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.k, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #5
  %.not.i.i.i26.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i26.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit27.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i, %_ZNSt6vectorIlSaIlEED2Ev.exit.thread.i
  %.pn53.i = phi { ptr, i32 } [ %i.dr, %_ZNSt6vectorIlSaIlEED2Ev.exit.thread.i ], [ %i.dt, %_ZNSt6vectorIlSaIlEED2Ev.exit.i ]
  %i.ek = phi ptr [ %i.cs, %_ZNSt6vectorIlSaIlEED2Ev.exit.thread.i ], [ %i.df, %_ZNSt6vectorIlSaIlEED2Ev.exit.i ]
  %i.el = phi ptr [ %i.cr, %_ZNSt6vectorIlSaIlEED2Ev.exit.thread.i ], [ %i.dg, %_ZNSt6vectorIlSaIlEED2Ev.exit.i ] ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.eo) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit27.i

common.resume:                                    ; preds = %.body518.i, %.body573.i, %.body623.i, %_ZNSt6vectorIfSaIfEED2Ev.exit27.i
  %common.resume.op = phi { ptr, i32 } [ %.pn54.i, %_ZNSt6vectorIfSaIfEED2Ev.exit27.i ], [ %eh.lpad-body624.i, %.body623.i ], [ %eh.lpad-body574.i, %.body573.i ], [ %eh.lpad-body519.i, %.body518.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIfSaIfEED2Ev.exit27.i:                ; preds = %bb.o, %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %.pn54.i = phi { ptr, i32 } [ %.pn53.i, %bb.o ], [ %i.dt, %_ZNSt6vectorIlSaIlEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #5
  br label %common.resume

_ZN5faissL20knn_db_parallel_implINS_4CMaxIflEEEEvPKfS4_mmmmPfPlS4_.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit24.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit

bb.p:                                             ; preds = %bb.d
  %i.ep = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.eq = icmp eq i64 %5, 1
  br i1 %i.eq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %3, ptr %i.er, align 8, !tbaa !170
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %9, ptr %i.es, align 8, !tbaa !171
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %6, ptr %i.eu, align 8, !tbaa !127
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %7, ptr %i.ev, align 8, !tbaa !128
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i64 1, ptr %i.ew, align 8, !tbaa !129
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss22Top1BlockResultHandlerINS_4CMaxIflEELb1EEE, i64 16), ptr %10, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store ptr %0, ptr %i.at, align 8, !tbaa !30
  store ptr %1, ptr %i.au, align 8, !tbaa !30
  store i64 %2, ptr %i.av, align 8, !tbaa !32
  store i64 %3, ptr %i.aw, align 8, !tbaa !32
  store i64 %4, ptr %i.ax, align 8, !tbaa !32
  %i.ex = icmp eq i64 %3, 0
  br i1 %i.ex, label %_ZN5faiss12_GLOBAL__N_120exhaustive_L2sqr_seqINS_22Top1BlockResultHandlerINS_4CMaxIflEELb1EEEEEvPKfS7_mmmRT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ey = trunc i64 %3 to i32
  %i.ez = tail call i32 @omp_get_max_threads()
  %.sroa.speculated.i.i355.i = tail call i32 @llvm.smin.i32(i32 %i.ez, i32 %i.ey)
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.ep, i32 %.sroa.speculated.i.i355.i)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN5faiss12_GLOBAL__N_120exhaustive_L2sqr_seqINS_22Top1BlockResultHandlerINS_4CMaxIflEELb1EEEEEvPKfS7_mmmRT_.omp_outlined, ptr nonnull align 8 dereferenceable(64) %10, ptr nonnull %i.aw, ptr nonnull %i.at, ptr nonnull %i.av, ptr nonnull %i.au, ptr nonnull %i.ax)
  br label %_ZN5faiss12_GLOBAL__N_120exhaustive_L2sqr_seqINS_22Top1BlockResultHandlerINS_4CMaxIflEELb1EEEEEvPKfS7_mmmRT_.exit.i.i

_ZN5faiss12_GLOBAL__N_120exhaustive_L2sqr_seqINS_22Top1BlockResultHandlerINS_4CMaxIflEELb1EEEEEvPKfS7_mmmRT_.exit.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  br label %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.fa = load i32, ptr @_ZN5faiss32distance_compute_min_k_reservoirE, align 4, !tbaa !33
  %i.fb = sext i32 %i.fa to i64
  %i.fc = icmp ult i64 %5, %i.fb
  br i1 %i.fc, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %3, ptr %i.fd, align 8, !tbaa !170
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %9, ptr %i.fe, align 8, !tbaa !171
end_hunk_0
