Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.081?download=true
inline.NumInlined: 391
inline.NumDeleted: 196
begin_hunk_0_@_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsgGgPqgSfnMH_7storage:bb.a
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.lr.ph ], [ %i.ak, %bb.e ]
  %.pn.i.i = phi i64 [ %i.p, %.lr.ph ], [ %i.al, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.i      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !315 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.aj, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [80 x i8], ptr %i.j, i64 %i.ab ; 11 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -80
  %i.ae = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsexYYUdYSQU6_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ad), !noalias !316
  br i1 %i.ae, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsgGgPqgSfnMH_7storage.exit, label %bb.d, !prof !12

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit, !prof !13

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i, %i.ak
  br label %bb.c

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsgGgPqgSfnMH_7storage.exit: ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.experimental.noalias.scope.decl(metadata !319), !noalias !320
  call void @llvm.experimental.noalias.scope.decl(metadata !321), !noalias !320
  %i.an = load i8, ptr %i.o, align 8, !range !322, !alias.scope !323, !noalias !320, !noundef !8 ; 3 uses
  %.not.i.i1 = icmp eq i8 %i.an, -1
  %i.ao = load i8, ptr %i.am, align 8, !range !322, !alias.scope !324, !noalias !320, !noundef !8 ; 2 uses
  %i.ap = icmp eq i8 %i.ao, -1                    ; 2 uses
  br i1 %.not.i.i1, label %.split29, label %bb.f

bb.f:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsgGgPqgSfnMH_7storage.exit
  br i1 %i.ap, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit, label %bb.g

.split29:                                         ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsgGgPqgSfnMH_7storage.exit
  br i1 %i.ap, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !325), !noalias !320
  call void @llvm.experimental.noalias.scope.decl(metadata !326), !noalias !320
  %i.aq = icmp eq i8 %i.an, %i.ao
  br i1 %i.aq, label %bb.h, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

bb.h:                                             ; preds = %bb.g
  switch i8 %i.an, label %default.unreachable [
    i8 0, label %.split28
    i8 1, label %.split27
    i8 2, label %.split26
    i8 3, label %bb.i
    i8 4, label %.split23
    i8 5, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit
    i8 6, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

.split28:                                         ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !327, !noalias !320, !noundef !8
  %i.at = getelementptr inbounds i8, ptr %i.ac, i64 -52
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !328, !noalias !320, !noundef !8
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

.split27:                                         ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ax = load double, ptr %i.aw, align 8, !alias.scope !327, !noalias !320, !noundef !8
  %i.ay = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.az = load double, ptr %i.ay, align 8, !alias.scope !328, !noalias !320, !noundef !8
  %i.ba = fcmp oeq double %i.ax, %i.az
  br i1 %i.ba, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

.split26:                                         ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !327, !noalias !320, !noundef !8
  %i.bd = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !328, !noalias !320, !noundef !8
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !327, !noalias !320, !noundef !8 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !328, !noalias !320, !noundef !8
  %i.bk = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bk, label %.split25, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

.split23:                                         ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !range !14, !alias.scope !327, !noalias !320, !noundef !8
  %i.bn = getelementptr inbounds i8, ptr %i.ac, i64 -55
  %i.bo = load i8, ptr %i.bn, align 1, !range !14, !alias.scope !328, !noalias !320, !noundef !8
  %i.bp = icmp eq i8 %i.bm, %i.bo
  br i1 %i.bp, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

bb.j:                                             ; preds = %bb.h
  %i.bq = getelementptr i8, ptr %i.o, i64 24
  %.val3.i.i = load i64, ptr %i.bq, align 8, !alias.scope !327, !noalias !320, !noundef !8 ; 2 uses
  %i.br = getelementptr i8, ptr %i.ac, i64 -32
  %.val5.i.i = load i64, ptr %i.br, align 8, !alias.scope !328, !noalias !320, !noundef !8
  %i.bs = icmp eq i64 %.val3.i.i, %.val5.i.i
  br i1 %i.bs, label %.split24, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

.split24:                                         ; preds = %bb.j
  %i.bt = getelementptr i8, ptr %i.ac, i64 -40
  %.val4.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !328, !noalias !320, !nonnull !8, !noundef !8
  %i.bu = getelementptr i8, ptr %i.o, i64 16
  %.val.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !327, !noalias !320, !nonnull !8, !noundef !8
  %i.bv = call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthCsgGgPqgSfnMH_7storage(ptr noundef nonnull %.val.i.i, ptr noundef nonnull %.val4.i.i, i64 noundef %.val3.i.i), !noalias !329, !inline_history !312
  br i1 %i.bv, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

.split25:                                         ; preds = %bb.i
  %i.bw = getelementptr inbounds i8, ptr %i.ac, i64 -40
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !328, !noalias !320, !nonnull !8, !noundef !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !327, !noalias !320, !nonnull !8, !noundef !8
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.bz, ptr nonnull %i.bx, i64 %i.bh), !noalias !329, !inline_history !312
  %i.ca = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ca, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit: ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cc = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.cd = call noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cc), !noalias !320, !inline_history !313
  br i1 %i.cd, label %.split.backedge, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

.split.backedge:                                  ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit, %.split23, %.split24, %.split25, %.split26, %.split27, %.split28, %.split29
  %i.ce = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0      ; 2 uses
  %.not.i.not = icmp eq ptr %i.cf, null
  br i1 %.not.i.not, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit, label %.lr.ph

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit: ; preds = %.split29, %.split28, %.split27, %.split26, %.split25, %.split24, %.split23, %bb.j, %bb.i, %bb.g, %bb.f, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit, %.split.backedge, %._crit_edge.i.i, %bb.b
  %.not.i.not14 = phi i1 [ false, %._crit_edge.i.i ], [ %.not.i.not.us.mux, %bb.b ], [ true, %.split.backedge ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.j ], [ false, %.split23 ], [ false, %.split24 ], [ false, %.split25 ], [ false, %.split26 ], [ false, %.split27 ], [ false, %.split28 ], [ false, %.split29 ], [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2F_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit
  %.sroa.0.0 = phi i1 [ %.not.i.not14, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3all5checkTRBU_RB1w_ENCNvXs4_B6_INtB6_7HashMapBU_B1w_ENtNtB2l_3cmp9PartialEq2eq0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapmNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !8
  %.not = icmp eq i64 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE4iterCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.g = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !372 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %.not20.not.i = icmp eq ptr %i.h, null
  br i1 %.not20.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1R_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Z_3cmp9PartialEq2eq0E0INtNtNtB1Z_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = icmp eq i64 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !372
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !372
  %i.l = zext i64 %.val.i.i.i.i to i128
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !372 ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !alias.scope !372, !nonnull !8 ; 2 uses
  br i1 %i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1R_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Z_3cmp9PartialEq2eq0E0INtNtNtB1Z_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.backedge.i
  %i.p = phi ptr [ %i.bl, %.backedge.i ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %i.q = phi { ptr, ptr } [ %i.bk, %.backedge.i ], [ %i.g, %.lr.ph.i ]
  %i.r = extractvalue { ptr, ptr } %i.q, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %.val6.i.i.i.i = load i32, ptr %i.p, align 4, !alias.scope !377, !noalias !378, !noundef !8
  %i.s = zext i32 %.val6.i.i.i.i to i64
  %i.t = xor i64 %.val5.i.i.i.i, %i.s
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 6364136223846793005 ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %.masked.i.i.i.i.i.i.i.i = and i128 %i.v, 18446744073709551615
  %i.x = xor i128 %i.w, %.masked.i.i.i.i.i.i.i.i
  %i.y = mul nuw i128 %i.x, %i.l                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64                 ; 2 uses
  %i.ac = lshr i64 %i.ab, 57
  %i.ad = trunc nuw nsw i64 %i.ac to i8
  %i.ae = insertelement <16 x i8> poison, i8 %i.ad, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.aw, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.split.i ], [ %i.ax, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.n ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.ag, align 1, !noalias !379 ; 2 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.af
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.av, %bb.d ], [ %i.ai, %bb.c ] ; 3 uses
  %i.aj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  %i.am = and i64 %i.al, %i.n
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [56 x i8], ptr %i.o, i64 %i.an ; 5 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -56
  %i.aq = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownmINtB2_10EquivalentmE10equivalentCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ap), !noalias !380
  br i1 %i.aq, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapmNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE3getmECsgGgPqgSfnMH_7storage.exit.i.i.i, label %bb.d, !prof !12

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.ar = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.e, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1R_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Z_3cmp9PartialEq2eq0E0INtNtNtB1Z_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit, !prof !13

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.au = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.av = and i16 %i.au, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aw = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.ax = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.aw
  br label %bb.c

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapmNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE3getmECsgGgPqgSfnMH_7storage.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !385, !noalias !372, !noundef !8 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ao, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !386, !noalias !387, !noundef !8
  %.not.i.i.i.i.i = icmp eq i64 %i.az, %i.bb
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1R_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Z_3cmp9PartialEq2eq0E0INtNtNtB1Z_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

bb.f:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapmNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE3getmECsgGgPqgSfnMH_7storage.exit.i.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.ao, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !388
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r), !noalias !389
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.bd = icmp eq i64 %i.az, 0
  %i.be = getelementptr inbounds i8, ptr %i.ao, i64 -16
  %i.bf = getelementptr inbounds i8, ptr %i.ao, i64 -40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !391, !noalias !372 ; 2 uses
  %i.bh = load ptr, ptr %i.bc, align 8, !alias.scope !391, !noalias !372, !nonnull !8 ; 2 uses
  br i1 %i.bd, label %.split.us.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.us.i.i.i.i.i.i:                            ; preds = %bb.f
  %i.bi = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !392
  %i.bj = extractvalue { ptr, ptr } %i.bi, 0
  %.not.us.not.i.not.i.i.i.i.not.i = icmp eq ptr %i.bj, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !388
  br i1 %.not.us.not.i.not.i.i.i.i.not.i, label %.backedge.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1R_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Z_3cmp9PartialEq2eq0E0INtNtNtB1Z_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

.backedge.i:                                      ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2j_7HashMapmB1f_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.i, %.split.us.i.i.i.i.i.i
  %i.bk = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !372 ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 2 uses
  %.not.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1R_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Z_3cmp9PartialEq2eq0E0INtNtNtB1Z_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit, label %.lr.ph.split.i

.split.i.i.i.i.i.i:                               ; preds = %bb.f, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2M_7HashMapyB1f_ENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i
  %i.bm = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !372 ; 2 uses
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0      ; 3 uses
  %.not.not.not.i.i.i.i.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.not.not.i.i.i.i.not.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2j_7HashMapmB1f_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.i, label %bb.g

bb.g:                                             ; preds = %.split.i.i.i.i.i.i
  %i.bo = extractvalue { ptr, ptr } %i.bm, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %.val6.i.i.i.i.i.i = load i8, ptr %i.bo, align 1, !noalias !372
  %i.bp = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn), !noalias !372 ; 2 uses
  %i.bq = lshr i64 %i.bp, 57
  %i.br = trunc nuw nsw i64 %i.bq to i8
  %i.bs = insertelement <16 x i8> poison, i8 %i.br, i64 0
  %i.bt = shufflevector <16 x i8> %i.bs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.ck, %bb.j ]
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bp, %bb.g ], [ %i.cl, %bb.j ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %i.bg ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bu, align 1, !noalias !393 ; 2 uses
  %i.bv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i, %i.bt
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.h, %bb.i
  %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cj, %bb.i ], [ %i.bw, %bb.h ] ; 3 uses
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i, %i.by
  %i.ca = and i64 %i.bz, %i.bg
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -16
  %i.ce = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cd), !noalias !394
  br i1 %i.ce, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2M_7HashMapyB1f_ENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i, label %bb.i, !prof !12

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.i, %bb.h
  %i.cf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %i.ch = icmp eq i16 %i.cg, 0
  br i1 %i.ch, label %bb.j, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2j_7HashMapmB1f_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.thread8.i, !prof !13

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ci = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i, -1
  %i.cj = and i16 %i.ci, %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ck = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.cl = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i, %i.ck
  br label %bb.h

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2M_7HashMapyB1f_ENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %.val3.i.i.i.i.i.i.i.i = load i8, ptr %i.cm, align 1, !range !395, !noalias !372, !noundef !8
  %.not8.i.i.i.i.i.i = icmp eq i8 %.val6.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i
  br i1 %.not8.i.i.i.i.i.i, label %.split.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2j_7HashMapmB1f_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.thread8.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2j_7HashMapmB1f_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.thread8.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRyRNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2M_7HashMapyB1f_ENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !388
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1R_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Z_3cmp9PartialEq2eq0E0INtNtNtB1Z_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2j_7HashMapmB1f_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.i: ; preds = %.split.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !388
  br label %.backedge.i

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1R_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Z_3cmp9PartialEq2eq0E0INtNtNtB1Z_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit: ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapmNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE3getmECsgGgPqgSfnMH_7storage.exit.i.i.i, %.split.us.i.i.i.i.i.i, %.backedge.i, %._crit_edge.i.i.i.i.i, %bb.b, %.lr.ph.split.us.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2j_7HashMapmB1f_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.thread8.i
  %i.cn = phi i1 [ false, %._crit_edge.i.i.i.i.i ], [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRmRNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2j_7HashMapmB1f_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtBe_3cmp9PartialEq2eq0E0CsgGgPqgSfnMH_7storage.exit.thread8.i ], [ true, %bb.b ], [ false, %.lr.ph.split.us.i ], [ false, %.split.us.i.i.i.i.i.i ], [ true, %.backedge.i ], [ false, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapmNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE3getmECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1R_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Z_3cmp9PartialEq2eq0E0INtNtNtB1Z_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit
  %.sroa.0.0 = phi i1 [ %i.cn, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermNtNtCsPYQCUnoTxQ_10collection16collection_state9ShardInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1R_3all5checkTRmRBV_ENCNvXs4_B6_INtB6_7HashMapmBV_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateENtNtB1Z_3cmp9PartialEq2eq0E0INtNtNtB1Z_3ops12control_flow11ControlFlowuEECsgGgPqgSfnMH_7storage.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs6_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.c = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCs8O45qwFIwQX_10serde_json5value5ValueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_B1G_EECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscr48XpBcNGU_8schemars17json_schema_impls4mapsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsgGgPqgSfnMH_7storage5types17MessageSendErrorsENtB8_10JsonSchema11json_schemaB2t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef align 8 dereferenceable(296) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [288 x i8], align 8               ; 15 uses
  %i.d = alloca [288 x i8], align 8               ; 4 uses
  %i.e = alloca [200 x i8], align 8               ; 17 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0 = alloca [240 x i8], align 8           ; 9 uses
  %i.h = alloca [288 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvMs2_NtCscr48XpBcNGU_8schemars3genNtB6_15SchemaGenerator13subschema_forNtNtCsgGgPqgSfnMH_7storage5types17MessageSendErrorsEB1e_(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(296) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17
  %i.i = call noundef dereferenceable_or_null(1) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 289) 1, i64 noundef range(i64 1, 9) 1) #17 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #20
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  store i8 2, ptr %i.i, align 1
  store i64 -1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %i.h, i64 288, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !412
  %i.k = call noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 289) 288, i64 noundef range(i64 1, 9) 8) #17, !noalias !412 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.g, !prof !13

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #20
          to label %.noexc15 unwind label %bb.e

.noexc15:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscr48XpBcNGU_8schemars6schema6SchemaECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.d) #16
          to label %.body11 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

.body11:                                          ; preds = %bb.e, %.body17
  %.pn = phi { ptr, i32 } [ %.pn.i, %.body17 ], [ %i.m, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscr48XpBcNGU_8schemars6schema11SingleOrVecNtB10_12InstanceTypeEEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #16
          to label %bb.ac unwind label %bb.ab

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.k, ptr noundef nonnull align 8 dereferenceable(288) %i.h, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !413
  store ptr null, ptr %i.b, align 8, !noalias !413
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  %i.o = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4)
          to label %bb.j unwind label %bb.i, !noalias !413 ; 2 uses

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.p, %bb.i ]
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body17 unwind label %bb.l, !noalias !413

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.q = extractvalue { i64, i64 } %i.o, 0
  %i.r = extractvalue { i64, i64 } %i.o, 1
  store i64 0, ptr %i.a, align 8, !alias.scope !414, !noalias !413
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !414, !noalias !413
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !414, !noalias !413
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !414, !noalias !413
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !414, !noalias !413
  store i64 %i.q, ptr %i.s, align 8, !alias.scope !414, !noalias !413
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.r, ptr %i.t, align 8, !alias.scope !414, !noalias !413
  %i.u = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4)
          to label %bb.m unwind label %bb.k, !noalias !413 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjyaAxtYV86Z_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCscr48XpBcNGU_8schemars6schema6SchemaEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a) #16
          to label %bb.h unwind label %bb.l, !noalias !413

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !413
  unreachable

.body17:                                          ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCscr48XpBcNGU_8schemars6schema6SchemaEEECsgGgPqgSfnMH_7storage(ptr nonnull %i.k) #16
          to label %.body11 unwind label %bb.ab

bb.m:                                             ; preds = %bb.j
  %i.x = extractvalue { i64, i64 } %i.u, 0
  %i.y = extractvalue { i64, i64 } %i.u, 1
  %.sroa.9.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.72..sroa_idx, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !413
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 0, ptr %i.ac, align 8
  %.sroa.6.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.72..sroa_idx, align 8
  %.sroa.7.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.7.72..sroa_idx, align 8
  %.sroa.8.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr @0, ptr %.sroa.8.72..sroa_idx, align 8
  %.sroa.10.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store i64 %i.x, ptr %.sroa.10.72..sroa_idx, align 8
  %.sroa.11.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store i64 %i.y, ptr %.sroa.11.72..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store ptr %i.k, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store ptr null, ptr %i.ae, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !415
  %i.af = call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 289) 200, i64 noundef range(i64 1, 9) 8) #17, !noalias !415 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.n, label %bb.q, !prof !13

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #20
          to label %.noexc19 unwind label %bb.o

.noexc19:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscr48XpBcNGU_8schemars6schema16ObjectValidationECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.e) #16
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

end_hunk_0
