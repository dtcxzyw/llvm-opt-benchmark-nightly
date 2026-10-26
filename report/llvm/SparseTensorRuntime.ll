Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparseTensorRuntime?download=true
inline.NumInlined: 25103
inline.NumDeleted: 4164
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 368
loop-unroll.NumUnrolled: 378
begin_hunk_0_@_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt:bb.a

bb.w:                                             ; preds = %bb.v
  %i.ds = load i16, ptr %1, align 2, !tbaa !536
  store i16 %i.ds, ptr %i.do, align 2, !tbaa !536
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit62

_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit62: ; preds = %bb.u, %bb.v, %bb.w
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 %i.dp
  %.not.i63 = icmp eq ptr %i.cf, null
  br i1 %.not.i63, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit62
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !619
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.dw) #27
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit62, %bb.x
  store ptr %i.ct, ptr %0, align 8, !tbaa !508
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !507
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.co
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !619
  br label %_ZSt4fillIPttEvT_S1_RKT0_.exit

_ZSt4fillIPttEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i52, %.lr.ph.i.i.i, %middle.block110, %vec.epilog.middle.block125, %middle.block139, %vec.epilog.middle.block154, %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit50, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageItmdE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !576
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !195  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !183
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %3, ptr %i.k, align 8, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !195
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !182  ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #23 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store i64 %3, ptr %i.aa, align 8, !tbaa !165
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !183
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.af) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !182
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !195
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !183
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.h:                                             ; preds = %bb.a
  %i.ah = icmp eq i64 %3, %2
  br i1 %i.ah, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %bb.i

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
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !600
  %i.av = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !526
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !600 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr %i.ba, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItmdE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.ai, i64 noundef 0, i64 noundef %i.bb)
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageItmdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItmdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit ] ; 24 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit ] ; 16 uses
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
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !576
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
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
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !576
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
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
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmdE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !1397

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 5 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr
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
  %i.cv = zext i16 %.089.fr to i64                ; 10 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !576
  %xtraiter = and i64 %i.cv, 3                    ; 3 uses
  %i.cw = icmp ult i16 %.089.fr, 4
  %unroll_iter = and i64 %i.cv, 65532
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %i.cx = phi ptr [ %i.dl, %._crit_edge.us ], [ %.pre133, %.lr.ph123.split.us.preheader ] ; 4 uses
  %.088121.us = phi i64 [ %i.en, %._crit_edge.us ], [ %.090117, %.lr.ph123.split.us.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.088121.us ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !195 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !182 ; 5 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 3                 ; 3 uses
  %i.dg = icmp ult i64 %i.df, %i.cv
  br i1 %i.dg, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dh = icmp ugt i64 %i.df, %i.cv
  br i1 %i.dh, label %bb.o, label %_ZNSt6vectorImSaImEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.da, %i.di
  br i1 %.not.i.i.us, label %_ZNSt6vectorImSaImEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.di, ptr %i.cz, align 8, !tbaa !195
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dj = sub nuw nsw i64 %i.cv, %i.df
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 noundef %i.dj)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !576 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !182
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.us

_ZNSt6vectorImSaImEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dk = phi ptr [ %.pre135, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ] ; 5 uses
  %i.dl = phi ptr [ %.pre134, %bb.q ], [ %i.cx, %bb.p ], [ %i.cx, %bb.o ], [ %i.cx, %bb.n ]
  %i.dm = sub nuw i64 %.088121.us, %.090117
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.dm ; 5 uses
  br i1 %i.cw, label %.epil.preheader, label %_ZNSt6vectorImSaImEE6resizeEm.exit.us.new

_ZNSt6vectorImSaImEE6resizeEm.exit.us.new:        ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.us, %_ZNSt6vectorImSaImEE6resizeEm.exit.us.new
  %.087119.us = phi i64 [ %i.eh, %_ZNSt6vectorImSaImEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorImSaImEE6resizeEm.exit.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %_ZNSt6vectorImSaImEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorImSaImEE6resizeEm.exit.us ]
  %i.do = mul i64 %.087119.us, %i.bv
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !165
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.087119.us
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !165
  %i.ds = or disjoint i64 %.087119.us, 1          ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4mlir13sparse_tensor19SparseTensorStorageItjdE15finalizeSegmentEmmm:tailrecurse.peel.begin
bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !1428

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
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageItjdE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !613
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i32                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !498  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !614
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %i.l, align 4, !tbaa !546
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store ptr %i.o, ptr %i.k, align 8, !tbaa !498
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !499  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775804
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 2305843009213693951)
  %i.y = select i1 %i.w, i64 2305843009213693951, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i32 %i.j, ptr %i.ab, align 4, !tbaa !546
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !614
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !499
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !498
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !614
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, label %bb.i

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
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItjdE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageItjdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItjdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit ] ; 24 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit ] ; 16 uses
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
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !613
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
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
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !613
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
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
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjdE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !1429

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 5 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr
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
  %i.cv = zext i16 %.089.fr to i64                ; 10 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !613
  %xtraiter = and i64 %i.cv, 3                    ; 3 uses
  %i.cw = icmp ult i16 %.089.fr, 4
  %unroll_iter = and i64 %i.cv, 65532
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %i.cx = phi ptr [ %i.dl, %._crit_edge.us ], [ %.pre133, %.lr.ph123.split.us.preheader ] ; 4 uses
  %.088121.us = phi i64 [ %i.en, %._crit_edge.us ], [ %.090117, %.lr.ph123.split.us.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.088121.us ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !498 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !499 ; 5 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2                 ; 3 uses
  %i.dg = icmp ult i64 %i.df, %i.cv
  br i1 %i.dg, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dh = icmp ugt i64 %i.df, %i.cv
  br i1 %i.dh, label %bb.o, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.da, %i.di
  br i1 %.not.i.i.us, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.di, ptr %i.cz, align 8, !tbaa !498
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dj = sub nuw nsw i64 %i.cv, %i.df
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 noundef %i.dj)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !613 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !499
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us

_ZNSt6vectorIjSaIjEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dk = phi ptr [ %.pre135, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ] ; 5 uses
  %i.dl = phi ptr [ %.pre134, %bb.q ], [ %i.cx, %bb.p ], [ %i.cx, %bb.o ], [ %i.cx, %bb.n ]
  %i.dm = sub nuw i64 %.088121.us, %.090117
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dm ; 5 uses
  br i1 %i.cw, label %.epil.preheader, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us.new

_ZNSt6vectorIjSaIjEE6resizeEm.exit.us.new:        ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us.new
  %.087119.us = phi i64 [ %i.eh, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us ]
  %i.do = mul i64 %.087119.us, %i.bv
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !546
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.087119.us
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !546
  %i.ds = or disjoint i64 %.087119.us, 1          ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttdE15finalizeSegmentEmmm:tailrecurse.peel.begin
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
  %i.cy = sub i64 %3, %.090117
  %i.cz = shl i64 %i.cy, 1
  %i.da = mul i64 %i.cx, %i.cz
  %i.db = getelementptr i8, ptr %i.cc, i64 %i.da
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dd ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %i.df = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.df, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088121.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.cv
  br i1 %i.do, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dp = icmp ugt i64 %i.dn, %i.cv
  br i1 %i.dp, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dr = sub nuw nsw i64 %i.cv, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
end_hunk_2
begin_hunk_3_@_ZN4mlir13sparse_tensor19SparseTensorStorageIthdE15finalizeSegmentEmmm:tailrecurse.peel.begin

bb.d:                                             ; preds = %bb.c, %.split
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !165
  %i.bw = mul i64 %i.bv, %.tr36                   ; 2 uses
  %i.bx = add i64 %.tr34, 1                       ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.m
  br i1 %i.by, label %.loopexit53, label %tailrecurse, !llvm.loop !1498

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
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIthdE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !623
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i8                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !516  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !624
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.j, ptr %i.l, align 1, !tbaa !553
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !516
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.k, align 8, !tbaa !516
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !517  ; 4 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775807
  br i1 %i.u, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.t  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.t
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 9223372036854775807)
  %i.y = select i1 %i.w, i64 9223372036854775807, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #23 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t ; 2 uses
  store i8 %i.j, ptr %i.aa, align 1, !tbaa !553
  %i.ab = icmp sgt i64 %i.t, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !624
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.af) #27
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !517
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !516
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !624
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.h:                                             ; preds = %bb.a
  %i.ah = icmp eq i64 %3, %2
  br i1 %i.ah, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, label %bb.i

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
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !600
  %i.av = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !526
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !600 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr %i.ba, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIthdE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.ai, i64 noundef 0, i64 noundef %i.bb)
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIthdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIthdEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit ] ; 24 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit ] ; 16 uses
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
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !623
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
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
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !623
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
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
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthdE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !1499

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr
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
  %.089.fr = freeze i16 %.089                     ; 4 uses
  %i.cv = zext i16 %.089.fr to i64                ; 10 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %xtraiter = and i64 %i.cv, 1
  %i.cw = icmp eq i16 %.089.fr, 1
  %unroll_iter = and i64 %i.cv, 65534
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod161 = trunc i16 %.089.fr to i1
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %.088121.us = phi i64 [ %i.ei, %._crit_edge.us ], [ %.090117, %.lr.ph123.split.us.preheader ] ; 6 uses
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !623
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.088121.us ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !516 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !517 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = icmp ult i64 %i.de, %i.cv
  br i1 %i.df, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dg = icmp ugt i64 %i.de, %i.cv
  br i1 %i.dg, label %bb.o, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.da, %i.dh
  br i1 %.not.i.i.us, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dh, ptr %i.cz, align 8, !tbaa !516
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.di = sub nuw nsw i64 %i.cv, %i.de
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 noundef %i.di)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us

_ZNSt6vectorIhSaIhEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dj = sub nuw i64 %.088121.us, %.090117
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.dj ; 3 uses
  br i1 %i.cw, label %.epil.preheader, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us.new

_ZNSt6vectorIhSaIhEE6resizeEm.exit.us.new:        ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us.new
  %.087119.us = phi i64 [ %i.ea, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us ]
  %i.dl = mul i64 %.087119.us, %i.bv
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !553
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !623
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %.088121.us
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !517
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.087119.us
  store i8 %i.dn, ptr %i.dr, align 1, !tbaa !553
  %i.ds = or disjoint i64 %.087119.us, 1          ; 2 uses
  %i.dt = mul i64 %i.ds, %i.bv
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !553
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !623
end_hunk_3
begin_hunk_4_@_ZN4mlir13sparse_tensor19SparseTensorStorageItmfE15finalizeSegmentEmmm:tailrecurse.peel.begin

bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !1950

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
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageItmfE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !576
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !195  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !183
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %3, ptr %i.k, align 8, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !195
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !182  ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #23 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store i64 %3, ptr %i.aa, align 8, !tbaa !165
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !183
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.af) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !182
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !195
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !183
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.h:                                             ; preds = %bb.a
  %i.ah = icmp eq i64 %3, %2
  br i1 %i.ah, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %bb.i

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
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !640
  %i.av = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !531
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !640 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr %i.ba, i64 noundef %i.av, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItmfE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.ai, i64 noundef 0, i64 noundef %i.bb)
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageItmfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItmfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit ] ; 24 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit ] ; 16 uses
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
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !576
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
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
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !576
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorImSaImEE13_M_assign_auxIPmEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
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
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItmfE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !1951

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 5 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr
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
  %i.cv = zext i16 %.089.fr to i64                ; 10 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !576
  %xtraiter = and i64 %i.cv, 3                    ; 3 uses
  %i.cw = icmp ult i16 %.089.fr, 4
  %unroll_iter = and i64 %i.cv, 65532
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %i.cx = phi ptr [ %i.dl, %._crit_edge.us ], [ %.pre133, %.lr.ph123.split.us.preheader ] ; 4 uses
  %.088121.us = phi i64 [ %i.en, %._crit_edge.us ], [ %.090117, %.lr.ph123.split.us.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.088121.us ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !195 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !182 ; 5 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 3                 ; 3 uses
  %i.dg = icmp ult i64 %i.df, %i.cv
  br i1 %i.dg, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dh = icmp ugt i64 %i.df, %i.cv
  br i1 %i.dh, label %bb.o, label %_ZNSt6vectorImSaImEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.da, %i.di
  br i1 %.not.i.i.us, label %_ZNSt6vectorImSaImEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.di, ptr %i.cz, align 8, !tbaa !195
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dj = sub nuw nsw i64 %i.cv, %i.df
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 noundef %i.dj)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !576 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !182
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.us

_ZNSt6vectorImSaImEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dk = phi ptr [ %.pre135, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ] ; 5 uses
  %i.dl = phi ptr [ %.pre134, %bb.q ], [ %i.cx, %bb.p ], [ %i.cx, %bb.o ], [ %i.cx, %bb.n ]
  %i.dm = sub nuw i64 %.088121.us, %.090117
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.dm ; 5 uses
  br i1 %i.cw, label %.epil.preheader, label %_ZNSt6vectorImSaImEE6resizeEm.exit.us.new

_ZNSt6vectorImSaImEE6resizeEm.exit.us.new:        ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.us, %_ZNSt6vectorImSaImEE6resizeEm.exit.us.new
  %.087119.us = phi i64 [ %i.eh, %_ZNSt6vectorImSaImEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorImSaImEE6resizeEm.exit.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %_ZNSt6vectorImSaImEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorImSaImEE6resizeEm.exit.us ]
  %i.do = mul i64 %.087119.us, %i.bv
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !165
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.087119.us
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !165
  %i.ds = or disjoint i64 %.087119.us, 1          ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4mlir13sparse_tensor19SparseTensorStorageItjfE15finalizeSegmentEmmm:tailrecurse.peel.begin
bb.d:                                             ; preds = %bb.c, %.split
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = mul i64 %i.bx, %.tr36                   ; 2 uses
  %i.bz = add i64 %.tr34, 1                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.m
  br i1 %i.ca, label %.loopexit53, label %tailrecurse, !llvm.loop !1982

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
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageItjfE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !613
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i32                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !498  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !614
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %i.l, align 4, !tbaa !546
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store ptr %i.o, ptr %i.k, align 8, !tbaa !498
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !499  ; 4 uses
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775804
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 2305843009213693951)
  %i.y = select i1 %i.w, i64 2305843009213693951, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i32 %i.j, ptr %i.ab, align 4, !tbaa !546
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !614
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !499
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !498
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !614
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.h:                                             ; preds = %bb.a
  %i.ai = icmp eq i64 %3, %2
  br i1 %i.ai, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, label %bb.i

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
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItjfE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageItjfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageItjfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit ] ; 24 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit ] ; 16 uses
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
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !613
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
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
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !613
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPjEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
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
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageItjfE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !1983

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 5 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr
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
  %i.cv = zext i16 %.089.fr to i64                ; 10 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %.pre133 = load ptr, ptr %i.c, align 8, !tbaa !613
  %xtraiter = and i64 %i.cv, 3                    ; 3 uses
  %i.cw = icmp ult i16 %.089.fr, 4
  %unroll_iter = and i64 %i.cv, 65532
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %i.cx = phi ptr [ %i.dl, %._crit_edge.us ], [ %.pre133, %.lr.ph123.split.us.preheader ] ; 4 uses
  %.088121.us = phi i64 [ %i.en, %._crit_edge.us ], [ %.090117, %.lr.ph123.split.us.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.088121.us ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !498 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !499 ; 5 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2                 ; 3 uses
  %i.dg = icmp ult i64 %i.df, %i.cv
  br i1 %i.dg, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dh = icmp ugt i64 %i.df, %i.cv
  br i1 %i.dh, label %bb.o, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.da, %i.di
  br i1 %.not.i.i.us, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.di, ptr %i.cz, align 8, !tbaa !498
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dj = sub nuw nsw i64 %i.cv, %i.df
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 noundef %i.dj)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !613 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !499
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us

_ZNSt6vectorIjSaIjEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dk = phi ptr [ %.pre135, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.o ], [ %i.db, %bb.n ] ; 5 uses
  %i.dl = phi ptr [ %.pre134, %bb.q ], [ %i.cx, %bb.p ], [ %i.cx, %bb.o ], [ %i.cx, %bb.n ]
  %i.dm = sub nuw i64 %.088121.us, %.090117
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dm ; 5 uses
  br i1 %i.cw, label %.epil.preheader, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us.new

_ZNSt6vectorIjSaIjEE6resizeEm.exit.us.new:        ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us.new
  %.087119.us = phi i64 [ %i.eh, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.us ]
  %i.do = mul i64 %.087119.us, %i.bv
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !546
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.087119.us
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !546
  %i.ds = or disjoint i64 %.087119.us, 1          ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttfE15finalizeSegmentEmmm:tailrecurse.peel.begin
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
  %i.cy = sub i64 %3, %.090117
  %i.cz = shl i64 %i.cy, 1
  %i.da = mul i64 %i.cx, %i.cz
  %i.db = getelementptr i8, ptr %i.cc, i64 %i.da
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dd ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %i.df = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.df, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088121.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.cv
  br i1 %i.do, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dp = icmp ugt i64 %i.dn, %i.cv
  br i1 %i.dp, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dr = sub nuw nsw i64 %i.cv, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
end_hunk_6
begin_hunk_7_@_ZN4mlir13sparse_tensor19SparseTensorStorageIthfE15finalizeSegmentEmmm:tailrecurse.peel.begin

bb.d:                                             ; preds = %bb.c, %.split
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.tr34
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !165
  %i.bw = mul i64 %i.bv, %.tr36                   ; 2 uses
  %i.bx = add i64 %.tr34, 1                       ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.m
  br i1 %i.by, label %.loopexit53, label %tailrecurse, !llvm.loop !2052

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
define linkonce_odr hidden void @_ZN4mlir13sparse_tensor19SparseTensorStorageIthfE9appendCrdEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !623
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %1 ; 4 uses
  %i.j = trunc i64 %3 to i8                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !516  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !624
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.j, ptr %i.l, align 1, !tbaa !553
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !516
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.k, align 8, !tbaa !516
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !517  ; 4 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775807
  br i1 %i.u, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #28
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i, %i.t  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.t
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 9223372036854775807)
  %i.y = select i1 %i.w, i64 9223372036854775807, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #23 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t ; 2 uses
  store i8 %i.j, ptr %i.aa, align 1, !tbaa !553
  %i.ab = icmp sgt i64 %i.t, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !624
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.af) #27
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !517
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !516
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !624
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.h:                                             ; preds = %bb.a
  %i.ah = icmp eq i64 %3, %2
  br i1 %i.ah, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, label %bb.i

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
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !640
  %i.av = sub i64 %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !531
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !640 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr %i.ba, i64 noundef %i.av, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = sub i64 %3, %2
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIthfE15finalizeSegmentEmmm(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %i.ai, i64 noundef 0, i64 noundef %i.bb)
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.c, %bb.j, %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir13sparse_tensor19SparseTensorStorageIthfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_PKl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorStorageIthfEC2EmPKmmS4_PKNS0_9LevelTypeES4_S4_(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !574
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit ]
  %.090117 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit ] ; 24 uses
  %.091116 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit ] ; 8 uses
  %.092115 = phi i64 [ 1, %.lr.ph ], [ %.0.i, %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit ] ; 16 uses
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
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !623
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.090117
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.090117
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !508
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !536
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.o, ptr noundef %i.ac)
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
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !623
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.090117
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.090117
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !508
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %.092115
  %i.au = load i16, ptr %i.at, align 2, !tbaa !536
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.av
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.aj, ptr noundef %i.aw)
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
    i64 19, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit
    i64 21, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit
  ]

bb.g:                                             ; preds = %.split.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.090117
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.092115
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !536
  %i.bi = zext i16 %i.bh to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit

bb.h:                                             ; preds = %.split.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !618
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.090117
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %.idx.i = shl i64 %.092115, 2
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.idx.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !536
  %i.bp = zext i16 %i.bo to i64
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit

bb.i:                                             ; preds = %.split.i, %bb.f
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.090117
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %.092115
  br label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit

_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit: ; preds = %.split.i, %.split.i, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.bi, %bb.g ], [ %i.bp, %bb.h ], [ %i.bt, %bb.i ], [ %.092115, %.split.i ], [ %.092115, %.split.i ] ; 2 uses
  %i.bu = add nuw i64 %.090117, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %_ZNK4mlir13sparse_tensor19SparseTensorStorageIthfE13assembledSizeEmm.exit107, label %bb.b, !llvm.loop !2053

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.bv = sub nuw i64 %3, %.090117                ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.091116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %i.bz = add i64 %.091116, 2                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !165
  %i.cc = inttoptr i64 %i.cb to ptr
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
  %.089.fr = freeze i16 %.089                     ; 4 uses
  %i.cv = zext i16 %.089.fr to i64                ; 10 uses
  %.not125 = icmp eq i16 %.089.fr, 0
  br i1 %.not125, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %xtraiter = and i64 %i.cv, 1
  %i.cw = icmp eq i16 %.089.fr, 1
  %unroll_iter = and i64 %i.cv, 65534
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod161 = trunc i16 %.089.fr to i1
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %.088121.us = phi i64 [ %i.ei, %._crit_edge.us ], [ %.090117, %.lr.ph123.split.us.preheader ] ; 6 uses
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !623
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.088121.us ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !516 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !517 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = icmp ult i64 %i.de, %i.cv
  br i1 %i.df, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dg = icmp ugt i64 %i.de, %i.cv
  br i1 %i.dg, label %bb.o, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.da, %i.dh
  br i1 %.not.i.i.us, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dh, ptr %i.cz, align 8, !tbaa !516
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.di = sub nuw nsw i64 %i.cv, %i.de
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 noundef %i.di)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us

_ZNSt6vectorIhSaIhEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dj = sub nuw i64 %.088121.us, %.090117
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.dj ; 3 uses
  br i1 %i.cw, label %.epil.preheader, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us.new

_ZNSt6vectorIhSaIhEE6resizeEm.exit.us.new:        ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us.new
  %.087119.us = phi i64 [ %i.ea, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us.new ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.us ]
  %i.dl = mul i64 %.087119.us, %i.bv
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !553
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !623
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %.088121.us
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !517
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.087119.us
  store i8 %i.dn, ptr %i.dr, align 1, !tbaa !553
  %i.ds = or disjoint i64 %.087119.us, 1          ; 2 uses
  %i.dt = mul i64 %i.ds, %i.bv
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !553
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !623
end_hunk_7
begin_hunk_8_@_ZN4mlir13sparse_tensor19SparseTensorStorageItt3f16E15finalizeSegmentEmmm:tailrecurse.peel.begin
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
  %i.cy = sub i64 %3, %.090117
  %i.cz = shl i64 %i.cy, 1
  %i.da = mul i64 %i.cx, %i.cz
  %i.db = getelementptr i8, ptr %i.cc, i64 %i.da
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dd ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %i.df = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.df, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088121.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.cv
  br i1 %i.do, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dp = icmp ugt i64 %i.dn, %i.cv
  br i1 %i.dp, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dr = sub nuw nsw i64 %i.cv, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
end_hunk_8
begin_hunk_9_@_ZN4mlir13sparse_tensor19SparseTensorStorageItt4bf16E15finalizeSegmentEmmm:tailrecurse.peel.begin
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
  %i.cy = sub i64 %3, %.090117
  %i.cz = shl i64 %i.cy, 1
  %i.da = mul i64 %i.cx, %i.cz
  %i.db = getelementptr i8, ptr %i.cc, i64 %i.da
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dd ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %i.df = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.df, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088121.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.cv
  br i1 %i.do, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dp = icmp ugt i64 %i.dn, %i.cv
  br i1 %i.dp, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dr = sub nuw nsw i64 %i.cv, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
end_hunk_9
begin_hunk_10_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttlE15finalizeSegmentEmmm:tailrecurse.peel.begin
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
  %i.cy = sub i64 %3, %.090117
  %i.cz = shl i64 %i.cy, 1
  %i.da = mul i64 %i.cx, %i.cz
  %i.db = getelementptr i8, ptr %i.cc, i64 %i.da
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dd ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %i.df = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.df, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088121.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.cv
  br i1 %i.do, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dp = icmp ugt i64 %i.dn, %i.cv
  br i1 %i.dp, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dr = sub nuw nsw i64 %i.cv, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
end_hunk_10
begin_hunk_11_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttiE15finalizeSegmentEmmm:tailrecurse.peel.begin
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
  %i.cy = sub i64 %3, %.090117
  %i.cz = shl i64 %i.cy, 1
  %i.da = mul i64 %i.cx, %i.cz
  %i.db = getelementptr i8, ptr %i.cc, i64 %i.da
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dd ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %i.df = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.df, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088121.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.cv
  br i1 %i.do, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dp = icmp ugt i64 %i.dn, %i.cv
  br i1 %i.dp, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dr = sub nuw nsw i64 %i.cv, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
end_hunk_11
begin_hunk_12_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttsE15finalizeSegmentEmmm:tailrecurse.peel.begin
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
  %i.cy = sub i64 %3, %.090117
  %i.cz = shl i64 %i.cy, 1
  %i.da = mul i64 %i.cx, %i.cz
  %i.db = getelementptr i8, ptr %i.cc, i64 %i.da
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dd ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %i.df = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.df, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088121.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.cv
  br i1 %i.do, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dp = icmp ugt i64 %i.dn, %i.cv
  br i1 %i.dp, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dr = sub nuw nsw i64 %i.cv, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
end_hunk_12
begin_hunk_13_@_ZN4mlir13sparse_tensor19SparseTensorStorageIttaE15finalizeSegmentEmmm:tailrecurse.peel.begin
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
  %i.cy = sub i64 %3, %.090117
  %i.cz = shl i64 %i.cy, 1
  %i.da = mul i64 %i.cx, %i.cz
  %i.db = getelementptr i8, ptr %i.cc, i64 %i.da
  %min.iters.check = icmp ult i16 %.089.fr, 8
  %n.vec = and i64 %i.cv, 65528                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph123.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %i.dc = phi ptr [ %.pre133, %.lr.ph123.split.us.preheader ], [ %i.dt, %._crit_edge.us ] ; 4 uses
  %.088121.us = phi i64 [ %.090117, %.lr.ph123.split.us.preheader ], [ %i.gm, %._crit_edge.us ] ; 4 uses
  %i.dd = shl i64 %indvar, 1                      ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.cc, i64 %i.dd ; 4 uses
  %scevgep160 = getelementptr i8, ptr %i.db, i64 %i.dd ; 4 uses
  %i.de = icmp ult ptr %scevgep159, %scevgep160
  %umin = select i1 %i.de, ptr %scevgep159, ptr %scevgep160
  %i.df = icmp ugt ptr %scevgep159, %scevgep160
  %umax = select i1 %i.df, ptr %scevgep159, ptr %scevgep160
  %scevgep161 = getelementptr i8, ptr %umax, i64 2
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.088121.us ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !507 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !508 ; 5 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 1                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.cv
  br i1 %i.do, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph123.split.us
  %i.dp = icmp ugt i64 %i.dn, %i.cv
  br i1 %i.dp, label %bb.o, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.cv ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.di, %i.dq
  br i1 %.not.i.i.us, label %_ZNSt6vectorItSaItEE6resizeEm.exit.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.dq, ptr %i.dh, align 8, !tbaa !507
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

bb.q:                                             ; preds = %.lr.ph123.split.us
  %i.dr = sub nuw nsw i64 %i.cv, %i.dn
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dr)
  %.pre134 = load ptr, ptr %i.c, align 8, !tbaa !618 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre134, i64 %.088121.us
  %.pre135 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !508
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.us

_ZNSt6vectorItSaItEE6resizeEm.exit.us:            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
end_hunk_13
