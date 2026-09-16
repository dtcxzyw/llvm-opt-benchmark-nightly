Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2-da23f3a62f735e36.iceoryx2.bbad07315a6c36b7-cgu.07?download=true
inline.NumInlined: 154
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_:bb.a
  %i.r = zext i1 %i.g to i64
  %i.s = getelementptr inbounds nuw [352 x i8], ptr %0, i64 %i.r ; 5 uses
  %i.t = select i1 %i.o, i64 3, i64 2
  %i.u = getelementptr inbounds nuw [352 x i8], ptr %0, i64 %i.t ; 5 uses
  %i.v = select i1 %i.o, i64 2, i64 3
  %i.w = getelementptr inbounds nuw [352 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj40_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.q) #9 ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.d, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit4

bb.d:                                             ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit2
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.ab = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.aa) #9
  br label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit4

_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit4: ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit2, %bb.d
  %.sroa.0.0.i.i.i.i3 = phi i8 [ %i.ab, %bb.d ], [ %i.x, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit2 ]
  %i.ac = icmp slt i8 %.sroa.0.0.i.i.i.i3, 0      ; 3 uses
  %i.ad = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj40_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.s) #9 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit6

bb.e:                                             ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit4
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.ah = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ag) #9
  br label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit6

_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit6: ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit4, %bb.e
  %.sroa.0.0.i.i.i.i5 = phi i8 [ %i.ah, %bb.e ], [ %i.ad, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit4 ]
  %i.ai = icmp slt i8 %.sroa.0.0.i.i.i.i5, 0      ; 3 uses
  %i.aj = select i1 %i.ai, ptr %i.u, ptr %i.s, !unpredictable !5
  %i.ak = select i1 %i.ac, ptr %i.q, ptr %i.aj, !unpredictable !5 ; 4 uses
  %i.al = select i1 %i.ac, ptr %i.s, ptr %i.u, !unpredictable !5
  %i.am = select i1 %i.ai, ptr %i.w, ptr %i.al, !unpredictable !5 ; 4 uses
  %i.an = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj40_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.ak) #9 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.f, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8

bb.f:                                             ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.ar = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.aq) #9
  br label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8

_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8: ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit6, %bb.f
  %.sroa.0.0.i.i.i.i7 = phi i8 [ %i.ar, %bb.f ], [ %i.an, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit6 ]
  %i.as = select i1 %i.ai, ptr %i.s, ptr %i.w, !unpredictable !5
  %i.at = select i1 %i.ac, ptr %i.u, ptr %i.q, !unpredictable !5
  %i.au = icmp slt i8 %.sroa.0.0.i.i.i.i7, 0      ; 2 uses
  %i.av = select i1 %i.au, ptr %i.am, ptr %i.ak, !unpredictable !5
  %i.aw = select i1 %i.au, ptr %i.ak, ptr %i.am, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef nonnull align 8 dereferenceable(352) %i.at, i64 352, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.ax, ptr noundef nonnull align 8 dereferenceable(352) %i.av, i64 352, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 704
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.ay, ptr noundef nonnull align 8 dereferenceable(352) %i.aw, i64 352, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.az, ptr noundef nonnull align 8 dereferenceable(352) %i.as, i64 352, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1s_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 26202761468337432) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [352 x i8], align 8               ; 6 uses
  %i.b = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.b, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [352 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [352 x i8], ptr %0, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.u, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit ] ; 7 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -352 ; 4 uses
  %i.g = call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj40_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %.sroa.0.05, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.f) #9 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 80
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -272
  %i.k = call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.j) #9
  br label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i

_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.k, %bb.e ], [ %i.g, %bb.d ]
  %i.l = icmp slt i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.l, label %bb.f, label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit

bb.f:                                             ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.a, ptr noundef nonnull align 8 dereferenceable(352) %.sroa.0.05, i64 352, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(352) %i.f, i64 352, i1 false)
  %i.m = icmp eq ptr %i.f, %0
  br i1 %i.m, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8.i._crit_edge, label %.lr.ph13

bb.g:                                             ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.0.0.i11, ptr noundef nonnull align 8 dereferenceable(352) %i.o, i64 352, i1 false)
  %i.n = icmp eq ptr %i.o, %0
  br i1 %i.n, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8.i._crit_edge, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.i11 = phi ptr [ %i.o, %bb.g ], [ %i.f, %bb.f ] ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0.i11, i64 -352 ; 4 uses
  %i.p = call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj40_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.o) #9 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.h, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8.i

bb.h:                                             ; preds = %.lr.ph13
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.0.i11, i64 -272
  %i.s = call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.r) #9
  br label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8.i

_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8.i: ; preds = %bb.h, %.lr.ph13
  %.sroa.0.0.i.i.i.i7.i = phi i8 [ %i.s, %bb.h ], [ %i.p, %.lr.ph13 ]
  %i.t = icmp slt i8 %.sroa.0.0.i.i.i.i7.i, 0
  br i1 %i.t, label %bb.g, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8.i._crit_edge

_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8.i._crit_edge: ; preds = %bb.g, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8.i, %bb.f
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.f ], [ %0, %bb.g ], [ %.sroa.0.0.i11, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(352) %i.a, i64 352, i1 false), !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit

_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit: ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit8.i._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 352 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.c
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift4sortNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYBW_NtNtBa_3cmp10PartialOrd2ltEB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 26202761468337432) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 26202761468337432) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3.i97 = icmp ugt i64 %.sroa.01.0, 2
  %.not3.i102 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ae, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ae ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.ae ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eo, %bb.ae ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift10create_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit
  %.sroa.021.0 = phi i8 [ %i.br, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift10create_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift10create_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [352 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.p = getelementptr inbounds nuw [352 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread100, %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread, %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, %bb.h
  br i1 %4, label %bb.s, label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 352
  %i.s = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj40_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.p) #9, !noalias !31 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.l, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit38

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 432
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.w = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.v) #9, !noalias !31
  br label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit38

_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit38: ; preds = %bb.k, %bb.l
  %.sroa.0.0.i.i.i.i37 = phi i8 [ %i.w, %bb.l ], [ %i.s, %bb.k ]
  %i.x = icmp sgt i8 %.sroa.0.0.i.i.i.i37, -1     ; 2 uses
  %.not68 = icmp eq i64 %i.o, 2                   ; 2 uses
  br i1 %i.x, label %.preheader48, label %.preheader

.preheader48:                                     ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit38
  br i1 %.not68, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit38
  br i1 %.not68, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread100, label %.lr.ph56

.lr.ph:                                           ; preds = %.preheader48, %bb.n
  %.sroa.01.0.i.i53 = phi i64 [ %i.ai, %bb.n ], [ 2, %.preheader48 ] ; 4 uses
  %i.y = getelementptr inbounds nuw [352 x i8], ptr %i.p, i64 %.sroa.01.0.i.i53 ; 2 uses
  %i.z = add nsw i64 %.sroa.01.0.i.i53, -1        ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.o
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [352 x i8], ptr %i.p, i64 %i.z ; 2 uses
  %i.ac = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj40_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.ab) #9, !noalias !31 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit36

bb.m:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ag = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af) #9, !noalias !31
  br label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit36

_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit36: ; preds = %.lr.ph, %bb.m
  %.sroa.0.0.i.i.i.i35 = phi i8 [ %i.ag, %bb.m ], [ %i.ac, %.lr.ph ]
  %i.ah = icmp slt i8 %.sroa.0.0.i.i.i.i35, 0
  br i1 %i.ah, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit36
  %i.ai = add nuw i64 %.sroa.01.0.i.i53, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.o
  br i1 %exitcond.not, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph

.lr.ph56:                                         ; preds = %.preheader, %bb.p
  %.sroa.01.1.i.i55 = phi i64 [ %i.at, %bb.p ], [ 2, %.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [352 x i8], ptr %i.p, i64 %.sroa.01.1.i.i55 ; 2 uses
  %i.ak = add nsw i64 %.sroa.01.1.i.i55, -1       ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.o
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [352 x i8], ptr %i.p, i64 %i.ak ; 2 uses
  %i.an = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj40_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.am) #9, !noalias !31 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.o, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.o:                                             ; preds = %.lr.ph56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ar = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.aq) #9, !noalias !31
  br label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit: ; preds = %.lr.ph56, %bb.o
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ar, %bb.o ], [ %i.an, %.lr.ph56 ]
  %i.as = icmp slt i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.as, label %bb.p, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

bb.p:                                             ; preds = %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit
  %i.at = add nuw i64 %.sroa.01.1.i.i55, 1        ; 2 uses
  %exitcond76.not = icmp eq i64 %i.at, %i.o
  br i1 %exitcond76.not, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph56

_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i: ; preds = %bb.p, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit, %bb.n, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit36
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i53, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit36 ], [ %i.o, %bb.n ], [ %.sroa.01.1.i.i55, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit ], [ %i.o, %bb.p ] ; 5 uses
  %i.au = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.au)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.q

_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread100: ; preds = %.preheader
  br i1 %.not3.i102, label %bb.i, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not3.i97, label %bb.i, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute7reverseBA_.exit

bb.q:                                             ; preds = %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.av, 0
  %or.cond = or i1 %i.x, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute7reverseBA_.exit, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.preheader.i.i

bb.r:                                             ; preds = %bb.i
  %i.aw = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 26202761468337432) %i.o)
  %i.ax = shl nuw nsw i64 %i.aw, 1
  br label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift10create_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

bb.s:                                             ; preds = %bb.i
  %i.ay = tail call i64 @llvm.umin.i64(i64 range(i64 0, 26202761468337432) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.ay, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 26202761468337432) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(352) null, ptr noalias nofree noundef nonnull %5) #10, !inline_history !18
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = or disjoint i64 %i.az, 1
  br label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift10create_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute7reverseBA_.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread, %bb.j, %bb.q
  %.sroa.0.0.i.i4346 = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread ], [ %.sroa.0.0.i.i98105109, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.i.i ]
  %i.bb = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift10create_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.preheader.i.i: ; preds = %bb.q, %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread100
  %i.bd = phi i64 [ %i.av, %bb.q ], [ 1, %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread100 ]
  %.sroa.0.0.i.i98105109 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i.thread100 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [352 x i8], ptr %i.p, i64 %.sroa.0.0.i.i98105109
  br label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.i.i

_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.i.i, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bi, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.bf = xor i64 %.sroa.0.016.i.i, -1
  %i.bg = getelementptr inbounds nuw [352 x i8], ptr %i.p, i64 %.sroa.0.016.i.i
  %i.bh = getelementptr [352 x i8], ptr %i.be, i64 %i.bf
  tail call void @_RINvNvNtCs8Chj7Szqq0n_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsg6ZEkMtNi4J_8iceoryx2(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef 44) #9, !noalias !31
  %i.bi = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bi, %i.bd
  br i1 %exitcond.not.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute7reverseBA_.exit, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift10create_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit: ; preds = %bb.r, %bb.s, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute7reverseBA_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bc, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute7reverseBA_.exit ], [ %i.ba, %bb.s ], [ %i.ax, %bb.r ] ; 2 uses
  %i.bj = lshr i64 %.sroa.023.0, 1
  %i.bk = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bl = sub nsw i64 %factor, %i.bj
  %i.bm = add nuw nsw i64 %i.bk, %factor
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = mul i64 %i.bm, %.sroa.0.0
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 false)
  %i.br = trunc nuw nsw i64 %i.bq to i8
  br label %bb.g

bb.t:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bs, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 4 uses
  %i.bs = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bu, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %bb.t, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.t ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.t ], [ 1, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bw, align 1
  br i1 %i.l, label %bb.ae, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bs
  %i.by = load i64, ptr %i.bx, align 8, !noundef !5 ; 3 uses
  %i.bz = lshr i64 %i.by, 1                       ; 8 uses
  %i.ca = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.cb = add nuw i64 %i.bz, %i.ca                ; 4 uses
  %i.cc = sub i64 %.sroa.09.0, %i.cb
  %i.cd = getelementptr inbounds nuw [352 x i8], ptr %0, i64 %i.cc ; 6 uses
  %i.ce = icmp samesign ugt i64 %i.cb, %3
  %i.cf = trunc i64 %.sroa.023.159 to i1
  %i.cg = or i64 %i.by, %.sroa.023.159
  %i.ch = trunc i64 %i.cg to i1
  %or.cond3.i = or i1 %i.ce, %i.ch
  br i1 %or.cond3.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ci = trunc i64 %i.by to i1
  br i1 %i.ci, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.cj = shl nuw nsw i64 %i.cb, 1
  br label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.x:                                             ; preds = %bb.y, %bb.v
  br i1 %i.cf, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.ck = or i64 %i.bz, 1
  %i.cl = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.cd, i64 noundef range(i64 0, 26202761468337432) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 26202761468337432) %3, i32 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(352) null, ptr noalias nofree noundef nonnull %5) #10, !inline_history !19
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw [352 x i8], ptr %i.cd, i64 %i.bz
  %i.cq = or i64 %i.ca, 1
  %i.cr = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = xor i32 %i.ct, 126
  tail call void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.cp, i64 noundef range(i64 0, 26202761468337432) %i.ca, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 26202761468337432) %3, i32 noundef %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(352) null, ptr noalias nofree noundef nonnull %5) #10, !inline_history !19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.cv = icmp eq i64 %i.bz, 0
  %i.cw = icmp eq i64 %i.ca, 0
  %or.cond.i = or i1 %i.cw, %i.cv
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5merge5mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bz, i64 %i.ca) ; 2 uses
  %i.cy = icmp samesign ult i64 %3, %i.cx
  br i1 %i.cy, label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5merge5mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw [352 x i8], ptr %i.cd, i64 %i.bz ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bz, %i.ca  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cz, ptr %i.cd
  %i.da = mul nuw nsw i64 %i.cx, 352              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.da, i1 false), !alias.scope !32
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i.i
  %i.dc = phi ptr [ %i.dq, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i.i ], [ %i.db, %.critedge.i ] ; 2 uses
  %i.dd = phi ptr [ %i.do, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i.i ], [ %i.cz, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.dg, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i.i ], [ %i.n, %.critedge.i ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -352 ; 3 uses
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 -352 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -352 ; 2 uses
  %i.dh = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj40_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.de) #9, !noalias !33 ; 2 uses
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.ac, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i.i

bb.ac:                                            ; preds = %.preheader.i
  %i.dj = getelementptr inbounds i8, ptr %i.dc, i64 -272
  %i.dk = getelementptr inbounds i8, ptr %i.dd, i64 -272
  %i.dl = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.dk) #9, !noalias !33
  br label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i.i

_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i.i: ; preds = %bb.ac, %.preheader.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.dl, %bb.ac ], [ %i.dh, %.preheader.i ] ; 2 uses
  %i.dm = icmp sgt i8 %.sroa.0.0.i.i.i.i.i.i, -1  ; 2 uses
  %..i.i = select i1 %i.dm, ptr %i.df, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.dg, ptr noundef nonnull align 8 dereferenceable(352) %..i.i, i64 352, i1 false), !alias.scope !32, !noalias !33
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [352 x i8], ptr %i.de, i64 %i.dn ; 3 uses
  %.sroa.0.0.i.i.i.i.lobit.i.i = lshr i8 %.sroa.0.0.i.i.i.i.i.i, 7
  %i.dp = zext nneg i8 %.sroa.0.0.i.i.i.i.lobit.i.i to i64
  %i.dq = getelementptr inbounds nuw [352 x i8], ptr %i.df, i64 %i.dp ; 3 uses
  %i.dr = icmp eq ptr %i.do, %i.cd
  %i.ds = icmp eq ptr %i.dq, %2
  %or.cond.i.i = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i17.i
  %i.dt = phi ptr [ %i.ef, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i17.i ], [ %i.cd, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ee, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i17.i ], [ %i.cz, %.critedge.i ] ; 4 uses
  %i.du = phi ptr [ %i.ec, %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i17.i ], [ %2, %.critedge.i ] ; 4 uses
  %i.dv = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj40_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %.sroa.0.02.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.du) #9, !noalias !34 ; 2 uses
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.ad, label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i17.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 80
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 80
  %i.dz = tail call noundef i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.dy) #9, !noalias !34
  br label %_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i17.i

_RNvYNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i17.i: ; preds = %bb.ad, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i18.i = phi i8 [ %i.dz, %bb.ad ], [ %i.dv, %.lr.ph.i.i ] ; 2 uses
  %i.ea = icmp sgt i8 %.sroa.0.0.i.i.i.i.i18.i, -1 ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.ea, ptr %i.du, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.dt, ptr noundef nonnull align 8 dereferenceable(352) %.sroa.05.0.i.i, i64 352, i1 false), !alias.scope !32, !noalias !34
  %i.eb = zext i1 %i.ea to i64
end_hunk_0
begin_hunk_1_@_RINvXs2_NtNtNtCs7PFeJTloU4p_4toml2de12deserializer5arrayNtB6_14ArraySeqAccessNtNtCsePUspIjoSTD_10serde_core2de9SeqAccess17next_element_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDatayEECsg6ZEkMtNi4J_8iceoryx2:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !182, !noalias !183, !nonnull !5, !noundef !5 ; 5 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2.exit

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !182, !noalias !183
  %.sroa.0.0.copyload3 = load i8, ptr %i.f, align 8, !noalias !182 ; 2 uses
  %.not = icmp eq i8 %.sroa.0.0.copyload3, -1
  br i1 %.not, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2.exit
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.7.0..sroa_idx4, i64 39, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load <2 x i64>, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx4.sroa_idx, align 8, !noalias !182
  store <2 x i64> %i.j, ptr %i.i, align 8
  store i8 %.sroa.0.0.copyload3, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.k, align 8
  call void @_RINvXs0_NtNtNtCs7PFeJTloU4p_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCsePUspIjoSTD_10serde_core2de12Deserializer15deserialize_anyNtNvXs17_NtB1i_5implsyNtB1i_11Deserialize11deserialize16PrimitiveVisitorECsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %.not1 = icmp eq i64 %i.l, 2
  br i1 %.not1, label %bb.e, label %bb.d

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2.exit.thread: ; preds = %bb.a, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8
  store i64 2, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2.exit.thread
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.q, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_4cell10UnsafeCellINtNtB8_6option6OptionINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEEENtB6_5Debug3fmtB2m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !186
  call void @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 10) #9
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !186
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_4cell10UnsafeCellNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9ClockTypeENtB6_5Debug3fmtCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !189
  call void @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 10) #9
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !189
  ret i1 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCs7PFeJTloU4p_4toml2de12deserializerNtB2_12Deserializer5parse(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx26configsf_1__NtB5_6ConfigNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtCs7PFeJTloU4p_4toml2de12deserializer12DeserializerEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([4528 x i8]) align 8 captures(address) dereferenceable(4528), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs7PFeJTloU4p_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCsePUspIjoSTD_10serde_core2de12Deserializer15deserialize_anyNtNvXs14_NtB1i_5implsmNtB1i_11Deserialize11deserialize16PrimitiveVisitorECsg6ZEkMtNi4J_8iceoryx2(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs7PFeJTloU4p_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCsePUspIjoSTD_10serde_core2de12Deserializer15deserialize_anyNtNvXs17_NtB1i_5implsyNtB1i_11Deserialize11deserialize16PrimitiveVisitorECsg6ZEkMtNi4J_8iceoryx2(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs7PFeJTloU4p_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCsePUspIjoSTD_10serde_core2de12Deserializer15deserialize_anyNtNvXs1a_NtB1i_5implsjNtB1i_11Deserialize11deserialize16PrimitiveVisitorECsg6ZEkMtNi4J_8iceoryx2(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs7PFeJTloU4p_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCsePUspIjoSTD_10serde_core2de12Deserializer15deserialize_anyNtNtB1i_11ignored_any10IgnoredAnyECsg6ZEkMtNi4J_8iceoryx2(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXse_NtNtCsePUspIjoSTD_10serde_core2de5implsINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtBO_4time8DurationENtB8_11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerECsg6ZEkMtNi4J_8iceoryx2(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXse_NtNtCsePUspIjoSTD_10serde_core2de5implsINtNtCs8Chj7Szqq0n_4core6option6OptionjENtB8_11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerECsg6ZEkMtNi4J_8iceoryx2(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXsw_NtNtCsePUspIjoSTD_10serde_core2de5implsNtNtCs8Chj7Szqq0n_4core4time8DurationNtB8_11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerECsg6ZEkMtNi4J_8iceoryx2(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocators_1__NtB5_18AllocationStrategyNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerECsg6ZEkMtNi4J_8iceoryx2(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs4_NtCs8tG85QUCESg_24iceoryx2_bb_system_types4pathNtB6_4PathNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerECsg6ZEkMtNi4J_8iceoryx2(ptr dead_on_unwind noalias nofree noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXsi_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_nameNtB6_8FileNameNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerECsg6ZEkMtNi4J_8iceoryx2(ptr dead_on_unwind noalias nofree noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx26configsd_1__NtB5_10BlackboardNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx26configsb_1__NtB5_14RequestResonseNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx26configs7_1__NtB5_16PublishSubscribeNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx26configs1_1__NtB5_4NodeNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([1592 x i8]) align 8 captures(address) dereferenceable(1592), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx26configs9_1__NtB5_5EventNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx26configs3_1__NtB5_6GlobalNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([4256 x i8]) align 8 captures(address) dereferenceable(4256), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx26configs_1__NtB5_7ServiceNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([2120 x i8]) align 8 captures(address) dereferenceable(2120), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXNvNtCsg6ZEkMtNi4J_8iceoryx26configs5_1__NtB5_8DefaultsNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port21backpressure_strategyNtB6_20BackpressureStrategyNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvXs1_NtNtCsePUspIjoSTD_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerECsg6ZEkMtNi4J_8iceoryx2(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNvNtCs8Chj7Szqq0n_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsg6ZEkMtNi4J_8iceoryx2(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj40_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp3Ord3cmpCsg6ZEkMtNi4J_8iceoryx2(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { noinline nounwind }
attributes #11 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (0ed41eb41 2026-09-04)"}
!4 = !{i64 0, i64 3}
!5 = !{}
!6 = !{i32 -1, i32 1000000000}
!7 = !{i8 0, i8 3}
!8 = !{i64 0, i64 2}
!9 = !{i8 0, i8 2}
!10 = distinct !{!10, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeEEB1z_"}
!11 = distinct !{!11, !10, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeEEB1z_: argument 0"}
!12 = distinct !{!12, !"_RNvXs5_NtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeENtNtNtBd_3ops4drop4Drop4dropB1m_"}
!13 = distinct !{!13, !12, !"_RNvXs5_NtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeENtNtNtBd_3ops4drop4Drop4dropB1m_: argument 0"}
!14 = !{!13, !11}
!15 = distinct !{!15, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift10create_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_"}
!16 = distinct !{!16, !15, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift10create_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_: argument 2"}
!17 = distinct !{!17, !15, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift10create_runNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_: argument 1"}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{!20, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5merge5mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_"}
!21 = distinct !{!21, !20, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5merge5mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_: argument 1"}
!22 = distinct !{!22, !20, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5merge5mergeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_: argument 0"}
!23 = distinct !{!23, !"_RINvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_"}
!24 = distinct !{!24, !23, !"_RINvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_: argument 0"}
!25 = distinct !{!25, !"_RINvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE8merge_upNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_"}
!26 = distinct !{!26, !25, !"_RINvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE8merge_upNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_: argument 0"}
!27 = distinct !{!27, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeEEB1v_"}
!28 = distinct !{!28, !27, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeEEB1v_: argument 0"}
!29 = distinct !{!29, !"_RNvXs_NtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeENtNtNtBc_3ops4drop4Drop4dropB1h_"}
!30 = distinct !{!30, !29, !"_RNvXs_NtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeENtNtNtBc_3ops4drop4Drop4dropB1h_: argument 0"}
!31 = !{!17, !16}
!32 = !{!22, !21}
!33 = !{!24}
!34 = !{!26}
!35 = !{!30, !28}
!36 = distinct !{!36, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1y_"}
!37 = distinct !{!37, !36, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1y_: argument 0"}
!38 = distinct !{!38, !36, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1y_: argument 1"}
!39 = distinct !{!39, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeEEB1z_"}
!40 = distinct !{!40, !39, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeEEB1z_: argument 0"}
!41 = distinct !{!41, !"_RNvXs5_NtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeENtNtNtBd_3ops4drop4Drop4dropB1m_"}
!42 = distinct !{!42, !41, !"_RNvXs5_NtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeENtNtNtBd_3ops4drop4Drop4dropB1m_: argument 0"}
!43 = distinct !{!43, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort8merge_upNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_"}
!44 = distinct !{!44, !43, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort8merge_upNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_: argument 1"}
!45 = distinct !{!45, !43, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort8merge_upNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_: argument 0"}
!46 = distinct !{!46, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort10merge_downNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1d_"}
!47 = distinct !{!47, !46, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort10merge_downNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1d_: argument 1"}
!48 = distinct !{!48, !46, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort10merge_downNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1d_: argument 0"}
!49 = distinct !{!49, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB1d_NtNtBa_3cmp10PartialOrd2ltEB1j_"}
!50 = distinct !{!50, !49, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB1d_NtNtBa_3cmp10PartialOrd2ltEB1j_: argument 1"}
!51 = distinct !{!51, !49, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNvYB1d_NtNtBa_3cmp10PartialOrd2ltEB1j_: argument 0"}
!52 = distinct !{!52, !"_RNvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE13partition_oneB1n_"}
!53 = distinct !{!53, !52, !"_RNvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE13partition_oneB1n_: argument 0"}
!54 = distinct !{!54, !"_RNvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE13partition_oneB1n_"}
!55 = distinct !{!55, !54, !"_RNvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE13partition_oneB1n_: argument 0"}
!56 = distinct !{!56, !"_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_"}
!57 = distinct !{!57, !56, !"_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_: argument 1"}
!58 = distinct !{!58, !56, !"_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9Attribute12split_at_mutBA_: argument 0"}
!59 = distinct !{!59, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_"}
!60 = distinct !{!60, !59, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_: argument 1"}
!61 = distinct !{!61, !59, !"_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_: argument 0"}
!62 = distinct !{!62, !"_RNvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE13partition_oneB1n_"}
!63 = distinct !{!63, !62, !"_RNvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE13partition_oneB1n_: argument 0"}
!64 = distinct !{!64, !"_RNvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE13partition_oneB1n_"}
!65 = distinct !{!65, !64, !"_RNvMNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeE13partition_oneB1n_: argument 0"}
!66 = !{!37}
!67 = !{!38}
!68 = !{!37, !38}
!69 = !{!42, !40, !37}
!70 = !{!45, !44}
!71 = !{!48, !47}
!72 = !{!"branch_weights", i32 4001, i32 4000000}
!73 = !{!50}
!74 = !{!51, !50}
!75 = !{!53}
!76 = !{!55}
!77 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!78 = !{!58, !57}
!79 = !{!60}
!80 = !{!61, !60}
!81 = !{!63}
!82 = !{!65}
!83 = distinct !{!83, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!84 = distinct !{!84, !83, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!85 = distinct !{!85, !83, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!86 = !{!84}
!87 = !{!85}
!88 = distinct !{!88, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!89 = distinct !{!89, !88, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!90 = distinct !{!90, !88, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!91 = !{!89}
!92 = !{!90}
!93 = distinct !{!93, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!94 = distinct !{!94, !93, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!95 = distinct !{!95, !93, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!96 = !{!94}
!97 = !{!95}
!98 = distinct !{!98, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!99 = distinct !{!99, !98, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!100 = distinct !{!100, !98, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!101 = !{!99}
!102 = !{!100}
!103 = !{i32 0, i32 1000000000}
!104 = distinct !{!104, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!105 = distinct !{!105, !104, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!106 = distinct !{!106, !104, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!107 = !{!105}
!108 = !{!106}
!109 = distinct !{!109, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!110 = distinct !{!110, !109, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!111 = distinct !{!111, !109, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!112 = !{!110}
!113 = !{!111}
!114 = distinct !{!114, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!115 = distinct !{!115, !114, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!116 = distinct !{!116, !114, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!117 = !{!115}
!118 = !{!116}
!119 = distinct !{!119, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!120 = distinct !{!120, !119, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!121 = distinct !{!121, !119, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!122 = !{!120}
!123 = !{!121}
!124 = distinct !{!124, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!125 = distinct !{!125, !124, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!126 = distinct !{!126, !124, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!127 = !{!125}
!128 = !{!126}
!129 = distinct !{!129, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!130 = distinct !{!130, !129, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!131 = distinct !{!131, !129, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!132 = !{!130}
!133 = !{!131}
!134 = distinct !{!134, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!135 = distinct !{!135, !134, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!136 = distinct !{!136, !134, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!137 = !{!135}
!138 = !{!136}
!139 = distinct !{!139, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!140 = distinct !{!140, !139, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!141 = distinct !{!141, !139, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!142 = !{!140}
!143 = !{!141}
!144 = distinct !{!144, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!145 = distinct !{!145, !144, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!146 = distinct !{!146, !144, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!147 = !{!145}
!148 = !{!146}
!149 = distinct !{!149, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!150 = distinct !{!150, !149, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!151 = distinct !{!151, !149, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!152 = !{!150}
!153 = !{!151}
!154 = distinct !{!154, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!155 = distinct !{!155, !154, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!156 = distinct !{!156, !154, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!157 = !{!155}
!158 = !{!156}
!159 = distinct !{!159, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!160 = distinct !{!160, !159, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!161 = distinct !{!161, !159, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!162 = !{!160}
!163 = !{!161}
!164 = distinct !{!164, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!165 = distinct !{!165, !164, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!166 = distinct !{!166, !164, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!167 = !{!165}
!168 = !{!166}
!169 = distinct !{!169, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!170 = distinct !{!170, !169, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!171 = distinct !{!171, !169, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!172 = !{!170}
!173 = !{!171}
!174 = distinct !{!174, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!175 = distinct !{!175, !174, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!176 = distinct !{!176, !174, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!177 = !{!175}
!178 = !{!176}
!179 = distinct !{!179, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2"}
!180 = distinct !{!180, !179, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 1"}
!181 = distinct !{!181, !179, !"_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsg6ZEkMtNi4J_8iceoryx2: argument 0"}
!182 = !{!180}
!183 = !{!181}
end_hunk_1
