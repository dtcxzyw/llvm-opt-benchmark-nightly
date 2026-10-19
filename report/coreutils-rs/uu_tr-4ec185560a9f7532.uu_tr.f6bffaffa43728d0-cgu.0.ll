Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tr-4ec185560a9f7532.uu_tr.f6bffaffa43728d0-cgu.0?download=true
inline.NumInlined: 1207
inline.NumDeleted: 660
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence23parse_backslash_or_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBH_:bb.a
  store i64 %i.o, ptr %i.q, align 8, !noalias !643
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.b

.loopexit26.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !630
  br label %bb.t

bb.b:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.r = load i8, ptr %i.n, align 1, !alias.scope !644, !noalias !645, !noundef !11 ; 2 uses
  %i.s = zext i8 %i.r to i32
  %i.t = call noundef zeroext i1 @_RNvXsn_NtCsiBsA9HK2Eg7_3nom6traitsReINtB5_9FindTokencE10find_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i32 noundef range(i32 0, 256) %i.s) #32, !noalias !646
  br i1 %i.t, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.u = icmp sgt i8 %i.r, -1
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.u, i64 1, i64 2
  %i.v = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i) #32, !noalias !646 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 6 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !642
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ], !noalias !640
  %i.y = icmp eq i64 %i.x, %i.o
  br i1 %i.y, label %.loopexit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !647), !noalias !640
  call void @llvm.experimental.noalias.scope.decl(metadata !648), !noalias !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !649
  store ptr %i.w, ptr %i.d, align 8, !noalias !650
  store i64 %i.x, ptr %i.q, align 8, !noalias !650
  %.not.i.i.i.i.1.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.1.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.w, align 1, !alias.scope !651, !noalias !652, !noundef !11 ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = call noundef zeroext i1 @_RNvXsn_NtCsiBsA9HK2Eg7_3nom6traitsReINtB5_9FindTokencE10find_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i32 noundef range(i32 0, 256) %i.aa) #32, !noalias !646
  br i1 %i.ab, label %bb.f, label %.thread.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp sgt i8 %i.z, -1
  %.sroa.013.0.i.i.i.i.i.1.i.i.i.i.i.i.i.i = select i1 %i.ac, i64 1, i64 2
  %i.ad = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef %.sroa.013.0.i.i.i.i.i.1.i.i.i.i.i.i.i.i) #32, !noalias !646 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 6 uses
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !649
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ], !noalias !640
  %i.ag = icmp eq i64 %i.af, %i.x
  br i1 %i.ag, label %.loopexit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !653), !noalias !640
  call void @llvm.experimental.noalias.scope.decl(metadata !654), !noalias !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !655
  store ptr %i.ae, ptr %i.d, align 8, !noalias !656
  store i64 %i.af, ptr %i.q, align 8, !noalias !656
  %.not.i.i.i.i.2.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.2.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.ae, align 1, !alias.scope !657, !noalias !652, !noundef !11 ; 2 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = call noundef zeroext i1 @_RNvXsn_NtCsiBsA9HK2Eg7_3nom6traitsReINtB5_9FindTokencE10find_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i32 noundef range(i32 0, 256) %i.ai) #32, !noalias !646
  br i1 %i.aj, label %bb.i, label %.thread.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp sgt i8 %i.ah, -1
  %.sroa.013.0.i.i.i.i.i.2.i.i.i.i.i.i.i.i = select i1 %i.ak, i64 1, i64 2
  %i.al = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef %.sroa.013.0.i.i.i.i.i.2.i.i.i.i.i.i.i.i) #32, !noalias !646 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !655
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ], !noalias !640
  %i.ao = icmp eq i64 %i.an, %i.af
  br i1 %i.ao, label %.loopexit.i.i.i.i.i, label %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.sroa.3.0.i.i.lcssa21.ph.i.i.i.i.i.i.i.i = phi i64 [ %i.af, %bb.h ], [ 0, %bb.g ], [ %i.x, %bb.e ], [ 0, %bb.d ]
  %.sroa.0.0.i.i.lcssa17.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.h ], [ %i.ae, %bb.g ], [ %i.w, %bb.e ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !642
  br label %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.b, %.loopexit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !642
  br label %.loopexit.i.i.i.i.i

_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i.i, %bb.i
  %.sroa.3.0.i.i23.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.lcssa21.ph.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ %i.an, %bb.i ]
  %.sroa.0.0.i.i19.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.lcssa17.ph.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ %i.am, %bb.i ] ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.0.0.i.i19.i.i.i.i.i.i.i.i to i64
  %i.aq = sub i64 %i.ap, %i.p                     ; 3 uses
  %.not.i.i.i47.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.aq, %i.o
  br i1 %.not.i.i.i47.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.l, !prof !24

bb.k:                                             ; preds = %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef range(i64 0, -9223372036854775808) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #33, !noalias !658
  unreachable

bb.l:                                             ; preds = %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !659
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.aq) #32, !noalias !660
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.ar = load i64, ptr %i.c, align 8, !range !22, !alias.scope !661, !noalias !659, !noundef !11
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.m, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i, !prof !24

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !662
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.at, i64 16, i1 false), !noalias !663
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #33, !noalias !664
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !661, !noalias !659, !nonnull !11, !noundef !11 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !661, !noalias !659, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !659
  switch i64 %i.ax, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %.loopexit.i.i.i.i.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i
  %i.ay = load i8, ptr %i.av, align 1, !alias.scope !665, !noalias !660, !noundef !11 ; 2 uses
  switch i8 %i.ay, label %bb.o [
    i8 43, label %.loopexit.i.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.av, align 1, !alias.scope !665, !noalias !660
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i, %bb.n
  %i.az = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ay, %bb.n ]
  %cond.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.az, 43 ; 2 uses
  %i.ba = sext i1 %cond.i.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %i.ax, %i.ba ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i.i.i.i.i.i.i = zext i1 %cond.i.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.0.idx.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.bb = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.bb, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, label %.preheader57.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.o
  %.not5465.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not5465.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_octalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = load i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !665, !noalias !660, !noundef !11
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48                  ; 2 uses
  %i.bf = icmp ugt i32 %i.be, 7
  br i1 %i.bf, label %.loopexit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.bh = trunc nuw nsw i32 %i.be to i8           ; 2 uses
  br i1 %i.bg, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_octalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.164.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.bj = add nsw i64 %.sroa.15.163.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bk = shl nuw i8 %.sroa.043.062.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.bl = trunc nuw nsw i32 %i.bq to i8
  %i.bm = or disjoint i8 %i.bk, %i.bl             ; 2 uses
  %.not53.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not53.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_octalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.thread.i.i, label %.preheader57.i.i.i.i.i.i.i.i.i.i.i

.preheader57.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.o, %bb.q
  %.sroa.0.164.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.q ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %bb.o ] ; 2 uses
  %.sroa.15.163.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.q ], [ %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i, %bb.o ]
  %.sroa.043.062.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bm, %bb.q ], [ 0, %bb.o ] ; 2 uses
  %i.bn = icmp ugt i8 %.sroa.043.062.i.i.i.i.i.i.i.i.i.i.i, 31
  br i1 %i.bn, label %.loopexit.i.i.i.i.i, label %bb.r, !prof !24

bb.r:                                             ; preds = %.preheader57.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = load i8, ptr %.sroa.0.164.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !665, !noalias !660, !noundef !11
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ugt i32 %i.bq, 7
  br i1 %i.br, label %.loopexit.i.i.i.i.i, label %bb.q

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %.pre.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bs, align 1, !alias.scope !665, !noalias !660
  %i.bt = zext i8 %.pre.i.i.i.i.i.i.i.i.i.i to i32
  %i.bu = add nsw i32 %i.bt, -48                  ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 8
  br i1 %i.bv, label %bb.s, label %.loopexit.i.i.i.i.i

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = shl nuw nsw i8 %i.bh, 3
  %i.bx = trunc nuw nsw i32 %i.bu to i8
  %i.by = or disjoint i8 %i.bw, %i.bx
  br label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_octalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.thread.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.r, %.preheader57.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i, %bb.n, %bb.n, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i, %bb.j, %bb.i, %bb.f, %bb.c
  %.sroa.8.029.i.i.i.i.i.i = phi ptr [ %i.n, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.f ], [ %i.ae, %bb.i ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.n ], [ %i.n, %bb.n ], [ %i.n, %bb.j ], [ %i.n, %bb.c ], [ %i.n, %.preheader57.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.r ]
  %.sroa.13.028.i.i.i.i.i.i = phi i64 [ %i.o, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.x, %bb.f ], [ %i.af, %bb.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.n ], [ %i.o, %bb.n ], [ %i.o, %bb.j ], [ %i.o, %bb.c ], [ %i.o, %.preheader57.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.r ]
  %.sroa.18.027.i.i.i.i.i.i = phi i8 [ 2, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i ], [ 42, %bb.f ], [ 42, %bb.i ], [ 2, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.n ], [ 2, %bb.n ], [ 27, %bb.j ], [ 42, %bb.c ], [ 2, %.preheader57.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !638
  br label %bb.t

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_octalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.thread.i.i: ; preds = %bb.q, %bb.s, %bb.p, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = phi i8 [ %i.by, %bb.s ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bh, %bb.p ], [ %i.bm, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !638
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.0.0.i.i19.i.i.i.i.i.i.i.i, ptr %i.ca, align 8
  %.sroa.416.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.3.0.i.i23.i.i.i.i.i.i.i.i, ptr %.sroa.416.0..sroa_idx.i.i.i, align 8
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 %i.bz, ptr %.sroa.517.0..sroa_idx.i.i.i, align 8
  br label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence23parse_backslash_or_charINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit

bb.t:                                             ; preds = %.loopexit.i.i.i.i.i, %.loopexit26.i.i.i.i.i
  %.sroa.18.0.ph.i.i.i = phi i8 [ 0, %.loopexit26.i.i.i.i.i ], [ %.sroa.18.027.i.i.i.i.i.i, %.loopexit.i.i.i.i.i ]
  %.sroa.13.0.ph.i.i.i = phi i64 [ %2, %.loopexit26.i.i.i.i.i ], [ %.sroa.13.028.i.i.i.i.i.i, %.loopexit.i.i.i.i.i ]
  %.sroa.8.0.ph.in.i.i.i = phi ptr [ %1, %.loopexit26.i.i.i.i.i ], [ %.sroa.8.029.i.i.i.i.i.i, %.loopexit.i.i.i.i.i ]
  store i64 1, ptr %i.g, align 8
  %.sroa.462.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %.sroa.8.0.ph.in.i.i.i, ptr %.sroa.462.0..sroa_idx.i.i.i, align 8
  %.sroa.563.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 %.sroa.13.0.ph.i.i.i, ptr %.sroa.563.0..sroa_idx.i.i.i, align 8
  %.sroa.664.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i8 %.sroa.18.0.ph.i.i.i, ptr %.sroa.664.0..sroa_idx.i.i.i, align 8
  %.sroa.765.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 25 ; 2 uses
  store i56 0, ptr %.sroa.765.0..sroa_idx.i.i.i, align 1
  call fastcc void @_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_backslashINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2j_NtB6_9StreamingEEBH_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) #32
  %i.cb = load i64, ptr %i.g, align 8, !range !25, !noundef !11 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.u, label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence23parse_backslash_or_charINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !669
  store ptr %1, ptr %i.a, align 8, !noalias !670
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.cd, align 8, !noalias !670
  br i1 %i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i, label %bb.v

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i: ; preds = %bb.u
  %i.ce = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef 1) #32, !noalias !671 ; 2 uses
  %i.cf = extractvalue { ptr, i64 } %i.ce, 1
  %i.cg = extractvalue { ptr, i64 } %i.ce, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !669
  %i.ch = load i8, ptr %1, align 1, !alias.scope !672, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !669
  store i56 0, ptr %.sroa.765.0..sroa_idx.i.i.i, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i
  %storemerge20.i.i = phi ptr [ %1, %bb.v ], [ %i.cg, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i ]
  %storemerge19.i.i = phi i64 [ 0, %bb.v ], [ %i.cf, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i ]
  %storemerge.i.i = phi i8 [ 24, %bb.v ], [ %i.ch, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i ]
  %.sink.i.i = phi i64 [ 1, %bb.v ], [ -1, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i ]
  store ptr %storemerge20.i.i, ptr %.sroa.462.0..sroa_idx.i.i.i, align 8
  store i64 %storemerge19.i.i, ptr %.sroa.563.0..sroa_idx.i.i.i, align 8
  store i8 %storemerge.i.i, ptr %.sroa.664.0..sroa_idx.i.i.i, align 8
  br label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence23parse_backslash_or_charINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit

_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence23parse_backslash_or_charINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit: ; preds = %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_octalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.thread.i.i, %bb.w, %bb.t
  %i.ci = phi i64 [ %i.cb, %bb.t ], [ %.sink.i.i, %bb.w ], [ -1, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_octalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.thread.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.033.0.copyload = load i64, ptr %i.cj, align 8 ; 3 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.434.sroa.0.0.copyload = load i64, ptr %.sroa.434.0..sroa_idx, align 8 ; 2 uses
  %.sroa.434.sroa.4.0..sroa.434.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.434.sroa.4.0.copyload = load i8, ptr %.sroa.434.sroa.4.0..sroa.434.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  switch i64 %i.ci, label %.sink.split [
    i64 -1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence23parse_backslash_or_charINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit
  %i.ck = inttoptr i64 %.sroa.033.0.copyload to ptr
  %i.cl = icmp ne i64 %.sroa.033.0.copyload, 0
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.cm, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.434.sroa.0.0.copyload, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.434.sroa.4.0.copyload, ptr %.sroa.517.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  ret void

.sink.split:                                      ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence23parse_backslash_or_charINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit
  %.sroa.722.sroa.6.0..sroa.722.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1028.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.722.sroa.6.0..sroa.722.0..sroa_idx.sroa_idx, i64 7, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence23parse_backslash_or_charINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit, %.sink.split
  %.sroa.1028.sroa.0.0 = phi i64 [ undef, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence23parse_backslash_or_charINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit ], [ %.sroa.434.sroa.0.0.copyload, %.sink.split ]
  %.sroa.1028.sroa.5.0 = phi i8 [ undef, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence23parse_backslash_or_charINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit ], [ %.sroa.434.sroa.4.0.copyload, %.sink.split ]
  %i.cn = inttoptr i64 %.sroa.033.0.copyload to ptr
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.765.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1028.sroa.6, i64 7, i1 false)
  store i64 %i.ci, ptr %0, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.1028.sroa.0.0, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.1028.sroa.5.0, ptr %.sroa.664.0..sroa_idx, align 8
  br label %bb.y
}

; Function Attrs: cold nounwind nonlazybind uwtable
define void @_RNvCslbrwWrVtb7E_5uu_tr6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 712)) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECslbrwWrVtb7E_5uu_tr.exit:
  %i.a = alloca [640 x i8], align 8               ; 54 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [640 x i8], align 8               ; 54 uses
  %i.d = alloca [640 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [640 x i8], align 8               ; 54 uses
  %i.g = alloca [640 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [640 x i8], align 8               ; 54 uses
  %i.j = alloca [640 x i8], align 8               ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [640 x i8], align 8               ; 58 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 628
  %i.p = alloca [640 x i8], align 8               ; 15 uses
  %i.q = alloca [640 x i8], align 8               ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [712 x i8], align 8               ; 59 uses
  %i.x = alloca [712 x i8], align 8               ; 5 uses
  %i.y = alloca [712 x i8], align 8               ; 5 uses
  %i.z = alloca [712 x i8], align 8               ; 5 uses
  %i.aa = alloca [712 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 2) #32
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !alias.scope !733 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.ab, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.ab, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 8) #32
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.u, align 8, !alias.scope !734 ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.0.copyload.i11, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.i10.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i12, align 8
  %.sroa.5.i10.sroa.4.0..sroa.55.0..sroa_idx.i12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.i10.sroa.4.0.copyload = load i64, ptr %.sroa.5.i10.sroa.4.0..sroa.55.0..sroa_idx.i12.sroa_idx, align 8
  %.sroa.5.i10.sroa.0.0 = select i1 %i.ac, ptr undef, ptr %.sroa.5.i10.sroa.0.0.copyload
  %.sroa.5.i10.sroa.4.0 = select i1 %i.ac, i64 undef, i64 %.sroa.5.i10.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 8) #32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !11, !noundef !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !11
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag) #32
  %.sroa.0.0.copyload.i17 = load i64, ptr %i.t, align 8, !alias.scope !735 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.0.copyload.i17, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.i16.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i18, align 8
  %.sroa.5.i16.sroa.4.0..sroa.55.0..sroa_idx.i18.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.i16.sroa.4.0.copyload = load i64, ptr %.sroa.5.i16.sroa.4.0..sroa.55.0..sroa_idx.i18.sroa_idx, align 8
  %.sroa.5.i16.sroa.0.0 = select i1 %i.ah, ptr undef, ptr %.sroa.5.i16.sroa.0.0.copyload
  %.sroa.5.i16.sroa.4.0 = select i1 %i.ah, i64 undef, i64 %.sroa.5.i16.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 13) #32
  %.sroa.0.0.copyload.i23 = load i64, ptr %i.r, align 8, !alias.scope !736 ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0.0.copyload.i23, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.i22.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i24, align 8
  %.sroa.5.i22.sroa.4.0..sroa.55.0..sroa_idx.i24.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5.i22.sroa.4.0.copyload = load i64, ptr %.sroa.5.i22.sroa.4.0..sroa.55.0..sroa_idx.i24.sroa_idx, align 8
  %.sroa.5.i22.sroa.0.0 = select i1 %i.ai, ptr undef, ptr %.sroa.5.i22.sroa.0.0.copyload
  %.sroa.5.i22.sroa.4.0 = select i1 %i.ai, i64 undef, i64 %.sroa.5.i22.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.w, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence20solve_set_characters:bb.a
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit191, %bb.az
  %.val152 = load i64, ptr %i.j, align 8, !range !12, !noundef !11 ; 2 uses
  %i.gn = icmp eq i64 %.val152, 0
  br i1 %i.gn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit192, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val153 = load ptr, ptr %i.ek, align 8, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val153, i64 noundef %.val152, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit192

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit192: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val150 = load i64, ptr %i.l, align 8, !range !12, !noundef !11 ; 2 uses
  %i.go = icmp eq i64 %.val150, 0
  br i1 %i.go, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit193, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit192
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val174, i64 noundef %.val150, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit193

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit193: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit192, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ba

bb.az:                                            ; preds = %bb.al, %bb.ag
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.gp, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ba:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val = load i64, ptr %i.s, align 8, !range !12, !noundef !11 ; 2 uses
  %i.gq = icmp eq i64 %.val, 0
  br i1 %i.gq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gr = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val149 = load ptr, ptr %i.gr, align 8, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val149, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.be

.loopexit:                                        ; preds = %bb.bh, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph.thread, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit
  %i.gs = icmp eq ptr %i.ee, %i.dj
  br i1 %i.gs, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit

bb.bc:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit
  %.not146 = icmp eq i64 %.sroa.8246.0277, 0
  br i1 %.not146, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph: ; preds = %bb.bc
  store <2 x ptr> %i.dr, ptr %i.dl, align 8
  store i64 %.sroa.8246.0277, ptr %.sroa.5100.0..sroa_idx, align 8
  store ptr null, ptr %i.c, align 8
  store ptr null, ptr %i.dm, align 8
  %i.gt = call fastcc noundef i64 @_RINvMsg_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENvMs1_B2c_B2a_7flattenEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemhEL_EE9iter_foldjINvNvXsi_B6_IBS_ppEB3Q_5count5countB3g_EEB2e_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.c) #34 ; 2 uses
  %i.gu = load i8, ptr %.sroa.4253.0.copyload, align 8, !range !15, !noundef !11
  %i.gv = icmp eq i8 %i.gu, 4
  %i.gw = icmp eq i64 %i.gt, 0
  %or.cond = and i1 %i.gv, %i.gw
  br i1 %or.cond, label %.loopexit, label %bb.bd

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph.thread: ; preds = %bb.bc
  %i.gx = load i8, ptr %.sroa.4253.0.copyload, align 8, !range !15, !noundef !11
  %i.gy = icmp eq i8 %i.gx, 4
  br i1 %i.gy, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph.thread, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph
  %.sroa.024.0299 = phi i64 [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph.thread ], [ %i.gt, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph ]
  br i1 %i.dp, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197: ; preds = %bb.bd, %bb.bg
  %.sroa.8249.0274 = phi i64 [ %i.ha, %bb.bg ], [ 1, %bb.bd ] ; 2 uses
  %.sroa.0247.0273 = phi ptr [ %i.gz, %bb.bg ], [ %i.ds, %bb.bd ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0247.0273, i64 16 ; 2 uses
  %i.ha = add nuw nsw i64 %.sroa.8249.0274, 1
  %i.hb = load i8, ptr %.sroa.0247.0273, align 8, !range !15, !noundef !11
  %i.hc = icmp eq i8 %i.hb, 4
  br i1 %i.hc, label %bb.bh, label %bb.bg

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.thread: ; preds = %bb.bd, %bb.bg, %bb.k, %bb.l
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.hd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ba

bb.be:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194, %bb.h, %bb.g
  %.sroa.8.0 = phi ptr [ %.sroa.4256.0.copyload, %bb.g ], [ %.sroa.4256.0.copyload, %bb.h ], [ %.sroa.8.0.copyload220, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194 ]
  %.sroa.0217.0 = phi i64 [ %.sroa.0255.0.copyload, %bb.g ], [ %.sroa.0255.0.copyload, %bb.h ], [ %.sroa.0217.0.copyload218, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194 ] ; 2 uses
  %i.he = icmp eq i64 %.sroa.0217.0, 0
  br i1 %i.he, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit198, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = shl nuw i64 %.sroa.0217.0, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0, i64 noundef %i.hf, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit198

bb.bg:                                            ; preds = %bb.bh, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197
  %i.hg = icmp eq ptr %i.gz, %i.y
  br i1 %i.hg, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197, !llvm.loop !771

bb.bh:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197
  store <2 x ptr> %i.du, ptr %i.dn, align 8
  store i64 %.sroa.8249.0274, ptr %.sroa.5109.0..sroa_idx, align 8
  store ptr null, ptr %i.b, align 8
  store ptr null, ptr %i.do, align 8
  %i.hh = call fastcc noundef i64 @_RINvMsg_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENvMs1_B2c_B2a_7flattenEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemhEL_EE9iter_foldjINvNvXsi_B6_IBS_ppEB3Q_5count5countB3g_EEB2e_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b) #34
  %i.hi = icmp eq i64 %i.hh, %.sroa.024.0299
  br i1 %i.hi, label %.loopexit, label %bb.bg

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit198: ; preds = %bb.e, %bb.be, %bb.bf, %bb.d
  %i.hj = icmp eq i64 %.sroa.0252.0.copyload, 0
  br i1 %i.hj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit189, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit198
  %i.hk = shl nuw i64 %.sroa.0252.0.copyload, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4253.0.copyload, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit189
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence8from_str(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 3 uses
  %i.s = alloca [16 x i8], align 8                ; 3 uses
  %.sroa.0.i.i.i.i.i.i.i.i.i.i.i = alloca i32, align 4 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 16 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 15 uses
  %i.ar = alloca [48 x i8], align 8               ; 13 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 12 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [1 x i8], align 1                ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 10 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 6 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [32 x i8], align 8               ; 10 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = alloca [16 x i8], align 8               ; 7 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 6 uses
  %i.bm = alloca [16 x i8], align 8               ; 6 uses
  %i.bn = alloca [32 x i8], align 8               ; 8 uses
  %i.bo = alloca [16 x i8], align 8               ; 6 uses
  %i.bp = alloca [16 x i8], align 8               ; 6 uses
  %i.bq = alloca [32 x i8], align 8               ; 8 uses
  %i.br = alloca [16 x i8], align 8               ; 6 uses
  %i.bs = alloca [32 x i8], align 8               ; 9 uses
  %i.bt = alloca [32 x i8], align 8               ; 10 uses
  %i.bu = alloca [56 x i8], align 8               ; 13 uses
  %i.bv = alloca [32 x i8], align 8               ; 6 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1401
  %i.bw = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 128, i64 noundef range(i64 1, 9) 8) #32, !noalias !1401 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.b, label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.preheader.i

_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.preheader.i: ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.435.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.536.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.747.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 25
  %.sroa.747.i.sroa.4.0..sroa.747.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.443.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.544.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.755.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.431.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.532.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.437.0..sroa_idx.i9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.538.0..sroa_idx.i10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.6109.sroa.5.0..sroa.6109.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %.sroa.7111.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.7257.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 25
  %.sroa.8258.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 26
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.434.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.438.0..sroa_idx.i62.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.730.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %.sroa.9.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.25.34..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %.sroa.561.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %.sroa.763.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 49
  %i.da = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5.0..sroa_idx.i53.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.88.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.815.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.427.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.42.0..sroa_idx.i.i.i4104.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i5105.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.64.0..sroa_idx.i.i.i6106.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 4 uses
  %.sroa.517.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 4 uses
  %.sroa.765.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 25 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i.i.i.i.i.i.1.i.i.i.i.i.i.i.i.i.1.i.i.i.i.i.i.i.i.1.i.i.i.i.i.i.i.i.1.i.i.i.i.i.i.i.1.i.i.i.i.i.i.i.1.i.i.i.i.i.i.1.i.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 128) #35, !noalias !1402
  unreachable

_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.i: ; preds = %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i, %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.preheader.i
  %.sroa.12.0.i = phi i64 [ %i.afd, %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i ], [ 0, %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.preheader.i ] ; 11 uses
  %.sroa.9.0.i = phi ptr [ %i.afb, %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i ], [ %i.bw, %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.preheader.i ] ; 14 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.053.0.copyload.i, %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i ], [ 4, %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.preheader.i ] ; 9 uses
  %.sroa.3.0.i = phi i64 [ %.sroa.1215.6.i, %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i ], [ %2, %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.preheader.i ] ; 17 uses
  %.sroa.0.0.i = phi ptr [ %.sroa.014.6.i, %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i ], [ %1, %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.preheader.i ] ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !1403
  call fastcc void @_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence23parse_backslash_or_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBH_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.bt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i) #32, !noalias !1404
  %i.ei = load i64, ptr %i.bt, align 8, !range !25, !noalias !1403, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ei, -1
  %.sroa.034.0.copyload.i.i.i.i.i = load ptr, ptr %i.by, align 8, !noalias !1403 ; 3 uses
  %.sroa.435.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.435.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1403 ; 3 uses
  %.sroa.536.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.536.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1403 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread84.i.i.i.i

_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread84.i.i.i.i: ; preds = %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.i
  %.sroa.747.i.sroa.0.0.copyload.i.i.i.i = load i8, ptr %.sroa.747.0..sroa_idx.i.i.i.i.i, align 1, !noalias !1403
  %.sroa.747.i.sroa.4.sroa.0.0.copyload.i.i.i.i = load i48, ptr %.sroa.747.i.sroa.4.0..sroa.747.0..sroa_idx.i.sroa_idx.i.i.i.i, align 2, !noalias !1403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1403
  br label %bb.d

bb.c:                                             ; preds = %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1403
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !1408
  store ptr %.sroa.034.0.copyload.i.i.i.i.i, ptr %i.br, align 8, !noalias !1409
  store i64 %.sroa.435.0.copyload.i.i.i.i.i, ptr %i.bz, align 8, !noalias !1409
  %i.ej = icmp ne i64 %.sroa.435.0.copyload.i.i.i.i.i, 0 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i = zext i1 %i.ej to i64
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i.i, label %.thread.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i
  %i.ek = phi i64 [ %i.em, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload.i.i.i.i.i, i64 %i.ek
  %.val7.i.i.i.i.i.i.i.i = load i8, ptr %i.el, align 1, !alias.scope !1410, !noalias !1411, !noundef !11
  %.not.i.i14.i.i.i.i.i.i.i = icmp eq i8 %.val7.i.i.i.i.i.i.i.i, 45
  br i1 %.not.i.i14.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i, label %.thread.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.em = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.em, %..i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i
  %i.en = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.br, i64 noundef 1) #32, !noalias !1412 ; 2 uses
  %i.eo = extractvalue { ptr, i64 } %i.en, 0      ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.en, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1408
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !1413
  call fastcc void @_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence23parse_backslash_or_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBH_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.ep) #32, !noalias !1404
  %i.eq = load i64, ptr %i.bs, align 8, !range !25, !noalias !1413, !noundef !11 ; 2 uses
  %.not61.i.i.i.i.i.i = icmp eq i64 %i.eq, -1
  %.sroa.042.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !noalias !1413 ; 3 uses
  %.sroa.443.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.443.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1413 ; 2 uses
  %.sroa.544.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.544.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1413 ; 3 uses
  br i1 %.not61.i.i.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, label %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread98.i.i.i.i

_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread98.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i
  %.sroa.755.i.i.sroa.0.0.copyload.i.i.i.i = load i56, ptr %.sroa.755.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !1413 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1413
  %.sroa.771.i.sroa.0.0.extract.trunc106.i.i.i.i = trunc i56 %.sroa.755.i.i.sroa.0.0.copyload.i.i.i.i to i8
  %.sroa.771.i.sroa.4.0.extract.shift107.i.i.i.i = lshr i56 %.sroa.755.i.i.sroa.0.0.copyload.i.i.i.i, 8
  %.sroa.771.i.sroa.4.0.extract.trunc108.i.i.i.i = trunc nuw i56 %.sroa.771.i.sroa.4.0.extract.shift107.i.i.i.i to i48
  br label %bb.d

.thread.i.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1408
  br label %.thread110.thread.i

bb.d:                                             ; preds = %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread98.i.i.i.i, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread84.i.i.i.i
  %.sroa.0.097.i.i.i.i = phi i64 [ %i.ei, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread84.i.i.i.i ], [ %i.eq, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread98.i.i.i.i ]
  %.sroa.7.096.i.i.i.i = phi ptr [ %.sroa.034.0.copyload.i.i.i.i.i, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread84.i.i.i.i ], [ %.sroa.042.0.copyload.i.i.i.i.i.i, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread98.i.i.i.i ] ; 3 uses
  %.sroa.11.095.i.i.i.i = phi i64 [ %.sroa.435.0.copyload.i.i.i.i.i, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread84.i.i.i.i ], [ %.sroa.443.0.copyload.i.i.i.i.i.i, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread98.i.i.i.i ] ; 3 uses
  %.sroa.14.094.i.i.i.i = phi i8 [ %.sroa.536.0.copyload.i.i.i.i.i, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread84.i.i.i.i ], [ %.sroa.544.0.copyload.i.i.i.i.i.i, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread98.i.i.i.i ]
  %.sroa.17.093.i.i.i.i = phi i8 [ %.sroa.747.i.sroa.0.0.copyload.i.i.i.i, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread84.i.i.i.i ], [ %.sroa.771.i.sroa.0.0.extract.trunc106.i.i.i.i, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread98.i.i.i.i ]
  %.sroa.20.sroa.0.092.i.i.i.i = phi i48 [ %.sroa.747.i.sroa.4.sroa.0.0.copyload.i.i.i.i, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread84.i.i.i.i ], [ %.sroa.771.i.sroa.4.0.extract.trunc108.i.i.i.i, %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0BJ_EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB48_NtB6_9StreamingEEBR_.exit.thread98.i.i.i.i ]
  switch i64 %.sroa.0.097.i.i.i.i, label %default.unreachable [
    i64 0, label %.thread.loopexit.i
    i64 1, label %.thread110.thread.i
    i64 2, label %bb.e
  ]

default.unreachable:                              ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i, %bb.gw, %bb.gs, %bb.et, %bb.ep, %bb.ec, %bb.dy, %bb.dt, %bb.dp, %bb.ct, %bb.y, %bb.g, %bb.d
  unreachable

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i: ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1413
  %i.er = zext i8 %.sroa.536.0.copyload.i.i.i.i.i to i32 ; 2 uses
  %i.es = zext i8 %.sroa.544.0.copyload.i.i.i.i.i.i to i32 ; 2 uses
  %.not.i5.i.i.i.i = icmp ugt i8 %.sroa.536.0.copyload.i.i.i.i.i, %.sroa.544.0.copyload.i.i.i.i.i.i ; 2 uses
  %.sroa.08.1.insert.shift.i.i.i.i.i = shl nuw nsw i32 %i.er, 8
  %.sroa.08.2.insert.shift.i.i.i.i.i = shl nuw nsw i32 %i.es, 16
  %.sroa.08.2.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.08.1.insert.shift.i.i.i.i.i, %.sroa.08.2.insert.shift.i.i.i.i.i
  %.sroa.08.0.insert.insert.i.i.i.i.i = or disjoint i32 %.sroa.08.2.insert.insert.i.i.i.i.i, 1
  %.sroa.5.sroa.4.0.i.i.i.i.i = select i1 %.not.i5.i.i.i.i, i32 %i.er, i32 %.sroa.08.0.insert.insert.i.i.i.i.i
  %.sroa.19.32.insert.ext.i.i = zext nneg i32 %.sroa.5.sroa.4.0.i.i.i.i.i to i64
  %.sroa.13.24.extract.trunc.i.i = select i1 %.not.i5.i.i.i.i, i32 11, i32 -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.042.0.copyload.i.i.i.i.i.i) ]
  br label %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i

bb.e:                                             ; preds = %bb.d
  %.sroa.14.094.i.i.i.fr.i = freeze i8 %.sroa.14.094.i.i.i.i ; 4 uses
  %.sroa.19.34.insert.ext.i.i = zext i48 %.sroa.20.sroa.0.092.i.i.i.i to i64
  %.sroa.19.34.insert.shift.i.i = shl nuw nsw i64 %.sroa.19.34.insert.ext.i.i, 8
  %.sroa.19.33.insert.ext.i.i = zext i8 %.sroa.17.093.i.i.i.i to i64
  %.sroa.19.34.insert.insert.i.i = or disjoint i64 %.sroa.19.34.insert.shift.i.i, %.sroa.19.33.insert.ext.i.i
  %.sroa.19.33.extract.trunc.i.i = trunc nuw i64 %.sroa.19.34.insert.insert.i.i to i56 ; 3 uses
  %i.et = icmp ugt i8 %.sroa.14.094.i.i.i.fr.i, 56
  br i1 %i.et, label %.thread110.i, label %.thread124.loopexit.split.loop.exit686.i

.thread110.i:                                     ; preds = %bb.e
  %i.eu = icmp eq i8 %.sroa.14.094.i.i.i.fr.i, 58
  br i1 %i.eu, label %.thread110.thread.i, label %.thread124.loopexit.split.loop.exit.i

.thread110.thread.i:                              ; preds = %.thread110.i, %bb.d, %.thread.i.i
  %.sroa.79.0.ph116528.i = phi i56 [ %.sroa.19.33.extract.trunc.i.i, %.thread110.i ], [ undef, %.thread.i.i ], [ undef, %bb.d ]
  %.sroa.56.0.ph120527.i = phi i64 [ %.sroa.11.095.i.i.i.i, %.thread110.i ], [ undef, %.thread.i.i ], [ undef, %bb.d ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !1420
  store ptr %.sroa.0.0.i, ptr %i.bp, align 8, !noalias !1421
  store i64 %.sroa.3.0.i, ptr %i.cb, align 8, !noalias !1421
  %i.ev = icmp ne i64 %.sroa.3.0.i, 0             ; 7 uses
  %..i.i.i.i.i.i.i.i.i13.i = zext i1 %i.ev to i64 ; 3 uses
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i.i22.i, label %.loopexit.i.i.i.i.a

.lr.ph.i.i.i.i.i.i.i22.i:                         ; preds = %.thread110.thread.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i25.i
  %i.ew = phi i64 [ %i.ey, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i25.i ], [ 0, %.thread110.thread.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.ew
  %.val7.i.i.i.i.i.i.i23.i = load i8, ptr %i.ex, align 1, !alias.scope !1422, !noalias !1423, !noundef !11
  %.not.i.i14.i.i.i.i.i.i24.i = icmp eq i8 %.val7.i.i.i.i.i.i.i23.i, 91
  br i1 %.not.i.i14.i.i.i.i.i.i24.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i25.i, label %.loopexit.i.i.i.i.a

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i25.i: ; preds = %.lr.ph.i.i.i.i.i.i.i22.i
  %i.ey = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i26.i = icmp eq i64 %i.ey, %..i.i.i.i.i.i.i.i.i13.i
  br i1 %exitcond.not.i.i.i.i.i.i.i26.i, label %.loopexit.i.i.i.i.i.i27.i, label %.lr.ph.i.i.i.i.i.i.i22.i

.loopexit.i.i.i.i.i.i27.i:                        ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i25.i
  %i.ez = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bp, i64 noundef 1) #32, !noalias !1424 ; 2 uses
  %i.fa = extractvalue { ptr, i64 } %i.ez, 0      ; 2 uses
  %i.fb = extractvalue { ptr, i64 } %i.ez, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1420
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !1425
  call fastcc void @_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence23parse_backslash_or_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBH_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fa, i64 noundef range(i64 0, -9223372036854775808) %i.fb) #32, !noalias !1426
  %i.fc = load i64, ptr %i.bq, align 8, !range !25, !noalias !1425, !noundef !11 ; 2 uses
  %.not.i2.i.i.i.i = icmp eq i64 %i.fc, -1
  %.sroa.030.0.copyload.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !noalias !1425 ; 6 uses
  %.sroa.431.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1425 ; 6 uses
  br i1 %.not.i2.i.i.i.i, label %bb.f, label %bb.g

.loopexit.i.i.i.i.a:                              ; preds = %.lr.ph.i.i.i.i.i.i.i22.i, %.thread110.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1420
  br label %.thread147.thread.i

bb.f:                                             ; preds = %.loopexit.i.i.i.i.i.i27.i
  %.sroa.532.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !1425
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !1430
  store ptr %.sroa.030.0.copyload.i.i.i.i.i, ptr %i.bo, align 8, !noalias !1431
  store i64 %.sroa.431.0.copyload.i.i.i.i.i, ptr %i.cd, align 8, !noalias !1431
  %.not.i.i.i10.i.i.i.i = icmp eq i64 %.sroa.431.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i10.i.i.i.i, label %_RINvXs_NtCsiBsA9HK2Eg7_3nom8sequenceINtB5_10TerminatedNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence23parse_backslash_or_charNCINvNtNtB7_5bytes8complete3tagReRShINtNtB7_5error5ErrorB2C_EE0EINtNtB7_8internal6ParserB2C_E7processINtB3a_7OutputMNtB3a_4EmitB3X_NtB3a_9StreamingEEBY_.exit.i.i.i.i, label %.lr.ph.i.i.i.i11.i.i.i.i

.lr.ph.i.i.i.i11.i.i.i.i:                         ; preds = %bb.f
  %.val7.i.i.i.i12.i.i.i.i = load i8, ptr %.sroa.030.0.copyload.i.i.i.i.i, align 1, !alias.scope !1432, !noalias !1433, !noundef !11
  %.not.i.i14.i.i.i14.i.i.i.i = icmp ne i8 %.val7.i.i.i.i12.i.i.i.i, 42
  %cond = icmp eq i64 %.sroa.431.0.copyload.i.i.i.i.i, 1
  %or.cond = select i1 %.not.i.i14.i.i.i14.i.i.i.i, i1 true, i1 %cond
  br i1 %or.cond, label %_RINvXs_NtCsiBsA9HK2Eg7_3nom8sequenceINtB5_10TerminatedNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence23parse_backslash_or_charNCINvNtNtB7_5bytes8complete3tagReRShINtNtB7_5error5ErrorB2C_EE0EINtNtB7_8internal6ParserB2C_E7processINtB3a_7OutputMNtB3a_4EmitB3X_NtB3a_9StreamingEEBY_.exit.i.i.i.i, label %.lr.ph.i.i.i.i11.i.i.i.i.1

.lr.ph.i.i.i.i11.i.i.i.i.1:                       ; preds = %.lr.ph.i.i.i.i11.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.030.0.copyload.i.i.i.i.i, i64 1
  %.val7.i.i.i.i12.i.i.i.i.1 = load i8, ptr %i.fd, align 1, !alias.scope !1432, !noalias !1433, !noundef !11
  %.not.i.i14.i.i.i14.i.i.i.i.1 = icmp ne i8 %.val7.i.i.i.i12.i.i.i.i.1, 93
  %.not.i.i.i.i.i23.i.i.i.i = icmp eq i64 %.sroa.431.0.copyload.i.i.i.i.i, 1
  %or.cond1883 = select i1 %.not.i.i14.i.i.i14.i.i.i.i.1, i1 true, i1 %.not.i.i.i.i.i23.i.i.i.i
  br i1 %or.cond1883, label %_RINvXs_NtCsiBsA9HK2Eg7_3nom8sequenceINtB5_10TerminatedNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence23parse_backslash_or_charNCINvNtNtB7_5bytes8complete3tagReRShINtNtB7_5error5ErrorB2C_EE0EINtNtB7_8internal6ParserB2C_E7processINtB3a_7OutputMNtB3a_4EmitB3X_NtB3a_9StreamingEEBY_.exit.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i

_RINvXs_NtCsiBsA9HK2Eg7_3nom8sequenceINtB5_10TerminatedNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence23parse_backslash_or_charNCINvNtNtB7_5bytes8complete3tagReRShINtNtB7_5error5ErrorB2C_EE0EINtNtB7_8internal6ParserB2C_E7processINtB3a_7OutputMNtB3a_4EmitB3X_NtB3a_9StreamingEEBY_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i11.i.i.i.i, %.lr.ph.i.i.i.i11.i.i.i.i.1, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1430
  br label %.thread147.thread.i

bb.g:                                             ; preds = %.loopexit.i.i.i.i.i.i27.i
  %.sroa.642.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !1425
  switch i64 %i.fc, label %default.unreachable [
    i64 0, label %.thread.loopexit.i
    i64 1, label %.thread147.thread.i
    i64 2, label %bb.h
  ]

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i: ; preds = %.lr.ph.i.i.i.i11.i.i.i.i.1
  %i.fe = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bo, i64 noundef 2) #32, !noalias !1434 ; 2 uses
  %i.ff = extractvalue { ptr, i64 } %i.fe, 0      ; 2 uses
  %i.fg = extractvalue { ptr, i64 } %i.fe, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1430
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ff) ]
  %.sroa.18.33.insert.ext.i.i = zext i8 %.sroa.532.0.copyload.i.i.i.i.i to i64
  %.sroa.18.33.insert.shift.i.i = shl nuw nsw i64 %.sroa.18.33.insert.ext.i.i, 8
  %.sroa.18.33.insert.insert.i.i = or disjoint i64 %.sroa.18.33.insert.shift.i.i, 2
  br label %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i

bb.h:                                             ; preds = %bb.g
  %.sroa.642.0.copyload.i.i.i.i.fr.i = freeze i64 %.sroa.642.0.copyload.i.i.i.i.i ; 3 uses
  %.sroa.18.32.extract.trunc.i.i = trunc i64 %.sroa.642.0.copyload.i.i.i.i.fr.i to i8 ; 4 uses
  %i.fh = icmp ugt i8 %.sroa.18.32.extract.trunc.i.i, 56
  br i1 %i.fh, label %.thread147.i, label %.thread124.loopexit.split.loop.exit696.i

.thread147.i:                                     ; preds = %bb.h
  %i.fi = icmp eq i8 %.sroa.18.32.extract.trunc.i.i, 58
  br i1 %i.fi, label %.thread147.thread.i, label %.thread124.loopexit.split.loop.exit656.i

.thread147.thread.i:                              ; preds = %.thread147.i, %bb.g, %_RINvXs_NtCsiBsA9HK2Eg7_3nom8sequenceINtB5_10TerminatedNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence23parse_backslash_or_charNCINvNtNtB7_5bytes8complete3tagReRShINtNtB7_5error5ErrorB2C_EE0EINtNtB7_8internal6ParserB2C_E7processINtB3a_7OutputMNtB3a_4EmitB3X_NtB3a_9StreamingEEBY_.exit.i.i.i.i, %.loopexit.i.i.i.i.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !1441
  store ptr %.sroa.0.0.i, ptr %i.bm, align 8, !noalias !1442
  store i64 %.sroa.3.0.i, ptr %i.ce, align 8, !noalias !1442
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i.i41.i, label %.loopexit216.i.i.i.i

.lr.ph.i.i.i.i.i.i.i41.i:                         ; preds = %.thread147.thread.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i44.i
  %i.fj = phi i64 [ %i.fl, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i44.i ], [ 0, %.thread147.thread.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.fj
  %.val7.i.i.i.i.i.i.i42.i = load i8, ptr %i.fk, align 1, !alias.scope !1443, !noalias !1444, !noundef !11
  %.not.i.i14.i.i.i.i.i.i43.i = icmp eq i8 %.val7.i.i.i.i.i.i.i42.i, 91
  br i1 %.not.i.i14.i.i.i.i.i.i43.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i44.i, label %.loopexit216.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i44.i: ; preds = %.lr.ph.i.i.i.i.i.i.i41.i
  %i.fl = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i45.i = icmp eq i64 %i.fl, %..i.i.i.i.i.i.i.i.i13.i
  br i1 %exitcond.not.i.i.i.i.i.i.i45.i, label %.loopexit.i.i.i.i.i.i46.i, label %.lr.ph.i.i.i.i.i.i.i41.i

.loopexit.i.i.i.i.i.i46.i:                        ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i44.i
  %i.fm = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bm, i64 noundef 1) #32, !noalias !1445 ; 2 uses
  %i.fn = extractvalue { ptr, i64 } %i.fm, 0      ; 2 uses
  %i.fo = extractvalue { ptr, i64 } %i.fm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !1441
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fn) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !1446
  call fastcc void @_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence23parse_backslash_or_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBH_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fn, i64 noundef range(i64 0, -9223372036854775808) %i.fo) #32, !noalias !1447
  %i.fp = load i64, ptr %i.bn, align 8, !range !25, !noalias !1446, !noundef !11 ; 2 uses
  %.not.i7.i.i.i.i = icmp eq i64 %i.fp, -1
  %.sroa.036.0.copyload.i8.i.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !1446 ; 5 uses
  %.sroa.437.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.437.0..sroa_idx.i9.i.i.i.i, align 8, !noalias !1446 ; 4 uses
  br i1 %.not.i7.i.i.i.i, label %bb.i, label %bb.y

.loopexit216.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i41.i, %.thread147.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !1441
  br label %.thread182.thread.i

bb.i:                                             ; preds = %.loopexit.i.i.i.i.i.i46.i
  %.sroa.538.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.538.0..sroa_idx.i10.i.i.i.i, align 8, !noalias !1446 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !1446
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !1451
  store ptr %.sroa.036.0.copyload.i8.i.i.i.i, ptr %i.bl, align 8, !noalias !1452
  store i64 %.sroa.437.0.copyload.i.i.i.i.i, ptr %i.cg, align 8, !noalias !1452
  %i.fq = icmp ne i64 %.sroa.437.0.copyload.i.i.i.i.i, 0 ; 2 uses
  %..i.i.i.i.i.i17.i.i.i.i = zext i1 %i.fq to i64
  br i1 %i.fq, label %.lr.ph.i.i.i.i19.i.i.i.i, label %.loopexit215.i.i.i.i

.lr.ph.i.i.i.i19.i.i.i.i:                         ; preds = %bb.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i28.i.i.i.i
  %i.fr = phi i64 [ %i.ft, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i28.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload.i8.i.i.i.i, i64 %i.fr
  %.val7.i.i.i.i20.i.i.i.i = load i8, ptr %i.fs, align 1, !alias.scope !1453, !noalias !1454, !noundef !11
  %.not.i.i14.i.i.i22.i.i.i.i = icmp eq i8 %.val7.i.i.i.i20.i.i.i.i, 42
  br i1 %.not.i.i14.i.i.i22.i.i.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i28.i.i.i.i, label %.loopexit215.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i28.i.i.i.i: ; preds = %.lr.ph.i.i.i.i19.i.i.i.i
  %i.ft = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %exitcond.not.i.i.i.i29.i.i.i.i = icmp eq i64 %i.ft, %..i.i.i.i.i.i17.i.i.i.i
  br i1 %exitcond.not.i.i.i.i29.i.i.i.i, label %.loopexit.i.i.i30.i.i.i.i, label %.lr.ph.i.i.i.i19.i.i.i.i

.loopexit.i.i.i30.i.i.i.i:                        ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i28.i.i.i.i
  %i.fu = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bl, i64 noundef 1) #32, !noalias !1455 ; 2 uses
  %i.fv = extractvalue { ptr, i64 } %i.fu, 0      ; 6 uses
  %i.fw = extractvalue { ptr, i64 } %i.fu, 1      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1451
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fv) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !1458
  store ptr %i.fv, ptr %i.bk, align 8, !noalias !1458, !captures !27
  store i64 %i.fw, ptr %i.ch, align 8, !noalias !1458
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  %i.fy = icmp samesign eq i64 %i.fw, 0
  br i1 %i.fy, label %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0NCINvB2t_9take_tillNCNvBL_17parse_char_repeat0B2V_B2Y_E0EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB4Z_NtB6_9StreamingEEBR_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i30.i.i.i.i, %bb.j
  %.sroa.02.07.i.i.i.i.i.i.i = phi i64 [ %i.gc, %bb.j ], [ 0, %.loopexit.i.i.i30.i.i.i.i ] ; 3 uses
  %i.fz = phi ptr [ %i.gb, %bb.j ], [ %i.fv, %.loopexit.i.i.i30.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.fz, align 1, !alias.scope !1459, !noalias !1460, !noundef !11
  %i.ga = and i8 %.val.i.i.i.i.i.i.i, -2
  %switch.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ga, 92
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %_RNCINvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB2Q_8Sequence17parse_char_repeat0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B3V_Es_0B2S_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 1 ; 2 uses
  %i.gc = add nuw nsw i64 %.sroa.02.07.i.i.i.i.i.i.i, 1
  %i.gd = icmp eq ptr %i.gb, %i.fx
  br i1 %i.gd, label %_RINvXsl_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3AndNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence23parse_backslash_or_charINtNtB8_8sequence8PrecededNCINvNtNtB8_5bytes8complete3tagReRShINtNtB8_5error5ErrorB2V_EE0NCINvB2t_9take_tillNCNvBL_17parse_char_repeat0B2V_B2Y_E0EEINtB6_6ParserB2V_E7processINtB6_7OutputMNtB6_4EmitB4Z_NtB6_9StreamingEEBR_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_RNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence8from_str:bb.a
bb.hc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit154.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xy, i64 noundef %i.uv, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1624
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit172.i.i.i.i.i.i.i.i.i.i.i

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i: ; preds = %bb.dk, %.loopexit113.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i, %bb.dj, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.3.0.i52.ph.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.tf, %.loopexit113.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sm, %bb.dj ], [ %i.sr, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1565
  br label %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.dc, %bb.cz, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1625
  store ptr @57, ptr %i.e, align 8, !noalias !1625
  store i64 8, ptr %.sroa.42.0..sroa_idx.i.i.i4104.i.i.i.i.i.i, align 8, !noalias !1625
  store i64 2, ptr %.sroa.53.0..sroa_idx.i.i.i5105.i.i.i.i.i.i, align 8, !noalias !1625
  store i64 2, ptr %.sroa.64.0..sroa_idx.i.i.i6106.i.i.i.i.i.i, align 8, !noalias !1625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1626
  store ptr %i.qw, ptr %i.d, align 8, !noalias !1627
  store i64 %i.qx, ptr %i.ed, align 8, !noalias !1627
  br label %bb.he

bb.hd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit169.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1565
  call void @llvm.experimental.noalias.scope.decl(metadata !1628), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1629), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1630), !noalias !1549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1631
  store ptr @57, ptr %i.e, align 8, !noalias !1631
  store i64 8, ptr %.sroa.42.0..sroa_idx.i.i.i4104.i.i.i.i.i.i, align 8, !noalias !1631
  store i64 2, ptr %.sroa.53.0..sroa_idx.i.i.i5105.i.i.i.i.i.i, align 8, !noalias !1631
  store i64 2, ptr %.sroa.64.0..sroa_idx.i.i.i6106.i.i.i.i.i.i, align 8, !noalias !1631
  call void @llvm.experimental.noalias.scope.decl(metadata !1632), !noalias !1633
  call void @llvm.experimental.noalias.scope.decl(metadata !1634), !noalias !1633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1635
  store ptr %i.qw, ptr %i.d, align 8, !noalias !1636
  store i64 %i.qx, ptr %i.ed, align 8, !noalias !1636
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hj, label %bb.he

bb.he:                                            ; preds = %bb.hd, %.thread.i.i.i.i.i.i
  %i.acj = load i8, ptr %i.qw, align 1, !alias.scope !1637, !noalias !1638, !noundef !11 ; 2 uses
  %i.ack = zext i8 %i.acj to i32
  %i.acl = call noundef zeroext i1 @_RNvXsn_NtCsiBsA9HK2Eg7_3nom6traitsReINtB5_9FindTokencE10find_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i32 noundef range(i32 0, 256) %i.ack) #32, !noalias !1639
  br i1 %i.acl, label %bb.hf, label %bb.hj

bb.hf:                                            ; preds = %bb.he
  %i.acm = icmp sgt i8 %i.acj, -1
  %.sroa.013.0.i.i.i.i.i.i.i.i15.i.i.i.i.i.i = select i1 %i.acm, i64 1, i64 2
  %i.acn = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef %.sroa.013.0.i.i.i.i.i.i.i.i15.i.i.i.i.i.i) #32, !noalias !1639 ; 2 uses
  %i.aco = extractvalue { ptr, i64 } %i.acn, 0    ; 6 uses
  %i.acp = extractvalue { ptr, i64 } %i.acn, 1    ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1635
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aco) ], !noalias !1633
  %i.acq = icmp eq i64 %i.acp, %i.qx
  br i1 %i.acq, label %.loopexit.i.i.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.experimental.noalias.scope.decl(metadata !1640), !noalias !1633
  call void @llvm.experimental.noalias.scope.decl(metadata !1641), !noalias !1633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1642
  store ptr %i.aco, ptr %i.d, align 8, !noalias !1643
  store i64 %i.acp, ptr %i.ed, align 8, !noalias !1643
  %.not.i.i.i.i.1.i.i.i16.i.i.i.i.i.i = icmp samesign eq i64 %i.acp, 0
  br i1 %.not.i.i.i.i.1.i.i.i16.i.i.i.i.i.i, label %bb.hj, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.acr = load i8, ptr %i.aco, align 1, !alias.scope !1644, !noalias !1645, !noundef !11 ; 2 uses
  %i.acs = zext i8 %i.acr to i32
  %i.act = call noundef zeroext i1 @_RNvXsn_NtCsiBsA9HK2Eg7_3nom6traitsReINtB5_9FindTokencE10find_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i32 noundef range(i32 0, 256) %i.acs) #32, !noalias !1639
  br i1 %i.act, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.acu = icmp sgt i8 %i.acr, -1
  %.sroa.013.0.i.i.i.i.i.1.i.i.i17.i.i.i.i.i.i = select i1 %i.acu, i64 1, i64 2
  %i.acv = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef %.sroa.013.0.i.i.i.i.i.1.i.i.i17.i.i.i.i.i.i) #32, !noalias !1639 ; 2 uses
  %i.acw = extractvalue { ptr, i64 } %i.acv, 1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1642
  %i.acx = icmp eq i64 %i.acw, %i.acp
  br i1 %i.acx, label %.loopexit.i.i.i.i.i.i, label %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i18.i.i.i.i.i.i

bb.hj:                                            ; preds = %bb.hh, %bb.hg, %bb.he, %bb.hd
  %.sroa.3.0.i.i.lcssa16.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qx, %bb.he ], [ 0, %bb.hd ], [ 0, %bb.hg ], [ %i.acp, %bb.hh ]
  %.sroa.0.0.i.i.lcssa13.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qw, %bb.he ], [ %i.qw, %bb.hd ], [ %i.aco, %bb.hg ], [ %i.aco, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1635
  br label %.loopexit.i.i.i.i.i.i

_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i18.i.i.i.i.i.i: ; preds = %bb.hi
  %i.acy = extractvalue { ptr, i64 } %i.acv, 0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acy) ], !noalias !1633
  %i.acz = ptrtoint ptr %i.acy to i64             ; 2 uses
  %i.ada = sub i64 %i.acz, %i.qy                  ; 3 uses
  %.not.i.i.i47.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ada, %i.qx
  br i1 %.not.i.i.i47.i.i.i.i.i.i.i.i.i.i, label %bb.hk, label %bb.hl, !prof !24

bb.hk:                                            ; preds = %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i18.i.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ada, i64 noundef range(i64 0, -9223372036854775808) %i.qx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #33, !noalias !1646
  unreachable

bb.hl:                                            ; preds = %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i18.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1647
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qw, i64 noundef range(i64 0, -9223372036854775808) %i.ada) #32, !noalias !1648
  call void @llvm.experimental.noalias.scope.decl(metadata !1649), !noalias !1549
  %i.adb = load i64, ptr %i.c, align 8, !range !22, !alias.scope !1649, !noalias !1647, !noundef !11
  %i.adc = trunc nuw i64 %i.adb to i1
  br i1 %i.adc, label %bb.hm, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i, !prof !24

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ee, i64 16, i1 false), !noalias !1651
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #33, !noalias !1652
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i: ; preds = %bb.hl
  %i.add = load ptr, ptr %i.ee, align 8, !alias.scope !1649, !noalias !1647, !nonnull !11, !noundef !11 ; 3 uses
  %i.ade = load i64, ptr %i.ef, align 8, !alias.scope !1649, !noalias !1647, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1647
  switch i64 %i.ade, label %thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i [
    i64 0, label %.loopexit.i.i.i.i.i.i
    i64 1, label %bb.hn
  ]

bb.hn:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i
  %i.adf = load i8, ptr %i.add, align 1, !alias.scope !1653, !noalias !1648, !noundef !11 ; 2 uses
  switch i8 %i.adf, label %bb.ho [
    i8 43, label %.loopexit.i.i.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i:       ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i38.i.i.i.i.i.i = load i8, ptr %i.add, align 1, !alias.scope !1653, !noalias !1648
  br label %bb.ho

bb.ho:                                            ; preds = %thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i, %bb.hn
  %i.adg = phi i8 [ %.pr.i.i.i.i.i.i38.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i ], [ %i.adf, %bb.hn ]
  %cond.i.i.i.i.i.i20.i.i.i.i.i.i = icmp eq i8 %i.adg, 43 ; 2 uses
  %i.adh = sext i1 %cond.i.i.i.i.i.i20.i.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i = add nsw i64 %i.ade, %i.adh ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i.i22.i.i.i.i.i.i = zext i1 %cond.i.i.i.i.i.i20.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.add, i64 %.sroa.0.0.idx.i.i.i.i.i.i22.i.i.i.i.i.i ; 3 uses
  %i.adi = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, 3
  br i1 %i.adi, label %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i, label %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i

.preheader.i.i.i.i.i.i32.i.i.i.i.i.i:             ; preds = %bb.ho
  %.not5465.i.i.i.i.i.i33.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, 0
  br i1 %.not5465.i.i.i.i.i.i33.i.i.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i:       ; preds = %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i
  %i.adj = load i8, ptr %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i, align 1, !alias.scope !1653, !noalias !1648, !noundef !11
  %i.adk = zext i8 %i.adj to i32
  %i.adl = add nsw i32 %i.adk, -48                ; 2 uses
  %i.adm = icmp ugt i32 %i.adl, 7
  br i1 %i.adm, label %.loopexit.i.i.i.i.i.i, label %bb.hp

bb.hp:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i
  %i.adn = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, 1
  %i.ado = trunc nuw nsw i32 %i.adl to i8         ; 2 uses
  br i1 %i.adn, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i

bb.hq:                                            ; preds = %bb.hr
  %i.adp = getelementptr inbounds nuw i8, ptr %.sroa.0.164.i.i.i.i.i.i25.i.i.i.i.i.i, i64 1
  %i.adq = add nsw i64 %.sroa.15.163.i.i.i.i.i.i26.i.i.i.i.i.i, -1 ; 2 uses
  %i.adr = shl nuw i8 %.sroa.043.062.i.i.i.i.i.i27.i.i.i.i.i.i, 3
  %i.ads = trunc nuw nsw i32 %i.adx to i8
  %i.adt = or disjoint i8 %i.adr, %i.ads          ; 2 uses
  %.not53.i.i.i.i.i.i28.i.i.i.i.i.i = icmp eq i64 %i.adq, 0
  br i1 %.not53.i.i.i.i.i.i28.i.i.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i

.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i:           ; preds = %bb.ho, %bb.hq
  %.sroa.0.164.i.i.i.i.i.i25.i.i.i.i.i.i = phi ptr [ %i.adp, %bb.hq ], [ %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i, %bb.ho ] ; 2 uses
  %.sroa.15.163.i.i.i.i.i.i26.i.i.i.i.i.i = phi i64 [ %i.adq, %bb.hq ], [ %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, %bb.ho ]
  %.sroa.043.062.i.i.i.i.i.i27.i.i.i.i.i.i = phi i8 [ %i.adt, %bb.hq ], [ 0, %bb.ho ] ; 2 uses
  %i.adu = icmp ugt i8 %.sroa.043.062.i.i.i.i.i.i27.i.i.i.i.i.i, 31
  br i1 %i.adu, label %.loopexit.i.i.i.i.i.i, label %bb.hr, !prof !24

bb.hr:                                            ; preds = %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i
  %i.adv = load i8, ptr %.sroa.0.164.i.i.i.i.i.i25.i.i.i.i.i.i, align 1, !alias.scope !1653, !noalias !1648, !noundef !11
  %i.adw = zext i8 %i.adv to i32
  %i.adx = add nsw i32 %i.adw, -48                ; 2 uses
  %i.ady = icmp ugt i32 %i.adx, 7
  br i1 %i.ady, label %.loopexit.i.i.i.i.i.i, label %bb.hq

.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i:                 ; preds = %bb.hp
  %i.adz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i, i64 1
  %.pre.i.i.i.i.i36.i.i.i.i.i.i = load i8, ptr %i.adz, align 1, !alias.scope !1653, !noalias !1648
  %i.aea = zext i8 %.pre.i.i.i.i.i36.i.i.i.i.i.i to i32
  %i.aeb = add nsw i32 %i.aea, -48                ; 2 uses
  %i.aec = icmp ult i32 %i.aeb, 8
  br i1 %i.aec, label %bb.hs, label %.loopexit.i.i.i.i.i.i

bb.hs:                                            ; preds = %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i
  %i.aed = shl nuw nsw i8 %i.ado, 3
  %i.aee = trunc nuw nsw i32 %i.aeb to i8
  %i.aef = or disjoint i8 %i.aed, %i.aee
  br label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i: ; preds = %bb.hq, %bb.hs, %bb.hp, %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i
  %i.aeg = phi i8 [ %i.aef, %bb.hs ], [ 0, %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i ], [ %i.ado, %bb.hp ], [ %i.adt, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1631
  br label %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.hr, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i, %bb.hn, %bb.hn, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i, %bb.hj, %bb.hi, %bb.hf
  %.sroa.8.029.i8.i.i.i.i.i.i = phi ptr [ %i.qw, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i ], [ %i.qw, %bb.hf ], [ %i.aco, %bb.hi ], [ %i.qw, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i ], [ %i.qw, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i ], [ %i.qw, %bb.hn ], [ %i.qw, %bb.hn ], [ %.sroa.0.0.i.i.lcssa13.i.i.i.i.i.i.i.i.i, %bb.hj ], [ %i.qw, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i ], [ %i.qw, %bb.hr ]
  %.sroa.13.028.i9.i.i.i.i.i.i = phi i64 [ %i.qx, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i ], [ %i.qx, %bb.hf ], [ %i.acp, %bb.hi ], [ %i.qx, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i ], [ %i.qx, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i ], [ %i.qx, %bb.hn ], [ %i.qx, %bb.hn ], [ %.sroa.3.0.i.i.lcssa16.i.i.i.i.i.i.i.i.i, %bb.hj ], [ %i.qx, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i ], [ %i.qx, %bb.hr ]
  %.sroa.18.027.i10.i.i.i.i.i.i = phi i8 [ 2, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i ], [ 42, %bb.hf ], [ 42, %bb.hi ], [ 2, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i ], [ 2, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i ], [ 2, %bb.hn ], [ 2, %bb.hn ], [ 27, %bb.hj ], [ 2, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i ], [ 2, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1631
  br label %bb.ht

bb.ht:                                            ; preds = %.loopexit.i.i.i.i.i.i, %.loopexit137.i.i.i.i.i.i
  %.sroa.18.0.ph.i.i.i.i.a = phi i8 [ 0, %.loopexit137.i.i.i.i.i.i ], [ %.sroa.18.027.i10.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  %.sroa.13.0.ph.i.i.i.i.a = phi i64 [ %.sroa.3.0.i, %.loopexit137.i.i.i.i.i.i ], [ %.sroa.13.028.i9.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  %.sroa.8.0.ph.in.i.i.i.i = phi ptr [ %.sroa.0.0.i, %.loopexit137.i.i.i.i.i.i ], [ %.sroa.8.029.i8.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  store i64 1, ptr %i.at, align 8, !noalias !1654
  store ptr %.sroa.8.0.ph.in.i.i.i.i, ptr %i.eg, align 8, !noalias !1654
  store i64 %.sroa.13.0.ph.i.i.i.i.a, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  store i8 %.sroa.18.0.ph.i.i.i.i.a, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  store i56 0, ptr %.sroa.765.0..sroa_idx.i.i.i.i, align 1, !noalias !1654
  call fastcc void @_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_backslashINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2j_NtB6_9StreamingEEBH_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i) #32, !noalias !1655
  %i.aeh = load i64, ptr %i.at, align 8, !range !25, !noalias !1654, !noundef !11 ; 2 uses
  %i.aei = icmp eq i64 %i.aeh, 1
  br i1 %i.aei, label %bb.hu, label %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge

._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge: ; preds = %bb.ht
  %.sroa.044.0.copyload.i.pre.pre = load i64, ptr %i.eg, align 8, !noalias !1654
  br label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.experimental.noalias.scope.decl(metadata !1656), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1657), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1658), !noalias !1549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1659
  store ptr %.sroa.0.0.i, ptr %i.a, align 8, !noalias !1660
  store i64 %.sroa.3.0.i, ptr %i.eh, align 8, !noalias !1660
  br i1 %i.ev, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i, label %bb.hv

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i: ; preds = %bb.hu
  %i.aej = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef 1) #32, !noalias !1661 ; 2 uses
  %i.aek = extractvalue { ptr, i64 } %i.aej, 1
  %i.ael = extractvalue { ptr, i64 } %i.aej, 0    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1659
  %i.aem = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !1662, !noalias !1549, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ael) ], !noalias !1549
  br label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1659
  store i56 0, ptr %.sroa.765.0..sroa_idx.i.i.i.i, align 1, !noalias !1654
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i
  %storemerge128.i.i.i = phi ptr [ %.sroa.0.0.i, %bb.hv ], [ %i.ael, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ] ; 2 uses
  %storemerge127.i.i.i = phi i64 [ 0, %bb.hv ], [ %i.aek, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ]
  %storemerge.i.i.i = phi i8 [ 24, %bb.hv ], [ %i.aem, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ 1, %bb.hv ], [ -1, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ]
  store ptr %storemerge128.i.i.i, ptr %i.eg, align 8, !noalias !1654
  store i64 %storemerge127.i.i.i, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  store i8 %storemerge.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  %i.aen = ptrtoint ptr %storemerge128.i.i.i to i64
  br label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i

_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i: ; preds = %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge, %bb.hw
  %.sroa.044.0.copyload.i.pre = phi i64 [ %.sroa.044.0.copyload.i.pre.pre, %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge ], [ %i.aen, %bb.hw ] ; 3 uses
  %i.aeo = phi i64 [ %i.aeh, %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge ], [ %.sink.i.i.i, %bb.hw ]
  switch i64 %i.aeo, label %default.unreachable [
    i64 -1, label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge
    i64 0, label %.thread87
    i64 1, label %.thread
    i64 2, label %bb.hx
  ]

_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge: ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  %.sroa.445.0.copyload.i.pre = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  %.sroa.546.0.copyload.i.pre = load i8, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  br label %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i

.thread87:                                        ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %.thread.i

.thread:                                          ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit

_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i: ; preds = %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge
  %.sroa.546.0.copyload.i = phi i8 [ %.sroa.546.0.copyload.i.pre, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge ], [ %.sroa.3.0.i52.ph.i.i.i.i.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ], [ %i.aeg, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ]
  %.sroa.445.0.copyload.i = phi i64 [ %.sroa.445.0.copyload.i.pre, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge ], [ %.sroa.3.0.i.i64.i.i.i.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ], [ %i.acw, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ]
  %.sroa.044.0.copyload.i = phi i64 [ %.sroa.044.0.copyload.i.pre, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge ], [ %i.rx, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ], [ %i.acz, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.aep = icmp ne i64 %.sroa.044.0.copyload.i, 0
  call void @llvm.assume(i1 %i.aep), !noalias !1549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.aeq = inttoptr i64 %.sroa.044.0.copyload.i to ptr
  %.sroa.582.9.insert.ext.i = zext i8 %.sroa.546.0.copyload.i to i64
  %.sroa.582.9.insert.shift.i = shl nuw nsw i64 %.sroa.582.9.insert.ext.i, 8
  br label %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i

bb.hx:                                            ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  %.sroa.7.sroa.5.0.copyload.i = load i8, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1654 ; 2 uses
  %.sroa.7.sroa.0.0.copyload.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  %.sroa.731.i.sroa.0.0.copyload = load i56, ptr %.sroa.765.0..sroa_idx.i.i.i.i, align 1, !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.aer = icmp eq i8 %.sroa.7.sroa.5.0.copyload.i, 58
  br i1 %i.aer, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit, label %.thread124.i

.thread124.loopexit.split.loop.exit.i:            ; preds = %.thread110.i
  %i.aes = ptrtoint ptr %.sroa.7.096.i.i.i.i to i64
  br label %.thread124.i

.thread124.loopexit.split.loop.exit656.i:         ; preds = %.thread147.i
  %i.aet = ptrtoint ptr %.sroa.030.0.copyload.i.i.i.i.i to i64
  %.sroa.18.33.extract.shift.i.le.i = lshr i64 %.sroa.642.0.copyload.i.i.i.i.fr.i, 8
  %.sroa.18.33.extract.trunc.i.le761.i = trunc nuw i64 %.sroa.18.33.extract.shift.i.le.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit666.i:         ; preds = %.thread182.i
  %i.aeu = ptrtoint ptr %.sroa.036.0.copyload.i8.i.i.i.i to i64
  %sh.diff.i.le.i = lshr i64 %.sroa.648.0.copyload.i.i.i.i.fr.i, 8
  %tr.sh.diff.i.le755.i = trunc nuw i64 %sh.diff.i.le.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit676.i:         ; preds = %.thread235.i
  %.sroa.11.0.ph.i.i.i.le753.i = ptrtoint ptr %i.pr to i64
  %.sroa.734.sroa.4.0.insert.ext.i.le733.i = zext i48 %.sroa.8258.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.4.0.insert.shift.i.le.i = shl nuw i56 %.sroa.734.sroa.4.0.insert.ext.i.le733.i, 8
  %.sroa.734.sroa.0.0.insert.ext.i.le.i = zext i8 %.sroa.7257.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.0.0.insert.insert.i.le726.i = or disjoint i56 %.sroa.734.sroa.4.0.insert.shift.i.le.i, %.sroa.734.sroa.0.0.insert.ext.i.le.i
  br label %.thread124.i

.thread124.loopexit.split.loop.exit686.i:         ; preds = %bb.e
  %i.aev = ptrtoint ptr %.sroa.7.096.i.i.i.i to i64
  br label %.thread124.i

.thread124.loopexit.split.loop.exit696.i:         ; preds = %bb.h
  %i.aew = ptrtoint ptr %.sroa.030.0.copyload.i.i.i.i.i to i64
  %.sroa.18.33.extract.shift.i.le763.i = lshr i64 %.sroa.642.0.copyload.i.i.i.i.fr.i, 8
  %.sroa.18.33.extract.trunc.i.le.i = trunc nuw i64 %.sroa.18.33.extract.shift.i.le763.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit706.i:         ; preds = %bb.z
  %i.aex = ptrtoint ptr %.sroa.036.0.copyload.i8.i.i.i.i to i64
  %sh.diff.i.le757.i = lshr i64 %.sroa.648.0.copyload.i.i.i.i.fr.i, 8
  %tr.sh.diff.i.le.i = trunc nuw i64 %sh.diff.i.le757.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit716.i:         ; preds = %bb.cu
  %.sroa.11.0.ph.i.i.i.le751.i = ptrtoint ptr %i.pr to i64
  %.sroa.734.sroa.4.0.insert.ext.i.le.i = zext i48 %.sroa.8258.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.4.0.insert.shift.i.le731.i = shl nuw i56 %.sroa.734.sroa.4.0.insert.ext.i.le.i, 8
  %.sroa.734.sroa.0.0.insert.ext.i.le729.i = zext i8 %.sroa.7257.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.0.0.insert.insert.i.le.i = or disjoint i56 %.sroa.734.sroa.4.0.insert.shift.i.le731.i, %.sroa.734.sroa.0.0.insert.ext.i.le729.i
  br label %.thread124.i

.thread124.i:                                     ; preds = %.thread124.loopexit.split.loop.exit716.i, %.thread124.loopexit.split.loop.exit706.i, %.thread124.loopexit.split.loop.exit696.i, %.thread124.loopexit.split.loop.exit686.i, %.thread124.loopexit.split.loop.exit676.i, %.thread124.loopexit.split.loop.exit666.i, %.thread124.loopexit.split.loop.exit656.i, %.thread124.loopexit.split.loop.exit.i, %bb.hx
  %.sroa.79.6.ph.i = phi i56 [ %.sroa.731.i.sroa.0.0.copyload, %bb.hx ], [ %tr.sh.diff.i.le.i, %.thread124.loopexit.split.loop.exit706.i ], [ %.sroa.18.33.extract.trunc.i.le761.i, %.thread124.loopexit.split.loop.exit656.i ], [ %.sroa.19.33.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit.i ], [ %.sroa.18.33.extract.trunc.i.le.i, %.thread124.loopexit.split.loop.exit696.i ], [ %tr.sh.diff.i.le755.i, %.thread124.loopexit.split.loop.exit666.i ], [ %.sroa.734.sroa.0.0.insert.insert.i.le726.i, %.thread124.loopexit.split.loop.exit676.i ], [ %.sroa.19.33.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit686.i ], [ %.sroa.734.sroa.0.0.insert.insert.i.le.i, %.thread124.loopexit.split.loop.exit716.i ]
  %.sroa.63.6.ph.i = phi i8 [ %.sroa.7.sroa.5.0.copyload.i, %bb.hx ], [ %.sroa.18.sroa.0.0.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit706.i ], [ %.sroa.18.32.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit656.i ], [ %.sroa.14.094.i.i.i.fr.i, %.thread124.loopexit.split.loop.exit.i ], [ %.sroa.18.32.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit696.i ], [ %.sroa.18.sroa.0.0.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit666.i ], [ %.fr.i, %.thread124.loopexit.split.loop.exit676.i ], [ %.sroa.14.094.i.i.i.fr.i, %.thread124.loopexit.split.loop.exit686.i ], [ %.fr.i, %.thread124.loopexit.split.loop.exit716.i ]
  %.sroa.56.6.ph.i = phi i64 [ %.sroa.7.sroa.0.0.copyload.i, %bb.hx ], [ %.sroa.437.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit706.i ], [ %.sroa.431.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit656.i ], [ %.sroa.11.095.i.i.i.i, %.thread124.loopexit.split.loop.exit.i ], [ %.sroa.431.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit696.i ], [ %.sroa.437.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit666.i ], [ %i.ps, %.thread124.loopexit.split.loop.exit676.i ], [ %.sroa.11.095.i.i.i.i, %.thread124.loopexit.split.loop.exit686.i ], [ %i.ps, %.thread124.loopexit.split.loop.exit716.i ]
  %.sroa.44.6.ph.i = phi i64 [ %.sroa.044.0.copyload.i.pre, %bb.hx ], [ %i.aex, %.thread124.loopexit.split.loop.exit706.i ], [ %i.aet, %.thread124.loopexit.split.loop.exit656.i ], [ %i.aes, %.thread124.loopexit.split.loop.exit.i ], [ %i.aew, %.thread124.loopexit.split.loop.exit696.i ], [ %i.aeu, %.thread124.loopexit.split.loop.exit666.i ], [ %.sroa.11.0.ph.i.i.i.le753.i, %.thread124.loopexit.split.loop.exit676.i ], [ %i.aev, %.thread124.loopexit.split.loop.exit686.i ], [ %.sroa.11.0.ph.i.i.i.le751.i, %.thread124.loopexit.split.loop.exit716.i ] ; 2 uses
  %.sroa.63.6.ph.fr.i = freeze i8 %.sroa.63.6.ph.i ; 3 uses
  %i.aey = icmp ugt i8 %.sroa.63.6.ph.fr.i, 56
  br i1 %i.aey, label %bb.hy, label %.thread303.i

bb.hy:                                            ; preds = %.thread124.i
  switch i8 %.sroa.63.6.ph.fr.i, label %bb.ij [
    i8 57, label %.thread.i
    i8 58, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit
    i8 59, label %.thread303.i
  ]

_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i: ; preds = %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i
  %.sroa.79.6.i = phi i56 [ %.sroa.27.sroa.5.0.extract.trunc.i63.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.27.sroa.5.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.26.sroa.5.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.79.0.ph116528.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %.sroa.63.6.i = phi i8 [ %.sroa.27.sroa.0.0.extract.trunc.i61.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.27.sroa.0.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.26.sroa.0.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ 58, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %.sroa.56.6.i = phi i64 [ %.sroa.17.sroa.18.sroa.17.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.7.sroa.8.sroa.7.1.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.25.34.copyload.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.56.0.ph120527.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 2 uses
  %.sroa.44.6.i = phi i64 [ %.sroa.17.sroa.18.sroa.0.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.18.sroa.0.0.insert.insert.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.582.9.insert.shift.i, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.19.32.insert.ext.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.18.sroa.0.0.insert.insert.i95.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.18.33.insert.insert.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 5 uses
  %.sroa.40.5.i = phi i32 [ 0, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %i.es, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ 0, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ 0, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %.sroa.19.6.i = phi i32 [ %.sroa.0.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.0.1.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ -1, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.13.24.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.06.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ -1, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 2 uses
  %.sroa.1215.6.i = phi i64 [ %i.jq, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.gm, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.445.0.copyload.i, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.443.0.copyload.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.qg, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.fg, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 2 uses
  %.sroa.014.6.i = phi ptr [ %i.jp, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.gl, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.aeq, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.042.0.copyload.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.qf, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.ff, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %i.aez = icmp eq i64 %.sroa.1215.6.i, %.sroa.3.0.i
  br i1 %i.aez, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !1663
  store i64 %.sroa.02.0.i, ptr %i.bu, align 8, !noalias !1664
  store ptr %.sroa.9.0.i, ptr %.sroa.457.0..sroa_idx.i, align 8, !noalias !1664
  store i64 %.sroa.12.0.i, ptr %.sroa.558.0..sroa_idx.i, align 8, !noalias !1664
  store i32 %.sroa.19.6.i, ptr %i.cz, align 8, !noalias !1665
  store i32 %.sroa.40.5.i, ptr %.sroa.460.0..sroa_idx.i, align 4, !noalias !1665
  store i64 %.sroa.44.6.i, ptr %.sroa.561.0..sroa_idx.i, align 8, !noalias !1665
  store i64 %.sroa.56.6.i, ptr %.sroa.662.0..sroa_idx.i, align 8, !noalias !1665
  store i8 %.sroa.63.6.i, ptr %.sroa.763.0..sroa_idx.i, align 8, !noalias !1665
  store i56 %.sroa.79.6.i, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !1665
  call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  call void @llvm.experimental.noalias.scope.decl(metadata !1668), !noalias !1669
  %i.afa = icmp eq i64 %.sroa.12.0.i, %.sroa.02.0.i
  br i1 %i.afa, label %bb.ia, label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i

bb.ia:                                            ; preds = %bb.hz
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1q_11BadSequenceEE8grow_oneB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu) #31, !noalias !1670
  %.pre.i = load ptr, ptr %.sroa.457.0..sroa_idx.i, align 8, !alias.scope !1671, !noalias !1672
  %.sroa.053.0.copyload.pre.i = load i64, ptr %i.bu, align 8, !alias.scope !1673, !noalias !1672
  br label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i

_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i: ; preds = %bb.ia, %bb.hz
  %.sroa.053.0.copyload.i = phi i64 [ %.sroa.02.0.i, %bb.hz ], [ %.sroa.053.0.copyload.pre.i, %bb.ia ]
  %i.afb = phi ptr [ %.sroa.9.0.i, %bb.hz ], [ %.pre.i, %bb.ia ] ; 2 uses
  %i.afc = getelementptr inbounds nuw [32 x i8], ptr %i.afb, i64 %.sroa.12.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.afc, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cz, i64 32, i1 false), !noalias !1674
  %i.afd = add i64 %.sroa.12.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !1663
  br label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.i

bb.ib:                                            ; preds = %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i
  %i.afe = ptrtoint ptr %.sroa.0.0.i to i64       ; 2 uses
  switch i32 %.sroa.19.6.i, label %bb.ic [
    i32 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 1, label %bb.id
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 5, label %bb.ie
    i32 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 8, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 9, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 10, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 11, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
  ]

bb.ic:                                            ; preds = %bb.ib
  %i.aff = icmp eq i64 %.sroa.44.6.i, 0
  br i1 %i.aff, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i: ; preds = %bb.ie, %bb.id, %bb.ic
  %i.afg = inttoptr i64 %.sroa.56.6.i to ptr
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afg, i64 noundef %.sroa.44.6.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1675
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i

bb.id:                                            ; preds = %bb.ib
  %i.afh = icmp eq i64 %.sroa.44.6.i, 0
  br i1 %i.afh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i

bb.ie:                                            ; preds = %bb.ib
  %i.afi = icmp eq i64 %.sroa.44.6.i, 0
  br i1 %i.afi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i: ; preds = %bb.ie, %bb.id, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i, %bb.ic, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %i.afj = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %i.afj, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.afl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i ] ; 2 uses
  %i.afk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.9.0.i, i64 %.sroa.0.03.i.i.i.i ; 5 uses
  %i.afl = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.afm = load i32, ptr %i.afk, align 8, !range !26, !alias.scope !1678, !noalias !1679, !noundef !11 ; 2 uses
  %i.afn = icmp eq i32 %i.afm, -1
  br i1 %i.afn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %bb.if

bb.if:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  switch i32 %i.afm, label %bb.ig [
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 1, label %bb.ih
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 5, label %bb.ii
    i32 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 8, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 9, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 10, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 11, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
  ]

bb.ig:                                            ; preds = %bb.if
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %.val.i.i.i.i.i.i104.i = load i64, ptr %i.afo, align 8, !range !12, !alias.scope !1681, !noalias !1679, !noundef !11 ; 2 uses
  %i.afp = icmp eq i64 %.val.i.i.i.i.i.i104.i, 0
  br i1 %i.afp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.ii, %bb.ih, %bb.ig
  %.val.i4.sink.i.i.i.i.i.i = phi i64 [ %.val.i1.i.i.i.i.i.i, %bb.ih ], [ %.val.i4.i.i.i.i.i.i, %bb.ii ], [ %.val.i.i.i.i.i.i104.i, %bb.ig ]
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afk, i64 16
  %.val1.i5.i.i.i.i.i.i = load ptr, ptr %i.afq, align 8, !alias.scope !1682, !noalias !1679, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i.i, i64 noundef %.val.i4.sink.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1683
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i

bb.ih:                                            ; preds = %bb.if
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %.val.i1.i.i.i.i.i.i = load i64, ptr %i.afr, align 8, !range !12, !alias.scope !1684, !noalias !1679, !noundef !11 ; 2 uses
  %i.afs = icmp eq i64 %.val.i1.i.i.i.i.i.i, 0
  br i1 %i.afs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i

bb.ii:                                            ; preds = %bb.if
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %.val.i4.i.i.i.i.i.i = load i64, ptr %i.aft, align 8, !range !12, !alias.scope !1685, !noalias !1679, !noundef !11 ; 2 uses
  %i.afu = icmp eq i64 %.val.i4.i.i.i.i.i.i, 0
  br i1 %i.afu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i: ; preds = %bb.ii, %bb.ih, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i, %bb.ig, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %.lr.ph.i.i.i.i
  %i.afv = icmp eq i64 %i.afl, %.sroa.12.0.i
  br i1 %i.afv, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
  %i.afw = icmp eq i64 %.sroa.02.0.i, 0
  br i1 %i.afw, label %bb.io, label %.sink.split

bb.ij:                                            ; preds = %bb.hy
  unreachable

.thread.loopexit.i:                               ; preds = %bb.ct, %bb.y, %bb.g, %bb.d
  %.sroa.7.096.i.i.i.lcssa.sink.i = phi ptr [ %.sroa.030.0.copyload.i.i.i.i.i, %bb.g ], [ %.sroa.036.0.copyload.i8.i.i.i.i, %bb.y ], [ %i.pr, %bb.ct ], [ %.sroa.7.096.i.i.i.i, %bb.d ]
  %i.afx = ptrtoint ptr %.sroa.7.096.i.i.i.lcssa.sink.i to i64
  br label %.thread.i

.thread303.i:                                     ; preds = %bb.hy, %.thread124.i
  %.sroa.19.0.insert.ext = zext nneg i8 %.sroa.63.6.ph.fr.i to i64
  %.sroa.19.1.insert.ext = zext i56 %.sroa.79.6.ph.i to i64
  %.sroa.19.1.insert.shift = shl nuw i64 %.sroa.19.1.insert.ext, 8
  %.sroa.19.1.insert.insert = or disjoint i64 %.sroa.19.1.insert.shift, %.sroa.19.0.insert.ext
  %i.afy = inttoptr i64 %.sroa.19.1.insert.insert to ptr
  br label %.thread.i

.thread.i:                                        ; preds = %bb.hy, %.thread.loopexit.i, %.thread87, %.thread303.i
  %.sroa.19.0 = phi ptr [ %i.afy, %.thread303.i ], [ undef, %.thread87 ], [ undef, %.thread.loopexit.i ], [ undef, %bb.hy ] ; 2 uses
  %.sroa.16.0 = phi i64 [ %.sroa.56.6.ph.i, %.thread303.i ], [ undef, %.thread87 ], [ undef, %.thread.loopexit.i ], [ undef, %bb.hy ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %.sroa.44.6.ph.i, %.thread303.i ], [ %.sroa.044.0.copyload.i.pre, %.thread87 ], [ %i.afx, %.thread.loopexit.i ], [ %.sroa.44.6.ph.i, %bb.hy ] ; 2 uses
  %.sroa.625.0 = phi i64 [ 2, %.thread303.i ], [ 0, %.thread87 ], [ 0, %.thread.loopexit.i ], [ 0, %bb.hy ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  %i.afz = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %i.afz, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i, label %.lr.ph.i.i.i107.i

.lr.ph.i.i.i107.i:                                ; preds = %.thread.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i
  %.sroa.0.03.i.i.i108.i = phi i64 [ %i.agb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i ], [ 0, %.thread.i ] ; 2 uses
  %i.aga = getelementptr inbounds nuw [32 x i8], ptr %.sroa.9.0.i, i64 %.sroa.0.03.i.i.i108.i ; 5 uses
  %i.agb = add nuw nsw i64 %.sroa.0.03.i.i.i108.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  %i.agc = load i32, ptr %i.aga, align 8, !range !26, !alias.scope !1688, !noalias !1689, !noundef !11 ; 2 uses
  %i.agd = icmp eq i32 %i.agc, -1
  br i1 %i.agd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i, label %bb.ik

bb.ik:                                            ; preds = %.lr.ph.i.i.i107.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  switch i32 %i.agc, label %bb.il [
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i
    i32 1, label %bb.im
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i
    i32 5, label %bb.in
    i32 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i
    i32 7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i
    i32 8, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i
    i32 9, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i
    i32 10, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i
    i32 11, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i
  ]

bb.il:                                            ; preds = %bb.ik
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %.val.i.i.i.i.i.i117.i = load i64, ptr %i.age, align 8, !range !12, !alias.scope !1691, !noalias !1689, !noundef !11 ; 2 uses
  %i.agf = icmp eq i64 %.val.i.i.i.i.i.i117.i, 0
  br i1 %i.agf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i113.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i113.i: ; preds = %bb.in, %bb.im, %bb.il
  %.val.i4.sink.i.i.i.i.i114.i = phi i64 [ %.val.i1.i.i.i.i.i116.i, %bb.im ], [ %.val.i4.i.i.i.i.i112.i, %bb.in ], [ %.val.i.i.i.i.i.i117.i, %bb.il ]
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %.val1.i5.i.i.i.i.i115.i = load ptr, ptr %i.agg, align 8, !alias.scope !1692, !noalias !1689, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i115.i, i64 noundef %.val.i4.sink.i.i.i.i.i114.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1693
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i

bb.im:                                            ; preds = %bb.ik
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %.val.i1.i.i.i.i.i116.i = load i64, ptr %i.agh, align 8, !range !12, !alias.scope !1694, !noalias !1689, !noundef !11 ; 2 uses
  %i.agi = icmp eq i64 %.val.i1.i.i.i.i.i116.i, 0
  br i1 %i.agi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i113.i

bb.in:                                            ; preds = %bb.ik
  %i.agj = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %.val.i4.i.i.i.i.i112.i = load i64, ptr %i.agj, align 8, !range !12, !alias.scope !1695, !noalias !1689, !noundef !11 ; 2 uses
  %i.agk = icmp eq i64 %.val.i4.i.i.i.i.i112.i, 0
  br i1 %i.agk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i113.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i: ; preds = %bb.in, %bb.im, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i113.i, %bb.il, %bb.ik, %bb.ik, %bb.ik, %bb.ik, %bb.ik, %bb.ik, %bb.ik, %bb.ik, %bb.ik, %bb.ik, %.lr.ph.i.i.i107.i
  %i.agl = icmp eq i64 %i.agb, %.sroa.12.0.i
  br i1 %i.agl, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i, label %.lr.ph.i.i.i107.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i109.i, %.thread.i
  %i.agm = icmp eq i64 %.sroa.02.0.i, 0
  br i1 %i.agm, label %bb.io, label %.sink.split

.sink.split:                                      ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i
  %.sroa.19.1.ph.ph = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.19.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i ]
  %.sroa.16.1.ph.ph = phi i64 [ %.sroa.3.0.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.16.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i ]
  %.sroa.12.1.ph.ph = phi i64 [ %i.afe, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.12.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i ]
  %.sroa.625.1.ph.ph = phi i64 [ 1, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.625.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i ]
  %i.agn = shl nuw i64 %.sroa.02.0.i, 5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.i, i64 noundef %i.agn, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1549
  br label %bb.io

bb.io:                                            ; preds = %.sink.split, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i
  %.sroa.19.1.ph = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.19.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i ], [ %.sroa.19.1.ph.ph, %.sink.split ]
  %.sroa.16.1.ph = phi i64 [ %.sroa.3.0.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.16.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i ], [ %.sroa.16.1.ph.ph, %.sink.split ]
  %.sroa.12.1.ph = phi i64 [ %i.afe, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.12.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i ], [ %.sroa.12.1.ph.ph, %.sink.split ]
  %.sroa.625.1.ph = phi i64 [ 1, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.625.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i110.i ], [ %.sroa.625.1.ph.ph, %.sink.split ]
  %i.ago = ptrtoint ptr %.sroa.19.1.ph to i64
  %i.agp = inttoptr i64 %.sroa.16.1.ph to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !1696
  store i64 %.sroa.625.1.ph, ptr %i.bv, align 8, !noalias !1697
  %.sroa.616.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.sroa.12.1.ph, ptr %.sroa.616.0..sroa_idx17, align 8, !noalias !1697
  %.sroa.819.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.agp, ptr %.sroa.819.0..sroa_idx20, align 8, !noalias !1697
  %.sroa.9.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i64 %i.ago, ptr %.sroa.9.0..sroa_idx22, align 8, !noalias !1697
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #33, !noalias !1696
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit: ; preds = %bb.hx, %bb.hy, %.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.i) ]
  %i.agq = icmp ult i64 %.sroa.12.0.i, 288230376151711744
  call void @llvm.assume(i1 %i.agq)
  %.idx = shl nuw nsw i64 %.sroa.12.0.i, 5
  %i.agr = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 %.idx ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  %.not19.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %.not19.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i1

.lr.ph.i.i.i.i.i.i.i.i1:                          ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit, %bb.iq
  %.sroa.4.020.i.i.i.i.i.i.i.i = phi ptr [ %i.agv, %bb.iq ], [ %.sroa.9.0.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ] ; 3 uses
  %i.ags = phi ptr [ %i.agt, %bb.iq ], [ %.sroa.9.0.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ] ; 7 uses
  %.sroa.011.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.ags, align 8, !noalias !1699 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 32 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i2 = icmp eq i32 %.sroa.011.0.copyload.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i2, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i1
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ags, i64 24
  %.sroa.613.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1699
  %.sroa.6.i.i.i.i.i.i.i.sroa.6.0..sroa.512.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ags, i64 16
  %.sroa.6.i.i.i.i.i.i.i.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.i.i.i.i.i.i.i.sroa.6.0..sroa.512.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i, align 8, !noalias !1699
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ags, i64 4
  %.sroa.6.i.i.i.i.i.i.i.sroa.5.0..sroa.512.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  %.sroa.6.i.i.i.i.i.i.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.6.i.i.i.i.i.i.i.sroa.5.0..sroa.512.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i, align 8, !noalias !1699
  %.sroa.6.i.i.i.i.i.i.i.sroa.0.0.copyload.i = load i32, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !1699
  br label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i

bb.iq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i1
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.020.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.agu, i64 16, i1 false), !noalias !1699
  %i.agv = getelementptr inbounds nuw i8, ptr %.sroa.4.020.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.agt, %i.agr
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i1

_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i: ; preds = %bb.iq, %bb.ip, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit
  %.sroa.12.0.i3 = phi i64 [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %.sroa.613.0.copyload.i.i.i.i.i.i.i.i, %bb.ip ], [ undef, %bb.iq ]
  %.sroa.11.0.i = phi ptr [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %.sroa.6.i.i.i.i.i.i.i.sroa.6.0.copyload.i, %bb.ip ], [ undef, %bb.iq ]
  %.sroa.8.0.i = phi i64 [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %.sroa.6.i.i.i.i.i.i.i.sroa.5.0.copyload.i, %bb.ip ], [ undef, %bb.iq ]
  %.sroa.7.0.i = phi i32 [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %.sroa.6.i.i.i.i.i.i.i.sroa.0.0.copyload.i, %bb.ip ], [ undef, %bb.iq ]
  %.sroa.0.0.i4 = phi i32 [ -1, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %.sroa.011.0.copyload.i.i.i.i.i.i.i.i, %bb.ip ], [ -1, %bb.iq ] ; 2 uses
  %.val2.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %i.agt, %bb.ip ], [ %i.agt, %bb.iq ] ; 3 uses
  %.sroa.4.020.i.pn.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %.sroa.4.020.i.i.i.i.i.i.i.i, %bb.ip ], [ %i.agv, %bb.iq ]
  %i.agw = ptrtoint ptr %i.agr to i64
  %i.agx = ptrtoint ptr %.val2.i.i.i.i.i.i to i64
  %i.agy = sub nuw i64 %i.agw, %i.agx
  %i.agz = lshr exact i64 %i.agy, 5
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  %i.aha = icmp eq ptr %i.agr, %.val2.i.i.i.i.i.i
  br i1 %i.aha, label %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtB1m_11BadSequenceEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B22_EE9from_iterINtNtBQ_9into_iter8IntoIterB36_EE0B1o_.exit.i, label %.lr.ph.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i5:                            ; preds = %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i = phi i64 [ %i.ahc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i ] ; 2 uses
  %i.ahb = getelementptr inbounds nuw [32 x i8], ptr %.val2.i.i.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i.i ; 5 uses
  %i.ahc = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.ahd = load i32, ptr %i.ahb, align 8, !range !26, !alias.scope !1702, !noalias !1703, !noundef !11 ; 2 uses
  %i.ahe = icmp eq i32 %i.ahd, -1
  br i1 %i.ahe, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i, label %bb.ir

bb.ir:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i5
  call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  switch i32 %i.ahd, label %bb.is [
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 1, label %bb.it
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 5, label %bb.iu
    i32 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 8, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 9, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 10, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 11, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
  ]

bb.is:                                            ; preds = %bb.ir
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ahf, align 8, !range !12, !alias.scope !1705, !noalias !1703, !noundef !11 ; 2 uses
  %i.ahg = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i.i.i.i: ; preds = %bb.iu, %bb.it, %bb.is
  %.val.i4.sink.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i1.i.i.i.i.i.i.i.i.i, %bb.it ], [ %.val.i4.i.i.i.i.i.i.i.i.i, %bb.iu ], [ %.val.i.i.i.i.i.i.i.i.i.i, %bb.is ]
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  %.val1.i5.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ahh, align 8, !alias.scope !1706, !noalias !1703, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i4.sink.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1707
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i

bb.it:                                            ; preds = %bb.ir
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  %.val.i1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ahi, align 8, !range !12, !alias.scope !1708, !noalias !1703, !noundef !11 ; 2 uses
end_hunk_2
