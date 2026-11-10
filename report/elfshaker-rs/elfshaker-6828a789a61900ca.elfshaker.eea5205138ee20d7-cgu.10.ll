Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.10?download=true
inline.NumInlined: 384
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker:bb.a
  %spec.select.i.i.i.i.i = select i1 %i.k, i64 %i.l, i64 %i.j
  %i.m = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.m, label %.preheader.preheader, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB18_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.n = ptrtoint ptr %.val10.i to i64
  store i64 %i.n, ptr %.sroa.0.05, align 8
  %i.o = icmp eq ptr %i.d, %0
  br i1 %i.o, label %._crit_edge10, label %.lr.ph9.preheader

.lr.ph9.preheader:                                ; preds = %.preheader.preheader
  %.val.i.i11.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %.val1.i.i12.i = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  br label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  %i.p = ptrtoint ptr %.val8.i to i64
  store i64 %i.p, ptr %.sroa.0.0.i8, align 8
  %i.q = icmp eq ptr %i.r, %0
  br i1 %i.q, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.lr.ph9.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.r, %.preheader ], [ %i.d, %.lr.ph9.preheader ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -8 ; 3 uses
  %.val8.i = load ptr, ptr %i.r, align 8, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.s = getelementptr i8, ptr %.val8.i, i64 8
  %.val2.i.i13.i = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr i8, ptr %.val8.i, i64 16
  %.val3.i.i14.i = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i12.i, i64 %.val3.i.i14.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i11.i, ptr nonnull readonly %.val2.i.i13.i, i64 %spec.store.select.i.i.i.i15.i), !alias.scope !692 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val1.i.i12.i, %.val3.i.i14.i
  %spec.select.i.i.i.i16.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp slt i64 %spec.select.i.i.i.i16.i, 0
  br i1 %i.y, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  %i.z = ptrtoint ptr %.val9.i to i64
  store i64 %i.z, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !693
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB18_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB18_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB1m_NtNtBa_3cmp10PartialOrd2ltEB27_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.b, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1T_.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1T_.exit
  %.sroa.0.06 = phi ptr [ %i.d, %.lr.ph ], [ %i.ad, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1T_.exit ] ; 9 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -48 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.h = call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtCsaL1QbXo9JQH_3std4time10SystemTimeBO_NvMB2_NtB2_8Ordering5is_ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.06, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g) ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.h, 2
  br i1 %.not.i.i.i.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i.i

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 16
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -32
  %i.k = call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j) ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.k, 2
  br i1 %.not.i.i.i, label %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i.i

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i.i: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i.i, %bb.d
  %.sroa.0.0.i5.i.i.i = phi i8 [ %i.k, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i.i ], [ %i.h, %bb.d ]
  %i.l = trunc nuw i8 %.sroa.0.0.i5.i.i.i to i1
  br i1 %i.l, label %bb.e, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1T_.exit

_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit.i: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 40
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -8
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.o = load i64, ptr %i.m, align 8, !alias.scope !723, !noundef !4
  %i.p = load i64, ptr %i.n, align 8, !alias.scope !724, !noundef !4
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1T_.exit

bb.e:                                             ; preds = %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit.i, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.06, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.06, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.r = icmp eq ptr %i.g, %0
  br i1 %i.r, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.s = load i64, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.06.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.t, %.backedge.i ] ; 7 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -48 ; 4 uses
  %i.u = invoke noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtCsaL1QbXo9JQH_3std4time10SystemTimeBO_NvMB2_NtB2_8Ordering5is_ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t)
          to label %.noexc.i unwind label %bb.g   ; 2 uses

.noexc.i:                                         ; preds = %bb.f
  %.not.i.i.i8.i = icmp eq i8 %i.u, 2
  br i1 %.not.i.i.i8.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i12.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9.i

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i12.i: ; preds = %.noexc.i
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -32
  %i.w = invoke noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %.noexc14.i unwind label %bb.g ; 2 uses

.noexc14.i:                                       ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i12.i
  %.not.i.i13.i = icmp eq i8 %i.w, 2
  br i1 %.not.i.i13.i, label %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit15.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9.i

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9.i: ; preds = %.noexc14.i, %.noexc.i
  %.sroa.0.0.i5.i.i10.i = phi i8 [ %i.w, %.noexc14.i ], [ %i.u, %.noexc.i ]
  %i.x = trunc nuw i8 %.sroa.0.0.i5.i.i10.i to i1
  br i1 %i.x, label %.backedge.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9._crit_edge.i

_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit15.i: ; preds = %.noexc14.i
  %i.y = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !725, !noundef !4
  %i.aa = icmp ult i64 %i.s, %i.z
  br i1 %i.aa, label %.backedge.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9._crit_edge.i

.backedge.i:                                      ; preds = %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit15.i, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.06.i, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  %i.ab = icmp eq ptr %i.t, %0
  br i1 %i.ab, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9._crit_edge.i, label %bb.f

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9._crit_edge.i: ; preds = %.backedge.i, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit15.i, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9.i, %bb.e
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.e ], [ %0, %.backedge.i ], [ %.sroa.0.06.i, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit15.i ], [ %.sroa.0.06.i, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1T_.exit

bb.g:                                             ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i12.i, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.06.i, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !727
  resume { ptr, i32 } %i.ac

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1T_.exit: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i.i, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit.i, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i9._crit_edge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.c
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2n_11collections5btree3mapINtB3a_8BTreeMapmB1o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB2n_3vec9into_iter8IntoIterB1o_EENCINvXsf_B1q_NtB1q_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7W_10ReadReaderINtNtNtNtB2n_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7Y_6config13DefaultConfigEE0EE0E0EB1s_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [20 x i8], align 4          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %.val9.i = load i32, ptr %.sroa.0.05, align 4, !noundef !4 ; 3 uses
  %.val10.i = load i32, ptr %i.d, align 4, !noundef !4
  %i.e = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.48.0..sroa_idx.i, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -24 ; 4 uses
  %.val8.i = load i32, ptr %i.h, align 4, !noundef !4
  %i.i = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !732
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, i64 20, i1 false), !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2n_11collections5btree3mapINtB3a_8BTreeMapmB1o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtB57_9enumerate9EnumerateINtNtNtB2n_3vec9into_iter8IntoIterB1o_EENCINvXsf_B1q_NtB1q_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7W_10ReadReaderINtNtNtNtB2n_2io8buffered9bufreader9BufReaderRShEENtNtB7Y_6config13DefaultConfigEE0EE0E0EB1s_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [20 x i8], align 4          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %.val9.i = load i32, ptr %.sroa.0.05, align 4, !noundef !4 ; 3 uses
  %.val10.i = load i32, ptr %i.d, align 4, !noundef !4
  %i.e = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.48.0..sroa_idx.i, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -24 ; 4 uses
  %.val8.i = load i32, ptr %i.h, align 4, !noundef !4
  %i.i = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !737
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, i64 20, i1 false), !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTymENvYB1m_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTymENvYB18_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTymENvYB18_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit
  %.sroa.0.05 = phi ptr [ %i.q, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTymENvYB18_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit ], [ %i.c, %.lr.ph.preheader ] ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.val11.i = load i64, ptr %.sroa.0.05, align 8, !noundef !4 ; 5 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 8
  %.val12.i = load i32, ptr %i.e, align 8         ; 3 uses
  %.val13.i = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -8
  %.val14.i = load i32, ptr %i.f, align 8
  %i.g = icmp eq i64 %.val11.i, %.val13.i
  %i.h = icmp ult i64 %.val11.i, %.val13.i
  %i.i = icmp ult i32 %.val12.i, %.val14.i
  %.sroa.0.0.i.i.i = select i1 %i.g, i1 %i.i, i1 %i.h
  br i1 %.sroa.0.0.i.i.i, label %.preheader.preheader, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTymENvYB18_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit

.preheader.preheader:                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.j = icmp eq ptr %i.d, %0
  br i1 %i.j, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.k = icmp eq ptr %i.l, %0
  br i1 %i.k, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.l, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -16 ; 4 uses
  %.val9.i = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.0.0.i8, i64 -8
  %.val10.i = load i32, ptr %i.m, align 8
  %i.n = icmp eq i64 %.val11.i, %.val9.i
  %i.o = icmp ult i64 %.val11.i, %.val9.i
  %i.p = icmp ult i32 %.val12.i, %.val10.i
  %.sroa.0.0.i.i15.i = select i1 %i.n, i1 %i.p, i1 %i.o
  br i1 %.sroa.0.0.i.i15.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ] ; 2 uses
  store i64 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !742
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i32 %.val12.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !742
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTymENvYB18_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTymENvYB18_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvMsd_B1u_NtB1u_9PackIndex25compute_snapshot_checksum0E0EB1w_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 230584300921369396) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i = alloca [16 x i8], align 8          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCNvMsd_B1i_NtB1i_9PackIndex25compute_snapshot_checksum0E0EB1k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvMsd_B1b_NtB1b_9PackIndex25compute_snapshot_checksum0E0EB1d_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvMsd_B1b_NtB1b_9PackIndex25compute_snapshot_checksum0E0EB1d_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvMsd_B1a_NtB1a_9PackIndex25compute_snapshot_checksum0E0EB1c_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [40 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvMsd_B1a_NtB1a_9PackIndex25compute_snapshot_checksum0E0EB1c_.exit.1
  %.sroa.05.040.1 = phi i64 [ %i.ba, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvMsd_B1a_NtB1a_9PackIndex25compute_snapshot_checksum0E0EB1c_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %.sroa.05.040.1 ; 2 uses
  %.idx72 = mul nuw nsw i64 %.sroa.05.040.1, 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx72 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -40 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !797, !nonnull !4, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !798, !nonnull !4, !noundef !4
  %i.t = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(20) %i.q, ptr noundef nonnull dereferenceable(20) %i.s, i64 20), !noalias !799 ; 2 uses
  %i.u = load ptr, ptr %i.n, align 8, !alias.scope !797, !nonnull !4, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !797, !noundef !4 ; 5 uses
  %i.x = load ptr, ptr %i.o, align 8, !alias.scope !798, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 -32
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !798, !noundef !4 ; 2 uses
  %spec.store.select1.i.i.i30.1 = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.z)
  %i.aa = tail call i32 @memcmp(ptr nonnull %i.u, ptr nonnull %i.x, i64 %spec.store.select1.i.i.i30.1), !noalias !799 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %i.w, %i.z
  %.sroa.011.0.i.i.i31.1 = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp eq i32 %i.t, 0
  %i.af = icmp slt i64 %.sroa.011.0.i.i.i31.1, 0
  %i.ag = icmp slt i32 %i.t, 0
  %i.ah = select i1 %i.ae, i1 %i.af, i1 %i.ag
  br i1 %i.ah, label %bb.h, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvMsd_B1a_NtB1a_9PackIndex25compute_snapshot_checksum0E0EB1c_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  %i.aj = icmp eq i64 %.sroa.05.040.1, 1
  br i1 %i.aj, label %._crit_edge68, label %.lr.ph67

bb.i:                                             ; preds = %.lr.ph67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i32.165, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false)
  %i.ak = icmp eq ptr %i.al, %i.k
  br i1 %i.ak, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i32.165 = phi ptr [ %i.al, %bb.i ], [ %i.o, %bb.h ] ; 5 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.i32.165, i64 -40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.i32.165, i64 -24
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !802, !nonnull !4, !noundef !4
  %i.ao = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(20) %i.q, ptr noundef nonnull dereferenceable(20) %i.an, i64 20), !noalias !803 ; 2 uses
  %i.ap = load ptr, ptr %i.al, align 8, !alias.scope !802, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.i32.165, i64 -32
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !802, !noundef !4 ; 2 uses
  %spec.store.select1.i.i8.i.1 = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.ar)
  %i.as = tail call i32 @memcmp(ptr nonnull %i.u, ptr nonnull %i.ap, i64 %spec.store.select1.i.i8.i.1), !noalias !803 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %i.w, %i.ar
  %.sroa.011.0.i.i9.i.1 = select i1 %i.au, i64 %i.av, i64 %i.at
  %i.aw = icmp eq i32 %i.ao, 0
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB1s_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker:bb.a
  store i64 %i.bo, ptr %i.bc, align 8
  %i.bp = icmp eq i64 %.sroa.05.034, 1
  br i1 %i.bp, label %._crit_edge, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %.preheader.preheader
  %.val.i.i11.i = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4
  %.val1.i.i12.i = load i64, ptr %i.bg, align 8, !noundef !4 ; 2 uses
  br label %.lr.ph42

.preheader:                                       ; preds = %.lr.ph42
  %i.bq = ptrtoint ptr %.val8.i to i64
  store i64 %i.bq, ptr %.sroa.0.0.i3041, align 8
  %i.br = icmp eq ptr %i.bs, %2
  br i1 %i.br, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %.preheader
  %.sroa.0.0.i3041 = phi ptr [ %i.bs, %.preheader ], [ %i.be, %.lr.ph42.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.i3041, i64 -8 ; 3 uses
  %.val8.i = load ptr, ptr %i.bs, align 8, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.bt = getelementptr i8, ptr %.val8.i, i64 8
  %.val2.i.i13.i = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4
  %i.bu = getelementptr i8, ptr %.val8.i, i64 16
  %.val3.i.i14.i = load i64, ptr %i.bu, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i12.i, i64 %.val3.i.i14.i)
  %i.bv = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i11.i, ptr nonnull readonly %.val2.i.i13.i, i64 %spec.store.select.i.i.i.i15.i), !alias.scope !907 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp eq i32 %i.bv, 0
  %i.by = sub i64 %.val1.i.i12.i, %.val3.i.i14.i
  %spec.select.i.i.i.i16.i = select i1 %i.bx, i64 %i.by, i64 %i.bw
  %i.bz = icmp slt i64 %spec.select.i.i.i.i16.i, 0
  br i1 %i.bz, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.lr.ph42, %.preheader.preheader
  %.sroa.0.0.i30.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i3041, %.lr.ph42 ]
  store i64 %i.bd, ptr %.sroa.0.0.i30.lcssa, align 8, !noalias !908
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB18_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB18_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit: ; preds = %._crit_edge, %.lr.ph
  %i.ca = add nuw nsw i64 %.sroa.05.034, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2t_11collections5btree3mapINtB3g_8BTreeMapmB1u_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtB5d_9enumerate9EnumerateINtNtNtB2t_3vec9into_iter8IntoIterB1u_EENCINvXsf_B1w_NtB1w_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB82_10ReadReaderINtNtNtNtB2t_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB84_6config13DefaultConfigEE0EE0E0EB1y_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [20 x i8], align 4          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2h_11collections5btree3mapINtB34_8BTreeMapmB1i_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB44_8adapters3map3MapINtNtB51_9enumerate9EnumerateINtNtNtB2h_3vec9into_iter8IntoIterB1i_EENCINvXsf_B1k_NtB1k_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7Q_10ReadReaderINtNtNtNtB2h_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7S_6config13DefaultConfigEE0EE0E0EB1m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 10 uses
  %i.e = icmp samesign ugt i64 %1, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8.i = load i32, ptr %i.f, align 8, !noundef !4
  %.val9.i = load i32, ptr %0, align 8, !noundef !4
  %i.g = icmp ult i32 %.val8.i, %.val9.i          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6.i = load i32, ptr %i.h, align 8, !noundef !4
  %.val7.i = load i32, ptr %i.i, align 8, !noundef !4
  %i.j = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %i.k = zext i1 %i.g to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.k ; 3 uses
  %i.m = xor i1 %i.g, true
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.n ; 4 uses
  %i.p = select i1 %i.j, i64 3, i64 2
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.p ; 4 uses
  %i.r = select i1 %i.j, i64 2, i64 3
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.r ; 3 uses
  %.val4.i = load i32, ptr %i.q, align 8, !noundef !4
  %.val5.i = load i32, ptr %i.l, align 8, !noundef !4
  %i.t = icmp ult i32 %.val4.i, %.val5.i          ; 3 uses
  %.val2.i = load i32, ptr %i.s, align 8, !noundef !4
  %.val3.i = load i32, ptr %i.o, align 8, !noundef !4
  %i.u = icmp ult i32 %.val2.i, %.val3.i          ; 3 uses
  %i.v = select i1 %i.t, ptr %i.q, ptr %i.l, !unpredictable !4
  %i.w = select i1 %i.u, ptr %i.o, ptr %i.s, !unpredictable !4
  %i.x = select i1 %i.u, ptr %i.q, ptr %i.o, !unpredictable !4
  %i.y = select i1 %i.t, ptr %i.l, ptr %i.x, !unpredictable !4 ; 3 uses
  %i.z = select i1 %i.t, ptr %i.o, ptr %i.q, !unpredictable !4
  %i.aa = select i1 %i.u, ptr %i.s, ptr %i.z, !unpredictable !4 ; 3 uses
  %.val.i = load i32, ptr %i.aa, align 8, !noundef !4
  %.val1.i = load i32, ptr %i.y, align 8, !noundef !4
  %i.ab = icmp ult i32 %.val.i, %.val1.i          ; 2 uses
  %i.ac = select i1 %i.ab, ptr %i.aa, ptr %i.y, !unpredictable !4
  %i.ad = select i1 %i.ab, ptr %i.y, ptr %i.aa, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.val8.i30 = load i32, ptr %i.aj, align 8, !noundef !4
  %.val9.i31 = load i32, ptr %i.ah, align 8, !noundef !4
  %i.ak = icmp ult i32 %.val8.i30, %.val9.i31     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.val6.i32 = load i32, ptr %i.al, align 8, !noundef !4
  %.val7.i33 = load i32, ptr %i.am, align 8, !noundef !4
  %i.an = icmp ult i32 %.val6.i32, %.val7.i33     ; 2 uses
  %i.ao = zext i1 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ao ; 3 uses
  %i.aq = xor i1 %i.ak, true
  %i.ar = zext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ar ; 4 uses
  %i.at = select i1 %i.an, i64 3, i64 2
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.at ; 4 uses
  %i.av = select i1 %i.an, i64 2, i64 3
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.av ; 3 uses
  %.val4.i34 = load i32, ptr %i.au, align 8, !noundef !4
  %.val5.i35 = load i32, ptr %i.ap, align 8, !noundef !4
  %i.ax = icmp ult i32 %.val4.i34, %.val5.i35     ; 3 uses
  %.val2.i36 = load i32, ptr %i.aw, align 8, !noundef !4
  %.val3.i37 = load i32, ptr %i.as, align 8, !noundef !4
  %i.ay = icmp ult i32 %.val2.i36, %.val3.i37     ; 3 uses
  %i.az = select i1 %i.ax, ptr %i.au, ptr %i.ap, !unpredictable !4
  %i.ba = select i1 %i.ay, ptr %i.as, ptr %i.aw, !unpredictable !4
  %i.bb = select i1 %i.ay, ptr %i.au, ptr %i.as, !unpredictable !4
  %i.bc = select i1 %i.ax, ptr %i.ap, ptr %i.bb, !unpredictable !4 ; 3 uses
  %i.bd = select i1 %i.ax, ptr %i.as, ptr %i.au, !unpredictable !4
  %i.be = select i1 %i.ay, ptr %i.aw, ptr %i.bd, !unpredictable !4 ; 3 uses
  %.val.i38 = load i32, ptr %i.be, align 8, !noundef !4
  %.val1.i39 = load i32, ptr %i.bc, align 8, !noundef !4
  %i.bf = icmp ult i32 %.val.i38, %.val1.i39      ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.be, ptr %i.bc, !unpredictable !4
  %i.bh = select i1 %i.bf, ptr %i.bc, ptr %i.be, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.bn = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bo = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.bo, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit, %bb.g
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.bq = getelementptr [24 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.br = icmp samesign ult i64 %.sroa.0.0, %i.bn
  br i1 %i.br, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1
  %.sroa.05.050.1 = phi i64 [ %i.cb, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.sroa.05.050.1 ; 2 uses
  %.idx82 = mul nuw nsw i64 %.sroa.05.050.1, 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx82 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -24 ; 3 uses
  %.val9.i40.1 = load i32, ptr %i.bt, align 8, !noundef !4 ; 3 uses
  %.val10.i.1 = load i32, ptr %i.bu, align 8, !noundef !4
  %i.bv = icmp ult i32 %.val9.i40.1, %.val10.i.1
  br i1 %i.bv, label %bb.h, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(20) %i.bw, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %i.bx = icmp eq i64 %.sroa.05.050.1, 1
  br i1 %i.bx, label %._crit_edge78, label %.lr.ph77

bb.i:                                             ; preds = %.lr.ph77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.175, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false)
  %i.by = icmp eq ptr %i.bz, %i.bq
  br i1 %i.by, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i41.175 = phi ptr [ %i.bz, %bb.i ], [ %i.bu, %bb.h ] ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.0.i41.175, i64 -24 ; 4 uses
  %.val8.i42.1 = load i32, ptr %i.bz, align 4, !noundef !4
  %i.ca = icmp ult i32 %.val9.i40.1, %.val8.i42.1
  br i1 %i.ca, label %bb.i, label %._crit_edge78

._crit_edge78:                                    ; preds = %bb.i, %.lr.ph77, %bb.h
  %.sroa.0.0.i41.lcssa.1 = phi ptr [ %i.bq, %bb.h ], [ %i.bq, %bb.i ], [ %.sroa.0.0.i41.175, %.lr.ph77 ] ; 2 uses
  store i32 %.val9.i40.1, ptr %.sroa.0.0.i41.lcssa.1, align 8, !noalias !926
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, i64 20, i1 false), !noalias !926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1: ; preds = %._crit_edge78, %.lr.ph.1
  %i.cb = add nuw nsw i64 %.sroa.05.050.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cb, %i.bn
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1, %.loopexit
  %i.cc = add nsw i64 %1, -1                      ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.bq, i64 -24
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.cg = getelementptr i8, ptr %i.cv, i64 24     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cu, i64 24
  %i.ci = and i64 %1, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.cr, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.co, %.lr.ph.i ], [ %i.bq, %.loopexit.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.cv, %.lr.ph.i ], [ %i.cf, %.loopexit.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.ce, %.loopexit.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %i.cd, %.loopexit.1 ] ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load i32, ptr %.sroa.011.07.i, align 4, !alias.scope !927, !noundef !4
  %.sroa.06.0.val.i = load i32, ptr %.sroa.06.08.i, align 4, !alias.scope !927, !noundef !4
  %i.cl = icmp ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.cl, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.cm = xor i1 %i.cl, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(24) %..i21.i, i64 24, i1 false), !noalias !928
  %i.cn = zext i1 %i.cl to i64
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.07.i, i64 %i.cn ; 4 uses
  %i.cp = zext i1 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.08.i, i64 %i.cp ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 24 ; 2 uses
  %.sroa.017.0.val.i = load i32, ptr %.sroa.017.05.i, align 4, !alias.scope !927, !noundef !4
  %.sroa.015.0.val.i = load i32, ptr %.sroa.015.06.i, align 4, !alias.scope !927, !noundef !4
  %i.cs = icmp ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.cs, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.ct = xor i1 %i.cs, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !noalias !929
  %.neg.i.i = sext i1 %i.ct to i64
  %i.cu = getelementptr [24 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.cs to i64
  %i.cv = getelementptr [24 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -24
  %exitcond.not.i = icmp eq i64 %i.ck, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.cx = icmp ult ptr %i.cq, %i.cg               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.cx, ptr %i.cq, ptr %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i, i64 24, i1 false)
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cy
  %i.da = xor i1 %i.cx, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.db
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.co, %._crit_edge.i ], [ %i.dc, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.cq, %._crit_edge.i ], [ %i.cz, %bb.j ]
  %i.dd = icmp ne ptr %.sroa.06.1.i, %i.cg
  %i.de = icmp ne ptr %.sroa.011.1.i, %i.ch
  %or.cond.i = select i1 %i.dd, i1 true, i1 %i.de, !prof !10
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2h_11collections5btree3mapINtB34_8BTreeMapmB1i_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB44_8adapters3map3MapINtNtB51_9enumerate9EnumerateINtNtNtB2h_3vec9into_iter8IntoIterB1i_EENCINvXsf_B1k_NtB1k_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7Q_10ReadReaderINtNtNtNtB2h_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7S_6config13DefaultConfigEE0EE0E0EB1m_.exit, !prof !10

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #26
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = mul nuw nsw i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dg, i1 false), !noalias !930
  resume { ptr, i32 } %i.df

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2h_11collections5btree3mapINtB34_8BTreeMapmB1i_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB44_8adapters3map3MapINtNtB51_9enumerate9EnumerateINtNtNtB2h_3vec9into_iter8IntoIterB1i_EENCINvXsf_B1k_NtB1k_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7Q_10ReadReaderINtNtNtNtB2h_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7S_6config13DefaultConfigEE0EE0E0EB1m_.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit
  %.sroa.05.050 = phi i64 [ %i.dq, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.050 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.050, 24
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false)
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -24 ; 3 uses
  %.val9.i40 = load i32, ptr %i.di, align 8, !noundef !4 ; 3 uses
  %.val10.i = load i32, ptr %i.dj, align 8, !noundef !4
  %i.dk = icmp ult i32 %.val9.i40, %.val10.i
  br i1 %i.dk, label %bb.n, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(20) %i.dl, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  %i.dm = icmp eq i64 %.sroa.05.050, 1
  br i1 %i.dm, label %._crit_edge, label %.lr.ph72

bb.o:                                             ; preds = %.lr.ph72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i4171, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %i.dn = icmp eq ptr %i.do, %2
  br i1 %i.dn, label %._crit_edge, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.n, %bb.o
  %.sroa.0.0.i4171 = phi ptr [ %i.do, %bb.o ], [ %i.dj, %bb.n ] ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.0.i4171, i64 -24 ; 4 uses
  %.val8.i42 = load i32, ptr %i.do, align 4, !noundef !4
  %i.dp = icmp ult i32 %.val9.i40, %.val8.i42
  br i1 %i.dp, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph72, %bb.n
  %.sroa.0.0.i41.lcssa = phi ptr [ %2, %bb.n ], [ %2, %bb.o ], [ %.sroa.0.0.i4171, %.lr.ph72 ] ; 2 uses
  store i32 %.val9.i40, ptr %.sroa.0.0.i41.lcssa, align 8, !noalias !926
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, i64 20, i1 false), !noalias !926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.dq = add nuw nsw i64 %.sroa.05.050, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2t_11collections5btree3mapINtB3g_8BTreeMapmB1u_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtB5d_9enumerate9EnumerateINtNtNtB2t_3vec9into_iter8IntoIterB1u_EENCINvXsf_B1w_NtB1w_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB82_10ReadReaderINtNtNtNtB2t_2io8buffered9bufreader9BufReaderRShEENtNtB84_6config13DefaultConfigEE0EE0E0EB1y_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [20 x i8], align 4          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2h_11collections5btree3mapINtB34_8BTreeMapmB1i_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB44_8adapters3map3MapINtNtB51_9enumerate9EnumerateINtNtNtB2h_3vec9into_iter8IntoIterB1i_EENCINvXsf_B1k_NtB1k_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7Q_10ReadReaderINtNtNtNtB2h_2io8buffered9bufreader9BufReaderRShEENtNtB7S_6config13DefaultConfigEE0EE0E0EB1m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 10 uses
  %i.e = icmp samesign ugt i64 %1, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8.i = load i32, ptr %i.f, align 8, !noundef !4
  %.val9.i = load i32, ptr %0, align 8, !noundef !4
  %i.g = icmp ult i32 %.val8.i, %.val9.i          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6.i = load i32, ptr %i.h, align 8, !noundef !4
  %.val7.i = load i32, ptr %i.i, align 8, !noundef !4
  %i.j = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %i.k = zext i1 %i.g to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.k ; 3 uses
  %i.m = xor i1 %i.g, true
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.n ; 4 uses
  %i.p = select i1 %i.j, i64 3, i64 2
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.p ; 4 uses
  %i.r = select i1 %i.j, i64 2, i64 3
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.r ; 3 uses
  %.val4.i = load i32, ptr %i.q, align 8, !noundef !4
  %.val5.i = load i32, ptr %i.l, align 8, !noundef !4
  %i.t = icmp ult i32 %.val4.i, %.val5.i          ; 3 uses
  %.val2.i = load i32, ptr %i.s, align 8, !noundef !4
  %.val3.i = load i32, ptr %i.o, align 8, !noundef !4
  %i.u = icmp ult i32 %.val2.i, %.val3.i          ; 3 uses
  %i.v = select i1 %i.t, ptr %i.q, ptr %i.l, !unpredictable !4
  %i.w = select i1 %i.u, ptr %i.o, ptr %i.s, !unpredictable !4
  %i.x = select i1 %i.u, ptr %i.q, ptr %i.o, !unpredictable !4
  %i.y = select i1 %i.t, ptr %i.l, ptr %i.x, !unpredictable !4 ; 3 uses
  %i.z = select i1 %i.t, ptr %i.o, ptr %i.q, !unpredictable !4
  %i.aa = select i1 %i.u, ptr %i.s, ptr %i.z, !unpredictable !4 ; 3 uses
  %.val.i = load i32, ptr %i.aa, align 8, !noundef !4
  %.val1.i = load i32, ptr %i.y, align 8, !noundef !4
  %i.ab = icmp ult i32 %.val.i, %.val1.i          ; 2 uses
  %i.ac = select i1 %i.ab, ptr %i.aa, ptr %i.y, !unpredictable !4
  %i.ad = select i1 %i.ab, ptr %i.y, ptr %i.aa, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.val8.i30 = load i32, ptr %i.aj, align 8, !noundef !4
  %.val9.i31 = load i32, ptr %i.ah, align 8, !noundef !4
  %i.ak = icmp ult i32 %.val8.i30, %.val9.i31     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.val6.i32 = load i32, ptr %i.al, align 8, !noundef !4
  %.val7.i33 = load i32, ptr %i.am, align 8, !noundef !4
  %i.an = icmp ult i32 %.val6.i32, %.val7.i33     ; 2 uses
  %i.ao = zext i1 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ao ; 3 uses
  %i.aq = xor i1 %i.ak, true
  %i.ar = zext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ar ; 4 uses
  %i.at = select i1 %i.an, i64 3, i64 2
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.at ; 4 uses
  %i.av = select i1 %i.an, i64 2, i64 3
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.av ; 3 uses
  %.val4.i34 = load i32, ptr %i.au, align 8, !noundef !4
  %.val5.i35 = load i32, ptr %i.ap, align 8, !noundef !4
  %i.ax = icmp ult i32 %.val4.i34, %.val5.i35     ; 3 uses
  %.val2.i36 = load i32, ptr %i.aw, align 8, !noundef !4
  %.val3.i37 = load i32, ptr %i.as, align 8, !noundef !4
  %i.ay = icmp ult i32 %.val2.i36, %.val3.i37     ; 3 uses
  %i.az = select i1 %i.ax, ptr %i.au, ptr %i.ap, !unpredictable !4
  %i.ba = select i1 %i.ay, ptr %i.as, ptr %i.aw, !unpredictable !4
  %i.bb = select i1 %i.ay, ptr %i.au, ptr %i.as, !unpredictable !4
  %i.bc = select i1 %i.ax, ptr %i.ap, ptr %i.bb, !unpredictable !4 ; 3 uses
  %i.bd = select i1 %i.ax, ptr %i.as, ptr %i.au, !unpredictable !4
  %i.be = select i1 %i.ay, ptr %i.aw, ptr %i.bd, !unpredictable !4 ; 3 uses
  %.val.i38 = load i32, ptr %i.be, align 8, !noundef !4
  %.val1.i39 = load i32, ptr %i.bc, align 8, !noundef !4
  %i.bf = icmp ult i32 %.val.i38, %.val1.i39      ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.be, ptr %i.bc, !unpredictable !4
  %i.bh = select i1 %i.bf, ptr %i.bc, ptr %i.be, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.bn = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bo = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.bo, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit, %bb.g
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.bq = getelementptr [24 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.br = icmp samesign ult i64 %.sroa.0.0, %i.bn
  br i1 %i.br, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1
  %.sroa.05.050.1 = phi i64 [ %i.cb, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.sroa.05.050.1 ; 2 uses
  %.idx82 = mul nuw nsw i64 %.sroa.05.050.1, 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx82 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -24 ; 3 uses
  %.val9.i40.1 = load i32, ptr %i.bt, align 8, !noundef !4 ; 3 uses
  %.val10.i.1 = load i32, ptr %i.bu, align 8, !noundef !4
  %i.bv = icmp ult i32 %.val9.i40.1, %.val10.i.1
  br i1 %i.bv, label %bb.h, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(20) %i.bw, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %i.bx = icmp eq i64 %.sroa.05.050.1, 1
  br i1 %i.bx, label %._crit_edge78, label %.lr.ph77

bb.i:                                             ; preds = %.lr.ph77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.175, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false)
  %i.by = icmp eq ptr %i.bz, %i.bq
  br i1 %i.by, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i41.175 = phi ptr [ %i.bz, %bb.i ], [ %i.bu, %bb.h ] ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.0.i41.175, i64 -24 ; 4 uses
  %.val8.i42.1 = load i32, ptr %i.bz, align 4, !noundef !4
  %i.ca = icmp ult i32 %.val9.i40.1, %.val8.i42.1
  br i1 %i.ca, label %bb.i, label %._crit_edge78

._crit_edge78:                                    ; preds = %bb.i, %.lr.ph77, %bb.h
  %.sroa.0.0.i41.lcssa.1 = phi ptr [ %i.bq, %bb.h ], [ %i.bq, %bb.i ], [ %.sroa.0.0.i41.175, %.lr.ph77 ] ; 2 uses
  store i32 %.val9.i40.1, ptr %.sroa.0.0.i41.lcssa.1, align 8, !noalias !947
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, i64 20, i1 false), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1: ; preds = %._crit_edge78, %.lr.ph.1
  %i.cb = add nuw nsw i64 %.sroa.05.050.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cb, %i.bn
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit.1, %.loopexit
  %i.cc = add nsw i64 %1, -1                      ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.bq, i64 -24
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.cg = getelementptr i8, ptr %i.cv, i64 24     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cu, i64 24
  %i.ci = and i64 %1, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.cr, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.co, %.lr.ph.i ], [ %i.bq, %.loopexit.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.cv, %.lr.ph.i ], [ %i.cf, %.loopexit.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.ce, %.loopexit.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %i.cd, %.loopexit.1 ] ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load i32, ptr %.sroa.011.07.i, align 4, !alias.scope !948, !noundef !4
  %.sroa.06.0.val.i = load i32, ptr %.sroa.06.08.i, align 4, !alias.scope !948, !noundef !4
  %i.cl = icmp ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.cl, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.cm = xor i1 %i.cl, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(24) %..i21.i, i64 24, i1 false), !noalias !949
  %i.cn = zext i1 %i.cl to i64
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.07.i, i64 %i.cn ; 4 uses
  %i.cp = zext i1 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.08.i, i64 %i.cp ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 24 ; 2 uses
  %.sroa.017.0.val.i = load i32, ptr %.sroa.017.05.i, align 4, !alias.scope !948, !noundef !4
  %.sroa.015.0.val.i = load i32, ptr %.sroa.015.06.i, align 4, !alias.scope !948, !noundef !4
  %i.cs = icmp ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.cs, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.ct = xor i1 %i.cs, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !noalias !950
  %.neg.i.i = sext i1 %i.ct to i64
  %i.cu = getelementptr [24 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.cs to i64
  %i.cv = getelementptr [24 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -24
  %exitcond.not.i = icmp eq i64 %i.ck, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.cx = icmp ult ptr %i.cq, %i.cg               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.cx, ptr %i.cq, ptr %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i, i64 24, i1 false)
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cy
  %i.da = xor i1 %i.cx, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.db
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.co, %._crit_edge.i ], [ %i.dc, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.cq, %._crit_edge.i ], [ %i.cz, %bb.j ]
  %i.dd = icmp ne ptr %.sroa.06.1.i, %i.cg
  %i.de = icmp ne ptr %.sroa.011.1.i, %i.ch
  %or.cond.i = select i1 %i.dd, i1 true, i1 %i.de, !prof !10
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2h_11collections5btree3mapINtB34_8BTreeMapmB1i_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB44_8adapters3map3MapINtNtB51_9enumerate9EnumerateINtNtNtB2h_3vec9into_iter8IntoIterB1i_EENCINvXsf_B1k_NtB1k_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7Q_10ReadReaderINtNtNtNtB2h_2io8buffered9bufreader9BufReaderRShEENtNtB7S_6config13DefaultConfigEE0EE0E0EB1m_.exit, !prof !10

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #26
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = mul nuw nsw i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dg, i1 false), !noalias !951
  resume { ptr, i32 } %i.df

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2h_11collections5btree3mapINtB34_8BTreeMapmB1i_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB44_8adapters3map3MapINtNtB51_9enumerate9EnumerateINtNtNtB2h_3vec9into_iter8IntoIterB1i_EENCINvXsf_B1k_NtB1k_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7Q_10ReadReaderINtNtNtNtB2h_2io8buffered9bufreader9BufReaderRShEENtNtB7S_6config13DefaultConfigEE0EE0E0EB1m_.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit
  %.sroa.05.050 = phi i64 [ %i.dq, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.050 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.050, 24
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false)
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -24 ; 3 uses
  %.val9.i40 = load i32, ptr %i.di, align 8, !noundef !4 ; 3 uses
  %.val10.i = load i32, ptr %i.dj, align 8, !noundef !4
  %i.dk = icmp ult i32 %.val9.i40, %.val10.i
  br i1 %i.dk, label %bb.n, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(20) %i.dl, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  %i.dm = icmp eq i64 %.sroa.05.050, 1
  br i1 %i.dm, label %._crit_edge, label %.lr.ph72

bb.o:                                             ; preds = %.lr.ph72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i4171, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %i.dn = icmp eq ptr %i.do, %2
  br i1 %i.dn, label %._crit_edge, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.n, %bb.o
  %.sroa.0.0.i4171 = phi ptr [ %i.do, %bb.o ], [ %i.dj, %bb.n ] ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.0.i4171, i64 -24 ; 4 uses
  %.val8.i42 = load i32, ptr %i.do, align 4, !noundef !4
  %i.dp = icmp ult i32 %.val9.i40, %.val8.i42
  br i1 %i.dp, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph72, %bb.n
  %.sroa.0.0.i41.lcssa = phi ptr [ %2, %bb.n ], [ %2, %bb.o ], [ %.sroa.0.0.i4171, %.lr.ph72 ] ; 2 uses
  store i32 %.val9.i40, ptr %.sroa.0.0.i41.lcssa, align 8, !noalias !947
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, i64 20, i1 false), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB29_11collections5btree3mapINtB2W_8BTreeMapmB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtB4T_9enumerate9EnumerateINtNtNtB29_3vec9into_iter8IntoIterB1a_EENCINvXsf_B1c_NtB1c_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7I_10ReadReaderINtNtNtNtB29_2io8buffered9bufreader9BufReaderRShEENtNtB7K_6config13DefaultConfigEE0EE0E0EB1e_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.dq = add nuw nsw i64 %.sroa.05.050, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNtNtCs6LlcditsbhK_5serde2de11ignored_any10IgnoredAnyNtB7_7Visitor8visit_i8NtNtCs974quTetXso_9rmp_serde6decode5ErrorECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, i8 noundef %1) unnamed_addr #11 {
bb.a:
  store i8 -1, ptr %0, align 8, !alias.scope !954
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNtNtCs6LlcditsbhK_5serde2de11ignored_any10IgnoredAnyNtB7_7Visitor8visit_u8NtNtCs974quTetXso_9rmp_serde6decode5ErrorECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, i8 noundef %1) unnamed_addr #11 {
bb.a:
  store i8 -1, ptr %0, align 8, !alias.scope !957
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNtNtCs6LlcditsbhK_5serde2de11ignored_any10IgnoredAnyNtB7_7Visitor9visit_f32NtNtCs974quTetXso_9rmp_serde6decode5ErrorECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, float noundef %1) unnamed_addr #11 {
bb.a:
  store i8 -1, ptr %0, align 8, !alias.scope !960
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNtNtCs6LlcditsbhK_5serde2de11ignored_any10IgnoredAnyNtB7_7Visitor9visit_i16NtNtCs974quTetXso_9rmp_serde6decode5ErrorECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, i16 noundef %1) unnamed_addr #11 {
bb.a:
  store i8 -1, ptr %0, align 8, !alias.scope !963
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNtNtCs6LlcditsbhK_5serde2de11ignored_any10IgnoredAnyNtB7_7Visitor9visit_i32NtNtCs974quTetXso_9rmp_serde6decode5ErrorECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, i32 noundef %1) unnamed_addr #11 {
bb.a:
  store i8 -1, ptr %0, align 8, !alias.scope !966
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNtNtCs6LlcditsbhK_5serde2de11ignored_any10IgnoredAnyNtB7_7Visitor9visit_u16NtNtCs974quTetXso_9rmp_serde6decode5ErrorECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, i16 noundef %1) unnamed_addr #11 {
bb.a:
  store i8 -1, ptr %0, align 8, !alias.scope !969
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNtNtCs6LlcditsbhK_5serde2de11ignored_any10IgnoredAnyNtB7_7Visitor9visit_u32NtNtCs974quTetXso_9rmp_serde6decode5ErrorECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, i32 noundef %1) unnamed_addr #11 {
bb.a:
  store i8 -1, ptr %0, align 8, !alias.scope !972
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1J_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp ult i64 %i.d, 11
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB1H_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvMsS_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB1H_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.f, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_4LeafENtB1y_4EdgeE7next_kvB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 230
  %i.g = load i16, ptr %i.f, align 2, !noundef !4
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.022 = phi ptr [ %i.k, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.021 = phi i64 [ %i.o, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !noalias !975, !noundef !4 ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.l = zext i16 %i.q to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.l, %._crit_edge.loopexit ]
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.022, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.021, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.5.021, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 228
  %i.q = load i16, ptr %i.p, align 4, !noalias !975 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 230
  %i.s = load i16, ptr %i.r, align 2, !noundef !4
  %i.t = icmp ult i16 %i.q, %i.s
  br i1 %i.t, label %._crit_edge.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, 1
  store ptr %i.c, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.e, 11
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr i8, ptr %i.c, i64 240
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.e ; 2 uses
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.017.0.in.prol = phi ptr [ %i.m, %.prol.preheader ], [ %i.l, %bb.c ]
  %.sroa.019.0.in.prol = phi i64 [ %.sroa.019.0.prol, %.prol.preheader ], [ %i.b, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.019.0.prol = add i64 %.sroa.019.0.in.prol, -1 ; 2 uses
  %.sroa.017.0.prol = load ptr, ptr %.sroa.017.0.in.prol, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.017.0.prol, i64 232 ; 2 uses
end_hunk_1
