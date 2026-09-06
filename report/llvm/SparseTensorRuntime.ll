Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparseTensorRuntime?download=true
inline.NumInlined: 25103
inline.NumDeleted: 4164
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 368
loop-unroll.NumUnrolled: 378
begin_hunk_0_@_ZN4mlir13sparse_tensor19SparseTensorStorageImtdE15finalizeSegmentEmmm:tailrecurse.peel.begin
  br label %.loopexit

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !618
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.tr34.lcssa47 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !507
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !508
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !576
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.tr34.lcssa47 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !603
  %i.bo = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.bi, ptr %i.b, align 8, !tbaa !165
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !603 ; 2 uses
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr %i.bt, i64 noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !165
  %i.bw = mul i64 %i.bv, %.tr36                   ; 2 uses
  %i.bx = add i64 %.tr34, 1                       ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.m
  br i1 %i.by, label %.loopexit53, label %tailrecurse, !llvm.loop !1178

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.bw, %bb.d ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !526
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !600 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cc, i64 %i.cf
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr %i.cg, i64 noundef %.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageImtdE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !600
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !526
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !600 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageImtdE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageImtdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageImtdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.av, %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit ] ; 28 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl i64 %.092115, 1                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !182
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !165
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.aa
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ab)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !165
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = add i64 %.091116, 2
  %i.ag = getelementptr i8, ptr %i.ac, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !165
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.090117
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.092115
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef %i.ae, ptr noundef nonnull %i.am)
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %.090117
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %.090117
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !182
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.092115
  %i.at = load i64, ptr %i.as, align 8, !tbaa !165
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.at
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef %i.ai, ptr noundef %i.au)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.af, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aw, align 8, !tbaa !165
  %i.ax = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ay = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.ax)
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.ba = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.ax, i1 true)
  switch i64 %i.ba, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.090117
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !182
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.092115
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !165
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.090117
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !182
  %.idx.i = shl i64 %.092115, 4
  %i.bj = getelementptr i8, ptr %i.bi, i64 %.idx.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !165
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.090117
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !165
  %i.bp = mul i64 %i.bo, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bf, %bb.g ], [ %i.bl, %bb.h ], [ %i.bp, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bq = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !1179

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.br = sub i64 %3, %.090117                    ; 14 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !165
  %i.bu = inttoptr i64 %i.bt to ptr               ; 4 uses
  %i.bv = add i64 %.091116, 2                     ; 5 uses
  %i.bw = getelementptr i8, ptr %i.bs, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ca = icmp eq i64 %i.bz, 1048576
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.090117 ; 2 uses
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cd = shl i64 %.092115, 1                     ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cd
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef %i.bu, ptr noundef %i.ce)
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !182
  %i.ci = getelementptr [8 x i8], ptr %i.ch, i64 %i.cd
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.092115
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef %i.bu, ptr noundef nonnull %i.cl)
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.090117
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !182
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cj, %bb.k ], [ %i.cp, %bb.l ]
  %.089 = load i64, ptr %.089.in, align 8, !tbaa !165
  %.089.fr = freeze i64 %.089                     ; 13 uses
  %i.cq = icmp ult i64 %.090117, %3
  br i1 %i.cq, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.not125 = icmp eq i64 %.089.fr, 0
  %.pre136 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 4 uses
  br i1 %.not125, label %.lr.ph123.split.preheader.preheader, label %.lr.ph123.split.us.preheader

.lr.ph123.split.preheader.preheader:              ; preds = %.lr.ph123
  %.neg = add i64 %.090117, 1
  %xtraiter167 = and i64 %i.br, 1
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph123.split.preheader.prol.loopexit, label %.lr.ph123.split.preheader.prol

.lr.ph123.split.preheader.prol:                   ; preds = %.lr.ph123.split.preheader.preheader
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.pre136, i64 %.090117 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !508 ; 2 uses
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !507
  %.not146.prol = icmp eq ptr %i.cu, %i.ct
  br i1 %.not146.prol, label %_ZNSt6vectorItSaItEE6resizeEm.exit.prol, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.preheader.prol
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.prol

_ZNSt6vectorItSaItEE6resizeEm.exit.prol:          ; preds = %bb.n, %.lr.ph123.split.preheader.prol
  %i.cv = add nuw i64 %.090117, 1
  br label %.lr.ph123.split.preheader.prol.loopexit

.lr.ph123.split.preheader.prol.loopexit:          ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.prol, %.lr.ph123.split.preheader.preheader
  %.088121.unr = phi i64 [ %.090117, %.lr.ph123.split.preheader.preheader ], [ %i.cv, %_ZNSt6vectorItSaItEE6resizeEm.exit.prol ]
  %i.cw = icmp eq i64 %3, %.neg
  br i1 %i.cw, label %._crit_edge124, label %.lr.ph123.split.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %i.cx = shl i64 %.089.fr, 1
  %i.cy = add i64 %.089.fr, -1
  %9 = sub i64 %3, %.090117
  %i.cz = shl i64 %9, 1
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr i8, ptr %i.by, i64 %i.da
  %min.iters.check = icmp ult i64 %.089.fr, 8
  %n.vec = and i64 %.089.fr, -8                   ; 3 uses
  %cmp.n = icmp eq i64 %.089.fr, %n.vec
  %xtraiter = and i64 %.089.fr, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre136, %.lr.ph123.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep157 = getelementptr i8, ptr %i.by, i64 %i.dd ; 4 uses
  %scevgep158 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep157, %scevgep158
  %umin = select i1 %i.de, ptr %scevgep157, ptr %scevgep158
  %i.df = icmp ugt ptr %scevgep157, %scevgep158
  %umax = select i1 %i.df, ptr %scevgep157, ptr %scevgep158
  %scevgep159 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088121.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ugt i64 %.089.fr, %i.dn
  br i1 %i.do, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph123.split.us
  %i.dp = icmp ult i64 %.089.fr, %i.dn
  br i1 %i.dp, label %bb.p, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.p:                                             ; preds = %bb.o
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %.089.fr ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.r:                                             ; preds = %.lr.ph123.split.us
  %i.dr = sub nuw i64 %.089.fr, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.ds = phi ptr [ %.pre135, %bb.r ], [ %i.dj, %bb.q ], [ %i.dj, %bb.p ], [ %i.dj, %bb.o ] ; 8 uses
  %i.dt = phi ptr [ %.pre134, %bb.r ], [ %i.dc, %bb.q ], [ %i.dc, %bb.p ], [ %i.dc, %bb.o ]
  %i.du = sub nuw i64 %.088121.us, %.090117
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.du ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.ds, i64 %i.cx
  %bound0 = icmp ult ptr %i.ds, %scevgep159
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dw = or disjoint i64 %index, 1
  %i.dx = or disjoint i64 %index, 2
  %i.dy = or disjoint i64 %index, 3
  %i.dz = or disjoint i64 %index, 4
  %i.ea = or disjoint i64 %index, 5
  %i.eb = or disjoint i64 %index, 6
  %i.ec = or disjoint i64 %index, 7
  %i.ed = mul i64 %index, %i.br
  %i.ee = mul i64 %i.dw, %i.br
  %i.ef = mul i64 %i.dx, %i.br
  %i.eg = mul i64 %i.dy, %i.br
  %i.eh = mul i64 %i.dz, %i.br
  %i.ei = mul i64 %i.ea, %i.br
  %i.ej = mul i64 %i.eb, %i.br
  %i.ek = mul i64 %i.ec, %i.br
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ej
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ek
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !1187
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !1187
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !1187
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !1187
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !1187
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !1187
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !1187
  %i.fa = load i16, ptr %i.es, align 2, !tbaa !536, !alias.scope !1187
  %i.fb = insertelement <8 x i16> poison, i16 %i.et, i64 0
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 1
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 2
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 3
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 4
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 5
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 6
  %i.fi = insertelement <8 x i16> %i.fh, i16 %i.fa, i64 7
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index
  store <8 x i16> %i.fi, ptr %i.fj, align 2, !tbaa !536, !alias.scope !1188, !noalias !1187
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !1183

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fp, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fl = mul i64 %.087119.us.prol, %i.br
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !536
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %.087119.us.prol
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !536
  %i.fp = add nuw i64 %.087119.us.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1184

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fp, %scalar.ph.prol ]
  %i.fq = sub i64 %.087119.us.ph, %.089.fr
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gl, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fs = mul i64 %.087119.us, %i.br
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !536
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %.087119.us
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !536
  %i.fw = add nuw i64 %.087119.us, 1              ; 2 uses
  %i.fx = mul i64 %i.fw, %i.br
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !536
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.fw
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !536
  %i.gb = add nuw i64 %.087119.us, 2              ; 2 uses
  %i.gc = mul i64 %i.gb, %i.br
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !536
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.gb
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !536
  %i.gg = add nuw i64 %.087119.us, 3              ; 2 uses
  %i.gh = mul i64 %i.gg, %i.br
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !536
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.gg
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !536
  %i.gl = add nuw i64 %.087119.us, 4              ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gl, %.089.fr
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1185

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gm = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gm, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !1186

._crit_edge124:                                   ; preds = %._crit_edge.us, %.lr.ph123.split.preheader.prol.loopexit, %_ZNSt6vectorItSaItEE6resizeEm.exit.1, %bb.m
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.go, align 8, !tbaa !165
  %i.gp = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gq = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.gp)
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %.split.i105, label %bb.u

.split.i105:                                      ; preds = %._crit_edge124
  %i.gs = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.gp, i1 true)
  switch i64 %i.gs, label %bb.u [
    i64 18, label %bb.s
    i64 20, label %bb.t
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit107
  ]

bb.s:                                             ; preds = %.split.i105
  %i.gt = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %.090117
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !182
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %.092115
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !165
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtdE13assembledSizeEmm.exit107
end_hunk_0
begin_hunk_1_@_ZN4mlir13sparse_tensor19SparseTensorStorageIjtdE15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !618
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.tr34.lcssa47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !507
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !508
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !613
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.tr34.lcssa47 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !627
  %i.bp = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bq = trunc i64 %i.bj to i32
  store i32 %i.bq, ptr %i.b, align 4, !tbaa !546
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !627 ; 2 uses
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.bv, i64 noundef %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !1317

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.by, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !526
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !600 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr %i.ci, i64 noundef %.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIjtdE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !600
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !526
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !600 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIjtdE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIjtdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIjtdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit ] ; 25 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl i64 %.092115, 1                      ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !499
  %i.y = getelementptr [4 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !546
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091116, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090117
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.092115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !499
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.092115
  %i.au = load i32, ptr %i.at, align 4, !tbaa !546
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !499
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !546
  %i.bi = zext i32 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !499
  %.idx.i = shl i64 %.092115, 3
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !546
  %i.bp = zext i32 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !1318

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 13 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ce = icmp eq i64 %i.cd, 1048576
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117 ; 2 uses
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = shl i64 %.092115, 1                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ch
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.090117
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !499
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = getelementptr i8, ptr %i.cm, i64 -4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.092115
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef nonnull %i.cp)
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.090117
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !499
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cn, %bb.k ], [ %i.ct, %bb.l ]
  %i.cu = icmp ult i64 %.090117, %3
  br i1 %i.cu, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.089 = load i32, ptr %.089.in, align 4, !tbaa !546
  %.089.fr = freeze i32 %.089                     ; 3 uses
  %i.cv = zext i32 %.089.fr to i64                ; 15 uses
  %.not125 = icmp eq i32 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = add nsw i64 %i.cv, -1
  %9 = sub i64 %3, %.090117
  %i.cy = shl i64 %9, 1
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cc, i64 %i.cz
  %min.iters.check = icmp ult i32 %.089.fr, 8
  %n.vec = and i64 %i.cv, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.db = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.ds, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gl, %._crit_edge.us ] ; 4 uses
  %i.dc = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dc ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.da, i64 %i.dc ; 4 uses
  %i.dd = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.dd, ptr %scevgep159, ptr %scevgep160
  %i.de = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.088121.us ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !507 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !508 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 1                 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.cv
  br i1 %i.dn, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.do = icmp ugt i64 %i.dm, %i.cv
  br i1 %i.do, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.dh, %i.dp
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %i.dg, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dq = sub nuw nsw i64 %i.cv, %i.dm
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef %i.dq)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dr = phi ptr [ %.pre135, %bb.q ], [ %i.di, %bb.p ], [ %i.di, %bb.o ], [ %i.di, %bb.n ] ; 8 uses
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ]
  %i.dt = sub nuw i64 %.088121.us, %.090117
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dt ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.cw
  %bound0 = icmp ult ptr %i.dr, %scevgep161
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dv = or disjoint i64 %index, 1
  %i.dw = or disjoint i64 %index, 2
  %i.dx = or disjoint i64 %index, 3
  %i.dy = or disjoint i64 %index, 4
  %i.dz = or disjoint i64 %index, 5
  %i.ea = or disjoint i64 %index, 6
  %i.eb = or disjoint i64 %index, 7
  %i.ec = mul i64 %index, %i.bv
  %i.ed = mul i64 %i.dv, %i.bv
  %i.ee = mul i64 %i.dw, %i.bv
  %i.ef = mul i64 %i.dx, %i.bv
  %i.eg = mul i64 %i.dy, %i.bv
  %i.eh = mul i64 %i.dz, %i.bv
  %i.ei = mul i64 %i.ea, %i.bv
  %i.ej = mul i64 %i.eb, %i.bv
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ec
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ej
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !536, !alias.scope !1326
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !1326
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !1326
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !1326
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !1326
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !1326
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !1326
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !1326
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !536, !alias.scope !1327, !noalias !1326
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !1322

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fo, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = mul i64 %.087119.us.prol, %i.bv
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !536
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us.prol
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !536
  %i.fo = add nuw nsw i64 %.087119.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1323

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = sub nsw i64 %.087119.us.ph, %i.cv
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gk, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = mul i64 %.087119.us, %i.bv
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !536
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !536
  %i.fv = add nuw nsw i64 %.087119.us, 1          ; 2 uses
  %i.fw = mul i64 %i.fv, %i.bv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !536
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.fv
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !536
  %i.ga = add nuw nsw i64 %.087119.us, 2          ; 2 uses
  %i.gb = mul i64 %i.ga, %i.bv
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !536
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ga
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !536
  %i.gf = add nuw nsw i64 %.087119.us, 3          ; 2 uses
  %i.gg = mul i64 %i.gf, %i.bv
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !536
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gf
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !536
  %i.gk = add nuw nsw i64 %.087119.us, 4          ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gk, %i.cv
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1324

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gl = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gl, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !1325

._crit_edge124:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.gn, align 8, !tbaa !165
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gp = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.go)
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge124
  %i.gr = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.go, i1 true)
  switch i64 %i.gr, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtdE13assembledSizeEmm.exit107
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.090117
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !499
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.092115
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !546
  %i.gx = zext i32 %i.gw to i64
end_hunk_1
begin_hunk_2_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttdE15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !618
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.tr34.lcssa47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !507
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !508
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !618
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.tr34.lcssa47 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !628
  %i.bp = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bq = trunc i64 %i.bj to i16
  store i16 %i.bq, ptr %i.b, align 2, !tbaa !536
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !628 ; 2 uses
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.bv, i64 noundef %i.bp, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !1460

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.by, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !526
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !600 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr %i.ci, i64 noundef %.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttdE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !600
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !526
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !600 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttdE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit ] ; 25 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl nuw i64 %.092115, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091116, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090117
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.092115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !1461

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 13 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ce = icmp eq i64 %i.cd, 1048576
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117 ; 2 uses
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = shl i64 %.092115, 1                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.ch
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.090117
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !508
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = getelementptr i8, ptr %i.cm, i64 -2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %.092115
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef nonnull %i.cp)
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.090117
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !508
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cn, %bb.k ], [ %i.ct, %bb.l ]
  %i.cu = icmp ult i64 %.090117, %3
  br i1 %i.cu, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.089 = load i16, ptr %.089.in, align 2, !tbaa !536
  %.089.fr = freeze i16 %.089                     ; 3 uses
  %i.cv = zext i16 %.089.fr to i64                ; 15 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = add nsw i64 %i.cv, -1
  %9 = sub i64 %3, %.090117
  %i.cy = shl i64 %9, 1
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cc, i64 %i.cz
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.db = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.ds, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gl, %._crit_edge.us ] ; 4 uses
  %i.dc = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dc ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.da, i64 %i.dc ; 4 uses
  %i.dd = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.dd, ptr %scevgep159, ptr %scevgep160
  %i.de = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.088121.us ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !507 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !508 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 1                 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.cv
  br i1 %i.dn, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.do = icmp ugt i64 %i.dm, %i.cv
  br i1 %i.do, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.dh, %i.dp
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %i.dg, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dq = sub nuw nsw i64 %i.cv, %i.dm
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef %i.dq)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dr = phi ptr [ %.pre135, %bb.q ], [ %i.di, %bb.p ], [ %i.di, %bb.o ], [ %i.di, %bb.n ] ; 8 uses
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ]
  %i.dt = sub nuw i64 %.088121.us, %.090117
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dt ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.cw
  %bound0 = icmp ult ptr %i.dr, %scevgep161
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dv = or disjoint i64 %index, 1
  %i.dw = or disjoint i64 %index, 2
  %i.dx = or disjoint i64 %index, 3
  %i.dy = or disjoint i64 %index, 4
  %i.dz = or disjoint i64 %index, 5
  %i.ea = or disjoint i64 %index, 6
  %i.eb = or disjoint i64 %index, 7
  %i.ec = mul i64 %index, %i.bv
  %i.ed = mul i64 %i.dv, %i.bv
  %i.ee = mul i64 %i.dw, %i.bv
  %i.ef = mul i64 %i.dx, %i.bv
  %i.eg = mul i64 %i.dy, %i.bv
  %i.eh = mul i64 %i.dz, %i.bv
  %i.ei = mul i64 %i.ea, %i.bv
  %i.ej = mul i64 %i.eb, %i.bv
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ec
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ej
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !536, !alias.scope !1469
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !1469
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !1469
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !1469
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !1469
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !1469
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !1469
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !1469
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !536, !alias.scope !1470, !noalias !1469
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !1465

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fo, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = mul i64 %.087119.us.prol, %i.bv
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !536
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us.prol
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !536
  %i.fo = add nuw nsw i64 %.087119.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1466

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = sub nsw i64 %.087119.us.ph, %i.cv
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gk, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = mul i64 %.087119.us, %i.bv
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !536
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !536
  %i.fv = add nuw nsw i64 %.087119.us, 1          ; 2 uses
  %i.fw = mul i64 %i.fv, %i.bv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !536
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.fv
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !536
  %i.ga = add nuw nsw i64 %.087119.us, 2          ; 2 uses
  %i.gb = mul i64 %i.ga, %i.bv
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !536
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ga
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !536
  %i.gf = add nuw nsw i64 %.087119.us, 3          ; 2 uses
  %i.gg = mul i64 %i.gf, %i.bv
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !536
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gf
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !536
  %i.gk = add nuw nsw i64 %.087119.us, 4          ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gk, %i.cv
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1467

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gl = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gl, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !1468

._crit_edge124:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.gn, align 8, !tbaa !165
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gp = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.go)
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge124
  %i.gr = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.go, i1 true)
  switch i64 %i.gr, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttdE13assembledSizeEmm.exit107
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.090117
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !508
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %.092115
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !536
  %i.gx = zext i16 %i.gw to i64
end_hunk_2
begin_hunk_3_@_ZN4mlir13sparse_tensor19SparseTensorStorageIhtdE15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !618
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.tr34.lcssa47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !507
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !508
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !623
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.tr34.lcssa47 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !608
  %i.bp = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bq = trunc i64 %i.bj to i8
  store i8 %i.bq, ptr %i.b, align 1, !tbaa !553
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !608 ; 2 uses
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.bv, i64 noundef %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !1591

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.by, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !526
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !600 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr %i.ci, i64 noundef %.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIhtdE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !600
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !526
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !600 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIhtdE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIhtdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIhtdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit106, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit ]
  %.090116 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit ] ; 25 uses
  %.091115 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit ] ; 8 uses
  %.092114 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090116
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091115 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091115, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090116
  %i.r = shl i64 %.092114, 1                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090116
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090116
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !517
  %i.y = getelementptr i8, ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !553
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091115 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091115, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090116
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %.092114
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090116
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090116
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !517
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.092114
  %i.au = load i8, ptr %i.at, align 1, !tbaa !553
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091115, %._crit_edge ], [ %.091115, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090116
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090116
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !517
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.092114
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !553
  %i.bi = zext i8 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090116
  %i.bl = shl i64 %.092114, 1
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !517
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !553
  %i.bq = zext i8 %i.bp to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.090116
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !165
  %i.bu = mul i64 %i.bt, %.092114
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bq, %bb.h ], [ %i.bu, %bb.i ], [ %.092114, %.split.i ], [ %.092114, %.split.i ] ; 2 uses
  %i.bv = add nuw i64 %.090116, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit106, label %bb.b, !llvm.loop !1592

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bw = sub nuw i64 %3, %.090116                ; 13 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091115 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !165
  %i.bz = inttoptr i64 %i.by to ptr               ; 4 uses
  %i.ca = add i64 %.091115, 2                     ; 5 uses
  %i.cb = getelementptr i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !165
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  %i.ce = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.cf = icmp eq i64 %i.ce, 1048576
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %.090116 ; 2 uses
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ci = shl i64 %.092114, 1                     ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ci
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef %i.bz, ptr noundef %i.cj)
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.090116
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !517
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.ci
  %i.co = getelementptr i8, ptr %i.cn, i64 -1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.092114
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef %i.bz, ptr noundef nonnull %i.cq)
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %.090116
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !517
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.092114
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.co, %bb.k ], [ %i.cu, %bb.l ]
  %i.cv = icmp ult i64 %.090116, %3
  br i1 %i.cv, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %bb.m
  %.089 = load i8, ptr %.089.in, align 1, !tbaa !553
  %.089.fr = freeze i8 %.089                      ; 3 uses
  %i.cw = zext i8 %.089.fr to i64                 ; 15 uses
  %.not124 = icmp eq i8 %.089.fr, 0
  br i1 %.not124, label %.lr.ph122.split, label %.lr.ph122.split.us.preheader

.lr.ph122.split.us.preheader:                     ; preds = %.lr.ph122
  %.pre132 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cx = shl nuw nsw i64 %i.cw, 1
  %i.cy = add nsw i64 %i.cw, -1
  %9 = sub i64 %3, %.090116
  %i.cz = shl i64 %9, 1
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr i8, ptr %i.cd, i64 %i.da
  %min.iters.check = icmp ult i8 %.089.fr, 8
  %n.vec = and i64 %i.cw, 248                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cw
  %xtraiter = and i64 %i.cw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph122.split.us

.lr.ph122.split.us:                               ; preds = %.lr.ph122.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph122.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre132, %.lr.ph122.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088120.us = phi i64 [ %.090116, %.lr.ph122.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.cd, i64 %i.dd ; 4 uses
  %scevgep159 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep158, %scevgep159
  %umin = select i1 %i.de, ptr %scevgep158, ptr %scevgep159
  %i.df = icmp ugt ptr %scevgep158, %scevgep159
  %umax = select i1 %i.df, ptr %scevgep158, ptr %scevgep159
  %scevgep160 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088120.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.cw
  br i1 %i.do, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph122.split.us
  %i.dp = icmp ugt i64 %i.dn, %i.cw
  br i1 %i.dp, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.cw ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph122.split.us
  %i.dr = sub nuw nsw i64 %i.cw, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre133, i64 %.088120.us
  %.pre134 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.dj, %bb.p ], [ %i.dj, %bb.o ], [ %i.dj, %bb.n ] ; 8 uses
  %i.dt = phi ptr [ %.pre133, %bb.q ], [ %i.dc, %bb.p ], [ %i.dc, %bb.o ], [ %i.dc, %bb.n ]
  %i.du = sub nuw i64 %.088120.us, %.090116
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.du ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.ds, i64 %i.cx
  %bound0 = icmp ult ptr %i.ds, %scevgep160
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dw = or disjoint i64 %index, 1
  %i.dx = or disjoint i64 %index, 2
  %i.dy = or disjoint i64 %index, 3
  %i.dz = or disjoint i64 %index, 4
  %i.ea = or disjoint i64 %index, 5
  %i.eb = or disjoint i64 %index, 6
  %i.ec = or disjoint i64 %index, 7
  %i.ed = mul i64 %index, %i.bw
  %i.ee = mul i64 %i.dw, %i.bw
  %i.ef = mul i64 %i.dx, %i.bw
  %i.eg = mul i64 %i.dy, %i.bw
  %i.eh = mul i64 %i.dz, %i.bw
  %i.ei = mul i64 %i.ea, %i.bw
  %i.ej = mul i64 %i.eb, %i.bw
  %i.ek = mul i64 %i.ec, %i.bw
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ej
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ek
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !1600
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !1600
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !1600
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !1600
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !1600
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !1600
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !1600
  %i.fa = load i16, ptr %i.es, align 2, !tbaa !536, !alias.scope !1600
  %i.fb = insertelement <8 x i16> poison, i16 %i.et, i64 0
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 1
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 2
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 3
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 4
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 5
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 6
  %i.fi = insertelement <8 x i16> %i.fh, i16 %i.fa, i64 7
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index
  store <8 x i16> %i.fi, ptr %i.fj, align 2, !tbaa !536, !alias.scope !1601, !noalias !1600
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !1596

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087118.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087118.us.prol = phi i64 [ %i.fp, %scalar.ph.prol ], [ %.087118.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fl = mul i64 %.087118.us.prol, %i.bw
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !536
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %.087118.us.prol
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !536
  %i.fp = add nuw nsw i64 %.087118.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1597

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087118.us.unr = phi i64 [ %.087118.us.ph, %scalar.ph.preheader ], [ %i.fp, %scalar.ph.prol ]
  %i.fq = sub nsw i64 %.087118.us.ph, %i.cw
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087118.us = phi i64 [ %i.gl, %scalar.ph ], [ %.087118.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fs = mul i64 %.087118.us, %i.bw
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !536
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %.087118.us
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !536
  %i.fw = add nuw nsw i64 %.087118.us, 1          ; 2 uses
  %i.fx = mul i64 %i.fw, %i.bw
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !536
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.fw
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !536
  %i.gb = add nuw nsw i64 %.087118.us, 2          ; 2 uses
  %i.gc = mul i64 %i.gb, %i.bw
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !536
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.gb
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !536
  %i.gg = add nuw nsw i64 %.087118.us, 3          ; 2 uses
  %i.gh = mul i64 %i.gg, %i.bw
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !536
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.gg
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !536
  %i.gl = add nuw nsw i64 %.087118.us, 4          ; 2 uses
  %exitcond129.not.3 = icmp eq i64 %i.gl, %i.cw
  br i1 %exitcond129.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1598

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gm = add nuw i64 %.088120.us, 1              ; 2 uses
  %exitcond130.not = icmp eq i64 %i.gm, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond130.not, label %._crit_edge123, label %.lr.ph122.split.us, !llvm.loop !1599

._crit_edge123:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.090116
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.go, align 8, !tbaa !165
  %i.gp = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gq = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.gp)
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge123
  %i.gs = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.gp, i1 true)
  switch i64 %i.gs, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit106
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtdE13assembledSizeEmm.exit106
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gt = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %.090116
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !517
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.092114
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !553
  %i.gy = zext i8 %i.gx to i64
end_hunk_3
begin_hunk_4_@_ZN4mlir13sparse_tensor19SparseTensorStorageImtfE15finalizeSegmentEmmm:tailrecurse.peel.begin
  br label %.loopexit

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !618
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.tr34.lcssa47 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !507
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !508
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !576
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.tr34.lcssa47 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !603
  %i.bo = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.bi, ptr %i.b, align 8, !tbaa !165
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !603 ; 2 uses
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr %i.bt, i64 noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !165
  %i.bw = mul i64 %i.bv, %.tr36                   ; 2 uses
  %i.bx = add i64 %.tr34, 1                       ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.m
  br i1 %i.by, label %.loopexit53, label %tailrecurse, !llvm.loop !1752

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.bw, %bb.d ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !531
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !640 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cc, i64 %i.cf
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr %i.cg, i64 noundef %.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageImtfE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !640
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !531
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !640 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageImtfE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageImtfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageImtfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.av, %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit ] ; 28 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl i64 %.092115, 1                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !182
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !165
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.aa
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ab)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !165
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = add i64 %.091116, 2
  %i.ag = getelementptr i8, ptr %i.ac, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !165
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.090117
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.092115
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef %i.ae, ptr noundef nonnull %i.am)
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %.090117
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %.090117
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !182
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.092115
  %i.at = load i64, ptr %i.as, align 8, !tbaa !165
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.at
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef %i.ai, ptr noundef %i.au)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.af, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aw, align 8, !tbaa !165
  %i.ax = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ay = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.ax)
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.ba = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.ax, i1 true)
  switch i64 %i.ba, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.090117
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !182
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.092115
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !165
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.090117
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !182
  %.idx.i = shl i64 %.092115, 4
  %i.bj = getelementptr i8, ptr %i.bi, i64 %.idx.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !165
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.090117
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !165
  %i.bp = mul i64 %i.bo, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bf, %bb.g ], [ %i.bl, %bb.h ], [ %i.bp, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bq = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !1753

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.br = sub i64 %3, %.090117                    ; 14 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !165
  %i.bu = inttoptr i64 %i.bt to ptr               ; 4 uses
  %i.bv = add i64 %.091116, 2                     ; 5 uses
  %i.bw = getelementptr i8, ptr %i.bs, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ca = icmp eq i64 %i.bz, 1048576
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.090117 ; 2 uses
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cd = shl i64 %.092115, 1                     ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cd
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef %i.bu, ptr noundef %i.ce)
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !182
  %i.ci = getelementptr [8 x i8], ptr %i.ch, i64 %i.cd
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.092115
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef %i.bu, ptr noundef nonnull %i.cl)
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.090117
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !182
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cj, %bb.k ], [ %i.cp, %bb.l ]
  %.089 = load i64, ptr %.089.in, align 8, !tbaa !165
  %.089.fr = freeze i64 %.089                     ; 13 uses
  %i.cq = icmp ult i64 %.090117, %3
  br i1 %i.cq, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.not125 = icmp eq i64 %.089.fr, 0
  %.pre136 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 4 uses
  br i1 %.not125, label %.lr.ph123.split.preheader.preheader, label %.lr.ph123.split.us.preheader

.lr.ph123.split.preheader.preheader:              ; preds = %.lr.ph123
  %.neg = add i64 %.090117, 1
  %xtraiter167 = and i64 %i.br, 1
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph123.split.preheader.prol.loopexit, label %.lr.ph123.split.preheader.prol

.lr.ph123.split.preheader.prol:                   ; preds = %.lr.ph123.split.preheader.preheader
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.pre136, i64 %.090117 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !508 ; 2 uses
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !507
  %.not146.prol = icmp eq ptr %i.cu, %i.ct
  br i1 %.not146.prol, label %_ZNSt6vectorItSaItEE6resizeEm.exit.prol, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.preheader.prol
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.prol

_ZNSt6vectorItSaItEE6resizeEm.exit.prol:          ; preds = %bb.n, %.lr.ph123.split.preheader.prol
  %i.cv = add nuw i64 %.090117, 1
  br label %.lr.ph123.split.preheader.prol.loopexit

.lr.ph123.split.preheader.prol.loopexit:          ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.prol, %.lr.ph123.split.preheader.preheader
  %.088121.unr = phi i64 [ %.090117, %.lr.ph123.split.preheader.preheader ], [ %i.cv, %_ZNSt6vectorItSaItEE6resizeEm.exit.prol ]
  %i.cw = icmp eq i64 %3, %.neg
  br i1 %i.cw, label %._crit_edge124, label %.lr.ph123.split.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %i.cx = shl i64 %.089.fr, 1
  %i.cy = add i64 %.089.fr, -1
  %9 = sub i64 %3, %.090117
  %i.cz = shl i64 %9, 1
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr i8, ptr %i.by, i64 %i.da
  %min.iters.check = icmp ult i64 %.089.fr, 8
  %n.vec = and i64 %.089.fr, -8                   ; 3 uses
  %cmp.n = icmp eq i64 %.089.fr, %n.vec
  %xtraiter = and i64 %.089.fr, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre136, %.lr.ph123.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep157 = getelementptr i8, ptr %i.by, i64 %i.dd ; 4 uses
  %scevgep158 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep157, %scevgep158
  %umin = select i1 %i.de, ptr %scevgep157, ptr %scevgep158
  %i.df = icmp ugt ptr %scevgep157, %scevgep158
  %umax = select i1 %i.df, ptr %scevgep157, ptr %scevgep158
  %scevgep159 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088121.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ugt i64 %.089.fr, %i.dn
  br i1 %i.do, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph123.split.us
  %i.dp = icmp ult i64 %.089.fr, %i.dn
  br i1 %i.dp, label %bb.p, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.p:                                             ; preds = %bb.o
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %.089.fr ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.r:                                             ; preds = %.lr.ph123.split.us
  %i.dr = sub nuw i64 %.089.fr, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.ds = phi ptr [ %.pre135, %bb.r ], [ %i.dj, %bb.q ], [ %i.dj, %bb.p ], [ %i.dj, %bb.o ] ; 8 uses
  %i.dt = phi ptr [ %.pre134, %bb.r ], [ %i.dc, %bb.q ], [ %i.dc, %bb.p ], [ %i.dc, %bb.o ]
  %i.du = sub nuw i64 %.088121.us, %.090117
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.du ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.ds, i64 %i.cx
  %bound0 = icmp ult ptr %i.ds, %scevgep159
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dw = or disjoint i64 %index, 1
  %i.dx = or disjoint i64 %index, 2
  %i.dy = or disjoint i64 %index, 3
  %i.dz = or disjoint i64 %index, 4
  %i.ea = or disjoint i64 %index, 5
  %i.eb = or disjoint i64 %index, 6
  %i.ec = or disjoint i64 %index, 7
  %i.ed = mul i64 %index, %i.br
  %i.ee = mul i64 %i.dw, %i.br
  %i.ef = mul i64 %i.dx, %i.br
  %i.eg = mul i64 %i.dy, %i.br
  %i.eh = mul i64 %i.dz, %i.br
  %i.ei = mul i64 %i.ea, %i.br
  %i.ej = mul i64 %i.eb, %i.br
  %i.ek = mul i64 %i.ec, %i.br
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ej
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ek
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !1761
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !1761
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !1761
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !1761
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !1761
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !1761
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !1761
  %i.fa = load i16, ptr %i.es, align 2, !tbaa !536, !alias.scope !1761
  %i.fb = insertelement <8 x i16> poison, i16 %i.et, i64 0
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 1
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 2
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 3
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 4
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 5
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 6
  %i.fi = insertelement <8 x i16> %i.fh, i16 %i.fa, i64 7
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index
  store <8 x i16> %i.fi, ptr %i.fj, align 2, !tbaa !536, !alias.scope !1762, !noalias !1761
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !1757

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fp, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fl = mul i64 %.087119.us.prol, %i.br
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !536
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %.087119.us.prol
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !536
  %i.fp = add nuw i64 %.087119.us.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1758

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fp, %scalar.ph.prol ]
  %i.fq = sub i64 %.087119.us.ph, %.089.fr
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gl, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fs = mul i64 %.087119.us, %i.br
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !536
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %.087119.us
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !536
  %i.fw = add nuw i64 %.087119.us, 1              ; 2 uses
  %i.fx = mul i64 %i.fw, %i.br
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !536
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.fw
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !536
  %i.gb = add nuw i64 %.087119.us, 2              ; 2 uses
  %i.gc = mul i64 %i.gb, %i.br
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !536
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.gb
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !536
  %i.gg = add nuw i64 %.087119.us, 3              ; 2 uses
  %i.gh = mul i64 %i.gg, %i.br
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !536
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.gg
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !536
  %i.gl = add nuw i64 %.087119.us, 4              ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gl, %.089.fr
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1759

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gm = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gm, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !1760

._crit_edge124:                                   ; preds = %._crit_edge.us, %.lr.ph123.split.preheader.prol.loopexit, %_ZNSt6vectorItSaItEE6resizeEm.exit.1, %bb.m
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.go, align 8, !tbaa !165
  %i.gp = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gq = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.gp)
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %.split.i105, label %bb.u

.split.i105:                                      ; preds = %._crit_edge124
  %i.gs = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.gp, i1 true)
  switch i64 %i.gs, label %bb.u [
    i64 18, label %bb.s
    i64 20, label %bb.t
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit107
  ]

bb.s:                                             ; preds = %.split.i105
  %i.gt = load ptr, ptr %i.b, align 8, !tbaa !576
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %.090117
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !182
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %.092115
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !165
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageImtfE13assembledSizeEmm.exit107
end_hunk_4
begin_hunk_5_@_ZN4mlir13sparse_tensor19SparseTensorStorageIjtfE15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !618
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.tr34.lcssa47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !507
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !508
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !613
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.tr34.lcssa47 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !627
  %i.bp = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bq = trunc i64 %i.bj to i32
  store i32 %i.bq, ptr %i.b, align 4, !tbaa !546
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !627 ; 2 uses
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.bv, i64 noundef %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !1883

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.by, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !531
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !640 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr %i.ci, i64 noundef %.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIjtfE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !640
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !531
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !640 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIjtfE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIjtfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIjtfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit ] ; 25 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl i64 %.092115, 1                      ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !499
  %i.y = getelementptr [4 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !546
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091116, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090117
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.092115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !499
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.092115
  %i.au = load i32, ptr %i.at, align 4, !tbaa !546
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !499
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !546
  %i.bi = zext i32 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !499
  %.idx.i = shl i64 %.092115, 3
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !546
  %i.bp = zext i32 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !1884

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 13 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ce = icmp eq i64 %i.cd, 1048576
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117 ; 2 uses
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = shl i64 %.092115, 1                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ch
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.090117
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !499
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = getelementptr i8, ptr %i.cm, i64 -4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.092115
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef nonnull %i.cp)
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.090117
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !499
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cn, %bb.k ], [ %i.ct, %bb.l ]
  %i.cu = icmp ult i64 %.090117, %3
  br i1 %i.cu, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.089 = load i32, ptr %.089.in, align 4, !tbaa !546
  %.089.fr = freeze i32 %.089                     ; 3 uses
  %i.cv = zext i32 %.089.fr to i64                ; 15 uses
  %.not125 = icmp eq i32 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = add nsw i64 %i.cv, -1
  %9 = sub i64 %3, %.090117
  %i.cy = shl i64 %9, 1
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cc, i64 %i.cz
  %min.iters.check = icmp ult i32 %.089.fr, 8
  %n.vec = and i64 %i.cv, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.db = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.ds, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gl, %._crit_edge.us ] ; 4 uses
  %i.dc = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dc ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.da, i64 %i.dc ; 4 uses
  %i.dd = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.dd, ptr %scevgep159, ptr %scevgep160
  %i.de = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.088121.us ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !507 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !508 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 1                 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.cv
  br i1 %i.dn, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.do = icmp ugt i64 %i.dm, %i.cv
  br i1 %i.do, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.dh, %i.dp
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %i.dg, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dq = sub nuw nsw i64 %i.cv, %i.dm
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef %i.dq)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dr = phi ptr [ %.pre135, %bb.q ], [ %i.di, %bb.p ], [ %i.di, %bb.o ], [ %i.di, %bb.n ] ; 8 uses
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ]
  %i.dt = sub nuw i64 %.088121.us, %.090117
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dt ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.cw
  %bound0 = icmp ult ptr %i.dr, %scevgep161
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dv = or disjoint i64 %index, 1
  %i.dw = or disjoint i64 %index, 2
  %i.dx = or disjoint i64 %index, 3
  %i.dy = or disjoint i64 %index, 4
  %i.dz = or disjoint i64 %index, 5
  %i.ea = or disjoint i64 %index, 6
  %i.eb = or disjoint i64 %index, 7
  %i.ec = mul i64 %index, %i.bv
  %i.ed = mul i64 %i.dv, %i.bv
  %i.ee = mul i64 %i.dw, %i.bv
  %i.ef = mul i64 %i.dx, %i.bv
  %i.eg = mul i64 %i.dy, %i.bv
  %i.eh = mul i64 %i.dz, %i.bv
  %i.ei = mul i64 %i.ea, %i.bv
  %i.ej = mul i64 %i.eb, %i.bv
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ec
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ej
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !536, !alias.scope !1892
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !1892
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !1892
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !1892
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !1892
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !1892
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !1892
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !1892
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !536, !alias.scope !1893, !noalias !1892
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !1888

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fo, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = mul i64 %.087119.us.prol, %i.bv
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !536
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us.prol
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !536
  %i.fo = add nuw nsw i64 %.087119.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1889

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = sub nsw i64 %.087119.us.ph, %i.cv
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gk, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = mul i64 %.087119.us, %i.bv
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !536
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !536
  %i.fv = add nuw nsw i64 %.087119.us, 1          ; 2 uses
  %i.fw = mul i64 %i.fv, %i.bv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !536
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.fv
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !536
  %i.ga = add nuw nsw i64 %.087119.us, 2          ; 2 uses
  %i.gb = mul i64 %i.ga, %i.bv
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !536
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ga
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !536
  %i.gf = add nuw nsw i64 %.087119.us, 3          ; 2 uses
  %i.gg = mul i64 %i.gf, %i.bv
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !536
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gf
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !536
  %i.gk = add nuw nsw i64 %.087119.us, 4          ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gk, %i.cv
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1890

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gl = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gl, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !1891

._crit_edge124:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.gn, align 8, !tbaa !165
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gp = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.go)
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge124
  %i.gr = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.go, i1 true)
  switch i64 %i.gr, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIjtfE13assembledSizeEmm.exit107
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.090117
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !499
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.092115
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !546
  %i.gx = zext i32 %i.gw to i64
end_hunk_5
begin_hunk_6_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttfE15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !618
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.tr34.lcssa47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !507
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !508
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !618
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.tr34.lcssa47 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !628
  %i.bp = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bq = trunc i64 %i.bj to i16
  store i16 %i.bq, ptr %i.b, align 2, !tbaa !536
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !628 ; 2 uses
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.bv, i64 noundef %i.bp, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !2014

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.by, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !531
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !640 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr %i.ci, i64 noundef %.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttfE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !640
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !531
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !640 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttfE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit ] ; 25 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl nuw i64 %.092115, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091116, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090117
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.092115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !2015

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 13 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ce = icmp eq i64 %i.cd, 1048576
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117 ; 2 uses
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = shl i64 %.092115, 1                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.ch
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.090117
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !508
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = getelementptr i8, ptr %i.cm, i64 -2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %.092115
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef nonnull %i.cp)
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.090117
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !508
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cn, %bb.k ], [ %i.ct, %bb.l ]
  %i.cu = icmp ult i64 %.090117, %3
  br i1 %i.cu, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.089 = load i16, ptr %.089.in, align 2, !tbaa !536
  %.089.fr = freeze i16 %.089                     ; 3 uses
  %i.cv = zext i16 %.089.fr to i64                ; 15 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = add nsw i64 %i.cv, -1
  %9 = sub i64 %3, %.090117
  %i.cy = shl i64 %9, 1
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cc, i64 %i.cz
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.db = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.ds, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gl, %._crit_edge.us ] ; 4 uses
  %i.dc = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dc ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.da, i64 %i.dc ; 4 uses
  %i.dd = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.dd, ptr %scevgep159, ptr %scevgep160
  %i.de = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.088121.us ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !507 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !508 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 1                 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.cv
  br i1 %i.dn, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.do = icmp ugt i64 %i.dm, %i.cv
  br i1 %i.do, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.dh, %i.dp
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %i.dg, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dq = sub nuw nsw i64 %i.cv, %i.dm
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef %i.dq)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dr = phi ptr [ %.pre135, %bb.q ], [ %i.di, %bb.p ], [ %i.di, %bb.o ], [ %i.di, %bb.n ] ; 8 uses
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ]
  %i.dt = sub nuw i64 %.088121.us, %.090117
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dt ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.cw
  %bound0 = icmp ult ptr %i.dr, %scevgep161
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dv = or disjoint i64 %index, 1
  %i.dw = or disjoint i64 %index, 2
  %i.dx = or disjoint i64 %index, 3
  %i.dy = or disjoint i64 %index, 4
  %i.dz = or disjoint i64 %index, 5
  %i.ea = or disjoint i64 %index, 6
  %i.eb = or disjoint i64 %index, 7
  %i.ec = mul i64 %index, %i.bv
  %i.ed = mul i64 %i.dv, %i.bv
  %i.ee = mul i64 %i.dw, %i.bv
  %i.ef = mul i64 %i.dx, %i.bv
  %i.eg = mul i64 %i.dy, %i.bv
  %i.eh = mul i64 %i.dz, %i.bv
  %i.ei = mul i64 %i.ea, %i.bv
  %i.ej = mul i64 %i.eb, %i.bv
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ec
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ej
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !536, !alias.scope !2023
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !2023
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !2023
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !2023
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !2023
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !2023
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !2023
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !2023
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !536, !alias.scope !2024, !noalias !2023
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !2019

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fo, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = mul i64 %.087119.us.prol, %i.bv
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !536
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us.prol
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !536
  %i.fo = add nuw nsw i64 %.087119.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2020

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = sub nsw i64 %.087119.us.ph, %i.cv
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gk, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = mul i64 %.087119.us, %i.bv
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !536
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !536
  %i.fv = add nuw nsw i64 %.087119.us, 1          ; 2 uses
  %i.fw = mul i64 %i.fv, %i.bv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !536
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.fv
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !536
  %i.ga = add nuw nsw i64 %.087119.us, 2          ; 2 uses
  %i.gb = mul i64 %i.ga, %i.bv
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !536
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ga
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !536
  %i.gf = add nuw nsw i64 %.087119.us, 3          ; 2 uses
  %i.gg = mul i64 %i.gf, %i.bv
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !536
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gf
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !536
  %i.gk = add nuw nsw i64 %.087119.us, 4          ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gk, %i.cv
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !2021

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gl = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gl, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !2022

._crit_edge124:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.gn, align 8, !tbaa !165
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gp = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.go)
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge124
  %i.gr = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.go, i1 true)
  switch i64 %i.gr, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttfE13assembledSizeEmm.exit107
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.090117
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !508
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %.092115
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !536
  %i.gx = zext i16 %i.gw to i64
end_hunk_6
begin_hunk_7_@_ZN4mlir13sparse_tensor19SparseTensorStorageIhtfE15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !618
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.tr34.lcssa47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !507
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !508
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !623
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.tr34.lcssa47 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !608
  %i.bp = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bq = trunc i64 %i.bj to i8
  store i8 %i.bq, ptr %i.b, align 1, !tbaa !553
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !608 ; 2 uses
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.bv, i64 noundef %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !2145

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.by, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !531
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !640 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr %i.ci, i64 noundef %.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIhtfE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !640
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !531
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !640 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIhtfE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIhtfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIhtfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit106, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit ]
  %.090116 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit ] ; 25 uses
  %.091115 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit ] ; 8 uses
  %.092114 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090116
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091115 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091115, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090116
  %i.r = shl i64 %.092114, 1                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090116
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090116
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !517
  %i.y = getelementptr i8, ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !553
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091115 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091115, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090116
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %.092114
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090116
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090116
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !517
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.092114
  %i.au = load i8, ptr %i.at, align 1, !tbaa !553
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091115, %._crit_edge ], [ %.091115, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090116
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090116
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !517
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.092114
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !553
  %i.bi = zext i8 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090116
  %i.bl = shl i64 %.092114, 1
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !517
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !553
  %i.bq = zext i8 %i.bp to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.090116
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !165
  %i.bu = mul i64 %i.bt, %.092114
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bq, %bb.h ], [ %i.bu, %bb.i ], [ %.092114, %.split.i ], [ %.092114, %.split.i ] ; 2 uses
  %i.bv = add nuw i64 %.090116, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit106, label %bb.b, !llvm.loop !2146

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bw = sub nuw i64 %3, %.090116                ; 13 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091115 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !165
  %i.bz = inttoptr i64 %i.by to ptr               ; 4 uses
  %i.ca = add i64 %.091115, 2                     ; 5 uses
  %i.cb = getelementptr i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !165
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  %i.ce = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.cf = icmp eq i64 %i.ce, 1048576
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %.090116 ; 2 uses
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ci = shl i64 %.092114, 1                     ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ci
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef %i.bz, ptr noundef %i.cj)
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.090116
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !517
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.ci
  %i.co = getelementptr i8, ptr %i.cn, i64 -1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.092114
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef %i.bz, ptr noundef nonnull %i.cq)
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %.090116
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !517
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.092114
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.co, %bb.k ], [ %i.cu, %bb.l ]
  %i.cv = icmp ult i64 %.090116, %3
  br i1 %i.cv, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %bb.m
  %.089 = load i8, ptr %.089.in, align 1, !tbaa !553
  %.089.fr = freeze i8 %.089                      ; 3 uses
  %i.cw = zext i8 %.089.fr to i64                 ; 15 uses
  %.not124 = icmp eq i8 %.089.fr, 0
  br i1 %.not124, label %.lr.ph122.split, label %.lr.ph122.split.us.preheader

.lr.ph122.split.us.preheader:                     ; preds = %.lr.ph122
  %.pre132 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cx = shl nuw nsw i64 %i.cw, 1
  %i.cy = add nsw i64 %i.cw, -1
  %9 = sub i64 %3, %.090116
  %i.cz = shl i64 %9, 1
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr i8, ptr %i.cd, i64 %i.da
  %min.iters.check = icmp ult i8 %.089.fr, 8
  %n.vec = and i64 %i.cw, 248                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cw
  %xtraiter = and i64 %i.cw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph122.split.us

.lr.ph122.split.us:                               ; preds = %.lr.ph122.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph122.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre132, %.lr.ph122.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088120.us = phi i64 [ %.090116, %.lr.ph122.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.cd, i64 %i.dd ; 4 uses
  %scevgep159 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep158, %scevgep159
  %umin = select i1 %i.de, ptr %scevgep158, ptr %scevgep159
  %i.df = icmp ugt ptr %scevgep158, %scevgep159
  %umax = select i1 %i.df, ptr %scevgep158, ptr %scevgep159
  %scevgep160 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088120.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.cw
  br i1 %i.do, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph122.split.us
  %i.dp = icmp ugt i64 %i.dn, %i.cw
  br i1 %i.dp, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.cw ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph122.split.us
  %i.dr = sub nuw nsw i64 %i.cw, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre133, i64 %.088120.us
  %.pre134 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.dj, %bb.p ], [ %i.dj, %bb.o ], [ %i.dj, %bb.n ] ; 8 uses
  %i.dt = phi ptr [ %.pre133, %bb.q ], [ %i.dc, %bb.p ], [ %i.dc, %bb.o ], [ %i.dc, %bb.n ]
  %i.du = sub nuw i64 %.088120.us, %.090116
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.du ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.ds, i64 %i.cx
  %bound0 = icmp ult ptr %i.ds, %scevgep160
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dw = or disjoint i64 %index, 1
  %i.dx = or disjoint i64 %index, 2
  %i.dy = or disjoint i64 %index, 3
  %i.dz = or disjoint i64 %index, 4
  %i.ea = or disjoint i64 %index, 5
  %i.eb = or disjoint i64 %index, 6
  %i.ec = or disjoint i64 %index, 7
  %i.ed = mul i64 %index, %i.bw
  %i.ee = mul i64 %i.dw, %i.bw
  %i.ef = mul i64 %i.dx, %i.bw
  %i.eg = mul i64 %i.dy, %i.bw
  %i.eh = mul i64 %i.dz, %i.bw
  %i.ei = mul i64 %i.ea, %i.bw
  %i.ej = mul i64 %i.eb, %i.bw
  %i.ek = mul i64 %i.ec, %i.bw
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ej
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ek
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !2154
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !2154
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !2154
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !2154
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !2154
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !2154
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !2154
  %i.fa = load i16, ptr %i.es, align 2, !tbaa !536, !alias.scope !2154
  %i.fb = insertelement <8 x i16> poison, i16 %i.et, i64 0
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 1
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 2
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 3
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 4
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 5
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 6
  %i.fi = insertelement <8 x i16> %i.fh, i16 %i.fa, i64 7
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index
  store <8 x i16> %i.fi, ptr %i.fj, align 2, !tbaa !536, !alias.scope !2155, !noalias !2154
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !2150

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087118.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087118.us.prol = phi i64 [ %i.fp, %scalar.ph.prol ], [ %.087118.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fl = mul i64 %.087118.us.prol, %i.bw
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !536
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %.087118.us.prol
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !536
  %i.fp = add nuw nsw i64 %.087118.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2151

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087118.us.unr = phi i64 [ %.087118.us.ph, %scalar.ph.preheader ], [ %i.fp, %scalar.ph.prol ]
  %i.fq = sub nsw i64 %.087118.us.ph, %i.cw
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087118.us = phi i64 [ %i.gl, %scalar.ph ], [ %.087118.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fs = mul i64 %.087118.us, %i.bw
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !536
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %.087118.us
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !536
  %i.fw = add nuw nsw i64 %.087118.us, 1          ; 2 uses
  %i.fx = mul i64 %i.fw, %i.bw
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !536
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.fw
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !536
  %i.gb = add nuw nsw i64 %.087118.us, 2          ; 2 uses
  %i.gc = mul i64 %i.gb, %i.bw
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !536
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.gb
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !536
  %i.gg = add nuw nsw i64 %.087118.us, 3          ; 2 uses
  %i.gh = mul i64 %i.gg, %i.bw
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !536
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.gg
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !536
  %i.gl = add nuw nsw i64 %.087118.us, 4          ; 2 uses
  %exitcond129.not.3 = icmp eq i64 %i.gl, %i.cw
  br i1 %exitcond129.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !2152

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gm = add nuw i64 %.088120.us, 1              ; 2 uses
  %exitcond130.not = icmp eq i64 %i.gm, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond130.not, label %._crit_edge123, label %.lr.ph122.split.us, !llvm.loop !2153

._crit_edge123:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.090116
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.go, align 8, !tbaa !165
  %i.gp = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gq = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.gp)
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge123
  %i.gs = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.gp, i1 true)
  switch i64 %i.gs, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit106
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIhtfE13assembledSizeEmm.exit106
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gt = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %.090116
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !517
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.092114
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !553
  %i.gy = zext i8 %i.gx to i64
end_hunk_7
begin_hunk_8_@_ZN4mlir13sparse_tensor19SparseTensorStorageItt3f16E15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !618
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.tr34.lcssa47 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !507
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !508
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !618
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.tr34.lcssa47 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !628
  %i.bo = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bp = trunc i64 %i.bi to i16
  store i16 %i.bp, ptr %i.b, align 2, !tbaa !536
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !628 ; 2 uses
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.bt
  call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr %i.bu, i64 noundef %i.bo, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.tr34
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !165
  %i.bx = mul i64 %i.bw, %.tr36                   ; 2 uses
  %i.by = add i64 %.tr34, 1                       ; 2 uses
  %i.bz = icmp eq i64 %i.by, %i.l
  br i1 %i.bz, label %.loopexit53, label %tailrecurse, !llvm.loop !2598

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.v, %bb.b ], [ %i.bx, %bb.d ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !653
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN3f16C1Ef(ptr noundef nonnull align 2 dereferenceable(2) %4, float noundef 0.000000e+00) #26
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !653 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  call void @_ZNSt6vectorI3f16SaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr %i.ch, i64 noundef %.lcssa, ptr noundef nonnull align 2 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageItt3f16E9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.f16, align 2                ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !tbaa !165
  %i.d = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.e = icmp eq i64 %i.d, 65536
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !618
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %1 ; 4 uses
  %i.i = trunc i64 %3 to i16                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !507  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.i, ptr %i.k, align 2, !tbaa !536
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store ptr %i.n, ptr %i.j, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !508  ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775806
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add i64 %.sroa.speculated.i.i.i.i, %i.t  ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 4611686018427387903)
  %i.x = select i1 %i.v, i64 4611686018427387903, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #23 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store i16 %i.i, ptr %i.aa, align 2, !tbaa !536
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.z, ptr align 2 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !619
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.af) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.z, ptr %i.h, align 8, !tbaa !508
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !507
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ah = icmp eq i64 %3, %2
  br i1 %i.ah, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add i64 %1, 1                           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !195
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !182
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = icmp eq i64 %i.ai, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !653
  %i.av = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN3f16C1Ef(ptr noundef nonnull align 2 dereferenceable(2) %4, float noundef 0.000000e+00) #26
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !653 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  call void @_ZNSt6vectorI3f16SaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr %i.ba, i64 noundef %i.av, ptr noundef nonnull align 2 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItt3f16E15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.ai, i64 noundef 0, i64 noundef %i.bb)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageItt3f16EC2EmPKmmS5_PKNS0_9LevelTypeES5_S5_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItt3f16EC2EmPKmmS5_PKNS0_9LevelTypeES5_S5_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit ] ; 25 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl nuw i64 %.092115, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091116, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090117
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.092115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !2599

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 13 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ce = icmp eq i64 %i.cd, 1048576
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117 ; 2 uses
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = shl i64 %.092115, 1                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.ch
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.090117
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !508
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = getelementptr i8, ptr %i.cm, i64 -2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %.092115
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef nonnull %i.cp)
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.090117
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !508
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cn, %bb.k ], [ %i.ct, %bb.l ]
  %i.cu = icmp ult i64 %.090117, %3
  br i1 %i.cu, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.089 = load i16, ptr %.089.in, align 2, !tbaa !536
  %.089.fr = freeze i16 %.089                     ; 3 uses
  %i.cv = zext i16 %.089.fr to i64                ; 15 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = add nsw i64 %i.cv, -1
  %9 = sub i64 %3, %.090117
  %i.cy = shl i64 %9, 1
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cc, i64 %i.cz
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.db = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.ds, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gl, %._crit_edge.us ] ; 4 uses
  %i.dc = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dc ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.da, i64 %i.dc ; 4 uses
  %i.dd = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.dd, ptr %scevgep159, ptr %scevgep160
  %i.de = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.088121.us ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !507 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !508 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 1                 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.cv
  br i1 %i.dn, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.do = icmp ugt i64 %i.dm, %i.cv
  br i1 %i.do, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.dh, %i.dp
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %i.dg, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dq = sub nuw nsw i64 %i.cv, %i.dm
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef %i.dq)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dr = phi ptr [ %.pre135, %bb.q ], [ %i.di, %bb.p ], [ %i.di, %bb.o ], [ %i.di, %bb.n ] ; 8 uses
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ]
  %i.dt = sub nuw i64 %.088121.us, %.090117
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dt ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.cw
  %bound0 = icmp ult ptr %i.dr, %scevgep161
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dv = or disjoint i64 %index, 1
  %i.dw = or disjoint i64 %index, 2
  %i.dx = or disjoint i64 %index, 3
  %i.dy = or disjoint i64 %index, 4
  %i.dz = or disjoint i64 %index, 5
  %i.ea = or disjoint i64 %index, 6
  %i.eb = or disjoint i64 %index, 7
  %i.ec = mul i64 %index, %i.bv
  %i.ed = mul i64 %i.dv, %i.bv
  %i.ee = mul i64 %i.dw, %i.bv
  %i.ef = mul i64 %i.dx, %i.bv
  %i.eg = mul i64 %i.dy, %i.bv
  %i.eh = mul i64 %i.dz, %i.bv
  %i.ei = mul i64 %i.ea, %i.bv
  %i.ej = mul i64 %i.eb, %i.bv
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ec
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ej
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !536, !alias.scope !2607
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !2607
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !2607
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !2607
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !2607
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !2607
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !2607
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !2607
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !536, !alias.scope !2608, !noalias !2607
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !2603

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fo, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = mul i64 %.087119.us.prol, %i.bv
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !536
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us.prol
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !536
  %i.fo = add nuw nsw i64 %.087119.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2604

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = sub nsw i64 %.087119.us.ph, %i.cv
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gk, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = mul i64 %.087119.us, %i.bv
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !536
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !536
  %i.fv = add nuw nsw i64 %.087119.us, 1          ; 2 uses
  %i.fw = mul i64 %i.fv, %i.bv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !536
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.fv
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !536
  %i.ga = add nuw nsw i64 %.087119.us, 2          ; 2 uses
  %i.gb = mul i64 %i.ga, %i.bv
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !536
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ga
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !536
  %i.gf = add nuw nsw i64 %.087119.us, 3          ; 2 uses
  %i.gg = mul i64 %i.gf, %i.bv
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !536
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gf
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !536
  %i.gk = add nuw nsw i64 %.087119.us, 4          ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gk, %i.cv
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !2605

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gl = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gl, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !2606

._crit_edge124:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.gn, align 8, !tbaa !165
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gp = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.go)
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge124
  %i.gr = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.go, i1 true)
  switch i64 %i.gr, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt3f16E13assembledSizeEmm.exit107
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.090117
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !508
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %.092115
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !536
  %i.gx = zext i16 %i.gw to i64
end_hunk_8
begin_hunk_9_@_ZN4mlir13sparse_tensor19SparseTensorStorageItt4bf16E15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !618
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.tr34.lcssa47 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !507
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !508
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !618
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.tr34.lcssa47 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !628
  %i.bo = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bp = trunc i64 %i.bi to i16
  store i16 %i.bp, ptr %i.b, align 2, !tbaa !536
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !628 ; 2 uses
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.bt
  call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr %i.bu, i64 noundef %i.bo, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.tr34
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !165
  %i.bx = mul i64 %i.bw, %.tr36                   ; 2 uses
  %i.by = add i64 %.tr34, 1                       ; 2 uses
  %i.bz = icmp eq i64 %i.by, %i.l
  br i1 %i.bz, label %.loopexit53, label %tailrecurse, !llvm.loop !2668

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.v, %bb.b ], [ %i.bx, %bb.d ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4bf16C1Ef(ptr noundef nonnull align 2 dereferenceable(2) %4, float noundef 0.000000e+00) #26
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !666 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  call void @_ZNSt6vectorI4bf16SaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr %i.ch, i64 noundef %.lcssa, ptr noundef nonnull align 2 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageItt4bf16E9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.bf16, align 2               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !tbaa !165
  %i.d = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.e = icmp eq i64 %i.d, 65536
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !618
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %1 ; 4 uses
  %i.i = trunc i64 %3 to i16                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !507  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.i, ptr %i.k, align 2, !tbaa !536
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store ptr %i.n, ptr %i.j, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !508  ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775806
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add i64 %.sroa.speculated.i.i.i.i, %i.t  ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 4611686018427387903)
  %i.x = select i1 %i.v, i64 4611686018427387903, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #23 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store i16 %i.i, ptr %i.aa, align 2, !tbaa !536
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.z, ptr align 2 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !619
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.af) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.z, ptr %i.h, align 8, !tbaa !508
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !507
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ah = icmp eq i64 %3, %2
  br i1 %i.ah, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add i64 %1, 1                           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !195
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !182
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = icmp eq i64 %i.ai, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !666
  %i.av = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4bf16C1Ef(ptr noundef nonnull align 2 dereferenceable(2) %4, float noundef 0.000000e+00) #26
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !666 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  call void @_ZNSt6vectorI4bf16SaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr %i.ba, i64 noundef %i.av, ptr noundef nonnull align 2 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItt4bf16E15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.ai, i64 noundef 0, i64 noundef %i.bb)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageItt4bf16EC2EmPKmmS5_PKNS0_9LevelTypeES5_S5_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItt4bf16EC2EmPKmmS5_PKNS0_9LevelTypeES5_S5_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit ] ; 25 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl nuw i64 %.092115, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091116, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090117
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.092115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !2669

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 13 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ce = icmp eq i64 %i.cd, 1048576
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117 ; 2 uses
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = shl i64 %.092115, 1                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.ch
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.090117
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !508
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = getelementptr i8, ptr %i.cm, i64 -2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %.092115
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef nonnull %i.cp)
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.090117
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !508
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cn, %bb.k ], [ %i.ct, %bb.l ]
  %i.cu = icmp ult i64 %.090117, %3
  br i1 %i.cu, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.089 = load i16, ptr %.089.in, align 2, !tbaa !536
  %.089.fr = freeze i16 %.089                     ; 3 uses
  %i.cv = zext i16 %.089.fr to i64                ; 15 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = add nsw i64 %i.cv, -1
  %9 = sub i64 %3, %.090117
  %i.cy = shl i64 %9, 1
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cc, i64 %i.cz
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.db = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.ds, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gl, %._crit_edge.us ] ; 4 uses
  %i.dc = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dc ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.da, i64 %i.dc ; 4 uses
  %i.dd = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.dd, ptr %scevgep159, ptr %scevgep160
  %i.de = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.088121.us ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !507 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !508 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 1                 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.cv
  br i1 %i.dn, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.do = icmp ugt i64 %i.dm, %i.cv
  br i1 %i.do, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.dh, %i.dp
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %i.dg, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dq = sub nuw nsw i64 %i.cv, %i.dm
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef %i.dq)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dr = phi ptr [ %.pre135, %bb.q ], [ %i.di, %bb.p ], [ %i.di, %bb.o ], [ %i.di, %bb.n ] ; 8 uses
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ]
  %i.dt = sub nuw i64 %.088121.us, %.090117
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dt ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.cw
  %bound0 = icmp ult ptr %i.dr, %scevgep161
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dv = or disjoint i64 %index, 1
  %i.dw = or disjoint i64 %index, 2
  %i.dx = or disjoint i64 %index, 3
  %i.dy = or disjoint i64 %index, 4
  %i.dz = or disjoint i64 %index, 5
  %i.ea = or disjoint i64 %index, 6
  %i.eb = or disjoint i64 %index, 7
  %i.ec = mul i64 %index, %i.bv
  %i.ed = mul i64 %i.dv, %i.bv
  %i.ee = mul i64 %i.dw, %i.bv
  %i.ef = mul i64 %i.dx, %i.bv
  %i.eg = mul i64 %i.dy, %i.bv
  %i.eh = mul i64 %i.dz, %i.bv
  %i.ei = mul i64 %i.ea, %i.bv
  %i.ej = mul i64 %i.eb, %i.bv
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ec
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ej
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !536, !alias.scope !2677
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !2677
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !2677
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !2677
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !2677
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !2677
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !2677
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !2677
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !536, !alias.scope !2678, !noalias !2677
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !2673

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fo, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = mul i64 %.087119.us.prol, %i.bv
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !536
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us.prol
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !536
  %i.fo = add nuw nsw i64 %.087119.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2674

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = sub nsw i64 %.087119.us.ph, %i.cv
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gk, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = mul i64 %.087119.us, %i.bv
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !536
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !536
  %i.fv = add nuw nsw i64 %.087119.us, 1          ; 2 uses
  %i.fw = mul i64 %i.fv, %i.bv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !536
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.fv
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !536
  %i.ga = add nuw nsw i64 %.087119.us, 2          ; 2 uses
  %i.gb = mul i64 %i.ga, %i.bv
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !536
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ga
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !536
  %i.gf = add nuw nsw i64 %.087119.us, 3          ; 2 uses
  %i.gg = mul i64 %i.gf, %i.bv
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !536
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gf
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !536
  %i.gk = add nuw nsw i64 %.087119.us, 4          ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gk, %i.cv
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !2675

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gl = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gl, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !2676

._crit_edge124:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.gn, align 8, !tbaa !165
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gp = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.go)
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge124
  %i.gr = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.go, i1 true)
  switch i64 %i.gr, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItt4bf16E13assembledSizeEmm.exit107
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.090117
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !508
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %.092115
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !536
  %i.gx = zext i16 %i.gw to i64
end_hunk_9
begin_hunk_10_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttlE15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !618
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.tr34.lcssa47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !507
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !508
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !618
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.tr34.lcssa47 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !628
  %i.bp = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bq = trunc i64 %i.bj to i16
  store i16 %i.bq, ptr %i.b, align 2, !tbaa !536
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !628 ; 2 uses
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.bv, i64 noundef %i.bp, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !3195

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.by, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 0, ptr %i.c, align 8, !tbaa !165
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !603 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  call void @_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr %i.ci, i64 noundef %.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttlE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !603
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !165
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !603 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttlE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttlEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttlEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit ] ; 25 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl nuw i64 %.092115, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091116, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090117
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.092115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !3196

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 13 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ce = icmp eq i64 %i.cd, 1048576
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117 ; 2 uses
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = shl i64 %.092115, 1                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.ch
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.090117
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !508
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = getelementptr i8, ptr %i.cm, i64 -2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %.092115
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef nonnull %i.cp)
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.090117
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !508
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cn, %bb.k ], [ %i.ct, %bb.l ]
  %i.cu = icmp ult i64 %.090117, %3
  br i1 %i.cu, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.089 = load i16, ptr %.089.in, align 2, !tbaa !536
  %.089.fr = freeze i16 %.089                     ; 3 uses
  %i.cv = zext i16 %.089.fr to i64                ; 15 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = add nsw i64 %i.cv, -1
  %9 = sub i64 %3, %.090117
  %i.cy = shl i64 %9, 1
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cc, i64 %i.cz
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.db = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.ds, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gl, %._crit_edge.us ] ; 4 uses
  %i.dc = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dc ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.da, i64 %i.dc ; 4 uses
  %i.dd = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.dd, ptr %scevgep159, ptr %scevgep160
  %i.de = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.088121.us ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !507 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !508 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 1                 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.cv
  br i1 %i.dn, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.do = icmp ugt i64 %i.dm, %i.cv
  br i1 %i.do, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.dh, %i.dp
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %i.dg, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dq = sub nuw nsw i64 %i.cv, %i.dm
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef %i.dq)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dr = phi ptr [ %.pre135, %bb.q ], [ %i.di, %bb.p ], [ %i.di, %bb.o ], [ %i.di, %bb.n ] ; 8 uses
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ]
  %i.dt = sub nuw i64 %.088121.us, %.090117
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dt ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.cw
  %bound0 = icmp ult ptr %i.dr, %scevgep161
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dv = or disjoint i64 %index, 1
  %i.dw = or disjoint i64 %index, 2
  %i.dx = or disjoint i64 %index, 3
  %i.dy = or disjoint i64 %index, 4
  %i.dz = or disjoint i64 %index, 5
  %i.ea = or disjoint i64 %index, 6
  %i.eb = or disjoint i64 %index, 7
  %i.ec = mul i64 %index, %i.bv
  %i.ed = mul i64 %i.dv, %i.bv
  %i.ee = mul i64 %i.dw, %i.bv
  %i.ef = mul i64 %i.dx, %i.bv
  %i.eg = mul i64 %i.dy, %i.bv
  %i.eh = mul i64 %i.dz, %i.bv
  %i.ei = mul i64 %i.ea, %i.bv
  %i.ej = mul i64 %i.eb, %i.bv
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ec
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ej
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !536, !alias.scope !3204
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !3204
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !3204
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !3204
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !3204
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !3204
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !3204
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !3204
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !536, !alias.scope !3205, !noalias !3204
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !3200

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fo, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = mul i64 %.087119.us.prol, %i.bv
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !536
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us.prol
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !536
  %i.fo = add nuw nsw i64 %.087119.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !3201

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = sub nsw i64 %.087119.us.ph, %i.cv
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gk, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = mul i64 %.087119.us, %i.bv
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !536
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !536
  %i.fv = add nuw nsw i64 %.087119.us, 1          ; 2 uses
  %i.fw = mul i64 %i.fv, %i.bv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !536
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.fv
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !536
  %i.ga = add nuw nsw i64 %.087119.us, 2          ; 2 uses
  %i.gb = mul i64 %i.ga, %i.bv
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !536
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ga
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !536
  %i.gf = add nuw nsw i64 %.087119.us, 3          ; 2 uses
  %i.gg = mul i64 %i.gf, %i.bv
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !536
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gf
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !536
  %i.gk = add nuw nsw i64 %.087119.us, 4          ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gk, %i.cv
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !3202

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gl = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gl, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !3203

._crit_edge124:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.gn, align 8, !tbaa !165
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gp = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.go)
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge124
  %i.gr = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.go, i1 true)
  switch i64 %i.gr, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttlE13assembledSizeEmm.exit107
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.090117
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !508
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %.092115
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !536
  %i.gx = zext i16 %i.gw to i64
end_hunk_10
begin_hunk_11_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttiE15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !618
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.tr34.lcssa47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !507
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !508
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !618
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.tr34.lcssa47 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !628
  %i.bp = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bq = trunc i64 %i.bj to i16
  store i16 %i.bq, ptr %i.b, align 2, !tbaa !536
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !628 ; 2 uses
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.bv, i64 noundef %i.bp, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !3233

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.by, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !546
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !627 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr %i.ci, i64 noundef %.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttiE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !627
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !546
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !627 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttiE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttiEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttiEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit ] ; 25 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl nuw i64 %.092115, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091116, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090117
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.092115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !3234

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 13 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ce = icmp eq i64 %i.cd, 1048576
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117 ; 2 uses
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = shl i64 %.092115, 1                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.ch
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.090117
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !508
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = getelementptr i8, ptr %i.cm, i64 -2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %.092115
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef nonnull %i.cp)
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.090117
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !508
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cn, %bb.k ], [ %i.ct, %bb.l ]
  %i.cu = icmp ult i64 %.090117, %3
  br i1 %i.cu, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.089 = load i16, ptr %.089.in, align 2, !tbaa !536
  %.089.fr = freeze i16 %.089                     ; 3 uses
  %i.cv = zext i16 %.089.fr to i64                ; 15 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = add nsw i64 %i.cv, -1
  %9 = sub i64 %3, %.090117
  %i.cy = shl i64 %9, 1
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cc, i64 %i.cz
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.db = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.ds, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gl, %._crit_edge.us ] ; 4 uses
  %i.dc = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dc ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.da, i64 %i.dc ; 4 uses
  %i.dd = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.dd, ptr %scevgep159, ptr %scevgep160
  %i.de = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.088121.us ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !507 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !508 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 1                 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.cv
  br i1 %i.dn, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.do = icmp ugt i64 %i.dm, %i.cv
  br i1 %i.do, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.dh, %i.dp
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %i.dg, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dq = sub nuw nsw i64 %i.cv, %i.dm
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef %i.dq)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dr = phi ptr [ %.pre135, %bb.q ], [ %i.di, %bb.p ], [ %i.di, %bb.o ], [ %i.di, %bb.n ] ; 8 uses
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ]
  %i.dt = sub nuw i64 %.088121.us, %.090117
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dt ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.cw
  %bound0 = icmp ult ptr %i.dr, %scevgep161
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dv = or disjoint i64 %index, 1
  %i.dw = or disjoint i64 %index, 2
  %i.dx = or disjoint i64 %index, 3
  %i.dy = or disjoint i64 %index, 4
  %i.dz = or disjoint i64 %index, 5
  %i.ea = or disjoint i64 %index, 6
  %i.eb = or disjoint i64 %index, 7
  %i.ec = mul i64 %index, %i.bv
  %i.ed = mul i64 %i.dv, %i.bv
  %i.ee = mul i64 %i.dw, %i.bv
  %i.ef = mul i64 %i.dx, %i.bv
  %i.eg = mul i64 %i.dy, %i.bv
  %i.eh = mul i64 %i.dz, %i.bv
  %i.ei = mul i64 %i.ea, %i.bv
  %i.ej = mul i64 %i.eb, %i.bv
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ec
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ej
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !536, !alias.scope !3242
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !3242
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !3242
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !3242
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !3242
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !3242
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !3242
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !3242
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !536, !alias.scope !3243, !noalias !3242
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !3238

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fo, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = mul i64 %.087119.us.prol, %i.bv
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !536
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us.prol
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !536
  %i.fo = add nuw nsw i64 %.087119.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !3239

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = sub nsw i64 %.087119.us.ph, %i.cv
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gk, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = mul i64 %.087119.us, %i.bv
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !536
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !536
  %i.fv = add nuw nsw i64 %.087119.us, 1          ; 2 uses
  %i.fw = mul i64 %i.fv, %i.bv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !536
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.fv
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !536
  %i.ga = add nuw nsw i64 %.087119.us, 2          ; 2 uses
  %i.gb = mul i64 %i.ga, %i.bv
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !536
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ga
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !536
  %i.gf = add nuw nsw i64 %.087119.us, 3          ; 2 uses
  %i.gg = mul i64 %i.gf, %i.bv
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !536
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gf
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !536
  %i.gk = add nuw nsw i64 %.087119.us, 4          ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gk, %i.cv
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !3240

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gl = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gl, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !3241

._crit_edge124:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.gn, align 8, !tbaa !165
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gp = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.go)
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge124
  %i.gr = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.go, i1 true)
  switch i64 %i.gr, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttiE13assembledSizeEmm.exit107
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.090117
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !508
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %.092115
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !536
  %i.gx = zext i16 %i.gw to i64
end_hunk_11
begin_hunk_12_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttsE15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !618
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.tr34.lcssa47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !507
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !508
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !618
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.tr34.lcssa47 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !628
  %i.bp = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bq = trunc i64 %i.bj to i16
  store i16 %i.bq, ptr %i.b, align 2, !tbaa !536
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !628 ; 2 uses
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.bv, i64 noundef %i.bp, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !3271

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.by, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i16 0, ptr %i.c, align 2, !tbaa !536
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !628 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  call void @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr %i.ci, i64 noundef %.lcssa, ptr noundef nonnull align 2 dereferenceable(2) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttsE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !628
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i16 0, ptr %i.a, align 2, !tbaa !536
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !628 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttsE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttsEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttsEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit ] ; 25 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl nuw i64 %.092115, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091116, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090117
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.092115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !3272

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 13 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ce = icmp eq i64 %i.cd, 1048576
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117 ; 2 uses
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = shl i64 %.092115, 1                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.ch
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.090117
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !508
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = getelementptr i8, ptr %i.cm, i64 -2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %.092115
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef nonnull %i.cp)
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.090117
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !508
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cn, %bb.k ], [ %i.ct, %bb.l ]
  %i.cu = icmp ult i64 %.090117, %3
  br i1 %i.cu, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.089 = load i16, ptr %.089.in, align 2, !tbaa !536
  %.089.fr = freeze i16 %.089                     ; 3 uses
  %i.cv = zext i16 %.089.fr to i64                ; 15 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = add nsw i64 %i.cv, -1
  %9 = sub i64 %3, %.090117
  %i.cy = shl i64 %9, 1
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cc, i64 %i.cz
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.db = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.ds, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gl, %._crit_edge.us ] ; 4 uses
  %i.dc = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dc ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.da, i64 %i.dc ; 4 uses
  %i.dd = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.dd, ptr %scevgep159, ptr %scevgep160
  %i.de = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.088121.us ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !507 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !508 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 1                 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.cv
  br i1 %i.dn, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.do = icmp ugt i64 %i.dm, %i.cv
  br i1 %i.do, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.dh, %i.dp
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %i.dg, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dq = sub nuw nsw i64 %i.cv, %i.dm
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef %i.dq)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dr = phi ptr [ %.pre135, %bb.q ], [ %i.di, %bb.p ], [ %i.di, %bb.o ], [ %i.di, %bb.n ] ; 8 uses
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ]
  %i.dt = sub nuw i64 %.088121.us, %.090117
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dt ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.cw
  %bound0 = icmp ult ptr %i.dr, %scevgep161
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dv = or disjoint i64 %index, 1
  %i.dw = or disjoint i64 %index, 2
  %i.dx = or disjoint i64 %index, 3
  %i.dy = or disjoint i64 %index, 4
  %i.dz = or disjoint i64 %index, 5
  %i.ea = or disjoint i64 %index, 6
  %i.eb = or disjoint i64 %index, 7
  %i.ec = mul i64 %index, %i.bv
  %i.ed = mul i64 %i.dv, %i.bv
  %i.ee = mul i64 %i.dw, %i.bv
  %i.ef = mul i64 %i.dx, %i.bv
  %i.eg = mul i64 %i.dy, %i.bv
  %i.eh = mul i64 %i.dz, %i.bv
  %i.ei = mul i64 %i.ea, %i.bv
  %i.ej = mul i64 %i.eb, %i.bv
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ec
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ej
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !536, !alias.scope !3280
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !3280
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !3280
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !3280
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !3280
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !3280
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !3280
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !3280
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !536, !alias.scope !3281, !noalias !3280
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !3276

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fo, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = mul i64 %.087119.us.prol, %i.bv
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !536
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us.prol
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !536
  %i.fo = add nuw nsw i64 %.087119.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !3277

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = sub nsw i64 %.087119.us.ph, %i.cv
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gk, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = mul i64 %.087119.us, %i.bv
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !536
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !536
  %i.fv = add nuw nsw i64 %.087119.us, 1          ; 2 uses
  %i.fw = mul i64 %i.fv, %i.bv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !536
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.fv
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !536
  %i.ga = add nuw nsw i64 %.087119.us, 2          ; 2 uses
  %i.gb = mul i64 %i.ga, %i.bv
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !536
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ga
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !536
  %i.gf = add nuw nsw i64 %.087119.us, 3          ; 2 uses
  %i.gg = mul i64 %i.gf, %i.bv
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !536
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gf
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !536
  %i.gk = add nuw nsw i64 %.087119.us, 4          ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gk, %i.cv
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !3278

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gl = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gl, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !3279

._crit_edge124:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.gn, align 8, !tbaa !165
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gp = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.go)
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge124
  %i.gr = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.go, i1 true)
  switch i64 %i.gr, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttsE13assembledSizeEmm.exit107
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.090117
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !508
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %.092115
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !536
  %i.gx = zext i16 %i.gw to i64
end_hunk_12
begin_hunk_13_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttaE15finalizeSegmentEmmm:tailrecurse.peel.begin

.loopexit52:                                      ; preds = %.split, %.split.peel
  %.tr34.lcssa47 = phi i64 [ %1, %.split.peel ], [ %.tr34, %.split ] ; 2 uses
  %.tr36.lcssa44 = phi i64 [ %3, %.split.peel ], [ %.tr36, %.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !618
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.tr34.lcssa47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !507
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !508
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !618
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.tr34.lcssa47 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !628
  %i.bp = shl i64 %.tr36.lcssa44, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bq = trunc i64 %i.bj to i16
  store i16 %i.bq, ptr %i.b, align 2, !tbaa !536
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !628 ; 2 uses
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.bv, i64 noundef %i.bp, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !3309

.loopexit53:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i64 [ %i.w, %bb.b ], [ %i.by, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i8 0, ptr %i.c, align 1, !tbaa !553
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !608 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  call void @_ZNSt6vectorIaSaIaEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPaS1_EEmRKa(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr %i.ci, i64 noundef %.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split, %tailrecurse, %tailrecurse.peel.begin, %.split.peel, %.split.peel, %.loopexit53, %.loopexit52, %.loopexit51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttaE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !165
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.f = icmp eq i64 %i.e, 65536
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !618
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i16                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !619
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.j, ptr %i.l, align 2, !tbaa !536
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.o, ptr %i.k, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !508  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775806
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 4611686018427387903)
  %i.y = select i1 %i.w, i64 4611686018427387903, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i16 %i.j, ptr %i.ab, align 2, !tbaa !536
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aa, ptr align 2 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !619
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !508
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !507
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !619
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorItSaItEE9push_backEOt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %1, 1                           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !195
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !182
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !608
  %i.aw = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !553
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !608 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  call void @_ZNSt6vectorIaSaIaEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPaS1_EEmRKa(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.bb, i64 noundef %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttaE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttaEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIttaEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit ] ; 25 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit ] ; 16 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.090117
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !165 ; 3 uses
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %trunc = and i32 %i.h, -65536                   ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.j
    i32 1048576, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.b
  switch i32 %trunc, label %bb.f [
    i32 262144, label %bb.e
    i32 1048576, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = add i64 %.091116, 2
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.090117
  %i.r = shl nuw i64 %.092115, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.r
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.k, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = add i64 %.091116, 2
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.090117
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.092115
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.af, ptr noundef nonnull %i.an)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.d, %bb.e
  %.1 = phi i64 [ %i.l, %bb.d ], [ %i.ag, %bb.e ], [ %.091116, %._crit_edge ], [ %.091116, %bb.c ] ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.090117
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 4294901760 ; 2 uses
  %i.ba = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.az)
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.f
  %i.bc = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true)
  switch i64 %i.bc, label %bb.i [
    i64 18, label %bb.g
    i64 20, label %bb.h
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !3310

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 13 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  %i.cd = and i64 %.sroa.0.0.copyload.i.i, 4294901760
  %i.ce = icmp eq i64 %i.cd, 1048576
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.090117 ; 2 uses
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = shl i64 %.092115, 1                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.ch
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.090117
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !508
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = getelementptr i8, ptr %i.cm, i64 -2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %.092115
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  tail call void @_ZNSt6vectorItSaItEE13_M_assign_auxIPtEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef %i.by, ptr noundef nonnull %i.cp)
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.090117
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !508
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %.092115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.089.in = phi ptr [ %i.cn, %bb.k ], [ %i.ct, %bb.l ]
  %i.cu = icmp ult i64 %.090117, %3
  br i1 %i.cu, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.m
  %.089 = load i16, ptr %.089.in, align 2, !tbaa !536
  %.089.fr = freeze i16 %.089                     ; 3 uses
  %i.cv = zext i16 %.089.fr to i64                ; 15 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !618
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = add nsw i64 %i.cv, -1
  %9 = sub i64 %3, %.090117
  %i.cy = shl i64 %9, 1
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cc, i64 %i.cz
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.db = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.ds, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gl, %._crit_edge.us ] ; 4 uses
  %i.dc = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dc ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.da, i64 %i.dc ; 4 uses
  %i.dd = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.dd, ptr %scevgep159, ptr %scevgep160
  %i.de = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.088121.us ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !507 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !508 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 1                 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.cv
  br i1 %i.dn, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.do = icmp ugt i64 %i.dm, %i.cv
  br i1 %i.do, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.dh, %i.dp
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %i.dg, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dq = sub nuw nsw i64 %i.cv, %i.dm
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 noundef %i.dq)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dr = phi ptr [ %.pre135, %bb.q ], [ %i.di, %bb.p ], [ %i.di, %bb.o ], [ %i.di, %bb.n ] ; 8 uses
  %i.ds = phi ptr [ %.pre134, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ]
  %i.dt = sub nuw i64 %.088121.us, %.090117
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.dt ; 13 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.us
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.cw
  %bound0 = icmp ult ptr %i.dr, %scevgep161
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.dv = or disjoint i64 %index, 1
  %i.dw = or disjoint i64 %index, 2
  %i.dx = or disjoint i64 %index, 3
  %i.dy = or disjoint i64 %index, 4
  %i.dz = or disjoint i64 %index, 5
  %i.ea = or disjoint i64 %index, 6
  %i.eb = or disjoint i64 %index, 7
  %i.ec = mul i64 %index, %i.bv
  %i.ed = mul i64 %i.dv, %i.bv
  %i.ee = mul i64 %i.dw, %i.bv
  %i.ef = mul i64 %i.dx, %i.bv
  %i.eg = mul i64 %i.dy, %i.bv
  %i.eh = mul i64 %i.dz, %i.bv
  %i.ei = mul i64 %i.ea, %i.bv
  %i.ej = mul i64 %i.eb, %i.bv
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ec
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ei
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.ej
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !536, !alias.scope !3318
  %i.et = load i16, ptr %i.el, align 2, !tbaa !536, !alias.scope !3318
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !536, !alias.scope !3318
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !536, !alias.scope !3318
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !536, !alias.scope !3318
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !536, !alias.scope !3318
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !536, !alias.scope !3318
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !536, !alias.scope !3318
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !536, !alias.scope !3319, !noalias !3318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !3314

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNSt6vectorItSaItEE6resizeEm.exit.us, %middle.block
  %.087119.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNSt6vectorItSaItEE6resizeEm.exit.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.087119.us.prol = phi i64 [ %i.fo, %scalar.ph.prol ], [ %.087119.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = mul i64 %.087119.us.prol, %i.bv
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !536
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us.prol
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !536
  %i.fo = add nuw nsw i64 %.087119.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !3315

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.087119.us.unr = phi i64 [ %.087119.us.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = sub nsw i64 %.087119.us.ph, %i.cv
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.087119.us = phi i64 [ %i.gk, %scalar.ph ], [ %.087119.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = mul i64 %.087119.us, %i.bv
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !536
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %.087119.us
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !536
  %i.fv = add nuw nsw i64 %.087119.us, 1          ; 2 uses
  %i.fw = mul i64 %i.fv, %i.bv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !536
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.fv
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !536
  %i.ga = add nuw nsw i64 %.087119.us, 2          ; 2 uses
  %i.gb = mul i64 %i.ga, %i.bv
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !536
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ga
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !536
  %i.gf = add nuw nsw i64 %.087119.us, 3          ; 2 uses
  %i.gg = mul i64 %i.gf, %i.bv
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !536
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.gf
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !536
  %i.gk = add nuw nsw i64 %.087119.us, 4          ; 2 uses
  %exitcond130.not.3 = icmp eq i64 %i.gk, %i.cv
  br i1 %exitcond130.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !3316

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gl = add nuw i64 %.088121.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gl, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond131.not, label %._crit_edge124, label %.lr.ph123.split.us, !llvm.loop !3317

._crit_edge124:                                   ; preds = %._crit_edge.us, %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.m
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.090117
  %.sroa.0.0.copyload.i.i.i103 = load i64, ptr %i.gn, align 8, !tbaa !165
  %i.go = and i64 %.sroa.0.0.copyload.i.i.i103, 4294901760 ; 2 uses
  %i.gp = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.go)
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %.split.i105, label %bb.t

.split.i105:                                      ; preds = %._crit_edge124
  %i.gr = tail call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.go, i1 true)
  switch i64 %i.gr, label %bb.t [
    i64 18, label %bb.r
    i64 20, label %bb.s
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit107
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIttaE13assembledSizeEmm.exit107
  ]

bb.r:                                             ; preds = %.split.i105
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.090117
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !508
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %.092115
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !536
  %i.gx = zext i16 %i.gw to i64
end_hunk_13
