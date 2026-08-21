Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.15?download=true
inline.NumInlined: 428
inline.NumDeleted: 253
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB2_13ResponseCache19clamp_positive_ttls:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !347, !noalias !348, !nonnull !18, !noundef !18 ; 2 uses
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBV_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBX_.exit.thread5.i.i.i.i.i.i.i.i.i.i
  %i.bl = phi ptr [ %i.bm, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBV_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBX_.exit.thread5.i.i.i.i.i.i.i.i.i.i ], [ %i.bh, %bb.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 272 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  %i.bo = call { i16, i16 } @_RNvXs0_NtNtCsjXdHNeFfodD_13hickory_proto2rr11record_dataNtB5_5RDataNtB7_10RecordData11record_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.bn), !noalias !350 ; 2 uses
  %i.bp = extractvalue { i16, i16 } %i.bo, 0      ; 2 uses
  %i.bq = load i16, ptr %i.g, align 2, !range !278, !noalias !350, !noundef !18
  %i.br = icmp eq i16 %i.bp, %i.bq
  br i1 %i.br, label %bb.j, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBV_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBX_.exit.thread5.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bs = extractvalue { i16, i16 } %i.bo, 1
  %i.bt = icmp ne i16 %i.bp, 37
  %i.bu = load i16, ptr %i.h, align 2
  %i.bv = icmp eq i16 %i.bs, %i.bu
  %or.cond = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordERB1u_NCINvXs_B2_INtB2_5ChainB14_B14_ENtNtNtB6_6traits8iterator8Iterator4findQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB3G_13ResponseCache19clamp_positive_ttls0E0EB3I_.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBV_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBX_.exit.thread5.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBV_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBX_.exit.thread5.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bw = icmp eq ptr %i.bm, %i.bj
  br i1 %i.bw, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBV_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBX_.exit.thread5.i.i.i.i.i.i.i.i.i.i, %bb.i
  store ptr null, ptr %i.bg, align 8, !alias.scope !338, !noalias !339
  br label %bb.k

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordERB1u_NCINvXs_B2_INtB2_5ChainB14_B14_ENtNtNtB6_6traits8iterator8Iterator4findQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB3G_13ResponseCache19clamp_positive_ttls0E0EB3I_.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  store ptr %i.bm, ptr %i.bg, align 8, !alias.scope !347, !noalias !348
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  br label %.loopexit.i

bb.k:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !357, !noalias !358, !noundef !18 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !363, !noalias !364, !nonnull !18, !noundef !18 ; 2 uses
  %i.cb = icmp eq ptr %i.by, %i.ca
  br i1 %i.cb, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i4.i.i.i.i.i.i.i

.lr.ph.i.i.i4.i.i.i.i.i.i.i:                      ; preds = %bb.l, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBU_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBW_.exit.thread5.i.i.i.i.i.i.i.i.i.i
  %i.cc = phi ptr [ %i.cd, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBU_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBW_.exit.thread5.i.i.i.i.i.i.i.i.i.i ], [ %i.by, %bb.l ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 272 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.cf = call { i16, i16 } @_RNvXs0_NtNtCsjXdHNeFfodD_13hickory_proto2rr11record_dataNtB5_5RDataNtB7_10RecordData11record_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.ce), !noalias !366 ; 2 uses
  %i.cg = extractvalue { i16, i16 } %i.cf, 0      ; 2 uses
  %i.ch = load i16, ptr %i.g, align 2, !range !278, !noalias !366, !noundef !18
  %i.ci = icmp eq i16 %i.cg, %i.ch
  br i1 %i.ci, label %bb.m, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBU_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBW_.exit.thread5.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i4.i.i.i.i.i.i.i
  %i.cj = extractvalue { i16, i16 } %i.cf, 1
  %i.ck = icmp ne i16 %i.cg, 37
  %i.cl = load i16, ptr %i.h, align 2
  %i.cm = icmp eq i16 %i.cj, %i.cl
  %or.cond46 = select i1 %i.ck, i1 true, i1 %i.cm
  br i1 %or.cond46, label %.loopexit.i.loopexit51, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBU_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBW_.exit.thread5.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBU_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBW_.exit.thread5.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i4.i.i.i.i.i.i.i
  %i.cn = icmp eq ptr %i.cd, %i.ca
  br i1 %i.cn, label %.loopexit.i.i.i.i.i.loopexit, label %.lr.ph.i.i.i4.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.loopexit:                     ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBU_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBW_.exit.thread5.i.i.i.i.i.i.i.i.i.i
  store ptr %i.cd, ptr %i.bx, align 8, !alias.scope !363, !noalias !364
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.i.i.i.i.i.loopexit, %bb.l, %bb.k
  store i64 0, ptr %i.e, align 8, !alias.scope !326, !noalias !327
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.i.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionQNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1P_5ChainIB2j_INtNtNtB5_5slice4iter7IterMutBJ_EB2A_EB2A_ENtNtNtB1T_6traits8iterator8Iterator4next0ECs9RFwvXNxPyg_16hickory_resolver.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !373, !noalias !374, !noundef !18 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainIB1e_INtNtNtBc_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1C_EB1C_ENCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB38_13ResponseCache19clamp_positive_ttls0ENCB35_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYNtNtBc_4time8DurationNtNtBc_3cmp3Ord3minEB3a_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !379, !noalias !380, !nonnull !18, !noundef !18 ; 2 uses
  %i.cs = icmp eq ptr %i.cp, %i.cr
  br i1 %i.cs, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainIB1e_INtNtNtBc_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1C_EB1C_ENCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB38_13ResponseCache19clamp_positive_ttls0ENCB35_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYNtNtBc_4time8DurationNtNtBc_3cmp3Ord3minEB3a_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.o, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBT_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBV_.exit.thread5.i.i.i.i.i.i.i
  %i.ct = phi ptr [ %i.cu, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBT_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBV_.exit.thread5.i.i.i.i.i.i.i ], [ %i.cp, %bb.o ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 272 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  %i.cw = call { i16, i16 } @_RNvXs0_NtNtCsjXdHNeFfodD_13hickory_proto2rr11record_dataNtB5_5RDataNtB7_10RecordData11record_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.cv), !noalias !382 ; 2 uses
  %i.cx = extractvalue { i16, i16 } %i.cw, 0      ; 2 uses
  %i.cy = load i16, ptr %i.g, align 2, !range !278, !noalias !382, !noundef !18
  %i.cz = icmp eq i16 %i.cx, %i.cy
  br i1 %i.cz, label %bb.p, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBT_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBV_.exit.thread5.i.i.i.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.da = extractvalue { i16, i16 } %i.cw, 1
  %i.db = icmp ne i16 %i.cx, 37
  %i.dc = load i16, ptr %i.h, align 2
  %i.dd = icmp eq i16 %i.da, %i.dc
  %or.cond48 = select i1 %i.db, i1 true, i1 %i.dd
  br i1 %or.cond48, label %.loopexit.i.loopexit, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBT_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBV_.exit.thread5.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBT_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBV_.exit.thread5.i.i.i.i.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i
  %i.de = icmp eq ptr %i.cu, %i.cr
  br i1 %i.de, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainIB1e_INtNtNtBc_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1C_EB1C_ENCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB38_13ResponseCache19clamp_positive_ttls0ENCB35_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYNtNtBc_4time8DurationNtNtBc_3cmp3Ord3minEB3a_.exit, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.loopexit:                             ; preds = %bb.p
  store ptr %i.cu, ptr %i.co, align 8, !alias.scope !379, !noalias !380
  br label %.loopexit.i

.loopexit.i.loopexit51:                           ; preds = %bb.m
  store ptr %i.cd, ptr %i.bx, align 8, !alias.scope !363, !noalias !364
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit51, %.loopexit.i.loopexit, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordERB1u_NCINvXs_B2_INtB2_5ChainB14_B14_ENtNtNtB6_6traits8iterator8Iterator4findQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB3G_13ResponseCache19clamp_positive_ttls0E0EB3I_.exit.i.i.i.i.i.i.i
  %.sroa.0.0.i2.i.i.ph.i.i = phi ptr [ %i.bl, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordERB1u_NCINvXs_B2_INtB2_5ChainB14_B14_ENtNtNtB6_6traits8iterator8Iterator4findQQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB3G_13ResponseCache19clamp_positive_ttls0E0EB3I_.exit.i.i.i.i.i.i.i ], [ %i.ct, %.loopexit.i.loopexit ], [ %i.cc, %.loopexit.i.loopexit51 ]
  %i.df = getelementptr i8, ptr %.sroa.0.0.i2.i.i.ph.i.i, i64 268
  %.val.i.i = load i32, ptr %i.df, align 4, !noalias !383, !noundef !18
  %i.dg = zext i32 %.val.i.i to i64
  %i.dh = call { i64, i32 } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainIB1k_INtNtNtBc_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1I_EB1I_ENCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB3e_13ResponseCache19clamp_positive_ttls0ENCB3b_s_0ENtNtNtBa_6traits8iterator8Iterator4foldNtNtBc_4time8DurationNvYB5n_NtNtBc_3cmp3Ord3minEB3g_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.e, i64 noundef %i.dg, i32 noundef 0) ; 2 uses
  %i.di = extractvalue { i64, i32 } %i.dh, 0
  %i.dj = extractvalue { i64, i32 } %i.dh, 1
  br label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainIB1e_INtNtNtBc_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1C_EB1C_ENCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB38_13ResponseCache19clamp_positive_ttls0ENCB35_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYNtNtBc_4time8DurationNtNtBc_3cmp3Ord3minEB3a_.exit

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainIB1e_INtNtNtBc_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1C_EB1C_ENCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB38_13ResponseCache19clamp_positive_ttls0ENCB35_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYNtNtBc_4time8DurationNtNtBc_3cmp3Ord3minEB3a_.exit: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBT_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBV_.exit.thread5.i.i.i.i.i.i.i, %bb.n, %bb.o, %.loopexit.i
  %.sroa.2.0.i = phi i32 [ %i.dj, %.loopexit.i ], [ -1, %bb.n ], [ -1, %bb.o ], [ -1, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBT_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBV_.exit.thread5.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i14 = phi i64 [ %i.di, %.loopexit.i ], [ undef, %bb.n ], [ undef, %bb.o ], [ undef, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtBT_13ResponseCache19clamp_positive_ttls0INtB7_5FnMutTRRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEE8call_mutBV_.exit.thread5.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not9 = icmp eq i32 %.sroa.2.0.i, -1           ; 2 uses
  %.sroa.06.0 = select i1 %.not9, i64 %i.ax, i64 %.sroa.0.0.i14 ; 5 uses
  %.sroa.57.0 = select i1 %.not9, i32 %i.az, i32 %.sroa.2.0.i ; 3 uses
  %i.dk = icmp eq i64 %i.ax, %i.bb
  %i.dl = icmp samesign ule i32 %i.az, %i.bd
  %i.dm = icmp ule i64 %i.ax, %i.bb
  %i.dn = select i1 %i.dk, i1 %i.dl, i1 %i.dm
  br i1 %i.dn, label %bb.r, label %bb.q, !prof !384

bb.q:                                             ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainIB1e_INtNtNtBc_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1C_EB1C_ENCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB38_13ResponseCache19clamp_positive_ttls0ENCB35_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYNtNtBc_4time8DurationNtNtBc_3cmp3Ord3minEB3a_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #24
  unreachable

bb.r:                                             ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainIB1e_INtNtNtBc_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1C_EB1C_ENCNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB38_13ResponseCache19clamp_positive_ttls0ENCB35_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYNtNtBc_4time8DurationNtNtBc_3cmp3Ord3minEB3a_.exit
  %i.do = icmp eq i64 %.sroa.06.0, %i.ax
  %i.dp = icmp samesign ult i32 %.sroa.57.0, %i.az
  %i.dq = icmp ult i64 %.sroa.06.0, %i.ax
  %i.dr = select i1 %i.do, i1 %i.dp, i1 %i.dq
  br i1 %i.dr, label %_RNvYNtNtCsj6eKBz9Db1c_4core4time8DurationNtNtB6_3cmp3Ord5clampCs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = icmp eq i64 %.sroa.06.0, %i.bb
  %i.dt = icmp samesign ugt i32 %.sroa.57.0, %i.bd
  %i.du = icmp ugt i64 %.sroa.06.0, %i.bb
  %i.dv = select i1 %i.ds, i1 %i.dt, i1 %i.du     ; 2 uses
  %..i15 = select i1 %i.dv, i32 %i.bd, i32 %.sroa.57.0
  %.3.i = select i1 %i.dv, i64 %i.bb, i64 %.sroa.06.0
  br label %_RNvYNtNtCsj6eKBz9Db1c_4core4time8DurationNtNtB6_3cmp3Ord5clampCs9RFwvXNxPyg_16hickory_resolver.exit

_RNvYNtNtCsj6eKBz9Db1c_4core4time8DurationNtNtB6_3cmp3Ord5clampCs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.r, %bb.s
  %.sroa.4.0.i = phi i32 [ %..i15, %bb.s ], [ %i.az, %bb.r ]
  %.sroa.0.0.i16 = phi i64 [ %.3.i, %bb.s ], [ %i.ax, %bb.r ]
  %i.dw = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i16, 0
  %i.dx = insertvalue { i64, i32 } %i.dw, i32 %.sroa.4.0.i, 1
  ret { i64, i32 } %i.dx
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB2_13ResponseCache3get(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i.i.i.i.i.i46.i = alloca [28 x i8], align 4 ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 20 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i.i.i.i.i.i = alloca [28 x i8], align 2 ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.0.i.i.i.i47.i = alloca [128 x i8], align 8 ; 6 uses
  %i.m = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.9.i.i.i.i = alloca [80 x i8], align 8    ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.sroa.0.i.i = alloca [16 x i8], align 8 ; 2 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 2                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i1.i.i.i.i.i.i.i = alloca [28 x i8], align 4 ; 5 uses
  %i.u = alloca [40 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i.i.i.i.i.i.i.i = alloca [28 x i8], align 2 ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [80 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i.i.i.i11.i.i.i = alloca [28 x i8], align 2 ; 5 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.0.i.i.i.i.i.i = alloca [120 x i8], align 8 ; 5 uses
  %i.aa = alloca [80 x i8], align 8               ; 9 uses
  %.sroa.0.i.i12.i.i.i = alloca [200 x i8], align 8 ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.5.sroa.4.i.i.i.i.i.i.i = alloca [28 x i8], align 4 ; 5 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.0.i.i.i.i.i = alloca [40 x i8], align 8  ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 16              ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 16              ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 16              ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 10 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 16              ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 16              ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.21.sroa.5.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %.sroa.36.sroa.7.i.i.i = alloca [24 x i8], align 8 ; 7 uses
  %i.ar = alloca [64 x i8], align 8               ; 50 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 8 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [16 x i8], align 8               ; 8 uses
  %i.ay = alloca [72 x i8], align 8               ; 45 uses
  %.sroa.0.i.sroa.4.a = alloca [16 x i8], align 8 ; 3 uses
  %.sroa.20.i = alloca [16 x i8], align 8         ; 2 uses
  %i.az = alloca [4 x i8], align 4                ; 8 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [40 x i8], align 8               ; 6 uses
  %i.bc = alloca [40 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @_RINvMs4_NtNtCs3kA96HWnWrK_4moka4sync5cacheINtB6_5CacheNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryE3getBQ_EB1I_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !range !385, !noundef !18
  %.not = icmp eq i32 %i.be, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !18 ; 2 uses
  %i.bh = icmp eq i64 %3, %i.bg
  %i.bi = icmp sle i64 %3, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !range !310
  %i.bl = icmp samesign ule i32 %4, %i.bk
  %.sroa.01.0 = select i1 %i.bh, i1 %i.bl, i1 %i.bi
  br i1 %.sroa.01.0, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit20

bb.d:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.bm = load ptr, ptr %i.bc, align 8, !alias.scope !395, !nonnull !18, !noundef !18
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !395
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit20

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bc) #23
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit20

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 %3, ptr %i.ba, align 8, !noalias !399
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %4, ptr %i.bp, align 8, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !399
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !396, !noalias !401, !noundef !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !range !310, !alias.scope !396, !noalias !401, !noundef !18
  %i.bu = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant25saturating_duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ba, i64 noundef %i.br, i32 noundef %i.bt)
          to label %.noexc unwind label %bb.ht

.noexc:                                           ; preds = %bb.f
  %i.bv = extractvalue { i64, i32 } %i.bu, 0
  %storemerge84.i = call i64 @llvm.umin.i64(i64 %i.bv, i64 4294967295)
  %storemerge.i = trunc nuw i64 %storemerge84.i to i32
  store i32 %storemerge.i, ptr %i.az, align 4, !noalias !399
  %i.bw = load ptr, ptr %i.bc, align 8, !alias.scope !396, !noalias !401, !nonnull !18, !noundef !18 ; 72 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !range !20, !noalias !399, !noundef !18
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %bb.g, label %bb.ev

bb.g:                                             ; preds = %.noexc
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !399
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.cb = load i8, ptr %i.ca, align 8, !range !89, !alias.scope !405, !noalias !407, !noundef !18
  switch i8 %i.cb, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
    i8 6, label %bb.n
    i8 7, label %bb.o
    i8 8, label %bb.p
    i8 9, label %bb.q
    i8 10, label %bb.r
    i8 11, label %bb.s
    i8 12, label %bb.cs
  ]

default.unreachable:                              ; preds = %bb.bw, %bb.s, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.ay, align 8, !alias.scope !402, !noalias !408
  br label %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i

bb.i:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !405, !noalias !407, !nonnull !18, !noundef !18 ; 2 uses
  %i.ce = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !407
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.cu, label %bb.ct

bb.j:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !range !97, !alias.scope !405, !noalias !407, !noundef !18 ; 4 uses
  %.not.i.i = icmp eq i32 %i.ch, 2
  br i1 %.not.i.i, label %.thread.i, label %bb.cv

bb.k:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !405, !noalias !407, !nonnull !18, !noundef !18 ; 2 uses
  %i.ck = atomicrmw add ptr %i.cj, i64 1 monotonic, align 8, !noalias !407
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %bb.es, label %bb.er

bb.l:                                             ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !405, !noalias !407, !nonnull !18, !noundef !18
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !405, !noalias !407, !noundef !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.cn, ptr %i.cq, align 8, !alias.scope !402, !noalias !408
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.cp, ptr %i.cr, align 8, !alias.scope !402, !noalias !408
  store i8 4, ptr %i.ay, align 8, !alias.scope !402, !noalias !408
  br label %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i

bb.m:                                             ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs)
          to label %.noexc4 unwind label %bb.ht

.noexc4:                                          ; preds = %bb.m
  store i8 5, ptr %i.ay, align 8, !alias.scope !402, !noalias !408
  br label %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i

bb.n:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 25
  %i.cv = load i8, ptr %i.cu, align 1, !range !409, !alias.scope !405, !noalias !407, !noundef !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.cv, ptr %i.cw, align 1, !alias.scope !402, !noalias !408
  store i8 6, ptr %i.ay, align 8, !alias.scope !402, !noalias !408
  br label %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i

bb.o:                                             ; preds = %bb.g
  store i8 7, ptr %i.ay, align 8, !alias.scope !402, !noalias !408
  br label %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i

bb.p:                                             ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  invoke fastcc void @_RNvXs0_NtCsjXdHNeFfodD_13hickory_proto5errorNtB5_10ProtoErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cx) #25
          to label %.noexc5 unwind label %bb.ht

.noexc5:                                          ; preds = %bb.p
  store i8 8, ptr %i.ay, align 8, !alias.scope !402, !noalias !408
  br label %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i

bb.q:                                             ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !405, !noalias !407, !nonnull !18, !noundef !18 ; 2 uses
  %i.db = atomicrmw add ptr %i.da, i64 1 monotonic, align 8, !noalias !407
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %bb.eu, label %bb.et

bb.r:                                             ; preds = %bb.g
  store i8 10, ptr %i.ay, align 8, !alias.scope !402, !noalias !408
  br label %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i

bb.s:                                             ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !410
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !410
  %i.de = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.df = load i8, ptr %i.dd, align 8, !range !118, !alias.scope !416, !noalias !417, !noundef !18
  switch i8 %i.df, label %default.unreachable [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
    i8 5, label %bb.y
    i8 6, label %bb.z
    i8 7, label %bb.aa
    i8 8, label %bb.ab
    i8 9, label %bb.ae
    i8 10, label %bb.af
    i8 11, label %bb.ag
    i8 12, label %bb.bw
    i8 13, label %bb.ch
    i8 14, label %bb.ci
    i8 15, label %bb.cj
end_hunk_0
begin_hunk_1_@_RNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB2_13ResponseCache3get:bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj20_EECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #20
          to label %.body.i.i.i.i.i unwind label %bb.gf, !noalias !557

bb.ge:                                            ; preds = %bb.gb
  %.sroa.5.sroa.4.6..sroa_idx.i.i.i.i.i.i59.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.i.i.i.i.i.i46.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.sroa.4.6..sroa_idx.i.i.i.i.i.i59.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !559
  br label %_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i52.i

bb.gf:                                            ; preds = %bb.gd
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !557
  unreachable

_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i52.i: ; preds = %bb.ge, %bb.gc
  %.sroa.5.sroa.0.0.i.i.i.i.i.i53.i = phi i16 [ undef, %bb.ge ], [ %i.pe, %bb.gc ]
  %.sroa.0.0.i.i.i.i.i.i54.i = phi i16 [ 1, %bb.ge ], [ 0, %bb.gc ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !559
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i16 %.sroa.0.0.i.i.i.i.i.i54.i, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i, align 8, !noalias !549
  %.sroa.5.0..sroa_idx.i2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 42
  store i16 %.sroa.5.sroa.0.0.i.i.i.i.i.i53.i, ptr %.sroa.5.0..sroa_idx.i2.i.i.i.i.i, align 2, !noalias !549
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.sroa.4.i.i.i.i.i.i46.i, i64 28, i1 false), !noalias !549
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i8 %i.oq, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !549
  br label %bb.gg

bb.gg:                                            ; preds = %_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i52.i, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nj, i64 128
  %i.pi = load i64, ptr %i.ph, align 8, !alias.scope !551, !noalias !552, !noundef !18
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nj, i64 140
  %i.pk = load i16, ptr %i.pj, align 4, !alias.scope !551, !noalias !552, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !549
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.nj)
          to label %bb.gk unwind label %bb.gj, !noalias !552

bb.gh:                                            ; preds = %bb.gl, %bb.gj
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.pv, %bb.gl ], [ %i.pn, %bb.gj ] ; 2 uses
  %i.pl = load i16, ptr %i.j, align 8, !range !267, !alias.scope !560, !noalias !549, !noundef !18
  %i.pm = icmp samesign ugt i16 %i.pl, 1
  br i1 %i.pm, label %.body.i.i.i.i.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.j)
          to label %.body.i.i.i.i.i unwind label %bb.gm, !noalias !552

bb.gj:                                            ; preds = %bb.gg
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gk:                                            ; preds = %bb.gg
  %i.po = getelementptr inbounds nuw i8, ptr %i.nj, i64 142
  %i.pp = load i16, ptr %i.po, align 2, !alias.scope !551, !noalias !552, !noundef !18
  %i.pq = getelementptr inbounds nuw i8, ptr %i.nj, i64 136
  %i.pr = load i16, ptr %i.pq, align 8, !range !563, !alias.scope !551, !noalias !552, !noundef !18 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.nj, i64 138
  %i.pt = load i16, ptr %i.ps, align 2, !alias.scope !551, !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !549
  %i.pu = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pu)
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata4tsig4TSIGEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver.exit.i.i unwind label %bb.gl, !noalias !552

bb.gl:                                            ; preds = %bb.gk
  %i.pv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #20
          to label %bb.gh unwind label %bb.gm, !noalias !552

bb.gm:                                            ; preds = %bb.gl, %bb.gi
  %i.pw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !552
  unreachable

bb.gn:                                            ; preds = %bb.fz
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.gn, %bb.gi, %bb.gh, %bb.gd
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.px, %bb.gn ], [ %i.pf, %bb.gd ], [ %.pn.i.i.i.i.i.i, %bb.gh ], [ %.pn.i.i.i.i.i.i, %bb.gi ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m) #20
          to label %bb.gq unwind label %bb.go, !noalias !545

bb.go:                                            ; preds = %.body.i.i.i.i.i
  %i.py = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !545
  unreachable

bb.gp:                                            ; preds = %bb.fg
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.body.i.i.i.i.i, %bb.fk
  %eh.lpad-body.i.i55.i = phi { ptr, i32 } [ %i.pz, %bb.gp ], [ %i.od, %bb.fk ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nk, i64 noundef 232, i64 noundef 8) #22, !noalias !524
  br label %.body.i.i

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata4tsig4TSIGEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver.exit.i.i: ; preds = %bb.gk
  %.not.i.i.i.i.i.i = icmp eq i16 %i.pr, -1
  %.sroa.5.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i16 undef, i16 %i.pt
  %.sroa.0.48..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i47.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.48..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !noalias !564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i47.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !564
  %.sroa.0.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i47.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i.i.i.i.i.i46.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false), !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.nk, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0.i.i.i.i47.i, i64 128, i1 false), !noalias !566
  %.sroa.4.0..sroa_idx.i.i.i56.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 128
  store i64 %i.pi, ptr %.sroa.4.0..sroa_idx.i.i.i56.i, align 8, !noalias !566
  %.sroa.5.0..sroa_idx.i.i.i57.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 136
  store i16 %i.pr, ptr %.sroa.5.0..sroa_idx.i.i.i57.i, align 8, !noalias !566
  %.sroa.6.0..sroa_idx.i.i.i58.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 138
  store i16 %.sroa.5.0.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i58.i, align 2, !noalias !566
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 140
  store i16 %i.pk, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 4, !noalias !566
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 142
  store i16 %i.pp, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 2, !noalias !566
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9.i.i.i.i, i64 80, i1 false), !noalias !566
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 224
  store <2 x i16> %i.oi, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !566
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 228
  store i32 %i.ok, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 4, !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i47.i)
  br label %bb.gr

bb.gr:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata4tsig4TSIGEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver.exit.i.i, %bb.fe
  %storemerge.i.i = phi ptr [ null, %bb.fe ], [ %i.nk, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata4tsig4TSIGEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ] ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.bw, i64 112 ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 8, !range !20, !alias.scope !521, !noalias !524, !noundef !18
  %.not9.i.i = icmp eq i64 %i.qb, -1
  br i1 %.not9.i.i, label %_RNvXs4_NtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB5_7MessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, label %bb.gt

.body.i.i:                                        ; preds = %bb.gu, %bb.gs, %bb.gq
  %.pn.i.i = phi { ptr, i32 } [ %i.qn, %bb.gu ], [ %i.qc, %bb.gs ], [ %eh.lpad-body.i.i55.i, %bb.gq ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #20
          to label %bb.fc unwind label %bb.gw, !noalias !524

bb.gs:                                            ; preds = %bb.ff
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.gt:                                            ; preds = %bb.gr
  %i.qd = getelementptr inbounds nuw i8, ptr %i.bw, i64 142
  %i.qe = load i8, ptr %i.qd, align 2, !alias.scope !521, !noalias !524, !noundef !18
  %i.qf = getelementptr inbounds nuw i8, ptr %i.bw, i64 143
  %i.qg = load i8, ptr %i.qf, align 1, !alias.scope !521, !noalias !524, !noundef !18
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %i.qi = load i16, ptr %i.qh, align 8, !alias.scope !521, !noalias !524, !noundef !18
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bw, i64 138
  %i.qk = load i8, ptr %i.qj, align 2, !range !148, !alias.scope !521, !noalias !524, !noundef !18
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bw, i64 140
  %i.qm = load i16, ptr %i.ql, align 4, !alias.scope !521, !noalias !524, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !526
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtBI_10EdnsOptionEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qa)
          to label %bb.gv unwind label %bb.gu, !noalias !524

bb.gu:                                            ; preds = %bb.gt
  %i.qn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB1B_5rdata4tsig4TSIGEEEECs9RFwvXNxPyg_16hickory_resolver(ptr %storemerge.i.i) #20
          to label %.body.i.i unwind label %bb.gw, !noalias !524

bb.gv:                                            ; preds = %bb.gt
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.n, align 8, !noalias !526
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !526
  br label %_RNvXs4_NtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB5_7MessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.gw:                                            ; preds = %bb.gu, %.body.i.i, %bb.fc, %bb.ez, %bb.ew
  %i.qo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !524
  unreachable

_RNvXs4_NtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB5_7MessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.gv, %bb.gr
  %.sroa.5.sroa.9.0.i.i = phi i8 [ %i.qg, %bb.gv ], [ undef, %bb.gr ] ; 3 uses
  %.sroa.5.sroa.8.0.i.i = phi i8 [ %i.qe, %bb.gv ], [ undef, %bb.gr ] ; 3 uses
  %.sroa.5.sroa.7.0.i.i = phi i16 [ %i.qm, %bb.gv ], [ undef, %bb.gr ] ; 3 uses
  %.sroa.5.sroa.5.0.i.i = phi i8 [ %i.qk, %bb.gv ], [ undef, %bb.gr ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i = phi i16 [ %i.qi, %bb.gv ], [ undef, %bb.gr ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.06.0.copyload.i.i, %bb.gv ], [ -1, %bb.gr ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.i, ptr noundef nonnull align 2 dereferenceable(16) %i.s, i64 16, i1 false)
  %.sroa.0.i.sroa.0.0.copyload = load i64, ptr %i.r, align 8, !noalias !399 ; 3 uses
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.0..sroa_idx, i64 16, i1 false)
  %i.qp = load i64, ptr %i.q, align 8, !noalias !567 ; 3 uses
  %.sroa.5.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.24.copyload.i = load ptr, ptr %.sroa.5.24..sroa_idx.i, align 8, !noalias !567 ; 7 uses
  %.sroa.6.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.24.copyload.i = load i64, ptr %.sroa.6.24..sroa_idx.i, align 8, !noalias !567 ; 5 uses
  %.sroa.7.48.copyload.i = load i64, ptr %i.p, align 8, !noalias !567 ; 3 uses
  %.sroa.8.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.8.48.copyload.i = load ptr, ptr %.sroa.8.48..sroa_idx.i, align 8, !noalias !567 ; 7 uses
  %.sroa.9.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.9.48.copyload.i = load i64, ptr %.sroa.9.48..sroa_idx.i, align 8, !noalias !567 ; 5 uses
  %.sroa.10.72.copyload.i = load i64, ptr %i.o, align 8, !noalias !567 ; 3 uses
  %.sroa.11.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.11.72.copyload.i = load ptr, ptr %.sroa.11.72..sroa_idx.i, align 8, !noalias !567 ; 7 uses
  %.sroa.12.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.12.72.copyload.i = load i64, ptr %.sroa.12.72..sroa_idx.i, align 8, !noalias !567 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %5 = load i32, ptr %i.az, align 4, !noalias !399 ; 15 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.24.copyload.i) ]
  %.idx.i = mul i64 %.sroa.6.24.copyload.i, 272   ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.5.24.copyload.i, i64 %.idx.i
  %i.qr = icmp eq i64 %.sroa.6.24.copyload.i, 0
  br i1 %i.qr, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvXs4_NtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB5_7MessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i
  %6 = add i64 %.idx.i, -272                      ; 2 uses
  %7 = udiv i64 %6, 272
  %8 = add nuw nsw i64 %7, 1
  %xtraiter = and i64 %8, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.05.085.i.prol = phi ptr [ %9, %.lr.ph.i.prol ], [ %.sroa.5.24.copyload.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.05.085.i.prol, i64 272 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.05.085.i.prol, i64 268 ; 2 uses
  %11 = load i32, ptr %10, align 4, !noalias !399, !noundef !18
  %12 = call i32 @llvm.usub.sat.i32(i32 %11, i32 %5)
  store i32 %12, ptr %10, align 4, !noalias !399
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !568

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.05.085.i.unr = phi ptr [ %.sroa.5.24.copyload.i, %.lr.ph.i.preheader ], [ %9, %.lr.ph.i.prol ]
  %13 = icmp ult i64 %6, 816
  br i1 %13, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_RNvXs4_NtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB5_7MessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.48.copyload.i) ]
  %.idx.1.i = mul i64 %.sroa.9.48.copyload.i, 272 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.8.48.copyload.i, i64 %.idx.1.i
  %15 = icmp eq i64 %.sroa.9.48.copyload.i, 0
  br i1 %15, label %.loopexit.1.i, label %.lr.ph.1.i.preheader

.lr.ph.1.i.preheader:                             ; preds = %.loopexit.i
  %i.qs = add i64 %.idx.1.i, -272                 ; 2 uses
  %i.qt = udiv i64 %i.qs, 272
  %i.qu = add nuw nsw i64 %i.qt, 1
  %xtraiter31 = and i64 %i.qu, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.1.i.prol.loopexit, label %.lr.ph.1.i.prol

.lr.ph.1.i.prol:                                  ; preds = %.lr.ph.1.i.preheader, %.lr.ph.1.i.prol
  %.sroa.05.085.1.i.prol = phi ptr [ %i.qv, %.lr.ph.1.i.prol ], [ %.sroa.8.48.copyload.i, %.lr.ph.1.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.1.i.prol ], [ 0, %.lr.ph.1.i.preheader ]
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.05.085.1.i.prol, i64 272 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.05.085.1.i.prol, i64 268 ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !noalias !399, !noundef !18
  %i.qy = call i32 @llvm.usub.sat.i32(i32 %i.qx, i32 %5)
  store i32 %i.qy, ptr %i.qw, align 4, !noalias !399
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.1.i.prol.loopexit, label %.lr.ph.1.i.prol, !llvm.loop !570

.lr.ph.1.i.prol.loopexit:                         ; preds = %.lr.ph.1.i.prol, %.lr.ph.1.i.preheader
  %.sroa.05.085.1.i.unr = phi ptr [ %.sroa.8.48.copyload.i, %.lr.ph.1.i.preheader ], [ %i.qv, %.lr.ph.1.i.prol ]
  %i.qz = icmp ult i64 %i.qs, 816
  br i1 %i.qz, label %.loopexit.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %.lr.ph.1.i.prol.loopexit, %.lr.ph.1.i
  %.sroa.05.085.1.i = phi ptr [ %i.rj, %.lr.ph.1.i ], [ %.sroa.05.085.1.i.unr, %.lr.ph.1.i.prol.loopexit ] ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.05.085.1.i, i64 268 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !noalias !399, !noundef !18
  %i.rc = call i32 @llvm.usub.sat.i32(i32 %i.rb, i32 %5)
  store i32 %i.rc, ptr %i.ra, align 4, !noalias !399
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.05.085.1.i, i64 540 ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !noalias !399, !noundef !18
  %i.rf = call i32 @llvm.usub.sat.i32(i32 %i.re, i32 %5)
  store i32 %i.rf, ptr %i.rd, align 4, !noalias !399
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.05.085.1.i, i64 812 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 4, !noalias !399, !noundef !18
  %i.ri = call i32 @llvm.usub.sat.i32(i32 %i.rh, i32 %5)
  store i32 %i.ri, ptr %i.rg, align 4, !noalias !399
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.05.085.1.i, i64 1088 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.05.085.1.i, i64 1084 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !noalias !399, !noundef !18
  %i.rm = call i32 @llvm.usub.sat.i32(i32 %i.rl, i32 %5)
  store i32 %i.rm, ptr %i.rk, align 4, !noalias !399
  %i.rn = icmp eq ptr %i.rj, %14
  br i1 %i.rn, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %.lr.ph.1.i.prol.loopexit, %.lr.ph.1.i, %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.72.copyload.i) ]
  %.idx.2.i = mul i64 %.sroa.12.72.copyload.i, 272 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.11.72.copyload.i, i64 %.idx.2.i
  %17 = icmp eq i64 %.sroa.12.72.copyload.i, 0
  br i1 %17, label %.loopexit.2.i, label %.lr.ph.2.i.preheader

.lr.ph.2.i.preheader:                             ; preds = %.loopexit.1.i
  %18 = add i64 %.idx.2.i, -272                   ; 2 uses
  %19 = udiv i64 %18, 272
  %20 = add nuw nsw i64 %19, 1
  %xtraiter34 = and i64 %20, 3                    ; 2 uses
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.2.i.prol.loopexit, label %.lr.ph.2.i.prol

.lr.ph.2.i.prol:                                  ; preds = %.lr.ph.2.i.preheader, %.lr.ph.2.i.prol
  %.sroa.05.085.2.i.prol = phi ptr [ %i.ro, %.lr.ph.2.i.prol ], [ %.sroa.11.72.copyload.i, %.lr.ph.2.i.preheader ] ; 2 uses
  %prol.iter36 = phi i64 [ %prol.iter36.next, %.lr.ph.2.i.prol ], [ 0, %.lr.ph.2.i.preheader ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.05.085.2.i.prol, i64 272 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.05.085.2.i.prol, i64 268 ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !noalias !399, !noundef !18
  %i.rr = call i32 @llvm.usub.sat.i32(i32 %i.rq, i32 %5)
  store i32 %i.rr, ptr %i.rp, align 4, !noalias !399
  %prol.iter36.next = add i64 %prol.iter36, 1     ; 2 uses
  %prol.iter36.cmp.not = icmp eq i64 %prol.iter36.next, %xtraiter34
  br i1 %prol.iter36.cmp.not, label %.lr.ph.2.i.prol.loopexit, label %.lr.ph.2.i.prol, !llvm.loop !571

.lr.ph.2.i.prol.loopexit:                         ; preds = %.lr.ph.2.i.prol, %.lr.ph.2.i.preheader
  %.sroa.05.085.2.i.unr = phi ptr [ %.sroa.11.72.copyload.i, %.lr.ph.2.i.preheader ], [ %i.ro, %.lr.ph.2.i.prol ]
  %i.rs = icmp ult i64 %18, 816
  br i1 %i.rs, label %.loopexit.2.i, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %.lr.ph.2.i.prol.loopexit, %.lr.ph.2.i
  %.sroa.05.085.2.i = phi ptr [ %i.sc, %.lr.ph.2.i ], [ %.sroa.05.085.2.i.unr, %.lr.ph.2.i.prol.loopexit ] ; 5 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.05.085.2.i, i64 268 ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !noalias !399, !noundef !18
  %i.rv = call i32 @llvm.usub.sat.i32(i32 %i.ru, i32 %5)
  store i32 %i.rv, ptr %i.rt, align 4, !noalias !399
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.05.085.2.i, i64 540 ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !noalias !399, !noundef !18
  %i.ry = call i32 @llvm.usub.sat.i32(i32 %i.rx, i32 %5)
  store i32 %i.ry, ptr %i.rw, align 4, !noalias !399
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.05.085.2.i, i64 812 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !noalias !399, !noundef !18
  %i.sb = call i32 @llvm.usub.sat.i32(i32 %i.sa, i32 %5)
  store i32 %i.sb, ptr %i.rz, align 4, !noalias !399
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.05.085.2.i, i64 1088 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.05.085.2.i, i64 1084 ; 2 uses
  %i.se = load i32, ptr %i.sd, align 4, !noalias !399, !noundef !18
  %i.sf = call i32 @llvm.usub.sat.i32(i32 %i.se, i32 %5)
  store i32 %i.sf, ptr %i.sd, align 4, !noalias !399
  %i.sg = icmp eq ptr %i.sc, %16
  br i1 %i.sg, label %.loopexit.2.i, label %.lr.ph.2.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.05.085.i = phi ptr [ %i.sq, %.lr.ph.i ], [ %.sroa.05.085.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.05.085.i, i64 268 ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4, !noalias !399, !noundef !18
  %i.sj = call i32 @llvm.usub.sat.i32(i32 %i.si, i32 %5)
  store i32 %i.sj, ptr %i.sh, align 4, !noalias !399
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.05.085.i, i64 540 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !noalias !399, !noundef !18
  %i.sm = call i32 @llvm.usub.sat.i32(i32 %i.sl, i32 %5)
  store i32 %i.sm, ptr %i.sk, align 4, !noalias !399
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.05.085.i, i64 812 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 4, !noalias !399, !noundef !18
  %i.sp = call i32 @llvm.usub.sat.i32(i32 %i.so, i32 %5)
  store i32 %i.sp, ptr %i.sn, align 4, !noalias !399
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.05.085.i, i64 1088 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.05.085.i, i64 1084 ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 4, !noalias !399, !noundef !18
  %i.st = call i32 @llvm.usub.sat.i32(i32 %i.ss, i32 %5)
  store i32 %i.st, ptr %i.sr, align 4, !noalias !399
  %i.su = icmp eq ptr %i.sq, %i.qq
  br i1 %i.su, label %.loopexit.i, label %.lr.ph.i

bb.gx:                                            ; preds = %bb.ho, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i, %bb.hg
  %i.sv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !399
  unreachable

bb.gy:                                            ; preds = %bb.eo, %bb.ek
  %.sroa.55.0.i.i.i = phi i64 [ %i.mu, %bb.eo ], [ undef, %bb.ek ] ; 3 uses
  %i.sw = trunc nuw i32 %i.ch to i1
  %.sroa.53.0.i.i.i = select i1 %i.sw, i32 %i.ml, i32 undef
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.ch, ptr %i.sx, align 8, !alias.scope !402, !noalias !408
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 12 ; 2 uses
  store i32 %.sroa.53.0.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 4, !alias.scope !402, !noalias !408
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.ig, ptr %.sroa.7.0..sroa_idx6.i.i, align 8, !alias.scope !402, !noalias !408
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %.sroa.0.0.i9.i.i, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !402, !noalias !408
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 4 uses
  store ptr %i.mf, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !402, !noalias !408
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 3 uses
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !402, !noalias !408
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 2 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 56 ; 2 uses
  store i64 %.sroa.55.0.i.i.i, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !402, !noalias !408
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store <2 x i16> %i.mn, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !402, !noalias !408
  store i8 2, ptr %i.ay, align 8, !alias.scope !402, !noalias !408
  %cond.i = icmp eq i32 %i.ch, 0
  br i1 %cond.i, label %bb.ha, label %bb.gz

_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEECs9RFwvXNxPyg_16hickory_resolver.exit81.i, %bb.he, %bb.et, %bb.er, %.thread.i, %bb.ct, %bb.cs, %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %bb.r, %.noexc5, %bb.o, %bb.n, %.noexc4, %bb.l, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.5.sroa.5.0.copyload23 = load i64, ptr %.sroa.5.sroa.5.0..sroa_idx, align 8, !noalias !396
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.6.8.copyload = load ptr, ptr %.sroa.6.8..sroa_idx, align 8, !noalias !396
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.7.8.copyload = load i64, ptr %.sroa.7.8..sroa_idx, align 8, !noalias !396
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.8.8.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8, !noalias !396
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !noalias !396
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %.sroa.10.8.copyload = load i64, ptr %.sroa.10.8..sroa_idx, align 8, !noalias !396
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %.sroa.11.8.copyload = load i64, ptr %.sroa.11.8..sroa_idx, align 8, !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !399
  br label %.loopexit.2.i

bb.gz:                                            ; preds = %bb.gy
  %i.sy = load i32, ptr %i.az, align 4, !noalias !399, !noundef !18
  %i.sz = call i32 @llvm.usub.sat.i32(i32 %i.ml, i32 %i.sy)
  store i32 %i.sz, ptr %.sroa.5.0..sroa_idx2.i.i, align 4, !noalias !399
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.not40.i = icmp eq ptr %.sroa.0.0.i9.i.i, null
  br i1 %.not40.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ta = load i32, ptr %i.az, align 4, !noalias !399, !noundef !18
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i9.i.i, i64 268 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !noalias !399, !noundef !18
  %i.td = call i32 @llvm.usub.sat.i32(i32 %i.tc, i32 %i.ta)
  store i32 %i.td, ptr %i.tb, align 4, !noalias !399
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  store ptr null, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !399
  br i1 %.not8.i.i.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !399
  store ptr %i.mp, ptr %i.ax, align 8, !noalias !399
  %i.te = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.sroa.55.0.i.i.i, ptr %i.te, align 8, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !399
  %i.tf = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  %i.tg = getelementptr inbounds nuw [272 x i8], ptr %i.tf, i64 %.sroa.55.0.i.i.i
  store ptr %i.tf, ptr %i.av, align 8, !noalias !399
  %i.th = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.tg, ptr %i.th, align 8, !noalias !399
  %i.ti = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.az, ptr %i.ti, align 8, !noalias !399
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2t_6cloned6ClonedINtNtNtB2x_5slice4iter4IterB13_EENCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB4d_5Entry11updated_ttl0EE9from_iterB4f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.hh unwind label %bb.hf, !noalias !399

bb.he:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i, %bb.hc
  %i.tj = phi i64 [ %.pre108.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i ], [ %.sroa.5.0.i.i.i, %bb.hc ] ; 2 uses
  %i.tk = phi ptr [ %.pre107.i.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i ], [ %i.mf, %bb.hc ] ; 3 uses
  store ptr null, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !399
  %.not42.i = icmp eq ptr %i.tk, null
  br i1 %.not42.i, label %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i, label %bb.hm

bb.hf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i, %bb.hh, %bb.hd
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.hi, %bb.hf
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.tl, %bb.hf ], [ %i.tv, %bb.hi ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.tm = load ptr, ptr %i.ax, align 8, !alias.scope !578, !noalias !399, !nonnull !18, !noundef !18
  %i.tn = atomicrmw sub ptr %i.tm, i64 1 release, align 8, !noalias !579
  %i.to = icmp eq i64 %i.tn, 1
  br i1 %i.to, label %bb.hg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i

bb.hg:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ax) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i unwind label %bb.gx, !noalias !399

bb.hh:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !399
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.aw, align 8, !alias.scope !580, !noalias !399
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !580, !noalias !399, !nonnull !18, !noundef !18 ; 2 uses
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !alias.scope !580, !noalias !399 ; 3 uses
  %i.tp = icmp ult i64 %.sroa.54.0.copyload.i.i, 33909456017848441
  call void @llvm.assume(i1 %i.tp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !583
  store i64 %.sroa.54.0.copyload.i.i, ptr %i.e, align 8, !noalias !583
  %i.tq = mul nuw nsw i64 %.sroa.54.0.copyload.i.i, 272 ; 2 uses
  %i.tr = invoke { ptr, i64 } @_RINvMso_NtCs4wP2HXfJTCR_5alloc4syncINtB6_3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB1W_s_0ECs9RFwvXNxPyg_16hickory_resolver(i64 noundef 8, i64 noundef %i.tq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc62.i unwind label %bb.hf, !noalias !399 ; 2 uses

.noexc62.i:                                       ; preds = %bb.hh
  %i.ts = extractvalue { ptr, i64 } %i.tr, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !583
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.tt, ptr nonnull align 8 %.sroa.43.0.copyload.i.i, i64 %i.tq, i1 false), !noalias !583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !583
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.d, align 8, !noalias !583
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.43.0.copyload.i.i, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !583
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !583
  %i.tu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.tu, align 8, !noalias !583
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i unwind label %bb.hi, !noalias !583

bb.hi:                                            ; preds = %.noexc62.i
  %i.tv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body.i unwind label %bb.hj, !noalias !583

bb.hj:                                            ; preds = %bb.hi
  %i.tw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !583
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i: ; preds = %.noexc62.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEEECs9RFwvXNxPyg_16hickory_resolver.exit.i unwind label %bb.hf, !noalias !399

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEEECs9RFwvXNxPyg_16hickory_resolver.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !583
  %i.tx = extractvalue { ptr, i64 } %i.tr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !399
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ts) ]
  store ptr %i.ts, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !399
  store i64 %i.tx, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !399
  %.pre.i = load ptr, ptr %i.ax, align 8, !alias.scope !584, !noalias !399
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.ty = atomicrmw sub ptr %.pre.i, i64 1 release, align 8, !noalias !591
  %i.tz = icmp eq i64 %i.ty, 1
  br i1 %i.tz, label %bb.hk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i

bb.hk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEEECs9RFwvXNxPyg_16hickory_resolver.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ax) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i unwind label %bb.hl, !noalias !399

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i: ; preds = %bb.ho, %.body76.i, %bb.hl, %bb.hg, %.body.i
  %.pn43.i = phi { ptr, i32 } [ %i.ua, %bb.hl ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.hg ], [ %eh.lpad-body77.i, %bb.ho ], [ %eh.lpad-body77.i, %.body76.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ay) #20
          to label %.body unwind label %bb.gx, !noalias !399

bb.hl:                                            ; preds = %bb.hs, %bb.hk
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i: ; preds = %bb.hk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEEECs9RFwvXNxPyg_16hickory_resolver.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !399
  %.pre107.i.a = load ptr, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !399
  %.pre108.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !399
  br label %bb.he

bb.hm:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !399
  store ptr %i.tk, ptr %i.au, align 8, !noalias !399
  %i.ub = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.tj, ptr %i.ub, align 8, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !399
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tk, i64 16 ; 2 uses
  %i.ud = getelementptr inbounds nuw [288 x i8], ptr %i.uc, i64 %i.tj
  store ptr %i.uc, ptr %i.as, align 8, !noalias !399
  %i.ue = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.ud, ptr %i.ue, align 8, !noalias !399
  %i.uf = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.az, ptr %i.uf, align 8, !noalias !399
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2t_6cloned6ClonedINtNtNtB2x_5slice4iter4IterB13_EENCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB4d_5Entry11updated_ttls_0EE9from_iterB4f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.as)
          to label %bb.hp unwind label %bb.hn, !noalias !399

bb.hn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i, %bb.hp, %bb.hm
  %i.ug = landingpad { ptr, i32 }
          cleanup
  br label %.body76.i

.body76.i:                                        ; preds = %bb.hq, %bb.hn
  %eh.lpad-body77.i = phi { ptr, i32 } [ %i.ug, %bb.hn ], [ %i.uq, %bb.hq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.uh = load ptr, ptr %i.au, align 8, !alias.scope !598, !noalias !399, !nonnull !18, !noundef !18
  %i.ui = atomicrmw sub ptr %i.uh, i64 1 release, align 8, !noalias !599
  %i.uj = icmp eq i64 %i.ui, 1
  br i1 %i.uj, label %bb.ho, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i

bb.ho:                                            ; preds = %.body76.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i unwind label %bb.gx, !noalias !399

bb.hp:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !399
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %.sroa.02.0.copyload.i68.i = load i64, ptr %i.at, align 8, !alias.scope !600, !noalias !399
  %.sroa.43.0..sroa_idx.i69.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.43.0.copyload.i70.i = load ptr, ptr %.sroa.43.0..sroa_idx.i69.i, align 8, !alias.scope !600, !noalias !399, !nonnull !18, !noundef !18 ; 2 uses
  %.sroa.54.0..sroa_idx.i71.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.54.0.copyload.i72.i = load i64, ptr %.sroa.54.0..sroa_idx.i71.i, align 8, !alias.scope !600, !noalias !399 ; 3 uses
  %i.uk = icmp ult i64 %.sroa.54.0.copyload.i72.i, 32025597350190194
  call void @llvm.assume(i1 %i.uk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !603
  store i64 %.sroa.54.0.copyload.i72.i, ptr %i.c, align 8, !noalias !603
  %i.ul = mul nuw nsw i64 %.sroa.54.0.copyload.i72.i, 288 ; 2 uses
  %i.um = invoke { ptr, i64 } @_RINvMso_NtCs4wP2HXfJTCR_5alloc4syncINtB6_3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB1W_s_0ECs9RFwvXNxPyg_16hickory_resolver(i64 noundef 8, i64 noundef %i.ul, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc75.i unwind label %bb.hn, !noalias !399 ; 2 uses

.noexc75.i:                                       ; preds = %bb.hp
  %i.un = extractvalue { ptr, i64 } %i.um, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !603
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.uo, ptr nonnull align 8 %.sroa.43.0.copyload.i70.i, i64 %i.ul, i1 false), !noalias !603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !603
  store i64 %.sroa.02.0.copyload.i68.i, ptr %i.b, align 8, !noalias !603
  %.sroa.410.0..sroa_idx.i73.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.43.0.copyload.i70.i, ptr %.sroa.410.0..sroa_idx.i73.i, align 8, !noalias !603
  %.sroa.511.0..sroa_idx.i74.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %.sroa.511.0..sroa_idx.i74.i, align 8, !noalias !603
  %i.up = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.up, align 8, !noalias !603
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i unwind label %bb.hq, !noalias !603

bb.hq:                                            ; preds = %.noexc75.i
  %i.uq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body76.i unwind label %bb.hr, !noalias !603

bb.hr:                                            ; preds = %bb.hq
  %i.ur = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !603
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i: ; preds = %.noexc75.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEEECs9RFwvXNxPyg_16hickory_resolver.exit.i unwind label %bb.hn, !noalias !399

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEEECs9RFwvXNxPyg_16hickory_resolver.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !603
  %i.us = extractvalue { ptr, i64 } %i.um, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !399
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.un) ]
  store ptr %i.un, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !399
  store i64 %i.us, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !399
  %.pre111.i = load ptr, ptr %i.au, align 8, !alias.scope !604, !noalias !399
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.ut = atomicrmw sub ptr %.pre111.i, i64 1 release, align 8, !noalias !611
  %i.uu = icmp eq i64 %i.ut, 1
  br i1 %i.uu, label %bb.hs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEECs9RFwvXNxPyg_16hickory_resolver.exit81.i

bb.hs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEEECs9RFwvXNxPyg_16hickory_resolver.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEECs9RFwvXNxPyg_16hickory_resolver.exit81.i unwind label %bb.hl, !noalias !399

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEECs9RFwvXNxPyg_16hickory_resolver.exit81.i: ; preds = %bb.hs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEEECs9RFwvXNxPyg_16hickory_resolver.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !399
  br label %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit20: ; preds = %bb.c, %bb.d, %bb.e, %bb.hv, %.loopexit.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  ret void

bb.ht:                                            ; preds = %bb.ev, %bb.cv, %bb.ch, %bb.by, %bb.bx, %bb.br, %bb.bk, %bb.av, %bb.au, %bb.ad, %bb.u, %bb.t, %bb.p, %bb.m, %bb.f
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bd, %bb.bg, %bb.bo, %bb.bs, %bb.ca, %bb.cd, %bb.de, %.body.i.i.i, %bb.ew, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i, %bb.ht
  %eh.lpad-body = phi { ptr, i32 } [ %i.uv, %bb.ht ], [ %.pn.pn.pn.pn.i.i, %bb.ew ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.hh, %bb.cd ], [ %i.gj, %bb.bs ], [ %i.fr, %bb.bd ], [ %i.fv, %bb.bg ], [ %i.gh, %bb.bo ], [ %i.hd, %bb.ca ], [ %eh.lpad-body.i.i.i.i, %bb.de ], [ %.pn43.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.uw = load ptr, ptr %i.bc, align 8, !alias.scope !621, !nonnull !18, !noundef !18
  %i.ux = atomicrmw sub ptr %i.uw, i64 1 release, align 8, !noalias !621
  %i.uy = icmp eq i64 %i.ux, 1
  br i1 %i.uy, label %bb.hu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit19

bb.hu:                                            ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bc) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit19 unwind label %bb.hw

.loopexit.2.i:                                    ; preds = %.lr.ph.2.i.prol.loopexit, %.lr.ph.2.i, %.loopexit.1.i, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i
  %.sroa.5.sroa.5.0 = phi i64 [ %.sroa.5.sroa.5.0.copyload23, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %i.qp, %.loopexit.1.i ], [ %i.qp, %.lr.ph.2.i ], [ %i.qp, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.22.0 = phi ptr [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %storemerge.i.i, %.loopexit.1.i ], [ %storemerge.i.i, %.lr.ph.2.i ], [ %storemerge.i.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.20.0 = phi i8 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.sroa.9.0.i.i, %.loopexit.1.i ], [ %.sroa.5.sroa.9.0.i.i, %.lr.ph.2.i ], [ %.sroa.5.sroa.9.0.i.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.19.0 = phi i8 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.sroa.8.0.i.i, %.loopexit.1.i ], [ %.sroa.5.sroa.8.0.i.i, %.lr.ph.2.i ], [ %.sroa.5.sroa.8.0.i.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.1822.0 = phi i16 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.sroa.7.0.i.i, %.loopexit.1.i ], [ %.sroa.5.sroa.7.0.i.i, %.lr.ph.2.i ], [ %.sroa.5.sroa.7.0.i.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.17.0 = phi i8 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.sroa.5.0.i.i, %.loopexit.1.i ], [ %.sroa.5.sroa.5.0.i.i, %.lr.ph.2.i ], [ %.sroa.5.sroa.5.0.i.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.16.0 = phi i16 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.sroa.4.0.i.i, %.loopexit.1.i ], [ %.sroa.5.sroa.4.0.i.i, %.lr.ph.2.i ], [ %.sroa.5.sroa.4.0.i.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.14.0 = phi i64 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.0.0.i.i, %.loopexit.1.i ], [ %.sroa.0.0.i.i, %.lr.ph.2.i ], [ %.sroa.0.0.i.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.13.0 = phi i64 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.12.72.copyload.i, %.loopexit.1.i ], [ %.sroa.12.72.copyload.i, %.lr.ph.2.i ], [ %.sroa.12.72.copyload.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.12.0 = phi ptr [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.11.72.copyload.i, %.loopexit.1.i ], [ %.sroa.11.72.copyload.i, %.lr.ph.2.i ], [ %.sroa.11.72.copyload.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.11.0 = phi i64 [ %.sroa.11.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.10.72.copyload.i, %.loopexit.1.i ], [ %.sroa.10.72.copyload.i, %.lr.ph.2.i ], [ %.sroa.10.72.copyload.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.9.48.copyload.i, %.loopexit.1.i ], [ %.sroa.9.48.copyload.i, %.lr.ph.2.i ], [ %.sroa.9.48.copyload.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.9.0 = phi ptr [ %.sroa.9.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.8.48.copyload.i, %.loopexit.1.i ], [ %.sroa.8.48.copyload.i, %.lr.ph.2.i ], [ %.sroa.8.48.copyload.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.8.0 = phi i64 [ %.sroa.8.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.7.48.copyload.i, %.loopexit.1.i ], [ %.sroa.7.48.copyload.i, %.lr.ph.2.i ], [ %.sroa.7.48.copyload.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.7.0 = phi i64 [ %.sroa.7.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.6.24.copyload.i, %.loopexit.1.i ], [ %.sroa.6.24.copyload.i, %.lr.ph.2.i ], [ %.sroa.6.24.copyload.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.24.copyload.i, %.loopexit.1.i ], [ %.sroa.5.24.copyload.i, %.lr.ph.2.i ], [ %.sroa.5.24.copyload.i, %.lr.ph.2.i.prol.loopexit ]
  %.sroa.0.0 = phi i64 [ -1, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.0.i.sroa.0.0.copyload, %.loopexit.1.i ], [ %.sroa.0.i.sroa.0.0.copyload, %.lr.ph.2.i ], [ %.sroa.0.i.sroa.0.0.copyload, %.lr.ph.2.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.a, i64 16, i1 false)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx.a, align 8
  %.sroa.12.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.12.0, ptr %.sroa.12.0..sroa_idx.a, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i.i, i64 16, i1 false)
  %.sroa.16.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i16 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx.a, align 8
  %.sroa.17.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx.a, align 2
  %.sroa.1822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i16 %.sroa.1822.0, ptr %.sroa.1822.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 126
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 127
  store i8 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.i, i64 16, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.uz = load ptr, ptr %i.bc, align 8, !alias.scope !631, !nonnull !18, !noundef !18
  %i.va = atomicrmw sub ptr %i.uz, i64 1 release, align 8, !noalias !631
  %i.vb = icmp eq i64 %i.va, 1
  br i1 %i.vb, label %bb.hv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit20

bb.hv:                                            ; preds = %.loopexit.2.i
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bc) #23
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit20

bb.hw:                                            ; preds = %bb.hu
  %i.vc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit19: ; preds = %.body, %bb.hu
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB2_13ResponseCache3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  %i.b = alloca [200 x i8], align 8               ; 14 uses
  %i.c = alloca [200 x i8], align 8               ; 16 uses
  %i.d = alloca [200 x i8], align 8               ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXNtNtCs3kA96HWnWrK_4moka4sync7builderINtB2_12CacheBuilderNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryINtNtB4_5cache5CacheBW_B1K_EENtNtCsj6eKBz9Db1c_4core7default7Default7defaultB1O_(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.b)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 1, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load <2 x i64>, ptr %i.i, align 8
  store <2 x i64> %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load <2 x i64>, ptr %i.l, align 8
  store <2 x i64> %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.q = load <2 x ptr>, ptr %i.o, align 8
  store <2 x ptr> %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.s = load i8, ptr %i.r, align 8, !range !148, !noundef !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store i8 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.w = load <2 x ptr>, ptr %i.u, align 8
  store <2 x ptr> %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 193
  %i.ac = load i8, ptr %i.ab, align 1, !range !148, !noundef !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 193
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.af = load i64, ptr %i.ae, align 8, !noundef !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ah = load i32, ptr %i.ag, align 8, !range !310, !noundef !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.af, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i32 %i.ah, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvMs1_NtNtCs3kA96HWnWrK_4moka4sync7builderINtB6_12CacheBuilderNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryINtNtB8_5cache5CacheB10_B1O_EE12expire_afterNtB1Q_11EntryExpiryEB1S_(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.c)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMs_NtNtCs3kA96HWnWrK_4moka4sync7builderINtB4_12CacheBuilderNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryINtNtB6_5cache5CacheBY_B1M_EE5buildB1Q_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(200) %i.d)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ak, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.al, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !632
  %i.am = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 128, 169) 128, i64 noundef 8) #22, !noalias !632 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.e, label %bb.h, !prof !309

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #26
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtNtCs9RFwvXNxPyg_16hickory_resolver5cache9TtlBoundsEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ak)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

.body:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs3kA96HWnWrK_4moka4sync5cache5CacheNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEB2a_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #20
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache9TtlConfigEBF_.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.am, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.aq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.j, %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache9TtlConfigEBF_.exit: ; preds = %bb.j, %.body
  %.pn9 = phi { ptr, i32 } [ %i.ao, %.body ], [ %i.as, %bb.j ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjXdHNeFfodD_13hickory_proto2rr11record_type10RecordTypeNtNtCs9RFwvXNxPyg_16hickory_resolver5cache9TtlBoundsEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache9TtlConfigEBF_.exit unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB2_13ResponseCache5clear(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs2_NtNtCs3kA96HWnWrK_4moka4sync10base_cacheINtB5_9BaseCacheNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryE14invalidate_allB1R_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB2_13ResponseCache6insert(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152) %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.421 = alloca [71 x i8], align 1          ; 3 uses
  %.sroa.416 = alloca [72 x i8], align 8          ; 2 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [152 x i8], align 8               ; 9 uses
  %i.g = alloca [152 x i8], align 8               ; 8 uses
  %i.h = load i64, ptr %2, align 8, !range !20, !noundef !18
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !89, !noundef !18
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.h, label %bb.ac
end_hunk_1
