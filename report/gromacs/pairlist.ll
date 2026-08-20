inline.NumInlined: 3346
inline.NumDeleted: 1578
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3gmx19ThreadedCellIndexerC2ERKNS_4GridEbii:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi i32 [ %i.u, %bb.e ], [ %.0.i, %bb.d ] ; 4 uses
  %i.v = icmp sgt i32 %.1.i, 1
  br i1 %i.v, label %bb.g, label %_ZN3gmxL17get_ci_block_sizeERKNS_4GridEbi.exit

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %3, -1
  %i.x = mul nsw i32 %.1.i, %i.w
  %.not.i = icmp sge i32 %i.x, %i.c
  %i.y = sext i1 %.not.i to i32
  %spec.select.i = add nsw i32 %.1.i, %i.y
  br label %_ZN3gmxL17get_ci_block_sizeERKNS_4GridEbi.exit

_ZN3gmxL17get_ci_block_sizeERKNS_4GridEbi.exit:   ; preds = %bb.f, %bb.g
  %.2.i = phi i32 [ %.1.i, %bb.f ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.2.i, ptr %i.z, align 4, !tbaa !288
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.aa, align 8, !tbaa !289
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = mul nsw i32 %.2.i, %4
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !290
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ae, align 8, !tbaa !291
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.af, align 4, !tbaa !292
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3gmx19ThreadedCellIndexer4nextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load <2 x i32>, ptr %i.a, align 8, !tbaa !103
  %i.c = add nsw <2 x i32> %i.b, splat (i32 1)    ; 3 uses
  store <2 x i32> %i.c, ptr %i.a, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !288
  %i.f = extractelement <2 x i32> %i.c, i64 0     ; 2 uses
  %i.g = icmp eq i32 %i.f, %i.e
  %i.h = extractelement <2 x i32> %i.c, i64 1     ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !254
  %i.l = add nsw i32 %i.k, -1
  %i.m = mul nsw i32 %i.l, %i.f
  %i.n = add nsw i32 %i.m, %i.h                   ; 2 uses
  store i32 %i.n, ptr %i.i, align 4, !tbaa !290
  store i32 0, ptr %i.a, align 8, !tbaa !289
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i32 [ %i.n, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !293, !nonnull !140, !align !294 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load i32, ptr %i.q, align 8, !tbaa !256
  %.not = icmp slt i32 %i.o, %i.r                 ; 2 uses
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 92 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !295  ; 2 uses
  %i.x = load i32, ptr %i.s, align 8, !tbaa !291  ; 2 uses
  %i.y = load i32, ptr %i.t, align 4, !tbaa !103
  %i.z = mul nsw i32 %i.y, %i.x
  %i.aa = load i32, ptr %i.u, align 4, !tbaa !292 ; 2 uses
  %i.ab = add nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr %i.w, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !103
  %.not34 = icmp slt i32 %i.o, %i.af
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.ag = phi i32 [ %i.ao, %bb.e ], [ %i.x, %.preheader ] ; 2 uses
  %i.ah = phi i32 [ %i.am, %bb.e ], [ %i.aa, %.preheader ]
  %i.ai = add nsw i32 %i.ah, 1                    ; 3 uses
  store i32 %i.ai, ptr %i.u, align 4, !tbaa !292
  %i.aj = load i32, ptr %i.t, align 4, !tbaa !103 ; 2 uses
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.al = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.al, ptr %i.s, align 8, !tbaa !291
  store i32 0, ptr %i.u, align 4, !tbaa !292
  %.pre = load i32, ptr %i.t, align 4, !tbaa !103
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.am = phi i32 [ 0, %bb.d ], [ %i.ai, %.lr.ph ] ; 2 uses
  %i.an = phi i32 [ %.pre, %bb.d ], [ %i.aj, %.lr.ph ]
  %i.ao = phi i32 [ %i.al, %bb.d ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.ap = mul nsw i32 %i.an, %i.ao
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.w, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !103
  %.not3 = icmp slt i32 %i.o, %i.au
  br i1 %.not3, label %.loopexit, label %.lr.ph, !llvm.loop !296

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.c
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(232) %2, ptr %3, ptr %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i1 noundef zeroext %7, i32 noundef %8, ptr nofree noundef captures(address_is_null) %9, ptr nofree noundef captures(address_is_null) %10) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"struct.std::array.183", align 16 ; 20 uses
  %12 = alloca %"class.gmx::ArrayRef.177", align 8 ; 12 uses
  %13 = alloca %"class.gmx::ArrayRef.110", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.gmx::ArrayRef.167", align 8 ; 5 uses
  %15 = alloca %"class.gmx::ArrayRef.170", align 8 ; 5 uses
  %16 = alloca %"class.gmx::ArrayRef.110", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.gmx::BasicVector", align 8 ; 9 uses
  %18 = alloca %"struct.std::array.183", align 8  ; 4 uses
  %19 = alloca %"class.gmx::ArrayRef.110", align 8 ; 7 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 2 uses
  %i.g = alloca float, align 4                    ; 7 uses
  %i.h = alloca i32, align 4                      ; 14 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca float, align 4                    ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  store ptr %3, ptr %19, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  store ptr %4, ptr %i.o, align 8
  store ptr %5, ptr %i.e, align 8, !tbaa !297
  %i.p = zext i1 %7 to i8
  store i8 %i.p, ptr %i.f, align 1, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !160, !nonnull !140, !align !161
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !300
  store float %i.t, ptr %i.g, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 9 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !138, !range !139, !noundef !140
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %.sink = select i1 %i.w, i64 8, i64 56
  %.sink489.in.idx = select i1 %i.w, i64 0, i64 48
  %.sink489.in = getelementptr inbounds nuw i8, ptr %0, i64 %.sink489.in.idx
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.sink489 = load ptr, ptr %.sink489.in, align 8, !tbaa !301
  %.sink490 = load ptr, ptr %i.x, align 8, !tbaa !301
  %i.y = ptrtoint ptr %.sink490 to i64
  %i.z = ptrtoint ptr %.sink489 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 8
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  store i32 %i.ac, ptr %i.h, align 4, !tbaa !103
  %i.ad = load ptr, ptr @debug, align 8, !tbaa !302 ; 2 uses
  %.not102 = icmp eq ptr %i.ad, null
  br i1 %.not102, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.7, i32 noundef %i.ac) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 624
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !304, !range !139, !noundef !140
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = icmp eq i32 %1, 0                       ; 5 uses
  %or.cond = and i1 %i.ai, %i.ah
  br i1 %or.cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 632 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 408
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !346
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !347 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 640 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %i.am
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE5clearEv.exit.i, label %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.am, ptr %i.an, align 8, !tbaa !348
  br label %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE5clearEv.exit.i

_ZNSt6vectorISt5arrayImLm2EESaIS1_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.d
  %i.ap = phi ptr [ %i.ao, %bb.d ], [ %i.am, %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.aq = add i32 %i.al, 15
  %i.ar = sdiv i32 %i.aq, 16
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.am to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %i.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE5clearEv.exit.i
  %i.ay = sub nuw nsw i64 %i.as, %i.aw
  call void @_ZNSt6vectorISt5arrayImLm2EESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr %i.ap, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %18)
  br label %_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit

bb.f:                                             ; preds = %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE5clearEv.exit.i
  %i.az = icmp ugt i64 %i.aw, %i.as
  br i1 %i.az, label %bb.g, label %_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.as ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.ap, %i.ba
  br i1 %.not.i.i4.i, label %_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit, label %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i5.i

_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i5.i: ; preds = %bb.g
  store ptr %i.ba, ptr %i.an, align 8, !tbaa !348
  br label %_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit

_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  br label %bb.h

bb.h:                                             ; preds = %_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i32 0, ptr %i.i, align 4, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !53
  %i.bb = load i8, ptr %i.u, align 1, !tbaa !138, !range !139, !noundef !140
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = icmp slt i32 %8, 1
  %or.cond3.not = or i1 %i.bd, %i.bc
  br i1 %or.cond3.not, label %_ZN3gmxL19get_nsubpair_targetERKNS_7GridSetENS_19InteractionLocalityEfiPiPf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !349 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !256 ; 2 uses
  %.not.i = icmp sge i32 %i.bh, %8
  %i.bi = icmp eq i32 %i.bh, 0
  %or.cond.i = or i1 %.not.i, %i.bi
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.i, align 4, !tbaa !103
  br label %_ZN3gmxL19get_nsubpair_targetERKNS_7GridSetENS_19InteractionLocalityEfiPiPf.exit

bb.k:                                             ; preds = %bb.i
  %i.bj = load float, ptr %i.g, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.bk = call { <2 x float>, float } @_ZNK3gmx4Grid15averageCellSizeEv(ptr noundef nonnull align 8 dereferenceable(372) %i.bf) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.bk, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.bk, 1
  store <2 x float> %.fca.0.extract.i, ptr %17, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store float %.fca.1.extract.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !351 ; 3 uses
  %i.bn = call noundef float @_ZN3gmx29nbnxn_get_rlist_effective_incEiRKNS_11BasicVectorIfEE(i32 noundef %i.bm, ptr noundef nonnull align 4 dereferenceable(12) %17)
  %i.bo = fadd float %i.bj, %i.bn                 ; 5 uses
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 5
  %.sroa.454.0.copyload.i = load i8, ptr %.sroa.454.0..sroa_idx.i, align 1, !tbaa !299
  %i.bp = trunc nuw i8 %.sroa.454.0.copyload.i to i1
  br i1 %i.bp, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !352 ; 3 uses
  %i.bq = load i32, ptr %.sroa.4.0.copyload.i, align 4, !tbaa !354 ; 3 uses
  %.not38.i = icmp eq i32 %i.bq, 1
  br i1 %.not38.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bs = load float, ptr %i.br, align 8, !tbaa !361
  %i.bt = sitofp i32 %i.bm to float
  %i.bu = fdiv float %i.bs, %i.bt                 ; 2 uses
  %i.bv = fmul float %i.bu, %i.bu
  %i.bw = icmp sgt i32 %i.bq, 0
  br i1 %i.bw, label %.lr.ph.i.i, label %_ZN3gmxL13nonlocal_vol2ERKNS_11DomdecZonesEPKff.exit.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 204
  %i.bz = fpext float %i.bo to double             ; 9 uses
  %i.ca = fmul double %i.bz, f0x3FE921FB54442D18
  %i.cb = fmul double %i.ca, %i.bz
  %i.cc = fmul double %i.cb, %i.bz
  %i.cd = fmul double %i.cc, %i.bz
  %i.ce = fptrunc double %i.cd to float
  %i.cf = fpext float %i.ce to double
  %wide.trip.count.i.i = zext nneg i32 %i.bq to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.ch = load float, ptr %17, align 8            ; 2 uses
  %i.ci = fpext float %i.ch to double
  %i.cj = call double @llvm.fmuladd.f64(double %i.ci, double 5.000000e-01, double 0.000000e+00)
  %i.ck = fptrunc double %i.cj to float
  %i.cl = load float, ptr %i.cg, align 4          ; 2 uses
  %i.cm = fpext float %i.cl to double
  %i.cn = load float, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.co = fpext float %i.cn to double
  br label %bb.n

bb.n:                                             ; preds = %bb.u, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.u ] ; 3 uses
  %.056.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %.1.i.i, %bb.u ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %i.bx, i64 %indvars.iv.i.i ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !103 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !103 ; 2 uses
  %i.ct = add nsw i32 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !103 ; 2 uses
  %i.cw = add nsw i32 %i.ct, %i.cv
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %.preheader.i.i, label %bb.u

.preheader.i.i:                                   ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %indvars.iv.i.i ; 6 uses
  %i.cz = icmp eq i32 %i.cq, 0
  br i1 %i.cz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.db = load float, ptr %i.da, align 4, !tbaa !53
  %i.dc = load float, ptr %i.cy, align 4, !tbaa !53
  %i.dd = fsub float %i.db, %i.dc
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader.i.i
  %.149.i.i = phi float [ %i.ck, %bb.o ], [ 0.000000e+00, %.preheader.i.i ] ; 2 uses
  %.147.i.i = phi float [ %i.ch, %bb.o ], [ 1.000000e+00, %.preheader.i.i ] ; 2 uses
  %.145.i.i = phi float [ %i.dd, %bb.o ], [ 1.000000e+00, %.preheader.i.i ] ; 2 uses
  %i.de = icmp eq i32 %i.cs, 0
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.df = fpext float %.149.i.i to double
  %i.dg = call double @llvm.fmuladd.f64(double %i.cm, double 5.000000e-01, double %i.df)
  %i.dh = fptrunc double %i.dg to float
  %i.di = fmul float %i.cl, %.147.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !53
  %i.dn = fsub float %i.dk, %i.dm
  %i.do = fmul float %.145.i.i, %i.dn
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.149.1.i.i = phi float [ %i.dh, %bb.q ], [ %.149.i.i, %bb.p ] ; 2 uses
  %.147.1.i.i = phi float [ %i.di, %bb.q ], [ %.147.i.i, %bb.p ] ; 2 uses
  %.145.1.i.i = phi float [ %i.do, %bb.q ], [ %.145.i.i, %bb.p ] ; 2 uses
  %i.dp = icmp eq i32 %i.cv, 0
  br i1 %i.dp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dq = fpext float %.149.1.i.i to double
  %i.dr = call double @llvm.fmuladd.f64(double %i.co, double 5.000000e-01, double %i.dq)
  %i.ds = fptrunc double %i.dr to float
  %i.dt = fmul float %i.cn, %.147.1.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  %i.dv = load float, ptr %i.du, align 4, !tbaa !53
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !53
  %i.dy = fsub float %i.dv, %i.dx
  %i.dz = fmul float %.145.1.i.i, %i.dy
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.149.2.i.i = phi float [ %i.ds, %bb.s ], [ %.149.1.i.i, %bb.r ]
  %.147.2.i.i = phi float [ %i.dt, %bb.s ], [ %.147.1.i.i, %bb.r ]
  %.145.2.i.i = phi float [ %i.dz, %bb.s ], [ %.145.1.i.i, %bb.r ]
  %i.ea = fmul float %.149.2.i.i, 4.000000e+00
  %i.eb = fpext float %i.ea to double
  %i.ec = fmul double %i.eb, f0x400921FB54442D18
  %i.ed = fdiv double %i.ec, 6.000000e+00
  %i.ee = fmul double %i.ed, %i.bz
  %i.ef = fmul double %i.ee, %i.bz
  %i.eg = call double @llvm.fmuladd.f64(double %i.ef, double %i.bz, double %i.cf)
  %i.eh = fptrunc double %i.eg to float
  %i.ei = fpext float %.147.2.i.i to double
  %i.ej = fmul double %i.ei, 5.000000e-01
  %i.ek = fmul double %i.ej, %i.bz
  %i.el = fpext float %i.eh to double
  %i.em = call double @llvm.fmuladd.f64(double %i.ek, double %i.bz, double %i.el)
  %i.en = fptrunc double %i.em to float
  %i.eo = call float @llvm.fmuladd.f32(float %i.en, float %.145.2.i.i, float %.056.i.i)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
end_hunk_0
begin_hunk_1_@_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE:bb.a
  %i.bcu = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 168 ; 2 uses
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !39
  store ptr %i.bcv, ptr %i.bcs, align 8, !tbaa !39
  %i.bcw = load <2 x ptr>, ptr %i.bcq, align 8, !tbaa !182
  store ptr %i.bcf, ptr %i.bcq, align 8, !tbaa !38
  store ptr %i.bch, ptr %i.bcr, align 8, !tbaa !181
  store <2 x ptr> %i.bcw, ptr %i.bce, align 8, !tbaa !182
  store ptr %i.bct, ptr %i.bcu, align 8, !tbaa !39
  %i.bcx = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 256 ; 2 uses
  %.not.i208 = icmp eq ptr %i.bcx, %i.bby
  br i1 %.not.i208, label %_ZN3gmxL29prepareListsForDynamicPruningENS_8ArrayRefINS_16NbnxnPairlistCpuEEE.exit, label %.lr.ph.i207

_ZN3gmxL29prepareListsForDynamicPruningENS_8ArrayRefINS_16NbnxnPairlistCpuEEE.exit: ; preds = %bb.do, %bb.dl, %bb.dk, %.thread260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #20

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx11PairlistSet18constructPairlistsENS_19InteractionLocalityERKNS_7GridSetENS_8ArrayRefINS_14PairsearchWorkEEEPNS_16nbnxn_atomdata_tERKNS_11ListOfListsIiEEbiP6t_nrnbPNS_19SearchCycleCountingE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %8, ptr noundef nonnull align 8 dereferenceable(372) %9, ptr noundef nonnull align 8 dereferenceable(372) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %11, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %17 = alloca %"struct.gmx::AtomPairlist::IEntry", align 4 ; 4 uses
  %18 = alloca %"struct.gmx::AtomPairlist::IEntry", align 4 ; 6 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.63", align 1 ; 3 uses
  %22 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = alloca [3 x [3 x float]], align 16       ; 11 uses
  %23 = alloca %"class.gmx::ThreadedCellIndexer", align 8 ; 10 uses
  %24 = alloca %"struct.gmx::AtomPairlist::IEntry", align 4 ; 4 uses
  %25 = alloca %"struct.gmx::AtomPairlist::IEntry", align 4 ; 5 uses
  %26 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %27 = alloca %"struct.gmx::AtomPairlist::IEntry", align 4 ; 6 uses
  %28 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator.63", align 1 ; 3 uses
  %31 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = alloca [3 x [3 x float]], align 16       ; 11 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %32 = alloca %"class.gmx::ThreadedCellIndexer", align 8 ; 10 uses
  %33 = alloca %"class.gmx::BasicVector", align 4 ; 7 uses
  %34 = alloca %"struct.std::array.183", align 8  ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !103    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.pd

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i32 %i.j, ptr %i.e, align 4, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i32 1, ptr %i.f, align 4, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i32 0, ptr %i.g, align 4, !tbaa !103
  %i.k = load i32, ptr %0, align 4, !tbaa !103    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !103
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !103
  %i.n = load i32, ptr %i.d, align 4, !tbaa !103  ; 2 uses
  %.not334 = icmp sgt i32 %i.n, %i.m
  br i1 %.not334, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 81
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 132 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 164 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 124 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 76 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 76 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 68 ; 8 uses
  %.sroa.12.0..sroa_idx.i178 = getelementptr inbounds nuw i8, ptr %8, i64 6 ; 2 uses
  %.sroa.13.0..sroa_idx829.i = getelementptr inbounds nuw i8, ptr %8, i64 7 ; 2 uses
  %.sroa.14.0..sroa_idx835.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ak = icmp eq ptr %9, %10                     ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 100 ; 5 uses
  %.sroa.3.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %8, i64 5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 92 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %23, i64 28 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 152 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 92 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 152 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 176 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 100 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 288
  %i.bl = freeze <8 x float> poison               ; 5 uses
  %i.bm = freeze <4 x float> poison               ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 344 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 344 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 320
  %i.cd = getelementptr inbounds nuw i8, ptr %32, i64 12 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %32, i64 20
  %i.cg = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %32, i64 28 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %33, i64 4 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 272 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cr = sext i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.pa
  %indvars.iv = phi i64 [ %i.cr, %.lr.ph ], [ %indvars.iv.next, %bb.pa ] ; 11 uses
  %i.cs = load ptr, ptr %3, align 8, !tbaa !297   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 624
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !304, !range !139, !noundef !140
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.cw = load i32, ptr %4, align 4, !tbaa !103
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.cy = load i32, ptr %5, align 4, !tbaa !103
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.da = load i64, ptr %6, align 8
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = getelementptr inbounds [216 x i8], ptr %i.db, i64 %indvars.iv ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 88 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 408
  %i.df = load i32, ptr %i.de, align 8, !tbaa !346
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !347 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 96 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.di, %i.dg
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE5clearEv.exit.i, label %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.f
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !348
  br label %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE5clearEv.exit.i

_ZNSt6vectorISt5arrayImLm2EESaIS1_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.f
  %i.dj = phi ptr [ %i.di, %bb.f ], [ %i.dg, %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #14
  %i.dk = add i32 %i.df, 15
  %i.dl = sdiv i32 %i.dk, 16
  %i.dm = sext i32 %i.dl to i64                   ; 4 uses
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = ptrtoint ptr %i.dg to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4                 ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.dm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  br i1 %i.dr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE5clearEv.exit.i
  %i.ds = sub nuw nsw i64 %i.dm, %i.dq
  invoke void @_ZNSt6vectorISt5arrayImLm2EESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr %i.dj, i64 noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt6vectorISt5arrayImLm2EESaIS1_EE5clearEv.exit.i
  %i.dt = icmp ugt i64 %i.dq, %i.dm
  br i1 %i.dt, label %bb.i, label %_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit

bb.i:                                             ; preds = %bb.h
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dm ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.dj, %i.du
  br i1 %.not.i.i4.i, label %_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit, label %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i5.i

_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i5.i: ; preds = %bb.i
  store ptr %i.du, ptr %i.dh, align 8, !tbaa !348
  br label %_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit

_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPSt5arrayImLm2EES1_EvT_S3_RSaIT0_E.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #14
  br label %bb.k

bb.j:                                             ; preds = %bb.o, %bb.g
  %i.dv = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

bb.k:                                             ; preds = %_ZN3gmxL24resizeAndZeroBufferFlagsEPSt6vectorISt5arrayImLm2EESaIS2_EEi.exit, %bb.e, %bb.d, %bb.c
  %i.dw = load i8, ptr %i.o, align 8, !tbaa !121, !range !139, !noundef !140
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = icmp sgt i64 %indvars.iv, 0
  %or.cond = and i1 %i.dy, %i.dx
  br i1 %or.cond, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.dz = load ptr, ptr %i.p, align 8, !tbaa !157
  %i.ea = getelementptr inbounds nuw [256 x i8], ptr %i.dz, i64 %indvars.iv ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 96 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !392
  %.not.i.i.i57 = icmp eq ptr %i.ee, %i.ec
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !392
  br label %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i

_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i: ; preds = %bb.m, %bb.l
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 120
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !100 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 128 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !393
  %.not.i.i4.i58 = icmp eq ptr %i.ei, %i.eg
  br i1 %.not.i.i4.i58, label %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !393
  br label %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i

_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN3gmx11nbnxn_sci_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 160 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !98 ; 3 uses
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !99 ; 3 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 7                 ; 2 uses
  %i.er = icmp eq ptr %i.el, %i.em
  br i1 %i.er, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  %i.et = sub nuw nsw i64 1, %i.eq
  invoke void @_ZNSt6vectorIN3gmx12nbnxn_excl_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.es, i64 noundef %i.et)
          to label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit unwind label %bb.j

bb.p:                                             ; preds = %_ZNSt6vectorIN3gmx17nbnxn_cj_packed_tENS0_9AllocatorIS1_NS0_20HostAllocationPolicyEEEE5clearEv.exit.i
  %i.eu = icmp ugt i64 %i.eq, 1
  br i1 %i.eu, label %bb.q, label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit

bb.q:                                             ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 128 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.el, %i.ev
  br i1 %.not.i.i5.i, label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.ev, ptr %i.ek, align 8, !tbaa !98
  br label %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit

_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit: ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 176
  store i32 0, ptr %i.ew, align 8, !tbaa !93
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %_ZN3gmxL14clear_pairlistEPNS_16NbnxnPairlistGpuE.exit
  %i.ex = load i64, ptr %6, align 8
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = getelementptr inbounds [216 x i8], ptr %i.ey, i64 %indvars.iv ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 128 ; 2 uses
  %i.fb = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !406 ; 2 uses
  %i.fc = extractvalue { i32, i32 } %i.fb, 0
  %i.fd = extractvalue { i32, i32 } %i.fb, 1
  %i.fe = zext i32 %i.fc to i64
  %i.ff = zext i32 %i.fd to i64
  %i.fg = shl nuw i64 %i.ff, 32
  %i.fh = or disjoint i64 %i.fg, %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 144 ; 2 uses
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !407
  %i.fj = load ptr, ptr %i.q, align 8, !tbaa !456 ; 2 uses
  %i.fk = load ptr, ptr %i.r, align 8, !tbaa !456
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !187
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.fo = phi ptr [ %i.fn, %bb.t ], [ null, %bb.s ] ; 20 uses
  %i.fp = load i8, ptr %i.s, align 1, !tbaa !138, !range !139, !noundef !140
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = load ptr, ptr %3, align 8, !tbaa !297   ; 9 uses
  %i.fs = load i32, ptr %2, align 4, !tbaa !103   ; 3 uses
  %i.ft = load i8, ptr %10, align 8, !tbaa !496, !range !139, !noundef !140 ; 2 uses
  %i.fu = load i8, ptr %9, align 8, !range !139   ; 2 uses
  br i1 %i.fq, label %bb.v, label %bb.ja

bb.v:                                             ; preds = %bb.u
  %i.fv = load i8, ptr %12, align 1, !tbaa !299, !range !139, !noundef !140
  %i.fw = load float, ptr %13, align 4, !tbaa !53 ; 9 uses
  %i.fx = load ptr, ptr %i.t, align 8, !tbaa !160, !nonnull !140, !align !161
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !118 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 624
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !304, !range !139, !noundef !140
  %i.gb = trunc nuw i8 %i.ga to i1                ; 3 uses
  %i.gc = load ptr, ptr %7, align 8, !tbaa !173
  %i.gd = getelementptr inbounds nuw [256 x i8], ptr %i.gc, i64 %indvars.iv ; 14 uses
  %.not.not.i = icmp eq i8 %i.ft, 0
  %.not.not364.i = icmp eq i8 %i.fu, 0
  %or.cond531.i = select i1 %.not.not.i, i1 true, i1 %.not.not364.i
  br i1 %or.cond531.i, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #14
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull align 1 dereferenceable(63) @.str.2, i8 noundef zeroext 2)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(40) %31, i32 noundef 2850) #33
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.w
  %i.ge = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.ab:                                            ; preds = %bb.x
  %i.gf = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %i.gg = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %31) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn.i = phi { ptr, i32 } [ %i.gg, %bb.ac ], [ %i.gf, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  %i.gh = load ptr, ptr %29, align 8, !tbaa !168  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_1
