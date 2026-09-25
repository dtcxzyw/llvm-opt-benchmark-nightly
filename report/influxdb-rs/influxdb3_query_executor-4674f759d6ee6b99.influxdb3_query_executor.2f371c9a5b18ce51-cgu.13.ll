Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.13?download=true
inline.NumInlined: 3754
inline.NumDeleted: 1026
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsBy_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_8MemberOfNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !9, !noundef !9
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsC2_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_19CreateTableLikeKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !9 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !12, !noundef !9
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXsCo_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_15CreateTableLikeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.a to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.g

_RNvXsCo_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_15CreateTableLikeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.j, %bb.i, %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i5, %bb.g, %bb.f, %bb.e, %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %bb.c, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %i.o, %bb.e ], [ false, %bb.c ], [ false, %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i ], [ %i.p, %bb.f ], [ false, %bb.g ], [ false, %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i5 ], [ %i.z, %bb.j ], [ %i.y, %bb.i ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11529)
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !11528, !noalias !11529, !noundef !9 ; 2 uses
  %.val4.i = load i64, ptr %i.f, align 8, !alias.scope !11529, !noalias !11528, !noundef !9
  %i.g = icmp eq i64 %.val2.i, %.val4.i
  br i1 %i.g, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsCo_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_15CreateTableLikeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !11529, !noalias !11528, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !11528, !noalias !11529, !nonnull !9, !noundef !9
  %i.j = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val3.i, i64 noundef %.val2.i), !noalias !11530
  br i1 %i.j, label %bb.d, label %_RNvXsCo_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_15CreateTableLikeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i8, ptr %i.k, align 8, !range !70, !alias.scope !11528, !noalias !11529, !noundef !9 ; 2 uses
  %.not.i = icmp eq i8 %i.l, 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i8, ptr %i.m, align 8, !range !70, !alias.scope !11529, !noalias !11528, !noundef !9 ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i8 %i.l, %i.n
  br label %_RNvXsCo_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_15CreateTableLikeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i8 %i.n, 2
  br label %_RNvXsCo_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_15CreateTableLikeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11532)
  %.val2.i2 = load i64, ptr %i.e, align 8, !alias.scope !11531, !noalias !11532, !noundef !9 ; 2 uses
  %.val4.i3 = load i64, ptr %i.f, align 8, !alias.scope !11532, !noalias !11531, !noundef !9
  %i.q = icmp eq i64 %.val2.i2, %.val4.i3
  br i1 %i.q, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i5, label %_RNvXsCo_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_15CreateTableLikeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i5: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i6 = load ptr, ptr %i.r, align 8, !alias.scope !11532, !noalias !11531, !nonnull !9, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i7 = load ptr, ptr %i.s, align 8, !alias.scope !11531, !noalias !11532, !nonnull !9, !noundef !9
  %i.t = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val.i7, ptr noundef nonnull %.val3.i6, i64 noundef %.val2.i2), !noalias !11533
  br i1 %i.t, label %bb.h, label %_RNvXsCo_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_15CreateTableLikeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i8, ptr %i.u, align 8, !range !70, !alias.scope !11531, !noalias !11532, !noundef !9 ; 2 uses
  %.not.i8 = icmp eq i8 %i.v, 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i8, ptr %i.w, align 8, !range !70, !alias.scope !11532, !noalias !11531, !noundef !9 ; 2 uses
  br i1 %.not.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = icmp eq i8 %i.v, %i.x
  br label %_RNvXsCo_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_15CreateTableLikeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp eq i8 %i.x, 2
  br label %_RNvXsCo_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_15CreateTableLikeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsCW_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_15VacuumStatementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !range !69, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i8, ptr %i.c, align 8, !range !69, !noundef !9
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.g = load i8, ptr %i.f, align 1, !range !69, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.i = load i8, ptr %i.h, align 1, !range !69, !noundef !9
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.l = load i8, ptr %i.k, align 2, !range !69, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.n = load i8, ptr %i.m, align 2, !range !69, !noundef !9
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 75
  %i.q = load i8, ptr %i.p, align 1, !range !69, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.s = load i8, ptr %i.r, align 1, !range !69, !noundef !9
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.v = load i8, ptr %i.u, align 4, !range !69, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.x = load i8, ptr %i.w, align 4, !range !69, !noundef !9
  %i.y = icmp eq i8 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.aa = load i8, ptr %i.z, align 1, !range !69, !noundef !9
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.ac = load i8, ptr %i.ab, align 1, !range !69, !noundef !9
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %0, align 8, !range !15, !noundef !9
  %.not = icmp eq i64 %i.ae, -1
  %i.af = load i64, ptr %1, align 8, !range !15, !noundef !9
  %i.ag = icmp eq i64 %i.af, -1                   ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ag, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.j

bb.i:                                             ; preds = %bb.g
  br i1 %i.ag, label %bb.k, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.ah, align 8, !noundef !9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.ai, align 8, !noundef !9
  %i.aj = icmp eq i64 %.val5, %.val7
  br i1 %i.aj, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.ak, align 8, !nonnull !9, !noundef !9
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.al, align 8, !nonnull !9, !noundef !9
  %i.am = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val, ptr noundef nonnull %.val6, i64 noundef %.val5)
  br i1 %i.am, label %bb.k, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !40, !noundef !9 ; 2 uses
  %.not3 = icmp eq i64 %i.ao, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !40, !noundef !9 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  %brmerge = or i1 %.not3, %i.ar
  %i.as = and i64 %i.ao, %i.aq
  %.mux = icmp eq i64 %i.as, -1
  br i1 %brmerge, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.l

_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.k, %bb.j, %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.i, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.l
  %.sroa.0.0.shrunk = phi i1 [ %i.at, %bb.l ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %.mux, %bb.k ], [ false, %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ]
  ret i1 %.sroa.0.0.shrunk

bb.l:                                             ; preds = %bb.k
  %i.at = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCsaNmiEuYuYZf_9sqlparser3ast5valueNtB5_5ValueNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsD_NtNtCs6P5GRezSnwZ_4http6header3mapINtB5_9ValueIterNtNtB7_5value11HeaderValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %bb.c [
    i64 2, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.r, %bb.i
  %.sroa.0.0 = phi ptr [ %i.an, %bb.r ], [ %i.w, %bb.i ], [ null, %bb.a ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !align !17, !noundef !9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load i64, ptr %i.f, align 8, !noundef !9 ; 2 uses
  %i.h = icmp ult i64 %i.c, %i.g
  br i1 %i.h, label %bb.l, label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !align !17, !noundef !9 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !9 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !9 ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !noundef !9
  %i.r = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %i.l ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !19, !noundef !9
  %cond = icmp eq i64 %i.t, 0
  br i1 %cond, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @376) #37
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.r, align 8, !range !12, !noundef !9
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.j, label %bb.k, !prof !16

bb.h:                                             ; preds = %bb.e
  store i64 2, ptr %0, align 8
  store i64 2, ptr %i.s, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %bb.b

bb.j:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !9
  store i64 1, ptr %0, align 8
  store i64 %i.y, ptr %i.b, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @377) #37
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !9, !noundef !9
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %i.aa, i64 %i.c ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !19, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = icmp eq i64 %i.ad, 1
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = icmp eq i64 %i.c, %i.ag
  %or.cond11 = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond11, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @378) #37
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !12, !noundef !9
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.l
  store i64 2, ptr %0, align 8
  store i64 2, ptr %i.ac, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.am = load i64, ptr %i.al, align 8, !noundef !9
  store i64 1, ptr %0, align 8
  store i64 %i.am, ptr %i.b, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  store i64 2, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsJ_NtNtCsaNmiEuYuYZf_9sqlparser3ast3dclNtB5_3UseNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !56, !noundef !9 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !56, !noundef !9
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %default.unreachable37 [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %bb.i
    i64 4, label %bb.k
    i64 5, label %bb.m
    i64 6, label %bb.q
    i64 7, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  ]

_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.o ], [ false, %bb.q ], [ %i.bi, %bb.r ], [ false, %bb.m ], [ true, %bb.n ], [ %i.bc, %bb.p ], [ %i.ag, %bb.l ], [ %i.aa, %bb.j ], [ %i.i, %bb.d ], [ %i.o, %bb.f ], [ %i.u, %bb.h ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable37:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val22 = load i64, ptr %i.d, align 8, !noundef !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val24 = load i64, ptr %i.e, align 8, !noundef !9
  %i.f = icmp eq i64 %.val22, %.val24
  br i1 %i.f, label %bb.d, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val23 = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val21 = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  %i.i = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val21, ptr noundef nonnull %.val23, i64 noundef %.val22)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val18 = load i64, ptr %i.j, align 8, !noundef !9 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val20 = load i64, ptr %i.k, align 8, !noundef !9
  %i.l = icmp eq i64 %.val18, %.val20
  br i1 %i.l, label %bb.f, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val19 = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load ptr, ptr %i.n, align 8, !nonnull !9, !noundef !9
  %i.o = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val17, ptr noundef nonnull %.val19, i64 noundef %.val18)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val14 = load i64, ptr %i.p, align 8, !noundef !9 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val16 = load i64, ptr %i.q, align 8, !noundef !9
  %i.r = icmp eq i64 %.val14, %.val16
  br i1 %i.r, label %bb.h, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15 = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13 = load ptr, ptr %i.t, align 8, !nonnull !9, !noundef !9
  %i.u = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val13, ptr noundef nonnull %.val15, i64 noundef %.val14)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10 = load i64, ptr %i.v, align 8, !noundef !9 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12 = load i64, ptr %i.w, align 8, !noundef !9
  %i.x = icmp eq i64 %.val10, %.val12
  br i1 %i.x, label %bb.j, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load ptr, ptr %i.y, align 8, !nonnull !9, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load ptr, ptr %i.z, align 8, !nonnull !9, !noundef !9
  %i.aa = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val9, ptr noundef nonnull %.val11, i64 noundef %.val10)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.ab, align 8, !noundef !9 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val8 = load i64, ptr %i.ac, align 8, !noundef !9
  %i.ad = icmp eq i64 %.val6, %.val8
  br i1 %i.ad, label %bb.l, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load ptr, ptr %i.ae, align 8, !nonnull !9, !noundef !9
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.af, align 8, !nonnull !9, !noundef !9
  %i.ag = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val5, ptr noundef nonnull %.val7, i64 noundef %.val6)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11538)
  %i.aj = load i64, ptr %i.ah, align 8, !range !33, !alias.scope !11537, !noalias !11538, !noundef !9 ; 2 uses
  %i.ak = xor i64 %i.aj, -9223372036854775808
  %i.al = icmp slt i64 %i.aj, 0
  %i.am = select i1 %i.al, i64 %i.ak, i64 2       ; 2 uses
  %i.an = load i64, ptr %i.ai, align 8, !range !33, !alias.scope !11538, !noalias !11537, !noundef !9 ; 2 uses
  %i.ao = xor i64 %i.an, -9223372036854775808
  %i.ap = icmp slt i64 %i.an, 0
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 2
  %i.ar = icmp eq i64 %i.am, %i.aq
  br i1 %i.ar, label %bb.n, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.as = icmp eq i64 %i.am, 2
  br i1 %i.as, label %bb.o, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !11537, !noalias !11538, !noundef !9 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !11538, !noalias !11537, !noundef !9
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.p, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !11538, !noalias !11537, !nonnull !9, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !11537, !noalias !11538, !nonnull !9, !noundef !9
  %i.bc = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.az, i64 noundef %i.au), !noalias !11539
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load i64, ptr %i.bd, align 8, !noundef !9 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4 = load i64, ptr %i.be, align 8, !noundef !9
  %i.bf = icmp eq i64 %.val2, %.val4
  br i1 %i.bf, label %bb.r, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load ptr, ptr %i.bg, align 8, !nonnull !9, !noundef !9
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.bh, align 8, !nonnull !9, !noundef !9
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val, ptr noundef nonnull %.val3, i64 noundef %.val2)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsK_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !95, !noundef !9 ; 3 uses
  %i.b = icmp ne i64 %i.a, 31
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -11
end_hunk_0
