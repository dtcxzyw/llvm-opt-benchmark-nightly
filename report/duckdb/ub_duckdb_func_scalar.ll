inline.NumInlined: 4066
inline.NumDeleted: 1630
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm:bb.a
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 8
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i64, ptr %i.bq, align 8, !tbaa !14
  store i64 %i.ct, ptr %i.ce, align 8, !tbaa !14
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 8
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !147

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 8
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i64, ptr %1, align 8, !tbaa !14
  store i64 %i.cy, ptr %i.cu, align 8, !tbaa !14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bq) #30
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !39
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !728
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.da, ptr %i.a, align 8, !tbaa !727
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr nofree noundef readonly byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(25) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %4 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %6 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 8 uses
  %.sroa.9 = alloca [7 x i8], align 1             ; 4 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %9 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.a = getelementptr i8, ptr %.val, i64 9
  %.val.val = load i8, ptr %i.a, align 1, !tbaa !67
  switch i8 %.val.val, label %bb.om [
    i8 1, label %bb.b
    i8 2, label %bb.aa
    i8 3, label %bb.az
    i8 4, label %bb.by
    i8 5, label %bb.cs
    i8 6, label %bb.dm
    i8 7, label %bb.eg
    i8 8, label %bb.fa
    i8 9, label %bb.fu
    i8 11, label %bb.go
    i8 12, label %bb.hy
    i8 21, label %bb.ji
    i8 -53, label %bb.kc
    i8 -52, label %bb.kw
    i8 -56, label %bb.lq
    i8 24, label %bb.nr
    i8 23, label %bb.nz
    i8 29, label %bb.og
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.0896.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 10 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %i.b = icmp eq i64 %.sroa.0896.0.copyload, %.sroa.2.0.copyload
  br i1 %i.b, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4897.0.copyload = load i8, ptr %.sroa.4897.0..sroa_idx, align 8, !tbaa !189
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = trunc nuw i8 %.sroa.4897.0.copyload to i1 ; 4 uses
  br i1 %.not.i.i, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !699
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158
  %.not55.i = icmp eq ptr %i.h, null
  br i1 %.not55.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !333
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.m = icmp ult i64 %.sroa.0896.0.copyload, %.sroa.2.0.copyload
  br i1 %i.m, label %.lr.ph3.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph3.i.i:                                      ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i.i, %.lr.ph3.i.i
  %.0282.i.i = phi i64 [ %.sroa.0896.0.copyload, %.lr.ph3.i.i ], [ %i.ao, %.loopexit.i.i ] ; 4 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0282.i.i ; 6 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !100
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0282.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88   ; 3 uses
  %i.v = load i8, ptr %i.o, align 1, !tbaa !738
  %i.w = load i64, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.r, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  store i8 %i.v, ptr %i.y, align 1, !tbaa !18
  %i.z = load i64, ptr %i.r, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %.0282.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !189, !range !187, !noundef !188
  store i8 %i.ac, ptr %i.aa, align 1
  %i.ad = load i8, ptr %i.p, align 8, !tbaa !108, !range !187, !noundef !188
  %i.ae = trunc nuw i8 %i.ad to i1
  %.pre.i.i = load i64, ptr %i.r, align 8, !tbaa !14 ; 3 uses
  br i1 %i.ae, label %bb.h, label %.loopexit.i.i

bb.h:                                             ; preds = %bb.g
  %.not.i14.i = icmp eq i64 %.pre.i.i, -1
  br i1 %.not.i14.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.01.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.pre.i.i, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %.01.i.i ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18
  %i.ah = xor i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !18
  %i.ai = add nuw i64 %.01.i.i, 1                 ; 2 uses
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !14  ; 2 uses
  %i.ak = add i64 %i.aj, 1
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !739

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.h, %bb.g
  %i.am = phi i64 [ %.pre.i.i, %bb.g ], [ -1, %bb.h ], [ %i.aj, %.lr.ph.i.i ]
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.r, align 8, !tbaa !14
  %i.ao = add nuw i64 %.0282.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %.sroa.2.0.copyload
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.g, !llvm.loop !740

bb.i:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.c)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !333 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !737, !nonnull !188, !align !280 ; 2 uses
  %i.at = icmp ult i64 %.sroa.0896.0.copyload, %.sroa.2.0.copyload
  br i1 %i.at, label %.lr.ph33.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph33.i.i:                                     ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br i1 %i.f, label %.lr.ph33.split.us.i.i, label %.lr.ph33.split.i.i

.lr.ph33.split.us.i.i:                            ; preds = %.lr.ph33.i.i, %.loopexit.us.i.i.a
  %.02932.us.i.i = phi i64 [ %i.bt, %.loopexit.us.i.i.a ], [ %.sroa.0896.0.copyload, %.lr.ph33.i.i ] ; 3 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !699
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !158 ; 2 uses
  %.not.i.us.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.us.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph33.split.us.i.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.02932.us.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i: ; preds = %bb.j, %.lr.ph33.split.us.i.i
  %i.bc = phi i64 [ %i.bb, %bb.j ], [ %.02932.us.i.i, %.lr.ph33.split.us.i.i ]
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.3.0.copyload ; 6 uses
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.sroa.3.0.copyload
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !88 ; 3 uses
  %i.bi = load i8, ptr %i.av, align 1, !tbaa !738
  %i.bj = load i64, ptr %i.be, align 8, !tbaa !14 ; 2 uses
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !18
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bc
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !189, !range !187, !noundef !188
  store i8 %i.bp, ptr %i.bn, align 1
  %i.bq = load i8, ptr %i.aw, align 8, !tbaa !108, !range !187, !noundef !188
  %i.br = trunc nuw i8 %i.bq to i1
  %.pre37.i.i = load i64, ptr %i.be, align 8, !tbaa !14 ; 3 uses
  br i1 %i.br, label %bb.k, label %.loopexit.us.i.i.a

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %.not34.i.i = icmp eq i64 %.pre37.i.i, -1
  br i1 %.not34.i.i, label %.loopexit.us.i.i.a, label %.lr.ph.us.i.i

.loopexit.us.i.i.a:                               ; preds = %.lr.ph.us.i.i, %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %17 = phi i64 [ %.pre37.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i ], [ -1, %bb.k ], [ %21, %.lr.ph.us.i.i ]
  %i.bs = add i64 %17, 1
  store i64 %i.bs, ptr %i.be, align 8, !tbaa !14
  %i.bt = add nuw i64 %.02932.us.i.i, 1           ; 2 uses
  %exitcond36.not.i.i = icmp eq i64 %i.bt, %.sroa.2.0.copyload
  br i1 %exitcond36.not.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.us.i.i, !llvm.loop !741

.lr.ph.us.i.i:                                    ; preds = %bb.k, %.lr.ph.us.i.i
  %.031.us.i.i = phi i64 [ %i.bu, %.lr.ph.us.i.i ], [ %.pre37.i.i, %bb.k ] ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.031.us.i.i ; 2 uses
  %19 = load i8, ptr %18, align 1, !tbaa !18
  %20 = xor i8 %19, -1
  store i8 %20, ptr %18, align 1, !tbaa !18
  %i.bu = add nuw i64 %.031.us.i.i, 1             ; 2 uses
  %21 = load i64, ptr %i.be, align 8, !tbaa !14   ; 2 uses
  %i.bv = add i64 %21, 1
  %22 = icmp ult i64 %i.bu, %i.bv
  br i1 %22, label %.lr.ph.us.i.i, label %.loopexit.us.i.i.a, !llvm.loop !742

.lr.ph33.split.i.i:                               ; preds = %.lr.ph33.i.i, %.loopexit.i16.i
  %.02932.i.i = phi i64 [ %i.da, %.loopexit.i16.i ], [ %.sroa.0896.0.copyload, %.lr.ph33.i.i ] ; 5 uses
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !699
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph33.split.i.i
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.02932.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.l, %.lr.ph33.split.i.i
  %i.cb = phi i64 [ %i.ca, %bb.l ], [ %.02932.i.i, %.lr.ph33.split.i.i ]
  %i.cc = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.02932.i.i ; 6 uses
  %i.ce = load ptr, ptr %i.au, align 8, !tbaa !100
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.02932.i.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !88 ; 3 uses
  %i.ch = load i8, ptr %i.av, align 1, !tbaa !738
  %i.ci = load i64, ptr %i.cd, align 8, !tbaa !14 ; 2 uses
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.cd, align 8, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !18
  %i.cl = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cb
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !189, !range !187, !noundef !188
  store i8 %i.co, ptr %i.cm, align 1
  %i.cp = load i8, ptr %i.aw, align 8, !tbaa !108, !range !187, !noundef !188
  %i.cq = trunc nuw i8 %i.cp to i1
  %.pre.i15.i = load i64, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  br i1 %i.cq, label %bb.m, label %.loopexit.i16.i

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %.not.i18.i = icmp eq i64 %.pre.i15.i, -1
  br i1 %.not.i18.i, label %.loopexit.i16.i, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %bb.m, %.lr.ph.i19.i
  %.031.i.i = phi i64 [ %i.cu, %.lr.ph.i19.i ], [ %.pre.i15.i, %bb.m ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.031.i.i ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !18
  %i.ct = xor i8 %i.cs, -1
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !18
  %i.cu = add nuw i64 %.031.i.i, 1                ; 2 uses
  %i.cv = load i64, ptr %i.cd, align 8, !tbaa !14 ; 2 uses
  %i.cw = add i64 %i.cv, 1
  %i.cx = icmp ult i64 %i.cu, %i.cw
  br i1 %i.cx, label %.lr.ph.i19.i, label %.loopexit.i16.i, !llvm.loop !742

.loopexit.i16.i:                                  ; preds = %.lr.ph.i19.i, %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.cy = phi i64 [ %.pre.i15.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ], [ -1, %bb.m ], [ %i.cv, %.lr.ph.i19.i ]
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.cd, align 8, !tbaa !14
  %i.da = add nuw i64 %.02932.i.i, 1              ; 2 uses
  %exitcond.not.i17.i = icmp eq i64 %i.da, %.sroa.2.0.copyload
  br i1 %exitcond.not.i17.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.i.i, !llvm.loop !741

bb.n:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !699
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !158
  %.not.i = icmp eq ptr %i.dc, null
  br i1 %.not.i, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.c)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !333
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.dh = icmp ult i64 %.sroa.0896.0.copyload, %.sroa.2.0.copyload
  br i1 %i.dh, label %.lr.ph4.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph4.i.i:                                      ; preds = %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph4.i.i
  %.0333.i.i = phi i64 [ %.sroa.0896.0.copyload, %.lr.ph4.i.i ], [ %i.ev, %bb.t ] ; 6 uses
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !39
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.0333.i.i ; 8 uses
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !100
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0333.i.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !88 ; 4 uses
  %i.dr = load ptr, ptr %i.d, align 8, !tbaa !159 ; 2 uses
  %.not.i.i20.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i20.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %bb.q
  %i.ds = lshr i64 %.0333.i.i, 6
  %i.dt = and i64 %.0333.i.i, 63
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ds
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !14
  %i.dw = shl nuw i64 1, %i.dt
  %i.dx = and i64 %i.dv, %i.dw
  %.not.i21.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i21.i, label %bb.r, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i

bb.r:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.dy = load i8, ptr %i.dj, align 8, !tbaa !743
  %i.dz = load i64, ptr %i.dn, align 8, !tbaa !14 ; 2 uses
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.dn, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dz
  store i8 %i.dy, ptr %i.eb, align 1, !tbaa !18
  br label %bb.t

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, %bb.q
  %i.ec = load i8, ptr %i.dk, align 1, !tbaa !738
  %i.ed = load i64, ptr %i.dn, align 8, !tbaa !14 ; 2 uses
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.dn, align 8, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ed
  store i8 %i.ec, ptr %i.ef, align 1, !tbaa !18
  %i.eg = load i64, ptr %i.dn, align 8, !tbaa !14
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.de, i64 %.0333.i.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !189, !range !187, !noundef !188
  store i8 %i.ej, ptr %i.eh, align 1
  %i.ek = load i8, ptr %i.dl, align 8, !tbaa !108, !range !187, !noundef !188
  %i.el = trunc nuw i8 %i.ek to i1
  %.pre.i22.i = load i64, ptr %i.dn, align 8, !tbaa !14 ; 3 uses
  br i1 %i.el, label %bb.s, label %.loopexit.i23.i

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i
  %.not5.i.i = icmp eq i64 %.pre.i22.i, -1
  br i1 %.not5.i.i, label %.loopexit.i23.i, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %bb.s, %.lr.ph.i25.i
  %.02.i.i = phi i64 [ %i.ep, %.lr.ph.i25.i ], [ %.pre.i22.i, %bb.s ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.02.i.i ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !18
  %i.eo = xor i8 %i.en, -1
  store i8 %i.eo, ptr %i.em, align 1, !tbaa !18
  %i.ep = add nuw i64 %.02.i.i, 1                 ; 2 uses
  %i.eq = load i64, ptr %i.dn, align 8, !tbaa !14 ; 2 uses
  %i.er = add i64 %i.eq, 1
  %i.es = icmp ult i64 %i.ep, %i.er
  br i1 %i.es, label %.lr.ph.i25.i, label %.loopexit.i23.i, !llvm.loop !744

.loopexit.i23.i:                                  ; preds = %.lr.ph.i25.i, %bb.s, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i
  %i.et = phi i64 [ %.pre.i22.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i ], [ -1, %bb.s ], [ %i.eq, %.lr.ph.i25.i ]
  %i.eu = add i64 %i.et, 1
  store i64 %i.eu, ptr %i.dn, align 8, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i23.i, %bb.r
  %i.ev = add nuw i64 %.0333.i.i, 1               ; 2 uses
  %exitcond.not.i24.i = icmp eq i64 %i.ev, %.sroa.2.0.copyload
  br i1 %exitcond.not.i24.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.q, !llvm.loop !745

bb.u:                                             ; preds = %bb.o, %bb.n
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.c)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !333
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.fa = icmp ult i64 %.sroa.0896.0.copyload, %.sroa.2.0.copyload
  br i1 %i.fa, label %.lr.ph40.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph40.i.i:                                     ; preds = %bb.u
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph40.i.i
  %.03439.i.i = phi i64 [ %.sroa.0896.0.copyload, %.lr.ph40.i.i ], [ %i.gv, %bb.z ] ; 4 uses
  %i.ff = select i1 %i.f, i64 %.sroa.3.0.copyload, i64 %.03439.i.i ; 2 uses
  %i.fg = load ptr, ptr %i.c, align 8, !tbaa !699
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !158 ; 2 uses
  %.not.i.i27.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i27.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.03439.i.i
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = zext i32 %i.fj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i: ; preds = %bb.w, %bb.v
  %i.fl = phi i64 [ %i.fk, %bb.w ], [ %.03439.i.i, %bb.v ] ; 3 uses
  %i.fm = load ptr, ptr %i.ez, align 8, !tbaa !39
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ff ; 8 uses
  %i.fo = load ptr, ptr %i.fb, align 8, !tbaa !100
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.ff
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !88 ; 4 uses
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !159 ; 2 uses
  %.not.i36.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i36.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i
  %i.fs = lshr i64 %i.fl, 6
  %i.ft = and i64 %i.fl, 63
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !14
  %i.fw = shl nuw i64 1, %i.ft
  %i.fx = and i64 %i.fv, %i.fw
  %.not.i30.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i30.i, label %bb.x, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i

bb.x:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i
  %i.fy = load i8, ptr %i.fc, align 8, !tbaa !743
  %i.fz = load i64, ptr %i.fn, align 8, !tbaa !14 ; 2 uses
  %i.ga = add i64 %i.fz, 1
  store i64 %i.ga, ptr %i.fn, align 8, !tbaa !14
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fz
  store i8 %i.fy, ptr %i.gb, align 1, !tbaa !18
  br label %bb.z

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i
  %i.gc = load i8, ptr %i.fd, align 1, !tbaa !738
  %i.gd = load i64, ptr %i.fn, align 8, !tbaa !14 ; 2 uses
  %i.ge = add i64 %i.gd, 1
  store i64 %i.ge, ptr %i.fn, align 8, !tbaa !14
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gd
  store i8 %i.gc, ptr %i.gf, align 1, !tbaa !18
  %i.gg = load i64, ptr %i.fn, align 8, !tbaa !14
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fl
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !189, !range !187, !noundef !188
  store i8 %i.gj, ptr %i.gh, align 1
  %i.gk = load i8, ptr %i.fe, align 8, !tbaa !108, !range !187, !noundef !188
  %i.gl = trunc nuw i8 %i.gk to i1
  %.pre.i32.i = load i64, ptr %i.fn, align 8, !tbaa !14 ; 3 uses
  br i1 %i.gl, label %bb.y, label %.loopexit.i33.i

bb.y:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i
  %.not41.i.i = icmp eq i64 %.pre.i32.i, -1
  br i1 %.not41.i.i, label %.loopexit.i33.i, label %.lr.ph.i35.i

.lr.ph.i35.i:                                     ; preds = %bb.y, %.lr.ph.i35.i
  %.038.i.i = phi i64 [ %i.gp, %.lr.ph.i35.i ], [ %.pre.i32.i, %bb.y ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.038.i.i ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !18
  %i.go = xor i8 %i.gn, -1
  store i8 %i.go, ptr %i.gm, align 1, !tbaa !18
  %i.gp = add nuw i64 %.038.i.i, 1                ; 2 uses
  %i.gq = load i64, ptr %i.fn, align 8, !tbaa !14 ; 2 uses
  %i.gr = add i64 %i.gq, 1
  %i.gs = icmp ult i64 %i.gp, %i.gr
  br i1 %i.gs, label %.lr.ph.i35.i, label %.loopexit.i33.i, !llvm.loop !746

.loopexit.i33.i:                                  ; preds = %.lr.ph.i35.i, %bb.y, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i
  %i.gt = phi i64 [ %.pre.i32.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i ], [ -1, %bb.y ], [ %i.gq, %.lr.ph.i35.i ]
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.fn, align 8, !tbaa !14
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.i33.i, %bb.x
  %i.gv = add nuw i64 %.03439.i.i, 1              ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %i.gv, %.sroa.2.0.copyload
  br i1 %exitcond.not.i34.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.v, !llvm.loop !747

bb.aa:                                            ; preds = %bb.a
  %.sroa.0904.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 10 uses
  %.sroa.2905.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2905.0.copyload = load i64, ptr %.sroa.2905.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3906.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3906.0.copyload = load i64, ptr %.sroa.3906.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %i.gw = icmp eq i64 %.sroa.0904.0.copyload, %.sroa.2905.0.copyload
  br i1 %i.gw, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.4907.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4907.0.copyload = load i8, ptr %.sroa.4907.0..sroa_idx, align 8, !tbaa !189
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !159
  %.not.i.i46 = icmp eq ptr %i.gz, null
  %i.ha = trunc nuw i8 %.sroa.4907.0.copyload to i1 ; 4 uses
  br i1 %.not.i.i46, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ha, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hb = load ptr, ptr %i.gx, align 8, !tbaa !699
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !158
  %.not55.i76 = icmp eq ptr %i.hc, null
  br i1 %.not55.i76, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.gx)
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !333
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.hh = icmp ult i64 %.sroa.0904.0.copyload, %.sroa.2905.0.copyload
  br i1 %i.hh, label %.lr.ph3.i.i100, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph3.i.i100:                                   ; preds = %bb.ae
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.i.i103, %.lr.ph3.i.i100
  %.0282.i.i101 = phi i64 [ %.sroa.0904.0.copyload, %.lr.ph3.i.i100 ], [ %i.ij, %.loopexit.i.i103 ] ; 4 uses
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !39
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %.0282.i.i101 ; 6 uses
  %i.hn = load ptr, ptr %i.hi, align 8, !tbaa !100
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.0282.i.i101
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !88 ; 3 uses
  %i.hq = load i8, ptr %i.hj, align 1, !tbaa !738
  %i.hr = load i64, ptr %i.hm, align 8, !tbaa !14 ; 2 uses
  %i.hs = add i64 %i.hr, 1
  store i64 %i.hs, ptr %i.hm, align 8, !tbaa !14
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hr
  store i8 %i.hq, ptr %i.ht, align 1, !tbaa !18
  %i.hu = load i64, ptr %i.hm, align 8, !tbaa !14
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.he, i64 %.0282.i.i101
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !18
  store i8 %i.hx, ptr %i.hv, align 1
  %i.hy = load i8, ptr %i.hk, align 8, !tbaa !108, !range !187, !noundef !188
  %i.hz = trunc nuw i8 %i.hy to i1
  %.pre.i.i102 = load i64, ptr %i.hm, align 8, !tbaa !14 ; 3 uses
  br i1 %i.hz, label %bb.ag, label %.loopexit.i.i103

bb.ag:                                            ; preds = %bb.af
  %.not.i14.i105 = icmp eq i64 %.pre.i.i102, -1
  br i1 %.not.i14.i105, label %.loopexit.i.i103, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %bb.ag, %.lr.ph.i.i106
  %.01.i.i107 = phi i64 [ %i.id, %.lr.ph.i.i106 ], [ %.pre.i.i102, %bb.ag ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.01.i.i107 ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !18
  %i.ic = xor i8 %i.ib, -1
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !18
  %i.id = add nuw i64 %.01.i.i107, 1              ; 2 uses
  %i.ie = load i64, ptr %i.hm, align 8, !tbaa !14 ; 2 uses
  %i.if = add i64 %i.ie, 1
  %i.ig = icmp ult i64 %i.id, %i.if
  br i1 %i.ig, label %.lr.ph.i.i106, label %.loopexit.i.i103, !llvm.loop !748

.loopexit.i.i103:                                 ; preds = %.lr.ph.i.i106, %bb.ag, %bb.af
  %i.ih = phi i64 [ %.pre.i.i102, %bb.af ], [ -1, %bb.ag ], [ %i.ie, %.lr.ph.i.i106 ]
  %i.ii = add i64 %i.ih, 1
  store i64 %i.ii, ptr %i.hm, align 8, !tbaa !14
  %i.ij = add nuw i64 %.0282.i.i101, 1            ; 2 uses
  %exitcond.not.i.i104 = icmp eq i64 %i.ij, %.sroa.2905.0.copyload
  br i1 %exitcond.not.i.i104, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.af, !llvm.loop !749

bb.ah:                                            ; preds = %bb.ad, %bb.ac
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.gx)
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !333 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !737, !nonnull !188, !align !280 ; 2 uses
  %i.io = icmp ult i64 %.sroa.0904.0.copyload, %.sroa.2905.0.copyload
  br i1 %i.io, label %.lr.ph33.i.i79, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph33.i.i79:                                   ; preds = %bb.ah
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br i1 %i.ha, label %.lr.ph33.split.us.i.i90, label %.lr.ph33.split.i.i80

.lr.ph33.split.us.i.i90:                          ; preds = %.lr.ph33.i.i79, %.loopexit.us.i.i95.a
  %.02932.us.i.i91 = phi i64 [ %i.jo, %.loopexit.us.i.i95.a ], [ %.sroa.0904.0.copyload, %.lr.ph33.i.i79 ] ; 3 uses
  %i.is = load ptr, ptr %i.gx, align 8, !tbaa !699
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !158 ; 2 uses
  %.not.i.us.i.i92 = icmp eq ptr %i.it, null
  br i1 %.not.i.us.i.i92, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i93, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph33.split.us.i.i90
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %.02932.us.i.i91
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !3
  %i.iw = zext i32 %i.iv to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i93

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i93: ; preds = %bb.ai, %.lr.ph33.split.us.i.i90
  %i.ix = phi i64 [ %i.iw, %bb.ai ], [ %.02932.us.i.i91, %.lr.ph33.split.us.i.i90 ]
  %i.iy = load ptr, ptr %i.in, align 8, !tbaa !39
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.sroa.3906.0.copyload ; 6 uses
  %i.ja = load ptr, ptr %i.ip, align 8, !tbaa !100
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.sroa.3906.0.copyload
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !88 ; 3 uses
  %i.jd = load i8, ptr %i.iq, align 1, !tbaa !738
  %i.je = load i64, ptr %i.iz, align 8, !tbaa !14 ; 2 uses
  %i.jf = add i64 %i.je, 1
  store i64 %i.jf, ptr %i.iz, align 8, !tbaa !14
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.je
  store i8 %i.jd, ptr %i.jg, align 1, !tbaa !18
  %i.jh = load i64, ptr %i.iz, align 8, !tbaa !14
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ix
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !18
  store i8 %i.jk, ptr %i.ji, align 1
  %i.jl = load i8, ptr %i.ir, align 8, !tbaa !108, !range !187, !noundef !188
  %i.jm = trunc nuw i8 %i.jl to i1
  %.pre37.i.i94 = load i64, ptr %i.iz, align 8, !tbaa !14 ; 3 uses
  br i1 %i.jm, label %bb.aj, label %.loopexit.us.i.i95.a

bb.aj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i93
  %.not34.i.i97 = icmp eq i64 %.pre37.i.i94, -1
  br i1 %.not34.i.i97, label %.loopexit.us.i.i95.a, label %.lr.ph.us.i.i98

.loopexit.us.i.i95.a:                             ; preds = %.lr.ph.us.i.i98, %bb.aj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i93
  %23 = phi i64 [ %.pre37.i.i94, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i93 ], [ -1, %bb.aj ], [ %27, %.lr.ph.us.i.i98 ]
  %i.jn = add i64 %23, 1
  store i64 %i.jn, ptr %i.iz, align 8, !tbaa !14
  %i.jo = add nuw i64 %.02932.us.i.i91, 1         ; 2 uses
  %exitcond36.not.i.i96 = icmp eq i64 %i.jo, %.sroa.2905.0.copyload
  br i1 %exitcond36.not.i.i96, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.us.i.i90, !llvm.loop !750

.lr.ph.us.i.i98:                                  ; preds = %bb.aj, %.lr.ph.us.i.i98
  %.031.us.i.i99 = phi i64 [ %i.jp, %.lr.ph.us.i.i98 ], [ %.pre37.i.i94, %bb.aj ] ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.031.us.i.i99 ; 2 uses
  %25 = load i8, ptr %24, align 1, !tbaa !18
  %26 = xor i8 %25, -1
  store i8 %26, ptr %24, align 1, !tbaa !18
  %i.jp = add nuw i64 %.031.us.i.i99, 1           ; 2 uses
  %27 = load i64, ptr %i.iz, align 8, !tbaa !14   ; 2 uses
  %i.jq = add i64 %27, 1
  %28 = icmp ult i64 %i.jp, %i.jq
  br i1 %28, label %.lr.ph.us.i.i98, label %.loopexit.us.i.i95.a, !llvm.loop !751

.lr.ph33.split.i.i80:                             ; preds = %.lr.ph33.i.i79, %.loopexit.i16.i85
  %.02932.i.i81 = phi i64 [ %i.kv, %.loopexit.i16.i85 ], [ %.sroa.0904.0.copyload, %.lr.ph33.i.i79 ] ; 5 uses
  %i.jr = load ptr, ptr %i.gx, align 8, !tbaa !699
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i82, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i83, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph33.split.i.i80
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.02932.i.i81
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !3
  %i.jv = zext i32 %i.ju to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i83

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i83: ; preds = %bb.ak, %.lr.ph33.split.i.i80
  %i.jw = phi i64 [ %i.jv, %bb.ak ], [ %.02932.i.i81, %.lr.ph33.split.i.i80 ]
  %i.jx = load ptr, ptr %i.in, align 8, !tbaa !39
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.02932.i.i81 ; 6 uses
  %i.jz = load ptr, ptr %i.ip, align 8, !tbaa !100
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.02932.i.i81
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !88 ; 3 uses
  %i.kc = load i8, ptr %i.iq, align 1, !tbaa !738
  %i.kd = load i64, ptr %i.jy, align 8, !tbaa !14 ; 2 uses
  %i.ke = add i64 %i.kd, 1
  store i64 %i.ke, ptr %i.jy, align 8, !tbaa !14
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kd
  store i8 %i.kc, ptr %i.kf, align 1, !tbaa !18
  %i.kg = load i64, ptr %i.jy, align 8, !tbaa !14
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jw
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !18
  store i8 %i.kj, ptr %i.kh, align 1
  %i.kk = load i8, ptr %i.ir, align 8, !tbaa !108, !range !187, !noundef !188
  %i.kl = trunc nuw i8 %i.kk to i1
  %.pre.i15.i84 = load i64, ptr %i.jy, align 8, !tbaa !14 ; 3 uses
  br i1 %i.kl, label %bb.al, label %.loopexit.i16.i85

bb.al:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i83
  %.not.i18.i87 = icmp eq i64 %.pre.i15.i84, -1
  br i1 %.not.i18.i87, label %.loopexit.i16.i85, label %.lr.ph.i19.i88

.lr.ph.i19.i88:                                   ; preds = %bb.al, %.lr.ph.i19.i88
  %.031.i.i89 = phi i64 [ %i.kp, %.lr.ph.i19.i88 ], [ %.pre.i15.i84, %bb.al ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 %.031.i.i89 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !18
  %i.ko = xor i8 %i.kn, -1
  store i8 %i.ko, ptr %i.km, align 1, !tbaa !18
  %i.kp = add nuw i64 %.031.i.i89, 1              ; 2 uses
  %i.kq = load i64, ptr %i.jy, align 8, !tbaa !14 ; 2 uses
  %i.kr = add i64 %i.kq, 1
  %i.ks = icmp ult i64 %i.kp, %i.kr
  br i1 %i.ks, label %.lr.ph.i19.i88, label %.loopexit.i16.i85, !llvm.loop !751

.loopexit.i16.i85:                                ; preds = %.lr.ph.i19.i88, %bb.al, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i83
  %i.kt = phi i64 [ %.pre.i15.i84, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i83 ], [ -1, %bb.al ], [ %i.kq, %.lr.ph.i19.i88 ]
  %i.ku = add i64 %i.kt, 1
  store i64 %i.ku, ptr %i.jy, align 8, !tbaa !14
  %i.kv = add nuw i64 %.02932.i.i81, 1            ; 2 uses
  %exitcond.not.i17.i86 = icmp eq i64 %i.kv, %.sroa.2905.0.copyload
  br i1 %exitcond.not.i17.i86, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.i.i80, !llvm.loop !750

bb.am:                                            ; preds = %bb.ab
  br i1 %i.ha, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kw = load ptr, ptr %i.gx, align 8, !tbaa !699
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !158
  %.not.i47 = icmp eq ptr %i.kx, null
  br i1 %.not.i47, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.gx)
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !333
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.lc = icmp ult i64 %.sroa.0904.0.copyload, %.sroa.2905.0.copyload
  br i1 %i.lc, label %.lr.ph4.i.i64, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph4.i.i64:                                    ; preds = %bb.ao
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %.lr.ph4.i.i64
  %.0333.i.i65 = phi i64 [ %.sroa.0904.0.copyload, %.lr.ph4.i.i64 ], [ %i.mq, %bb.as ] ; 6 uses
  %i.lh = load ptr, ptr %i.lb, align 8, !tbaa !39
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %.0333.i.i65 ; 8 uses
  %i.lj = load ptr, ptr %i.ld, align 8, !tbaa !100
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.0333.i.i65
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !88 ; 4 uses
  %i.lm = load ptr, ptr %i.gy, align 8, !tbaa !159 ; 2 uses
  %.not.i.i20.i66 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i20.i66, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i69, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i67

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i67: ; preds = %bb.ap
  %i.ln = lshr i64 %.0333.i.i65, 6
  %i.lo = and i64 %.0333.i.i65, 63
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.ln
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !14
  %i.lr = shl nuw i64 1, %i.lo
  %i.ls = and i64 %i.lq, %i.lr
  %.not.i21.i68 = icmp eq i64 %i.ls, 0
  br i1 %.not.i21.i68, label %bb.aq, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i69

bb.aq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i67
  %i.lt = load i8, ptr %i.le, align 8, !tbaa !743
  %i.lu = load i64, ptr %i.li, align 8, !tbaa !14 ; 2 uses
  %i.lv = add i64 %i.lu, 1
  store i64 %i.lv, ptr %i.li, align 8, !tbaa !14
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lu
  store i8 %i.lt, ptr %i.lw, align 1, !tbaa !18
  br label %bb.as

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i69: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i67, %bb.ap
  %i.lx = load i8, ptr %i.lf, align 1, !tbaa !738
  %i.ly = load i64, ptr %i.li, align 8, !tbaa !14 ; 2 uses
  %i.lz = add i64 %i.ly, 1
  store i64 %i.lz, ptr %i.li, align 8, !tbaa !14
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ly
  store i8 %i.lx, ptr %i.ma, align 1, !tbaa !18
  %i.mb = load i64, ptr %i.li, align 8, !tbaa !14
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.0333.i.i65
  %i.me = load i8, ptr %i.md, align 1, !tbaa !18
  store i8 %i.me, ptr %i.mc, align 1
  %i.mf = load i8, ptr %i.lg, align 8, !tbaa !108, !range !187, !noundef !188
  %i.mg = trunc nuw i8 %i.mf to i1
  %.pre.i22.i70 = load i64, ptr %i.li, align 8, !tbaa !14 ; 3 uses
  br i1 %i.mg, label %bb.ar, label %.loopexit.i23.i71

bb.ar:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i69
  %.not5.i.i73 = icmp eq i64 %.pre.i22.i70, -1
  br i1 %.not5.i.i73, label %.loopexit.i23.i71, label %.lr.ph.i25.i74

.lr.ph.i25.i74:                                   ; preds = %bb.ar, %.lr.ph.i25.i74
  %.02.i.i75 = phi i64 [ %i.mk, %.lr.ph.i25.i74 ], [ %.pre.i22.i70, %bb.ar ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.02.i.i75 ; 2 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !18
  %i.mj = xor i8 %i.mi, -1
  store i8 %i.mj, ptr %i.mh, align 1, !tbaa !18
  %i.mk = add nuw i64 %.02.i.i75, 1               ; 2 uses
  %i.ml = load i64, ptr %i.li, align 8, !tbaa !14 ; 2 uses
  %i.mm = add i64 %i.ml, 1
  %i.mn = icmp ult i64 %i.mk, %i.mm
  br i1 %i.mn, label %.lr.ph.i25.i74, label %.loopexit.i23.i71, !llvm.loop !752

.loopexit.i23.i71:                                ; preds = %.lr.ph.i25.i74, %bb.ar, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i69
  %i.mo = phi i64 [ %.pre.i22.i70, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i69 ], [ -1, %bb.ar ], [ %i.ml, %.lr.ph.i25.i74 ]
  %i.mp = add i64 %i.mo, 1
  store i64 %i.mp, ptr %i.li, align 8, !tbaa !14
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i23.i71, %bb.aq
  %i.mq = add nuw i64 %.0333.i.i65, 1             ; 2 uses
  %exitcond.not.i24.i72 = icmp eq i64 %i.mq, %.sroa.2905.0.copyload
  br i1 %exitcond.not.i24.i72, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.ap, !llvm.loop !753

bb.at:                                            ; preds = %bb.an, %bb.am
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.gx)
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !333
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.mv = icmp ult i64 %.sroa.0904.0.copyload, %.sroa.2905.0.copyload
  br i1 %i.mv, label %.lr.ph40.i.i50, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph40.i.i50:                                   ; preds = %bb.at
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.au

bb.au:                                            ; preds = %bb.ay, %.lr.ph40.i.i50
  %.03439.i.i51 = phi i64 [ %.sroa.0904.0.copyload, %.lr.ph40.i.i50 ], [ %i.oq, %bb.ay ] ; 4 uses
  %i.na = select i1 %i.ha, i64 %.sroa.3906.0.copyload, i64 %.03439.i.i51 ; 2 uses
  %i.nb = load ptr, ptr %i.gx, align 8, !tbaa !699
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !158 ; 2 uses
  %.not.i.i27.i52 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i27.i52, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i53, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %.03439.i.i51
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !3
  %i.nf = zext i32 %i.ne to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i53

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i53: ; preds = %bb.av, %bb.au
  %i.ng = phi i64 [ %i.nf, %bb.av ], [ %.03439.i.i51, %bb.au ] ; 3 uses
  %i.nh = load ptr, ptr %i.mu, align 8, !tbaa !39
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.na ; 8 uses
  %i.nj = load ptr, ptr %i.mw, align 8, !tbaa !100
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.na
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !88 ; 4 uses
  %i.nm = load ptr, ptr %i.gy, align 8, !tbaa !159 ; 2 uses
  %.not.i36.i.i54 = icmp eq ptr %i.nm, null
  br i1 %.not.i36.i.i54, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i57, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i55

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i55: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i53
  %i.nn = lshr i64 %i.ng, 6
  %i.no = and i64 %i.ng, 63
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.nn
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !14
  %i.nr = shl nuw i64 1, %i.no
  %i.ns = and i64 %i.nq, %i.nr
  %.not.i30.i56 = icmp eq i64 %i.ns, 0
  br i1 %.not.i30.i56, label %bb.aw, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i57

bb.aw:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i55
  %i.nt = load i8, ptr %i.mx, align 8, !tbaa !743
  %i.nu = load i64, ptr %i.ni, align 8, !tbaa !14 ; 2 uses
  %i.nv = add i64 %i.nu, 1
  store i64 %i.nv, ptr %i.ni, align 8, !tbaa !14
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nu
  store i8 %i.nt, ptr %i.nw, align 1, !tbaa !18
  br label %bb.ay

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i57: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i55, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i53
  %i.nx = load i8, ptr %i.my, align 1, !tbaa !738
  %i.ny = load i64, ptr %i.ni, align 8, !tbaa !14 ; 2 uses
  %i.nz = add i64 %i.ny, 1
  store i64 %i.nz, ptr %i.ni, align 8, !tbaa !14
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.ny
  store i8 %i.nx, ptr %i.oa, align 1, !tbaa !18
  %i.ob = load i64, ptr %i.ni, align 8, !tbaa !14
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.ng
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !18
  store i8 %i.oe, ptr %i.oc, align 1
  %i.of = load i8, ptr %i.mz, align 8, !tbaa !108, !range !187, !noundef !188
  %i.og = trunc nuw i8 %i.of to i1
  %.pre.i32.i58 = load i64, ptr %i.ni, align 8, !tbaa !14 ; 3 uses
  br i1 %i.og, label %bb.ax, label %.loopexit.i33.i59

bb.ax:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i57
  %.not41.i.i61 = icmp eq i64 %.pre.i32.i58, -1
  br i1 %.not41.i.i61, label %.loopexit.i33.i59, label %.lr.ph.i35.i62

.lr.ph.i35.i62:                                   ; preds = %bb.ax, %.lr.ph.i35.i62
  %.038.i.i63 = phi i64 [ %i.ok, %.lr.ph.i35.i62 ], [ %.pre.i32.i58, %bb.ax ] ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.038.i.i63 ; 2 uses
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !18
  %i.oj = xor i8 %i.oi, -1
  store i8 %i.oj, ptr %i.oh, align 1, !tbaa !18
  %i.ok = add nuw i64 %.038.i.i63, 1              ; 2 uses
  %i.ol = load i64, ptr %i.ni, align 8, !tbaa !14 ; 2 uses
  %i.om = add i64 %i.ol, 1
  %i.on = icmp ult i64 %i.ok, %i.om
  br i1 %i.on, label %.lr.ph.i35.i62, label %.loopexit.i33.i59, !llvm.loop !754

.loopexit.i33.i59:                                ; preds = %.lr.ph.i35.i62, %bb.ax, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i57
  %i.oo = phi i64 [ %.pre.i32.i58, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i57 ], [ -1, %bb.ax ], [ %i.ol, %.lr.ph.i35.i62 ]
  %i.op = add i64 %i.oo, 1
  store i64 %i.op, ptr %i.ni, align 8, !tbaa !14
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.i33.i59, %bb.aw
  %i.oq = add nuw i64 %.03439.i.i51, 1            ; 2 uses
  %exitcond.not.i34.i60 = icmp eq i64 %i.oq, %.sroa.2905.0.copyload
  br i1 %exitcond.not.i34.i60, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.au, !llvm.loop !755

bb.az:                                            ; preds = %bb.a
  %.sroa.0914.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 10 uses
  %.sroa.2915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2915.0.copyload = load i64, ptr %.sroa.2915.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3916.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3916.0.copyload = load i64, ptr %.sroa.3916.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %i.or = icmp eq i64 %.sroa.0914.0.copyload, %.sroa.2915.0.copyload
  br i1 %i.or, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.sroa.4917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4917.0.copyload = load i8, ptr %.sroa.4917.0..sroa_idx, align 8, !tbaa !189
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !159
  %.not.i.i108 = icmp eq ptr %i.ou, null
  %i.ov = trunc nuw i8 %.sroa.4917.0.copyload to i1 ; 4 uses
  br i1 %.not.i.i108, label %bb.bb, label %bb.bl

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.ov, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ow = load ptr, ptr %i.os, align 8, !tbaa !699
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !158
  %.not55.i138 = icmp eq ptr %i.ox, null
  br i1 %.not55.i138, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.os)
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !333
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.pc = icmp ult i64 %.sroa.0914.0.copyload, %.sroa.2915.0.copyload
  br i1 %i.pc, label %.lr.ph3.i.i162, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph3.i.i162:                                   ; preds = %bb.bd
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.i.i165, %.lr.ph3.i.i162
  %.0282.i.i163 = phi i64 [ %.sroa.0914.0.copyload, %.lr.ph3.i.i162 ], [ %i.qf, %.loopexit.i.i165 ] ; 4 uses
  %i.pg = load ptr, ptr %i.pb, align 8, !tbaa !39
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %.0282.i.i163 ; 6 uses
  %i.pi = load ptr, ptr %i.pd, align 8, !tbaa !100
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %.0282.i.i163
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !88 ; 3 uses
  %i.pl = load i8, ptr %i.pe, align 1, !tbaa !738
  %i.pm = load i64, ptr %i.ph, align 8, !tbaa !14 ; 2 uses
  %i.pn = add i64 %i.pm, 1
  store i64 %i.pn, ptr %i.ph, align 8, !tbaa !14
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pm
  store i8 %i.pl, ptr %i.po, align 1, !tbaa !18
  %i.pp = load i64, ptr %i.ph, align 8, !tbaa !14
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oz, i64 %.0282.i.i163
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !18
  %i.pt = xor i8 %i.ps, -128
  store i8 %i.pt, ptr %i.pq, align 1, !tbaa !18
  %i.pu = load i8, ptr %i.pf, align 8, !tbaa !108, !range !187, !noundef !188
  %i.pv = trunc nuw i8 %i.pu to i1
  %.pre.i.i164 = load i64, ptr %i.ph, align 8, !tbaa !14 ; 3 uses
  br i1 %i.pv, label %bb.bf, label %.loopexit.i.i165

bb.bf:                                            ; preds = %bb.be
  %.not.i14.i167 = icmp eq i64 %.pre.i.i164, -1
  br i1 %.not.i14.i167, label %.loopexit.i.i165, label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %bb.bf, %.lr.ph.i.i168
  %.01.i.i169 = phi i64 [ %i.pz, %.lr.ph.i.i168 ], [ %.pre.i.i164, %bb.bf ] ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pk, i64 %.01.i.i169 ; 2 uses
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !18
  %i.py = xor i8 %i.px, -1
  store i8 %i.py, ptr %i.pw, align 1, !tbaa !18
  %i.pz = add nuw i64 %.01.i.i169, 1              ; 2 uses
  %i.qa = load i64, ptr %i.ph, align 8, !tbaa !14 ; 2 uses
  %i.qb = add i64 %i.qa, 1
  %i.qc = icmp ult i64 %i.pz, %i.qb
  br i1 %i.qc, label %.lr.ph.i.i168, label %.loopexit.i.i165, !llvm.loop !756

.loopexit.i.i165:                                 ; preds = %.lr.ph.i.i168, %bb.bf, %bb.be
  %i.qd = phi i64 [ %.pre.i.i164, %bb.be ], [ -1, %bb.bf ], [ %i.qa, %.lr.ph.i.i168 ]
  %i.qe = add i64 %i.qd, 1
  store i64 %i.qe, ptr %i.ph, align 8, !tbaa !14
  %i.qf = add nuw i64 %.0282.i.i163, 1            ; 2 uses
  %exitcond.not.i.i166 = icmp eq i64 %i.qf, %.sroa.2915.0.copyload
  br i1 %exitcond.not.i.i166, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.be, !llvm.loop !757

bb.bg:                                            ; preds = %bb.bc, %bb.bb
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.os)
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !333 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !737, !nonnull !188, !align !280 ; 2 uses
  %i.qk = icmp ult i64 %.sroa.0914.0.copyload, %.sroa.2915.0.copyload
  br i1 %i.qk, label %.lr.ph33.i.i141, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph33.i.i141:                                  ; preds = %bb.bg
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br i1 %i.ov, label %.lr.ph33.split.us.i.i152, label %.lr.ph33.split.i.i142

.lr.ph33.split.us.i.i152:                         ; preds = %.lr.ph33.i.i141, %.loopexit.us.i.i157.a
  %.02932.us.i.i153 = phi i64 [ %i.rl, %.loopexit.us.i.i157.a ], [ %.sroa.0914.0.copyload, %.lr.ph33.i.i141 ] ; 3 uses
  %i.qo = load ptr, ptr %i.os, align 8, !tbaa !699
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !158 ; 2 uses
  %.not.i.us.i.i154 = icmp eq ptr %i.qp, null
  br i1 %.not.i.us.i.i154, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i155, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph33.split.us.i.i152
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %.02932.us.i.i153
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !3
  %i.qs = zext i32 %i.qr to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i155

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i155: ; preds = %bb.bh, %.lr.ph33.split.us.i.i152
  %i.qt = phi i64 [ %i.qs, %bb.bh ], [ %.02932.us.i.i153, %.lr.ph33.split.us.i.i152 ]
  %i.qu = load ptr, ptr %i.qj, align 8, !tbaa !39
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %.sroa.3916.0.copyload ; 6 uses
  %i.qw = load ptr, ptr %i.ql, align 8, !tbaa !100
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %.sroa.3916.0.copyload
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !88 ; 3 uses
  %i.qz = load i8, ptr %i.qm, align 1, !tbaa !738
  %i.ra = load i64, ptr %i.qv, align 8, !tbaa !14 ; 2 uses
  %i.rb = add i64 %i.ra, 1
  store i64 %i.rb, ptr %i.qv, align 8, !tbaa !14
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.ra
  store i8 %i.qz, ptr %i.rc, align 1, !tbaa !18
  %i.rd = load i64, ptr %i.qv, align 8, !tbaa !14
  %i.re = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qt
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !18
  %i.rh = xor i8 %i.rg, -128
  store i8 %i.rh, ptr %i.re, align 1, !tbaa !18
  %i.ri = load i8, ptr %i.qn, align 8, !tbaa !108, !range !187, !noundef !188
  %i.rj = trunc nuw i8 %i.ri to i1
  %.pre37.i.i156 = load i64, ptr %i.qv, align 8, !tbaa !14 ; 3 uses
  br i1 %i.rj, label %bb.bi, label %.loopexit.us.i.i157.a

bb.bi:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i155
  %.not34.i.i159 = icmp eq i64 %.pre37.i.i156, -1
  br i1 %.not34.i.i159, label %.loopexit.us.i.i157.a, label %.lr.ph.us.i.i160

.loopexit.us.i.i157.a:                            ; preds = %.lr.ph.us.i.i160, %bb.bi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i155
  %29 = phi i64 [ %.pre37.i.i156, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i155 ], [ -1, %bb.bi ], [ %33, %.lr.ph.us.i.i160 ]
  %i.rk = add i64 %29, 1
  store i64 %i.rk, ptr %i.qv, align 8, !tbaa !14
  %i.rl = add nuw i64 %.02932.us.i.i153, 1        ; 2 uses
  %exitcond36.not.i.i158 = icmp eq i64 %i.rl, %.sroa.2915.0.copyload
  br i1 %exitcond36.not.i.i158, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.us.i.i152, !llvm.loop !758

.lr.ph.us.i.i160:                                 ; preds = %bb.bi, %.lr.ph.us.i.i160
  %.031.us.i.i161 = phi i64 [ %i.rm, %.lr.ph.us.i.i160 ], [ %.pre37.i.i156, %bb.bi ] ; 2 uses
  %30 = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.031.us.i.i161 ; 2 uses
  %31 = load i8, ptr %30, align 1, !tbaa !18
  %32 = xor i8 %31, -1
  store i8 %32, ptr %30, align 1, !tbaa !18
  %i.rm = add nuw i64 %.031.us.i.i161, 1          ; 2 uses
  %33 = load i64, ptr %i.qv, align 8, !tbaa !14   ; 2 uses
  %i.rn = add i64 %33, 1
  %34 = icmp ult i64 %i.rm, %i.rn
  br i1 %34, label %.lr.ph.us.i.i160, label %.loopexit.us.i.i157.a, !llvm.loop !759

.lr.ph33.split.i.i142:                            ; preds = %.lr.ph33.i.i141, %.loopexit.i16.i147
  %.02932.i.i143 = phi i64 [ %i.st, %.loopexit.i16.i147 ], [ %.sroa.0914.0.copyload, %.lr.ph33.i.i141 ] ; 5 uses
  %i.ro = load ptr, ptr %i.os, align 8, !tbaa !699
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i144, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i145, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph33.split.i.i142
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %.02932.i.i143
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !3
  %i.rs = zext i32 %i.rr to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i145

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i145: ; preds = %bb.bj, %.lr.ph33.split.i.i142
  %i.rt = phi i64 [ %i.rs, %bb.bj ], [ %.02932.i.i143, %.lr.ph33.split.i.i142 ]
  %i.ru = load ptr, ptr %i.qj, align 8, !tbaa !39
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %.02932.i.i143 ; 6 uses
  %i.rw = load ptr, ptr %i.ql, align 8, !tbaa !100
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %.02932.i.i143
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !88 ; 3 uses
  %i.rz = load i8, ptr %i.qm, align 1, !tbaa !738
  %i.sa = load i64, ptr %i.rv, align 8, !tbaa !14 ; 2 uses
  %i.sb = add i64 %i.sa, 1
  store i64 %i.sb, ptr %i.rv, align 8, !tbaa !14
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sa
  store i8 %i.rz, ptr %i.sc, align 1, !tbaa !18
  %i.sd = load i64, ptr %i.rv, align 8, !tbaa !14
  %i.se = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.rt
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !18
  %i.sh = xor i8 %i.sg, -128
  store i8 %i.sh, ptr %i.se, align 1, !tbaa !18
  %i.si = load i8, ptr %i.qn, align 8, !tbaa !108, !range !187, !noundef !188
  %i.sj = trunc nuw i8 %i.si to i1
  %.pre.i15.i146 = load i64, ptr %i.rv, align 8, !tbaa !14 ; 3 uses
  br i1 %i.sj, label %bb.bk, label %.loopexit.i16.i147

bb.bk:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i145
  %.not.i18.i149 = icmp eq i64 %.pre.i15.i146, -1
  br i1 %.not.i18.i149, label %.loopexit.i16.i147, label %.lr.ph.i19.i150

.lr.ph.i19.i150:                                  ; preds = %bb.bk, %.lr.ph.i19.i150
  %.031.i.i151 = phi i64 [ %i.sn, %.lr.ph.i19.i150 ], [ %.pre.i15.i146, %bb.bk ] ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ry, i64 %.031.i.i151 ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !18
  %i.sm = xor i8 %i.sl, -1
  store i8 %i.sm, ptr %i.sk, align 1, !tbaa !18
  %i.sn = add nuw i64 %.031.i.i151, 1             ; 2 uses
  %i.so = load i64, ptr %i.rv, align 8, !tbaa !14 ; 2 uses
  %i.sp = add i64 %i.so, 1
  %i.sq = icmp ult i64 %i.sn, %i.sp
  br i1 %i.sq, label %.lr.ph.i19.i150, label %.loopexit.i16.i147, !llvm.loop !759

.loopexit.i16.i147:                               ; preds = %.lr.ph.i19.i150, %bb.bk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i145
  %i.sr = phi i64 [ %.pre.i15.i146, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i145 ], [ -1, %bb.bk ], [ %i.so, %.lr.ph.i19.i150 ]
  %i.ss = add i64 %i.sr, 1
  store i64 %i.ss, ptr %i.rv, align 8, !tbaa !14
  %i.st = add nuw i64 %.02932.i.i143, 1           ; 2 uses
  %exitcond.not.i17.i148 = icmp eq i64 %i.st, %.sroa.2915.0.copyload
  br i1 %exitcond.not.i17.i148, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.i.i142, !llvm.loop !758

bb.bl:                                            ; preds = %bb.ba
  br i1 %i.ov, label %bb.bs, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.su = load ptr, ptr %i.os, align 8, !tbaa !699
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !158
  %.not.i109 = icmp eq ptr %i.sv, null
  br i1 %.not.i109, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.os)
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !333
  %i.sy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.ta = icmp ult i64 %.sroa.0914.0.copyload, %.sroa.2915.0.copyload
  br i1 %i.ta, label %.lr.ph4.i.i126, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph4.i.i126:                                   ; preds = %bb.bn
  %i.tb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.bo

bb.bo:                                            ; preds = %bb.br, %.lr.ph4.i.i126
  %.0333.i.i127 = phi i64 [ %.sroa.0914.0.copyload, %.lr.ph4.i.i126 ], [ %i.up, %bb.br ] ; 6 uses
  %i.tf = load ptr, ptr %i.sz, align 8, !tbaa !39
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %.0333.i.i127 ; 8 uses
  %i.th = load ptr, ptr %i.tb, align 8, !tbaa !100
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %.0333.i.i127
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !88 ; 4 uses
  %i.tk = load ptr, ptr %i.ot, align 8, !tbaa !159 ; 2 uses
  %.not.i.i20.i128 = icmp eq ptr %i.tk, null
  br i1 %.not.i.i20.i128, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i131, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i129

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i129: ; preds = %bb.bo
  %i.tl = lshr i64 %.0333.i.i127, 6
  %i.tm = and i64 %.0333.i.i127, 63
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.tl
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !14
  %i.tp = shl nuw i64 1, %i.tm
  %i.tq = and i64 %i.to, %i.tp
  %.not.i21.i130 = icmp eq i64 %i.tq, 0
  br i1 %.not.i21.i130, label %bb.bp, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i131

bb.bp:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i129
  %i.tr = load i8, ptr %i.tc, align 8, !tbaa !743
  %i.ts = load i64, ptr %i.tg, align 8, !tbaa !14 ; 2 uses
  %i.tt = add i64 %i.ts, 1
  store i64 %i.tt, ptr %i.tg, align 8, !tbaa !14
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.ts
  store i8 %i.tr, ptr %i.tu, align 1, !tbaa !18
  br label %bb.br

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i131: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i129, %bb.bo
  %i.tv = load i8, ptr %i.td, align 1, !tbaa !738
  %i.tw = load i64, ptr %i.tg, align 8, !tbaa !14 ; 2 uses
  %i.tx = add i64 %i.tw, 1
  store i64 %i.tx, ptr %i.tg, align 8, !tbaa !14
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tw
  store i8 %i.tv, ptr %i.ty, align 1, !tbaa !18
  %i.tz = load i64, ptr %i.tg, align 8, !tbaa !14
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.sx, i64 %.0333.i.i127
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !18
  %i.ud = xor i8 %i.uc, -128
  store i8 %i.ud, ptr %i.ua, align 1, !tbaa !18
  %i.ue = load i8, ptr %i.te, align 8, !tbaa !108, !range !187, !noundef !188
  %i.uf = trunc nuw i8 %i.ue to i1
  %.pre.i22.i132 = load i64, ptr %i.tg, align 8, !tbaa !14 ; 3 uses
  br i1 %i.uf, label %bb.bq, label %.loopexit.i23.i133

bb.bq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i131
  %.not5.i.i135 = icmp eq i64 %.pre.i22.i132, -1
  br i1 %.not5.i.i135, label %.loopexit.i23.i133, label %.lr.ph.i25.i136

.lr.ph.i25.i136:                                  ; preds = %bb.bq, %.lr.ph.i25.i136
  %.02.i.i137 = phi i64 [ %i.uj, %.lr.ph.i25.i136 ], [ %.pre.i22.i132, %bb.bq ] ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.02.i.i137 ; 2 uses
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !18
  %i.ui = xor i8 %i.uh, -1
  store i8 %i.ui, ptr %i.ug, align 1, !tbaa !18
  %i.uj = add nuw i64 %.02.i.i137, 1              ; 2 uses
  %i.uk = load i64, ptr %i.tg, align 8, !tbaa !14 ; 2 uses
  %i.ul = add i64 %i.uk, 1
  %i.um = icmp ult i64 %i.uj, %i.ul
  br i1 %i.um, label %.lr.ph.i25.i136, label %.loopexit.i23.i133, !llvm.loop !760

.loopexit.i23.i133:                               ; preds = %.lr.ph.i25.i136, %bb.bq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i131
  %i.un = phi i64 [ %.pre.i22.i132, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i131 ], [ -1, %bb.bq ], [ %i.uk, %.lr.ph.i25.i136 ]
  %i.uo = add i64 %i.un, 1
  store i64 %i.uo, ptr %i.tg, align 8, !tbaa !14
  br label %bb.br

bb.br:                                            ; preds = %.loopexit.i23.i133, %bb.bp
  %i.up = add nuw i64 %.0333.i.i127, 1            ; 2 uses
  %exitcond.not.i24.i134 = icmp eq i64 %i.up, %.sroa.2915.0.copyload
  br i1 %exitcond.not.i24.i134, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.bo, !llvm.loop !761

bb.bs:                                            ; preds = %bb.bm, %bb.bl
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.os)
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !333
  %i.us = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.uu = icmp ult i64 %.sroa.0914.0.copyload, %.sroa.2915.0.copyload
  br i1 %i.uu, label %.lr.ph40.i.i112, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph40.i.i112:                                  ; preds = %bb.bs
  %i.uv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.uy = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bx, %.lr.ph40.i.i112
  %.03439.i.i113 = phi i64 [ %.sroa.0914.0.copyload, %.lr.ph40.i.i112 ], [ %i.wq, %bb.bx ] ; 4 uses
  %i.uz = select i1 %i.ov, i64 %.sroa.3916.0.copyload, i64 %.03439.i.i113 ; 2 uses
  %i.va = load ptr, ptr %i.os, align 8, !tbaa !699
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !158 ; 2 uses
  %.not.i.i27.i114 = icmp eq ptr %i.vb, null
  br i1 %.not.i.i27.i114, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i115, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %.03439.i.i113
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !3
  %i.ve = zext i32 %i.vd to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i115

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i115: ; preds = %bb.bu, %bb.bt
  %i.vf = phi i64 [ %i.ve, %bb.bu ], [ %.03439.i.i113, %bb.bt ] ; 3 uses
  %i.vg = load ptr, ptr %i.ut, align 8, !tbaa !39
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.vg, i64 %i.uz ; 8 uses
  %i.vi = load ptr, ptr %i.uv, align 8, !tbaa !100
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %i.uz
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !88 ; 4 uses
  %i.vl = load ptr, ptr %i.ot, align 8, !tbaa !159 ; 2 uses
  %.not.i36.i.i116 = icmp eq ptr %i.vl, null
  br i1 %.not.i36.i.i116, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i119, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i117

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i117: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i115
  %i.vm = lshr i64 %i.vf, 6
  %i.vn = and i64 %i.vf, 63
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vl, i64 %i.vm
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !14
  %i.vq = shl nuw i64 1, %i.vn
  %i.vr = and i64 %i.vp, %i.vq
  %.not.i30.i118 = icmp eq i64 %i.vr, 0
  br i1 %.not.i30.i118, label %bb.bv, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i119

bb.bv:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i117
  %i.vs = load i8, ptr %i.uw, align 8, !tbaa !743
  %i.vt = load i64, ptr %i.vh, align 8, !tbaa !14 ; 2 uses
  %i.vu = add i64 %i.vt, 1
  store i64 %i.vu, ptr %i.vh, align 8, !tbaa !14
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.vt
  store i8 %i.vs, ptr %i.vv, align 1, !tbaa !18
  br label %bb.bx

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i119: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i117, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i115
  %i.vw = load i8, ptr %i.ux, align 1, !tbaa !738
  %i.vx = load i64, ptr %i.vh, align 8, !tbaa !14 ; 2 uses
  %i.vy = add i64 %i.vx, 1
  store i64 %i.vy, ptr %i.vh, align 8, !tbaa !14
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.vx
  store i8 %i.vw, ptr %i.vz, align 1, !tbaa !18
  %i.wa = load i64, ptr %i.vh, align 8, !tbaa !14
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.wa
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.vf
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !18
  %i.we = xor i8 %i.wd, -128
  store i8 %i.we, ptr %i.wb, align 1, !tbaa !18
  %i.wf = load i8, ptr %i.uy, align 8, !tbaa !108, !range !187, !noundef !188
  %i.wg = trunc nuw i8 %i.wf to i1
  %.pre.i32.i120 = load i64, ptr %i.vh, align 8, !tbaa !14 ; 3 uses
  br i1 %i.wg, label %bb.bw, label %.loopexit.i33.i121

bb.bw:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i119
  %.not41.i.i123 = icmp eq i64 %.pre.i32.i120, -1
  br i1 %.not41.i.i123, label %.loopexit.i33.i121, label %.lr.ph.i35.i124

.lr.ph.i35.i124:                                  ; preds = %bb.bw, %.lr.ph.i35.i124
  %.038.i.i125 = phi i64 [ %i.wk, %.lr.ph.i35.i124 ], [ %.pre.i32.i120, %bb.bw ] ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vk, i64 %.038.i.i125 ; 2 uses
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !18
  %i.wj = xor i8 %i.wi, -1
  store i8 %i.wj, ptr %i.wh, align 1, !tbaa !18
  %i.wk = add nuw i64 %.038.i.i125, 1             ; 2 uses
  %i.wl = load i64, ptr %i.vh, align 8, !tbaa !14 ; 2 uses
  %i.wm = add i64 %i.wl, 1
  %i.wn = icmp ult i64 %i.wk, %i.wm
  br i1 %i.wn, label %.lr.ph.i35.i124, label %.loopexit.i33.i121, !llvm.loop !762

.loopexit.i33.i121:                               ; preds = %.lr.ph.i35.i124, %bb.bw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i119
  %i.wo = phi i64 [ %.pre.i32.i120, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i119 ], [ -1, %bb.bw ], [ %i.wl, %.lr.ph.i35.i124 ]
  %i.wp = add i64 %i.wo, 1
  store i64 %i.wp, ptr %i.vh, align 8, !tbaa !14
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.i33.i121, %bb.bv
  %i.wq = add nuw i64 %.03439.i.i113, 1           ; 2 uses
  %exitcond.not.i34.i122 = icmp eq i64 %i.wq, %.sroa.2915.0.copyload
  br i1 %exitcond.not.i34.i122, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.bt, !llvm.loop !763

bb.by:                                            ; preds = %bb.a
  %.sroa.0924.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 10 uses
  %.sroa.2925.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2925.0.copyload = load i64, ptr %.sroa.2925.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3926.0.copyload = load i64, ptr %.sroa.3926.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %i.wr = icmp eq i64 %.sroa.0924.0.copyload, %.sroa.2925.0.copyload
  br i1 %i.wr, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.sroa.4927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4927.0.copyload = load i8, ptr %.sroa.4927.0..sroa_idx, align 8, !tbaa !189
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !159
  %.not.i.i170 = icmp eq ptr %i.wu, null
  %i.wv = trunc nuw i8 %.sroa.4927.0.copyload to i1 ; 4 uses
  br i1 %.not.i.i170, label %bb.ca, label %bb.ch

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.wv, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ww = load ptr, ptr %i.ws, align 8, !tbaa !699
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !158
  %.not56.i = icmp eq ptr %i.wx, null
  br i1 %.not56.i, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.ws)
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !333
  %i.xa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.xc = icmp ult i64 %.sroa.0924.0.copyload, %.sroa.2925.0.copyload
  br i1 %i.xc, label %.lr.ph3.i.i203, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph3.i.i203:                                   ; preds = %bb.cc
  %i.xd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.xf = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.cd

bb.cd:                                            ; preds = %.loopexit.i.i206, %.lr.ph3.i.i203
  %.0282.i.i204 = phi i64 [ %.sroa.0924.0.copyload, %.lr.ph3.i.i203 ], [ %i.ye, %.loopexit.i.i206 ] ; 4 uses
  %i.xg = load ptr, ptr %i.xb, align 8, !tbaa !39
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %.0282.i.i204 ; 6 uses
  %i.xi = load ptr, ptr %i.xd, align 8, !tbaa !100
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %.0282.i.i204
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !88 ; 3 uses
  %i.xl = load i8, ptr %i.xe, align 1, !tbaa !738
  %i.xm = load i64, ptr %i.xh, align 8, !tbaa !14 ; 2 uses
  %i.xn = add i64 %i.xm, 1
  store i64 %i.xn, ptr %i.xh, align 8, !tbaa !14
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xm
  store i8 %i.xl, ptr %i.xo, align 1, !tbaa !18
  %i.xp = load i64, ptr %i.xh, align 8, !tbaa !14
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xp
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.wz, i64 %.0282.i.i204
  %i.xs = load i16, ptr %i.xr, align 2, !tbaa !193
  %i.xt = tail call noundef i16 @llvm.bswap.i16(i16 %i.xs)
  store i16 %i.xt, ptr %i.xq, align 1
  %i.xu = load i8, ptr %i.xf, align 8, !tbaa !108, !range !187, !noundef !188
  %i.xv = trunc nuw i8 %i.xu to i1
  %.pre.i.i205 = load i64, ptr %i.xh, align 8, !tbaa !14 ; 3 uses
  %i.xw = icmp ult i64 %.pre.i.i205, -2
  %or.cond.i.i = select i1 %i.xv, i1 %i.xw, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i208, label %..loopexit.i_crit_edge.i

..loopexit.i_crit_edge.i:                         ; preds = %bb.cd
  %.pre75.i = add i64 %.pre.i.i205, 2
  br label %.loopexit.i.i206

.lr.ph.i.i208:                                    ; preds = %bb.cd, %.lr.ph.i.i208
  %.01.i.i209 = phi i64 [ %i.ya, %.lr.ph.i.i208 ], [ %.pre.i.i205, %bb.cd ] ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xk, i64 %.01.i.i209 ; 2 uses
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !18
  %i.xz = xor i8 %i.xy, -1
  store i8 %i.xz, ptr %i.xx, align 1, !tbaa !18
  %i.ya = add nuw i64 %.01.i.i209, 1              ; 2 uses
  %i.yb = load i64, ptr %i.xh, align 8, !tbaa !14
  %i.yc = add i64 %i.yb, 2                        ; 2 uses
  %i.yd = icmp ult i64 %i.ya, %i.yc
  br i1 %i.yd, label %.lr.ph.i.i208, label %.loopexit.i.i206, !llvm.loop !764

.loopexit.i.i206:                                 ; preds = %.lr.ph.i.i208, %..loopexit.i_crit_edge.i
  %.pre-phi76.i = phi i64 [ %.pre75.i, %..loopexit.i_crit_edge.i ], [ %i.yc, %.lr.ph.i.i208 ]
  store i64 %.pre-phi76.i, ptr %i.xh, align 8, !tbaa !14
  %i.ye = add nuw i64 %.0282.i.i204, 1            ; 2 uses
  %exitcond.not.i.i207 = icmp eq i64 %i.ye, %.sroa.2925.0.copyload
  br i1 %exitcond.not.i.i207, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.cd, !llvm.loop !765

bb.ce:                                            ; preds = %bb.cb, %bb.ca
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.ws)
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !333 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !737, !nonnull !188, !align !280 ; 2 uses
  %i.yj = icmp ult i64 %.sroa.0924.0.copyload, %.sroa.2925.0.copyload
  br i1 %i.yj, label %.lr.ph33.i.i190, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph33.i.i190:                                  ; preds = %bb.ce
  %i.yk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br i1 %i.wv, label %.lr.ph33.split.us.i.i196, label %.lr.ph33.split.i.i191

.lr.ph33.split.us.i.i196:                         ; preds = %.lr.ph33.i.i190, %.loopexit.us.i.i200
  %.02932.us.i.i197 = phi i64 [ %35, %.loopexit.us.i.i200 ], [ %.sroa.0924.0.copyload, %.lr.ph33.i.i190 ] ; 3 uses
  %i.yn = load ptr, ptr %i.ws, align 8, !tbaa !699
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !158 ; 2 uses
  %.not.i.us.i.i198 = icmp eq ptr %i.yo, null
  br i1 %.not.i.us.i.i198, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i199, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph33.split.us.i.i196
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %.02932.us.i.i197
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !3
  %i.yr = zext i32 %i.yq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i199

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i199: ; preds = %bb.cf, %.lr.ph33.split.us.i.i196
  %i.ys = phi i64 [ %i.yr, %bb.cf ], [ %.02932.us.i.i197, %.lr.ph33.split.us.i.i196 ]
  %i.yt = load ptr, ptr %i.yi, align 8, !tbaa !39
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %.sroa.3926.0.copyload ; 6 uses
  %i.yv = load ptr, ptr %i.yk, align 8, !tbaa !100
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %.sroa.3926.0.copyload
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !88 ; 3 uses
  %i.yy = load i8, ptr %i.yl, align 1, !tbaa !738
  %i.yz = load i64, ptr %i.yu, align 8, !tbaa !14 ; 2 uses
  %i.za = add i64 %i.yz, 1
  store i64 %i.za, ptr %i.yu, align 8, !tbaa !14
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.yz
  store i8 %i.yy, ptr %i.zb, align 1, !tbaa !18
  %i.zc = load i64, ptr %i.yu, align 8, !tbaa !14
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.zc
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.yg, i64 %i.ys
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !193
  %i.zg = tail call noundef i16 @llvm.bswap.i16(i16 %i.zf)
  store i16 %i.zg, ptr %i.zd, align 1
  %i.zh = load i8, ptr %i.ym, align 8, !tbaa !108, !range !187, !noundef !188
  %i.zi = trunc nuw i8 %i.zh to i1
  %.pre36.i.i = load i64, ptr %i.yu, align 8, !tbaa !14 ; 3 uses
  %i.zj = icmp ult i64 %.pre36.i.i, -2
  %or.cond.i18.i = select i1 %i.zi, i1 %i.zj, i1 false
  br i1 %or.cond.i18.i, label %.lr.ph.us.i.i201, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i199
  %.pre.i = add i64 %.pre36.i.i, 2
  br label %.loopexit.us.i.i200

.loopexit.us.i.i200:                              ; preds = %.lr.ph.us.i.i201, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i ], [ %i.zp, %.lr.ph.us.i.i201 ]
  store i64 %.pre-phi.i, ptr %i.yu, align 8, !tbaa !14
  %35 = add nuw i64 %.02932.us.i.i197, 1          ; 2 uses
  %exitcond35.not.i.i = icmp eq i64 %35, %.sroa.2925.0.copyload
  br i1 %exitcond35.not.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.us.i.i196, !llvm.loop !766

.lr.ph.us.i.i201:                                 ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i199, %.lr.ph.us.i.i201
  %.031.us.i.i202 = phi i64 [ %i.zn, %.lr.ph.us.i.i201 ], [ %.pre36.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i199 ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yx, i64 %.031.us.i.i202 ; 2 uses
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !18
  %i.zm = xor i8 %i.zl, -1
  store i8 %i.zm, ptr %i.zk, align 1, !tbaa !18
  %i.zn = add nuw i64 %.031.us.i.i202, 1          ; 2 uses
  %i.zo = load i64, ptr %i.yu, align 8, !tbaa !14
  %i.zp = add i64 %i.zo, 2                        ; 2 uses
  %i.zq = icmp ult i64 %i.zn, %i.zp
  br i1 %i.zq, label %.lr.ph.us.i.i201, label %.loopexit.us.i.i200, !llvm.loop !767

.lr.ph33.split.i.i191:                            ; preds = %.lr.ph33.i.i190, %.loopexit.i15.i
  %.02932.i.i192 = phi i64 [ %i.aav, %.loopexit.i15.i ], [ %.sroa.0924.0.copyload, %.lr.ph33.i.i190 ] ; 5 uses
  %i.zr = load ptr, ptr %i.ws, align 8, !tbaa !699
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.zs, null
  br i1 %.not.i.i.i193, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i194, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph33.split.i.i191
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %.02932.i.i192
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !3
  %i.zv = zext i32 %i.zu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i194

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i194: ; preds = %bb.cg, %.lr.ph33.split.i.i191
  %i.zw = phi i64 [ %i.zv, %bb.cg ], [ %.02932.i.i192, %.lr.ph33.split.i.i191 ]
  %i.zx = load ptr, ptr %i.yi, align 8, !tbaa !39
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zx, i64 %.02932.i.i192 ; 6 uses
  %i.zz = load ptr, ptr %i.yk, align 8, !tbaa !100
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %.02932.i.i192
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !88 ; 3 uses
  %i.aac = load i8, ptr %i.yl, align 1, !tbaa !738
  %i.aad = load i64, ptr %i.zy, align 8, !tbaa !14 ; 2 uses
  %i.aae = add i64 %i.aad, 1
  store i64 %i.aae, ptr %i.zy, align 8, !tbaa !14
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aad
  store i8 %i.aac, ptr %i.aaf, align 1, !tbaa !18
  %i.aag = load i64, ptr %i.zy, align 8, !tbaa !14
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aag
  %i.aai = getelementptr inbounds nuw [2 x i8], ptr %i.yg, i64 %i.zw
  %i.aaj = load i16, ptr %i.aai, align 2, !tbaa !193
  %i.aak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aaj)
  store i16 %i.aak, ptr %i.aah, align 1
  %i.aal = load i8, ptr %i.ym, align 8, !tbaa !108, !range !187, !noundef !188
  %i.aam = trunc nuw i8 %i.aal to i1
  %.pre.i14.i = load i64, ptr %i.zy, align 8, !tbaa !14 ; 3 uses
  %i.aan = icmp ult i64 %.pre.i14.i, -2
  %or.cond44.i.i = select i1 %i.aam, i1 %i.aan, i1 false
  br i1 %or.cond44.i.i, label %.lr.ph.i17.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i194
  %.pre73.i = add i64 %.pre.i14.i, 2
  br label %.loopexit.i15.i

.lr.ph.i17.i:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i194, %.lr.ph.i17.i
  %.031.i.i195 = phi i64 [ %i.aar, %.lr.ph.i17.i ], [ %.pre.i14.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i194 ] ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aab, i64 %.031.i.i195 ; 2 uses
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !18
  %i.aaq = xor i8 %i.aap, -1
  store i8 %i.aaq, ptr %i.aao, align 1, !tbaa !18
  %i.aar = add nuw i64 %.031.i.i195, 1            ; 2 uses
  %i.aas = load i64, ptr %i.zy, align 8, !tbaa !14
  %i.aat = add i64 %i.aas, 2                      ; 2 uses
  %i.aau = icmp ult i64 %i.aar, %i.aat
  br i1 %i.aau, label %.lr.ph.i17.i, label %.loopexit.i15.i, !llvm.loop !767

.loopexit.i15.i:                                  ; preds = %.lr.ph.i17.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i
  %.pre-phi74.i = phi i64 [ %.pre73.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i ], [ %i.aat, %.lr.ph.i17.i ]
  store i64 %.pre-phi74.i, ptr %i.zy, align 8, !tbaa !14
  %i.aav = add nuw i64 %.02932.i.i192, 1          ; 2 uses
  %exitcond.not.i16.i = icmp eq i64 %i.aav, %.sroa.2925.0.copyload
  br i1 %exitcond.not.i16.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.i.i191, !llvm.loop !766

bb.ch:                                            ; preds = %bb.bz
  br i1 %i.wv, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aaw = load ptr, ptr %i.ws, align 8, !tbaa !699
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !158
  %.not.i171 = icmp eq ptr %i.aax, null
  br i1 %.not.i171, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.ws)
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !333
  %i.aba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.abc = icmp ult i64 %.sroa.0924.0.copyload, %.sroa.2925.0.copyload
  br i1 %i.abc, label %.lr.ph4.i.i182, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph4.i.i182:                                   ; preds = %bb.cj
  %i.abd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.abg = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cm, %.lr.ph4.i.i182
  %.0333.i.i183 = phi i64 [ %.sroa.0924.0.copyload, %.lr.ph4.i.i182 ], [ %i.acq, %bb.cm ] ; 6 uses
  %i.abh = load ptr, ptr %i.abb, align 8, !tbaa !39
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %.0333.i.i183 ; 8 uses
  %i.abj = load ptr, ptr %i.abd, align 8, !tbaa !100
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.abj, i64 %.0333.i.i183
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !88 ; 4 uses
  %i.abm = load ptr, ptr %i.wt, align 8, !tbaa !159 ; 2 uses
  %.not.i.i19.i = icmp eq ptr %i.abm, null
  br i1 %.not.i.i19.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i185, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i184

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i184: ; preds = %bb.ck
  %i.abn = lshr i64 %.0333.i.i183, 6
  %i.abo = and i64 %.0333.i.i183, 63
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %i.abn
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !14
  %i.abr = shl nuw i64 1, %i.abo
  %i.abs = and i64 %i.abq, %i.abr
  %.not.i20.i = icmp eq i64 %i.abs, 0
  br i1 %.not.i20.i, label %bb.cl, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i185

bb.cl:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i184
  %i.abt = load i8, ptr %i.abe, align 8, !tbaa !743
  %i.abu = load i64, ptr %i.abi, align 8, !tbaa !14 ; 2 uses
  %i.abv = add i64 %i.abu, 1
  store i64 %i.abv, ptr %i.abi, align 8, !tbaa !14
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.abu
  store i8 %i.abt, ptr %i.abw, align 1, !tbaa !18
  br label %bb.cm

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i185: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i184, %bb.ck
  %i.abx = load i8, ptr %i.abf, align 1, !tbaa !738
  %i.aby = load i64, ptr %i.abi, align 8, !tbaa !14 ; 2 uses
  %i.abz = add i64 %i.aby, 1
  store i64 %i.abz, ptr %i.abi, align 8, !tbaa !14
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.aby
  store i8 %i.abx, ptr %i.aca, align 1, !tbaa !18
  %i.acb = load i64, ptr %i.abi, align 8, !tbaa !14
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.acb
  %i.acd = getelementptr inbounds nuw [2 x i8], ptr %i.aaz, i64 %.0333.i.i183
  %i.ace = load i16, ptr %i.acd, align 2, !tbaa !193
  %i.acf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ace)
  store i16 %i.acf, ptr %i.acc, align 1
  %i.acg = load i8, ptr %i.abg, align 8, !tbaa !108, !range !187, !noundef !188
  %i.ach = trunc nuw i8 %i.acg to i1
  %.pre.i21.i = load i64, ptr %i.abi, align 8, !tbaa !14 ; 3 uses
  %i.aci = icmp ult i64 %.pre.i21.i, -2
  %or.cond.i22.i = select i1 %i.ach, i1 %i.aci, i1 false
  br i1 %or.cond.i22.i, label %.lr.ph.i25.i188, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i185
  %.pre79.i = add i64 %.pre.i21.i, 2
  br label %.loopexit.i23.i186

.lr.ph.i25.i188:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i185, %.lr.ph.i25.i188
  %.02.i.i189 = phi i64 [ %i.acm, %.lr.ph.i25.i188 ], [ %.pre.i21.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i185 ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abl, i64 %.02.i.i189 ; 2 uses
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !18
  %i.acl = xor i8 %i.ack, -1
  store i8 %i.acl, ptr %i.acj, align 1, !tbaa !18
  %i.acm = add nuw i64 %.02.i.i189, 1             ; 2 uses
  %i.acn = load i64, ptr %i.abi, align 8, !tbaa !14
  %i.aco = add i64 %i.acn, 2                      ; 2 uses
  %i.acp = icmp ult i64 %i.acm, %i.aco
  br i1 %i.acp, label %.lr.ph.i25.i188, label %.loopexit.i23.i186, !llvm.loop !768

.loopexit.i23.i186:                               ; preds = %.lr.ph.i25.i188, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i
  %.pre-phi80.i = phi i64 [ %.pre79.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i ], [ %i.aco, %.lr.ph.i25.i188 ]
  store i64 %.pre-phi80.i, ptr %i.abi, align 8, !tbaa !14
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit.i23.i186, %bb.cl
  %i.acq = add nuw i64 %.0333.i.i183, 1           ; 2 uses
  %exitcond.not.i24.i187 = icmp eq i64 %i.acq, %.sroa.2925.0.copyload
  br i1 %exitcond.not.i24.i187, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.ck, !llvm.loop !769

bb.cn:                                            ; preds = %bb.ci, %bb.ch
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.ws)
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !333
  %i.act = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.acv = icmp ult i64 %.sroa.0924.0.copyload, %.sroa.2925.0.copyload
  br i1 %i.acv, label %.lr.ph40.i.i172, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph40.i.i172:                                  ; preds = %bb.cn
  %i.acw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.acz = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.co

bb.co:                                            ; preds = %bb.cr, %.lr.ph40.i.i172
  %.03439.i.i173 = phi i64 [ %.sroa.0924.0.copyload, %.lr.ph40.i.i172 ], [ %i.aeq, %bb.cr ] ; 4 uses
  %i.ada = select i1 %i.wv, i64 %.sroa.3926.0.copyload, i64 %.03439.i.i173 ; 2 uses
  %i.adb = load ptr, ptr %i.ws, align 8, !tbaa !699
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !158 ; 2 uses
  %.not.i.i27.i174 = icmp eq ptr %i.adc, null
  br i1 %.not.i.i27.i174, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i175, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %.03439.i.i173
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !3
  %i.adf = zext i32 %i.ade to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i175

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i175: ; preds = %bb.cp, %bb.co
  %i.adg = phi i64 [ %i.adf, %bb.cp ], [ %.03439.i.i173, %bb.co ] ; 3 uses
  %i.adh = load ptr, ptr %i.acu, align 8, !tbaa !39
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %i.ada ; 8 uses
  %i.adj = load ptr, ptr %i.acw, align 8, !tbaa !100
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %i.ada
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !88 ; 4 uses
  %i.adm = load ptr, ptr %i.wt, align 8, !tbaa !159 ; 2 uses
  %.not.i36.i.i176 = icmp eq ptr %i.adm, null
  br i1 %.not.i36.i.i176, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i179, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i177

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i177: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i175
  %i.adn = lshr i64 %i.adg, 6
  %i.ado = and i64 %i.adg, 63
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.adm, i64 %i.adn
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !14
  %i.adr = shl nuw i64 1, %i.ado
  %i.ads = and i64 %i.adq, %i.adr
  %.not.i30.i178 = icmp eq i64 %i.ads, 0
  br i1 %.not.i30.i178, label %bb.cq, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i179

bb.cq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i177
  %i.adt = load i8, ptr %i.acx, align 8, !tbaa !743
  %i.adu = load i64, ptr %i.adi, align 8, !tbaa !14 ; 2 uses
  %i.adv = add i64 %i.adu, 1
  store i64 %i.adv, ptr %i.adi, align 8, !tbaa !14
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.adu
  store i8 %i.adt, ptr %i.adw, align 1, !tbaa !18
  br label %bb.cr

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i179: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i177, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i175
  %i.adx = load i8, ptr %i.acy, align 1, !tbaa !738
  %i.ady = load i64, ptr %i.adi, align 8, !tbaa !14 ; 2 uses
  %i.adz = add i64 %i.ady, 1
  store i64 %i.adz, ptr %i.adi, align 8, !tbaa !14
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.ady
  store i8 %i.adx, ptr %i.aea, align 1, !tbaa !18
  %i.aeb = load i64, ptr %i.adi, align 8, !tbaa !14
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.aeb
  %i.aed = getelementptr inbounds nuw [2 x i8], ptr %i.acs, i64 %i.adg
  %i.aee = load i16, ptr %i.aed, align 2, !tbaa !193
  %i.aef = tail call noundef i16 @llvm.bswap.i16(i16 %i.aee)
  store i16 %i.aef, ptr %i.aec, align 1
  %i.aeg = load i8, ptr %i.acz, align 8, !tbaa !108, !range !187, !noundef !188
  %i.aeh = trunc nuw i8 %i.aeg to i1
  %.pre.i32.i180 = load i64, ptr %i.adi, align 8, !tbaa !14 ; 3 uses
  %i.aei = icmp ult i64 %.pre.i32.i180, -2
  %or.cond.i33.i = select i1 %i.aeh, i1 %i.aei, i1 false
  br i1 %or.cond.i33.i, label %.lr.ph.i36.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i179
  %.pre77.i = add i64 %.pre.i32.i180, 2
  br label %.loopexit.i34.i

.lr.ph.i36.i:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i179, %.lr.ph.i36.i
  %.038.i.i181 = phi i64 [ %i.aem, %.lr.ph.i36.i ], [ %.pre.i32.i180, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i179 ] ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adl, i64 %.038.i.i181 ; 2 uses
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !18
  %i.ael = xor i8 %i.aek, -1
  store i8 %i.ael, ptr %i.aej, align 1, !tbaa !18
  %i.aem = add nuw i64 %.038.i.i181, 1            ; 2 uses
  %i.aen = load i64, ptr %i.adi, align 8, !tbaa !14
  %i.aeo = add i64 %i.aen, 2                      ; 2 uses
  %i.aep = icmp ult i64 %i.aem, %i.aeo
  br i1 %i.aep, label %.lr.ph.i36.i, label %.loopexit.i34.i, !llvm.loop !770

.loopexit.i34.i:                                  ; preds = %.lr.ph.i36.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i
  %.pre-phi78.i = phi i64 [ %.pre77.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i ], [ %i.aeo, %.lr.ph.i36.i ]
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE:bb.a

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i221: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i219, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i217
  %i.ala = load i8, ptr %i.akb, align 1, !tbaa !738
  %i.alb = load i64, ptr %i.akl, align 8, !tbaa !14 ; 2 uses
  %i.alc = add i64 %i.alb, 1
  store i64 %i.alc, ptr %i.akl, align 8, !tbaa !14
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ako, i64 %i.alb
  store i8 %i.ala, ptr %i.ald, align 1, !tbaa !18
  %i.ale = load i64, ptr %i.akl, align 8, !tbaa !14
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ako, i64 %i.ale ; 2 uses
  %i.alg = getelementptr inbounds nuw [2 x i8], ptr %i.ajv, i64 %i.akj
  %i.alh = load i16, ptr %i.alg, align 2, !tbaa !193
  %i.ali = tail call noundef i16 @llvm.bswap.i16(i16 %i.alh) ; 2 uses
  store i16 %i.ali, ptr %i.alf, align 1
  %i.alj = trunc i16 %i.ali to i8
  %i.alk = xor i8 %i.alj, -128
  store i8 %i.alk, ptr %i.alf, align 1, !tbaa !18
  %i.all = load i8, ptr %i.akc, align 8, !tbaa !108, !range !187, !noundef !188
  %i.alm = trunc nuw i8 %i.all to i1
  %.pre.i32.i222 = load i64, ptr %i.akl, align 8, !tbaa !14 ; 3 uses
  %i.aln = icmp ult i64 %.pre.i32.i222, -2
  %or.cond.i33.i223 = select i1 %i.alm, i1 %i.aln, i1 false
  br i1 %or.cond.i33.i223, label %.lr.ph.i36.i227, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i224

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i224: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i221
  %.pre71.i = add i64 %.pre.i32.i222, 2
  br label %.loopexit.i34.i225

.lr.ph.i36.i227:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i221, %.lr.ph.i36.i227
  %.038.i.i228 = phi i64 [ %i.alr, %.lr.ph.i36.i227 ], [ %.pre.i32.i222, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i221 ] ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ako, i64 %.038.i.i228 ; 2 uses
  %i.alp = load i8, ptr %i.alo, align 1, !tbaa !18
  %i.alq = xor i8 %i.alp, -1
  store i8 %i.alq, ptr %i.alo, align 1, !tbaa !18
  %i.alr = add nuw i64 %.038.i.i228, 1            ; 2 uses
  %i.als = load i64, ptr %i.akl, align 8, !tbaa !14
  %i.alt = add i64 %i.als, 2                      ; 2 uses
  %i.alu = icmp ult i64 %i.alr, %i.alt
  br i1 %i.alu, label %.lr.ph.i36.i227, label %.loopexit.i34.i225, !llvm.loop !778

.loopexit.i34.i225:                               ; preds = %.lr.ph.i36.i227, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i224
  %.pre-phi72.i = phi i64 [ %.pre71.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i224 ], [ %i.alt, %.lr.ph.i36.i227 ]
  store i64 %.pre-phi72.i, ptr %i.akl, align 8, !tbaa !14
  br label %bb.dl

bb.dl:                                            ; preds = %.loopexit.i34.i225, %bb.dk
  %i.alv = add nuw i64 %.03439.i.i215, 1          ; 2 uses
  %exitcond.not.i35.i226 = icmp eq i64 %i.alv, %.sroa.2935.0.copyload
  br i1 %exitcond.not.i35.i226, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.di, !llvm.loop !779

bb.dm:                                            ; preds = %bb.a
  %.sroa.0944.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 10 uses
  %.sroa.2945.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2945.0.copyload = load i64, ptr %.sroa.2945.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3946.0.copyload = load i64, ptr %.sroa.3946.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %i.alw = icmp eq i64 %.sroa.0944.0.copyload, %.sroa.2945.0.copyload
  br i1 %i.alw, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.sroa.4947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4947.0.copyload = load i8, ptr %.sroa.4947.0..sroa_idx, align 8, !tbaa !189
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !159
  %.not.i.i266 = icmp eq ptr %i.alz, null
  %i.ama = trunc nuw i8 %.sroa.4947.0.copyload to i1 ; 4 uses
  br i1 %.not.i.i266, label %bb.do, label %bb.dv

bb.do:                                            ; preds = %bb.dn
  br i1 %i.ama, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.amb = load ptr, ptr %i.alx, align 8, !tbaa !699
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !158
  %.not56.i302 = icmp eq ptr %i.amc, null
  br i1 %.not56.i302, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.alx)
  %i.amd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !333
  %i.amf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.amh = icmp ult i64 %.sroa.0944.0.copyload, %.sroa.2945.0.copyload
  br i1 %i.amh, label %.lr.ph3.i.i332, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph3.i.i332:                                   ; preds = %bb.dq
  %i.ami = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.amj = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.amk = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.dr

bb.dr:                                            ; preds = %.loopexit.i.i338, %.lr.ph3.i.i332
  %.0282.i.i333 = phi i64 [ %.sroa.0944.0.copyload, %.lr.ph3.i.i332 ], [ %i.anj, %.loopexit.i.i338 ] ; 4 uses
  %i.aml = load ptr, ptr %i.amg, align 8, !tbaa !39
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %i.aml, i64 %.0282.i.i333 ; 6 uses
  %i.amn = load ptr, ptr %i.ami, align 8, !tbaa !100
  %i.amo = getelementptr inbounds nuw [8 x i8], ptr %i.amn, i64 %.0282.i.i333
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !88 ; 3 uses
  %i.amq = load i8, ptr %i.amj, align 1, !tbaa !738
  %i.amr = load i64, ptr %i.amm, align 8, !tbaa !14 ; 2 uses
  %i.ams = add i64 %i.amr, 1
  store i64 %i.ams, ptr %i.amm, align 8, !tbaa !14
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amp, i64 %i.amr
  store i8 %i.amq, ptr %i.amt, align 1, !tbaa !18
  %i.amu = load i64, ptr %i.amm, align 8, !tbaa !14
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amp, i64 %i.amu
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.ame, i64 %.0282.i.i333
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !3
  %i.amy = tail call noundef i32 @llvm.bswap.i32(i32 %i.amx)
  store i32 %i.amy, ptr %i.amv, align 1
  %i.amz = load i8, ptr %i.amk, align 8, !tbaa !108, !range !187, !noundef !188
  %i.ana = trunc nuw i8 %i.amz to i1
  %.pre.i.i334 = load i64, ptr %i.amm, align 8, !tbaa !14 ; 3 uses
  %i.anb = icmp ult i64 %.pre.i.i334, -4
  %or.cond.i.i335 = select i1 %i.ana, i1 %i.anb, i1 false
  br i1 %or.cond.i.i335, label %.lr.ph.i.i341, label %..loopexit.i_crit_edge.i336

..loopexit.i_crit_edge.i336:                      ; preds = %bb.dr
  %.pre75.i337 = add i64 %.pre.i.i334, 4
  br label %.loopexit.i.i338

.lr.ph.i.i341:                                    ; preds = %bb.dr, %.lr.ph.i.i341
  %.01.i.i342 = phi i64 [ %i.anf, %.lr.ph.i.i341 ], [ %.pre.i.i334, %bb.dr ] ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amp, i64 %.01.i.i342 ; 2 uses
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !18
  %i.ane = xor i8 %i.and, -1
  store i8 %i.ane, ptr %i.anc, align 1, !tbaa !18
  %i.anf = add nuw i64 %.01.i.i342, 1             ; 2 uses
  %i.ang = load i64, ptr %i.amm, align 8, !tbaa !14
  %i.anh = add i64 %i.ang, 4                      ; 2 uses
  %i.ani = icmp ult i64 %i.anf, %i.anh
  br i1 %i.ani, label %.lr.ph.i.i341, label %.loopexit.i.i338, !llvm.loop !780

.loopexit.i.i338:                                 ; preds = %.lr.ph.i.i341, %..loopexit.i_crit_edge.i336
  %.pre-phi76.i339 = phi i64 [ %.pre75.i337, %..loopexit.i_crit_edge.i336 ], [ %i.anh, %.lr.ph.i.i341 ]
  store i64 %.pre-phi76.i339, ptr %i.amm, align 8, !tbaa !14
  %i.anj = add nuw i64 %.0282.i.i333, 1           ; 2 uses
  %exitcond.not.i.i340 = icmp eq i64 %i.anj, %.sroa.2945.0.copyload
  br i1 %exitcond.not.i.i340, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.dr, !llvm.loop !781

bb.ds:                                            ; preds = %bb.dp, %bb.do
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.alx)
  %i.ank = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !333 ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !737, !nonnull !188, !align !280 ; 2 uses
  %i.ano = icmp ult i64 %.sroa.0944.0.copyload, %.sroa.2945.0.copyload
  br i1 %i.ano, label %.lr.ph33.i.i305, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph33.i.i305:                                  ; preds = %bb.ds
  %i.anp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br i1 %i.ama, label %.lr.ph33.split.us.i.i319, label %.lr.ph33.split.i.i306

.lr.ph33.split.us.i.i319:                         ; preds = %.lr.ph33.i.i305, %.loopexit.us.i.i327
  %.02932.us.i.i320 = phi i64 [ %36, %.loopexit.us.i.i327 ], [ %.sroa.0944.0.copyload, %.lr.ph33.i.i305 ] ; 3 uses
  %i.ans = load ptr, ptr %i.alx, align 8, !tbaa !699
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !158 ; 2 uses
  %.not.i.us.i.i321 = icmp eq ptr %i.ant, null
  br i1 %.not.i.us.i.i321, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i322, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph33.split.us.i.i319
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %.02932.us.i.i320
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !3
  %i.anw = zext i32 %i.anv to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i322

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i322: ; preds = %bb.dt, %.lr.ph33.split.us.i.i319
  %i.anx = phi i64 [ %i.anw, %bb.dt ], [ %.02932.us.i.i320, %.lr.ph33.split.us.i.i319 ]
  %i.any = load ptr, ptr %i.ann, align 8, !tbaa !39
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %.sroa.3946.0.copyload ; 6 uses
  %i.aoa = load ptr, ptr %i.anp, align 8, !tbaa !100
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.aoa, i64 %.sroa.3946.0.copyload
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !88 ; 3 uses
  %i.aod = load i8, ptr %i.anq, align 1, !tbaa !738
  %i.aoe = load i64, ptr %i.anz, align 8, !tbaa !14 ; 2 uses
  %i.aof = add i64 %i.aoe, 1
  store i64 %i.aof, ptr %i.anz, align 8, !tbaa !14
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %i.aoe
  store i8 %i.aod, ptr %i.aog, align 1, !tbaa !18
  %i.aoh = load i64, ptr %i.anz, align 8, !tbaa !14
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %i.aoh
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.anl, i64 %i.anx
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !3
  %i.aol = tail call noundef i32 @llvm.bswap.i32(i32 %i.aok)
  store i32 %i.aol, ptr %i.aoi, align 1
  %i.aom = load i8, ptr %i.anr, align 8, !tbaa !108, !range !187, !noundef !188
  %i.aon = trunc nuw i8 %i.aom to i1
  %.pre36.i.i323 = load i64, ptr %i.anz, align 8, !tbaa !14 ; 3 uses
  %i.aoo = icmp ult i64 %.pre36.i.i323, -4
  %or.cond.i18.i324 = select i1 %i.aon, i1 %i.aoo, i1 false
  br i1 %or.cond.i18.i324, label %.lr.ph.us.i.i330, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i325

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i325: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i322
  %.pre.i326 = add i64 %.pre36.i.i323, 4
  br label %.loopexit.us.i.i327

.loopexit.us.i.i327:                              ; preds = %.lr.ph.us.i.i330, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i325
  %.pre-phi.i328 = phi i64 [ %.pre.i326, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i325 ], [ %i.aou, %.lr.ph.us.i.i330 ]
  store i64 %.pre-phi.i328, ptr %i.anz, align 8, !tbaa !14
  %36 = add nuw i64 %.02932.us.i.i320, 1          ; 2 uses
  %exitcond35.not.i.i329 = icmp eq i64 %36, %.sroa.2945.0.copyload
  br i1 %exitcond35.not.i.i329, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.us.i.i319, !llvm.loop !782

.lr.ph.us.i.i330:                                 ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i322, %.lr.ph.us.i.i330
  %.031.us.i.i331 = phi i64 [ %i.aos, %.lr.ph.us.i.i330 ], [ %.pre36.i.i323, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i322 ] ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %.031.us.i.i331 ; 2 uses
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !18
  %i.aor = xor i8 %i.aoq, -1
  store i8 %i.aor, ptr %i.aop, align 1, !tbaa !18
  %i.aos = add nuw i64 %.031.us.i.i331, 1         ; 2 uses
  %i.aot = load i64, ptr %i.anz, align 8, !tbaa !14
  %i.aou = add i64 %i.aot, 4                      ; 2 uses
  %i.aov = icmp ult i64 %i.aos, %i.aou
  br i1 %i.aov, label %.lr.ph.us.i.i330, label %.loopexit.us.i.i327, !llvm.loop !783

.lr.ph33.split.i.i306:                            ; preds = %.lr.ph33.i.i305, %.loopexit.i15.i314
  %.02932.i.i307 = phi i64 [ %i.aqa, %.loopexit.i15.i314 ], [ %.sroa.0944.0.copyload, %.lr.ph33.i.i305 ] ; 5 uses
  %i.aow = load ptr, ptr %i.alx, align 8, !tbaa !699
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i308 = icmp eq ptr %i.aox, null
  br i1 %.not.i.i.i308, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i309, label %bb.du

bb.du:                                            ; preds = %.lr.ph33.split.i.i306
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %.02932.i.i307
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !3
  %i.apa = zext i32 %i.aoz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i309

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i309: ; preds = %bb.du, %.lr.ph33.split.i.i306
  %i.apb = phi i64 [ %i.apa, %bb.du ], [ %.02932.i.i307, %.lr.ph33.split.i.i306 ]
  %i.apc = load ptr, ptr %i.ann, align 8, !tbaa !39
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr %i.apc, i64 %.02932.i.i307 ; 6 uses
  %i.ape = load ptr, ptr %i.anp, align 8, !tbaa !100
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %i.ape, i64 %.02932.i.i307
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !88 ; 3 uses
  %i.aph = load i8, ptr %i.anq, align 1, !tbaa !738
  %i.api = load i64, ptr %i.apd, align 8, !tbaa !14 ; 2 uses
  %i.apj = add i64 %i.api, 1
  store i64 %i.apj, ptr %i.apd, align 8, !tbaa !14
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apg, i64 %i.api
  store i8 %i.aph, ptr %i.apk, align 1, !tbaa !18
  %i.apl = load i64, ptr %i.apd, align 8, !tbaa !14
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apg, i64 %i.apl
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.anl, i64 %i.apb
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !3
  %i.app = tail call noundef i32 @llvm.bswap.i32(i32 %i.apo)
  store i32 %i.app, ptr %i.apm, align 1
  %i.apq = load i8, ptr %i.anr, align 8, !tbaa !108, !range !187, !noundef !188
  %i.apr = trunc nuw i8 %i.apq to i1
  %.pre.i14.i310 = load i64, ptr %i.apd, align 8, !tbaa !14 ; 3 uses
  %i.aps = icmp ult i64 %.pre.i14.i310, -4
  %or.cond44.i.i311 = select i1 %i.apr, i1 %i.aps, i1 false
  br i1 %or.cond44.i.i311, label %.lr.ph.i17.i317, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i312

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i312: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i309
  %.pre73.i313 = add i64 %.pre.i14.i310, 4
  br label %.loopexit.i15.i314

.lr.ph.i17.i317:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i309, %.lr.ph.i17.i317
  %.031.i.i318 = phi i64 [ %i.apw, %.lr.ph.i17.i317 ], [ %.pre.i14.i310, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i309 ] ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apg, i64 %.031.i.i318 ; 2 uses
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !18
  %i.apv = xor i8 %i.apu, -1
  store i8 %i.apv, ptr %i.apt, align 1, !tbaa !18
  %i.apw = add nuw i64 %.031.i.i318, 1            ; 2 uses
  %i.apx = load i64, ptr %i.apd, align 8, !tbaa !14
  %i.apy = add i64 %i.apx, 4                      ; 2 uses
  %i.apz = icmp ult i64 %i.apw, %i.apy
  br i1 %i.apz, label %.lr.ph.i17.i317, label %.loopexit.i15.i314, !llvm.loop !783

.loopexit.i15.i314:                               ; preds = %.lr.ph.i17.i317, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i312
  %.pre-phi74.i315 = phi i64 [ %.pre73.i313, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i312 ], [ %i.apy, %.lr.ph.i17.i317 ]
  store i64 %.pre-phi74.i315, ptr %i.apd, align 8, !tbaa !14
  %i.aqa = add nuw i64 %.02932.i.i307, 1          ; 2 uses
  %exitcond.not.i16.i316 = icmp eq i64 %i.aqa, %.sroa.2945.0.copyload
  br i1 %exitcond.not.i16.i316, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.i.i306, !llvm.loop !782

bb.dv:                                            ; preds = %bb.dn
  br i1 %i.ama, label %bb.eb, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aqb = load ptr, ptr %i.alx, align 8, !tbaa !699
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !158
  %.not.i267 = icmp eq ptr %i.aqc, null
  br i1 %.not.i267, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.alx)
  %i.aqd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !333
  %i.aqf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.aqh = icmp ult i64 %.sroa.0944.0.copyload, %.sroa.2945.0.copyload
  br i1 %i.aqh, label %.lr.ph4.i.i287, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph4.i.i287:                                   ; preds = %bb.dx
  %i.aqi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aqk = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.aql = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.dy

bb.dy:                                            ; preds = %bb.ea, %.lr.ph4.i.i287
  %.0333.i.i288 = phi i64 [ %.sroa.0944.0.copyload, %.lr.ph4.i.i287 ], [ %i.arv, %bb.ea ] ; 6 uses
  %i.aqm = load ptr, ptr %i.aqg, align 8, !tbaa !39
  %i.aqn = getelementptr inbounds nuw [8 x i8], ptr %i.aqm, i64 %.0333.i.i288 ; 8 uses
  %i.aqo = load ptr, ptr %i.aqi, align 8, !tbaa !100
  %i.aqp = getelementptr inbounds nuw [8 x i8], ptr %i.aqo, i64 %.0333.i.i288
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !88 ; 4 uses
  %i.aqr = load ptr, ptr %i.aly, align 8, !tbaa !159 ; 2 uses
  %.not.i.i19.i289 = icmp eq ptr %i.aqr, null
  br i1 %.not.i.i19.i289, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i292, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i290

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i290: ; preds = %bb.dy
  %i.aqs = lshr i64 %.0333.i.i288, 6
  %i.aqt = and i64 %.0333.i.i288, 63
  %i.aqu = getelementptr inbounds nuw [8 x i8], ptr %i.aqr, i64 %i.aqs
  %i.aqv = load i64, ptr %i.aqu, align 8, !tbaa !14
  %i.aqw = shl nuw i64 1, %i.aqt
  %i.aqx = and i64 %i.aqv, %i.aqw
  %.not.i20.i291 = icmp eq i64 %i.aqx, 0
  br i1 %.not.i20.i291, label %bb.dz, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i292

bb.dz:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i290
  %i.aqy = load i8, ptr %i.aqj, align 8, !tbaa !743
  %i.aqz = load i64, ptr %i.aqn, align 8, !tbaa !14 ; 2 uses
  %i.ara = add i64 %i.aqz, 1
  store i64 %i.ara, ptr %i.aqn, align 8, !tbaa !14
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %i.aqz
  store i8 %i.aqy, ptr %i.arb, align 1, !tbaa !18
  br label %bb.ea

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i292: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i290, %bb.dy
  %i.arc = load i8, ptr %i.aqk, align 1, !tbaa !738
  %i.ard = load i64, ptr %i.aqn, align 8, !tbaa !14 ; 2 uses
  %i.are = add i64 %i.ard, 1
  store i64 %i.are, ptr %i.aqn, align 8, !tbaa !14
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %i.ard
  store i8 %i.arc, ptr %i.arf, align 1, !tbaa !18
  %i.arg = load i64, ptr %i.aqn, align 8, !tbaa !14
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %i.arg
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.aqe, i64 %.0333.i.i288
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !3
  %i.ark = tail call noundef i32 @llvm.bswap.i32(i32 %i.arj)
  store i32 %i.ark, ptr %i.arh, align 1
  %i.arl = load i8, ptr %i.aql, align 8, !tbaa !108, !range !187, !noundef !188
  %i.arm = trunc nuw i8 %i.arl to i1
  %.pre.i21.i293 = load i64, ptr %i.aqn, align 8, !tbaa !14 ; 3 uses
  %i.arn = icmp ult i64 %.pre.i21.i293, -4
  %or.cond.i22.i294 = select i1 %i.arm, i1 %i.arn, i1 false
  br i1 %or.cond.i22.i294, label %.lr.ph.i25.i300, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i295

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i295: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i292
  %.pre79.i296 = add i64 %.pre.i21.i293, 4
  br label %.loopexit.i23.i297

.lr.ph.i25.i300:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i292, %.lr.ph.i25.i300
  %.02.i.i301 = phi i64 [ %i.arr, %.lr.ph.i25.i300 ], [ %.pre.i21.i293, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i292 ] ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %.02.i.i301 ; 2 uses
  %i.arp = load i8, ptr %i.aro, align 1, !tbaa !18
  %i.arq = xor i8 %i.arp, -1
  store i8 %i.arq, ptr %i.aro, align 1, !tbaa !18
  %i.arr = add nuw i64 %.02.i.i301, 1             ; 2 uses
  %i.ars = load i64, ptr %i.aqn, align 8, !tbaa !14
  %i.art = add i64 %i.ars, 4                      ; 2 uses
  %i.aru = icmp ult i64 %i.arr, %i.art
  br i1 %i.aru, label %.lr.ph.i25.i300, label %.loopexit.i23.i297, !llvm.loop !784

.loopexit.i23.i297:                               ; preds = %.lr.ph.i25.i300, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i295
  %.pre-phi80.i298 = phi i64 [ %.pre79.i296, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i295 ], [ %i.art, %.lr.ph.i25.i300 ]
  store i64 %.pre-phi80.i298, ptr %i.aqn, align 8, !tbaa !14
  br label %bb.ea

bb.ea:                                            ; preds = %.loopexit.i23.i297, %bb.dz
  %i.arv = add nuw i64 %.0333.i.i288, 1           ; 2 uses
  %exitcond.not.i24.i299 = icmp eq i64 %i.arv, %.sroa.2945.0.copyload
  br i1 %exitcond.not.i24.i299, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.dy, !llvm.loop !785

bb.eb:                                            ; preds = %bb.dw, %bb.dv
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.alx)
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !333
  %i.ary = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.asa = icmp ult i64 %.sroa.0944.0.copyload, %.sroa.2945.0.copyload
  br i1 %i.asa, label %.lr.ph40.i.i270, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph40.i.i270:                                  ; preds = %bb.eb
  %i.asb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.asc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.ase = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ef, %.lr.ph40.i.i270
  %.03439.i.i271 = phi i64 [ %.sroa.0944.0.copyload, %.lr.ph40.i.i270 ], [ %i.atv, %bb.ef ] ; 4 uses
  %i.asf = select i1 %i.ama, i64 %.sroa.3946.0.copyload, i64 %.03439.i.i271 ; 2 uses
  %i.asg = load ptr, ptr %i.alx, align 8, !tbaa !699
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !158 ; 2 uses
  %.not.i.i27.i272 = icmp eq ptr %i.ash, null
  br i1 %.not.i.i27.i272, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i273, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.ash, i64 %.03439.i.i271
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !3
  %i.ask = zext i32 %i.asj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i273

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i273: ; preds = %bb.ed, %bb.ec
  %i.asl = phi i64 [ %i.ask, %bb.ed ], [ %.03439.i.i271, %bb.ec ] ; 3 uses
  %i.asm = load ptr, ptr %i.arz, align 8, !tbaa !39
  %i.asn = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %i.asf ; 8 uses
  %i.aso = load ptr, ptr %i.asb, align 8, !tbaa !100
  %i.asp = getelementptr inbounds nuw [8 x i8], ptr %i.aso, i64 %i.asf
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !88 ; 4 uses
  %i.asr = load ptr, ptr %i.aly, align 8, !tbaa !159 ; 2 uses
  %.not.i36.i.i274 = icmp eq ptr %i.asr, null
  br i1 %.not.i36.i.i274, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i277, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i275

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i275: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i273
  %i.ass = lshr i64 %i.asl, 6
  %i.ast = and i64 %i.asl, 63
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %i.ass
  %i.asv = load i64, ptr %i.asu, align 8, !tbaa !14
  %i.asw = shl nuw i64 1, %i.ast
  %i.asx = and i64 %i.asv, %i.asw
  %.not.i30.i276 = icmp eq i64 %i.asx, 0
  br i1 %.not.i30.i276, label %bb.ee, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i277

bb.ee:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i275
  %i.asy = load i8, ptr %i.asc, align 8, !tbaa !743
  %i.asz = load i64, ptr %i.asn, align 8, !tbaa !14 ; 2 uses
  %i.ata = add i64 %i.asz, 1
  store i64 %i.ata, ptr %i.asn, align 8, !tbaa !14
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asq, i64 %i.asz
  store i8 %i.asy, ptr %i.atb, align 1, !tbaa !18
  br label %bb.ef

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i277: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i275, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i273
  %i.atc = load i8, ptr %i.asd, align 1, !tbaa !738
  %i.atd = load i64, ptr %i.asn, align 8, !tbaa !14 ; 2 uses
  %i.ate = add i64 %i.atd, 1
  store i64 %i.ate, ptr %i.asn, align 8, !tbaa !14
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asq, i64 %i.atd
  store i8 %i.atc, ptr %i.atf, align 1, !tbaa !18
  %i.atg = load i64, ptr %i.asn, align 8, !tbaa !14
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asq, i64 %i.atg
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.asl
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !3
  %i.atk = tail call noundef i32 @llvm.bswap.i32(i32 %i.atj)
  store i32 %i.atk, ptr %i.ath, align 1
  %i.atl = load i8, ptr %i.ase, align 8, !tbaa !108, !range !187, !noundef !188
  %i.atm = trunc nuw i8 %i.atl to i1
  %.pre.i32.i278 = load i64, ptr %i.asn, align 8, !tbaa !14 ; 3 uses
  %i.atn = icmp ult i64 %.pre.i32.i278, -4
  %or.cond.i33.i279 = select i1 %i.atm, i1 %i.atn, i1 false
  br i1 %or.cond.i33.i279, label %.lr.ph.i36.i285, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i280

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i280: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i277
  %.pre77.i281 = add i64 %.pre.i32.i278, 4
  br label %.loopexit.i34.i282

.lr.ph.i36.i285:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i277, %.lr.ph.i36.i285
  %.038.i.i286 = phi i64 [ %i.atr, %.lr.ph.i36.i285 ], [ %.pre.i32.i278, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i277 ] ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.asq, i64 %.038.i.i286 ; 2 uses
  %i.atp = load i8, ptr %i.ato, align 1, !tbaa !18
  %i.atq = xor i8 %i.atp, -1
  store i8 %i.atq, ptr %i.ato, align 1, !tbaa !18
  %i.atr = add nuw i64 %.038.i.i286, 1            ; 2 uses
  %i.ats = load i64, ptr %i.asn, align 8, !tbaa !14
  %i.att = add i64 %i.ats, 4                      ; 2 uses
  %i.atu = icmp ult i64 %i.atr, %i.att
  br i1 %i.atu, label %.lr.ph.i36.i285, label %.loopexit.i34.i282, !llvm.loop !786

.loopexit.i34.i282:                               ; preds = %.lr.ph.i36.i285, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i280
  %.pre-phi78.i283 = phi i64 [ %.pre77.i281, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i280 ], [ %i.att, %.lr.ph.i36.i285 ]
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE:bb.a

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i354: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i352, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i350
  %i.baf = load i8, ptr %i.azg, align 1, !tbaa !738
  %i.bag = load i64, ptr %i.azq, align 8, !tbaa !14 ; 2 uses
  %i.bah = add i64 %i.bag, 1
  store i64 %i.bah, ptr %i.azq, align 8, !tbaa !14
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azt, i64 %i.bag
  store i8 %i.baf, ptr %i.bai, align 1, !tbaa !18
  %i.baj = load i64, ptr %i.azq, align 8, !tbaa !14
  %i.bak = getelementptr inbounds nuw i8, ptr %i.azt, i64 %i.baj ; 2 uses
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %i.aza, i64 %i.azo
  %i.bam = load i32, ptr %i.bal, align 4, !tbaa !3
  %i.ban = tail call noundef i32 @llvm.bswap.i32(i32 %i.bam) ; 2 uses
  store i32 %i.ban, ptr %i.bak, align 1
  %i.bao = trunc i32 %i.ban to i8
  %i.bap = xor i8 %i.bao, -128
  store i8 %i.bap, ptr %i.bak, align 1, !tbaa !18
  %i.baq = load i8, ptr %i.azh, align 8, !tbaa !108, !range !187, !noundef !188
  %i.bar = trunc nuw i8 %i.baq to i1
  %.pre.i32.i355 = load i64, ptr %i.azq, align 8, !tbaa !14 ; 3 uses
  %i.bas = icmp ult i64 %.pre.i32.i355, -4
  %or.cond.i33.i356 = select i1 %i.bar, i1 %i.bas, i1 false
  br i1 %or.cond.i33.i356, label %.lr.ph.i36.i362, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i357

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i357: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i354
  %.pre71.i358 = add i64 %.pre.i32.i355, 4
  br label %.loopexit.i34.i359

.lr.ph.i36.i362:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i354, %.lr.ph.i36.i362
  %.038.i.i363 = phi i64 [ %i.baw, %.lr.ph.i36.i362 ], [ %.pre.i32.i355, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i354 ] ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %i.azt, i64 %.038.i.i363 ; 2 uses
  %i.bau = load i8, ptr %i.bat, align 1, !tbaa !18
  %i.bav = xor i8 %i.bau, -1
  store i8 %i.bav, ptr %i.bat, align 1, !tbaa !18
  %i.baw = add nuw i64 %.038.i.i363, 1            ; 2 uses
  %i.bax = load i64, ptr %i.azq, align 8, !tbaa !14
  %i.bay = add i64 %i.bax, 4                      ; 2 uses
  %i.baz = icmp ult i64 %i.baw, %i.bay
  br i1 %i.baz, label %.lr.ph.i36.i362, label %.loopexit.i34.i359, !llvm.loop !794

.loopexit.i34.i359:                               ; preds = %.lr.ph.i36.i362, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i357
  %.pre-phi72.i360 = phi i64 [ %.pre71.i358, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i357 ], [ %i.bay, %.lr.ph.i36.i362 ]
  store i64 %.pre-phi72.i360, ptr %i.azq, align 8, !tbaa !14
  br label %bb.ez

bb.ez:                                            ; preds = %.loopexit.i34.i359, %bb.ey
  %i.bba = add nuw i64 %.03439.i.i348, 1          ; 2 uses
  %exitcond.not.i35.i361 = icmp eq i64 %i.bba, %.sroa.2955.0.copyload
  br i1 %exitcond.not.i35.i361, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.ew, !llvm.loop !795

bb.fa:                                            ; preds = %bb.a
  %.sroa.0964.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 10 uses
  %.sroa.2965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2965.0.copyload = load i64, ptr %.sroa.2965.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3966.0.copyload = load i64, ptr %.sroa.3966.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %i.bbb = icmp eq i64 %.sroa.0964.0.copyload, %.sroa.2965.0.copyload
  br i1 %i.bbb, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %.sroa.4967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4967.0.copyload = load i8, ptr %.sroa.4967.0..sroa_idx, align 8, !tbaa !189
  %i.bbc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !159
  %.not.i.i406 = icmp eq ptr %i.bbe, null
  %i.bbf = trunc nuw i8 %.sroa.4967.0.copyload to i1 ; 4 uses
  br i1 %.not.i.i406, label %bb.fc, label %bb.fj

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.bbf, label %bb.fg, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.bbg = load ptr, ptr %i.bbc, align 8, !tbaa !699
  %i.bbh = load ptr, ptr %i.bbg, align 8, !tbaa !158
  %.not56.i442 = icmp eq ptr %i.bbh, null
  br i1 %.not56.i442, label %bb.fe, label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.bbc)
  %i.bbi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !333
  %i.bbk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.bbm = icmp ult i64 %.sroa.0964.0.copyload, %.sroa.2965.0.copyload
  br i1 %i.bbm, label %.lr.ph3.i.i472, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph3.i.i472:                                   ; preds = %bb.fe
  %i.bbn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bbo = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.bbp = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.ff

bb.ff:                                            ; preds = %.loopexit.i.i478, %.lr.ph3.i.i472
  %.0282.i.i473 = phi i64 [ %.sroa.0964.0.copyload, %.lr.ph3.i.i472 ], [ %i.bco, %.loopexit.i.i478 ] ; 4 uses
  %i.bbq = load ptr, ptr %i.bbl, align 8, !tbaa !39
  %i.bbr = getelementptr inbounds nuw [8 x i8], ptr %i.bbq, i64 %.0282.i.i473 ; 6 uses
  %i.bbs = load ptr, ptr %i.bbn, align 8, !tbaa !100
  %i.bbt = getelementptr inbounds nuw [8 x i8], ptr %i.bbs, i64 %.0282.i.i473
  %i.bbu = load ptr, ptr %i.bbt, align 8, !tbaa !88 ; 3 uses
  %i.bbv = load i8, ptr %i.bbo, align 1, !tbaa !738
  %i.bbw = load i64, ptr %i.bbr, align 8, !tbaa !14 ; 2 uses
  %i.bbx = add i64 %i.bbw, 1
  store i64 %i.bbx, ptr %i.bbr, align 8, !tbaa !14
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbu, i64 %i.bbw
  store i8 %i.bbv, ptr %i.bby, align 1, !tbaa !18
  %i.bbz = load i64, ptr %i.bbr, align 8, !tbaa !14
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbu, i64 %i.bbz
  %i.bcb = getelementptr inbounds nuw [8 x i8], ptr %i.bbj, i64 %.0282.i.i473
  %i.bcc = load i64, ptr %i.bcb, align 8, !tbaa !14
  %i.bcd = tail call noundef i64 @llvm.bswap.i64(i64 %i.bcc)
  store i64 %i.bcd, ptr %i.bca, align 1
  %i.bce = load i8, ptr %i.bbp, align 8, !tbaa !108, !range !187, !noundef !188
  %i.bcf = trunc nuw i8 %i.bce to i1
  %.pre.i.i474 = load i64, ptr %i.bbr, align 8, !tbaa !14 ; 3 uses
  %i.bcg = icmp ult i64 %.pre.i.i474, -8
  %or.cond.i.i475 = select i1 %i.bcf, i1 %i.bcg, i1 false
  br i1 %or.cond.i.i475, label %.lr.ph.i.i481, label %..loopexit.i_crit_edge.i476

..loopexit.i_crit_edge.i476:                      ; preds = %bb.ff
  %.pre75.i477 = add i64 %.pre.i.i474, 8
  br label %.loopexit.i.i478

.lr.ph.i.i481:                                    ; preds = %bb.ff, %.lr.ph.i.i481
  %.01.i.i482 = phi i64 [ %i.bck, %.lr.ph.i.i481 ], [ %.pre.i.i474, %bb.ff ] ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bbu, i64 %.01.i.i482 ; 2 uses
  %i.bci = load i8, ptr %i.bch, align 1, !tbaa !18
  %i.bcj = xor i8 %i.bci, -1
  store i8 %i.bcj, ptr %i.bch, align 1, !tbaa !18
  %i.bck = add nuw i64 %.01.i.i482, 1             ; 2 uses
  %i.bcl = load i64, ptr %i.bbr, align 8, !tbaa !14
  %i.bcm = add i64 %i.bcl, 8                      ; 2 uses
  %i.bcn = icmp ult i64 %i.bck, %i.bcm
  br i1 %i.bcn, label %.lr.ph.i.i481, label %.loopexit.i.i478, !llvm.loop !796

.loopexit.i.i478:                                 ; preds = %.lr.ph.i.i481, %..loopexit.i_crit_edge.i476
  %.pre-phi76.i479 = phi i64 [ %.pre75.i477, %..loopexit.i_crit_edge.i476 ], [ %i.bcm, %.lr.ph.i.i481 ]
  store i64 %.pre-phi76.i479, ptr %i.bbr, align 8, !tbaa !14
  %i.bco = add nuw i64 %.0282.i.i473, 1           ; 2 uses
  %exitcond.not.i.i480 = icmp eq i64 %i.bco, %.sroa.2965.0.copyload
  br i1 %exitcond.not.i.i480, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.ff, !llvm.loop !797

bb.fg:                                            ; preds = %bb.fd, %bb.fc
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.bbc)
  %i.bcp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !333 ; 2 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bcs = load ptr, ptr %i.bcr, align 8, !tbaa !737, !nonnull !188, !align !280 ; 2 uses
  %i.bct = icmp ult i64 %.sroa.0964.0.copyload, %.sroa.2965.0.copyload
  br i1 %i.bct, label %.lr.ph33.i.i445, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph33.i.i445:                                  ; preds = %bb.fg
  %i.bcu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br i1 %i.bbf, label %.lr.ph33.split.us.i.i459, label %.lr.ph33.split.i.i446

.lr.ph33.split.us.i.i459:                         ; preds = %.lr.ph33.i.i445, %.loopexit.us.i.i467
  %.02932.us.i.i460 = phi i64 [ %37, %.loopexit.us.i.i467 ], [ %.sroa.0964.0.copyload, %.lr.ph33.i.i445 ] ; 3 uses
  %i.bcx = load ptr, ptr %i.bbc, align 8, !tbaa !699
  %i.bcy = load ptr, ptr %i.bcx, align 8, !tbaa !158 ; 2 uses
  %.not.i.us.i.i461 = icmp eq ptr %i.bcy, null
  br i1 %.not.i.us.i.i461, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i462, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph33.split.us.i.i459
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.bcy, i64 %.02932.us.i.i460
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !3
  %i.bdb = zext i32 %i.bda to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i462

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i462: ; preds = %bb.fh, %.lr.ph33.split.us.i.i459
  %i.bdc = phi i64 [ %i.bdb, %bb.fh ], [ %.02932.us.i.i460, %.lr.ph33.split.us.i.i459 ]
  %i.bdd = load ptr, ptr %i.bcs, align 8, !tbaa !39
  %i.bde = getelementptr inbounds nuw [8 x i8], ptr %i.bdd, i64 %.sroa.3966.0.copyload ; 6 uses
  %i.bdf = load ptr, ptr %i.bcu, align 8, !tbaa !100
  %i.bdg = getelementptr inbounds nuw [8 x i8], ptr %i.bdf, i64 %.sroa.3966.0.copyload
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !88 ; 3 uses
  %i.bdi = load i8, ptr %i.bcv, align 1, !tbaa !738
  %i.bdj = load i64, ptr %i.bde, align 8, !tbaa !14 ; 2 uses
  %i.bdk = add i64 %i.bdj, 1
  store i64 %i.bdk, ptr %i.bde, align 8, !tbaa !14
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdh, i64 %i.bdj
  store i8 %i.bdi, ptr %i.bdl, align 1, !tbaa !18
  %i.bdm = load i64, ptr %i.bde, align 8, !tbaa !14
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdh, i64 %i.bdm
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %i.bcq, i64 %i.bdc
  %i.bdp = load i64, ptr %i.bdo, align 8, !tbaa !14
  %i.bdq = tail call noundef i64 @llvm.bswap.i64(i64 %i.bdp)
  store i64 %i.bdq, ptr %i.bdn, align 1
  %i.bdr = load i8, ptr %i.bcw, align 8, !tbaa !108, !range !187, !noundef !188
  %i.bds = trunc nuw i8 %i.bdr to i1
  %.pre36.i.i463 = load i64, ptr %i.bde, align 8, !tbaa !14 ; 3 uses
  %i.bdt = icmp ult i64 %.pre36.i.i463, -8
  %or.cond.i18.i464 = select i1 %i.bds, i1 %i.bdt, i1 false
  br i1 %or.cond.i18.i464, label %.lr.ph.us.i.i470, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i465

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i465: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i462
  %.pre.i466 = add i64 %.pre36.i.i463, 8
  br label %.loopexit.us.i.i467

.loopexit.us.i.i467:                              ; preds = %.lr.ph.us.i.i470, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i465
  %.pre-phi.i468 = phi i64 [ %.pre.i466, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i..loopexit.us.i_crit_edge.i465 ], [ %i.bdz, %.lr.ph.us.i.i470 ]
  store i64 %.pre-phi.i468, ptr %i.bde, align 8, !tbaa !14
  %37 = add nuw i64 %.02932.us.i.i460, 1          ; 2 uses
  %exitcond35.not.i.i469 = icmp eq i64 %37, %.sroa.2965.0.copyload
  br i1 %exitcond35.not.i.i469, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.us.i.i459, !llvm.loop !798

.lr.ph.us.i.i470:                                 ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i462, %.lr.ph.us.i.i470
  %.031.us.i.i471 = phi i64 [ %i.bdx, %.lr.ph.us.i.i470 ], [ %.pre36.i.i463, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i462 ] ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdh, i64 %.031.us.i.i471 ; 2 uses
  %i.bdv = load i8, ptr %i.bdu, align 1, !tbaa !18
  %i.bdw = xor i8 %i.bdv, -1
  store i8 %i.bdw, ptr %i.bdu, align 1, !tbaa !18
  %i.bdx = add nuw i64 %.031.us.i.i471, 1         ; 2 uses
  %i.bdy = load i64, ptr %i.bde, align 8, !tbaa !14
  %i.bdz = add i64 %i.bdy, 8                      ; 2 uses
  %i.bea = icmp ult i64 %i.bdx, %i.bdz
  br i1 %i.bea, label %.lr.ph.us.i.i470, label %.loopexit.us.i.i467, !llvm.loop !799

.lr.ph33.split.i.i446:                            ; preds = %.lr.ph33.i.i445, %.loopexit.i15.i454
  %.02932.i.i447 = phi i64 [ %i.bff, %.loopexit.i15.i454 ], [ %.sroa.0964.0.copyload, %.lr.ph33.i.i445 ] ; 5 uses
  %i.beb = load ptr, ptr %i.bbc, align 8, !tbaa !699
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i448 = icmp eq ptr %i.bec, null
  br i1 %.not.i.i.i448, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i449, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph33.split.i.i446
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %i.bec, i64 %.02932.i.i447
  %i.bee = load i32, ptr %i.bed, align 4, !tbaa !3
  %i.bef = zext i32 %i.bee to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i449

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i449: ; preds = %bb.fi, %.lr.ph33.split.i.i446
  %i.beg = phi i64 [ %i.bef, %bb.fi ], [ %.02932.i.i447, %.lr.ph33.split.i.i446 ]
  %i.beh = load ptr, ptr %i.bcs, align 8, !tbaa !39
  %i.bei = getelementptr inbounds nuw [8 x i8], ptr %i.beh, i64 %.02932.i.i447 ; 6 uses
  %i.bej = load ptr, ptr %i.bcu, align 8, !tbaa !100
  %i.bek = getelementptr inbounds nuw [8 x i8], ptr %i.bej, i64 %.02932.i.i447
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !88 ; 3 uses
  %i.bem = load i8, ptr %i.bcv, align 1, !tbaa !738
  %i.ben = load i64, ptr %i.bei, align 8, !tbaa !14 ; 2 uses
  %i.beo = add i64 %i.ben, 1
  store i64 %i.beo, ptr %i.bei, align 8, !tbaa !14
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bel, i64 %i.ben
  store i8 %i.bem, ptr %i.bep, align 1, !tbaa !18
  %i.beq = load i64, ptr %i.bei, align 8, !tbaa !14
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bel, i64 %i.beq
  %i.bes = getelementptr inbounds nuw [8 x i8], ptr %i.bcq, i64 %i.beg
  %i.bet = load i64, ptr %i.bes, align 8, !tbaa !14
  %i.beu = tail call noundef i64 @llvm.bswap.i64(i64 %i.bet)
  store i64 %i.beu, ptr %i.ber, align 1
  %i.bev = load i8, ptr %i.bcw, align 8, !tbaa !108, !range !187, !noundef !188
  %i.bew = trunc nuw i8 %i.bev to i1
  %.pre.i14.i450 = load i64, ptr %i.bei, align 8, !tbaa !14 ; 3 uses
  %i.bex = icmp ult i64 %.pre.i14.i450, -8
  %or.cond44.i.i451 = select i1 %i.bew, i1 %i.bex, i1 false
  br i1 %or.cond44.i.i451, label %.lr.ph.i17.i457, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i452

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i452: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i449
  %.pre73.i453 = add i64 %.pre.i14.i450, 8
  br label %.loopexit.i15.i454

.lr.ph.i17.i457:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i449, %.lr.ph.i17.i457
  %.031.i.i458 = phi i64 [ %i.bfb, %.lr.ph.i17.i457 ], [ %.pre.i14.i450, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i449 ] ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bel, i64 %.031.i.i458 ; 2 uses
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !18
  %i.bfa = xor i8 %i.bez, -1
  store i8 %i.bfa, ptr %i.bey, align 1, !tbaa !18
  %i.bfb = add nuw i64 %.031.i.i458, 1            ; 2 uses
  %i.bfc = load i64, ptr %i.bei, align 8, !tbaa !14
  %i.bfd = add i64 %i.bfc, 8                      ; 2 uses
  %i.bfe = icmp ult i64 %i.bfb, %i.bfd
  br i1 %i.bfe, label %.lr.ph.i17.i457, label %.loopexit.i15.i454, !llvm.loop !799

.loopexit.i15.i454:                               ; preds = %.lr.ph.i17.i457, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i452
  %.pre-phi74.i455 = phi i64 [ %.pre73.i453, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i..loopexit.i15_crit_edge.i452 ], [ %i.bfd, %.lr.ph.i17.i457 ]
  store i64 %.pre-phi74.i455, ptr %i.bei, align 8, !tbaa !14
  %i.bff = add nuw i64 %.02932.i.i447, 1          ; 2 uses
  %exitcond.not.i16.i456 = icmp eq i64 %i.bff, %.sroa.2965.0.copyload
  br i1 %exitcond.not.i16.i456, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.i.i446, !llvm.loop !798

bb.fj:                                            ; preds = %bb.fb
  br i1 %i.bbf, label %bb.fp, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.bfg = load ptr, ptr %i.bbc, align 8, !tbaa !699
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !158
  %.not.i407 = icmp eq ptr %i.bfh, null
  br i1 %.not.i407, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %bb.fk
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.bbc)
  %i.bfi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bfj = load ptr, ptr %i.bfi, align 8, !tbaa !333
  %i.bfk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.bfm = icmp ult i64 %.sroa.0964.0.copyload, %.sroa.2965.0.copyload
  br i1 %i.bfm, label %.lr.ph4.i.i427, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph4.i.i427:                                   ; preds = %bb.fl
  %i.bfn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bfo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bfp = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.bfq = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fo, %.lr.ph4.i.i427
  %.0333.i.i428 = phi i64 [ %.sroa.0964.0.copyload, %.lr.ph4.i.i427 ], [ %i.bha, %bb.fo ] ; 6 uses
  %i.bfr = load ptr, ptr %i.bfl, align 8, !tbaa !39
  %i.bfs = getelementptr inbounds nuw [8 x i8], ptr %i.bfr, i64 %.0333.i.i428 ; 8 uses
  %i.bft = load ptr, ptr %i.bfn, align 8, !tbaa !100
  %i.bfu = getelementptr inbounds nuw [8 x i8], ptr %i.bft, i64 %.0333.i.i428
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !88 ; 4 uses
  %i.bfw = load ptr, ptr %i.bbd, align 8, !tbaa !159 ; 2 uses
  %.not.i.i19.i429 = icmp eq ptr %i.bfw, null
  br i1 %.not.i.i19.i429, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i432, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i430

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i430: ; preds = %bb.fm
  %i.bfx = lshr i64 %.0333.i.i428, 6
  %i.bfy = and i64 %.0333.i.i428, 63
  %i.bfz = getelementptr inbounds nuw [8 x i8], ptr %i.bfw, i64 %i.bfx
  %i.bga = load i64, ptr %i.bfz, align 8, !tbaa !14
  %i.bgb = shl nuw i64 1, %i.bfy
  %i.bgc = and i64 %i.bga, %i.bgb
  %.not.i20.i431 = icmp eq i64 %i.bgc, 0
  br i1 %.not.i20.i431, label %bb.fn, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i432

bb.fn:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i430
  %i.bgd = load i8, ptr %i.bfo, align 8, !tbaa !743
  %i.bge = load i64, ptr %i.bfs, align 8, !tbaa !14 ; 2 uses
  %i.bgf = add i64 %i.bge, 1
  store i64 %i.bgf, ptr %i.bfs, align 8, !tbaa !14
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bge
  store i8 %i.bgd, ptr %i.bgg, align 1, !tbaa !18
  br label %bb.fo

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i432: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i430, %bb.fm
  %i.bgh = load i8, ptr %i.bfp, align 1, !tbaa !738
  %i.bgi = load i64, ptr %i.bfs, align 8, !tbaa !14 ; 2 uses
  %i.bgj = add i64 %i.bgi, 1
  store i64 %i.bgj, ptr %i.bfs, align 8, !tbaa !14
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bgi
  store i8 %i.bgh, ptr %i.bgk, align 1, !tbaa !18
  %i.bgl = load i64, ptr %i.bfs, align 8, !tbaa !14
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bgl
  %i.bgn = getelementptr inbounds nuw [8 x i8], ptr %i.bfj, i64 %.0333.i.i428
  %i.bgo = load i64, ptr %i.bgn, align 8, !tbaa !14
  %i.bgp = tail call noundef i64 @llvm.bswap.i64(i64 %i.bgo)
  store i64 %i.bgp, ptr %i.bgm, align 1
  %i.bgq = load i8, ptr %i.bfq, align 8, !tbaa !108, !range !187, !noundef !188
  %i.bgr = trunc nuw i8 %i.bgq to i1
  %.pre.i21.i433 = load i64, ptr %i.bfs, align 8, !tbaa !14 ; 3 uses
  %i.bgs = icmp ult i64 %.pre.i21.i433, -8
  %or.cond.i22.i434 = select i1 %i.bgr, i1 %i.bgs, i1 false
  br i1 %or.cond.i22.i434, label %.lr.ph.i25.i440, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i435

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i435: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i432
  %.pre79.i436 = add i64 %.pre.i21.i433, 8
  br label %.loopexit.i23.i437

.lr.ph.i25.i440:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i432, %.lr.ph.i25.i440
  %.02.i.i441 = phi i64 [ %i.bgw, %.lr.ph.i25.i440 ], [ %.pre.i21.i433, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i432 ] ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %.02.i.i441 ; 2 uses
  %i.bgu = load i8, ptr %i.bgt, align 1, !tbaa !18
  %i.bgv = xor i8 %i.bgu, -1
  store i8 %i.bgv, ptr %i.bgt, align 1, !tbaa !18
  %i.bgw = add nuw i64 %.02.i.i441, 1             ; 2 uses
  %i.bgx = load i64, ptr %i.bfs, align 8, !tbaa !14
  %i.bgy = add i64 %i.bgx, 8                      ; 2 uses
  %i.bgz = icmp ult i64 %i.bgw, %i.bgy
  br i1 %i.bgz, label %.lr.ph.i25.i440, label %.loopexit.i23.i437, !llvm.loop !800

.loopexit.i23.i437:                               ; preds = %.lr.ph.i25.i440, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i435
  %.pre-phi80.i438 = phi i64 [ %.pre79.i436, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i..loopexit.i23_crit_edge.i435 ], [ %i.bgy, %.lr.ph.i25.i440 ]
  store i64 %.pre-phi80.i438, ptr %i.bfs, align 8, !tbaa !14
  br label %bb.fo

bb.fo:                                            ; preds = %.loopexit.i23.i437, %bb.fn
  %i.bha = add nuw i64 %.0333.i.i428, 1           ; 2 uses
  %exitcond.not.i24.i439 = icmp eq i64 %i.bha, %.sroa.2965.0.copyload
  br i1 %exitcond.not.i24.i439, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.fm, !llvm.loop !801

bb.fp:                                            ; preds = %bb.fk, %bb.fj
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.bbc)
  %i.bhb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !333
  %i.bhd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bhe = load ptr, ptr %i.bhd, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.bhf = icmp ult i64 %.sroa.0964.0.copyload, %.sroa.2965.0.copyload
  br i1 %i.bhf, label %.lr.ph40.i.i410, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph40.i.i410:                                  ; preds = %bb.fp
  %i.bhg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bhh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bhi = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.bhj = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.fq

bb.fq:                                            ; preds = %bb.ft, %.lr.ph40.i.i410
  %.03439.i.i411 = phi i64 [ %.sroa.0964.0.copyload, %.lr.ph40.i.i410 ], [ %i.bja, %bb.ft ] ; 4 uses
  %i.bhk = select i1 %i.bbf, i64 %.sroa.3966.0.copyload, i64 %.03439.i.i411 ; 2 uses
  %i.bhl = load ptr, ptr %i.bbc, align 8, !tbaa !699
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !158 ; 2 uses
  %.not.i.i27.i412 = icmp eq ptr %i.bhm, null
  br i1 %.not.i.i27.i412, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i413, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.bhm, i64 %.03439.i.i411
  %i.bho = load i32, ptr %i.bhn, align 4, !tbaa !3
  %i.bhp = zext i32 %i.bho to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i413

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i413: ; preds = %bb.fr, %bb.fq
  %i.bhq = phi i64 [ %i.bhp, %bb.fr ], [ %.03439.i.i411, %bb.fq ] ; 3 uses
  %i.bhr = load ptr, ptr %i.bhe, align 8, !tbaa !39
  %i.bhs = getelementptr inbounds nuw [8 x i8], ptr %i.bhr, i64 %i.bhk ; 8 uses
  %i.bht = load ptr, ptr %i.bhg, align 8, !tbaa !100
  %i.bhu = getelementptr inbounds nuw [8 x i8], ptr %i.bht, i64 %i.bhk
  %i.bhv = load ptr, ptr %i.bhu, align 8, !tbaa !88 ; 4 uses
  %i.bhw = load ptr, ptr %i.bbd, align 8, !tbaa !159 ; 2 uses
  %.not.i36.i.i414 = icmp eq ptr %i.bhw, null
  br i1 %.not.i36.i.i414, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i417, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i415

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i415: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i413
  %i.bhx = lshr i64 %i.bhq, 6
  %i.bhy = and i64 %i.bhq, 63
  %i.bhz = getelementptr inbounds nuw [8 x i8], ptr %i.bhw, i64 %i.bhx
  %i.bia = load i64, ptr %i.bhz, align 8, !tbaa !14
  %i.bib = shl nuw i64 1, %i.bhy
  %i.bic = and i64 %i.bia, %i.bib
  %.not.i30.i416 = icmp eq i64 %i.bic, 0
  br i1 %.not.i30.i416, label %bb.fs, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i417

bb.fs:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i415
  %i.bid = load i8, ptr %i.bhh, align 8, !tbaa !743
  %i.bie = load i64, ptr %i.bhs, align 8, !tbaa !14 ; 2 uses
  %i.bif = add i64 %i.bie, 1
  store i64 %i.bif, ptr %i.bhs, align 8, !tbaa !14
  %i.big = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.bie
  store i8 %i.bid, ptr %i.big, align 1, !tbaa !18
  br label %bb.ft

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i417: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i29.i415, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i28.i413
  %i.bih = load i8, ptr %i.bhi, align 1, !tbaa !738
  %i.bii = load i64, ptr %i.bhs, align 8, !tbaa !14 ; 2 uses
  %i.bij = add i64 %i.bii, 1
  store i64 %i.bij, ptr %i.bhs, align 8, !tbaa !14
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.bii
  store i8 %i.bih, ptr %i.bik, align 1, !tbaa !18
  %i.bil = load i64, ptr %i.bhs, align 8, !tbaa !14
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %i.bil
  %i.bin = getelementptr inbounds nuw [8 x i8], ptr %i.bhc, i64 %i.bhq
  %i.bio = load i64, ptr %i.bin, align 8, !tbaa !14
  %i.bip = tail call noundef i64 @llvm.bswap.i64(i64 %i.bio)
  store i64 %i.bip, ptr %i.bim, align 1
  %i.biq = load i8, ptr %i.bhj, align 8, !tbaa !108, !range !187, !noundef !188
  %i.bir = trunc nuw i8 %i.biq to i1
  %.pre.i32.i418 = load i64, ptr %i.bhs, align 8, !tbaa !14 ; 3 uses
  %i.bis = icmp ult i64 %.pre.i32.i418, -8
  %or.cond.i33.i419 = select i1 %i.bir, i1 %i.bis, i1 false
  br i1 %or.cond.i33.i419, label %.lr.ph.i36.i425, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i420

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i420: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i417
  %.pre77.i421 = add i64 %.pre.i32.i418, 8
  br label %.loopexit.i34.i422

.lr.ph.i36.i425:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i417, %.lr.ph.i36.i425
  %.038.i.i426 = phi i64 [ %i.biw, %.lr.ph.i36.i425 ], [ %.pre.i32.i418, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31.i417 ] ; 2 uses
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bhv, i64 %.038.i.i426 ; 2 uses
  %i.biu = load i8, ptr %i.bit, align 1, !tbaa !18
  %i.biv = xor i8 %i.biu, -1
  store i8 %i.biv, ptr %i.bit, align 1, !tbaa !18
  %i.biw = add nuw i64 %.038.i.i426, 1            ; 2 uses
  %i.bix = load i64, ptr %i.bhs, align 8, !tbaa !14
  %i.biy = add i64 %i.bix, 8                      ; 2 uses
  %i.biz = icmp ult i64 %i.biw, %i.biy
  br i1 %i.biz, label %.lr.ph.i36.i425, label %.loopexit.i34.i422, !llvm.loop !802

.loopexit.i34.i422:                               ; preds = %.lr.ph.i36.i425, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i420
  %.pre-phi78.i423 = phi i64 [ %.pre77.i421, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i31..loopexit.i34_crit_edge.i420 ], [ %i.biy, %.lr.ph.i36.i425 ]
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE:bb.a
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  %.not.i871 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i871, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit886.thread
  %.sroa.0.0.copyload.i = load i64, ptr %i.eeu, align 8, !tbaa !14 ; 2 uses
  %i.eev = add i64 %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %.val30.i = load ptr, ptr %i.eds, align 8, !tbaa !31
  %.val31.i = load ptr, ptr %i.edt, align 8, !tbaa !34
  %i.eew = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr %.val30.i, ptr %.val31.i, i64 noundef 0), !inline_history !887
  %.val.i872 = load ptr, ptr %i.eew, align 8, !tbaa !29 ; 2 uses
  %i.eex = tail call fastcc noundef nonnull align 8 dereferenceable(122) ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EEdeEv(ptr %.val.i872), !inline_history !887 ; 0 uses
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8, !tbaa !14
  store i64 %i.eev, ptr %.sroa.41085.0..sroa_idx, align 8, !tbaa !14
  store i64 %i.edv, ptr %.sroa.51086.0..sroa_idx, align 8, !tbaa !14
  store i8 1, ptr %.sroa.61087.0..sroa_idx, align 8, !tbaa !189
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE(ptr noundef nonnull align 8 dereferenceable(122) %.val.i872, ptr noundef nonnull byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 %4, ptr noundef nonnull align 8 dereferenceable(25) %2), !inline_history !887
  br label %bb.oe

bb.oe:                                            ; preds = %bb.od, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit886.thread
  %i.eey = load i8, ptr %i.edu, align 8, !tbaa !108, !range !187, !noundef !188
  %i.eez = sub nsw i8 0, %i.eey
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %bb.oc
  %.sink1770 = phi i8 [ %i.eez, %bb.oe ], [ %i.eeo, %bb.oc ]
  %i.efa = load i64, ptr %i.eed, align 8, !tbaa !14 ; 2 uses
  %i.efb = add i64 %i.efa, 1
  store i64 %i.efb, ptr %i.eed, align 8, !tbaa !14
  %i.efc = getelementptr inbounds nuw i8, ptr %i.eeg, i64 %i.efa
  store i8 %.sink1770, ptr %i.efc, align 1, !tbaa !18
  %i.efd = add i64 %.0.i8701254, 1                ; 2 uses
  %exitcond1404.not = icmp eq i64 %i.efd, %.sroa.21080.0.copyload
  br i1 %exitcond1404.not, label %_ZN6duckdb12_GLOBAL__N_120ConstructSortKeyListINS0_16SortKeyListEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.oa, !llvm.loop !888

_ZN6duckdb12_GLOBAL__N_120ConstructSortKeyListINS0_16SortKeyListEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit: ; preds = %bb.of, %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

bb.og:                                            ; preds = %bb.a
  %.sroa.01094.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 2 uses
  %.sroa.21095.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21095.0.copyload = load i64, ptr %.sroa.21095.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.31096.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.31096.0.copyload = load i64, ptr %.sroa.31096.0..sroa_idx, align 8, !tbaa !14
  %.sroa.41097.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.41097.0.copyload = load i8, ptr %.sroa.41097.0..sroa_idx, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.efe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eff = load ptr, ptr %i.efe, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.efg = icmp ult i64 %.sroa.01094.0.copyload, %.sroa.21095.0.copyload
  br i1 %i.efg, label %.lr.ph, label %_ZN6duckdb12_GLOBAL__N_120ConstructSortKeyListINS0_17SortKeyArrayEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph:                                           ; preds = %bb.og
  %i.efh = trunc nuw i8 %.sroa.41097.0.copyload to i1
  %i.efi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.efj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.efk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.efl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.efm = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.efn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.efo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.41100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.51101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.61102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.efp = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.oh

bb.oh:                                            ; preds = %.lr.ph, %bb.ol
  %.0.i8731253 = phi i64 [ %.sroa.01094.0.copyload, %.lr.ph ], [ %i.egx, %bb.ol ] ; 4 uses
  %i.efq = select i1 %i.efh, i64 %.sroa.31096.0.copyload, i64 %.0.i8731253 ; 3 uses
  %i.efr = load ptr, ptr %i.efi, align 8, !tbaa !699
  %i.efs = load ptr, ptr %i.efr, align 8, !tbaa !158 ; 2 uses
  %.not.i894 = icmp eq ptr %i.efs, null
  br i1 %.not.i894, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit895, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.eft = getelementptr inbounds nuw [4 x i8], ptr %i.efs, i64 %.0.i8731253
  %i.efu = load i32, ptr %i.eft, align 4, !tbaa !3
  %i.efv = zext i32 %i.efu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit895

_ZNK6duckdb15SelectionVector9get_indexEm.exit895: ; preds = %bb.oh, %bb.oi
  %i.efw = phi i64 [ %i.efv, %bb.oi ], [ %.0.i8731253, %bb.oh ] ; 3 uses
  %i.efx = load ptr, ptr %i.eff, align 8, !tbaa !39
  %i.efy = getelementptr inbounds nuw [8 x i8], ptr %i.efx, i64 %i.efq ; 4 uses
  %i.efz = load ptr, ptr %i.efj, align 8, !tbaa !100
  %i.ega = getelementptr inbounds nuw [8 x i8], ptr %i.efz, i64 %i.efq
  %i.egb = load ptr, ptr %i.ega, align 8, !tbaa !88 ; 2 uses
  %i.egc = load ptr, ptr %i.efk, align 8, !tbaa !159 ; 2 uses
  %.not.i891 = icmp eq ptr %i.egc, null
  br i1 %.not.i891, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit895
  %i.egd = lshr i64 %i.efw, 6
  %i.ege = and i64 %i.efw, 63
  %i.egf = getelementptr inbounds nuw [8 x i8], ptr %i.egc, i64 %i.egd
  %i.egg = load i64, ptr %i.egf, align 8, !tbaa !14
  %i.egh = shl nuw i64 1, %i.ege
  %i.egi = and i64 %i.egg, %i.egh
  %.not = icmp eq i64 %i.egi, 0
  br i1 %.not, label %bb.oj, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit895, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893
  br label %bb.oj

bb.oj:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread
  %.sink1775.in = phi ptr [ %i.efm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread ], [ %i.efl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893 ]
  %.sink1775 = load i8, ptr %.sink1775.in, align 1, !tbaa !18
  %i.egj = load i64, ptr %i.efy, align 8, !tbaa !14 ; 2 uses
  %i.egk = add i64 %i.egj, 1
  store i64 %i.egk, ptr %i.efy, align 8, !tbaa !14
  %i.egl = getelementptr inbounds nuw i8, ptr %i.egb, i64 %i.egj
  store i8 %.sink1775, ptr %i.egl, align 1, !tbaa !18
  %.val32.i876 = load ptr, ptr %0, align 8, !tbaa !66
  %i.egm = getelementptr inbounds nuw i8, ptr %.val32.i876, i64 8
  %i.egn = tail call noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.egm) ; 3 uses
  %.not.i877 = icmp eq i64 %i.egn, 0
  br i1 %.not.i877, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.ego = mul i64 %i.egn, %i.efw                 ; 2 uses
  %i.egp = add i64 %i.ego, %i.egn
  %.val30.i878 = load ptr, ptr %i.efn, align 8, !tbaa !31
  %.val31.i879 = load ptr, ptr %i.efo, align 8, !tbaa !34
  %i.egq = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr %.val30.i878, ptr %.val31.i879, i64 noundef 0), !inline_history !889
  %.val.i880 = load ptr, ptr %i.egq, align 8, !tbaa !29 ; 2 uses
  %i.egr = tail call fastcc noundef nonnull align 8 dereferenceable(122) ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EEdeEv(ptr %.val.i880), !inline_history !889 ; 0 uses
  store i64 %i.ego, ptr %3, align 8, !tbaa !14
  store i64 %i.egp, ptr %.sroa.41100.0..sroa_idx, align 8, !tbaa !14
  store i64 %i.efq, ptr %.sroa.51101.0..sroa_idx, align 8, !tbaa !14
  store i8 1, ptr %.sroa.61102.0..sroa_idx, align 8, !tbaa !189
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE(ptr noundef nonnull align 8 dereferenceable(122) %.val.i880, ptr noundef nonnull byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 %3, ptr noundef nonnull align 8 dereferenceable(25) %2), !inline_history !889
  br label %bb.ol

bb.ol:                                            ; preds = %bb.ok, %bb.oj
  %i.egs = load i8, ptr %i.efp, align 8, !tbaa !108, !range !187, !noundef !188
  %i.egt = sub nsw i8 0, %i.egs
  %i.egu = load i64, ptr %i.efy, align 8, !tbaa !14 ; 2 uses
  %i.egv = add i64 %i.egu, 1
  store i64 %i.egv, ptr %i.efy, align 8, !tbaa !14
  %i.egw = getelementptr inbounds nuw i8, ptr %i.egb, i64 %i.egu
  store i8 %i.egt, ptr %i.egw, align 1, !tbaa !18
  %i.egx = add i64 %.0.i8731253, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.egx, %.sroa.21095.0.copyload
  br i1 %exitcond.not, label %_ZN6duckdb12_GLOBAL__N_120ConstructSortKeyListINS0_17SortKeyArrayEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.oh, !llvm.loop !890

_ZN6duckdb12_GLOBAL__N_120ConstructSortKeyListINS0_17SortKeyArrayEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit: ; preds = %bb.ol, %bb.og
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

bb.om:                                            ; preds = %bb.a
  %i.egy = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.on unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.on:                                            ; preds = %bb.om
  %i.egz = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !188, !align !280
  %i.eha = getelementptr inbounds nuw i8, ptr %i.egz, i64 8
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJRKNS_11LogicalTypeEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.egy, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.eha)
          to label %bb.oo unwind label %bb.op

bb.oo:                                            ; preds = %bb.on
  invoke void @__cxa_throw(ptr nonnull %i.egy, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.os unwind label %bb.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.om
  %i.ehb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.oq

bb.op:                                            ; preds = %bb.oo, %bb.on
  %.0 = phi i1 [ false, %bb.oo ], [ true, %bb.on ] ; 2 uses
  %i.ehc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ehd = load ptr, ptr %15, align 8, !tbaa !16  ; 2 uses
  %i.ehe = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ehf = icmp eq ptr %i.ehd, %i.ehe
  br i1 %i.ehf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.op
  call void @_ZdlPv(ptr noundef %i.ehd) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br i1 %.0, label %bb.oq, label %bb.or

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br i1 %.0, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1110 = phi { ptr, i32 } [ %i.ehb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ehc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ehc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.egy) #29
  br label %bb.or

_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit: ; preds = %bb.ni, %bb.nq, %.loopexit.i.i865, %.loopexit.i27.i, %bb.mf, %bb.mk, %.loopexit.i.i828, %.loopexit.i24.i, %bb.lk, %bb.lp, %.loopexit.i.i805, %.loopexit.i19.i791, %bb.kq, %bb.kv, %.loopexit.i.i730, %.loopexit.i19.i716, %bb.jw, %bb.kb, %.loopexit.i.i665, %.loopexit.i22.i, %bb.iy, %bb.jh, %.loopexit.i.i637, %.loopexit.i19.i625, %bb.ho, %bb.hx, %.loopexit.i.i571, %.loopexit.i19.i, %bb.gi, %bb.gn, %.loopexit.i.i541, %.loopexit.i16.i530, %bb.fo, %bb.ft, %.loopexit.i.i478, %.loopexit.i15.i454, %.loopexit.us.i.i467, %bb.eu, %bb.ez, %.loopexit.i.i401, %.loopexit.i16.i390, %bb.ea, %bb.ef, %.loopexit.i.i338, %.loopexit.i15.i314, %.loopexit.us.i.i327, %bb.dg, %bb.dl, %.loopexit.i.i262, %.loopexit.i16.i253, %bb.cm, %bb.cr, %.loopexit.i.i206, %.loopexit.i15.i, %.loopexit.us.i.i200, %bb.br, %bb.bx, %.loopexit.i.i165, %.loopexit.i16.i147, %.loopexit.us.i.i157.a, %bb.as, %bb.ay, %.loopexit.i.i103, %.loopexit.i16.i85, %.loopexit.us.i.i95.a, %bb.t, %bb.z, %.loopexit.i.i, %.loopexit.i16.i, %.loopexit.us.i.i.a, %bb.nj, %bb.nc, %bb.mu, %bb.mp, %bb.ml, %bb.mg, %bb.mc, %bb.lx, %bb.lv, %bb.lr, %bb.ll, %bb.lh, %bb.lc, %bb.la, %bb.kw, %bb.kr, %bb.kn, %bb.ki, %bb.kg, %bb.kc, %bb.jx, %bb.jt, %bb.jo, %bb.jm, %bb.ji, %bb.iz, %bb.ir, %bb.ii, %bb.ic, %bb.hy, %bb.hp, %bb.hh, %bb.gy, %bb.gs, %bb.go, %bb.gj, %bb.gf, %bb.ga, %bb.fy, %bb.fu, %bb.fp, %bb.fl, %bb.fg, %bb.fe, %bb.fa, %bb.ev, %bb.er, %bb.em, %bb.ek, %bb.eg, %bb.eb, %bb.dx, %bb.ds, %bb.dq, %bb.dm, %bb.dh, %bb.dd, %bb.cy, %bb.cw, %bb.cs, %bb.cn, %bb.cj, %bb.ce, %bb.cc, %bb.by, %bb.bs, %bb.bn, %bb.bg, %bb.bd, %bb.az, %bb.at, %bb.ao, %bb.ah, %bb.ae, %bb.aa, %bb.u, %bb.p, %bb.i, %bb.f, %bb.b, %_ZN6duckdb12_GLOBAL__N_120ConstructSortKeyListINS0_17SortKeyArrayEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, %_ZN6duckdb12_GLOBAL__N_120ConstructSortKeyListINS0_16SortKeyListEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, %_ZN6duckdb12_GLOBAL__N_122ConstructSortKeyStructERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit
  ret void

bb.or:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.oq
  %.pn1109 = phi { ptr, i32 } [ %i.ehc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn1110, %bb.oq ], [ %i.ehc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn1109

bb.os:                                            ; preds = %bb.oo
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb23NotImplementedExceptionC2IJRKNS_11LogicalTypeEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.120", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !891
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !891
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINS_11LogicalTypeEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_RSt6vectorINS_20ExceptionFormatValueESaISC_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !436, !noalias !891 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !439, !noalias !891 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #30
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !440

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !436, !noalias !891
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !891
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !891
  invoke void @_ZN6duckdb23NotImplementedExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #23

declare noundef zeroext i1 @_ZN6duckdb5Value5IsNanIfEEbT_(float noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb5Value5IsNanIdEEbT_(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINS_11LogicalTypeEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_RSt6vectorINS_20ExceptionFormatValueESaISC_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINS_11LogicalTypeEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !710
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !11
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !16
  %i.o = load i64, ptr %i.i, align 8, !tbaa !18
  store i64 %i.o, ptr %i.g, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !19
  store ptr %i.i, ptr %i.f, align 8, !tbaa !16
  store i64 0, ptr %i.q, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !439
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !439
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #30
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

end_hunk_3
