Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 286
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.q, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.s, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.ab, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load <4 x i32>, ptr %i.ac, align 8
  store <4 x i32> %i.al, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !411, !align !412, !noundef !411
  %i.ao = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsfR8GmIBoxTX_21lance_namespace_impls.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 2, 24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !250544 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.b

_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.t, %bb.b, %bb.v, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.dw, %bb.v ], [ %i.du, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.t ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.v, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250546)
  %i.g = load i8, ptr %0, align 1, !alias.scope !250545, !noundef !411 ; 6 uses
  %i.h = add nsw i64 %1, -1                       ; 2 uses
  %i.i = icmp eq i64 %1, 2
  br i1 %i.i, label %.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 24) %1, i64 4) ; 3 uses
  %i.k = add nsw i64 %1, -1                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !250545, !noalias !250547, !noundef !411 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.m, %i.g
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.lr.ph
  %i.n = icmp ult i64 %i.j, %i.k
  br i1 %i.n, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.1, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.1: ; preds = %bb.d
  %i.o = add nsw i64 %1, -2                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !250545, !noalias !250547, !noundef !411 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.q, %i.g
  br i1 %.not.i.not.i.i.1, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.1
  %i.r = icmp ult i64 %i.j, %i.o
  br i1 %i.r, label %bb.f, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i64 %1, -3                       ; 4 uses
  %i.t = icmp samesign ugt i64 %1, 2
  br i1 %i.t, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.2, label %bb.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.2: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !250545, !noalias !250547, !noundef !411 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.v, %i.g
  br i1 %.not.i.not.i.i.2, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.2
  %i.w = icmp ult i64 %i.j, %i.s
  br i1 %i.w, label %bb.h, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

bb.h:                                             ; preds = %bb.g
  %i.x = add nsw i64 %1, -4                       ; 3 uses
  %.not = icmp eq i64 %1, 3
  br i1 %.not, label %bb.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.3

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.3: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !250545, !noalias !250547, !noundef !411 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.z, %i.g
  br i1 %.not.i.not.i.i.3, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %.lcssa39 = phi i64 [ %i.x, %bb.h ], [ %i.s, %bb.f ]
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef range(i64 2, 24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2500) #72, !noalias !250548
  unreachable

bb.j:                                             ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.3, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.2, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.1, %.lr.ph
  %.lcssa42 = phi i8 [ %i.m, %.lr.ph ], [ %i.q, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.1 ], [ %i.v, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.2 ], [ %i.z, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.3 ]
  %.lcssa40 = phi i64 [ %i.k, %.lr.ph ], [ %i.o, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.1 ], [ %i.s, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.2 ], [ %i.x, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.3 ]
  %i.aa = add nuw nsw i64 %1, 15
  %i.ab = icmp ult i64 %3, %i.aa
  br i1 %i.ab, label %.lr.ph.split.us.i.i, label %bb.k

.thread.i:                                        ; preds = %bb.c
  %i.ac = icmp ult i64 %3, 17
  br i1 %i.ac, label %.lr.ph.split.us.i.i, label %.thread93.i

.thread93.i:                                      ; preds = %.thread.i
  %i.ad = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !250545
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.ag = shufflevector <16 x i8> %i.af, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.l

.lr.ph.split.us.i.i:                              ; preds = %bb.j, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 24) %1), !alias.scope !250549, !noalias !250550
  %i.ah = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.ah, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.ai = add i64 %3, -1                          ; 2 uses
  %.not28.i.i35 = icmp ugt i64 %1, %i.ai
  br i1 %.not28.i.i35, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i
  %i.aj = phi i64 [ %i.am, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i ], [ %i.ai, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader ]
  %.pn.i36 = phi ptr [ %i.ak, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn.i36, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ak, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 24) %1), !alias.scope !250549, !noalias !250550
  %i.al = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.al, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.am = add i64 %i.aj, -1                       ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.am
  br i1 %.not28.i.i, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.l:                                             ; preds = %bb.k, %.thread93.i
  %i.an = phi i8 [ %.pre.i, %.thread93.i ], [ %.lcssa42, %bb.k ]
  %i.ao = phi <16 x i8> [ %i.ae, %.thread93.i ], [ %i.ag, %bb.k ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %.lcssa40, %bb.k ] ; 6 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !250549
  store ptr %2, ptr %i.a, align 8, !noalias !250549
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.as, align 8, !noalias !250549
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ar, ptr %i.at, align 8, !noalias !250549
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.au, align 8, !noalias !250549
  %i.av = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.av, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %bb.l
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.l ], [ %.sroa.014.2.3.i, %bb.p ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.l ], [ %i.co, %bb.p ] ; 2 uses
  %i.aw = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.ax = add i64 %.sroa.06.0.lcssa.i, %i.aw
  %i.ay = icmp uge i64 %i.ax, %3
  %i.az = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond3105.i, label %._crit_edge.i, label %.lr.ph107.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.p
  %.sroa.06.0103.i = phi i64 [ %i.co, %bb.p ], [ 0, %bb.l ] ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !250546, !noalias !250551
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.bb, align 1, !alias.scope !250546, !noalias !250551
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ao
  %i.bd = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.aq
  %i.be = and <16 x i1> %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !250546, !noalias !250551
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !250546, !noalias !250551
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ao
  %i.bi = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.aq
  %i.bj = and <16 x i1> %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bk, align 1, !alias.scope !250546, !noalias !250551
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !250546, !noalias !250551
  %i.bm = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ao
  %i.bn = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.aq
  %i.bo = and <16 x i1> %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bp, align 1, !alias.scope !250546, !noalias !250551
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bq, align 1, !alias.scope !250546, !noalias !250551
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ao
  %i.bs = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.aq
  %i.bt = and <16 x i1> %i.br, %i.bs
  %i.bu = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %i.bv = icmp eq i16 %i.bu, 0
  br i1 %i.bv, label %.preheader96.1.i, label %bb.q

.preheader96.1.i:                                 ; preds = %bb.q, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.ct, %bb.q ] ; 3 uses
  %4 = bitcast <16 x i1> %i.bj to i16             ; 2 uses
  %i.bw = icmp eq i16 %4, 0
  br i1 %i.bw, label %.preheader96.2.i, label %bb.m

bb.m:                                             ; preds = %.preheader96.1.i
  %i.bx = or disjoint i64 %.sroa.06.0103.i, 16
  %i.by = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bz = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bx, i16 noundef %4, i1 noundef zeroext %i.by)
  %i.ca = zext i1 %i.bz to i8
  %i.cb = or i8 %.sroa.014.2.i, %i.ca
  br label %.preheader96.2.i

.preheader96.2.i:                                 ; preds = %bb.m, %.preheader96.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader96.1.i ], [ %i.cb, %bb.m ] ; 3 uses
  %5 = bitcast <16 x i1> %i.bo to i16             ; 2 uses
  %i.cc = icmp eq i16 %5, 0
  br i1 %i.cc, label %.preheader96.3.i, label %bb.n

bb.n:                                             ; preds = %.preheader96.2.i
  %i.cd = or disjoint i64 %.sroa.06.0103.i, 32
  %i.ce = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cf = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cd, i16 noundef %5, i1 noundef zeroext %i.ce)
  %i.cg = zext i1 %i.cf to i8
  %i.ch = or i8 %.sroa.014.2.1.i, %i.cg
  br label %.preheader96.3.i

.preheader96.3.i:                                 ; preds = %bb.n, %.preheader96.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader96.2.i ], [ %i.ch, %bb.n ] ; 3 uses
  %6 = bitcast <16 x i1> %i.bt to i16             ; 2 uses
  %i.ci = icmp eq i16 %6, 0
  br i1 %i.ci, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader96.3.i
  %i.cj = or disjoint i64 %.sroa.06.0103.i, 48
  %i.ck = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cl = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cj, i16 noundef %6, i1 noundef zeroext %i.ck)
  %i.cm = zext i1 %i.cl to i8
  %i.cn = or i8 %.sroa.014.2.2.i, %i.cm
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader96.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader96.3.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.co = add i64 %.sroa.06.0103.i, 64            ; 3 uses
  %i.cp = add i64 %i.co, %i.av
  %i.cq = icmp uge i64 %i.cp, %3
  %i.cr = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.cs = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i, i16 noundef %i.bu, i1 noundef zeroext false)
  %i.ct = zext i1 %i.cs to i8
  br label %.preheader96.1.i

._crit_edge.i:                                    ; preds = %bb.r, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.r ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.az, %.preheader.i ], [ %i.dn, %bb.r ]
  %i.cu = sub i64 %3, %i.h
  %i.cv = add i64 %i.cu, -16                      ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.cw, align 1, !alias.scope !250546, !noalias !250552
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.cx, align 1, !alias.scope !250546, !noalias !250552
  %i.cy = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.ao
  %i.cz = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.aq
  %i.da = and <16 x i1> %i.cy, %i.cz
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %i.dc = icmp eq i16 %i.db, 0
  br i1 %i.dc, label %bb.t, label %bb.u

.lr.ph107.i:                                      ; preds = %.preheader.i, %bb.r
  %.sroa.06.1106.i = phi i64 [ %i.dk, %bb.r ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1106.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.dd, align 1, !alias.scope !250546, !noalias !250553
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.de, align 1, !alias.scope !250546, !noalias !250553
  %i.df = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.ao
  %i.dg = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.aq
  %i.dh = and <16 x i1> %i.df, %i.dg
  %i.di = bitcast <16 x i1> %i.dh to i16          ; 2 uses
  %i.dj = icmp eq i16 %i.di, 0
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %.lr.ph107.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph107.i ], [ %i.dp, %bb.s ] ; 2 uses
  %i.dk = add i64 %.sroa.06.1106.i, 16            ; 2 uses
  %i.dl = add i64 %i.dk, %i.aw
  %i.dm = icmp uge i64 %i.dl, %3
  %i.dn = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dm, %i.dn
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph107.i

bb.s:                                             ; preds = %.lr.ph107.i
  %i.do = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1106.i, i16 noundef %i.di, i1 noundef zeroext false)
  %i.dp = zext i1 %i.do to i8
  br label %bb.r

bb.t:                                             ; preds = %bb.u, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.ds, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !250549
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.u:                                             ; preds = %._crit_edge.i
  %i.dq = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cv, i16 noundef %i.db, i1 noundef zeroext %.lcssa.i)
  %i.dr = zext i1 %i.dq to i8
  %i.ds = or i8 %.sroa.014.3.lcssa.i, %i.dr
  br label %bb.t

_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit: ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.3, %bb.g, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.dt = load i64, ptr %i.c, align 8, !range !437, !noundef !411
  %i.du = trunc nuw nsw i64 %i.dt to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.v:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.dv = icmp eq i32 %bcmp, 0
  %i.dw = zext i1 %i.dv to i8
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXst_NtNtCshkPeWWG1flk_5lance7dataset5writeNtB5_15V2WriterAdapterNtB5_13GenericWriter14data_file_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #36 !guid !250554 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load i64, ptr %i.a, align 8, !range !416, !noundef !411
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !411, !noundef !411
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.f = load i64, ptr %i.e, align 8, !noundef !411
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.h = load i32, ptr %i.g, align 8, !range !428, !noundef !411
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 708
  %i.j = load i32, ptr %i.i, align 4
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.j, ptr %.sroa.65.0..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink7 = phi ptr [ %i.d, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %.sink6 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.sink = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  store ptr %.sink7, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink6, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.l, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsts_NtCs40MM8ukkVQd_9sqlparser3astNtB6_9FlushTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !250555 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !565, !noundef !411 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsts_NtCs40MM8ukkVQd_9sqlparser3astNtB6_9FlushTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsts_NtCs40MM8ukkVQd_9sqlparser3astNtB6_9FlushTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.10052, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs63DIHKhvmTb_10lance_core5errorNtB5_11FenceReasonNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !250556 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !423, !noundef !411
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 18, i64 16
  %.1 = select i1 %i.b, ptr @8702, ptr @8701
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs9ipI1vyGjpZ_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs3PfUT229lOd_12object_store4path4PathENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !250559 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250560)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !250560, !nonnull !411, !align !412, !noundef !411
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !250560
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs9ipI1vyGjpZ_12tracing_core5fieldINtB5_12DisplayValueRReENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !250566 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250567)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !250567, !nonnull !411, !align !412, !noundef !411 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250568)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !250568, !noalias !250569, !nonnull !411, !noundef !411
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !250568, !noalias !250569, !noundef !411
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !250570
  ret i1 %i.e
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @_RNvXsu_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB5_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) unnamed_addr #24 personality ptr @rust_eh_personality !guid !250586 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !noundef !411 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i32 %i.b, 1
  %i.e = sext i32 %i.d to i64
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = mul nuw nsw i64 %i.g, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !411 ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = or i64 %i.m, 1
  %i.q = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = mul nuw nsw i64 %i.r, 9
  %i.t = add nuw nsw i64 %i.s, 73
  %i.u = lshr i64 %i.t, 6
  %i.v = add nuw i64 %i.m, 1
  %i.w = add nuw i64 %i.v, %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.01.0 = phi i64 [ %i.w, %bb.d ], [ 0, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.y = load i32, ptr %i.x, align 4, !noundef !411 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
end_hunk_0
