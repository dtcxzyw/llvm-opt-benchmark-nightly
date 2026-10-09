Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_RNvMNtNtCs9KQ7US1M400_11lance_table2io6commitNtB2_20ManifestNamingScheme13manifest_path:bb.a
bb.h:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit, %bb.f
  ret void

bb.i:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = icmp eq i64 %.sroa.063.0.copyload, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.sink.split

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.h

bb.j:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i47 = load i64, ptr %i.k, align 8, !alias.scope !49289 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i47, 0
  %.sink58.sroa.phi.sroa.speculate.load.62 = load ptr, ptr %.sink58.sroa.gep60, align 8
  br i1 %i.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.sink.split
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtNtCs9KQ7US1M400_11lance_table2io6commitNtB2_20ManifestNamingScheme13parse_version(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.a = phi i64 [ 0, %bb.a ], [ %i.p, %bb.f ]    ; 4 uses
  %i.b = sub nuw i64 %2, %i.a                     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.d = icmp samesign ult i64 %i.b, 16
  br i1 %i.d, label %.preheader.i.i.i, label %bb.c

.preheader.i.i.i:                                 ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.b), !noalias !49301
  br label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.b, %bb.d ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i.i ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %.sroa.01.05.i.i.i = phi i64 [ %i.k, %bb.d ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.01.05.i.i.i
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !49302, !noalias !49301, !noundef !68
  %i.j = icmp eq i8 %i.i, 46
  br i1 %i.j, label %._crit_edge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.k = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.k, %i.b
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.c
  %.merged.i.i.i = phi { i64, i64 } [ %i.g, %._crit_edge.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.e, label %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit.thread

bb.e:                                             ; preds = %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i
  %i.n = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.o = add i64 %i.a, 1
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %.not13.i.i = icmp ugt i64 %i.p, %2
  %i.q = add i64 %i.n, %i.a                       ; 5 uses
  %or.cond.i.not.i = icmp ult i64 %i.q, %2
  br i1 %or.cond.i.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  br i1 %.not13.i.i, label %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit.thread, label %bb.b

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %lhsc.i = load i8, ptr %i.r, align 1, !alias.scope !49303, !noalias !49304
  %i.s = icmp eq i8 %lhsc.i, 46
  br i1 %i.s, label %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit, label %bb.f

_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.g
  switch i64 %i.q, label %thread-pre-split.i [
    i64 0, label %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit.thread
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit
  %i.t = load i8, ptr %1, align 1, !alias.scope !49305, !noalias !49306, !noundef !68 ; 2 uses
  switch i8 %i.t, label %bb.i [
    i8 43, label %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit.thread
    i8 45, label %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit.thread
  ]

thread-pre-split.i:                               ; preds = %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !49305, !noalias !49306
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split.i, %bb.h
  %i.u = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.t, %bb.h ]
  %cond.i = icmp eq i8 %i.u, 43                   ; 2 uses
  %i.v = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.q, %i.v          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.w = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.w, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.i
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCscI6d9CVNmLh_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i42, i64 1
  %i.y = add nsw i64 %.sroa.15.1.i41, -1          ; 2 uses
  %.not52.i = icmp eq i64 %i.y, 0
  br i1 %.not52.i, label %_RNvMsD_NtCscI6d9CVNmLh_4core3numy16from_ascii_radix.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.i, %.preheader56.i
  %.sroa.0.1.i42 = phi ptr [ %i.x, %.preheader56.i ], [ %.sroa.0.0.i, %bb.i ] ; 2 uses
  %.sroa.15.1.i41 = phi i64 [ %i.y, %.preheader56.i ], [ %.sroa.15.0.i, %bb.i ]
  %.sroa.042.0.i40 = phi i64 [ %i.ah, %.preheader56.i ], [ 0, %bb.i ]
  %i.z = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i40, i64 10) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit.thread, label %bb.j, !prof !71

bb.j:                                             ; preds = %.preheader56.i.preheader
  %i.ab = extractvalue { i64, i1 } %i.z, 0        ; 2 uses
  %i.ac = load i8, ptr %.sroa.0.1.i42, align 1, !alias.scope !49305, !noalias !49306, !noundef !68
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 9
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = add i64 %i.ab, %i.ag                    ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.ab
  %or.cond = select i1 %i.af, i1 true, i1 %i.ai, !prof !69
  br i1 %or.cond, label %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit.thread, label %.preheader56.i, !prof !69

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.k
  %.sroa.0.269.i = phi ptr [ %i.ap, %bb.k ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.ao, %bb.k ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ar, %bb.k ], [ 0, %.preheader.i ]
  %i.aj = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !49305, !noalias !49306, !noundef !68
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -48                  ; 2 uses
  %i.am = icmp ult i32 %i.al, 10
  br i1 %i.am, label %bb.k, label %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit.thread

bb.k:                                             ; preds = %.lr.ph.i
  %i.an = mul i64 %.sroa.042.267.i, 10
  %i.ao = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.aq = zext nneg i32 %i.al to i64
  %i.ar = add i64 %i.an, %i.aq                    ; 2 uses
  %.not53.i = icmp eq i64 %i.ao, 0
  br i1 %.not53.i, label %_RNvMsD_NtCscI6d9CVNmLh_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

_RNvMsD_NtCscI6d9CVNmLh_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.k, %.preheader.i
  %.sroa.116.0 = phi i64 [ %i.ar, %bb.k ], [ 0, %.preheader.i ], [ %i.ah, %.preheader56.i ]
  %i.as = load i8, ptr %0, align 1, !range !77, !noundef !68
  %i.at = zext nneg i8 %i.as to i64
  %i.au = sub nsw i64 0, %i.at
  %spec.select = xor i64 %.sroa.116.0, %i.au
  br label %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit.thread

_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit.thread: ; preds = %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i, %bb.f, %.preheader56.i.preheader, %bb.j, %.lr.ph.i, %bb.h, %bb.h, %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit, %_RNvMsD_NtCscI6d9CVNmLh_4core3numy16from_ascii_radix.exit
  %.sroa.6.1 = phi i64 [ %spec.select, %_RNvMsD_NtCscI6d9CVNmLh_4core3numy16from_ascii_radix.exit ], [ undef, %bb.h ], [ undef, %bb.h ], [ undef, %.preheader56.i.preheader ], [ undef, %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit ], [ undef, %.lr.ph.i ], [ undef, %bb.j ], [ undef, %bb.f ], [ undef, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.0.1 = phi i64 [ 1, %_RNvMsD_NtCscI6d9CVNmLh_4core3numy16from_ascii_radix.exit ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %.preheader56.i.preheader ], [ %i.q, %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECs9KQ7US1M400_11lance_table.exit ], [ 0, %.lr.ph.i ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i ]
  %i.av = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.aw = insertvalue { i64, i64 } %i.av, i64 %.sroa.6.1, 1
  ret { i64, i64 } %i.aw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMNtNtCs9KQ7US1M400_11lance_table2io6commitNtB2_20ManifestNamingScheme21detect_scheme_staging(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #31 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 21 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 16 uses
  %.not27.i = icmp samesign eq i64 %1, 0
  br i1 %.not27.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !noalias !49311, !noundef !68
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @1362, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !noalias !49311, !noundef !68
  %i.g = zext i8 %i.f to i64                      ; 5 uses
  %.not29.i = icmp uge i64 %1, %i.g
  tail call void @llvm.assume(i1 %.not29.i)
  %.not27.1.i = icmp samesign eq i64 %1, %i.g
  br i1 %.not27.1.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %gepdiff = sub nuw nsw i64 %1, %i.g             ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !49311, !noundef !68
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @1362, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !49311, !noundef !68
  %i.m = zext i8 %i.l to i64                      ; 4 uses
  %.not29.1.i = icmp uge i64 %gepdiff, %i.m
  tail call void @llvm.assume(i1 %.not29.1.i)
  %i.n = add nuw nsw i64 %i.m, %i.g               ; 2 uses
  %.not27.2.i = icmp samesign eq i64 %1, %i.n
  br i1 %.not27.2.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m ; 2 uses
  %gepdiff12 = sub nuw i64 %gepdiff, %i.m         ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noalias !49311, !noundef !68
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @1362, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !49311, !noundef !68
  %i.t = zext i8 %i.s to i64                      ; 4 uses
  %.not29.2.i = icmp uge i64 %gepdiff12, %i.t
  tail call void @llvm.assume(i1 %.not29.2.i)
  %i.u = add nuw nsw i64 %i.n, %i.t
  %.not27.3.i = icmp samesign eq i64 %1, %i.u
  br i1 %.not27.3.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t ; 2 uses
  %gepdiff13 = sub i64 %gepdiff12, %i.t
  %i.w = load i8, ptr %i.v, align 1, !noalias !49311, !noundef !68
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @1362, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !49311, !noundef !68
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa ; 4 uses
  %.not29.3.i = icmp uge i64 %gepdiff13, %i.aa
  tail call void @llvm.assume(i1 %.not29.3.i)
  %.not27.4.i = icmp eq ptr %i.a, %i.ab
  br i1 %.not27.4.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub nuw i64 %i.b, %i.ac
  %i.ae = load i8, ptr %i.ab, align 1, !noalias !49311, !noundef !68
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @1362, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !49311, !noundef !68
  %i.ai = zext i8 %i.ah to i64                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ai ; 4 uses
  %.not29.4.i = icmp uge i64 %i.ad, %i.ai
  tail call void @llvm.assume(i1 %.not29.4.i)
  %.not27.5.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not27.5.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub nuw i64 %i.b, %i.ak
  %i.am = load i8, ptr %i.aj, align 1, !noalias !49311, !noundef !68
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @1362, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !49311, !noundef !68
  %i.aq = zext i8 %i.ap to i64                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aq ; 4 uses
  %.not29.5.i = icmp uge i64 %i.al, %i.aq
  tail call void @llvm.assume(i1 %.not29.5.i)
  %.not27.6.i = icmp eq ptr %i.a, %i.ar
  br i1 %.not27.6.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub nuw i64 %i.b, %i.as
  %i.au = load i8, ptr %i.ar, align 1, !noalias !49311, !noundef !68
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @1362, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !49311, !noundef !68
  %i.ay = zext i8 %i.ax to i64                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay ; 4 uses
  %.not29.6.i = icmp uge i64 %i.at, %i.ay
  tail call void @llvm.assume(i1 %.not29.6.i)
  %.not27.7.i = icmp eq ptr %i.a, %i.az
  br i1 %.not27.7.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub nuw i64 %i.b, %i.ba
  %i.bc = load i8, ptr %i.az, align 1, !noalias !49311, !noundef !68
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @1362, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !49311, !noundef !68
  %i.bg = zext i8 %i.bf to i64                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bg ; 4 uses
  %.not29.7.i = icmp uge i64 %i.bb, %i.bg
  tail call void @llvm.assume(i1 %.not29.7.i)
  %.not27.8.i = icmp eq ptr %i.a, %i.bh
  br i1 %.not27.8.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub nuw i64 %i.b, %i.bi
  %i.bk = load i8, ptr %i.bh, align 1, !noalias !49311, !noundef !68
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @1362, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !49311, !noundef !68
  %i.bo = zext i8 %i.bn to i64                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bo ; 4 uses
  %.not29.8.i = icmp uge i64 %i.bj, %i.bo
  tail call void @llvm.assume(i1 %.not29.8.i)
  %.not27.9.i = icmp eq ptr %i.a, %i.bp
  br i1 %.not27.9.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub nuw i64 %i.b, %i.bq
  %i.bs = load i8, ptr %i.bp, align 1, !noalias !49311, !noundef !68
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @1362, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !49311, !noundef !68
  %i.bw = zext i8 %i.bv to i64                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bw ; 4 uses
  %.not29.9.i = icmp uge i64 %i.br, %i.bw
  tail call void @llvm.assume(i1 %.not29.9.i)
  %.not27.10.i = icmp eq ptr %i.a, %i.bx
  br i1 %.not27.10.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub nuw i64 %i.b, %i.by
  %i.ca = load i8, ptr %i.bx, align 1, !noalias !49311, !noundef !68
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @1362, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !49311, !noundef !68
  %i.ce = zext i8 %i.cd to i64                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ce ; 4 uses
  %.not29.10.i = icmp uge i64 %i.bz, %i.ce
  tail call void @llvm.assume(i1 %.not29.10.i)
  %.not27.11.i = icmp eq ptr %i.a, %i.cf
  br i1 %.not27.11.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub nuw i64 %i.b, %i.cg
  %i.ci = load i8, ptr %i.cf, align 1, !noundef !68
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @1362, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !49311, !noundef !68
  %i.cm = zext i8 %i.cl to i64                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cm ; 4 uses
  %.not29.11.i = icmp uge i64 %i.ch, %i.cm
  tail call void @llvm.assume(i1 %.not29.11.i)
  %.not27.12.i = icmp eq ptr %i.a, %i.cn
  br i1 %.not27.12.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub nuw i64 %i.b, %i.co
  %i.cq = load i8, ptr %i.cn, align 1, !noundef !68
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @1362, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !49311, !noundef !68
  %i.cu = zext i8 %i.ct to i64                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cu ; 4 uses
  %.not29.12.i = icmp uge i64 %i.cp, %i.cu
  tail call void @llvm.assume(i1 %.not29.12.i)
  %.not27.13.i = icmp eq ptr %i.a, %i.cv
  br i1 %.not27.13.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub nuw i64 %i.b, %i.cw
  %i.cy = load i8, ptr %i.cv, align 1, !noundef !68
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @1362, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !noalias !49311, !noundef !68
  %i.dc = zext i8 %i.db to i64                    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dc ; 4 uses
  %.not29.13.i = icmp uge i64 %i.cx, %i.dc
  tail call void @llvm.assume(i1 %.not29.13.i)
  %.not27.14.i = icmp eq ptr %i.a, %i.dd
  br i1 %.not27.14.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub nuw i64 %i.b, %i.de
  %i.dg = load i8, ptr %i.dd, align 1, !noundef !68
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @1362, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !49311, !noundef !68
  %i.dk = zext i8 %i.dj to i64                    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dk ; 4 uses
  %.not29.14.i = icmp uge i64 %i.df, %i.dk
  tail call void @llvm.assume(i1 %.not29.14.i)
  %.not27.15.i = icmp eq ptr %i.a, %i.dl
  br i1 %.not27.15.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub nuw i64 %i.b, %i.dm
  %i.do = load i8, ptr %i.dl, align 1, !noundef !68
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @1362, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !49311, !noundef !68
  %i.ds = zext i8 %i.dr to i64                    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ds ; 4 uses
  %.not29.15.i = icmp uge i64 %i.dn, %i.ds
  tail call void @llvm.assume(i1 %.not29.15.i)
  %.not27.16.i = icmp eq ptr %i.a, %i.dt
  br i1 %.not27.16.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub nuw i64 %i.b, %i.du
  %i.dw = load i8, ptr %i.dt, align 1, !noundef !68
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @1362, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !noalias !49311, !noundef !68
  %i.ea = zext i8 %i.dz to i64                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ea ; 4 uses
  %.not29.16.i = icmp uge i64 %i.dv, %i.ea
  tail call void @llvm.assume(i1 %.not29.16.i)
  %.not27.17.i = icmp eq ptr %i.a, %i.eb
  br i1 %.not27.17.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = sub nuw i64 %i.b, %i.ec
  %i.ee = load i8, ptr %i.eb, align 1, !noundef !68
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @1362, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !noalias !49311, !noundef !68
end_hunk_0
