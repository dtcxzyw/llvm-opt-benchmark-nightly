Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/quick_xml-bc3eeb8a35a1fd08.quick_xml.1ac36040eb2affe1-cgu.01?download=true
inline.NumInlined: 166
inline.NumDeleted: 78
begin_hunk_0_@_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState27check_for_duplicates_hashed:bb.a
  store i64 %4, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %i.az, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %.val = load i64, ptr %1, align 8, !range !12, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.val205 = load i64, ptr %i.e, align 8          ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  switch i64 %.val, label %default.unreachable [
    i64 0, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread
    i64 1, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261
    i64 2, label %bb.b
    i64 3, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.f = icmp ugt i64 %.val205, %3
  br i1 %i.f, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %.not.not.not.i.not.not.not.i.not530 = icmp samesign eq i64 %.val205, %3
  br i1 %.not.not.not.i.not.not.not.i.not530, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread, label %.lr.ph531

.lr.ph531:                                        ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.val205
  br label %bb.d

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i: ; preds = %bb.d
  %i.i = add i64 %i.k, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.j, %i.g
  br i1 %.not.not.not.i.not.not.not.i.not, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph531, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i
  %i.k = phi i64 [ %.val205, %.lr.ph531 ], [ %i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i ] ; 5 uses
  %i.l = phi ptr [ %i.h, %.lr.ph531 ], [ %i.j, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i ] ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !149, !noalias !150, !noundef !4
  switch i8 %i.m, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i [
    i8 32, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261
    i8 13, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261
    i8 10, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261
    i8 9, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261
  ]

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.val205, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #15, !noalias !151
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.n = icmp ugt i64 %.val205, %3
  br i1 %i.n, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %i.p = icmp samesign eq i64 %.val205, %3
  br i1 %i.p, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %.val205
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState13skip_eq_value0E0B1t_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %i.r = phi i64 [ %i.t, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState13skip_eq_value0E0B1t_.exit.i.i.i ], [ %.val205, %.lr.ph.preheader.i.i.i ] ; 6 uses
  %i.s = phi ptr [ %i.u, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState13skip_eq_value0E0B1t_.exit.i.i.i ], [ %i.q, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.t = add i64 %i.r, 1                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 4 uses
  %i.v = load i8, ptr %i.s, align 1, !alias.scope !153, !noalias !154, !noundef !4 ; 2 uses
  switch i8 %i.v, label %bb.i [
    i8 32, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState13skip_eq_value0E0B1t_.exit.i.i.i
    i8 13, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState13skip_eq_value0E0B1t_.exit.i.i.i
    i8 10, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState13skip_eq_value0E0B1t_.exit.i.i.i
    i8 9, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState13skip_eq_value0E0B1t_.exit.i.i.i
    i8 34, label %bb.m
    i8 39, label %bb.m
  ]

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState13skip_eq_value0E0B1t_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.w = icmp eq ptr %i.u, %i.o
  br i1 %i.w, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.val205, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #15, !noalias !155
  unreachable

bb.i:                                             ; preds = %.lr.ph.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.x = icmp ugt i64 %i.r, %3
  br i1 %i.x, label %bb.l, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %.not.not.not.i.not.not.not.i.i528 = icmp samesign eq i64 %i.r, %3
  br i1 %.not.not.not.i.not.not.not.i.i528, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread, label %.lr.ph529

.lr.ph529:                                        ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  br label %bb.k

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i.i: ; preds = %bb.k
  %i.z = add i64 %i.ab, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %.not.not.not.i.not.not.not.i.i = icmp eq ptr %i.aa, %i.o
  br i1 %.not.not.not.i.not.not.not.i.i, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph529, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i.i
  %i.ab = phi i64 [ %i.r, %.lr.ph529 ], [ %i.z, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i.i ] ; 5 uses
  %i.ac = phi ptr [ %i.y, %.lr.ph529 ], [ %i.aa, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i.i ] ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !157, !noalias !158, !noundef !4
  switch i8 %i.ad, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i.i [
    i8 32, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261
    i8 13, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261
    i8 10, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261
    i8 9, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261
  ]

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #15, !noalias !159
  unreachable

bb.m:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %.not.not.not.i1.i527 = icmp eq ptr %i.u, %i.o
  br i1 %.not.not.not.i1.i527, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.ae = add i64 %i.ag, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %.not.not.not.i1.i = icmp eq ptr %i.af, %i.o
  br i1 %.not.not.not.i1.i, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %i.ag = phi i64 [ %i.ae, %bb.n ], [ %i.t, %bb.m ] ; 2 uses
  %i.ah = phi ptr [ %i.af, %bb.n ], [ %i.u, %bb.m ] ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !160, !noalias !161, !noundef !4
  %.not.i.i.i = icmp eq i8 %i.ai, %i.v
  br i1 %.not.i.i.i, label %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261, label %bb.n

_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261: ; preds = %.lr.ph, %bb.k, %bb.k, %bb.k, %bb.k, %bb.d, %bb.d, %bb.d, %bb.d, %bb.a
  %.sroa.5.0.i264 = phi i64 [ %.val205, %bb.a ], [ %i.k, %bb.d ], [ %i.ab, %bb.k ], [ %i.k, %bb.d ], [ %i.k, %bb.d ], [ %i.k, %bb.d ], [ %i.ab, %bb.k ], [ %i.ab, %bb.k ], [ %i.ab, %bb.k ], [ %i.ag, %.lr.ph ] ; 5 uses
  %i.aj = icmp ugt i64 %.sroa.5.0.i264, %3
  br i1 %i.aj, label %bb.p, label %bb.o, !prof !7

_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState13skip_eq_value0E0B1t_.exit.i.i.i, %bb.n, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState10skip_value0E0B1t_.exit.i.i.i, %bb.m, %bb.j, %bb.c, %bb.g, %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.ak

bb.o:                                             ; preds = %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 10 uses
  %i.al = icmp samesign eq i64 %.sroa.5.0.i264, %3
  br i1 %i.al, label %.loopexit294, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.5.0.i264
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4next0E0B1t_.exit.i, %.lr.ph.preheader.i
  %i.an = phi i64 [ %i.ap, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4next0E0B1t_.exit.i ], [ %.sroa.5.0.i264, %.lr.ph.preheader.i ] ; 5 uses
  %i.ao = phi ptr [ %i.aq, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4next0E0B1t_.exit.i ], [ %i.am, %.lr.ph.preheader.i ] ; 2 uses
  %i.ap = add i64 %i.an, 1                        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 3 uses
  %i.ar = load i8, ptr %i.ao, align 1, !alias.scope !162, !noalias !163, !noundef !4
  %i.as = icmp eq ptr %i.aq, %i.ak                ; 2 uses
  switch i8 %i.ar, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i.preheader [
    i8 32, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4next0E0B1t_.exit.i
    i8 13, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4next0E0B1t_.exit.i
    i8 10, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4next0E0B1t_.exit.i
    i8 9, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4next0E0B1t_.exit.i
  ]

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i.preheader: ; preds = %.lr.ph.i
  br i1 %i.as, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i._crit_edge, label %.lr.ph532

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4next0E0B1t_.exit.i: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  br i1 %i.as, label %.loopexit294, label %.lr.ph.i

bb.p:                                             ; preds = %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread261
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.5.0.i264, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #15
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i: ; preds = %.lr.ph532
  %i.at = icmp eq ptr %i.ax, %i.ak
  br i1 %i.at, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i._crit_edge, label %.lr.ph532

.lr.ph532:                                        ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i.preheader, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i
  %i.au = phi i64 [ %i.aw, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i ], [ %i.ap, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i.preheader ] ; 6 uses
  %i.av = phi ptr [ %i.ax, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i ], [ %i.aq, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i.preheader ] ; 2 uses
  %i.aw = add i64 %i.au, 1                        ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 5 uses
  %i.ay = load i8, ptr %i.av, align 1, !noundef !4
  switch i8 %i.ay, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i [
    i8 61, label %.loopexit293
    i8 9, label %bb.v
    i8 10, label %bb.v
    i8 13, label %bb.v
    i8 32, label %bb.v
  ]

.loopexit294:                                     ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4next0E0B1t_.exit.i, %bb.o
  store i64 0, ptr %1, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ak

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i._crit_edge: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i.preheader
  store i64 0, ptr %1, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load i8, ptr %i.az, align 8, !range !10, !noundef !4
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState20check_for_duplicates(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.an, i64 noundef %3)
  %i.bd = load i8, ptr %i.a, align 8, !range !164, !noundef !4 ; 2 uses
  %.not197 = icmp eq i8 %i.bd, -1
  br i1 %.not197, label %bb.t, label %bb.s

bb.r:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i._crit_edge, %bb.u
  %.sroa.0133.0 = phi i64 [ %.sroa.0133.1, %bb.u ], [ -1, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i._crit_edge ]
  %.sroa.6135.sroa.0.0 = phi i8 [ %.sroa.6135.sroa.0.1, %bb.u ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i._crit_edge ]
  %.sroa.6135.sroa.6.sroa.0.0 = phi i56 [ %.sroa.6135.sroa.6.sroa.0.1, %bb.u ], [ undef, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i._crit_edge ]
  %i.be = phi <2 x i64> [ %i.bl, %bb.u ], [ %i.bc, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts_0E0B1t_.exit.i._crit_edge ]
  store i64 %.sroa.0133.0, ptr %0, align 8
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6135.sroa.0.0, ptr %.sroa.6135.0..sroa_idx, align 8
  %.sroa.6135.sroa.6.0..sroa.6135.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.6135.sroa.6.sroa.0.0, ptr %.sroa.6135.sroa.6.0..sroa.6135.0..sroa_idx.sroa_idx, align 1
  %.sroa.6135.sroa.7.0..sroa.6135.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.be, ptr %.sroa.6135.sroa.7.0..sroa.6135.0..sroa_idx.sroa_idx, align 8
  br label %bb.ak

bb.s:                                             ; preds = %bb.q
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.4158.0.copyload = load i56, ptr %.sroa.4158.0..sroa_idx, align 1
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = load <2 x i64>, ptr %.sroa.5159.0..sroa_idx, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4
  %.sroa.4151.8.extract.trunc = trunc i64 %i.bh to i8
  %.sroa.4151.9.extract.shift = lshr i64 %i.bh, 8
  %.sroa.4151.9.extract.trunc = trunc nuw i64 %.sroa.4151.9.extract.shift to i56
  %i.bk = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.bj, i64 0
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.0133.1 = phi i64 [ -1, %bb.s ], [ 3, %bb.t ]
  %.sroa.6135.sroa.0.1 = phi i8 [ %i.bd, %bb.s ], [ %.sroa.4151.8.extract.trunc, %bb.t ]
  %.sroa.6135.sroa.6.sroa.0.1 = phi i56 [ %.sroa.4158.0.copyload, %bb.s ], [ %.sroa.4151.9.extract.trunc, %bb.t ]
  %i.bl = phi <2 x i64> [ %i.bf, %bb.s ], [ %i.bk, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.v:                                             ; preds = %.lr.ph532, %.lr.ph532, %.lr.ph532, %.lr.ph532
  %i.bm = icmp eq ptr %i.ax, %i.ak
  br i1 %i.bm, label %.loopexit292, label %.lr.ph.i215.preheader

.lr.ph.i215.preheader:                            ; preds = %bb.v
  %i.bn = add i64 %i.au, 2
  br label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %.lr.ph.i215.preheader, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts0_0E0B1t_.exit.i
  %4 = phi i64 [ %i.bs, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts0_0E0B1t_.exit.i ], [ %i.bn, %.lr.ph.i215.preheader ] ; 3 uses
  %i.bo = phi i64 [ %4, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts0_0E0B1t_.exit.i ], [ %i.aw, %.lr.ph.i215.preheader ] ; 3 uses
  %i.bp = phi ptr [ %i.bq, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts0_0E0B1t_.exit.i ], [ %i.ax, %.lr.ph.i215.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 3 uses
  %i.br = load i8, ptr %i.bp, align 1, !alias.scope !165, !noalias !166, !noundef !4
  switch i8 %i.br, label %bb.ab [
    i8 32, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts0_0E0B1t_.exit.i
    i8 13, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts0_0E0B1t_.exit.i
    i8 10, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts0_0E0B1t_.exit.i
    i8 9, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts0_0E0B1t_.exit.i
    i8 61, label %.loopexit293
  ]

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts0_0E0B1t_.exit.i: ; preds = %.lr.ph.i215, %.lr.ph.i215, %.lr.ph.i215, %.lr.ph.i215
  %i.bs = add i64 %4, 1
  %i.bt = icmp eq ptr %i.bq, %i.ak
  br i1 %i.bt, label %.loopexit292, label %.lr.ph.i215

.loopexit293:                                     ; preds = %.lr.ph532, %.lr.ph.i215
  %.sroa.23.0 = phi i64 [ %4, %.lr.ph.i215 ], [ %i.aw, %.lr.ph532 ]
  %.sroa.0.0 = phi ptr [ %i.bq, %.lr.ph.i215 ], [ %i.ax, %.lr.ph532 ] ; 2 uses
  %.sroa.09.0 = phi i64 [ %i.bo, %.lr.ph.i215 ], [ %i.au, %.lr.ph532 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState20check_for_duplicates(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.an, i64 noundef %i.au)
  %i.bu = load i8, ptr %i.d, align 8, !range !164, !noundef !4
  %.not201 = icmp eq i8 %i.bu, -1
  br i1 %.not201, label %bb.ad, label %bb.ac

.loopexit292:                                     ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts0_0E0B1t_.exit.i, %bb.v
  store i64 0, ptr %1, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = load i8, ptr %i.bv, align 8, !range !10, !noundef !4
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %3, i64 0
  br i1 %i.bx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState20check_for_duplicates(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.an, i64 noundef %i.au)
  %i.bz = load i8, ptr %i.b, align 8, !range !164, !noundef !4 ; 2 uses
  %.not199 = icmp eq i8 %i.bz, -1
  br i1 %.not199, label %bb.z, label %bb.y

bb.x:                                             ; preds = %.loopexit292, %bb.aa
  %.sroa.0105.0 = phi i64 [ %.sroa.0105.1, %bb.aa ], [ -1, %.loopexit292 ]
  %.sroa.6107.sroa.0.0 = phi i8 [ %.sroa.6107.sroa.0.1, %bb.aa ], [ 0, %.loopexit292 ]
  %.sroa.6107.sroa.6.sroa.0.0 = phi i56 [ %.sroa.6107.sroa.6.sroa.0.1, %bb.aa ], [ undef, %.loopexit292 ]
  %i.ca = phi <2 x i64> [ %i.ch, %bb.aa ], [ %i.by, %.loopexit292 ]
  store i64 %.sroa.0105.0, ptr %0, align 8
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6107.sroa.0.0, ptr %.sroa.6107.0..sroa_idx, align 8
  %.sroa.6107.sroa.6.0..sroa.6107.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.6107.sroa.6.sroa.0.0, ptr %.sroa.6107.sroa.6.0..sroa.6107.0..sroa_idx.sroa_idx, align 1
  %.sroa.6107.sroa.7.0..sroa.6107.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ca, ptr %.sroa.6107.sroa.7.0..sroa.6107.0..sroa_idx.sroa_idx, align 8
  br label %bb.ak

bb.y:                                             ; preds = %bb.w
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4130.0.copyload = load i56, ptr %.sroa.4130.0..sroa_idx, align 1
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cb = load <2 x i64>, ptr %.sroa.5131.0..sroa_idx, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !4
  %.sroa.4123.8.extract.trunc = trunc i64 %i.cd to i8
  %.sroa.4123.9.extract.shift = lshr i64 %i.cd, 8
  %.sroa.4123.9.extract.trunc = trunc nuw i64 %.sroa.4123.9.extract.shift to i56
  %i.cg = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.cf, i64 0
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.0105.1 = phi i64 [ -1, %bb.y ], [ 3, %bb.z ]
  %.sroa.6107.sroa.0.1 = phi i8 [ %i.bz, %bb.y ], [ %.sroa.4123.8.extract.trunc, %bb.z ]
  %.sroa.6107.sroa.6.sroa.0.1 = phi i56 [ %.sroa.4130.0.copyload, %bb.y ], [ %.sroa.4123.9.extract.trunc, %bb.z ]
  %i.ch = phi <2 x i64> [ %i.cb, %bb.y ], [ %i.cg, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.ab:                                            ; preds = %.lr.ph.i215
  store i64 1, ptr %1, align 8
  store i64 %i.bo, ptr %i.e, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cj = load i8, ptr %i.ci, align 8, !range !10, !noundef !4
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.bo, i64 0
  br i1 %i.ck, label %bb.am, label %bb.an

bb.ac:                                            ; preds = %.loopexit293
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 3, ptr %1, align 8
  store i64 %.sroa.09.0, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.ad:                                            ; preds = %.loopexit293
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !4 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cq = icmp eq ptr %.sroa.0.0, %i.ak
  br i1 %i.cq, label %.loopexit, label %.lr.ph.i229

.lr.ph.i229:                                      ; preds = %bb.ad, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts1_0E0B1t_.exit.i
  %i.cr = phi i64 [ %i.ct, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts1_0E0B1t_.exit.i ], [ %.sroa.23.0, %bb.ad ] ; 4 uses
  %i.cs = phi ptr [ %i.cu, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts1_0E0B1t_.exit.i ], [ %.sroa.0.0, %bb.ad ] ; 2 uses
  %i.ct = add i64 %i.cr, 1                        ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 1 ; 6 uses
  %i.cv = load i8, ptr %i.cs, align 1, !alias.scope !167, !noalias !168, !noundef !4 ; 4 uses
  switch i8 %i.cv, label %bb.ae [
    i8 32, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts1_0E0B1t_.exit.i
    i8 13, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts1_0E0B1t_.exit.i
    i8 10, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts1_0E0B1t_.exit.i
    i8 9, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts1_0E0B1t_.exit.i
    i8 34, label %bb.af
    i8 39, label %bb.af
  ]

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts1_0E0B1t_.exit.i: ; preds = %.lr.ph.i229, %.lr.ph.i229, %.lr.ph.i229, %.lr.ph.i229
  %i.cw = icmp eq ptr %i.cu, %i.ak
  br i1 %i.cw, label %.loopexit, label %.lr.ph.i229

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts1_0E0B1t_.exit.i, %bb.ad
  store i64 0, ptr %1, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx, align 8
  br label %bb.ak

bb.ae:                                            ; preds = %.lr.ph.i229
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cy = load i8, ptr %i.cx, align 8, !range !10, !noundef !4
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i.preheader, label %bb.al

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i.preheader: ; preds = %bb.ae
  %i.da = icmp eq ptr %i.cu, %i.ak
  br i1 %i.da, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range9RangeFromjEINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Q_4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB37_9IterState4nexts2_0E0INtNtBW_12control_flow11ControlFlowB2U_EEB3b_.exit, label %.lr.ph534

bb.af:                                            ; preds = %.lr.ph.i229, %.lr.ph.i229
  %i.db = icmp eq ptr %i.cu, %i.ak
  br i1 %i.db, label %._crit_edge, label %.lr.ph533

bb.ag:                                            ; preds = %.lr.ph533
  %i.dc = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ak
  br i1 %i.dd, label %._crit_edge, label %.lr.ph533

.lr.ph533:                                        ; preds = %bb.af, %bb.ag
  %i.de = phi i64 [ %i.dg, %bb.ag ], [ %i.ct, %bb.af ] ; 3 uses
  %i.df = phi ptr [ %i.dc, %bb.ag ], [ %i.cu, %bb.af ] ; 2 uses
  %i.dg = add i64 %i.de, 1                        ; 2 uses
  %i.dh = load i8, ptr %i.df, align 1, !alias.scope !169, !noalias !170, !noundef !4
  %.not.i = icmp eq i8 %i.dh, %i.cv
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph533
  %i.di = icmp eq i8 %i.cv, 34
  store i64 1, ptr %1, align 8
  store i64 %i.dg, ptr %i.e, align 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.7192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.di, label %bb.ai, label %bb.aj

._crit_edge:                                      ; preds = %bb.ag, %bb.af
  store i64 0, ptr %1, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.449.sroa.4.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.cv, ptr %.sroa.449.sroa.4.0..sroa.449.0..sroa_idx.sroa_idx, align 1
  %.sroa.449.sroa.6.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.449.sroa.6.0..sroa.449.0..sroa_idx.sroa_idx, align 8
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  store i64 0, ptr %0, align 8
  store i64 %i.cn, ptr %.sroa.4189.0..sroa_idx, align 8
  store i64 %i.cp, ptr %.sroa.5190.0..sroa_idx, align 8
  store i64 %i.ct, ptr %.sroa.6191.0..sroa_idx, align 8
  store i64 %i.de, ptr %.sroa.7192.0..sroa_idx, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  store i64 1, ptr %0, align 8
  store i64 %i.cn, ptr %.sroa.4189.0..sroa_idx, align 8
  store i64 %i.cp, ptr %.sroa.5190.0..sroa_idx, align 8
  store i64 %i.ct, ptr %.sroa.6191.0..sroa_idx, align 8
  store i64 %i.de, ptr %.sroa.7192.0..sroa_idx, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge, %bb.ai, %bb.aj, %_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState7recover.exit.thread, %.loopexit294, %bb.ac, %bb.r, %bb.an, %bb.x, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range9RangeFromjEINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Q_4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB37_9IterState4nexts2_0E0INtNtBW_12control_flow11ControlFlowB2U_EEB3b_.exit, %bb.al, %.loopexit
  ret void

bb.al:                                            ; preds = %bb.ae
  store i64 2, ptr %1, align 8
  store i64 %i.cr, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cr, ptr %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx, align 8
  br label %bb.ak

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i: ; preds = %.lr.ph534
  %i.dj = add i64 %i.dm, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ak
  br i1 %i.dl, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range9RangeFromjEINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Q_4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB37_9IterState4nexts2_0E0INtNtBW_12control_flow11ControlFlowB2U_EEB3b_.exit, label %.lr.ph534

.lr.ph534:                                        ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i.preheader, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i
  %i.dm = phi i64 [ %i.dj, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i ], [ %i.ct, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i.preheader ] ; 5 uses
  %i.dn = phi ptr [ %i.dk, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i ], [ %i.cu, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i.preheader ] ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !171, !noalias !172, !noundef !4
  switch i8 %i.do, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i [
    i8 32, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range9RangeFromjEINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Q_4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB37_9IterState4nexts2_0E0INtNtBW_12control_flow11ControlFlowB2U_EEB3b_.exit
    i8 13, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range9RangeFromjEINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Q_4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB37_9IterState4nexts2_0E0INtNtBW_12control_flow11ControlFlowB2U_EEB3b_.exit
    i8 10, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range9RangeFromjEINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Q_4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB37_9IterState4nexts2_0E0INtNtBW_12control_flow11ControlFlowB2U_EEB3b_.exit
    i8 9, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range9RangeFromjEINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Q_4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB37_9IterState4nexts2_0E0INtNtBW_12control_flow11ControlFlowB2U_EEB3b_.exit
  ]

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtNtBc_3ops5range9RangeFromjEINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Q_4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB37_9IterState4nexts2_0E0INtNtBW_12control_flow11ControlFlowB2U_EEB3b_.exit: ; preds = %.lr.ph534, %.lr.ph534, %.lr.ph534, %.lr.ph534, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i.preheader
  %.sroa.056.0 = phi i64 [ %3, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i.preheader ], [ %i.dm, %.lr.ph534 ], [ %i.dm, %.lr.ph534 ], [ %i.dm, %.lr.ph534 ], [ %i.dm, %.lr.ph534 ], [ %3, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB1p_9IterState4nexts2_0E0B1t_.exit.i ] ; 2 uses
  store i64 1, ptr %1, align 8
  store i64 %.sroa.056.0, ptr %i.e, align 8
  store i64 2, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cn, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cp, ptr %.sroa.528.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cr, ptr %.sroa.629.0..sroa_idx, align 8
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.056.0, ptr %.sroa.730.0..sroa_idx, align 8
  br label %bb.ak

bb.am:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMsf_NtNtCs2isvxI5XMib_9quick_xml6events10attributesNtB5_9IterState20check_for_duplicates(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.an, i64 noundef %i.au)
  %i.dp = load i8, ptr %i.c, align 8, !range !164, !noundef !4 ; 2 uses
  %.not200 = icmp eq i8 %i.dp, -1
  br i1 %.not200, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ab, %bb.aq
  %.sroa.079.0 = phi i64 [ %.sroa.079.1, %bb.aq ], [ -1, %bb.ab ]
  %.sroa.681.sroa.0.0 = phi i8 [ %.sroa.681.sroa.0.1, %bb.aq ], [ 0, %bb.ab ]
  %.sroa.681.sroa.6.sroa.0.0 = phi i56 [ %.sroa.681.sroa.6.sroa.0.1, %bb.aq ], [ undef, %bb.ab ]
  %i.dq = phi <2 x i64> [ %i.dx, %bb.aq ], [ %i.cl, %bb.ab ]
  store i64 %.sroa.079.0, ptr %0, align 8
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.681.sroa.0.0, ptr %.sroa.681.0..sroa_idx, align 8
  %.sroa.681.sroa.6.0..sroa.681.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.681.sroa.6.sroa.0.0, ptr %.sroa.681.sroa.6.0..sroa.681.0..sroa_idx.sroa_idx, align 1
  %.sroa.681.sroa.7.0..sroa.681.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.dq, ptr %.sroa.681.sroa.7.0..sroa.681.0..sroa_idx.sroa_idx, align 8
  br label %bb.ak

bb.ao:                                            ; preds = %bb.am
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.4102.0.copyload = load i56, ptr %.sroa.4102.0..sroa_idx, align 1
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dr = load <2 x i64>, ptr %.sroa.5103.0..sroa_idx, align 8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !noundef !4
  %.sroa.497.8.extract.trunc = trunc i64 %i.dt to i8
  %.sroa.497.9.extract.shift = lshr i64 %i.dt, 8
  %.sroa.497.9.extract.trunc = trunc nuw i64 %.sroa.497.9.extract.shift to i56
  %i.dw = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.dv, i64 0
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.079.1 = phi i64 [ -1, %bb.ao ], [ 3, %bb.ap ]
  %.sroa.681.sroa.0.1 = phi i8 [ %i.dp, %bb.ao ], [ %.sroa.497.8.extract.trunc, %bb.ap ]
  %.sroa.681.sroa.6.sroa.0.1 = phi i56 [ %.sroa.4102.0.copyload, %bb.ao ], [ %.sroa.497.9.extract.trunc, %bb.ap ]
end_hunk_0
