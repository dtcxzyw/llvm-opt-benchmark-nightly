Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ProductQuantizer?download=true
inline.NumInlined: 608
inline.NumDeleted: 306
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK5faiss16ProductQuantizer6searchEPKfmPKhmPNS_9HeapArrayINS_4CMaxIflEEEEb:bb.a
  invoke void @_ZNK5faiss16ProductQuantizer23compute_distance_tablesEmPKfPf(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %2, ptr noundef %1, ptr noundef nonnull %i.am)
          to label %bb.k unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit23

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ap = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !76
  store ptr %i.am, ptr %i.b, align 8, !tbaa !73
  store ptr %3, ptr %i.c, align 8, !tbaa !74
  store i64 %4, ptr %i.d, align 8, !tbaa !76
  store ptr %5, ptr %i.e, align 8, !tbaa !89
  %i.aq = zext i1 %6 to i8
  store i8 %i.aq, ptr %i.f, align 1, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !91
  store i64 %i.as, ptr %i.g, align 8, !tbaa !76
  %i.at = load i64, ptr %5, align 8, !tbaa !158   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i64 %i.at, ptr %i.h, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !40
  store i64 %i.au, ptr %i.i, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !38
  store i64 %i.av, ptr %i.j, align 8, !tbaa !76
  %i.aw = icmp ugt i64 %i.at, 1
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN5faiss12_GLOBAL__N_125pq_knn_search_with_tablesINS_4CMaxIflEEEEvRKNS_16ProductQuantizerEmPKfPKhmPNS_9HeapArrayIT_EEb.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.b, ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(224) %0)
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.ap)
  store i32 %i.ap, ptr %i.k, align 4, !tbaa !63
  call void @_ZN5faiss12_GLOBAL__N_125pq_knn_search_with_tablesINS_4CMaxIflEEEEvRKNS_16ProductQuantizerEmPKfPKhmPNS_9HeapArrayIT_EEb.omp_outlined(ptr nonnull %i.k, ptr nonnull poison, ptr %i.h, ptr %i.b, ptr %i.i, ptr %i.j, ptr %i.e, ptr %i.g, ptr %i.f, ptr %i.a, ptr %i.c, ptr %i.d, ptr nonnull align 8 dereferenceable(224) %0) #21
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.ap)
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_ZdaPv(ptr noundef nonnull %i.am) #29
  ret void

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit23: ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.am) #29
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %i.ax, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit23 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn19

bb.o:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_125pq_knn_search_with_tablesINS_4CMaxIflEEEEvRKNS_16ProductQuantizerEmPKfPKhmPNS_9HeapArrayIT_EEb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %12) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bt

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.g, ptr %i.b, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 1, ptr %i.c, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !63
  %i.h = load i32, ptr %0, align 4, !tbaa !63     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !76
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !76
  %i.k = load i64, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not224 = icmp sgt i64 %i.k, %i.j
  br i1 %.not224, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit
  %.0225 = phi i64 [ %i.k, %.lr.ph ], [ %i.aqb, %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit ] ; 4 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !73
  %i.p = load i64, ptr %4, align 8, !tbaa !76
  %i.q = mul i64 %i.p, %.0225
  %i.r = load i64, ptr %5, align 8, !tbaa !76
  %i.s = mul i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.s ; 20 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !89     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !92
  %i.x = load i64, ptr %7, align 8, !tbaa !76     ; 6 uses
  %i.y = mul i64 %i.x, %.0225                     ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.y ; 37 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y ; 54 uses
  %i.ad = load i8, ptr %8, align 1, !tbaa !90, !range !53, !noundef !54
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = icmp ne i64 %i.x, 0
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %.lr.ph46.i.preheader, label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit

.lr.ph46.i.preheader:                             ; preds = %bb.c
  %min.iters.check426 = icmp ult i64 %i.x, 4
  br i1 %min.iters.check426, label %.lr.ph46.i.preheader450, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph46.i.preheader
  %n.vec428 = and i64 %i.x, -4                    ; 3 uses
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next431, %vector.body429 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index430 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ag, align 4, !tbaa !46
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ah, align 4, !tbaa !46
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index430 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ai, align 8, !tbaa !76
  store <2 x i64> splat (i64 -1), ptr %i.aj, align 8, !tbaa !76
  %index.next431 = add nuw i64 %index430, 4       ; 2 uses
  %i.ak = icmp eq i64 %index.next431, %n.vec428
  br i1 %i.ak, label %middle.block432, label %vector.body429, !llvm.loop !159

middle.block432:                                  ; preds = %vector.body429
  %cmp.n433 = icmp eq i64 %i.x, %n.vec428
  br i1 %cmp.n433, label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i.preheader450

.lr.ph46.i.preheader450:                          ; preds = %.lr.ph46.i.preheader, %middle.block432
  %.045.i.ph = phi i64 [ 0, %.lr.ph46.i.preheader ], [ %n.vec428, %middle.block432 ]
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader450, %.lr.ph46.i
  %.045.i = phi i64 [ %i.an, %.lr.ph46.i ], [ %.045.i.ph, %.lr.ph46.i.preheader450 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.045.i
  store float f0x7F7FFFFF, ptr %i.al, align 4, !tbaa !46
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.045.i
  store i64 -1, ptr %i.am, align 8, !tbaa !76
  %i.an = add nuw i64 %.045.i, 1                  ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.an, %i.x
  br i1 %exitcond51.not.i, label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i, !llvm.loop !160

_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit: ; preds = %.lr.ph46.i, %middle.block432, %bb.c
  %i.ao = load i64, ptr %9, align 8, !tbaa !76    ; 4 uses
  switch i64 %i.ao, label %bb.bd [
    i64 8, label %bb.d
    i64 16, label %bb.ae
  ]

bb.d:                                             ; preds = %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit
  %i.ap = load i64, ptr %4, align 8, !tbaa !76
  %i.aq = icmp eq i64 %i.ap, 256
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = load i64, ptr %5, align 8, !tbaa !76
  %i.as = load ptr, ptr %10, align 8, !tbaa !74
  %i.at = load i64, ptr %11, align 8, !tbaa !76
  %i.au = load i64, ptr %7, align 8, !tbaa !76
  invoke void @_ZN5faiss16pq_code_distance12pq_scan_8bitEmPKfPKhmmPfPlb(i64 noundef %i.ar, ptr noundef %i.t, ptr noundef %i.as, i64 noundef %i.at, i64 noundef %i.au, ptr noundef %i.ac, ptr noundef %i.z, i1 noundef zeroext true)
          to label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit unwind label %bb.bu

bb.f:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %10, align 8, !tbaa !74   ; 5 uses
  %i.aw = load i64, ptr %11, align 8, !tbaa !76   ; 13 uses
  %i.ax = load i64, ptr %7, align 8, !tbaa !76    ; 14 uses
  %.val = load i64, ptr %i.l, align 8, !tbaa !38  ; 8 uses
  %.val42 = load i64, ptr %i.m, align 8           ; 30 uses
  %i.ay = icmp eq i64 %.val, 4
  br i1 %i.ay, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.val42 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.val42 ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.val42 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 4 uses
  %i.be = icmp ult i64 %i.ax, 2
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ax
  br i1 %i.be, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.pre.i.i = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !190
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.split.us.i.i
  %i.bf = phi float [ %.pre.i.i, %.lr.ph.split.us.i.i ], [ %i.ce, %bb.i ] ; 2 uses
  %.029.us.i.i = phi i64 [ 0, %.lr.ph.split.us.i.i ], [ %i.cf, %bb.i ] ; 2 uses
  %.02728.us.i.i = phi ptr [ %i.av, %.lr.ph.split.us.i.i ], [ %i.bx, %bb.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02728.us.i.i, i64 1
  %i.bh = load i8, ptr %.02728.us.i.i, align 1, !tbaa !62, !noalias !190
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !46, !alias.scope !190
  %i.bl = getelementptr inbounds nuw i8, ptr %.02728.us.i.i, i64 2
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !62, !noalias !190
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !46, !alias.scope !190
  %i.bq = fadd float %i.bk, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.02728.us.i.i, i64 3
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !62, !noalias !190
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !46, !alias.scope !190
  %i.bw = fadd float %i.bq, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.02728.us.i.i, i64 4
  %i.by = load i8, ptr %i.br, align 1, !tbaa !62, !noalias !190
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !46, !alias.scope !190
  %i.cc = fadd float %i.bw, %i.cb                 ; 3 uses
  %i.cd = fcmp ogt float %i.bf, %i.cc
  br i1 %i.cd, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i, label %bb.i

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i: ; preds = %bb.h
  store float %i.cc, ptr %i.ac, align 4, !tbaa !46, !noalias !190
  store i64 %.029.us.i.i, ptr %i.z, align 8, !tbaa !76, !noalias !190
  br label %bb.i

bb.i:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i, %bb.h
  %i.ce = phi float [ %i.cc, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i ], [ %i.bf, %bb.h ]
  %i.cf = add nuw i64 %.029.us.i.i, 1             ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.cf, %i.aw
  br i1 %exitcond33.not.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %bb.h, !llvm.loop !163

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.m
  %.029.i.i = phi i64 [ %i.em, %bb.m ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.02728.i.i = phi ptr [ %i.cx, %bb.m ], [ %i.av, %.lr.ph.i.i ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02728.i.i, i64 1
  %i.ch = load i8, ptr %.02728.i.i, align 1, !tbaa !62, !noalias !190
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !46, !alias.scope !190
  %i.cl = getelementptr inbounds nuw i8, ptr %.02728.i.i, i64 2
  %i.cm = load i8, ptr %i.cg, align 1, !tbaa !62, !noalias !190
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !46, !alias.scope !190
  %i.cq = fadd float %i.ck, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.02728.i.i, i64 3
  %i.cs = load i8, ptr %i.cl, align 1, !tbaa !62, !noalias !190
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !46, !alias.scope !190
  %i.cw = fadd float %i.cq, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.02728.i.i, i64 4
  %i.cy = load i8, ptr %i.cr, align 1, !tbaa !62, !noalias !190
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !46, !alias.scope !190
  %i.dc = fadd float %i.cw, %i.db                 ; 6 uses
  %i.dd = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !190
  %i.de = fcmp ogt float %i.dd, %i.dc
  br i1 %i.de, label %.lr.ph.i.i.i, label %bb.m

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.i.i, %bb.l
  %i.df = phi i64 [ %i.ei, %bb.l ], [ 3, %.lr.ph.split.i.i ]
  %i.dg = phi i64 [ %i.eh, %bb.l ], [ 2, %.lr.ph.split.i.i ] ; 7 uses
  %.056.i.i.i = phi i64 [ %.1.i.i.i, %bb.l ], [ 1, %.lr.ph.split.i.i ] ; 6 uses
  %i.dh = icmp eq i64 %i.dg, %i.ax
  br i1 %i.dh, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i, label %bb.j

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load float, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !46, !noalias !190
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.dg
  %i.dj = load float, ptr %i.di, align 4, !tbaa !46, !noalias !190 ; 4 uses
  %i.dk = getelementptr [4 x i8], ptr %i.ac, i64 %i.dg
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !46, !noalias !190 ; 5 uses
  %i.dm = getelementptr [8 x i8], ptr %i.z, i64 %i.dg
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !76, !noalias !190 ; 3 uses
  %i.do = fcmp ogt float %i.dj, %i.dl
  br i1 %i.do, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i:          ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.dg
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !76, !noalias !190
  %i.dr = fcmp oeq float %i.dj, %i.dl
  %i.ds = icmp sgt i64 %i.dq, %i.dn
  %i.dt = and i1 %i.dr, %i.ds
  br i1 %i.dt, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i, label %bb.k

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i:   ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i, %bb.j, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i
  %i.du = phi float [ %.pre.i.i.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i ], [ %i.dj, %bb.j ], [ %i.dj, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i ] ; 3 uses
  %i.dv = fcmp ogt float %i.dc, %i.du
  br i1 %i.dv, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i:        ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.dg
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !76, !noalias !190 ; 2 uses
  %i.dy = fcmp oeq float %i.dc, %i.du
  %i.dz = icmp sgt i64 %.029.i.i, %i.dx
  %i.ea = and i1 %i.dy, %i.dz
  br i1 %i.ea, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, label %bb.l

bb.k:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i
  %i.eb = fcmp ogt float %i.dc, %i.dl
  br i1 %i.eb, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i:        ; preds = %bb.k
  %i.ec = fcmp oeq float %i.dc, %i.dl
  %i.ed = icmp sgt i64 %.029.i.i, %i.dn
  %i.ee = and i1 %i.ec, %i.ed
  br i1 %i.ee, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i
  %.sink71.i.i.i = phi float [ %i.du, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i ], [ %i.dl, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.dx, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i ], [ %i.dn, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i ]
  %.1.i.i.i = phi i64 [ %i.dg, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i ], [ %i.df, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.056.i.i.i
  store float %.sink71.i.i.i, ptr %i.ef, align 4, !tbaa !46, !noalias !190
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.056.i.i.i
  store i64 %.sink.i.i.i, ptr %i.eg, align 8, !tbaa !76, !noalias !190
  %i.eh = shl i64 %.1.i.i.i, 1                    ; 3 uses
  %i.ei = or disjoint i64 %i.eh, 1
  %i.ej = icmp ugt i64 %i.eh, %i.ax
  br i1 %i.ej, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i: ; preds = %bb.l, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i, %bb.k, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i
  %.0.lcssa.i.ph.i.i = phi i64 [ %.1.i.i.i, %bb.l ], [ %.056.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i ], [ %.056.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i ], [ %.056.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i ], [ %.056.i.i.i, %bb.k ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.0.lcssa.i.ph.i.i
  store float %i.dc, ptr %i.ek, align 4, !tbaa !46, !noalias !190
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.0.lcssa.i.ph.i.i
  store i64 %.029.i.i, ptr %i.el, align 8, !tbaa !76, !noalias !190
  br label %bb.m

bb.m:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, %.lr.ph.split.i.i
  %i.em = add nuw i64 %.029.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.em, %i.aw
  br i1 %exitcond.not.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.lr.ph.split.i.i, !llvm.loop !163

bb.n:                                             ; preds = %bb.f
  %i.en = and i64 %.val, 3
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.o, label %.preheader6.i

.preheader6.i:                                    ; preds = %bb.n
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader6.i
  %.not20.i = icmp eq i64 %.val, 0
  %i.ep = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.eq = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 4 uses
  %i.er = icmp ult i64 %i.ax, 2
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ax
  %xtraiter488 = and i64 %.val, 3                 ; 3 uses
  %i.es = icmp ult i64 %.val, 4
  %unroll_iter493 = and i64 %.val, -4
  %lcmp.mod490.not = icmp eq i64 %xtraiter488, 0
  %lcmp.mod492 = icmp ne i64 %xtraiter488, 0
  br label %.preheader.i

bb.o:                                             ; preds = %bb.n
  %i.et = trunc i64 %.val to i32                  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %.not.i42.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i42.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.o
  %i.eu = icmp sgt i32 %i.et, 0                   ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 7 uses
  %i.ew = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 8 uses
  %i.ex = icmp ult i64 %i.ax, 2
  %.phi.trans.insert.i.i43.i = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ax ; 2 uses
  br i1 %i.ex, label %.preheader.lr.ph.split.us.i.i, label %.preheader.lr.ph.split.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %.preheader.lr.ph.i.i
  br i1 %i.eu, label %.preheader.us.us.i.i.preheader, label %.preheader.lr.ph.split.us.split.i.i

.preheader.us.us.i.i.preheader:                   ; preds = %.preheader.lr.ph.split.us.i.i
  %i.ey = add nsw i32 %i.et, -4                   ; 3 uses
  %i.ez = lshr exact i32 %i.ey, 2
  %i.fa = add nuw nsw i32 %i.ez, 1                ; 2 uses
  %i.fb = icmp eq i32 %i.ey, 0
  %unroll_iter519 = and i32 %i.fa, 2147483646
  %i.fc = and i32 %i.ey, 4
  %lcmp.mod515.not.not = icmp eq i32 %i.fc, 0
  %lcmp.mod518 = trunc i32 %i.fa to i1
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %.preheader.us.us.i.i.preheader, %bb.p
  %.046.us.us.i.i = phi ptr [ %.lcssa459, %bb.p ], [ %i.av, %.preheader.us.us.i.i.preheader ] ; 2 uses
  %.03743.us.us.i.i = phi i64 [ %i.ik, %bb.p ], [ 0, %.preheader.us.us.i.i.preheader ] ; 2 uses
  br i1 %i.fb, label %.epil.preheader512, label %.preheader.us.us.i.i.new

.preheader.us.us.i.i.new:                         ; preds = %.preheader.us.us.i.i, %.preheader.us.us.i.i.new
  %.141.us.us.i.i = phi ptr [ %i.gz, %.preheader.us.us.i.i.new ], [ %.046.us.us.i.i, %.preheader.us.us.i.i ] ; 9 uses
  %.03539.us.us.i.i = phi ptr [ %i.hf, %.preheader.us.us.i.i.new ], [ %i.t, %.preheader.us.us.i.i ] ; 2 uses
  %.03638.us.us.i.i = phi float [ %i.hg, %.preheader.us.us.i.i.new ], [ 0.000000e+00, %.preheader.us.us.i.i ]
  %niter520 = phi i32 [ %niter520.next.1, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 1
  %i.fe = load i8, ptr %.141.us.us.i.i, align 1, !tbaa !62, !noalias !191
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !46, !alias.scope !191
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i, i64 %.val42 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 2
  %i.fk = load i8, ptr %i.fd, align 1, !tbaa !62, !noalias !191
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !46, !alias.scope !191
  %i.fo = fadd float %i.fh, %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.val42 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 3
  %i.fr = load i8, ptr %i.fj, align 1, !tbaa !62, !noalias !191
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !46, !alias.scope !191
  %i.fv = fadd float %i.fo, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.val42 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 4
  %i.fy = load i8, ptr %i.fq, align 1, !tbaa !62, !noalias !191
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !46, !alias.scope !191
  %i.gc = fadd float %i.fv, %i.gb
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.val42 ; 2 uses
  %i.ge = fadd float %.03638.us.us.i.i, %i.gc
  %i.gf = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 5
  %i.gg = load i8, ptr %i.fx, align 1, !tbaa !62, !noalias !191
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gh
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !46, !alias.scope !191
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.val42 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 6
  %i.gm = load i8, ptr %i.gf, align 1, !tbaa !62, !noalias !191
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !46, !alias.scope !191
  %i.gq = fadd float %i.gj, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.val42 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 7
  %i.gt = load i8, ptr %i.gl, align 1, !tbaa !62, !noalias !191
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gu
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !46, !alias.scope !191
  %i.gx = fadd float %i.gq, %i.gw
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.val42 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 8 ; 3 uses
  %i.ha = load i8, ptr %i.gs, align 1, !tbaa !62, !noalias !191
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !46, !alias.scope !191
  %i.he = fadd float %i.gx, %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.val42 ; 2 uses
  %i.hg = fadd float %i.ge, %i.he                 ; 3 uses
  %niter520.next.1 = add i32 %niter520, 2         ; 2 uses
  %niter520.ncmp.1.not = icmp eq i32 %niter520.next.1, %unroll_iter519
  br i1 %niter520.ncmp.1.not, label %._crit_edge.us.us.i.i.unr-lcssa, label %.preheader.us.us.i.i.new, !llvm.loop !166

._crit_edge.us.us.i.i.unr-lcssa:                  ; preds = %.preheader.us.us.i.i.new
  br i1 %lcmp.mod515.not.not, label %.epil.preheader512, label %._crit_edge.us.us.i.i

.epil.preheader512:                               ; preds = %._crit_edge.us.us.i.i.unr-lcssa, %.preheader.us.us.i.i
  %.141.us.us.i.i.epil.init = phi ptr [ %.046.us.us.i.i, %.preheader.us.us.i.i ], [ %i.gz, %._crit_edge.us.us.i.i.unr-lcssa ] ; 5 uses
  %.03539.us.us.i.i.epil.init = phi ptr [ %i.t, %.preheader.us.us.i.i ], [ %i.hf, %._crit_edge.us.us.i.i.unr-lcssa ] ; 2 uses
  %.03638.us.us.i.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.us.i.i ], [ %i.hg, %._crit_edge.us.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod518)
  %i.hh = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i.epil.init, i64 1
  %i.hi = load i8, ptr %.141.us.us.i.i.epil.init, align 1, !tbaa !62, !noalias !191
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i.epil.init, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !46, !alias.scope !191
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i.epil.init, i64 %.val42 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i.epil.init, i64 2
  %i.ho = load i8, ptr %i.hh, align 1, !tbaa !62, !noalias !191
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hp
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !46, !alias.scope !191
  %i.hs = fadd float %i.hl, %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.val42 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i.epil.init, i64 3
  %i.hv = load i8, ptr %i.hn, align 1, !tbaa !62, !noalias !191
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !46, !alias.scope !191
  %i.hz = fadd float %i.hs, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.val42
  %i.ib = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i.epil.init, i64 4
  %i.ic = load i8, ptr %i.hu, align 1, !tbaa !62, !noalias !191
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !46, !alias.scope !191
  %i.ig = fadd float %i.hz, %i.if
  %i.ih = fadd float %.03638.us.us.i.i.epil.init, %i.ig
  br label %._crit_edge.us.us.i.i

._crit_edge.us.us.i.i:                            ; preds = %._crit_edge.us.us.i.i.unr-lcssa, %.epil.preheader512
  %.lcssa459 = phi ptr [ %i.gz, %._crit_edge.us.us.i.i.unr-lcssa ], [ %i.ib, %.epil.preheader512 ]
  %.lcssa458 = phi float [ %i.hg, %._crit_edge.us.us.i.i.unr-lcssa ], [ %i.ih, %.epil.preheader512 ] ; 2 uses
  %i.ii = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !191
  %i.ij = fcmp ogt float %i.ii, %.lcssa458
  br i1 %i.ij, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i, label %bb.p

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i: ; preds = %._crit_edge.us.us.i.i
  store float %.lcssa458, ptr %i.ac, align 4, !tbaa !46, !noalias !191
  store i64 %.03743.us.us.i.i, ptr %i.z, align 8, !tbaa !76, !noalias !191
  br label %bb.p

bb.p:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i, %._crit_edge.us.us.i.i
  %i.ik = add nuw i64 %.03743.us.us.i.i, 1        ; 2 uses
  %exitcond75.not.i.i = icmp eq i64 %i.ik, %i.aw
  br i1 %exitcond75.not.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.us.us.i.i, !llvm.loop !167

.preheader.lr.ph.split.us.split.i.i:              ; preds = %.preheader.lr.ph.split.us.i.i
  %i.il = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !191 ; 3 uses
  %i.im = fcmp ogt float %i.il, 0.000000e+00
  br i1 %i.im, label %.preheader.us.i.i.preheader, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit

.preheader.us.i.i.preheader:                      ; preds = %.preheader.lr.ph.split.us.split.i.i
  %xtraiter504 = and i64 %i.aw, 1
  %i.in = icmp eq i64 %i.aw, 1
  br i1 %i.in, label %.preheader.us.i.i.epil.preheader, label %.preheader.us.i.i.preheader.new

.preheader.us.i.i.preheader.new:                  ; preds = %.preheader.us.i.i.preheader
  %unroll_iter510 = and i64 %i.aw, -2
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %bb.q, %.preheader.us.i.i.preheader.new
  %i.io = phi float [ %i.il, %.preheader.us.i.i.preheader.new ], [ %i.it, %bb.q ] ; 2 uses
  %.03743.us.i.i = phi i64 [ 0, %.preheader.us.i.i.preheader.new ], [ %i.iu, %bb.q ] ; 3 uses
  %niter511 = phi i64 [ 0, %.preheader.us.i.i.preheader.new ], [ %niter511.next.1, %bb.q ]
  %i.ip = fcmp ogt float %i.io, 0.000000e+00
  br i1 %i.ip, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i, label %.preheader.us.i.i.1

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i: ; preds = %.preheader.us.i.i
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !46, !noalias !191
  store i64 %.03743.us.i.i, ptr %i.z, align 8, !tbaa !76, !noalias !191
  br label %.preheader.us.i.i.1

.preheader.us.i.i.1:                              ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i, %.preheader.us.i.i
  %i.iq = phi float [ 0.000000e+00, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i ], [ %i.io, %.preheader.us.i.i ] ; 2 uses
  %i.ir = fcmp ogt float %i.iq, 0.000000e+00
  br i1 %i.ir, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i.1, label %bb.q

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i.1: ; preds = %.preheader.us.i.i.1
  %i.is = or disjoint i64 %.03743.us.i.i, 1
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !46, !noalias !191
  store i64 %i.is, ptr %i.z, align 8, !tbaa !76, !noalias !191
  br label %bb.q

bb.q:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i.1, %.preheader.us.i.i.1
  %i.it = phi float [ 0.000000e+00, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i.1 ], [ %i.iq, %.preheader.us.i.i.1 ] ; 2 uses
  %i.iu = add nuw i64 %.03743.us.i.i, 2           ; 2 uses
  %niter511.next.1 = add nuw i64 %niter511, 2     ; 2 uses
  %niter511.ncmp.1 = icmp eq i64 %niter511.next.1, %unroll_iter510
  br i1 %niter511.ncmp.1, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit.loopexit439.unr-lcssa, label %.preheader.us.i.i, !llvm.loop !168

end_hunk_0
begin_hunk_1_@_ZN5faiss12_GLOBAL__N_125pq_knn_search_with_tablesINS_4CMaxIflEEEEvRKNS_16ProductQuantizerEmPKfPKhmPNS_9HeapArrayIT_EEb.omp_outlined:bb.a
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.lm
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !46, !alias.scope !191
  %i.lp = fadd float %i.li, %i.lo
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %.val42 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.141.us52.i.i.epil.init, i64 3
  %i.ls = load i8, ptr %i.lk, align 1, !tbaa !62, !noalias !191
  %i.lt = zext i8 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lt
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !46, !alias.scope !191
  %i.lw = fadd float %i.lp, %i.lv
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %.val42
  %i.ly = getelementptr inbounds nuw i8, ptr %.141.us52.i.i.epil.init, i64 4
  %i.lz = load i8, ptr %i.lr, align 1, !tbaa !62, !noalias !191
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.ma
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !46, !alias.scope !191
  %i.md = fadd float %i.lw, %i.mc
  %i.me = fadd float %.03638.us55.i.i.epil.init, %i.md
  br label %._crit_edge.us56.i.i

._crit_edge.us56.i.i:                             ; preds = %._crit_edge.us56.i.i.unr-lcssa, %.epil.preheader495
  %.lcssa457 = phi ptr [ %i.kw, %._crit_edge.us56.i.i.unr-lcssa ], [ %i.ly, %.epil.preheader495 ]
  %.lcssa456 = phi float [ %i.ld, %._crit_edge.us56.i.i.unr-lcssa ], [ %i.me, %.epil.preheader495 ] ; 6 uses
  %i.mf = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !191
  %i.mg = fcmp ogt float %i.mf, %.lcssa456
  br i1 %i.mg, label %.lr.ph.i.us.i.i, label %bb.u

.lr.ph.i.us.i.i:                                  ; preds = %._crit_edge.us56.i.i, %bb.t
  %i.mh = phi i64 [ %i.nk, %bb.t ], [ 3, %._crit_edge.us56.i.i ]
  %i.mi = phi i64 [ %i.nj, %bb.t ], [ 2, %._crit_edge.us56.i.i ] ; 7 uses
  %.056.i.us.i.i = phi i64 [ %.1.i.us.i.i, %bb.t ], [ 1, %._crit_edge.us56.i.i ] ; 6 uses
  %i.mj = icmp eq i64 %i.mi, %i.ax
  br i1 %i.mj, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.us.i.i
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.mi
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !46, !noalias !191 ; 4 uses
  %i.mm = getelementptr [4 x i8], ptr %i.ac, i64 %i.mi
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !46, !noalias !191 ; 5 uses
  %i.mo = getelementptr [8 x i8], ptr %i.z, i64 %i.mi
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !76, !noalias !191 ; 3 uses
  %i.mq = fcmp ogt float %i.ml, %i.mn
  br i1 %i.mq, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.us.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.us.i.i:       ; preds = %bb.r
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.mi
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !76, !noalias !191
  %i.mt = fcmp oeq float %i.ml, %i.mn
  %i.mu = icmp sgt i64 %i.ms, %i.mp
  %i.mv = and i1 %i.mt, %i.mu
  br i1 %i.mv, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.us.i.i
  %i.mw = fcmp ogt float %.lcssa456, %i.mn
  br i1 %i.mw, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i:     ; preds = %bb.s
  %i.mx = fcmp oeq float %.lcssa456, %i.mn
  %i.my = icmp sgt i64 %.03743.us50.i.i, %i.mp
  %i.mz = and i1 %i.mx, %i.my
  br i1 %i.mz, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, label %bb.t

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i: ; preds = %.lr.ph.i.us.i.i
  %.pre.i.us.i.i = load float, ptr %.phi.trans.insert.i.i43.i, align 4, !tbaa !46, !noalias !191
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i: ; preds = %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.us.i.i, %bb.r
  %i.na = phi float [ %.pre.i.us.i.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i ], [ %i.ml, %bb.r ], [ %i.ml, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.us.i.i ] ; 3 uses
  %i.nb = fcmp ogt float %.lcssa456, %i.na
  br i1 %i.nb, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i:     ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.mi
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !76, !noalias !191 ; 2 uses
  %i.ne = fcmp oeq float %.lcssa456, %i.na
  %i.nf = icmp sgt i64 %.03743.us50.i.i, %i.nd
  %i.ng = and i1 %i.ne, %i.nf
  br i1 %i.ng, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i
  %.sink71.i.us.i.i = phi float [ %i.na, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i ], [ %i.mn, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i ]
  %.sink.i.us.i.i = phi i64 [ %i.nd, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i ], [ %i.mp, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i ]
  %.1.i.us.i.i = phi i64 [ %i.mi, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i ], [ %i.mh, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.056.i.us.i.i
  store float %.sink71.i.us.i.i, ptr %i.nh, align 4, !tbaa !46, !noalias !191
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.056.i.us.i.i
  store i64 %.sink.i.us.i.i, ptr %i.ni, align 8, !tbaa !76, !noalias !191
  %i.nj = shl i64 %.1.i.us.i.i, 1                 ; 3 uses
  %i.nk = or disjoint i64 %i.nj, 1
  %i.nl = icmp ugt i64 %i.nj, %i.ax
  br i1 %i.nl, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, label %.lr.ph.i.us.i.i, !llvm.loop !7

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i: ; preds = %bb.t, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i, %bb.s
  %.0.lcssa.i.ph.us.i.i = phi i64 [ %.1.i.us.i.i, %bb.t ], [ %.056.i.us.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i ], [ %.056.i.us.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i ], [ %.056.i.us.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i ], [ %.056.i.us.i.i, %bb.s ] ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.0.lcssa.i.ph.us.i.i
  store float %.lcssa456, ptr %i.nm, align 4, !tbaa !46, !noalias !191
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.0.lcssa.i.ph.us.i.i
  store i64 %.03743.us50.i.i, ptr %i.nn, align 8, !tbaa !76, !noalias !191
  br label %bb.u

bb.u:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, %._crit_edge.us56.i.i
  %i.no = add nuw i64 %.03743.us50.i.i, 1         ; 2 uses
  %exitcond73.not.i.i = icmp eq i64 %i.no, %i.aw
  br i1 %exitcond73.not.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.us48.i.i, !llvm.loop !167

.preheader.lr.ph.split.split.i.i:                 ; preds = %.preheader.lr.ph.split.i.i
  %i.np = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !191 ; 2 uses
  %i.nq = fcmp ogt float %i.np, 0.000000e+00
  br i1 %i.nq, label %.preheader.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit

.preheaderthread-pre-split.i.i:                   ; preds = %bb.y
  %.pr.i.i = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !191
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.lr.ph.split.split.i.i, %.preheaderthread-pre-split.i.i
  %i.nr = phi float [ %.pr.i.i, %.preheaderthread-pre-split.i.i ], [ %i.np, %.preheader.lr.ph.split.split.i.i ]
  %.03743.i.i = phi i64 [ %i.pa, %.preheaderthread-pre-split.i.i ], [ 0, %.preheader.lr.ph.split.split.i.i ] ; 4 uses
  %i.ns = fcmp ogt float %i.nr, 0.000000e+00
  br i1 %i.ns, label %.lr.ph.i.i45.i, label %bb.y

.lr.ph.i.i45.i:                                   ; preds = %.preheader.i.i, %bb.x
  %i.nt = phi i64 [ %i.ow, %bb.x ], [ 3, %.preheader.i.i ]
  %i.nu = phi i64 [ %i.ov, %bb.x ], [ 2, %.preheader.i.i ] ; 7 uses
  %.056.i.i46.i = phi i64 [ %.1.i.i51.i, %bb.x ], [ 1, %.preheader.i.i ] ; 6 uses
  %i.nv = icmp eq i64 %i.nu, %i.ax
  br i1 %i.nv, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i, label %bb.v

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i: ; preds = %.lr.ph.i.i45.i
  %.pre.i.i57.i = load float, ptr %.phi.trans.insert.i.i43.i, align 4, !tbaa !46, !noalias !191
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i

bb.v:                                             ; preds = %.lr.ph.i.i45.i
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.nu
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !46, !noalias !191 ; 4 uses
  %i.ny = getelementptr [4 x i8], ptr %i.ac, i64 %i.nu
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !46, !noalias !191 ; 5 uses
  %i.oa = getelementptr [8 x i8], ptr %i.z, i64 %i.nu
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !76, !noalias !191 ; 3 uses
  %i.oc = fcmp ogt float %i.nx, %i.nz
  br i1 %i.oc, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i47.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i47.i:        ; preds = %bb.v
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.nu
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !76, !noalias !191
  %i.of = fcmp oeq float %i.nx, %i.nz
  %i.og = icmp sgt i64 %i.oe, %i.ob
  %i.oh = and i1 %i.of, %i.og
  br i1 %i.oh, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i, label %bb.w

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i47.i, %bb.v, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i
  %i.oi = phi float [ %.pre.i.i57.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i ], [ %i.nx, %bb.v ], [ %i.nx, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i47.i ] ; 3 uses
  %i.oj = fcmp olt float %i.oi, 0.000000e+00
  br i1 %i.oj, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i:      ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.nu
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !76, !noalias !191 ; 2 uses
  %i.om = fcmp oeq float %i.oi, 0.000000e+00
  %i.on = icmp sgt i64 %.03743.i.i, %i.ol
  %i.oo = and i1 %i.om, %i.on
  br i1 %i.oo, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, label %bb.x

bb.w:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i47.i
  %i.op = fcmp olt float %i.nz, 0.000000e+00
  br i1 %i.op, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i:      ; preds = %bb.w
  %i.oq = fcmp oeq float %i.nz, 0.000000e+00
  %i.or = icmp sgt i64 %.03743.i.i, %i.ob
  %i.os = and i1 %i.oq, %i.or
  br i1 %i.os, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, label %bb.x

bb.x:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i
  %.sink71.i.i49.i = phi float [ %i.oi, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i ], [ %i.nz, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i ]
  %.sink.i.i50.i = phi i64 [ %i.ol, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i ], [ %i.ob, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i ]
  %.1.i.i51.i = phi i64 [ %i.nu, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i ], [ %i.nt, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i ] ; 3 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.056.i.i46.i
  store float %.sink71.i.i49.i, ptr %i.ot, align 4, !tbaa !46, !noalias !191
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.056.i.i46.i
  store i64 %.sink.i.i50.i, ptr %i.ou, align 8, !tbaa !76, !noalias !191
  %i.ov = shl i64 %.1.i.i51.i, 1                  ; 3 uses
  %i.ow = or disjoint i64 %i.ov, 1
  %i.ox = icmp ugt i64 %i.ov, %i.ax
  br i1 %i.ox, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, label %.lr.ph.i.i45.i, !llvm.loop !7

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i: ; preds = %bb.x, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i, %bb.w, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i
  %.0.lcssa.i.ph.i53.i = phi i64 [ %.1.i.i51.i, %bb.x ], [ %.056.i.i46.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i ], [ %.056.i.i46.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i ], [ %.056.i.i46.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i ], [ %.056.i.i46.i, %bb.w ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.0.lcssa.i.ph.i53.i
  store float 0.000000e+00, ptr %i.oy, align 4, !tbaa !46, !noalias !191
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.0.lcssa.i.ph.i53.i
  store i64 %.03743.i.i, ptr %i.oz, align 8, !tbaa !76, !noalias !191
  br label %bb.y

bb.y:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, %.preheader.i.i
  %i.pa = add nuw i64 %.03743.i.i, 1              ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %i.pa, %i.aw
  br i1 %exitcond.not.i44.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheaderthread-pre-split.i.i, !llvm.loop !169

.preheader.i:                                     ; preds = %bb.ad, %.preheader.lr.ph.i
  %.03917.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.rt, %bb.ad ] ; 4 uses
  %.04016.i = phi ptr [ %i.av, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %bb.ad ] ; 4 uses
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  br i1 %i.es, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod490.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.03713.i.epil.init = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ql, %._crit_edge.loopexit.i.unr-lcssa ]
  %.03812.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.qk, %._crit_edge.loopexit.i.unr-lcssa ]
  %.111.i.epil.init = phi ptr [ %.04016.i, %.lr.ph.i.preheader ], [ %i.qf, %._crit_edge.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod492)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03713.i.epil = phi ptr [ %i.ph, %.lr.ph.i.epil ], [ %.03713.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.03812.i.epil = phi float [ %i.pg, %.lr.ph.i.epil ], [ %.03812.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.111.i.epil = phi ptr [ %i.pb, %.lr.ph.i.epil ], [ %.111.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter489 = phi i64 [ %epil.iter489.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.pb = getelementptr inbounds nuw i8, ptr %.111.i.epil, i64 1
  %i.pc = load i8, ptr %.111.i.epil, align 1, !tbaa !62
  %i.pd = zext i8 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.03713.i.epil, i64 %i.pd
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !46
  %i.pg = fadd float %.03812.i.epil, %i.pf        ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.03713.i.epil, i64 %.val42
  %epil.iter489.next = add i64 %epil.iter489, 1   ; 2 uses
  %epil.iter489.cmp.not = icmp eq i64 %epil.iter489.next, %xtraiter488
  br i1 %epil.iter489.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !170

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa455 = phi float [ %i.qk, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.pg, %.lr.ph.i.epil ]
  %scevgep.i = getelementptr i8, ptr %.04016.i, i64 %.val
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.04016.i, %.preheader.i ], [ %scevgep.i, %._crit_edge.loopexit.i ]
  %.038.lcssa.i = phi float [ 0.000000e+00, %.preheader.i ], [ %.lcssa455, %._crit_edge.loopexit.i ] ; 6 uses
  %i.pi = load float, ptr %i.ac, align 4, !tbaa !46
  %i.pj = fcmp ogt float %i.pi, %.038.lcssa.i
  br i1 %i.pj, label %bb.z, label %bb.ad

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03713.i = phi ptr [ %i.ql, %.lr.ph.i ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %.03812.i = phi float [ %i.qk, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.111.i = phi ptr [ %i.qf, %.lr.ph.i ], [ %.04016.i, %.lr.ph.i.preheader ] ; 5 uses
  %niter494 = phi i64 [ %niter494.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.pk = getelementptr inbounds nuw i8, ptr %.111.i, i64 1
  %i.pl = load i8, ptr %.111.i, align 1, !tbaa !62
  %i.pm = zext i8 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.03713.i, i64 %i.pm
  %i.po = load float, ptr %i.pn, align 4, !tbaa !46
  %i.pp = fadd float %.03812.i, %i.po
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.03713.i, i64 %.val42 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.111.i, i64 2
  %i.ps = load i8, ptr %i.pk, align 1, !tbaa !62
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.pt
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !46
  %i.pw = fadd float %i.pp, %i.pv
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %.val42 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.111.i, i64 3
  %i.pz = load i8, ptr %i.pr, align 1, !tbaa !62
  %i.qa = zext i8 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.qa
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !46
  %i.qd = fadd float %i.pw, %i.qc
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %.val42 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.111.i, i64 4 ; 2 uses
  %i.qg = load i8, ptr %i.py, align 1, !tbaa !62
  %i.qh = zext i8 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.qh
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !46
  %i.qk = fadd float %i.qd, %i.qj                 ; 3 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %.val42 ; 2 uses
  %niter494.next.3 = add nuw i64 %niter494, 4     ; 2 uses
  %niter494.ncmp.3 = icmp eq i64 %niter494.next.3, %unroll_iter493
  br i1 %niter494.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !171

bb.z:                                             ; preds = %._crit_edge.i
  br i1 %i.er, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %bb.z, %bb.ac
  %i.qm = phi i64 [ %i.rp, %bb.ac ], [ 3, %bb.z ]
  %i.qn = phi i64 [ %i.ro, %bb.ac ], [ 2, %bb.z ] ; 7 uses
  %.056.i.i = phi i64 [ %.1.i.i, %bb.ac ], [ 1, %bb.z ] ; 6 uses
  %i.qo = icmp eq i64 %i.qn, %i.ax
  br i1 %i.qo, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i, label %bb.aa

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i59.i
  %.pre.i60.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !46
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i

bb.aa:                                            ; preds = %.lr.ph.i59.i
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.qn
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !46 ; 4 uses
  %i.qr = getelementptr [4 x i8], ptr %i.ac, i64 %i.qn
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !46 ; 5 uses
  %i.qt = getelementptr [8 x i8], ptr %i.z, i64 %i.qn
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !76 ; 3 uses
  %i.qv = fcmp ogt float %i.qq, %i.qs
  br i1 %i.qv, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i:            ; preds = %bb.aa
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.qn
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !76
  %i.qy = fcmp oeq float %i.qq, %i.qs
  %i.qz = icmp sgt i64 %i.qx, %i.qu
  %i.ra = and i1 %i.qy, %i.qz
  br i1 %i.ra, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %bb.ab

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i:     ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i, %bb.aa, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i
  %i.rb = phi float [ %.pre.i60.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i ], [ %i.qq, %bb.aa ], [ %i.qq, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i ] ; 3 uses
  %i.rc = fcmp ogt float %.038.lcssa.i, %i.rb
  br i1 %i.rc, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i:          ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.qn
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !76 ; 2 uses
  %i.rf = fcmp oeq float %.038.lcssa.i, %i.rb
  %i.rg = icmp sgt i64 %.03917.i, %i.re
  %i.rh = and i1 %i.rf, %i.rg
  br i1 %i.rh, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %bb.ac

bb.ab:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i
  %i.ri = fcmp ogt float %.038.lcssa.i, %i.qs
  br i1 %i.ri, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i:          ; preds = %bb.ab
  %i.rj = fcmp oeq float %.038.lcssa.i, %i.qs
  %i.rk = icmp sgt i64 %.03917.i, %i.qu
  %i.rl = and i1 %i.rj, %i.rk
  br i1 %i.rl, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i
  %.sink71.i.i = phi float [ %i.rb, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.qs, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ]
  %.sink.i.i = phi i64 [ %i.re, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.qu, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ]
  %.1.i.i = phi i64 [ %i.qn, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.qm, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ] ; 3 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.056.i.i
  store float %.sink71.i.i, ptr %i.rm, align 4, !tbaa !46
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.056.i.i
  store i64 %.sink.i.i, ptr %i.rn, align 8, !tbaa !76
  %i.ro = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.rp = or disjoint i64 %i.ro, 1
  %i.rq = icmp ugt i64 %i.ro, %i.ax
  br i1 %i.rq, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %.lr.ph.i59.i, !llvm.loop !7

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i: ; preds = %bb.ac, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i, %bb.ab, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, %bb.z
  %.0.lcssa.i.i = phi i64 [ 1, %bb.z ], [ %.056.i.i, %bb.ab ], [ %.056.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i ], [ %.056.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ], [ %.056.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %.1.i.i, %bb.ac ] ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.0.lcssa.i.i
  store float %.038.lcssa.i, ptr %i.rr, align 4, !tbaa !46
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.0.lcssa.i.i
  store i64 %.03917.i, ptr %i.rs, align 8, !tbaa !76
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, %._crit_edge.i
  %i.rt = add nuw i64 %.03917.i, 1                ; 2 uses
  %exitcond32.not.i = icmp eq i64 %i.rt, %i.aw
  br i1 %exitcond32.not.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.i, !llvm.loop !172

bb.ae:                                            ; preds = %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit
  %i.ru = load ptr, ptr %10, align 8, !tbaa !74   ; 5 uses
  %i.rv = load i64, ptr %11, align 8, !tbaa !76   ; 13 uses
  %i.rw = load i64, ptr %7, align 8, !tbaa !76    ; 14 uses
  %.val43 = load i64, ptr %i.l, align 8, !tbaa !38 ; 8 uses
  %.val44 = load i64, ptr %i.m, align 8           ; 30 uses
  %i.rx = icmp eq i64 %.val43, 4
  br i1 %i.rx, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %.not.i.i139 = icmp eq i64 %i.rv, 0
  br i1 %.not.i.i139, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.lr.ph.i.i140

.lr.ph.i.i140:                                    ; preds = %bb.af
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.val44 ; 3 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %.val44 ; 3 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %.val44 ; 2 uses
  %i.sb = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.sc = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 4 uses
  %i.sd = icmp ult i64 %i.rw, 2
  %.phi.trans.insert.i.i.i141 = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.rw
  br i1 %i.sd, label %.lr.ph.split.us.i.i159, label %.lr.ph.split.i.i142

.lr.ph.split.us.i.i159:                           ; preds = %.lr.ph.i.i140
  %.pre.i.i160 = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !192
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.split.us.i.i159
  %i.se = phi float [ %.pre.i.i160, %.lr.ph.split.us.i.i159 ], [ %i.td, %bb.ah ] ; 2 uses
  %.029.us.i.i161 = phi i64 [ 0, %.lr.ph.split.us.i.i159 ], [ %i.te, %bb.ah ] ; 2 uses
  %.02728.us.i.i162 = phi ptr [ %i.ru, %.lr.ph.split.us.i.i159 ], [ %i.sw, %bb.ah ] ; 5 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.02728.us.i.i162, i64 2
  %i.sg = load i16, ptr %.02728.us.i.i162, align 2, !tbaa !82, !noalias !192
  %i.sh = zext i16 %i.sg to i64
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.sh
  %i.sj = load float, ptr %i.si, align 4, !tbaa !46, !alias.scope !192
  %i.sk = getelementptr inbounds nuw i8, ptr %.02728.us.i.i162, i64 4
  %i.sl = load i16, ptr %i.sf, align 2, !tbaa !82, !noalias !192
  %i.sm = zext i16 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.sm
  %i.so = load float, ptr %i.sn, align 4, !tbaa !46, !alias.scope !192
  %i.sp = fadd float %i.sj, %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %.02728.us.i.i162, i64 6
  %i.sr = load i16, ptr %i.sk, align 2, !tbaa !82, !noalias !192
  %i.ss = zext i16 %i.sr to i64
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.ss
  %i.su = load float, ptr %i.st, align 4, !tbaa !46, !alias.scope !192
  %i.sv = fadd float %i.sp, %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %.02728.us.i.i162, i64 8
  %i.sx = load i16, ptr %i.sq, align 2, !tbaa !82, !noalias !192
  %i.sy = zext i16 %i.sx to i64
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.sy
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !46, !alias.scope !192
  %i.tb = fadd float %i.sv, %i.ta                 ; 3 uses
  %i.tc = fcmp ogt float %i.se, %i.tb
  br i1 %i.tc, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i164, label %bb.ah

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i164: ; preds = %bb.ag
  store float %i.tb, ptr %i.ac, align 4, !tbaa !46, !noalias !192
  store i64 %.029.us.i.i161, ptr %i.z, align 8, !tbaa !76, !noalias !192
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i164, %bb.ag
  %i.td = phi float [ %i.tb, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i164 ], [ %i.se, %bb.ag ]
  %i.te = add nuw i64 %.029.us.i.i161, 1          ; 2 uses
  %exitcond33.not.i.i163 = icmp eq i64 %i.te, %i.rv
  br i1 %exitcond33.not.i.i163, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %bb.ag, !llvm.loop !175

.lr.ph.split.i.i142:                              ; preds = %.lr.ph.i.i140, %bb.al
  %.029.i.i143 = phi i64 [ %i.vl, %bb.al ], [ 0, %.lr.ph.i.i140 ] ; 4 uses
  %.02728.i.i144 = phi ptr [ %i.tw, %bb.al ], [ %i.ru, %.lr.ph.i.i140 ] ; 5 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.02728.i.i144, i64 2
  %i.tg = load i16, ptr %.02728.i.i144, align 2, !tbaa !82, !noalias !192
  %i.th = zext i16 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.th
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !46, !alias.scope !192
  %i.tk = getelementptr inbounds nuw i8, ptr %.02728.i.i144, i64 4
  %i.tl = load i16, ptr %i.tf, align 2, !tbaa !82, !noalias !192
  %i.tm = zext i16 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.tm
  %i.to = load float, ptr %i.tn, align 4, !tbaa !46, !alias.scope !192
  %i.tp = fadd float %i.tj, %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %.02728.i.i144, i64 6
  %i.tr = load i16, ptr %i.tk, align 2, !tbaa !82, !noalias !192
  %i.ts = zext i16 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.ts
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !46, !alias.scope !192
  %i.tv = fadd float %i.tp, %i.tu
  %i.tw = getelementptr inbounds nuw i8, ptr %.02728.i.i144, i64 8
  %i.tx = load i16, ptr %i.tq, align 2, !tbaa !82, !noalias !192
  %i.ty = zext i16 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.ty
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !46, !alias.scope !192
  %i.ub = fadd float %i.tv, %i.ua                 ; 6 uses
  %i.uc = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !192
  %i.ud = fcmp ogt float %i.uc, %i.ub
  br i1 %i.ud, label %.lr.ph.i.i.i146, label %bb.al

.lr.ph.i.i.i146:                                  ; preds = %.lr.ph.split.i.i142, %bb.ak
  %i.ue = phi i64 [ %i.vh, %bb.ak ], [ 3, %.lr.ph.split.i.i142 ]
  %i.uf = phi i64 [ %i.vg, %bb.ak ], [ 2, %.lr.ph.split.i.i142 ] ; 7 uses
  %.056.i.i.i147 = phi i64 [ %.1.i.i.i152, %bb.ak ], [ 1, %.lr.ph.split.i.i142 ] ; 6 uses
  %i.ug = icmp eq i64 %i.uf, %i.rw
  br i1 %i.ug, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i157, label %bb.ai

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i157: ; preds = %.lr.ph.i.i.i146
  %.pre.i.i.i158 = load float, ptr %.phi.trans.insert.i.i.i141, align 4, !tbaa !46, !noalias !192
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i155

bb.ai:                                            ; preds = %.lr.ph.i.i.i146
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.uf
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !46, !noalias !192 ; 4 uses
  %i.uj = getelementptr [4 x i8], ptr %i.ac, i64 %i.uf
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !46, !noalias !192 ; 5 uses
  %i.ul = getelementptr [8 x i8], ptr %i.z, i64 %i.uf
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !76, !noalias !192 ; 3 uses
  %i.un = fcmp ogt float %i.ui, %i.uk
  br i1 %i.un, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i155, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i148

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i148:       ; preds = %bb.ai
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.uf
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !76, !noalias !192
  %i.uq = fcmp oeq float %i.ui, %i.uk
  %i.ur = icmp sgt i64 %i.up, %i.um
  %i.us = and i1 %i.uq, %i.ur
  br i1 %i.us, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i155, label %bb.aj

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i155: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i148, %bb.ai, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i157
  %i.ut = phi float [ %.pre.i.i.i158, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i157 ], [ %i.ui, %bb.ai ], [ %i.ui, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i148 ] ; 3 uses
  %i.uu = fcmp ogt float %i.ub, %i.ut
  br i1 %i.uu, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i156

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i156:     ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i155
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.uf
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !76, !noalias !192 ; 2 uses
  %i.ux = fcmp oeq float %i.ub, %i.ut
  %i.uy = icmp sgt i64 %.029.i.i143, %i.uw
  %i.uz = and i1 %i.ux, %i.uy
  br i1 %i.uz, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, label %bb.ak

bb.aj:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i148
  %i.va = fcmp ogt float %i.ub, %i.uk
  br i1 %i.va, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i149

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i149:     ; preds = %bb.aj
  %i.vb = fcmp oeq float %i.ub, %i.uk
  %i.vc = icmp sgt i64 %.029.i.i143, %i.um
  %i.vd = and i1 %i.vb, %i.vc
  br i1 %i.vd, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, label %bb.ak

bb.ak:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i149, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i156
  %.sink71.i.i.i150 = phi float [ %i.ut, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i156 ], [ %i.uk, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i149 ]
  %.sink.i.i.i151 = phi i64 [ %i.uw, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i156 ], [ %i.um, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i149 ]
  %.1.i.i.i152 = phi i64 [ %i.uf, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i156 ], [ %i.ue, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i149 ] ; 3 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %.056.i.i.i147
  store float %.sink71.i.i.i150, ptr %i.ve, align 4, !tbaa !46, !noalias !192
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %.056.i.i.i147
  store i64 %.sink.i.i.i151, ptr %i.vf, align 8, !tbaa !76, !noalias !192
  %i.vg = shl i64 %.1.i.i.i152, 1                 ; 3 uses
  %i.vh = or disjoint i64 %i.vg, 1
  %i.vi = icmp ugt i64 %i.vg, %i.rw
  br i1 %i.vi, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, label %.lr.ph.i.i.i146, !llvm.loop !7

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153: ; preds = %bb.ak, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i149, %bb.aj, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i156, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i155
  %.0.lcssa.i.ph.i.i154 = phi i64 [ %.1.i.i.i152, %bb.ak ], [ %.056.i.i.i147, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i.i156 ], [ %.056.i.i.i147, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i.i149 ], [ %.056.i.i.i147, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i155 ], [ %.056.i.i.i147, %bb.aj ] ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %.0.lcssa.i.ph.i.i154
  store float %i.ub, ptr %i.vj, align 4, !tbaa !46, !noalias !192
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %.0.lcssa.i.ph.i.i154
  store i64 %.029.i.i143, ptr %i.vk, align 8, !tbaa !76, !noalias !192
  br label %bb.al

bb.al:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, %.lr.ph.split.i.i142
  %i.vl = add nuw i64 %.029.i.i143, 1             ; 2 uses
  %exitcond.not.i.i145 = icmp eq i64 %i.vl, %i.rv
  br i1 %exitcond.not.i.i145, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.lr.ph.split.i.i142, !llvm.loop !175

bb.am:                                            ; preds = %bb.ae
  %i.vm = and i64 %.val43, 3
  %i.vn = icmp eq i64 %i.vm, 0
  br i1 %i.vn, label %bb.an, label %.preheader6.i45

.preheader6.i45:                                  ; preds = %bb.am
  %.not.i46 = icmp eq i64 %i.rv, 0
  br i1 %.not.i46, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.lr.ph.i47

.preheader.lr.ph.i47:                             ; preds = %.preheader6.i45
  %.not20.i48 = icmp eq i64 %.val43, 0
  %i.vo = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.vp = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 4 uses
  %i.vq = icmp ult i64 %i.rw, 2
  %.phi.trans.insert.i.i49 = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.rw
  %i.vr = shl i64 %.val43, 1
  %xtraiter = and i64 %.val43, 3                  ; 3 uses
  %i.vs = icmp ult i64 %.val43, 4
  %unroll_iter = and i64 %.val43, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod464 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i50

bb.an:                                            ; preds = %bb.am
  %i.vt = trunc i64 %.val43 to i32                ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %.not.i42.i78 = icmp eq i64 %i.rv, 0
  br i1 %.not.i42.i78, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.lr.ph.i.i79

.preheader.lr.ph.i.i79:                           ; preds = %bb.an
  %i.vu = icmp sgt i32 %i.vt, 0                   ; 2 uses
  %i.vv = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 7 uses
  %i.vw = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 8 uses
  %i.vx = icmp ult i64 %i.rw, 2
  %.phi.trans.insert.i.i43.i80 = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.rw ; 2 uses
  br i1 %i.vx, label %.preheader.lr.ph.split.us.i.i123, label %.preheader.lr.ph.split.i.i81

.preheader.lr.ph.split.us.i.i123:                 ; preds = %.preheader.lr.ph.i.i79
  br i1 %i.vu, label %.preheader.us.us.i.i129.preheader, label %.preheader.lr.ph.split.us.split.i.i124

.preheader.us.us.i.i129.preheader:                ; preds = %.preheader.lr.ph.split.us.i.i123
  %i.vy = add nsw i32 %i.vt, -4                   ; 3 uses
  %i.vz = lshr exact i32 %i.vy, 2
  %i.wa = add nuw nsw i32 %i.vz, 1                ; 2 uses
  %i.wb = icmp eq i32 %i.vy, 0
  %unroll_iter486 = and i32 %i.wa, 2147483646
  %i.wc = and i32 %i.vy, 4
  %lcmp.mod482.not.not = icmp eq i32 %i.wc, 0
  %lcmp.mod485 = trunc i32 %i.wa to i1
  br label %.preheader.us.us.i.i129

.preheader.us.us.i.i129:                          ; preds = %.preheader.us.us.i.i129.preheader, %bb.ao
  %.046.us.us.i.i130 = phi ptr [ %.lcssa454, %bb.ao ], [ %i.ru, %.preheader.us.us.i.i129.preheader ] ; 2 uses
  %.03743.us.us.i.i131 = phi i64 [ %i.zk, %bb.ao ], [ 0, %.preheader.us.us.i.i129.preheader ] ; 2 uses
  br i1 %i.wb, label %.epil.preheader479, label %.preheader.us.us.i.i129.new

.preheader.us.us.i.i129.new:                      ; preds = %.preheader.us.us.i.i129, %.preheader.us.us.i.i129.new
  %.141.us.us.i.i132 = phi ptr [ %i.xz, %.preheader.us.us.i.i129.new ], [ %.046.us.us.i.i130, %.preheader.us.us.i.i129 ] ; 9 uses
  %.03539.us.us.i.i134 = phi ptr [ %i.yf, %.preheader.us.us.i.i129.new ], [ %i.t, %.preheader.us.us.i.i129 ] ; 2 uses
  %.03638.us.us.i.i135 = phi float [ %i.yg, %.preheader.us.us.i.i129.new ], [ 0.000000e+00, %.preheader.us.us.i.i129 ]
  %niter487 = phi i32 [ %niter487.next.1, %.preheader.us.us.i.i129.new ], [ 0, %.preheader.us.us.i.i129 ]
  %i.wd = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 2
  %i.we = load i16, ptr %.141.us.us.i.i132, align 2, !tbaa !82, !noalias !193
  %i.wf = zext i16 %i.we to i64
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i134, i64 %i.wf
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !46, !alias.scope !193
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i134, i64 %.val44 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 4
  %i.wk = load i16, ptr %i.wd, align 2, !tbaa !82, !noalias !193
  %i.wl = zext i16 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.wl
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !46, !alias.scope !193
  %i.wo = fadd float %i.wh, %i.wn
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %.val44 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 6
  %i.wr = load i16, ptr %i.wj, align 2, !tbaa !82, !noalias !193
  %i.ws = zext i16 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %i.ws
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !46, !alias.scope !193
  %i.wv = fadd float %i.wo, %i.wu
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %.val44 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 8
  %i.wy = load i16, ptr %i.wq, align 2, !tbaa !82, !noalias !193
  %i.wz = zext i16 %i.wy to i64
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %i.wz
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !46, !alias.scope !193
  %i.xc = fadd float %i.wv, %i.xb
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %.val44 ; 2 uses
  %i.xe = fadd float %.03638.us.us.i.i135, %i.xc
  %i.xf = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 10
  %i.xg = load i16, ptr %i.wx, align 2, !tbaa !82, !noalias !193
  %i.xh = zext i16 %i.xg to i64
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.xh
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !46, !alias.scope !193
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %.val44 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 12
  %i.xm = load i16, ptr %i.xf, align 2, !tbaa !82, !noalias !193
  %i.xn = zext i16 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.xn
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !46, !alias.scope !193
  %i.xq = fadd float %i.xj, %i.xp
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %.val44 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 14
  %i.xt = load i16, ptr %i.xl, align 2, !tbaa !82, !noalias !193
  %i.xu = zext i16 %i.xt to i64
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %i.xu
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !46, !alias.scope !193
  %i.xx = fadd float %i.xq, %i.xw
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %.val44 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 16 ; 3 uses
  %i.ya = load i16, ptr %i.xs, align 2, !tbaa !82, !noalias !193
  %i.yb = zext i16 %i.ya to i64
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.yb
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !46, !alias.scope !193
  %i.ye = fadd float %i.xx, %i.yd
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %.val44 ; 2 uses
  %i.yg = fadd float %i.xe, %i.ye                 ; 3 uses
  %niter487.next.1 = add i32 %niter487, 2         ; 2 uses
  %niter487.ncmp.1.not = icmp eq i32 %niter487.next.1, %unroll_iter486
  br i1 %niter487.ncmp.1.not, label %._crit_edge.us.us.i.i136.unr-lcssa, label %.preheader.us.us.i.i129.new, !llvm.loop !178

._crit_edge.us.us.i.i136.unr-lcssa:               ; preds = %.preheader.us.us.i.i129.new
  br i1 %lcmp.mod482.not.not, label %.epil.preheader479, label %._crit_edge.us.us.i.i136

.epil.preheader479:                               ; preds = %._crit_edge.us.us.i.i136.unr-lcssa, %.preheader.us.us.i.i129
  %.141.us.us.i.i132.epil.init = phi ptr [ %.046.us.us.i.i130, %.preheader.us.us.i.i129 ], [ %i.xz, %._crit_edge.us.us.i.i136.unr-lcssa ] ; 5 uses
  %.03539.us.us.i.i134.epil.init = phi ptr [ %i.t, %.preheader.us.us.i.i129 ], [ %i.yf, %._crit_edge.us.us.i.i136.unr-lcssa ] ; 2 uses
  %.03638.us.us.i.i135.epil.init = phi float [ 0.000000e+00, %.preheader.us.us.i.i129 ], [ %i.yg, %._crit_edge.us.us.i.i136.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod485)
  %i.yh = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132.epil.init, i64 2
  %i.yi = load i16, ptr %.141.us.us.i.i132.epil.init, align 2, !tbaa !82, !noalias !193
  %i.yj = zext i16 %i.yi to i64
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i134.epil.init, i64 %i.yj
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !46, !alias.scope !193
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i134.epil.init, i64 %.val44 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132.epil.init, i64 4
  %i.yo = load i16, ptr %i.yh, align 2, !tbaa !82, !noalias !193
  %i.yp = zext i16 %i.yo to i64
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.yp
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !46, !alias.scope !193
  %i.ys = fadd float %i.yl, %i.yr
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %.val44 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132.epil.init, i64 6
  %i.yv = load i16, ptr %i.yn, align 2, !tbaa !82, !noalias !193
  %i.yw = zext i16 %i.yv to i64
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %i.yw
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !46, !alias.scope !193
  %i.yz = fadd float %i.ys, %i.yy
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %.val44
  %i.zb = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132.epil.init, i64 8
  %i.zc = load i16, ptr %i.yu, align 2, !tbaa !82, !noalias !193
  %i.zd = zext i16 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.zd
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !46, !alias.scope !193
  %i.zg = fadd float %i.yz, %i.zf
  %i.zh = fadd float %.03638.us.us.i.i135.epil.init, %i.zg
  br label %._crit_edge.us.us.i.i136

._crit_edge.us.us.i.i136:                         ; preds = %._crit_edge.us.us.i.i136.unr-lcssa, %.epil.preheader479
  %.lcssa454 = phi ptr [ %i.xz, %._crit_edge.us.us.i.i136.unr-lcssa ], [ %i.zb, %.epil.preheader479 ]
  %.lcssa453 = phi float [ %i.yg, %._crit_edge.us.us.i.i136.unr-lcssa ], [ %i.zh, %.epil.preheader479 ] ; 2 uses
  %i.zi = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !193
  %i.zj = fcmp ogt float %i.zi, %.lcssa453
  br i1 %i.zj, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i138, label %bb.ao

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i138: ; preds = %._crit_edge.us.us.i.i136
  store float %.lcssa453, ptr %i.ac, align 4, !tbaa !46, !noalias !193
  store i64 %.03743.us.us.i.i131, ptr %i.z, align 8, !tbaa !76, !noalias !193
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i138, %._crit_edge.us.us.i.i136
  %i.zk = add nuw i64 %.03743.us.us.i.i131, 1     ; 2 uses
  %exitcond75.not.i.i137 = icmp eq i64 %i.zk, %i.rv
  br i1 %exitcond75.not.i.i137, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.us.us.i.i129, !llvm.loop !179

.preheader.lr.ph.split.us.split.i.i124:           ; preds = %.preheader.lr.ph.split.us.i.i123
  %i.zl = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !193 ; 3 uses
  %i.zm = fcmp ogt float %i.zl, 0.000000e+00
  br i1 %i.zm, label %.preheader.us.i.i125.preheader, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit

.preheader.us.i.i125.preheader:                   ; preds = %.preheader.lr.ph.split.us.split.i.i124
  %xtraiter473 = and i64 %i.rv, 1
  %i.zn = icmp eq i64 %i.rv, 1
  br i1 %i.zn, label %.preheader.us.i.i125.epil.preheader, label %.preheader.us.i.i125.preheader.new

.preheader.us.i.i125.preheader.new:               ; preds = %.preheader.us.i.i125.preheader
  %unroll_iter477 = and i64 %i.rv, -2
  br label %.preheader.us.i.i125

.preheader.us.i.i125:                             ; preds = %bb.ap, %.preheader.us.i.i125.preheader.new
  %i.zo = phi float [ %i.zl, %.preheader.us.i.i125.preheader.new ], [ %i.zt, %bb.ap ] ; 2 uses
  %.03743.us.i.i126 = phi i64 [ 0, %.preheader.us.i.i125.preheader.new ], [ %i.zu, %bb.ap ] ; 3 uses
  %niter478 = phi i64 [ 0, %.preheader.us.i.i125.preheader.new ], [ %niter478.next.1, %bb.ap ]
  %i.zp = fcmp ogt float %i.zo, 0.000000e+00
  br i1 %i.zp, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128, label %.preheader.us.i.i125.1

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128: ; preds = %.preheader.us.i.i125
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !46, !noalias !193
  store i64 %.03743.us.i.i126, ptr %i.z, align 8, !tbaa !76, !noalias !193
  br label %.preheader.us.i.i125.1

.preheader.us.i.i125.1:                           ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128, %.preheader.us.i.i125
  %i.zq = phi float [ 0.000000e+00, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128 ], [ %i.zo, %.preheader.us.i.i125 ] ; 2 uses
  %i.zr = fcmp ogt float %i.zq, 0.000000e+00
  br i1 %i.zr, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128.1, label %bb.ap

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128.1: ; preds = %.preheader.us.i.i125.1
  %i.zs = or disjoint i64 %.03743.us.i.i126, 1
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !46, !noalias !193
  store i64 %i.zs, ptr %i.z, align 8, !tbaa !76, !noalias !193
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128.1, %.preheader.us.i.i125.1
  %i.zt = phi float [ 0.000000e+00, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128.1 ], [ %i.zq, %.preheader.us.i.i125.1 ] ; 2 uses
  %i.zu = add nuw i64 %.03743.us.i.i126, 2        ; 2 uses
  %niter478.next.1 = add nuw i64 %niter478, 2     ; 2 uses
  %niter478.ncmp.1 = icmp eq i64 %niter478.next.1, %unroll_iter477
  br i1 %niter478.ncmp.1, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit.loopexit446.unr-lcssa, label %.preheader.us.i.i125, !llvm.loop !180

end_hunk_1
begin_hunk_2_@_ZN5faiss12_GLOBAL__N_125pq_knn_search_with_tablesINS_4CMaxIflEEEEvRKNS_16ProductQuantizerEmPKfPKhmPNS_9HeapArrayIT_EEb.omp_outlined:bb.a
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %i.acm
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !46, !alias.scope !193
  %i.acp = fadd float %i.aci, %i.aco
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %.val44 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.141.us52.i.i104.epil.init, i64 6
  %i.acs = load i16, ptr %i.ack, align 2, !tbaa !82, !noalias !193
  %i.act = zext i16 %i.acs to i64
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.act
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !46, !alias.scope !193
  %i.acw = fadd float %i.acp, %i.acv
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %.val44
  %i.acy = getelementptr inbounds nuw i8, ptr %.141.us52.i.i104.epil.init, i64 8
  %i.acz = load i16, ptr %i.acr, align 2, !tbaa !82, !noalias !193
  %i.ada = zext i16 %i.acz to i64
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.acx, i64 %i.ada
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !46, !alias.scope !193
  %i.add = fadd float %i.acw, %i.adc
  %i.ade = fadd float %.03638.us55.i.i107.epil.init, %i.add
  br label %._crit_edge.us56.i.i108

._crit_edge.us56.i.i108:                          ; preds = %._crit_edge.us56.i.i108.unr-lcssa, %.epil.preheader
  %.lcssa452 = phi ptr [ %i.abw, %._crit_edge.us56.i.i108.unr-lcssa ], [ %i.acy, %.epil.preheader ]
  %.lcssa451 = phi float [ %i.acd, %._crit_edge.us56.i.i108.unr-lcssa ], [ %i.ade, %.epil.preheader ] ; 6 uses
  %i.adf = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !193
  %i.adg = fcmp ogt float %i.adf, %.lcssa451
  br i1 %i.adg, label %.lr.ph.i.us.i.i110, label %bb.at

.lr.ph.i.us.i.i110:                               ; preds = %._crit_edge.us56.i.i108, %bb.as
  %i.adh = phi i64 [ %i.aek, %bb.as ], [ 3, %._crit_edge.us56.i.i108 ]
  %i.adi = phi i64 [ %i.aej, %bb.as ], [ 2, %._crit_edge.us56.i.i108 ] ; 7 uses
  %.056.i.us.i.i111 = phi i64 [ %.1.i.us.i.i116, %bb.as ], [ 1, %._crit_edge.us56.i.i108 ] ; 6 uses
  %i.adj = icmp eq i64 %i.adi, %i.rw
  br i1 %i.adj, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i121, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.us.i.i110
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.adi
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !46, !noalias !193 ; 4 uses
  %i.adm = getelementptr [4 x i8], ptr %i.ac, i64 %i.adi
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !46, !noalias !193 ; 5 uses
  %i.ado = getelementptr [8 x i8], ptr %i.z, i64 %i.adi
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !76, !noalias !193 ; 3 uses
  %i.adq = fcmp ogt float %i.adl, %i.adn
  br i1 %i.adq, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i119, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.us.i.i112

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.us.i.i112:    ; preds = %bb.aq
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.adi
  %i.ads = load i64, ptr %i.adr, align 8, !tbaa !76, !noalias !193
  %i.adt = fcmp oeq float %i.adl, %i.adn
  %i.adu = icmp sgt i64 %i.ads, %i.adp
  %i.adv = and i1 %i.adt, %i.adu
  br i1 %i.adv, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i119, label %bb.ar

bb.ar:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.us.i.i112
  %i.adw = fcmp ogt float %.lcssa451, %i.adn
  br i1 %i.adw, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i113

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i113:  ; preds = %bb.ar
  %i.adx = fcmp oeq float %.lcssa451, %i.adn
  %i.ady = icmp sgt i64 %.03743.us50.i.i103, %i.adp
  %i.adz = and i1 %i.adx, %i.ady
  br i1 %i.adz, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, label %bb.as

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i121: ; preds = %.lr.ph.i.us.i.i110
  %.pre.i.us.i.i122 = load float, ptr %.phi.trans.insert.i.i43.i80, align 4, !tbaa !46, !noalias !193
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i119

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i119: ; preds = %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i121, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.us.i.i112, %bb.aq
  %i.aea = phi float [ %.pre.i.us.i.i122, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i121 ], [ %i.adl, %bb.aq ], [ %i.adl, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.us.i.i112 ] ; 3 uses
  %i.aeb = fcmp ogt float %.lcssa451, %i.aea
  br i1 %i.aeb, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i120

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i120:  ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i119
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.adi
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !76, !noalias !193 ; 2 uses
  %i.aee = fcmp oeq float %.lcssa451, %i.aea
  %i.aef = icmp sgt i64 %.03743.us50.i.i103, %i.aed
  %i.aeg = and i1 %i.aee, %i.aef
  br i1 %i.aeg, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, label %bb.as

bb.as:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i120, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i113
  %.sink71.i.us.i.i114 = phi float [ %i.aea, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i120 ], [ %i.adn, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i113 ]
  %.sink.i.us.i.i115 = phi i64 [ %i.aed, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i120 ], [ %i.adp, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i113 ]
  %.1.i.us.i.i116 = phi i64 [ %i.adi, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i120 ], [ %i.adh, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i113 ] ; 3 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %.056.i.us.i.i111
  store float %.sink71.i.us.i.i114, ptr %i.aeh, align 4, !tbaa !46, !noalias !193
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %.056.i.us.i.i111
  store i64 %.sink.i.us.i.i115, ptr %i.aei, align 8, !tbaa !76, !noalias !193
  %i.aej = shl i64 %.1.i.us.i.i116, 1             ; 3 uses
  %i.aek = or disjoint i64 %i.aej, 1
  %i.ael = icmp ugt i64 %i.aej, %i.rw
  br i1 %i.ael, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, label %.lr.ph.i.us.i.i110, !llvm.loop !7

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117: ; preds = %bb.as, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i120, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i119, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i113, %bb.ar
  %.0.lcssa.i.ph.us.i.i118 = phi i64 [ %.1.i.us.i.i116, %bb.as ], [ %.056.i.us.i.i111, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.us.i.i120 ], [ %.056.i.us.i.i111, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.us.i.i113 ], [ %.056.i.us.i.i111, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.us.i.i119 ], [ %.056.i.us.i.i111, %bb.ar ] ; 2 uses
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %.0.lcssa.i.ph.us.i.i118
  store float %.lcssa451, ptr %i.aem, align 4, !tbaa !46, !noalias !193
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %.0.lcssa.i.ph.us.i.i118
  store i64 %.03743.us50.i.i103, ptr %i.aen, align 8, !tbaa !76, !noalias !193
  br label %bb.at

bb.at:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, %._crit_edge.us56.i.i108
  %i.aeo = add nuw i64 %.03743.us50.i.i103, 1     ; 2 uses
  %exitcond73.not.i.i109 = icmp eq i64 %i.aeo, %i.rv
  br i1 %exitcond73.not.i.i109, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.us48.i.i101, !llvm.loop !179

.preheader.lr.ph.split.split.i.i82:               ; preds = %.preheader.lr.ph.split.i.i81
  %i.aep = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !193 ; 2 uses
  %i.aeq = fcmp ogt float %i.aep, 0.000000e+00
  br i1 %i.aeq, label %.preheader.i.i83, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit

.preheaderthread-pre-split.i.i86:                 ; preds = %bb.ax
  %.pr.i.i87 = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !193
  br label %.preheader.i.i83

.preheader.i.i83:                                 ; preds = %.preheader.lr.ph.split.split.i.i82, %.preheaderthread-pre-split.i.i86
  %i.aer = phi float [ %.pr.i.i87, %.preheaderthread-pre-split.i.i86 ], [ %i.aep, %.preheader.lr.ph.split.split.i.i82 ]
  %.03743.i.i84 = phi i64 [ %i.aga, %.preheaderthread-pre-split.i.i86 ], [ 0, %.preheader.lr.ph.split.split.i.i82 ] ; 4 uses
  %i.aes = fcmp ogt float %i.aer, 0.000000e+00
  br i1 %i.aes, label %.lr.ph.i.i45.i88, label %bb.ax

.lr.ph.i.i45.i88:                                 ; preds = %.preheader.i.i83, %bb.aw
  %i.aet = phi i64 [ %i.afw, %bb.aw ], [ 3, %.preheader.i.i83 ]
  %i.aeu = phi i64 [ %i.afv, %bb.aw ], [ 2, %.preheader.i.i83 ] ; 7 uses
  %.056.i.i46.i89 = phi i64 [ %.1.i.i51.i94, %bb.aw ], [ 1, %.preheader.i.i83 ] ; 6 uses
  %i.aev = icmp eq i64 %i.aeu, %i.rw
  br i1 %i.aev, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i99, label %bb.au

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i99: ; preds = %.lr.ph.i.i45.i88
  %.pre.i.i57.i100 = load float, ptr %.phi.trans.insert.i.i43.i80, align 4, !tbaa !46, !noalias !193
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i97

bb.au:                                            ; preds = %.lr.ph.i.i45.i88
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.aeu
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !46, !noalias !193 ; 4 uses
  %i.aey = getelementptr [4 x i8], ptr %i.ac, i64 %i.aeu
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !46, !noalias !193 ; 5 uses
  %i.afa = getelementptr [8 x i8], ptr %i.z, i64 %i.aeu
  %i.afb = load i64, ptr %i.afa, align 8, !tbaa !76, !noalias !193 ; 3 uses
  %i.afc = fcmp ogt float %i.aex, %i.aez
  br i1 %i.afc, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i97, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i47.i90

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i47.i90:      ; preds = %bb.au
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.aeu
  %i.afe = load i64, ptr %i.afd, align 8, !tbaa !76, !noalias !193
  %i.aff = fcmp oeq float %i.aex, %i.aez
  %i.afg = icmp sgt i64 %i.afe, %i.afb
  %i.afh = and i1 %i.aff, %i.afg
  br i1 %i.afh, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i97, label %bb.av

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i97: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i47.i90, %bb.au, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i99
  %i.afi = phi float [ %.pre.i.i57.i100, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i99 ], [ %i.aex, %bb.au ], [ %i.aex, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i47.i90 ] ; 3 uses
  %i.afj = fcmp olt float %i.afi, 0.000000e+00
  br i1 %i.afj, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i98

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i98:    ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i97
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.aeu
  %i.afl = load i64, ptr %i.afk, align 8, !tbaa !76, !noalias !193 ; 2 uses
  %i.afm = fcmp oeq float %i.afi, 0.000000e+00
  %i.afn = icmp sgt i64 %.03743.i.i84, %i.afl
  %i.afo = and i1 %i.afm, %i.afn
  br i1 %i.afo, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, label %bb.aw

bb.av:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i47.i90
  %i.afp = fcmp olt float %i.aez, 0.000000e+00
  br i1 %i.afp, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i91

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i91:    ; preds = %bb.av
  %i.afq = fcmp oeq float %i.aez, 0.000000e+00
  %i.afr = icmp sgt i64 %.03743.i.i84, %i.afb
  %i.afs = and i1 %i.afq, %i.afr
  br i1 %i.afs, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, label %bb.aw

bb.aw:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i91, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i98
  %.sink71.i.i49.i92 = phi float [ %i.afi, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i98 ], [ %i.aez, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i91 ]
  %.sink.i.i50.i93 = phi i64 [ %i.afl, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i98 ], [ %i.afb, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i91 ]
  %.1.i.i51.i94 = phi i64 [ %i.aeu, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i98 ], [ %i.aet, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i91 ] ; 3 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %.056.i.i46.i89
  store float %.sink71.i.i49.i92, ptr %i.aft, align 4, !tbaa !46, !noalias !193
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %.056.i.i46.i89
  store i64 %.sink.i.i50.i93, ptr %i.afu, align 8, !tbaa !76, !noalias !193
  %i.afv = shl i64 %.1.i.i51.i94, 1               ; 3 uses
  %i.afw = or disjoint i64 %i.afv, 1
  %i.afx = icmp ugt i64 %i.afv, %i.rw
  br i1 %i.afx, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, label %.lr.ph.i.i45.i88, !llvm.loop !7

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95: ; preds = %bb.aw, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i91, %bb.av, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i98, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i97
  %.0.lcssa.i.ph.i53.i96 = phi i64 [ %.1.i.i51.i94, %bb.aw ], [ %.056.i.i46.i89, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i55.i98 ], [ %.056.i.i46.i89, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i48.i91 ], [ %.056.i.i46.i89, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i54.i97 ], [ %.056.i.i46.i89, %bb.av ] ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %.0.lcssa.i.ph.i53.i96
  store float 0.000000e+00, ptr %i.afy, align 4, !tbaa !46, !noalias !193
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %.0.lcssa.i.ph.i53.i96
  store i64 %.03743.i.i84, ptr %i.afz, align 8, !tbaa !76, !noalias !193
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, %.preheader.i.i83
  %i.aga = add nuw i64 %.03743.i.i84, 1           ; 2 uses
  %exitcond.not.i44.i85 = icmp eq i64 %i.aga, %i.rv
  br i1 %exitcond.not.i44.i85, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheaderthread-pre-split.i.i86, !llvm.loop !181

.preheader.i50:                                   ; preds = %bb.bc, %.preheader.lr.ph.i47
  %.03917.i51 = phi i64 [ 0, %.preheader.lr.ph.i47 ], [ %i.ait, %bb.bc ] ; 4 uses
  %.04016.i52 = phi ptr [ %i.ru, %.preheader.lr.ph.i47 ], [ %.1.lcssa.i62, %bb.bc ] ; 4 uses
  br i1 %.not20.i48, label %._crit_edge.i61, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %.preheader.i50
  br i1 %i.vs, label %.lr.ph.i53.epil.preheader, label %.lr.ph.i53

._crit_edge.loopexit.i59.unr-lcssa:               ; preds = %.lr.ph.i53
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i59, label %.lr.ph.i53.epil.preheader

.lr.ph.i53.epil.preheader:                        ; preds = %._crit_edge.loopexit.i59.unr-lcssa, %.lr.ph.i53.preheader
  %.03713.i55.epil.init = phi ptr [ %i.t, %.lr.ph.i53.preheader ], [ %i.ahl, %._crit_edge.loopexit.i59.unr-lcssa ]
  %.03812.i56.epil.init = phi float [ 0.000000e+00, %.lr.ph.i53.preheader ], [ %i.ahk, %._crit_edge.loopexit.i59.unr-lcssa ]
  %.111.i57.epil.init = phi ptr [ %.04016.i52, %.lr.ph.i53.preheader ], [ %i.ahf, %._crit_edge.loopexit.i59.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod464)
  br label %.lr.ph.i53.epil

.lr.ph.i53.epil:                                  ; preds = %.lr.ph.i53.epil, %.lr.ph.i53.epil.preheader
  %.03713.i55.epil = phi ptr [ %i.agh, %.lr.ph.i53.epil ], [ %.03713.i55.epil.init, %.lr.ph.i53.epil.preheader ] ; 2 uses
  %.03812.i56.epil = phi float [ %i.agg, %.lr.ph.i53.epil ], [ %.03812.i56.epil.init, %.lr.ph.i53.epil.preheader ]
  %.111.i57.epil = phi ptr [ %i.agb, %.lr.ph.i53.epil ], [ %.111.i57.epil.init, %.lr.ph.i53.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i53.epil ], [ 0, %.lr.ph.i53.epil.preheader ]
  %i.agb = getelementptr inbounds nuw i8, ptr %.111.i57.epil, i64 2
  %i.agc = load i16, ptr %.111.i57.epil, align 2, !tbaa !82
  %i.agd = zext i16 %i.agc to i64
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %.03713.i55.epil, i64 %i.agd
  %i.agf = load float, ptr %i.age, align 4, !tbaa !46
  %i.agg = fadd float %.03812.i56.epil, %i.agf    ; 2 uses
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %.03713.i55.epil, i64 %.val44
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i59, label %.lr.ph.i53.epil, !llvm.loop !182

._crit_edge.loopexit.i59:                         ; preds = %.lr.ph.i53.epil, %._crit_edge.loopexit.i59.unr-lcssa
  %.lcssa = phi float [ %i.ahk, %._crit_edge.loopexit.i59.unr-lcssa ], [ %i.agg, %.lr.ph.i53.epil ]
  %scevgep.i60 = getelementptr i8, ptr %.04016.i52, i64 %i.vr
  br label %._crit_edge.i61

._crit_edge.i61:                                  ; preds = %._crit_edge.loopexit.i59, %.preheader.i50
  %.1.lcssa.i62 = phi ptr [ %.04016.i52, %.preheader.i50 ], [ %scevgep.i60, %._crit_edge.loopexit.i59 ]
  %.038.lcssa.i63 = phi float [ 0.000000e+00, %.preheader.i50 ], [ %.lcssa, %._crit_edge.loopexit.i59 ] ; 6 uses
  %i.agi = load float, ptr %i.ac, align 4, !tbaa !46
  %i.agj = fcmp ogt float %i.agi, %.038.lcssa.i63
  br i1 %i.agj, label %bb.ay, label %bb.bc

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.preheader, %.lr.ph.i53
  %.03713.i55 = phi ptr [ %i.ahl, %.lr.ph.i53 ], [ %i.t, %.lr.ph.i53.preheader ] ; 2 uses
  %.03812.i56 = phi float [ %i.ahk, %.lr.ph.i53 ], [ 0.000000e+00, %.lr.ph.i53.preheader ]
  %.111.i57 = phi ptr [ %i.ahf, %.lr.ph.i53 ], [ %.04016.i52, %.lr.ph.i53.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i53 ], [ 0, %.lr.ph.i53.preheader ]
  %i.agk = getelementptr inbounds nuw i8, ptr %.111.i57, i64 2
  %i.agl = load i16, ptr %.111.i57, align 2, !tbaa !82
  %i.agm = zext i16 %i.agl to i64
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %.03713.i55, i64 %i.agm
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !46
  %i.agp = fadd float %.03812.i56, %i.ago
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %.03713.i55, i64 %.val44 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.111.i57, i64 4
  %i.ags = load i16, ptr %i.agk, align 2, !tbaa !82
  %i.agt = zext i16 %i.ags to i64
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %i.agt
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !46
  %i.agw = fadd float %i.agp, %i.agv
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %.val44 ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.111.i57, i64 6
  %i.agz = load i16, ptr %i.agr, align 2, !tbaa !82
  %i.aha = zext i16 %i.agz to i64
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.aha
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !46
  %i.ahd = fadd float %i.agw, %i.ahc
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.val44 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.111.i57, i64 8 ; 2 uses
  %i.ahg = load i16, ptr %i.agy, align 2, !tbaa !82
  %i.ahh = zext i16 %i.ahg to i64
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.ahh
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !46
  %i.ahk = fadd float %i.ahd, %i.ahj              ; 3 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %.val44 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i59.unr-lcssa, label %.lr.ph.i53, !llvm.loop !183

bb.ay:                                            ; preds = %._crit_edge.i61
  br i1 %i.vq, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %.lr.ph.i59.i65

.lr.ph.i59.i65:                                   ; preds = %bb.ay, %bb.bb
  %i.ahm = phi i64 [ %i.aip, %bb.bb ], [ 3, %bb.ay ]
  %i.ahn = phi i64 [ %i.aio, %bb.bb ], [ 2, %bb.ay ] ; 7 uses
  %.056.i.i66 = phi i64 [ %.1.i.i71, %bb.bb ], [ 1, %bb.ay ] ; 6 uses
  %i.aho = icmp eq i64 %i.ahn, %i.rw
  br i1 %i.aho, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i76, label %bb.az

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i76: ; preds = %.lr.ph.i59.i65
  %.pre.i60.i77 = load float, ptr %.phi.trans.insert.i.i49, align 4, !tbaa !46
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i74

bb.az:                                            ; preds = %.lr.ph.i59.i65
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.ahn
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !46 ; 4 uses
  %i.ahr = getelementptr [4 x i8], ptr %i.ac, i64 %i.ahn
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !46 ; 5 uses
  %i.aht = getelementptr [8 x i8], ptr %i.z, i64 %i.ahn
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !76 ; 3 uses
  %i.ahv = fcmp ogt float %i.ahq, %i.ahs
  br i1 %i.ahv, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i74, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i67

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i67:          ; preds = %bb.az
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %i.ahn
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !76
  %i.ahy = fcmp oeq float %i.ahq, %i.ahs
  %i.ahz = icmp sgt i64 %i.ahx, %i.ahu
  %i.aia = and i1 %i.ahy, %i.ahz
  br i1 %i.aia, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i74, label %bb.ba

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i74:   ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i67, %bb.az, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i76
  %i.aib = phi float [ %.pre.i60.i77, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i76 ], [ %i.ahq, %bb.az ], [ %i.ahq, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i67 ] ; 3 uses
  %i.aic = fcmp ogt float %.038.lcssa.i63, %i.aib
  br i1 %i.aic, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i75

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i75:        ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i74
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %i.ahn
  %i.aie = load i64, ptr %i.aid, align 8, !tbaa !76 ; 2 uses
  %i.aif = fcmp oeq float %.038.lcssa.i63, %i.aib
  %i.aig = icmp sgt i64 %.03917.i51, %i.aie
  %i.aih = and i1 %i.aif, %i.aig
  br i1 %i.aih, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %bb.bb

bb.ba:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i67
  %i.aii = fcmp ogt float %.038.lcssa.i63, %i.ahs
  br i1 %i.aii, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i68

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i68:        ; preds = %bb.ba
  %i.aij = fcmp oeq float %.038.lcssa.i63, %i.ahs
  %i.aik = icmp sgt i64 %.03917.i51, %i.ahu
  %i.ail = and i1 %i.aij, %i.aik
  br i1 %i.ail, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %bb.bb

bb.bb:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i68, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i75
  %.sink71.i.i69 = phi float [ %i.aib, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i75 ], [ %i.ahs, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i68 ]
  %.sink.i.i70 = phi i64 [ %i.aie, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i75 ], [ %i.ahu, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i68 ]
  %.1.i.i71 = phi i64 [ %i.ahn, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i75 ], [ %i.ahm, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i68 ] ; 3 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %.056.i.i66
  store float %.sink71.i.i69, ptr %i.aim, align 4, !tbaa !46
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %.056.i.i66
  store i64 %.sink.i.i70, ptr %i.ain, align 8, !tbaa !76
  %i.aio = shl i64 %.1.i.i71, 1                   ; 3 uses
  %i.aip = or disjoint i64 %i.aio, 1
  %i.aiq = icmp ugt i64 %i.aio, %i.rw
  br i1 %i.aiq, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %.lr.ph.i59.i65, !llvm.loop !7

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72: ; preds = %bb.bb, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i68, %bb.ba, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i75, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i74, %bb.ay
  %.0.lcssa.i.i73 = phi i64 [ 1, %bb.ay ], [ %.056.i.i66, %bb.ba ], [ %.056.i.i66, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i74 ], [ %.056.i.i66, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i68 ], [ %.056.i.i66, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i75 ], [ %.1.i.i71, %bb.bb ] ; 2 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %.0.lcssa.i.i73
  store float %.038.lcssa.i63, ptr %i.air, align 4, !tbaa !46
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %.0.lcssa.i.i73
  store i64 %.03917.i51, ptr %i.ais, align 8, !tbaa !76
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, %._crit_edge.i61
  %i.ait = add nuw i64 %.03917.i51, 1             ; 2 uses
  %exitcond32.not.i64 = icmp eq i64 %i.ait, %i.rv
  br i1 %exitcond32.not.i64, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.i50, !llvm.loop !184

bb.bd:                                            ; preds = %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit
  %i.aiu = load ptr, ptr %10, align 8, !tbaa !74
  %i.aiv = load i64, ptr %11, align 8, !tbaa !76  ; 2 uses
  %i.aiw = load i64, ptr %7, align 8, !tbaa !76   ; 4 uses
  %i.aix = load i64, ptr %i.l, align 8, !tbaa !38 ; 2 uses
  %i.aiy = load i64, ptr %i.m, align 8, !tbaa !40
  %.not.i165 = icmp eq i64 %i.aiv, 0
  br i1 %.not.i165, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMaxIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %bb.bd
  %i.aiz = trunc i64 %i.ao to i32
  %i.aja = and i64 %i.ao, 4294967295
  %notmask.i.i = shl nsw i64 -1, %i.aja
  %i.ajb = xor i64 %notmask.i.i, -1
  %.not46.i = icmp eq i64 %i.aix, 0
  %i.ajc = trunc i64 %i.ao to i8
  %i.ajd = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.aje = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 4 uses
  %i.ajf = icmp ult i64 %i.aiw, 2
  %.phi.trans.insert.i27.i = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %i.aiw
  br label %bb.be

bb.be:                                            ; preds = %bb.bn, %.lr.ph44.i
  %.02640.i = phi i64 [ 0, %.lr.ph44.i ], [ %i.and, %bb.bn ] ; 5 uses
  br i1 %.not46.i, label %._crit_edge.i168, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.be
  %i.ajg = load i64, ptr %i.n, align 8, !tbaa !75
  %i.ajh = mul i64 %i.ajg, %.02640.i
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aiu, i64 %i.ajh
  br label %.lr.ph.i166

._crit_edge.i168:                                 ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i, %bb.be
  %.025.lcssa.i = phi float [ 0.000000e+00, %bb.be ], [ %i.alt, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ] ; 6 uses
  %i.ajj = load float, ptr %i.ac, align 4, !tbaa !46
  %i.ajk = fcmp ogt float %i.ajj, %.025.lcssa.i
  br i1 %i.ajk, label %bb.bj, label %bb.bn

.lr.ph.i166:                                      ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i, %.lr.ph.preheader.i
  %.039.i = phi i64 [ %i.alv, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %.02438.i = phi ptr [ %i.alu, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ %i.t, %.lr.ph.preheader.i ] ; 2 uses
  %.02537.i = phi float [ %i.alt, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %.sroa.0.036.i = phi ptr [ %.sroa.0.2.i, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ %i.aji, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.035.i = phi i8 [ %.sroa.7.1.i, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.15.034.i = phi i8 [ %.sroa.15.2.i, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %i.ajl = icmp eq i8 %.sroa.7.035.i, 0
  br i1 %i.ajl, label %bb.bf, label %._crit_edge16.i.i

bb.bf:                                            ; preds = %.lr.ph.i166
  %i.ajm = load i8, ptr %.sroa.0.036.i, align 1, !tbaa !62
  br label %._crit_edge16.i.i

._crit_edge16.i.i:                                ; preds = %bb.bf, %.lr.ph.i166
  %.sroa.15.1.i = phi i8 [ %i.ajm, %bb.bf ], [ %.sroa.15.034.i, %.lr.ph.i166 ] ; 3 uses
  %i.ajn = zext i8 %.sroa.15.1.i to i32
  %i.ajo = zext i8 %.sroa.7.035.i to i32          ; 3 uses
  %i.ajp = lshr i32 %i.ajn, %i.ajo
  %i.ajq = zext nneg i32 %i.ajp to i64            ; 4 uses
  %i.ajr = add i32 %i.ajo, %i.aiz                 ; 4 uses
  %i.ajs = icmp sgt i32 %i.ajr, 7
  br i1 %i.ajs, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %._crit_edge16.i.i
  %i.ajt = sub nsw i32 8, %i.ajo
  %i.aju = sext i32 %i.ajt to i64                 ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 1 ; 3 uses
  %i.ajw = add nsw i32 %i.ajr, -8
  %i.ajx = lshr i32 %i.ajw, 3                     ; 4 uses
  %i.ajy = icmp samesign ugt i32 %i.ajr, 15
  br i1 %i.ajy, label %.lr.ph.i.i182.preheader, label %._crit_edge.i.i

.lr.ph.i.i182.preheader:                          ; preds = %bb.bg
  %i.ajz = add nsw i32 %i.ajx, -1
  %xtraiter521 = and i32 %i.ajx, 3                ; 3 uses
  %i.aka = icmp ult i32 %i.ajz, 3
  br i1 %i.aka, label %.lr.ph.i.i182.epil.preheader, label %.lr.ph.i.i182.preheader.new

.lr.ph.i.i182.preheader.new:                      ; preds = %.lr.ph.i.i182.preheader
  %unroll_iter529 = and i32 %i.ajx, 536870908
  br label %.lr.ph.i.i182

._crit_edge.i.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i.i182
  %lcmp.mod525.not = icmp eq i32 %xtraiter521, 0
  br i1 %lcmp.mod525.not, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i182.epil.preheader

.lr.ph.i.i182.epil.preheader:                     ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i182.preheader
  %.epil.init524 = phi ptr [ %i.ajv, %.lr.ph.i.i182.preheader ], [ %i.alf, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %.0812.i.i.epil.init = phi i64 [ %i.aju, %.lr.ph.i.i182.preheader ], [ %i.alk, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %.0911.i.i.epil.init = phi i64 [ %i.ajq, %.lr.ph.i.i182.preheader ], [ %i.alj, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %lcmp.mod528 = icmp ne i32 %xtraiter521, 0
  call void @llvm.assume(i1 %lcmp.mod528)
  br label %.lr.ph.i.i182.epil

.lr.ph.i.i182.epil:                               ; preds = %.lr.ph.i.i182.epil, %.lr.ph.i.i182.epil.preheader
  %i.akb = phi ptr [ %i.akc, %.lr.ph.i.i182.epil ], [ %.epil.init524, %.lr.ph.i.i182.epil.preheader ] ; 2 uses
  %.0812.i.i.epil = phi i64 [ %i.akh, %.lr.ph.i.i182.epil ], [ %.0812.i.i.epil.init, %.lr.ph.i.i182.epil.preheader ] ; 2 uses
  %.0911.i.i.epil = phi i64 [ %i.akg, %.lr.ph.i.i182.epil ], [ %.0911.i.i.epil.init, %.lr.ph.i.i182.epil.preheader ]
  %epil.iter522 = phi i32 [ %epil.iter522.next, %.lr.ph.i.i182.epil ], [ 0, %.lr.ph.i.i182.epil.preheader ]
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 1
  %i.akd = load i8, ptr %i.akb, align 1, !tbaa !62
  %i.ake = zext i8 %i.akd to i64
  %i.akf = shl i64 %i.ake, %.0812.i.i.epil
  %i.akg = or i64 %i.akf, %.0911.i.i.epil         ; 2 uses
  %i.akh = add nsw i64 %.0812.i.i.epil, 8         ; 2 uses
  %epil.iter522.next = add i32 %epil.iter522, 1   ; 2 uses
  %epil.iter522.cmp.not = icmp eq i32 %epil.iter522.next, %xtraiter521
  br i1 %epil.iter522.cmp.not, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i182.epil, !llvm.loop !185

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i182.epil, %._crit_edge.i.loopexit.i.unr-lcssa
  %.lcssa461 = phi i64 [ %i.alj, %._crit_edge.i.loopexit.i.unr-lcssa ], [ %i.akg, %.lr.ph.i.i182.epil ]
  %.lcssa460 = phi i64 [ %i.alk, %._crit_edge.i.loopexit.i.unr-lcssa ], [ %i.akh, %.lr.ph.i.i182.epil ]
  %i.aki = zext nneg i32 %i.ajx to i64
  %i.akj = getelementptr i8, ptr %.sroa.0.036.i, i64 %i.aki
  %scevgep50.i = getelementptr i8, ptr %i.akj, i64 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %bb.bg
  %.sroa.0.1.i = phi ptr [ %i.ajv, %bb.bg ], [ %scevgep50.i, %._crit_edge.i.loopexit.i ] ; 3 uses
  %.09.lcssa.i.i = phi i64 [ %i.ajq, %bb.bg ], [ %.lcssa461, %._crit_edge.i.loopexit.i ] ; 2 uses
  %.08.lcssa.i.i = phi i64 [ %i.aju, %bb.bg ], [ %.lcssa460, %._crit_edge.i.loopexit.i ]
  %i.akk = add i8 %.sroa.7.035.i, %i.ajc
  %i.akl = and i8 %i.akk, 7                       ; 2 uses
  %.not.i.i181 = icmp eq i8 %i.akl, 0
  br i1 %.not.i.i181, label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i, label %bb.bh

.lr.ph.i.i182:                                    ; preds = %.lr.ph.i.i182, %.lr.ph.i.i182.preheader.new
  %i.akm = phi ptr [ %i.ajv, %.lr.ph.i.i182.preheader.new ], [ %i.alf, %.lr.ph.i.i182 ] ; 5 uses
  %.0812.i.i = phi i64 [ %i.aju, %.lr.ph.i.i182.preheader.new ], [ %i.alk, %.lr.ph.i.i182 ] ; 5 uses
  %.0911.i.i = phi i64 [ %i.ajq, %.lr.ph.i.i182.preheader.new ], [ %i.alj, %.lr.ph.i.i182 ]
  %niter530 = phi i32 [ 0, %.lr.ph.i.i182.preheader.new ], [ %niter530.next.3, %.lr.ph.i.i182 ]
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 1
  %i.ako = load i8, ptr %i.akm, align 1, !tbaa !62
  %i.akp = zext i8 %i.ako to i64
  %i.akq = shl i64 %i.akp, %.0812.i.i
  %i.akr = or i64 %i.akq, %.0911.i.i
  %i.aks = add nsw i64 %.0812.i.i, 8
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akm, i64 2
  %i.aku = load i8, ptr %i.akn, align 1, !tbaa !62
  %i.akv = zext i8 %i.aku to i64
  %i.akw = shl i64 %i.akv, %i.aks
  %i.akx = or i64 %i.akw, %i.akr
  %i.aky = add nsw i64 %.0812.i.i, 16
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akm, i64 3
  %i.ala = load i8, ptr %i.akt, align 1, !tbaa !62
  %i.alb = zext i8 %i.ala to i64
  %i.alc = shl i64 %i.alb, %i.aky
  %i.ald = or i64 %i.alc, %i.akx
  %i.ale = add nsw i64 %.0812.i.i, 24
  %i.alf = getelementptr inbounds nuw i8, ptr %i.akm, i64 4 ; 2 uses
  %i.alg = load i8, ptr %i.akz, align 1, !tbaa !62
  %i.alh = zext i8 %i.alg to i64
  %i.ali = shl i64 %i.alh, %i.ale
  %i.alj = or i64 %i.ali, %i.ald                  ; 3 uses
  %i.alk = add nsw i64 %.0812.i.i, 32             ; 3 uses
  %niter530.next.3 = add i32 %niter530, 4         ; 2 uses
  %niter530.ncmp.3 = icmp eq i32 %niter530.next.3, %unroll_iter529
  br i1 %niter530.ncmp.3, label %._crit_edge.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i182, !llvm.loop !1

bb.bh:                                            ; preds = %._crit_edge.i.i
  %i.all = load i8, ptr %.sroa.0.1.i, align 1, !tbaa !62 ; 2 uses
  %i.alm = zext i8 %i.all to i64
  %i.aln = shl i64 %i.alm, %.08.lcssa.i.i
  %i.alo = or i64 %i.aln, %.09.lcssa.i.i
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i

bb.bi:                                            ; preds = %._crit_edge16.i.i
  %i.alp = trunc i32 %i.ajr to i8
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i

_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i:      ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i
  %.sroa.15.2.i = phi i8 [ %.sroa.15.1.i, %._crit_edge.i.i ], [ %i.all, %bb.bh ], [ %.sroa.15.1.i, %bb.bi ]
  %.sroa.7.1.i = phi i8 [ 0, %._crit_edge.i.i ], [ %i.akl, %bb.bh ], [ %i.alp, %bb.bi ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.1.i, %._crit_edge.i.i ], [ %.sroa.0.1.i, %bb.bh ], [ %.sroa.0.036.i, %bb.bi ]
  %.2.i.i = phi i64 [ %.09.lcssa.i.i, %._crit_edge.i.i ], [ %i.alo, %bb.bh ], [ %i.ajq, %bb.bi ]
  %i.alq = and i64 %.2.i.i, %i.ajb
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %.02438.i, i64 %i.alq
  %i.als = load float, ptr %i.alr, align 4, !tbaa !46
  %i.alt = fadd float %.02537.i, %i.als           ; 2 uses
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %.02438.i, i64 %i.aiy
  %i.alv = add nuw i64 %.039.i, 1                 ; 2 uses
  %exitcond.not.i167 = icmp eq i64 %i.alv, %i.aix
  br i1 %exitcond.not.i167, label %._crit_edge.i168, label %.lr.ph.i166, !llvm.loop !186

bb.bj:                                            ; preds = %._crit_edge.i168
  br i1 %i.ajf, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i176, label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %bb.bj, %bb.bm
  %i.alw = phi i64 [ %i.amz, %bb.bm ], [ 3, %bb.bj ]
  %i.alx = phi i64 [ %i.amy, %bb.bm ], [ 2, %bb.bj ] ; 7 uses
  %.056.i.i170 = phi i64 [ %.1.i.i175, %bb.bm ], [ 1, %bb.bj ] ; 6 uses
  %i.aly = icmp eq i64 %i.alx, %i.aiw
end_hunk_2
begin_hunk_3_@_ZNK5faiss16ProductQuantizer9search_ipEPKfmPKhmPNS_9HeapArrayINS_4CMinIflEEEEb:bb.a
  invoke void @_ZNK5faiss16ProductQuantizer25compute_inner_prod_tablesEmPKfPf(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %2, ptr noundef %1, ptr noundef nonnull %i.am)
          to label %bb.k unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit23

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ap = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !76
  store ptr %i.am, ptr %i.b, align 8, !tbaa !73
  store ptr %3, ptr %i.c, align 8, !tbaa !74
  store i64 %4, ptr %i.d, align 8, !tbaa !76
  store ptr %5, ptr %i.e, align 8, !tbaa !96
  %i.aq = zext i1 %6 to i8
  store i8 %i.aq, ptr %i.f, align 1, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !195
  store i64 %i.as, ptr %i.g, align 8, !tbaa !76
  %i.at = load i64, ptr %5, align 8, !tbaa !194   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i64 %i.at, ptr %i.h, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !40
  store i64 %i.au, ptr %i.i, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !38
  store i64 %i.av, ptr %i.j, align 8, !tbaa !76
  %i.aw = icmp ugt i64 %i.at, 1
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN5faiss12_GLOBAL__N_125pq_knn_search_with_tablesINS_4CMinIflEEEEvRKNS_16ProductQuantizerEmPKfPKhmPNS_9HeapArrayIT_EEb.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.b, ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(224) %0)
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.ap)
  store i32 %i.ap, ptr %i.k, align 4, !tbaa !63
  call void @_ZN5faiss12_GLOBAL__N_125pq_knn_search_with_tablesINS_4CMinIflEEEEvRKNS_16ProductQuantizerEmPKfPKhmPNS_9HeapArrayIT_EEb.omp_outlined(ptr nonnull %i.k, ptr nonnull poison, ptr %i.h, ptr %i.b, ptr %i.i, ptr %i.j, ptr %i.e, ptr %i.g, ptr %i.f, ptr %i.a, ptr %i.c, ptr %i.d, ptr nonnull align 8 dereferenceable(224) %0) #21
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.ap)
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_ZdaPv(ptr noundef nonnull %i.am) #29
  ret void

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit23: ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.am) #29
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %i.ax, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit23 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn19

bb.o:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_125pq_knn_search_with_tablesINS_4CMinIflEEEEvRKNS_16ProductQuantizerEmPKfPKhmPNS_9HeapArrayIT_EEb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %12) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bt

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.g, ptr %i.b, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 1, ptr %i.c, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !63
  %i.h = load i32, ptr %0, align 4, !tbaa !63     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !76
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !76
  %i.k = load i64, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not224 = icmp sgt i64 %i.k, %i.j
  br i1 %.not224, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5faiss12heap_reorderINS_4CMinIflEEEEmmPNT_1TEPNS3_2TIE.exit
  %.0225 = phi i64 [ %i.k, %.lr.ph ], [ %i.aqb, %_ZN5faiss12heap_reorderINS_4CMinIflEEEEmmPNT_1TEPNS3_2TIE.exit ] ; 4 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !73
  %i.p = load i64, ptr %4, align 8, !tbaa !76
  %i.q = mul i64 %i.p, %.0225
  %i.r = load i64, ptr %5, align 8, !tbaa !76
  %i.s = mul i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.s ; 20 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !96     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !230
  %i.x = load i64, ptr %7, align 8, !tbaa !76     ; 6 uses
  %i.y = mul i64 %i.x, %.0225                     ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.y ; 37 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !231
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y ; 54 uses
  %i.ad = load i8, ptr %8, align 1, !tbaa !90, !range !53, !noundef !54
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = icmp ne i64 %i.x, 0
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %.lr.ph46.i.preheader, label %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit

.lr.ph46.i.preheader:                             ; preds = %bb.c
  %min.iters.check426 = icmp ult i64 %i.x, 4
  br i1 %min.iters.check426, label %.lr.ph46.i.preheader450, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph46.i.preheader
  %n.vec428 = and i64 %i.x, -4                    ; 3 uses
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next431, %vector.body429 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index430 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.ag, align 4, !tbaa !46
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.ah, align 4, !tbaa !46
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index430 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ai, align 8, !tbaa !76
  store <2 x i64> splat (i64 -1), ptr %i.aj, align 8, !tbaa !76
  %index.next431 = add nuw i64 %index430, 4       ; 2 uses
  %i.ak = icmp eq i64 %index.next431, %n.vec428
  br i1 %i.ak, label %middle.block432, label %vector.body429, !llvm.loop !196

middle.block432:                                  ; preds = %vector.body429
  %cmp.n433 = icmp eq i64 %i.x, %n.vec428
  br i1 %cmp.n433, label %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i.preheader450

.lr.ph46.i.preheader450:                          ; preds = %.lr.ph46.i.preheader, %middle.block432
  %.045.i.ph = phi i64 [ 0, %.lr.ph46.i.preheader ], [ %n.vec428, %middle.block432 ]
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader450, %.lr.ph46.i
  %.045.i = phi i64 [ %i.an, %.lr.ph46.i ], [ %.045.i.ph, %.lr.ph46.i.preheader450 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.045.i
  store float f0xFF7FFFFF, ptr %i.al, align 4, !tbaa !46
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.045.i
  store i64 -1, ptr %i.am, align 8, !tbaa !76
  %i.an = add nuw i64 %.045.i, 1                  ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.an, %i.x
  br i1 %exitcond51.not.i, label %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i, !llvm.loop !197

_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit: ; preds = %.lr.ph46.i, %middle.block432, %bb.c
  %i.ao = load i64, ptr %9, align 8, !tbaa !76    ; 4 uses
  switch i64 %i.ao, label %bb.bd [
    i64 8, label %bb.d
    i64 16, label %bb.ae
  ]

bb.d:                                             ; preds = %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit
  %i.ap = load i64, ptr %4, align 8, !tbaa !76
  %i.aq = icmp eq i64 %i.ap, 256
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = load i64, ptr %5, align 8, !tbaa !76
  %i.as = load ptr, ptr %10, align 8, !tbaa !74
  %i.at = load i64, ptr %11, align 8, !tbaa !76
  %i.au = load i64, ptr %7, align 8, !tbaa !76
  invoke void @_ZN5faiss16pq_code_distance12pq_scan_8bitEmPKfPKhmmPfPlb(i64 noundef %i.ar, ptr noundef %i.t, ptr noundef %i.as, i64 noundef %i.at, i64 noundef %i.au, ptr noundef %i.ac, ptr noundef %i.z, i1 noundef zeroext false)
          to label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit unwind label %bb.bu

bb.f:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %10, align 8, !tbaa !74   ; 5 uses
  %i.aw = load i64, ptr %11, align 8, !tbaa !76   ; 13 uses
  %i.ax = load i64, ptr %7, align 8, !tbaa !76    ; 14 uses
  %.val = load i64, ptr %i.l, align 8, !tbaa !38  ; 8 uses
  %.val42 = load i64, ptr %i.m, align 8           ; 30 uses
  %i.ay = icmp eq i64 %.val, 4
  br i1 %i.ay, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.val42 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.val42 ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.val42 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 4 uses
  %i.be = icmp ult i64 %i.ax, 2
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ax
  br i1 %i.be, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.pre.i.i = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !232
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.split.us.i.i
  %i.bf = phi float [ %.pre.i.i, %.lr.ph.split.us.i.i ], [ %i.ce, %bb.i ] ; 2 uses
  %.029.us.i.i = phi i64 [ 0, %.lr.ph.split.us.i.i ], [ %i.cf, %bb.i ] ; 2 uses
  %.02728.us.i.i = phi ptr [ %i.av, %.lr.ph.split.us.i.i ], [ %i.bx, %bb.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02728.us.i.i, i64 1
  %i.bh = load i8, ptr %.02728.us.i.i, align 1, !tbaa !62, !noalias !232
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !46, !alias.scope !232
  %i.bl = getelementptr inbounds nuw i8, ptr %.02728.us.i.i, i64 2
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !62, !noalias !232
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !46, !alias.scope !232
  %i.bq = fadd float %i.bk, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.02728.us.i.i, i64 3
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !62, !noalias !232
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !46, !alias.scope !232
  %i.bw = fadd float %i.bq, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.02728.us.i.i, i64 4
  %i.by = load i8, ptr %i.br, align 1, !tbaa !62, !noalias !232
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !46, !alias.scope !232
  %i.cc = fadd float %i.bw, %i.cb                 ; 3 uses
  %i.cd = fcmp olt float %i.bf, %i.cc
  br i1 %i.cd, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i, label %bb.i

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i: ; preds = %bb.h
  store float %i.cc, ptr %i.ac, align 4, !tbaa !46, !noalias !232
  store i64 %.029.us.i.i, ptr %i.z, align 8, !tbaa !76, !noalias !232
  br label %bb.i

bb.i:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i, %bb.h
  %i.ce = phi float [ %i.cc, %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i ], [ %i.bf, %bb.h ]
  %i.cf = add nuw i64 %.029.us.i.i, 1             ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.cf, %i.aw
  br i1 %exitcond33.not.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %bb.h, !llvm.loop !200

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.m
  %.029.i.i = phi i64 [ %i.em, %bb.m ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.02728.i.i = phi ptr [ %i.cx, %bb.m ], [ %i.av, %.lr.ph.i.i ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02728.i.i, i64 1
  %i.ch = load i8, ptr %.02728.i.i, align 1, !tbaa !62, !noalias !232
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !46, !alias.scope !232
  %i.cl = getelementptr inbounds nuw i8, ptr %.02728.i.i, i64 2
  %i.cm = load i8, ptr %i.cg, align 1, !tbaa !62, !noalias !232
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !46, !alias.scope !232
  %i.cq = fadd float %i.ck, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.02728.i.i, i64 3
  %i.cs = load i8, ptr %i.cl, align 1, !tbaa !62, !noalias !232
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !46, !alias.scope !232
  %i.cw = fadd float %i.cq, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.02728.i.i, i64 4
  %i.cy = load i8, ptr %i.cr, align 1, !tbaa !62, !noalias !232
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !46, !alias.scope !232
  %i.dc = fadd float %i.cw, %i.db                 ; 6 uses
  %i.dd = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !232
  %i.de = fcmp olt float %i.dd, %i.dc
  br i1 %i.de, label %.lr.ph.i.i.i, label %bb.m

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.i.i, %bb.l
  %i.df = phi i64 [ %i.ei, %bb.l ], [ 3, %.lr.ph.split.i.i ]
  %i.dg = phi i64 [ %i.eh, %bb.l ], [ 2, %.lr.ph.split.i.i ] ; 7 uses
  %.056.i.i.i = phi i64 [ %.1.i.i.i, %bb.l ], [ 1, %.lr.ph.split.i.i ] ; 6 uses
  %i.dh = icmp eq i64 %i.dg, %i.ax
  br i1 %i.dh, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i, label %bb.j

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load float, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !46, !noalias !232
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.dg
  %i.dj = load float, ptr %i.di, align 4, !tbaa !46, !noalias !232 ; 4 uses
  %i.dk = getelementptr [4 x i8], ptr %i.ac, i64 %i.dg
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !46, !noalias !232 ; 5 uses
  %i.dm = getelementptr [8 x i8], ptr %i.z, i64 %i.dg
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !76, !noalias !232 ; 3 uses
  %i.do = fcmp olt float %i.dj, %i.dl
  br i1 %i.do, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i:          ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.dg
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !76, !noalias !232
  %i.dr = fcmp oeq float %i.dj, %i.dl
  %i.ds = icmp slt i64 %i.dq, %i.dn
  %i.dt = and i1 %i.dr, %i.ds
  br i1 %i.dt, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i, label %bb.k

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i:   ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i, %bb.j, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i
  %i.du = phi float [ %.pre.i.i.i, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i ], [ %i.dj, %bb.j ], [ %i.dj, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i ] ; 3 uses
  %i.dv = fcmp olt float %i.dc, %i.du
  br i1 %i.dv, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i:        ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.dg
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !76, !noalias !232 ; 2 uses
  %i.dy = fcmp oeq float %i.dc, %i.du
  %i.dz = icmp slt i64 %.029.i.i, %i.dx
  %i.ea = and i1 %i.dy, %i.dz
  br i1 %i.ea, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, label %bb.l

bb.k:                                             ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i
  %i.eb = fcmp olt float %i.dc, %i.dl
  br i1 %i.eb, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i:        ; preds = %bb.k
  %i.ec = fcmp oeq float %i.dc, %i.dl
  %i.ed = icmp slt i64 %.029.i.i, %i.dn
  %i.ee = and i1 %i.ec, %i.ed
  br i1 %i.ee, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i
  %.sink71.i.i.i = phi float [ %i.du, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i ], [ %i.dl, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.dx, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i ], [ %i.dn, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i ]
  %.1.i.i.i = phi i64 [ %i.dg, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i ], [ %i.df, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.056.i.i.i
  store float %.sink71.i.i.i, ptr %i.ef, align 4, !tbaa !46, !noalias !232
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.056.i.i.i
  store i64 %.sink.i.i.i, ptr %i.eg, align 8, !tbaa !76, !noalias !232
  %i.eh = shl i64 %.1.i.i.i, 1                    ; 3 uses
  %i.ei = or disjoint i64 %i.eh, 1
  %i.ej = icmp ugt i64 %i.eh, %i.ax
  br i1 %i.ej, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !201

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i: ; preds = %bb.l, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i, %bb.k, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i
  %.0.lcssa.i.ph.i.i = phi i64 [ %.1.i.i.i, %bb.l ], [ %.056.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i ], [ %.056.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i ], [ %.056.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i ], [ %.056.i.i.i, %bb.k ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.0.lcssa.i.ph.i.i
  store float %i.dc, ptr %i.ek, align 4, !tbaa !46, !noalias !232
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.0.lcssa.i.ph.i.i
  store i64 %.029.i.i, ptr %i.el, align 8, !tbaa !76, !noalias !232
  br label %bb.m

bb.m:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i, %.lr.ph.split.i.i
  %i.em = add nuw i64 %.029.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.em, %i.aw
  br i1 %exitcond.not.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.lr.ph.split.i.i, !llvm.loop !200

bb.n:                                             ; preds = %bb.f
  %i.en = and i64 %.val, 3
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.o, label %.preheader6.i

.preheader6.i:                                    ; preds = %bb.n
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader6.i
  %.not20.i = icmp eq i64 %.val, 0
  %i.ep = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.eq = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 4 uses
  %i.er = icmp ult i64 %i.ax, 2
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ax
  %xtraiter488 = and i64 %.val, 3                 ; 3 uses
  %i.es = icmp ult i64 %.val, 4
  %unroll_iter493 = and i64 %.val, -4
  %lcmp.mod490.not = icmp eq i64 %xtraiter488, 0
  %lcmp.mod492 = icmp ne i64 %xtraiter488, 0
  br label %.preheader.i

bb.o:                                             ; preds = %bb.n
  %i.et = trunc i64 %.val to i32                  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %.not.i42.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i42.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.o
  %i.eu = icmp sgt i32 %i.et, 0                   ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 7 uses
  %i.ew = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 8 uses
  %i.ex = icmp ult i64 %i.ax, 2
  %.phi.trans.insert.i.i43.i = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ax ; 2 uses
  br i1 %i.ex, label %.preheader.lr.ph.split.us.i.i, label %.preheader.lr.ph.split.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %.preheader.lr.ph.i.i
  br i1 %i.eu, label %.preheader.us.us.i.i.preheader, label %.preheader.lr.ph.split.us.split.i.i

.preheader.us.us.i.i.preheader:                   ; preds = %.preheader.lr.ph.split.us.i.i
  %i.ey = add nsw i32 %i.et, -4                   ; 3 uses
  %i.ez = lshr exact i32 %i.ey, 2
  %i.fa = add nuw nsw i32 %i.ez, 1                ; 2 uses
  %i.fb = icmp eq i32 %i.ey, 0
  %unroll_iter519 = and i32 %i.fa, 2147483646
  %i.fc = and i32 %i.ey, 4
  %lcmp.mod515.not.not = icmp eq i32 %i.fc, 0
  %lcmp.mod518 = trunc i32 %i.fa to i1
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %.preheader.us.us.i.i.preheader, %bb.p
  %.046.us.us.i.i = phi ptr [ %.lcssa459, %bb.p ], [ %i.av, %.preheader.us.us.i.i.preheader ] ; 2 uses
  %.03743.us.us.i.i = phi i64 [ %i.ik, %bb.p ], [ 0, %.preheader.us.us.i.i.preheader ] ; 2 uses
  br i1 %i.fb, label %.epil.preheader512, label %.preheader.us.us.i.i.new

.preheader.us.us.i.i.new:                         ; preds = %.preheader.us.us.i.i, %.preheader.us.us.i.i.new
  %.141.us.us.i.i = phi ptr [ %i.gz, %.preheader.us.us.i.i.new ], [ %.046.us.us.i.i, %.preheader.us.us.i.i ] ; 9 uses
  %.03539.us.us.i.i = phi ptr [ %i.hf, %.preheader.us.us.i.i.new ], [ %i.t, %.preheader.us.us.i.i ] ; 2 uses
  %.03638.us.us.i.i = phi float [ %i.hg, %.preheader.us.us.i.i.new ], [ 0.000000e+00, %.preheader.us.us.i.i ]
  %niter520 = phi i32 [ %niter520.next.1, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 1
  %i.fe = load i8, ptr %.141.us.us.i.i, align 1, !tbaa !62, !noalias !233
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !46, !alias.scope !233
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i, i64 %.val42 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 2
  %i.fk = load i8, ptr %i.fd, align 1, !tbaa !62, !noalias !233
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !46, !alias.scope !233
  %i.fo = fadd float %i.fh, %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.val42 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 3
  %i.fr = load i8, ptr %i.fj, align 1, !tbaa !62, !noalias !233
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !46, !alias.scope !233
  %i.fv = fadd float %i.fo, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.val42 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 4
  %i.fy = load i8, ptr %i.fq, align 1, !tbaa !62, !noalias !233
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !46, !alias.scope !233
  %i.gc = fadd float %i.fv, %i.gb
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.val42 ; 2 uses
  %i.ge = fadd float %.03638.us.us.i.i, %i.gc
  %i.gf = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 5
  %i.gg = load i8, ptr %i.fx, align 1, !tbaa !62, !noalias !233
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gh
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !46, !alias.scope !233
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.val42 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 6
  %i.gm = load i8, ptr %i.gf, align 1, !tbaa !62, !noalias !233
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !46, !alias.scope !233
  %i.gq = fadd float %i.gj, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.val42 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 7
  %i.gt = load i8, ptr %i.gl, align 1, !tbaa !62, !noalias !233
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gu
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !46, !alias.scope !233
  %i.gx = fadd float %i.gq, %i.gw
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.val42 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i, i64 8 ; 3 uses
  %i.ha = load i8, ptr %i.gs, align 1, !tbaa !62, !noalias !233
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !46, !alias.scope !233
  %i.he = fadd float %i.gx, %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.val42 ; 2 uses
  %i.hg = fadd float %i.ge, %i.he                 ; 3 uses
  %niter520.next.1 = add i32 %niter520, 2         ; 2 uses
  %niter520.ncmp.1.not = icmp eq i32 %niter520.next.1, %unroll_iter519
  br i1 %niter520.ncmp.1.not, label %._crit_edge.us.us.i.i.unr-lcssa, label %.preheader.us.us.i.i.new, !llvm.loop !204

._crit_edge.us.us.i.i.unr-lcssa:                  ; preds = %.preheader.us.us.i.i.new
  br i1 %lcmp.mod515.not.not, label %.epil.preheader512, label %._crit_edge.us.us.i.i

.epil.preheader512:                               ; preds = %._crit_edge.us.us.i.i.unr-lcssa, %.preheader.us.us.i.i
  %.141.us.us.i.i.epil.init = phi ptr [ %.046.us.us.i.i, %.preheader.us.us.i.i ], [ %i.gz, %._crit_edge.us.us.i.i.unr-lcssa ] ; 5 uses
  %.03539.us.us.i.i.epil.init = phi ptr [ %i.t, %.preheader.us.us.i.i ], [ %i.hf, %._crit_edge.us.us.i.i.unr-lcssa ] ; 2 uses
  %.03638.us.us.i.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.us.i.i ], [ %i.hg, %._crit_edge.us.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod518)
  %i.hh = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i.epil.init, i64 1
  %i.hi = load i8, ptr %.141.us.us.i.i.epil.init, align 1, !tbaa !62, !noalias !233
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i.epil.init, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !46, !alias.scope !233
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i.epil.init, i64 %.val42 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i.epil.init, i64 2
  %i.ho = load i8, ptr %i.hh, align 1, !tbaa !62, !noalias !233
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hp
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !46, !alias.scope !233
  %i.hs = fadd float %i.hl, %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.val42 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i.epil.init, i64 3
  %i.hv = load i8, ptr %i.hn, align 1, !tbaa !62, !noalias !233
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !46, !alias.scope !233
  %i.hz = fadd float %i.hs, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.val42
  %i.ib = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i.epil.init, i64 4
  %i.ic = load i8, ptr %i.hu, align 1, !tbaa !62, !noalias !233
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !46, !alias.scope !233
  %i.ig = fadd float %i.hz, %i.if
  %i.ih = fadd float %.03638.us.us.i.i.epil.init, %i.ig
  br label %._crit_edge.us.us.i.i

._crit_edge.us.us.i.i:                            ; preds = %._crit_edge.us.us.i.i.unr-lcssa, %.epil.preheader512
  %.lcssa459 = phi ptr [ %i.gz, %._crit_edge.us.us.i.i.unr-lcssa ], [ %i.ib, %.epil.preheader512 ]
  %.lcssa458 = phi float [ %i.hg, %._crit_edge.us.us.i.i.unr-lcssa ], [ %i.ih, %.epil.preheader512 ] ; 2 uses
  %i.ii = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !233
  %i.ij = fcmp olt float %i.ii, %.lcssa458
  br i1 %i.ij, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i, label %bb.p

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i: ; preds = %._crit_edge.us.us.i.i
  store float %.lcssa458, ptr %i.ac, align 4, !tbaa !46, !noalias !233
  store i64 %.03743.us.us.i.i, ptr %i.z, align 8, !tbaa !76, !noalias !233
  br label %bb.p

bb.p:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i, %._crit_edge.us.us.i.i
  %i.ik = add nuw i64 %.03743.us.us.i.i, 1        ; 2 uses
  %exitcond75.not.i.i = icmp eq i64 %i.ik, %i.aw
  br i1 %exitcond75.not.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.us.us.i.i, !llvm.loop !205

.preheader.lr.ph.split.us.split.i.i:              ; preds = %.preheader.lr.ph.split.us.i.i
  %i.il = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !233 ; 3 uses
  %i.im = fcmp olt float %i.il, 0.000000e+00
  br i1 %i.im, label %.preheader.us.i.i.preheader, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit

.preheader.us.i.i.preheader:                      ; preds = %.preheader.lr.ph.split.us.split.i.i
  %xtraiter504 = and i64 %i.aw, 1
  %i.in = icmp eq i64 %i.aw, 1
  br i1 %i.in, label %.preheader.us.i.i.epil.preheader, label %.preheader.us.i.i.preheader.new

.preheader.us.i.i.preheader.new:                  ; preds = %.preheader.us.i.i.preheader
  %unroll_iter510 = and i64 %i.aw, -2
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %bb.q, %.preheader.us.i.i.preheader.new
  %i.io = phi float [ %i.il, %.preheader.us.i.i.preheader.new ], [ %i.it, %bb.q ] ; 2 uses
  %.03743.us.i.i = phi i64 [ 0, %.preheader.us.i.i.preheader.new ], [ %i.iu, %bb.q ] ; 3 uses
  %niter511 = phi i64 [ 0, %.preheader.us.i.i.preheader.new ], [ %niter511.next.1, %bb.q ]
  %i.ip = fcmp olt float %i.io, 0.000000e+00
  br i1 %i.ip, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i, label %.preheader.us.i.i.1

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i: ; preds = %.preheader.us.i.i
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !46, !noalias !233
  store i64 %.03743.us.i.i, ptr %i.z, align 8, !tbaa !76, !noalias !233
  br label %.preheader.us.i.i.1

.preheader.us.i.i.1:                              ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i, %.preheader.us.i.i
  %i.iq = phi float [ 0.000000e+00, %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i ], [ %i.io, %.preheader.us.i.i ] ; 2 uses
  %i.ir = fcmp olt float %i.iq, 0.000000e+00
  br i1 %i.ir, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i.1, label %bb.q

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i.1: ; preds = %.preheader.us.i.i.1
  %i.is = or disjoint i64 %.03743.us.i.i, 1
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !46, !noalias !233
  store i64 %i.is, ptr %i.z, align 8, !tbaa !76, !noalias !233
  br label %bb.q

bb.q:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i.1, %.preheader.us.i.i.1
  %i.it = phi float [ 0.000000e+00, %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i.1 ], [ %i.iq, %.preheader.us.i.i.1 ] ; 2 uses
  %i.iu = add nuw i64 %.03743.us.i.i, 2           ; 2 uses
  %niter511.next.1 = add nuw i64 %niter511, 2     ; 2 uses
  %niter511.ncmp.1 = icmp eq i64 %niter511.next.1, %unroll_iter510
  br i1 %niter511.ncmp.1, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit.loopexit439.unr-lcssa, label %.preheader.us.i.i, !llvm.loop !206

end_hunk_3
begin_hunk_4_@_ZN5faiss12_GLOBAL__N_125pq_knn_search_with_tablesINS_4CMinIflEEEEvRKNS_16ProductQuantizerEmPKfPKhmPNS_9HeapArrayIT_EEb.omp_outlined:bb.a
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.lm
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !46, !alias.scope !233
  %i.lp = fadd float %i.li, %i.lo
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %.val42 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.141.us52.i.i.epil.init, i64 3
  %i.ls = load i8, ptr %i.lk, align 1, !tbaa !62, !noalias !233
  %i.lt = zext i8 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lt
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !46, !alias.scope !233
  %i.lw = fadd float %i.lp, %i.lv
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %.val42
  %i.ly = getelementptr inbounds nuw i8, ptr %.141.us52.i.i.epil.init, i64 4
  %i.lz = load i8, ptr %i.lr, align 1, !tbaa !62, !noalias !233
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.ma
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !46, !alias.scope !233
  %i.md = fadd float %i.lw, %i.mc
  %i.me = fadd float %.03638.us55.i.i.epil.init, %i.md
  br label %._crit_edge.us56.i.i

._crit_edge.us56.i.i:                             ; preds = %._crit_edge.us56.i.i.unr-lcssa, %.epil.preheader495
  %.lcssa457 = phi ptr [ %i.kw, %._crit_edge.us56.i.i.unr-lcssa ], [ %i.ly, %.epil.preheader495 ]
  %.lcssa456 = phi float [ %i.ld, %._crit_edge.us56.i.i.unr-lcssa ], [ %i.me, %.epil.preheader495 ] ; 6 uses
  %i.mf = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !233
  %i.mg = fcmp olt float %i.mf, %.lcssa456
  br i1 %i.mg, label %.lr.ph.i.us.i.i, label %bb.u

.lr.ph.i.us.i.i:                                  ; preds = %._crit_edge.us56.i.i, %bb.t
  %i.mh = phi i64 [ %i.nk, %bb.t ], [ 3, %._crit_edge.us56.i.i ]
  %i.mi = phi i64 [ %i.nj, %bb.t ], [ 2, %._crit_edge.us56.i.i ] ; 7 uses
  %.056.i.us.i.i = phi i64 [ %.1.i.us.i.i, %bb.t ], [ 1, %._crit_edge.us56.i.i ] ; 6 uses
  %i.mj = icmp eq i64 %i.mi, %i.ax
  br i1 %i.mj, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.us.i.i
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.mi
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !46, !noalias !233 ; 4 uses
  %i.mm = getelementptr [4 x i8], ptr %i.ac, i64 %i.mi
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !46, !noalias !233 ; 5 uses
  %i.mo = getelementptr [8 x i8], ptr %i.z, i64 %i.mi
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !76, !noalias !233 ; 3 uses
  %i.mq = fcmp olt float %i.ml, %i.mn
  br i1 %i.mq, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.us.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.us.i.i:       ; preds = %bb.r
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.mi
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !76, !noalias !233
  %i.mt = fcmp oeq float %i.ml, %i.mn
  %i.mu = icmp slt i64 %i.ms, %i.mp
  %i.mv = and i1 %i.mt, %i.mu
  br i1 %i.mv, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.us.i.i
  %i.mw = fcmp olt float %.lcssa456, %i.mn
  br i1 %i.mw, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i:     ; preds = %bb.s
  %i.mx = fcmp oeq float %.lcssa456, %i.mn
  %i.my = icmp slt i64 %.03743.us50.i.i, %i.mp
  %i.mz = and i1 %i.mx, %i.my
  br i1 %i.mz, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, label %bb.t

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i: ; preds = %.lr.ph.i.us.i.i
  %.pre.i.us.i.i = load float, ptr %.phi.trans.insert.i.i43.i, align 4, !tbaa !46, !noalias !233
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i: ; preds = %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.us.i.i, %bb.r
  %i.na = phi float [ %.pre.i.us.i.i, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i ], [ %i.ml, %bb.r ], [ %i.ml, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.us.i.i ] ; 3 uses
  %i.nb = fcmp olt float %.lcssa456, %i.na
  br i1 %i.nb, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i:     ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.mi
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !76, !noalias !233 ; 2 uses
  %i.ne = fcmp oeq float %.lcssa456, %i.na
  %i.nf = icmp slt i64 %.03743.us50.i.i, %i.nd
  %i.ng = and i1 %i.ne, %i.nf
  br i1 %i.ng, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i
  %.sink71.i.us.i.i = phi float [ %i.na, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i ], [ %i.mn, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i ]
  %.sink.i.us.i.i = phi i64 [ %i.nd, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i ], [ %i.mp, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i ]
  %.1.i.us.i.i = phi i64 [ %i.mi, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i ], [ %i.mh, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.056.i.us.i.i
  store float %.sink71.i.us.i.i, ptr %i.nh, align 4, !tbaa !46, !noalias !233
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.056.i.us.i.i
  store i64 %.sink.i.us.i.i, ptr %i.ni, align 8, !tbaa !76, !noalias !233
  %i.nj = shl i64 %.1.i.us.i.i, 1                 ; 3 uses
  %i.nk = or disjoint i64 %i.nj, 1
  %i.nl = icmp ugt i64 %i.nj, %i.ax
  br i1 %i.nl, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, label %.lr.ph.i.us.i.i, !llvm.loop !201

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i: ; preds = %bb.t, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i, %bb.s
  %.0.lcssa.i.ph.us.i.i = phi i64 [ %.1.i.us.i.i, %bb.t ], [ %.056.i.us.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i ], [ %.056.i.us.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i ], [ %.056.i.us.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i ], [ %.056.i.us.i.i, %bb.s ] ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.0.lcssa.i.ph.us.i.i
  store float %.lcssa456, ptr %i.nm, align 4, !tbaa !46, !noalias !233
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.0.lcssa.i.ph.us.i.i
  store i64 %.03743.us50.i.i, ptr %i.nn, align 8, !tbaa !76, !noalias !233
  br label %bb.u

bb.u:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i, %._crit_edge.us56.i.i
  %i.no = add nuw i64 %.03743.us50.i.i, 1         ; 2 uses
  %exitcond73.not.i.i = icmp eq i64 %i.no, %i.aw
  br i1 %exitcond73.not.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.us48.i.i, !llvm.loop !205

.preheader.lr.ph.split.split.i.i:                 ; preds = %.preheader.lr.ph.split.i.i
  %i.np = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !233 ; 2 uses
  %i.nq = fcmp olt float %i.np, 0.000000e+00
  br i1 %i.nq, label %.preheader.i.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit

.preheaderthread-pre-split.i.i:                   ; preds = %bb.y
  %.pr.i.i = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !233
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.lr.ph.split.split.i.i, %.preheaderthread-pre-split.i.i
  %i.nr = phi float [ %.pr.i.i, %.preheaderthread-pre-split.i.i ], [ %i.np, %.preheader.lr.ph.split.split.i.i ]
  %.03743.i.i = phi i64 [ %i.pa, %.preheaderthread-pre-split.i.i ], [ 0, %.preheader.lr.ph.split.split.i.i ] ; 4 uses
  %i.ns = fcmp olt float %i.nr, 0.000000e+00
  br i1 %i.ns, label %.lr.ph.i.i45.i, label %bb.y

.lr.ph.i.i45.i:                                   ; preds = %.preheader.i.i, %bb.x
  %i.nt = phi i64 [ %i.ow, %bb.x ], [ 3, %.preheader.i.i ]
  %i.nu = phi i64 [ %i.ov, %bb.x ], [ 2, %.preheader.i.i ] ; 7 uses
  %.056.i.i46.i = phi i64 [ %.1.i.i51.i, %bb.x ], [ 1, %.preheader.i.i ] ; 6 uses
  %i.nv = icmp eq i64 %i.nu, %i.ax
  br i1 %i.nv, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i, label %bb.v

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i: ; preds = %.lr.ph.i.i45.i
  %.pre.i.i57.i = load float, ptr %.phi.trans.insert.i.i43.i, align 4, !tbaa !46, !noalias !233
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i

bb.v:                                             ; preds = %.lr.ph.i.i45.i
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.nu
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !46, !noalias !233 ; 4 uses
  %i.ny = getelementptr [4 x i8], ptr %i.ac, i64 %i.nu
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !46, !noalias !233 ; 5 uses
  %i.oa = getelementptr [8 x i8], ptr %i.z, i64 %i.nu
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !76, !noalias !233 ; 3 uses
  %i.oc = fcmp olt float %i.nx, %i.nz
  br i1 %i.oc, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i47.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i47.i:        ; preds = %bb.v
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.nu
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !76, !noalias !233
  %i.of = fcmp oeq float %i.nx, %i.nz
  %i.og = icmp slt i64 %i.oe, %i.ob
  %i.oh = and i1 %i.of, %i.og
  br i1 %i.oh, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i, label %bb.w

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i47.i, %bb.v, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i
  %i.oi = phi float [ %.pre.i.i57.i, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i ], [ %i.nx, %bb.v ], [ %i.nx, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i47.i ] ; 3 uses
  %i.oj = fcmp ogt float %i.oi, 0.000000e+00
  br i1 %i.oj, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i:      ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.nu
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !76, !noalias !233 ; 2 uses
  %i.om = fcmp oeq float %i.oi, 0.000000e+00
  %i.on = icmp slt i64 %.03743.i.i, %i.ol
  %i.oo = and i1 %i.om, %i.on
  br i1 %i.oo, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, label %bb.x

bb.w:                                             ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i47.i
  %i.op = fcmp ogt float %i.nz, 0.000000e+00
  br i1 %i.op, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i:      ; preds = %bb.w
  %i.oq = fcmp oeq float %i.nz, 0.000000e+00
  %i.or = icmp slt i64 %.03743.i.i, %i.ob
  %i.os = and i1 %i.oq, %i.or
  br i1 %i.os, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, label %bb.x

bb.x:                                             ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i
  %.sink71.i.i49.i = phi float [ %i.oi, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i ], [ %i.nz, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i ]
  %.sink.i.i50.i = phi i64 [ %i.ol, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i ], [ %i.ob, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i ]
  %.1.i.i51.i = phi i64 [ %i.nu, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i ], [ %i.nt, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i ] ; 3 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.056.i.i46.i
  store float %.sink71.i.i49.i, ptr %i.ot, align 4, !tbaa !46, !noalias !233
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.056.i.i46.i
  store i64 %.sink.i.i50.i, ptr %i.ou, align 8, !tbaa !76, !noalias !233
  %i.ov = shl i64 %.1.i.i51.i, 1                  ; 3 uses
  %i.ow = or disjoint i64 %i.ov, 1
  %i.ox = icmp ugt i64 %i.ov, %i.ax
  br i1 %i.ox, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, label %.lr.ph.i.i45.i, !llvm.loop !201

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i: ; preds = %bb.x, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i, %bb.w, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i
  %.0.lcssa.i.ph.i53.i = phi i64 [ %.1.i.i51.i, %bb.x ], [ %.056.i.i46.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i ], [ %.056.i.i46.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i ], [ %.056.i.i46.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i ], [ %.056.i.i46.i, %bb.w ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.0.lcssa.i.ph.i53.i
  store float 0.000000e+00, ptr %i.oy, align 4, !tbaa !46, !noalias !233
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.0.lcssa.i.ph.i53.i
  store i64 %.03743.i.i, ptr %i.oz, align 8, !tbaa !76, !noalias !233
  br label %bb.y

bb.y:                                             ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i, %.preheader.i.i
  %i.pa = add nuw i64 %.03743.i.i, 1              ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %i.pa, %i.aw
  br i1 %exitcond.not.i44.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheaderthread-pre-split.i.i, !llvm.loop !207

.preheader.i:                                     ; preds = %bb.ad, %.preheader.lr.ph.i
  %.03917.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.rt, %bb.ad ] ; 4 uses
  %.04016.i = phi ptr [ %i.av, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %bb.ad ] ; 4 uses
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  br i1 %i.es, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod490.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.03713.i.epil.init = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ql, %._crit_edge.loopexit.i.unr-lcssa ]
  %.03812.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.qk, %._crit_edge.loopexit.i.unr-lcssa ]
  %.111.i.epil.init = phi ptr [ %.04016.i, %.lr.ph.i.preheader ], [ %i.qf, %._crit_edge.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod492)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03713.i.epil = phi ptr [ %i.ph, %.lr.ph.i.epil ], [ %.03713.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.03812.i.epil = phi float [ %i.pg, %.lr.ph.i.epil ], [ %.03812.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.111.i.epil = phi ptr [ %i.pb, %.lr.ph.i.epil ], [ %.111.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter489 = phi i64 [ %epil.iter489.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.pb = getelementptr inbounds nuw i8, ptr %.111.i.epil, i64 1
  %i.pc = load i8, ptr %.111.i.epil, align 1, !tbaa !62
  %i.pd = zext i8 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.03713.i.epil, i64 %i.pd
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !46
  %i.pg = fadd float %.03812.i.epil, %i.pf        ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.03713.i.epil, i64 %.val42
  %epil.iter489.next = add i64 %epil.iter489, 1   ; 2 uses
  %epil.iter489.cmp.not = icmp eq i64 %epil.iter489.next, %xtraiter488
  br i1 %epil.iter489.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !208

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa455 = phi float [ %i.qk, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.pg, %.lr.ph.i.epil ]
  %scevgep.i = getelementptr i8, ptr %.04016.i, i64 %.val
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.04016.i, %.preheader.i ], [ %scevgep.i, %._crit_edge.loopexit.i ]
  %.038.lcssa.i = phi float [ 0.000000e+00, %.preheader.i ], [ %.lcssa455, %._crit_edge.loopexit.i ] ; 6 uses
  %i.pi = load float, ptr %i.ac, align 4, !tbaa !46
  %i.pj = fcmp olt float %i.pi, %.038.lcssa.i
  br i1 %i.pj, label %bb.z, label %bb.ad

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03713.i = phi ptr [ %i.ql, %.lr.ph.i ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %.03812.i = phi float [ %i.qk, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.111.i = phi ptr [ %i.qf, %.lr.ph.i ], [ %.04016.i, %.lr.ph.i.preheader ] ; 5 uses
  %niter494 = phi i64 [ %niter494.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.pk = getelementptr inbounds nuw i8, ptr %.111.i, i64 1
  %i.pl = load i8, ptr %.111.i, align 1, !tbaa !62
  %i.pm = zext i8 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.03713.i, i64 %i.pm
  %i.po = load float, ptr %i.pn, align 4, !tbaa !46
  %i.pp = fadd float %.03812.i, %i.po
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.03713.i, i64 %.val42 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.111.i, i64 2
  %i.ps = load i8, ptr %i.pk, align 1, !tbaa !62
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.pt
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !46
  %i.pw = fadd float %i.pp, %i.pv
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %.val42 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.111.i, i64 3
  %i.pz = load i8, ptr %i.pr, align 1, !tbaa !62
  %i.qa = zext i8 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.qa
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !46
  %i.qd = fadd float %i.pw, %i.qc
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %.val42 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.111.i, i64 4 ; 2 uses
  %i.qg = load i8, ptr %i.py, align 1, !tbaa !62
  %i.qh = zext i8 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.qh
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !46
  %i.qk = fadd float %i.qd, %i.qj                 ; 3 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %.val42 ; 2 uses
  %niter494.next.3 = add nuw i64 %niter494, 4     ; 2 uses
  %niter494.ncmp.3 = icmp eq i64 %niter494.next.3, %unroll_iter493
  br i1 %niter494.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !209

bb.z:                                             ; preds = %._crit_edge.i
  br i1 %i.er, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %bb.z, %bb.ac
  %i.qm = phi i64 [ %i.rp, %bb.ac ], [ 3, %bb.z ]
  %i.qn = phi i64 [ %i.ro, %bb.ac ], [ 2, %bb.z ] ; 7 uses
  %.056.i.i = phi i64 [ %.1.i.i, %bb.ac ], [ 1, %bb.z ] ; 6 uses
  %i.qo = icmp eq i64 %i.qn, %i.ax
  br i1 %i.qo, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i, label %bb.aa

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i59.i
  %.pre.i60.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !46
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i

bb.aa:                                            ; preds = %.lr.ph.i59.i
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.qn
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !46 ; 4 uses
  %i.qr = getelementptr [4 x i8], ptr %i.ac, i64 %i.qn
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !46 ; 5 uses
  %i.qt = getelementptr [8 x i8], ptr %i.z, i64 %i.qn
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !76 ; 3 uses
  %i.qv = fcmp olt float %i.qq, %i.qs
  br i1 %i.qv, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i:            ; preds = %bb.aa
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.qn
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !76
  %i.qy = fcmp oeq float %i.qq, %i.qs
  %i.qz = icmp slt i64 %i.qx, %i.qu
  %i.ra = and i1 %i.qy, %i.qz
  br i1 %i.ra, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i, label %bb.ab

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i:     ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i, %bb.aa, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i
  %i.rb = phi float [ %.pre.i60.i, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i ], [ %i.qq, %bb.aa ], [ %i.qq, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i ] ; 3 uses
  %i.rc = fcmp olt float %.038.lcssa.i, %i.rb
  br i1 %i.rc, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i:          ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.qn
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !76 ; 2 uses
  %i.rf = fcmp oeq float %.038.lcssa.i, %i.rb
  %i.rg = icmp slt i64 %.03917.i, %i.re
  %i.rh = and i1 %i.rf, %i.rg
  br i1 %i.rh, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %bb.ac

bb.ab:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i
  %i.ri = fcmp olt float %.038.lcssa.i, %i.qs
  br i1 %i.ri, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i:          ; preds = %bb.ab
  %i.rj = fcmp oeq float %.038.lcssa.i, %i.qs
  %i.rk = icmp slt i64 %.03917.i, %i.qu
  %i.rl = and i1 %i.rj, %i.rk
  br i1 %i.rl, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i
  %.sink71.i.i = phi float [ %i.rb, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i ], [ %i.qs, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i ]
  %.sink.i.i = phi i64 [ %i.re, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i ], [ %i.qu, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i ]
  %.1.i.i = phi i64 [ %i.qn, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i ], [ %i.qm, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i ] ; 3 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.056.i.i
  store float %.sink71.i.i, ptr %i.rm, align 4, !tbaa !46
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.056.i.i
  store i64 %.sink.i.i, ptr %i.rn, align 8, !tbaa !76
  %i.ro = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.rp = or disjoint i64 %i.ro, 1
  %i.rq = icmp ugt i64 %i.ro, %i.ax
  br i1 %i.rq, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, label %.lr.ph.i59.i, !llvm.loop !201

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i: ; preds = %bb.ac, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i, %bb.ab, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i, %bb.z
  %.0.lcssa.i.i = phi i64 [ 1, %bb.z ], [ %.056.i.i, %bb.ab ], [ %.056.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i ], [ %.056.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i ], [ %.056.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i ], [ %.1.i.i, %bb.ac ] ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.0.lcssa.i.i
  store float %.038.lcssa.i, ptr %i.rr, align 4, !tbaa !46
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.0.lcssa.i.i
  store i64 %.03917.i, ptr %i.rs, align 8, !tbaa !76
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, %._crit_edge.i
  %i.rt = add nuw i64 %.03917.i, 1                ; 2 uses
  %exitcond32.not.i = icmp eq i64 %i.rt, %i.aw
  br i1 %exitcond32.not.i, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.i, !llvm.loop !210

bb.ae:                                            ; preds = %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit
  %i.ru = load ptr, ptr %10, align 8, !tbaa !74   ; 5 uses
  %i.rv = load i64, ptr %11, align 8, !tbaa !76   ; 13 uses
  %i.rw = load i64, ptr %7, align 8, !tbaa !76    ; 14 uses
  %.val43 = load i64, ptr %i.l, align 8, !tbaa !38 ; 8 uses
  %.val44 = load i64, ptr %i.m, align 8           ; 30 uses
  %i.rx = icmp eq i64 %.val43, 4
  br i1 %i.rx, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %.not.i.i139 = icmp eq i64 %i.rv, 0
  br i1 %.not.i.i139, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.lr.ph.i.i140

.lr.ph.i.i140:                                    ; preds = %bb.af
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.val44 ; 3 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %.val44 ; 3 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %.val44 ; 2 uses
  %i.sb = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.sc = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 4 uses
  %i.sd = icmp ult i64 %i.rw, 2
  %.phi.trans.insert.i.i.i141 = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.rw
  br i1 %i.sd, label %.lr.ph.split.us.i.i159, label %.lr.ph.split.i.i142

.lr.ph.split.us.i.i159:                           ; preds = %.lr.ph.i.i140
  %.pre.i.i160 = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !234
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.split.us.i.i159
  %i.se = phi float [ %.pre.i.i160, %.lr.ph.split.us.i.i159 ], [ %i.td, %bb.ah ] ; 2 uses
  %.029.us.i.i161 = phi i64 [ 0, %.lr.ph.split.us.i.i159 ], [ %i.te, %bb.ah ] ; 2 uses
  %.02728.us.i.i162 = phi ptr [ %i.ru, %.lr.ph.split.us.i.i159 ], [ %i.sw, %bb.ah ] ; 5 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.02728.us.i.i162, i64 2
  %i.sg = load i16, ptr %.02728.us.i.i162, align 2, !tbaa !82, !noalias !234
  %i.sh = zext i16 %i.sg to i64
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.sh
  %i.sj = load float, ptr %i.si, align 4, !tbaa !46, !alias.scope !234
  %i.sk = getelementptr inbounds nuw i8, ptr %.02728.us.i.i162, i64 4
  %i.sl = load i16, ptr %i.sf, align 2, !tbaa !82, !noalias !234
  %i.sm = zext i16 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.sm
  %i.so = load float, ptr %i.sn, align 4, !tbaa !46, !alias.scope !234
  %i.sp = fadd float %i.sj, %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %.02728.us.i.i162, i64 6
  %i.sr = load i16, ptr %i.sk, align 2, !tbaa !82, !noalias !234
  %i.ss = zext i16 %i.sr to i64
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.ss
  %i.su = load float, ptr %i.st, align 4, !tbaa !46, !alias.scope !234
  %i.sv = fadd float %i.sp, %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %.02728.us.i.i162, i64 8
  %i.sx = load i16, ptr %i.sq, align 2, !tbaa !82, !noalias !234
  %i.sy = zext i16 %i.sx to i64
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.sy
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !46, !alias.scope !234
  %i.tb = fadd float %i.sv, %i.ta                 ; 3 uses
  %i.tc = fcmp olt float %i.se, %i.tb
  br i1 %i.tc, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i164, label %bb.ah

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i164: ; preds = %bb.ag
  store float %i.tb, ptr %i.ac, align 4, !tbaa !46, !noalias !234
  store i64 %.029.us.i.i161, ptr %i.z, align 8, !tbaa !76, !noalias !234
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i164, %bb.ag
  %i.td = phi float [ %i.tb, %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i.i164 ], [ %i.se, %bb.ag ]
  %i.te = add nuw i64 %.029.us.i.i161, 1          ; 2 uses
  %exitcond33.not.i.i163 = icmp eq i64 %i.te, %i.rv
  br i1 %exitcond33.not.i.i163, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %bb.ag, !llvm.loop !213

.lr.ph.split.i.i142:                              ; preds = %.lr.ph.i.i140, %bb.al
  %.029.i.i143 = phi i64 [ %i.vl, %bb.al ], [ 0, %.lr.ph.i.i140 ] ; 4 uses
  %.02728.i.i144 = phi ptr [ %i.tw, %bb.al ], [ %i.ru, %.lr.ph.i.i140 ] ; 5 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.02728.i.i144, i64 2
  %i.tg = load i16, ptr %.02728.i.i144, align 2, !tbaa !82, !noalias !234
  %i.th = zext i16 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.th
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !46, !alias.scope !234
  %i.tk = getelementptr inbounds nuw i8, ptr %.02728.i.i144, i64 4
  %i.tl = load i16, ptr %i.tf, align 2, !tbaa !82, !noalias !234
  %i.tm = zext i16 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.tm
  %i.to = load float, ptr %i.tn, align 4, !tbaa !46, !alias.scope !234
  %i.tp = fadd float %i.tj, %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %.02728.i.i144, i64 6
  %i.tr = load i16, ptr %i.tk, align 2, !tbaa !82, !noalias !234
  %i.ts = zext i16 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.ts
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !46, !alias.scope !234
  %i.tv = fadd float %i.tp, %i.tu
  %i.tw = getelementptr inbounds nuw i8, ptr %.02728.i.i144, i64 8
  %i.tx = load i16, ptr %i.tq, align 2, !tbaa !82, !noalias !234
  %i.ty = zext i16 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.ty
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !46, !alias.scope !234
  %i.ub = fadd float %i.tv, %i.ua                 ; 6 uses
  %i.uc = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !234
  %i.ud = fcmp olt float %i.uc, %i.ub
  br i1 %i.ud, label %.lr.ph.i.i.i146, label %bb.al

.lr.ph.i.i.i146:                                  ; preds = %.lr.ph.split.i.i142, %bb.ak
  %i.ue = phi i64 [ %i.vh, %bb.ak ], [ 3, %.lr.ph.split.i.i142 ]
  %i.uf = phi i64 [ %i.vg, %bb.ak ], [ 2, %.lr.ph.split.i.i142 ] ; 7 uses
  %.056.i.i.i147 = phi i64 [ %.1.i.i.i152, %bb.ak ], [ 1, %.lr.ph.split.i.i142 ] ; 6 uses
  %i.ug = icmp eq i64 %i.uf, %i.rw
  br i1 %i.ug, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i157, label %bb.ai

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i157: ; preds = %.lr.ph.i.i.i146
  %.pre.i.i.i158 = load float, ptr %.phi.trans.insert.i.i.i141, align 4, !tbaa !46, !noalias !234
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i155

bb.ai:                                            ; preds = %.lr.ph.i.i.i146
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.uf
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !46, !noalias !234 ; 4 uses
  %i.uj = getelementptr [4 x i8], ptr %i.ac, i64 %i.uf
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !46, !noalias !234 ; 5 uses
  %i.ul = getelementptr [8 x i8], ptr %i.z, i64 %i.uf
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !76, !noalias !234 ; 3 uses
  %i.un = fcmp olt float %i.ui, %i.uk
  br i1 %i.un, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i155, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i148

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i148:       ; preds = %bb.ai
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.uf
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !76, !noalias !234
  %i.uq = fcmp oeq float %i.ui, %i.uk
  %i.ur = icmp slt i64 %i.up, %i.um
  %i.us = and i1 %i.uq, %i.ur
  br i1 %i.us, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i155, label %bb.aj

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i155: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i148, %bb.ai, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i157
  %i.ut = phi float [ %.pre.i.i.i158, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i157 ], [ %i.ui, %bb.ai ], [ %i.ui, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i148 ] ; 3 uses
  %i.uu = fcmp olt float %i.ub, %i.ut
  br i1 %i.uu, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i156

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i156:     ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i155
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.uf
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !76, !noalias !234 ; 2 uses
  %i.ux = fcmp oeq float %i.ub, %i.ut
  %i.uy = icmp slt i64 %.029.i.i143, %i.uw
  %i.uz = and i1 %i.ux, %i.uy
  br i1 %i.uz, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, label %bb.ak

bb.aj:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i148
  %i.va = fcmp olt float %i.ub, %i.uk
  br i1 %i.va, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i149

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i149:     ; preds = %bb.aj
  %i.vb = fcmp oeq float %i.ub, %i.uk
  %i.vc = icmp slt i64 %.029.i.i143, %i.um
  %i.vd = and i1 %i.vb, %i.vc
  br i1 %i.vd, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, label %bb.ak

bb.ak:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i149, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i156
  %.sink71.i.i.i150 = phi float [ %i.ut, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i156 ], [ %i.uk, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i149 ]
  %.sink.i.i.i151 = phi i64 [ %i.uw, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i156 ], [ %i.um, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i149 ]
  %.1.i.i.i152 = phi i64 [ %i.uf, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i156 ], [ %i.ue, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i149 ] ; 3 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %.056.i.i.i147
  store float %.sink71.i.i.i150, ptr %i.ve, align 4, !tbaa !46, !noalias !234
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %.056.i.i.i147
  store i64 %.sink.i.i.i151, ptr %i.vf, align 8, !tbaa !76, !noalias !234
  %i.vg = shl i64 %.1.i.i.i152, 1                 ; 3 uses
  %i.vh = or disjoint i64 %i.vg, 1
  %i.vi = icmp ugt i64 %i.vg, %i.rw
  br i1 %i.vi, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, label %.lr.ph.i.i.i146, !llvm.loop !201

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153: ; preds = %bb.ak, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i149, %bb.aj, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i156, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i155
  %.0.lcssa.i.ph.i.i154 = phi i64 [ %.1.i.i.i152, %bb.ak ], [ %.056.i.i.i147, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.i156 ], [ %.056.i.i.i147, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.i149 ], [ %.056.i.i.i147, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i155 ], [ %.056.i.i.i147, %bb.aj ] ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %.0.lcssa.i.ph.i.i154
  store float %i.ub, ptr %i.vj, align 4, !tbaa !46, !noalias !234
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %.0.lcssa.i.ph.i.i154
  store i64 %.029.i.i143, ptr %i.vk, align 8, !tbaa !76, !noalias !234
  br label %bb.al

bb.al:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i.i153, %.lr.ph.split.i.i142
  %i.vl = add nuw i64 %.029.i.i143, 1             ; 2 uses
  %exitcond.not.i.i145 = icmp eq i64 %i.vl, %i.rv
  br i1 %exitcond.not.i.i145, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.lr.ph.split.i.i142, !llvm.loop !213

bb.am:                                            ; preds = %bb.ae
  %i.vm = and i64 %.val43, 3
  %i.vn = icmp eq i64 %i.vm, 0
  br i1 %i.vn, label %bb.an, label %.preheader6.i45

.preheader6.i45:                                  ; preds = %bb.am
  %.not.i46 = icmp eq i64 %i.rv, 0
  br i1 %.not.i46, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.lr.ph.i47

.preheader.lr.ph.i47:                             ; preds = %.preheader6.i45
  %.not20.i48 = icmp eq i64 %.val43, 0
  %i.vo = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.vp = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 4 uses
  %i.vq = icmp ult i64 %i.rw, 2
  %.phi.trans.insert.i.i49 = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.rw
  %i.vr = shl i64 %.val43, 1
  %xtraiter = and i64 %.val43, 3                  ; 3 uses
  %i.vs = icmp ult i64 %.val43, 4
  %unroll_iter = and i64 %.val43, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod464 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i50

bb.an:                                            ; preds = %bb.am
  %i.vt = trunc i64 %.val43 to i32                ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %.not.i42.i78 = icmp eq i64 %i.rv, 0
  br i1 %.not.i42.i78, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.lr.ph.i.i79

.preheader.lr.ph.i.i79:                           ; preds = %bb.an
  %i.vu = icmp sgt i32 %i.vt, 0                   ; 2 uses
  %i.vv = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 7 uses
  %i.vw = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 8 uses
  %i.vx = icmp ult i64 %i.rw, 2
  %.phi.trans.insert.i.i43.i80 = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.rw ; 2 uses
  br i1 %i.vx, label %.preheader.lr.ph.split.us.i.i123, label %.preheader.lr.ph.split.i.i81

.preheader.lr.ph.split.us.i.i123:                 ; preds = %.preheader.lr.ph.i.i79
  br i1 %i.vu, label %.preheader.us.us.i.i129.preheader, label %.preheader.lr.ph.split.us.split.i.i124

.preheader.us.us.i.i129.preheader:                ; preds = %.preheader.lr.ph.split.us.i.i123
  %i.vy = add nsw i32 %i.vt, -4                   ; 3 uses
  %i.vz = lshr exact i32 %i.vy, 2
  %i.wa = add nuw nsw i32 %i.vz, 1                ; 2 uses
  %i.wb = icmp eq i32 %i.vy, 0
  %unroll_iter486 = and i32 %i.wa, 2147483646
  %i.wc = and i32 %i.vy, 4
  %lcmp.mod482.not.not = icmp eq i32 %i.wc, 0
  %lcmp.mod485 = trunc i32 %i.wa to i1
  br label %.preheader.us.us.i.i129

.preheader.us.us.i.i129:                          ; preds = %.preheader.us.us.i.i129.preheader, %bb.ao
  %.046.us.us.i.i130 = phi ptr [ %.lcssa454, %bb.ao ], [ %i.ru, %.preheader.us.us.i.i129.preheader ] ; 2 uses
  %.03743.us.us.i.i131 = phi i64 [ %i.zk, %bb.ao ], [ 0, %.preheader.us.us.i.i129.preheader ] ; 2 uses
  br i1 %i.wb, label %.epil.preheader479, label %.preheader.us.us.i.i129.new

.preheader.us.us.i.i129.new:                      ; preds = %.preheader.us.us.i.i129, %.preheader.us.us.i.i129.new
  %.141.us.us.i.i132 = phi ptr [ %i.xz, %.preheader.us.us.i.i129.new ], [ %.046.us.us.i.i130, %.preheader.us.us.i.i129 ] ; 9 uses
  %.03539.us.us.i.i134 = phi ptr [ %i.yf, %.preheader.us.us.i.i129.new ], [ %i.t, %.preheader.us.us.i.i129 ] ; 2 uses
  %.03638.us.us.i.i135 = phi float [ %i.yg, %.preheader.us.us.i.i129.new ], [ 0.000000e+00, %.preheader.us.us.i.i129 ]
  %niter487 = phi i32 [ %niter487.next.1, %.preheader.us.us.i.i129.new ], [ 0, %.preheader.us.us.i.i129 ]
  %i.wd = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 2
  %i.we = load i16, ptr %.141.us.us.i.i132, align 2, !tbaa !82, !noalias !235
  %i.wf = zext i16 %i.we to i64
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i134, i64 %i.wf
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !46, !alias.scope !235
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i134, i64 %.val44 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 4
  %i.wk = load i16, ptr %i.wd, align 2, !tbaa !82, !noalias !235
  %i.wl = zext i16 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.wl
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !46, !alias.scope !235
  %i.wo = fadd float %i.wh, %i.wn
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %.val44 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 6
  %i.wr = load i16, ptr %i.wj, align 2, !tbaa !82, !noalias !235
  %i.ws = zext i16 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %i.ws
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !46, !alias.scope !235
  %i.wv = fadd float %i.wo, %i.wu
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %.val44 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 8
  %i.wy = load i16, ptr %i.wq, align 2, !tbaa !82, !noalias !235
  %i.wz = zext i16 %i.wy to i64
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %i.wz
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !46, !alias.scope !235
  %i.xc = fadd float %i.wv, %i.xb
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %.val44 ; 2 uses
  %i.xe = fadd float %.03638.us.us.i.i135, %i.xc
  %i.xf = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 10
  %i.xg = load i16, ptr %i.wx, align 2, !tbaa !82, !noalias !235
  %i.xh = zext i16 %i.xg to i64
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.xh
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !46, !alias.scope !235
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %.val44 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 12
  %i.xm = load i16, ptr %i.xf, align 2, !tbaa !82, !noalias !235
  %i.xn = zext i16 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.xn
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !46, !alias.scope !235
  %i.xq = fadd float %i.xj, %i.xp
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %.val44 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 14
  %i.xt = load i16, ptr %i.xl, align 2, !tbaa !82, !noalias !235
  %i.xu = zext i16 %i.xt to i64
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %i.xu
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !46, !alias.scope !235
  %i.xx = fadd float %i.xq, %i.xw
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %.val44 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132, i64 16 ; 3 uses
  %i.ya = load i16, ptr %i.xs, align 2, !tbaa !82, !noalias !235
  %i.yb = zext i16 %i.ya to i64
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.yb
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !46, !alias.scope !235
  %i.ye = fadd float %i.xx, %i.yd
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %.val44 ; 2 uses
  %i.yg = fadd float %i.xe, %i.ye                 ; 3 uses
  %niter487.next.1 = add i32 %niter487, 2         ; 2 uses
  %niter487.ncmp.1.not = icmp eq i32 %niter487.next.1, %unroll_iter486
  br i1 %niter487.ncmp.1.not, label %._crit_edge.us.us.i.i136.unr-lcssa, label %.preheader.us.us.i.i129.new, !llvm.loop !216

._crit_edge.us.us.i.i136.unr-lcssa:               ; preds = %.preheader.us.us.i.i129.new
  br i1 %lcmp.mod482.not.not, label %.epil.preheader479, label %._crit_edge.us.us.i.i136

.epil.preheader479:                               ; preds = %._crit_edge.us.us.i.i136.unr-lcssa, %.preheader.us.us.i.i129
  %.141.us.us.i.i132.epil.init = phi ptr [ %.046.us.us.i.i130, %.preheader.us.us.i.i129 ], [ %i.xz, %._crit_edge.us.us.i.i136.unr-lcssa ] ; 5 uses
  %.03539.us.us.i.i134.epil.init = phi ptr [ %i.t, %.preheader.us.us.i.i129 ], [ %i.yf, %._crit_edge.us.us.i.i136.unr-lcssa ] ; 2 uses
  %.03638.us.us.i.i135.epil.init = phi float [ 0.000000e+00, %.preheader.us.us.i.i129 ], [ %i.yg, %._crit_edge.us.us.i.i136.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod485)
  %i.yh = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132.epil.init, i64 2
  %i.yi = load i16, ptr %.141.us.us.i.i132.epil.init, align 2, !tbaa !82, !noalias !235
  %i.yj = zext i16 %i.yi to i64
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i134.epil.init, i64 %i.yj
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !46, !alias.scope !235
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %.03539.us.us.i.i134.epil.init, i64 %.val44 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132.epil.init, i64 4
  %i.yo = load i16, ptr %i.yh, align 2, !tbaa !82, !noalias !235
  %i.yp = zext i16 %i.yo to i64
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.yp
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !46, !alias.scope !235
  %i.ys = fadd float %i.yl, %i.yr
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %.val44 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132.epil.init, i64 6
  %i.yv = load i16, ptr %i.yn, align 2, !tbaa !82, !noalias !235
  %i.yw = zext i16 %i.yv to i64
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %i.yw
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !46, !alias.scope !235
  %i.yz = fadd float %i.ys, %i.yy
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %.val44
  %i.zb = getelementptr inbounds nuw i8, ptr %.141.us.us.i.i132.epil.init, i64 8
  %i.zc = load i16, ptr %i.yu, align 2, !tbaa !82, !noalias !235
  %i.zd = zext i16 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.zd
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !46, !alias.scope !235
  %i.zg = fadd float %i.yz, %i.zf
  %i.zh = fadd float %.03638.us.us.i.i135.epil.init, %i.zg
  br label %._crit_edge.us.us.i.i136

._crit_edge.us.us.i.i136:                         ; preds = %._crit_edge.us.us.i.i136.unr-lcssa, %.epil.preheader479
  %.lcssa454 = phi ptr [ %i.xz, %._crit_edge.us.us.i.i136.unr-lcssa ], [ %i.zb, %.epil.preheader479 ]
  %.lcssa453 = phi float [ %i.yg, %._crit_edge.us.us.i.i136.unr-lcssa ], [ %i.zh, %.epil.preheader479 ] ; 2 uses
  %i.zi = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !235
  %i.zj = fcmp olt float %i.zi, %.lcssa453
  br i1 %i.zj, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i138, label %bb.ao

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i138: ; preds = %._crit_edge.us.us.i.i136
  store float %.lcssa453, ptr %i.ac, align 4, !tbaa !46, !noalias !235
  store i64 %.03743.us.us.i.i131, ptr %i.z, align 8, !tbaa !76, !noalias !235
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.us.i.i138, %._crit_edge.us.us.i.i136
  %i.zk = add nuw i64 %.03743.us.us.i.i131, 1     ; 2 uses
  %exitcond75.not.i.i137 = icmp eq i64 %i.zk, %i.rv
  br i1 %exitcond75.not.i.i137, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.us.us.i.i129, !llvm.loop !217

.preheader.lr.ph.split.us.split.i.i124:           ; preds = %.preheader.lr.ph.split.us.i.i123
  %i.zl = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !235 ; 3 uses
  %i.zm = fcmp olt float %i.zl, 0.000000e+00
  br i1 %i.zm, label %.preheader.us.i.i125.preheader, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit

.preheader.us.i.i125.preheader:                   ; preds = %.preheader.lr.ph.split.us.split.i.i124
  %xtraiter473 = and i64 %i.rv, 1
  %i.zn = icmp eq i64 %i.rv, 1
  br i1 %i.zn, label %.preheader.us.i.i125.epil.preheader, label %.preheader.us.i.i125.preheader.new

.preheader.us.i.i125.preheader.new:               ; preds = %.preheader.us.i.i125.preheader
  %unroll_iter477 = and i64 %i.rv, -2
  br label %.preheader.us.i.i125

.preheader.us.i.i125:                             ; preds = %bb.ap, %.preheader.us.i.i125.preheader.new
  %i.zo = phi float [ %i.zl, %.preheader.us.i.i125.preheader.new ], [ %i.zt, %bb.ap ] ; 2 uses
  %.03743.us.i.i126 = phi i64 [ 0, %.preheader.us.i.i125.preheader.new ], [ %i.zu, %bb.ap ] ; 3 uses
  %niter478 = phi i64 [ 0, %.preheader.us.i.i125.preheader.new ], [ %niter478.next.1, %bb.ap ]
  %i.zp = fcmp olt float %i.zo, 0.000000e+00
  br i1 %i.zp, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128, label %.preheader.us.i.i125.1

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128: ; preds = %.preheader.us.i.i125
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !46, !noalias !235
  store i64 %.03743.us.i.i126, ptr %i.z, align 8, !tbaa !76, !noalias !235
  br label %.preheader.us.i.i125.1

.preheader.us.i.i125.1:                           ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128, %.preheader.us.i.i125
  %i.zq = phi float [ 0.000000e+00, %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128 ], [ %i.zo, %.preheader.us.i.i125 ] ; 2 uses
  %i.zr = fcmp olt float %i.zq, 0.000000e+00
  br i1 %i.zr, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128.1, label %bb.ap

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128.1: ; preds = %.preheader.us.i.i125.1
  %i.zs = or disjoint i64 %.03743.us.i.i126, 1
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !46, !noalias !235
  store i64 %i.zs, ptr %i.z, align 8, !tbaa !76, !noalias !235
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128.1, %.preheader.us.i.i125.1
  %i.zt = phi float [ 0.000000e+00, %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.us.i58.i128.1 ], [ %i.zq, %.preheader.us.i.i125.1 ] ; 2 uses
  %i.zu = add nuw i64 %.03743.us.i.i126, 2        ; 2 uses
  %niter478.next.1 = add nuw i64 %niter478, 2     ; 2 uses
  %niter478.ncmp.1 = icmp eq i64 %niter478.next.1, %unroll_iter477
  br i1 %niter478.ncmp.1, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit.loopexit446.unr-lcssa, label %.preheader.us.i.i125, !llvm.loop !218

end_hunk_4
begin_hunk_5_@_ZN5faiss12_GLOBAL__N_125pq_knn_search_with_tablesINS_4CMinIflEEEEvRKNS_16ProductQuantizerEmPKfPKhmPNS_9HeapArrayIT_EEb.omp_outlined:bb.a
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %i.acm
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !46, !alias.scope !235
  %i.acp = fadd float %i.aci, %i.aco
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %.val44 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.141.us52.i.i104.epil.init, i64 6
  %i.acs = load i16, ptr %i.ack, align 2, !tbaa !82, !noalias !235
  %i.act = zext i16 %i.acs to i64
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.act
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !46, !alias.scope !235
  %i.acw = fadd float %i.acp, %i.acv
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %.val44
  %i.acy = getelementptr inbounds nuw i8, ptr %.141.us52.i.i104.epil.init, i64 8
  %i.acz = load i16, ptr %i.acr, align 2, !tbaa !82, !noalias !235
  %i.ada = zext i16 %i.acz to i64
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.acx, i64 %i.ada
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !46, !alias.scope !235
  %i.add = fadd float %i.acw, %i.adc
  %i.ade = fadd float %.03638.us55.i.i107.epil.init, %i.add
  br label %._crit_edge.us56.i.i108

._crit_edge.us56.i.i108:                          ; preds = %._crit_edge.us56.i.i108.unr-lcssa, %.epil.preheader
  %.lcssa452 = phi ptr [ %i.abw, %._crit_edge.us56.i.i108.unr-lcssa ], [ %i.acy, %.epil.preheader ]
  %.lcssa451 = phi float [ %i.acd, %._crit_edge.us56.i.i108.unr-lcssa ], [ %i.ade, %.epil.preheader ] ; 6 uses
  %i.adf = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !235
  %i.adg = fcmp olt float %i.adf, %.lcssa451
  br i1 %i.adg, label %.lr.ph.i.us.i.i110, label %bb.at

.lr.ph.i.us.i.i110:                               ; preds = %._crit_edge.us56.i.i108, %bb.as
  %i.adh = phi i64 [ %i.aek, %bb.as ], [ 3, %._crit_edge.us56.i.i108 ]
  %i.adi = phi i64 [ %i.aej, %bb.as ], [ 2, %._crit_edge.us56.i.i108 ] ; 7 uses
  %.056.i.us.i.i111 = phi i64 [ %.1.i.us.i.i116, %bb.as ], [ 1, %._crit_edge.us56.i.i108 ] ; 6 uses
  %i.adj = icmp eq i64 %i.adi, %i.rw
  br i1 %i.adj, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i121, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.us.i.i110
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.adi
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !46, !noalias !235 ; 4 uses
  %i.adm = getelementptr [4 x i8], ptr %i.ac, i64 %i.adi
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !46, !noalias !235 ; 5 uses
  %i.ado = getelementptr [8 x i8], ptr %i.z, i64 %i.adi
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !76, !noalias !235 ; 3 uses
  %i.adq = fcmp olt float %i.adl, %i.adn
  br i1 %i.adq, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i119, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.us.i.i112

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.us.i.i112:    ; preds = %bb.aq
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.adi
  %i.ads = load i64, ptr %i.adr, align 8, !tbaa !76, !noalias !235
  %i.adt = fcmp oeq float %i.adl, %i.adn
  %i.adu = icmp slt i64 %i.ads, %i.adp
  %i.adv = and i1 %i.adt, %i.adu
  br i1 %i.adv, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i119, label %bb.ar

bb.ar:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.us.i.i112
  %i.adw = fcmp olt float %.lcssa451, %i.adn
  br i1 %i.adw, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i113

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i113:  ; preds = %bb.ar
  %i.adx = fcmp oeq float %.lcssa451, %i.adn
  %i.ady = icmp slt i64 %.03743.us50.i.i103, %i.adp
  %i.adz = and i1 %i.adx, %i.ady
  br i1 %i.adz, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, label %bb.as

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i121: ; preds = %.lr.ph.i.us.i.i110
  %.pre.i.us.i.i122 = load float, ptr %.phi.trans.insert.i.i43.i80, align 4, !tbaa !46, !noalias !235
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i119

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i119: ; preds = %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i121, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.us.i.i112, %bb.aq
  %i.aea = phi float [ %.pre.i.us.i.i122, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.us.i.i121 ], [ %i.adl, %bb.aq ], [ %i.adl, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.us.i.i112 ] ; 3 uses
  %i.aeb = fcmp olt float %.lcssa451, %i.aea
  br i1 %i.aeb, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i120

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i120:  ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i119
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.adi
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !76, !noalias !235 ; 2 uses
  %i.aee = fcmp oeq float %.lcssa451, %i.aea
  %i.aef = icmp slt i64 %.03743.us50.i.i103, %i.aed
  %i.aeg = and i1 %i.aee, %i.aef
  br i1 %i.aeg, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, label %bb.as

bb.as:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i120, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i113
  %.sink71.i.us.i.i114 = phi float [ %i.aea, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i120 ], [ %i.adn, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i113 ]
  %.sink.i.us.i.i115 = phi i64 [ %i.aed, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i120 ], [ %i.adp, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i113 ]
  %.1.i.us.i.i116 = phi i64 [ %i.adi, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i120 ], [ %i.adh, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i113 ] ; 3 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %.056.i.us.i.i111
  store float %.sink71.i.us.i.i114, ptr %i.aeh, align 4, !tbaa !46, !noalias !235
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %.056.i.us.i.i111
  store i64 %.sink.i.us.i.i115, ptr %i.aei, align 8, !tbaa !76, !noalias !235
  %i.aej = shl i64 %.1.i.us.i.i116, 1             ; 3 uses
  %i.aek = or disjoint i64 %i.aej, 1
  %i.ael = icmp ugt i64 %i.aej, %i.rw
  br i1 %i.ael, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, label %.lr.ph.i.us.i.i110, !llvm.loop !201

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117: ; preds = %bb.as, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i120, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i119, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i113, %bb.ar
  %.0.lcssa.i.ph.us.i.i118 = phi i64 [ %.1.i.us.i.i116, %bb.as ], [ %.056.i.us.i.i111, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.us.i.i120 ], [ %.056.i.us.i.i111, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.us.i.i113 ], [ %.056.i.us.i.i111, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.us.i.i119 ], [ %.056.i.us.i.i111, %bb.ar ] ; 2 uses
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %.0.lcssa.i.ph.us.i.i118
  store float %.lcssa451, ptr %i.aem, align 4, !tbaa !46, !noalias !235
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %.0.lcssa.i.ph.us.i.i118
  store i64 %.03743.us50.i.i103, ptr %i.aen, align 8, !tbaa !76, !noalias !235
  br label %bb.at

bb.at:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.us.i.i117, %._crit_edge.us56.i.i108
  %i.aeo = add nuw i64 %.03743.us50.i.i103, 1     ; 2 uses
  %exitcond73.not.i.i109 = icmp eq i64 %i.aeo, %i.rv
  br i1 %exitcond73.not.i.i109, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.us48.i.i101, !llvm.loop !217

.preheader.lr.ph.split.split.i.i82:               ; preds = %.preheader.lr.ph.split.i.i81
  %i.aep = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !235 ; 2 uses
  %i.aeq = fcmp olt float %i.aep, 0.000000e+00
  br i1 %i.aeq, label %.preheader.i.i83, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit

.preheaderthread-pre-split.i.i86:                 ; preds = %bb.ax
  %.pr.i.i87 = load float, ptr %i.ac, align 4, !tbaa !46, !noalias !235
  br label %.preheader.i.i83

.preheader.i.i83:                                 ; preds = %.preheader.lr.ph.split.split.i.i82, %.preheaderthread-pre-split.i.i86
  %i.aer = phi float [ %.pr.i.i87, %.preheaderthread-pre-split.i.i86 ], [ %i.aep, %.preheader.lr.ph.split.split.i.i82 ]
  %.03743.i.i84 = phi i64 [ %i.aga, %.preheaderthread-pre-split.i.i86 ], [ 0, %.preheader.lr.ph.split.split.i.i82 ] ; 4 uses
  %i.aes = fcmp olt float %i.aer, 0.000000e+00
  br i1 %i.aes, label %.lr.ph.i.i45.i88, label %bb.ax

.lr.ph.i.i45.i88:                                 ; preds = %.preheader.i.i83, %bb.aw
  %i.aet = phi i64 [ %i.afw, %bb.aw ], [ 3, %.preheader.i.i83 ]
  %i.aeu = phi i64 [ %i.afv, %bb.aw ], [ 2, %.preheader.i.i83 ] ; 7 uses
  %.056.i.i46.i89 = phi i64 [ %.1.i.i51.i94, %bb.aw ], [ 1, %.preheader.i.i83 ] ; 6 uses
  %i.aev = icmp eq i64 %i.aeu, %i.rw
  br i1 %i.aev, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i99, label %bb.au

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i99: ; preds = %.lr.ph.i.i45.i88
  %.pre.i.i57.i100 = load float, ptr %.phi.trans.insert.i.i43.i80, align 4, !tbaa !46, !noalias !235
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i97

bb.au:                                            ; preds = %.lr.ph.i.i45.i88
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.aeu
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !46, !noalias !235 ; 4 uses
  %i.aey = getelementptr [4 x i8], ptr %i.ac, i64 %i.aeu
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !46, !noalias !235 ; 5 uses
  %i.afa = getelementptr [8 x i8], ptr %i.z, i64 %i.aeu
  %i.afb = load i64, ptr %i.afa, align 8, !tbaa !76, !noalias !235 ; 3 uses
  %i.afc = fcmp olt float %i.aex, %i.aez
  br i1 %i.afc, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i97, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i47.i90

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i47.i90:      ; preds = %bb.au
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.aeu
  %i.afe = load i64, ptr %i.afd, align 8, !tbaa !76, !noalias !235
  %i.aff = fcmp oeq float %i.aex, %i.aez
  %i.afg = icmp slt i64 %i.afe, %i.afb
  %i.afh = and i1 %i.aff, %i.afg
  br i1 %i.afh, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i97, label %bb.av

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i97: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i47.i90, %bb.au, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i99
  %i.afi = phi float [ %.pre.i.i57.i100, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i56.i99 ], [ %i.aex, %bb.au ], [ %i.aex, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i47.i90 ] ; 3 uses
  %i.afj = fcmp ogt float %i.afi, 0.000000e+00
  br i1 %i.afj, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i98

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i98:    ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i97
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.aeu
  %i.afl = load i64, ptr %i.afk, align 8, !tbaa !76, !noalias !235 ; 2 uses
  %i.afm = fcmp oeq float %i.afi, 0.000000e+00
  %i.afn = icmp slt i64 %.03743.i.i84, %i.afl
  %i.afo = and i1 %i.afm, %i.afn
  br i1 %i.afo, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, label %bb.aw

bb.av:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i47.i90
  %i.afp = fcmp ogt float %i.aez, 0.000000e+00
  br i1 %i.afp, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i91

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i91:    ; preds = %bb.av
  %i.afq = fcmp oeq float %i.aez, 0.000000e+00
  %i.afr = icmp slt i64 %.03743.i.i84, %i.afb
  %i.afs = and i1 %i.afq, %i.afr
  br i1 %i.afs, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, label %bb.aw

bb.aw:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i91, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i98
  %.sink71.i.i49.i92 = phi float [ %i.afi, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i98 ], [ %i.aez, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i91 ]
  %.sink.i.i50.i93 = phi i64 [ %i.afl, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i98 ], [ %i.afb, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i91 ]
  %.1.i.i51.i94 = phi i64 [ %i.aeu, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i98 ], [ %i.aet, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i91 ] ; 3 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %.056.i.i46.i89
  store float %.sink71.i.i49.i92, ptr %i.aft, align 4, !tbaa !46, !noalias !235
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %.056.i.i46.i89
  store i64 %.sink.i.i50.i93, ptr %i.afu, align 8, !tbaa !76, !noalias !235
  %i.afv = shl i64 %.1.i.i51.i94, 1               ; 3 uses
  %i.afw = or disjoint i64 %i.afv, 1
  %i.afx = icmp ugt i64 %i.afv, %i.rw
  br i1 %i.afx, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, label %.lr.ph.i.i45.i88, !llvm.loop !201

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95: ; preds = %bb.aw, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i91, %bb.av, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i98, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i97
  %.0.lcssa.i.ph.i53.i96 = phi i64 [ %.1.i.i51.i94, %bb.aw ], [ %.056.i.i46.i89, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i55.i98 ], [ %.056.i.i46.i89, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i48.i91 ], [ %.056.i.i46.i89, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i54.i97 ], [ %.056.i.i46.i89, %bb.av ] ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %.0.lcssa.i.ph.i53.i96
  store float 0.000000e+00, ptr %i.afy, align 4, !tbaa !46, !noalias !235
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %.0.lcssa.i.ph.i53.i96
  store i64 %.03743.i.i84, ptr %i.afz, align 8, !tbaa !76, !noalias !235
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.loopexit.i52.i95, %.preheader.i.i83
  %i.aga = add nuw i64 %.03743.i.i84, 1           ; 2 uses
  %exitcond.not.i44.i85 = icmp eq i64 %i.aga, %i.rv
  br i1 %exitcond.not.i44.i85, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheaderthread-pre-split.i.i86, !llvm.loop !219

.preheader.i50:                                   ; preds = %bb.bc, %.preheader.lr.ph.i47
  %.03917.i51 = phi i64 [ 0, %.preheader.lr.ph.i47 ], [ %i.ait, %bb.bc ] ; 4 uses
  %.04016.i52 = phi ptr [ %i.ru, %.preheader.lr.ph.i47 ], [ %.1.lcssa.i62, %bb.bc ] ; 4 uses
  br i1 %.not20.i48, label %._crit_edge.i61, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %.preheader.i50
  br i1 %i.vs, label %.lr.ph.i53.epil.preheader, label %.lr.ph.i53

._crit_edge.loopexit.i59.unr-lcssa:               ; preds = %.lr.ph.i53
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i59, label %.lr.ph.i53.epil.preheader

.lr.ph.i53.epil.preheader:                        ; preds = %._crit_edge.loopexit.i59.unr-lcssa, %.lr.ph.i53.preheader
  %.03713.i55.epil.init = phi ptr [ %i.t, %.lr.ph.i53.preheader ], [ %i.ahl, %._crit_edge.loopexit.i59.unr-lcssa ]
  %.03812.i56.epil.init = phi float [ 0.000000e+00, %.lr.ph.i53.preheader ], [ %i.ahk, %._crit_edge.loopexit.i59.unr-lcssa ]
  %.111.i57.epil.init = phi ptr [ %.04016.i52, %.lr.ph.i53.preheader ], [ %i.ahf, %._crit_edge.loopexit.i59.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod464)
  br label %.lr.ph.i53.epil

.lr.ph.i53.epil:                                  ; preds = %.lr.ph.i53.epil, %.lr.ph.i53.epil.preheader
  %.03713.i55.epil = phi ptr [ %i.agh, %.lr.ph.i53.epil ], [ %.03713.i55.epil.init, %.lr.ph.i53.epil.preheader ] ; 2 uses
  %.03812.i56.epil = phi float [ %i.agg, %.lr.ph.i53.epil ], [ %.03812.i56.epil.init, %.lr.ph.i53.epil.preheader ]
  %.111.i57.epil = phi ptr [ %i.agb, %.lr.ph.i53.epil ], [ %.111.i57.epil.init, %.lr.ph.i53.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i53.epil ], [ 0, %.lr.ph.i53.epil.preheader ]
  %i.agb = getelementptr inbounds nuw i8, ptr %.111.i57.epil, i64 2
  %i.agc = load i16, ptr %.111.i57.epil, align 2, !tbaa !82
  %i.agd = zext i16 %i.agc to i64
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %.03713.i55.epil, i64 %i.agd
  %i.agf = load float, ptr %i.age, align 4, !tbaa !46
  %i.agg = fadd float %.03812.i56.epil, %i.agf    ; 2 uses
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %.03713.i55.epil, i64 %.val44
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i59, label %.lr.ph.i53.epil, !llvm.loop !220

._crit_edge.loopexit.i59:                         ; preds = %.lr.ph.i53.epil, %._crit_edge.loopexit.i59.unr-lcssa
  %.lcssa = phi float [ %i.ahk, %._crit_edge.loopexit.i59.unr-lcssa ], [ %i.agg, %.lr.ph.i53.epil ]
  %scevgep.i60 = getelementptr i8, ptr %.04016.i52, i64 %i.vr
  br label %._crit_edge.i61

._crit_edge.i61:                                  ; preds = %._crit_edge.loopexit.i59, %.preheader.i50
  %.1.lcssa.i62 = phi ptr [ %.04016.i52, %.preheader.i50 ], [ %scevgep.i60, %._crit_edge.loopexit.i59 ]
  %.038.lcssa.i63 = phi float [ 0.000000e+00, %.preheader.i50 ], [ %.lcssa, %._crit_edge.loopexit.i59 ] ; 6 uses
  %i.agi = load float, ptr %i.ac, align 4, !tbaa !46
  %i.agj = fcmp olt float %i.agi, %.038.lcssa.i63
  br i1 %i.agj, label %bb.ay, label %bb.bc

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.preheader, %.lr.ph.i53
  %.03713.i55 = phi ptr [ %i.ahl, %.lr.ph.i53 ], [ %i.t, %.lr.ph.i53.preheader ] ; 2 uses
  %.03812.i56 = phi float [ %i.ahk, %.lr.ph.i53 ], [ 0.000000e+00, %.lr.ph.i53.preheader ]
  %.111.i57 = phi ptr [ %i.ahf, %.lr.ph.i53 ], [ %.04016.i52, %.lr.ph.i53.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i53 ], [ 0, %.lr.ph.i53.preheader ]
  %i.agk = getelementptr inbounds nuw i8, ptr %.111.i57, i64 2
  %i.agl = load i16, ptr %.111.i57, align 2, !tbaa !82
  %i.agm = zext i16 %i.agl to i64
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %.03713.i55, i64 %i.agm
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !46
  %i.agp = fadd float %.03812.i56, %i.ago
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %.03713.i55, i64 %.val44 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.111.i57, i64 4
  %i.ags = load i16, ptr %i.agk, align 2, !tbaa !82
  %i.agt = zext i16 %i.ags to i64
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %i.agt
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !46
  %i.agw = fadd float %i.agp, %i.agv
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %.val44 ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.111.i57, i64 6
  %i.agz = load i16, ptr %i.agr, align 2, !tbaa !82
  %i.aha = zext i16 %i.agz to i64
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.aha
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !46
  %i.ahd = fadd float %i.agw, %i.ahc
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.val44 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.111.i57, i64 8 ; 2 uses
  %i.ahg = load i16, ptr %i.agy, align 2, !tbaa !82
  %i.ahh = zext i16 %i.ahg to i64
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.ahh
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !46
  %i.ahk = fadd float %i.ahd, %i.ahj              ; 3 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %.val44 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i59.unr-lcssa, label %.lr.ph.i53, !llvm.loop !221

bb.ay:                                            ; preds = %._crit_edge.i61
  br i1 %i.vq, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %.lr.ph.i59.i65

.lr.ph.i59.i65:                                   ; preds = %bb.ay, %bb.bb
  %i.ahm = phi i64 [ %i.aip, %bb.bb ], [ 3, %bb.ay ]
  %i.ahn = phi i64 [ %i.aio, %bb.bb ], [ 2, %bb.ay ] ; 7 uses
  %.056.i.i66 = phi i64 [ %.1.i.i71, %bb.bb ], [ 1, %bb.ay ] ; 6 uses
  %i.aho = icmp eq i64 %i.ahn, %i.rw
  br i1 %i.aho, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i76, label %bb.az

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i76: ; preds = %.lr.ph.i59.i65
  %.pre.i60.i77 = load float, ptr %.phi.trans.insert.i.i49, align 4, !tbaa !46
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i74

bb.az:                                            ; preds = %.lr.ph.i59.i65
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.ahn
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !46 ; 4 uses
  %i.ahr = getelementptr [4 x i8], ptr %i.ac, i64 %i.ahn
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !46 ; 5 uses
  %i.aht = getelementptr [8 x i8], ptr %i.z, i64 %i.ahn
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !76 ; 3 uses
  %i.ahv = fcmp olt float %i.ahq, %i.ahs
  br i1 %i.ahv, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i74, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i67

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i67:          ; preds = %bb.az
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %i.ahn
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !76
  %i.ahy = fcmp oeq float %i.ahq, %i.ahs
  %i.ahz = icmp slt i64 %i.ahx, %i.ahu
  %i.aia = and i1 %i.ahy, %i.ahz
  br i1 %i.aia, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i74, label %bb.ba

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i74:   ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i67, %bb.az, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i76
  %i.aib = phi float [ %.pre.i60.i77, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i76 ], [ %i.ahq, %bb.az ], [ %i.ahq, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i67 ] ; 3 uses
  %i.aic = fcmp olt float %.038.lcssa.i63, %i.aib
  br i1 %i.aic, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i75

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i75:        ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i74
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %i.ahn
  %i.aie = load i64, ptr %i.aid, align 8, !tbaa !76 ; 2 uses
  %i.aif = fcmp oeq float %.038.lcssa.i63, %i.aib
  %i.aig = icmp slt i64 %.03917.i51, %i.aie
  %i.aih = and i1 %i.aif, %i.aig
  br i1 %i.aih, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %bb.bb

bb.ba:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i67
  %i.aii = fcmp olt float %.038.lcssa.i63, %i.ahs
  br i1 %i.aii, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i68

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i68:        ; preds = %bb.ba
  %i.aij = fcmp oeq float %.038.lcssa.i63, %i.ahs
  %i.aik = icmp slt i64 %.03917.i51, %i.ahu
  %i.ail = and i1 %i.aij, %i.aik
  br i1 %i.ail, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %bb.bb

bb.bb:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i68, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i75
  %.sink71.i.i69 = phi float [ %i.aib, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i75 ], [ %i.ahs, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i68 ]
  %.sink.i.i70 = phi i64 [ %i.aie, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i75 ], [ %i.ahu, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i68 ]
  %.1.i.i71 = phi i64 [ %i.ahn, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i75 ], [ %i.ahm, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i68 ] ; 3 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %.056.i.i66
  store float %.sink71.i.i69, ptr %i.aim, align 4, !tbaa !46
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %.056.i.i66
  store i64 %.sink.i.i70, ptr %i.ain, align 8, !tbaa !76
  %i.aio = shl i64 %.1.i.i71, 1                   ; 3 uses
  %i.aip = or disjoint i64 %i.aio, 1
  %i.aiq = icmp ugt i64 %i.aio, %i.rw
  br i1 %i.aiq, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, label %.lr.ph.i59.i65, !llvm.loop !201

_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72: ; preds = %bb.bb, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i68, %bb.ba, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i75, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i74, %bb.ay
  %.0.lcssa.i.i73 = phi i64 [ 1, %bb.ay ], [ %.056.i.i66, %bb.ba ], [ %.056.i.i66, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i74 ], [ %.056.i.i66, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i68 ], [ %.056.i.i66, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i75 ], [ %.1.i.i71, %bb.bb ] ; 2 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %.0.lcssa.i.i73
  store float %.038.lcssa.i63, ptr %i.air, align 4, !tbaa !46
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %.0.lcssa.i.i73
  store i64 %.03917.i51, ptr %i.ais, align 8, !tbaa !76
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i72, %._crit_edge.i61
  %i.ait = add nuw i64 %.03917.i51, 1             ; 2 uses
  %exitcond32.not.i64 = icmp eq i64 %i.ait, %i.rv
  br i1 %exitcond32.not.i64, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.preheader.i50, !llvm.loop !222

bb.bd:                                            ; preds = %_ZN5faiss12heap_heapifyINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit
  %i.aiu = load ptr, ptr %10, align 8, !tbaa !74
  %i.aiv = load i64, ptr %11, align 8, !tbaa !76  ; 2 uses
  %i.aiw = load i64, ptr %7, align 8, !tbaa !76   ; 4 uses
  %i.aix = load i64, ptr %i.l, align 8, !tbaa !38 ; 2 uses
  %i.aiy = load i64, ptr %i.m, align 8, !tbaa !40
  %.not.i165 = icmp eq i64 %i.aiv, 0
  br i1 %.not.i165, label %_ZN5faiss12_GLOBAL__N_125pq_estimators_from_tablesIhNS_4CMinIflEEEEvRKNS_16ProductQuantizerEPKT_mPKfmPfPl.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %bb.bd
  %i.aiz = trunc i64 %i.ao to i32
  %i.aja = and i64 %i.ao, 4294967295
  %notmask.i.i = shl nsw i64 -1, %i.aja
  %i.ajb = xor i64 %notmask.i.i, -1
  %.not46.i = icmp eq i64 %i.aix, 0
  %i.ajc = trunc i64 %i.ao to i8
  %i.ajd = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.aje = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 4 uses
  %i.ajf = icmp ult i64 %i.aiw, 2
  %.phi.trans.insert.i27.i = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %i.aiw
  br label %bb.be

bb.be:                                            ; preds = %bb.bn, %.lr.ph44.i
  %.02640.i = phi i64 [ 0, %.lr.ph44.i ], [ %i.and, %bb.bn ] ; 5 uses
  br i1 %.not46.i, label %._crit_edge.i168, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.be
  %i.ajg = load i64, ptr %i.n, align 8, !tbaa !75
  %i.ajh = mul i64 %i.ajg, %.02640.i
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aiu, i64 %i.ajh
  br label %.lr.ph.i166

._crit_edge.i168:                                 ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i, %bb.be
  %.025.lcssa.i = phi float [ 0.000000e+00, %bb.be ], [ %i.alt, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ] ; 6 uses
  %i.ajj = load float, ptr %i.ac, align 4, !tbaa !46
  %i.ajk = fcmp olt float %i.ajj, %.025.lcssa.i
  br i1 %i.ajk, label %bb.bj, label %bb.bn

.lr.ph.i166:                                      ; preds = %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i, %.lr.ph.preheader.i
  %.039.i = phi i64 [ %i.alv, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %.02438.i = phi ptr [ %i.alu, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ %i.t, %.lr.ph.preheader.i ] ; 2 uses
  %.02537.i = phi float [ %i.alt, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %.sroa.0.036.i = phi ptr [ %.sroa.0.2.i, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ %i.aji, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.035.i = phi i8 [ %.sroa.7.1.i, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.15.034.i = phi i8 [ %.sroa.15.2.i, %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %i.ajl = icmp eq i8 %.sroa.7.035.i, 0
  br i1 %i.ajl, label %bb.bf, label %._crit_edge16.i.i

bb.bf:                                            ; preds = %.lr.ph.i166
  %i.ajm = load i8, ptr %.sroa.0.036.i, align 1, !tbaa !62
  br label %._crit_edge16.i.i

._crit_edge16.i.i:                                ; preds = %bb.bf, %.lr.ph.i166
  %.sroa.15.1.i = phi i8 [ %i.ajm, %bb.bf ], [ %.sroa.15.034.i, %.lr.ph.i166 ] ; 3 uses
  %i.ajn = zext i8 %.sroa.15.1.i to i32
  %i.ajo = zext i8 %.sroa.7.035.i to i32          ; 3 uses
  %i.ajp = lshr i32 %i.ajn, %i.ajo
  %i.ajq = zext nneg i32 %i.ajp to i64            ; 4 uses
  %i.ajr = add i32 %i.ajo, %i.aiz                 ; 4 uses
  %i.ajs = icmp sgt i32 %i.ajr, 7
  br i1 %i.ajs, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %._crit_edge16.i.i
  %i.ajt = sub nsw i32 8, %i.ajo
  %i.aju = sext i32 %i.ajt to i64                 ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 1 ; 3 uses
  %i.ajw = add nsw i32 %i.ajr, -8
  %i.ajx = lshr i32 %i.ajw, 3                     ; 4 uses
  %i.ajy = icmp samesign ugt i32 %i.ajr, 15
  br i1 %i.ajy, label %.lr.ph.i.i182.preheader, label %._crit_edge.i.i

.lr.ph.i.i182.preheader:                          ; preds = %bb.bg
  %i.ajz = add nsw i32 %i.ajx, -1
  %xtraiter521 = and i32 %i.ajx, 3                ; 3 uses
  %i.aka = icmp ult i32 %i.ajz, 3
  br i1 %i.aka, label %.lr.ph.i.i182.epil.preheader, label %.lr.ph.i.i182.preheader.new

.lr.ph.i.i182.preheader.new:                      ; preds = %.lr.ph.i.i182.preheader
  %unroll_iter529 = and i32 %i.ajx, 536870908
  br label %.lr.ph.i.i182

._crit_edge.i.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i.i182
  %lcmp.mod525.not = icmp eq i32 %xtraiter521, 0
  br i1 %lcmp.mod525.not, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i182.epil.preheader

.lr.ph.i.i182.epil.preheader:                     ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i182.preheader
  %.epil.init524 = phi ptr [ %i.ajv, %.lr.ph.i.i182.preheader ], [ %i.alf, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %.0812.i.i.epil.init = phi i64 [ %i.aju, %.lr.ph.i.i182.preheader ], [ %i.alk, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %.0911.i.i.epil.init = phi i64 [ %i.ajq, %.lr.ph.i.i182.preheader ], [ %i.alj, %._crit_edge.i.loopexit.i.unr-lcssa ]
  %lcmp.mod528 = icmp ne i32 %xtraiter521, 0
  call void @llvm.assume(i1 %lcmp.mod528)
  br label %.lr.ph.i.i182.epil

.lr.ph.i.i182.epil:                               ; preds = %.lr.ph.i.i182.epil, %.lr.ph.i.i182.epil.preheader
  %i.akb = phi ptr [ %i.akc, %.lr.ph.i.i182.epil ], [ %.epil.init524, %.lr.ph.i.i182.epil.preheader ] ; 2 uses
  %.0812.i.i.epil = phi i64 [ %i.akh, %.lr.ph.i.i182.epil ], [ %.0812.i.i.epil.init, %.lr.ph.i.i182.epil.preheader ] ; 2 uses
  %.0911.i.i.epil = phi i64 [ %i.akg, %.lr.ph.i.i182.epil ], [ %.0911.i.i.epil.init, %.lr.ph.i.i182.epil.preheader ]
  %epil.iter522 = phi i32 [ %epil.iter522.next, %.lr.ph.i.i182.epil ], [ 0, %.lr.ph.i.i182.epil.preheader ]
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 1
  %i.akd = load i8, ptr %i.akb, align 1, !tbaa !62
  %i.ake = zext i8 %i.akd to i64
  %i.akf = shl i64 %i.ake, %.0812.i.i.epil
  %i.akg = or i64 %i.akf, %.0911.i.i.epil         ; 2 uses
  %i.akh = add nsw i64 %.0812.i.i.epil, 8         ; 2 uses
  %epil.iter522.next = add i32 %epil.iter522, 1   ; 2 uses
  %epil.iter522.cmp.not = icmp eq i32 %epil.iter522.next, %xtraiter521
  br i1 %epil.iter522.cmp.not, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i182.epil, !llvm.loop !223

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i182.epil, %._crit_edge.i.loopexit.i.unr-lcssa
  %.lcssa461 = phi i64 [ %i.alj, %._crit_edge.i.loopexit.i.unr-lcssa ], [ %i.akg, %.lr.ph.i.i182.epil ]
  %.lcssa460 = phi i64 [ %i.alk, %._crit_edge.i.loopexit.i.unr-lcssa ], [ %i.akh, %.lr.ph.i.i182.epil ]
  %i.aki = zext nneg i32 %i.ajx to i64
  %i.akj = getelementptr i8, ptr %.sroa.0.036.i, i64 %i.aki
  %scevgep50.i = getelementptr i8, ptr %i.akj, i64 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %bb.bg
  %.sroa.0.1.i = phi ptr [ %i.ajv, %bb.bg ], [ %scevgep50.i, %._crit_edge.i.loopexit.i ] ; 3 uses
  %.09.lcssa.i.i = phi i64 [ %i.ajq, %bb.bg ], [ %.lcssa461, %._crit_edge.i.loopexit.i ] ; 2 uses
  %.08.lcssa.i.i = phi i64 [ %i.aju, %bb.bg ], [ %.lcssa460, %._crit_edge.i.loopexit.i ]
  %i.akk = add i8 %.sroa.7.035.i, %i.ajc
  %i.akl = and i8 %i.akk, 7                       ; 2 uses
  %.not.i.i181 = icmp eq i8 %i.akl, 0
  br i1 %.not.i.i181, label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i, label %bb.bh

.lr.ph.i.i182:                                    ; preds = %.lr.ph.i.i182, %.lr.ph.i.i182.preheader.new
  %i.akm = phi ptr [ %i.ajv, %.lr.ph.i.i182.preheader.new ], [ %i.alf, %.lr.ph.i.i182 ] ; 5 uses
  %.0812.i.i = phi i64 [ %i.aju, %.lr.ph.i.i182.preheader.new ], [ %i.alk, %.lr.ph.i.i182 ] ; 5 uses
  %.0911.i.i = phi i64 [ %i.ajq, %.lr.ph.i.i182.preheader.new ], [ %i.alj, %.lr.ph.i.i182 ]
  %niter530 = phi i32 [ 0, %.lr.ph.i.i182.preheader.new ], [ %niter530.next.3, %.lr.ph.i.i182 ]
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 1
  %i.ako = load i8, ptr %i.akm, align 1, !tbaa !62
  %i.akp = zext i8 %i.ako to i64
  %i.akq = shl i64 %i.akp, %.0812.i.i
  %i.akr = or i64 %i.akq, %.0911.i.i
  %i.aks = add nsw i64 %.0812.i.i, 8
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akm, i64 2
  %i.aku = load i8, ptr %i.akn, align 1, !tbaa !62
  %i.akv = zext i8 %i.aku to i64
  %i.akw = shl i64 %i.akv, %i.aks
  %i.akx = or i64 %i.akw, %i.akr
  %i.aky = add nsw i64 %.0812.i.i, 16
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akm, i64 3
  %i.ala = load i8, ptr %i.akt, align 1, !tbaa !62
  %i.alb = zext i8 %i.ala to i64
  %i.alc = shl i64 %i.alb, %i.aky
  %i.ald = or i64 %i.alc, %i.akx
  %i.ale = add nsw i64 %.0812.i.i, 24
  %i.alf = getelementptr inbounds nuw i8, ptr %i.akm, i64 4 ; 2 uses
  %i.alg = load i8, ptr %i.akz, align 1, !tbaa !62
  %i.alh = zext i8 %i.alg to i64
  %i.ali = shl i64 %i.alh, %i.ale
  %i.alj = or i64 %i.ali, %i.ald                  ; 3 uses
  %i.alk = add nsw i64 %.0812.i.i, 32             ; 3 uses
  %niter530.next.3 = add i32 %niter530, 4         ; 2 uses
  %niter530.ncmp.3 = icmp eq i32 %niter530.next.3, %unroll_iter529
  br i1 %niter530.ncmp.3, label %._crit_edge.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i182, !llvm.loop !1

bb.bh:                                            ; preds = %._crit_edge.i.i
  %i.all = load i8, ptr %.sroa.0.1.i, align 1, !tbaa !62 ; 2 uses
  %i.alm = zext i8 %i.all to i64
  %i.aln = shl i64 %i.alm, %.08.lcssa.i.i
  %i.alo = or i64 %i.aln, %.09.lcssa.i.i
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i

bb.bi:                                            ; preds = %._crit_edge16.i.i
  %i.alp = trunc i32 %i.ajr to i8
  br label %_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i

_ZN5faiss16PQDecoderGeneric6decodeEv.exit.i:      ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i
  %.sroa.15.2.i = phi i8 [ %.sroa.15.1.i, %._crit_edge.i.i ], [ %i.all, %bb.bh ], [ %.sroa.15.1.i, %bb.bi ]
  %.sroa.7.1.i = phi i8 [ 0, %._crit_edge.i.i ], [ %i.akl, %bb.bh ], [ %i.alp, %bb.bi ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.1.i, %._crit_edge.i.i ], [ %.sroa.0.1.i, %bb.bh ], [ %.sroa.0.036.i, %bb.bi ]
  %.2.i.i = phi i64 [ %.09.lcssa.i.i, %._crit_edge.i.i ], [ %i.alo, %bb.bh ], [ %i.ajq, %bb.bi ]
  %i.alq = and i64 %.2.i.i, %i.ajb
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %.02438.i, i64 %i.alq
  %i.als = load float, ptr %i.alr, align 4, !tbaa !46
  %i.alt = fadd float %.02537.i, %i.als           ; 2 uses
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %.02438.i, i64 %i.aiy
  %i.alv = add nuw i64 %.039.i, 1                 ; 2 uses
  %exitcond.not.i167 = icmp eq i64 %i.alv, %i.aix
  br i1 %exitcond.not.i167, label %._crit_edge.i168, label %.lr.ph.i166, !llvm.loop !224

bb.bj:                                            ; preds = %._crit_edge.i168
  br i1 %i.ajf, label %_ZN5faiss16heap_replace_topINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i176, label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %bb.bj, %bb.bm
  %i.alw = phi i64 [ %i.amz, %bb.bm ], [ 3, %bb.bj ]
  %i.alx = phi i64 [ %i.amy, %bb.bm ], [ 2, %bb.bj ] ; 7 uses
  %.056.i.i170 = phi i64 [ %.1.i.i175, %bb.bm ], [ 1, %bb.bj ] ; 6 uses
  %i.aly = icmp eq i64 %i.alx, %i.aiw
end_hunk_5
