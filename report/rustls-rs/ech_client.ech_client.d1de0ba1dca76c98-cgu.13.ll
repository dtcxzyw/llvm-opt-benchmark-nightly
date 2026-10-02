Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.13?download=true
inline.NumInlined: 1021
inline.NumDeleted: 561
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable7ipnsortTyjENvYBT_NtNtB8_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client:bb.a
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit.thread, label %.lr.ph

.lr.ph25:                                         ; preds = %.preheader, %bb.d
  %.val4 = phi i64 [ %.val2, %bb.d ], [ %.val10, %.preheader ]
  %.val3 = phi i64 [ %.val, %bb.d ], [ %.val9, %.preheader ] ; 2 uses
  %.sroa.01.1.i24 = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i24 ; 2 uses
  %.val = load i64, ptr %i.n, align 8, !noundef !6 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val2 = load i64, ptr %i.o, align 8            ; 2 uses
  %i.p = icmp eq i64 %.val, %.val3
  %i.q = icmp ult i64 %.val, %.val3
  %i.r = icmp ult i64 %.val2, %.val4
  %.sroa.0.0.i.i14 = select i1 %i.p, i1 %i.r, i1 %i.q
  br i1 %.sroa.0.0.i.i14, label %bb.d, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit

bb.d:                                             ; preds = %.lr.ph25
  %i.s = add nuw nsw i64 %.sroa.01.1.i24, 1       ; 2 uses
  %exitcond32.not = icmp eq i64 %i.s, %1
  br i1 %exitcond32.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit.thread, label %.lr.ph25

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit: ; preds = %.lr.ph, %.lr.ph25, %.preheader19, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader19 ], [ 2, %.preheader ], [ %.sroa.01.1.i24, %.lr.ph25 ], [ %.sroa.01.0.i21, %.lr.ph ] ; 2 uses
  %i.t = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.u, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit.thread, label %bb.e

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit
  br i1 %.sroa.0.0.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.preheader.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE7reverseCsi17nFaBu4HY_10ech_client.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit
  %i.v = or i64 %1, 1
  %i.w = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 1
  %i.z = xor i32 %i.y, 126
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTyjENvYB17_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.z, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE7reverseCsi17nFaBu4HY_10ech_client.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE7reverseCsi17nFaBu4HY_10ech_client.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.i.i
  %i.aa = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE7reverseCsi17nFaBu4HY_10ech_client.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.i.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE7reverseCsi17nFaBu4HY_10ech_client.exit.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.preheader.i.i ], [ %i.ar, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE7reverseCsi17nFaBu4HY_10ech_client.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i64 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.ab = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ad = getelementptr [16 x i8], ptr %i.ag, i64 %i.ab ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !735, !noalias !736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !737
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !alias.scope !738, !noalias !739
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE7reverseCsi17nFaBu4HY_10ech_client.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE7reverseCsi17nFaBu4HY_10ech_client.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE7reverseCsi17nFaBu4HY_10ech_client.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit.thread, %bb.e
  ret void

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit.thread
  %i.af = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ah = icmp eq i64 %i.af, 1
  br i1 %i.ah, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.preheader.i.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.preheader.i.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.preheader.i.i
  %unroll_iter = and i64 %i.af, 288230376151711742
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.preheader.i.i.new ], [ %i.ar, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.i.i ]
  %i.ai = xor i64 %.sroa.0.016.i.i, -1
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ak = getelementptr [16 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !735, !noalias !736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !alias.scope !737
  store <2 x i64> %i.al, ptr %i.ak, align 8, !alias.scope !738, !noalias !739
  %i.am = xor i64 %.sroa.0.016.i.i, -2
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = getelementptr [16 x i8], ptr %i.ag, i64 %i.am ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !735, !noalias !736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !737
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !alias.scope !738, !noalias !739
  %i.ar = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE7reverseCsi17nFaBu4HY_10ech_client.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE12split_at_mutCsi17nFaBu4HY_10ech_client.exit11.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keybNCINvMB10_INtB10_10NameServerB22_E3newATNtNtB28_4xfer8ProtocolINtNtB4P_12dns_exchange11DnsExchangeB22_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %..i, 40                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.v, %.preheader ], [ %i.h, %.critedge ] ; 2 uses
  %i.j = phi ptr [ %i.t, %.preheader ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -40 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -40 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -40 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -8
  %.val.i = load i8, ptr %i.n, align 8, !range !10, !noalias !748, !noundef !6
  %i.o = getelementptr i8, ptr %i.j, i64 -8
  %.val12.i = load i8, ptr %i.o, align 8, !range !10, !noalias !748, !noundef !6
  %.not.i.i = icmp eq i8 %.val.i, 0
  %i.p = icmp ne i8 %.val12.i, 0
  %i.q = and i1 %.not.i.i, %i.p                   ; 3 uses
  %..i17 = select i1 %i.q, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %..i17, i64 40, i1 false), !noalias !748
  %i.r = xor i1 %i.q, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.s ; 3 uses
  %i.u = zext i1 %i.q to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.u ; 3 uses
  %i.w = icmp eq ptr %i.t, %0
  %i.x = icmp eq ptr %i.v, %2
  %or.cond.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keybNCINvMB1d_INtB1d_10NameServerB2f_E3newATNtNtB2l_4xfer8ProtocolINtNtB5g_12dns_exchange11DnsExchangeB2f_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.y = phi ptr [ %i.aj, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.e, %.critedge ] ; 3 uses
  %i.z = phi ptr [ %i.ag, %.lr.ph.i ], [ %2, %.critedge ] ; 3 uses
  %i.aa = getelementptr i8, ptr %.sroa.0.02.i, i64 32
  %.sroa.0.0.val.i = load i8, ptr %i.aa, align 8, !range !10, !noalias !749, !noundef !6
  %i.ab = getelementptr i8, ptr %i.z, i64 32
  %.val.i19 = load i8, ptr %i.ab, align 8, !range !10, !noalias !749, !noundef !6
  %.not.i.i20 = icmp eq i8 %.sroa.0.0.val.i, 0
  %i.ac = icmp ne i8 %.val.i19, 0
  %i.ad = and i1 %.not.i.i20, %i.ac               ; 3 uses
  %i.ae = xor i1 %i.ad, true
  %.sroa.05.0.i = select i1 %i.ad, ptr %.sroa.0.02.i, ptr %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.05.0.i, i64 40, i1 false), !noalias !749
  %i.af = zext i1 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.af ; 3 uses
  %i.ah = zext i1 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.02.i, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.ak = icmp ne ptr %i.ag, %i.h
  %i.al = icmp ne ptr %i.ai, %i.f
  %or.cond.i21 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i21, label %.lr.ph.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keybNCINvMB1d_INtB1d_10NameServerB2f_E3newATNtNtB2l_4xfer8ProtocolINtNtB5g_12dns_exchange11DnsExchangeB2f_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keybNCINvMB1d_INtB1d_10NameServerB2f_E3newATNtNtB2l_4xfer8ProtocolINtNtB5g_12dns_exchange11DnsExchangeB2f_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.t, %.preheader ], [ %i.aj, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.v, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %i.am = ptrtoint ptr %.sroa.7.0 to i64
  %i.an = ptrtoint ptr %.sroa.0.0 to i64
  %i.ao = sub nuw i64 %i.am, %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.ao, i1 false), !noalias !750
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keybNCINvMB1d_INtB1d_10NameServerB2f_E3newATNtNtB2l_4xfer8ProtocolINtNtB5g_12dns_exchange11DnsExchangeB2f_EEj0_Es_0E0ECsi17nFaBu4HY_10ech_client.exit
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort8heapsortTyjENvYB15_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 33, 576460752303423488) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit
  %.sroa.2.04 = phi i64 [ %i.b, %bb.a ], [ %i.c, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit ]
  %i.c = add nsw i64 %.sroa.2.04, -1              ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = sub nuw i64 %i.c, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE14swap_uncheckedCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.d, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 %1, i64 range(i64 0, -1) %i.c) ; 4 uses
  %i.e = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.g, %..i
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.h = phi i64 [ %i.ac, %bb.i ], [ %i.g, %bb.f ] ; 3 uses
  %i.i = phi i64 [ %i.ab, %bb.i ], [ %i.f, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0, %bb.f ]
  %i.j = add nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j ; 2 uses
  %.val = load i64, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val11 = load i64, ptr %i.n, align 8
  %.val12 = load i64, ptr %i.m, align 8, !noundef !6 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val13 = load i64, ptr %i.o, align 8
  %i.p = icmp eq i64 %.val, %.val12
  %i.q = icmp ult i64 %.val, %.val12
  %i.r = icmp ult i64 %.val11, %.val13
  %.sroa.0.0.i.i = select i1 %i.p, i1 %i.r, i1 %i.q
  %i.s = zext i1 %.sroa.0.0.i.i to i64
  %i.t = add nuw nsw i64 %i.h, %i.s
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %bb.g ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %.val14 = load i64, ptr %i.u, align 8, !noundef !6 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val15 = load i64, ptr %i.w, align 8
  %.val16 = load i64, ptr %i.v, align 8, !noundef !6 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val17 = load i64, ptr %i.x, align 8
  %i.y = icmp eq i64 %.val14, %.val16
  %i.z = icmp ult i64 %.val14, %.val16
  %i.aa = icmp ult i64 %.val15, %.val17
  %.sroa.0.0.i.i18 = select i1 %i.y, i1 %i.aa, i1 %i.z
  br i1 %.sroa.0.0.i.i18, label %bb.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, i64 noundef 2)
  %i.ab = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ac, %..i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.h, %bb.i, %bb.f
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTyjENvYB17_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %._crit_edge134, label %.lr.ph133

bb.b:                                             ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %._crit_edge134, label %.lr.ph133

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTyjENvYB1f_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull %4)
  br label %bb.f

._crit_edge134:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.088.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.087.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort8heapsortTyjENvYB15_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %.sroa.0.088.lcssa, i64 noundef %.sroa.15.087.lcssa) #30
  br label %bb.f

.lr.ph133:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.085132 = phi i32 [ %i.f, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.086131 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 4 uses
  %.sroa.15.087130 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 13 uses
  %.sroa.0.088129 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 25 uses
  %i.f = add nsw i32 %.sroa.026.085132, -1        ; 3 uses
  %i.g = lshr i64 %.sroa.15.087130, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 6
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.088129, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 112
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.088129, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.15.087130, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph133
  %i.k = tail call noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recTyjENvYB14_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client(ptr noundef nonnull readonly align 8 %.sroa.0.088129, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull %4)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTyjENvYB15_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit

bb.d:                                             ; preds = %.lr.ph133
  %.val10.i = load i64, ptr %.sroa.0.088129, align 8, !alias.scope !776, !noalias !777, !noundef !6 ; 4 uses
  %i.l = getelementptr i8, ptr %.sroa.0.088129, i64 8
  %.val11.i = load i64, ptr %i.l, align 8, !alias.scope !776, !noalias !777 ; 2 uses
  %.val12.i = load i64, ptr %i.h, align 8, !alias.scope !776, !noalias !777, !noundef !6 ; 4 uses
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %.val13.i = load i64, ptr %i.m, align 8, !alias.scope !776, !noalias !777 ; 2 uses
  %i.n = icmp eq i64 %.val10.i, %.val12.i
  %i.o = icmp ult i64 %.val10.i, %.val12.i
  %i.p = icmp ult i64 %.val11.i, %.val13.i
  %.sroa.0.0.i.i.i = select i1 %i.n, i1 %i.p, i1 %i.o ; 2 uses
  %.val8.i = load i64, ptr %i.i, align 8, !alias.scope !776, !noalias !777, !noundef !6 ; 4 uses
  %i.q = getelementptr i8, ptr %i.i, i64 8
  %.val9.i = load i64, ptr %i.q, align 8, !alias.scope !776, !noalias !777 ; 2 uses
  %i.r = icmp eq i64 %.val10.i, %.val8.i
  %i.s = icmp ult i64 %.val10.i, %.val8.i
  %i.t = icmp ult i64 %.val11.i, %.val9.i
  %.sroa.0.0.i.i14.i = select i1 %i.r, i1 %i.t, i1 %i.s
  %i.u = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i14.i
  br i1 %i.u, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTyjENvYB15_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %.val12.i, %.val8.i
  %i.w = icmp ult i64 %.val12.i, %.val8.i
  %i.x = icmp ult i64 %.val13.i, %.val9.i
  %.sroa.0.0.i.i15.i = select i1 %i.v, i1 %i.x, i1 %i.w
  %i.y = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i15.i
  %..i.i = select i1 %i.y, ptr %i.i, ptr %i.h
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTyjENvYB15_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTyjENvYB15_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.0.088129, %bb.d ], [ %..i.i, %bb.e ]
  %i.z = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.aa = ptrtoint ptr %.sroa.0.088129 to i64
  %i.ab = sub nuw i64 %i.z, %i.aa                 ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.ab, 4          ; 3 uses
  %i.ac = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.087130
  tail call void @llvm.assume(i1 %i.ac)
  %.not = icmp eq ptr %.sroa.023.086131, null
  br i1 %.not, label %bb.g, label %bb.i

bb.f:                                             ; preds = %._crit_edge134, %._crit_edge
  ret void

bb.g:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTyjENvYB15_NtNtBa_3cmp10PartialOrd2ltECsi17nFaBu4HY_10ech_client.exit, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTyjE14swap_uncheckedCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %.sroa.0.088129, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.087130, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.088129, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !781
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !782, !noalias !780
  store <2 x i64> %i.ae, ptr %i.b, align 16, !noalias !781
  %i.af = getelementptr [16 x i8], ptr %.sroa.0.088129, i64 %.sroa.15.087130 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -16    ; 2 uses
  %.sroa.13.039.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.088129, i64 32 ; 3 uses
  %i.ah = icmp ult ptr %.sroa.13.039.i.i, %i.ag
  %.val2.i.pre.i.i = load i64, ptr %.sroa.0.088129, align 8, !alias.scope !783, !noalias !779 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.088129, i64 8
  %.val3.i14.i.i = load i64, ptr %i.ai, align 8, !alias.scope !783, !noalias !779 ; 3 uses
  br i1 %i.ah, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.g ], [ %i.be, %.lr.ph.i.i ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.039.i.i, %bb.g ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ]
  %.sroa.021.1.i.i.ph = phi ptr [ %i.ad, %bb.g ], [ %i.ax, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.ap, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep32.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.021.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.021.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.aj = icmp eq ptr %.sroa.13.1.i.i, %i.af      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.aj, ptr %i.b, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i = load i64, ptr %.sroa.01.0.i.i, align 8, !noalias !784, !noundef !6 ; 2 uses
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v = select i1 %i.aj, ptr %i.b, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v, i64 8
  %.val1.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel, align 8, !noalias !784
  %i.ak = icmp eq i64 %.val.i.i.i, %.val2.i.pre.i.i
  %i.al = icmp ult i64 %.val.i.i.i, %.val2.i.pre.i.i
  %i.am = icmp ult i64 %.val1.i.i.i, %.val3.i14.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ak, i1 %i.am, i1 %i.al
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.021.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !782, !noalias !784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !784
end_hunk_0
