Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_syntax-f1f61ff0feae2508.regex_syntax.535bfd884d6d4f8f-cgu.03?download=true
inline.NumInlined: 243
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor7extract:bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEEB1k_.exit.i.i.i82: ; preds = %bb.bj, %bb.ay
  %eh.lpad-body = phi { ptr, i32 } [ %i.fv, %bb.ay ], [ %i.hh, %bb.bj ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #16
          to label %.thread190 unwind label %bb.y, !noalias !142, !inline_history !143

.thread190:                                       ; preds = %bb.be, %bb.bg, %bb.ak, %bb.am, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEEB1k_.exit.i.i.i82, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEEB1k_.exit.i.i.i102, %bb.o, %bb.av, %bb.ab
  %.pn50.i183 = phi { ptr, i32 } [ %i.dl, %bb.o ], [ %i.dz, %bb.ab ], [ %i.ft, %bb.av ], [ %i.eq, %bb.am ], [ %eh.lpad-body, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEEB1k_.exit.i.i.i82 ], [ %eh.lpad-body105, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEEB1k_.exit.i.i.i102 ], [ %i.ep, %bb.ak ], [ %i.hd, %bb.be ], [ %i.he, %bb.bg ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #16
          to label %common.resume unwind label %bb.y, !noalias !142, !inline_history !143

_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor18extract_repetition.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEEB1d_.exit.i.i, %bb.bl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_.exit126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !139
  br label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes.exit

bb.bp:                                            ; preds = %tailrecurse
  %i.hn = getelementptr inbounds nuw i8, ptr %.tr239, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !nonnull !7, !noundef !7
  br label %tailrecurse

bb.bq:                                            ; preds = %tailrecurse
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hq = load i8, ptr %i.hp, align 8, !range !9, !noundef !7
  %i.hr = trunc nuw i8 %i.hq to i1
  %i.hs = getelementptr inbounds nuw i8, ptr %.tr239, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.tr239, i64 24
  %i.hv = load i64, ptr %i.hu, align 8, !noundef !7 ; 4 uses
  br i1 %i.hr, label %bb.et, label %bb.fj

bb.br:                                            ; preds = %tailrecurse
  %i.hw = getelementptr inbounds nuw i8, ptr %.tr239, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr239, i64 24
  %i.hz = load i64, ptr %i.hy, align 8, !noundef !7 ; 2 uses
  %.idx = mul nuw nsw i64 %i.hz, 48
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !219
  store i64 0, ptr %i.ab, align 8, !noalias !219
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !219
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !219
  %i.ib = icmp eq i64 %i.hz, 0
  br i1 %i.ib, label %_RINvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtB5_3HirEEB7_.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph: ; preds = %bb.br
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i13 = load i64, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val10.i = load i8, ptr %i.id, align 8
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit

bb.bs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEEB1d_.exit.i.i141
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_.exit145
  %.sroa.0.0261 = phi ptr [ %i.hx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph ], [ %i.if, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_.exit145 ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0261, i64 48 ; 2 uses
  %i.ig = load i64, ptr %i.ab, align 8, !range !3, !noalias !219
  %.not8.i = icmp eq i64 %i.ig, -1
  br i1 %.not8.i, label %_RINvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtB5_3HirEEB7_.exit, label %bb.bt

bb.bt:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !219
  invoke void @_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor7extract(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0261)
          to label %bb.bv unwind label %bb.bu, !noalias !223, !inline_history !224

bb.bu:                                            ; preds = %bb.bt
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.z) #16
          to label %common.resume unwind label %bb.cb, !noalias !223, !inline_history !224

bb.bv:                                            ; preds = %bb.bt
  invoke fastcc void @_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor5union(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.aa, i64 %.val.i13, i8 %.val10.i, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef align 8 dereferenceable(24) %i.y)
          to label %bb.bx unwind label %bb.bw, !noalias !223, !inline_history !224

bb.bw:                                            ; preds = %bb.bv
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.y) #16
          to label %common.resume unwind label %bb.cb, !noalias !223, !inline_history !224

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !219
  %i.ij = load i64, ptr %i.y, align 8, !range !3, !alias.scope !225, !noalias !223, !noundef !7
  %i.ik = icmp eq i64 %i.ij, -1
  br i1 %i.ik, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_.exit145, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEEB1d_.exit.i.i141 unwind label %bb.bz, !noalias !223

bb.bz:                                            ; preds = %bb.by
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.cc unwind label %bb.ca, !noalias !223

bb.ca:                                            ; preds = %bb.bz
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !223
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEEB1d_.exit.i.i141: ; preds = %bb.by
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_.exit145 unwind label %bb.bs

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_.exit145: ; preds = %bb.bx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEEB1d_.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !219
  %i.in = icmp eq ptr %i.if, %i.ia
  br i1 %i.in, label %_RINvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtB5_3HirEEB7_.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit

bb.cb:                                            ; preds = %bb.cc, %bb.bw, %bb.bu
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !223, !inline_history !224
  unreachable

bb.cc:                                            ; preds = %bb.bs, %bb.bz
  %.pn.i10.ph = phi { ptr, i32 } [ %i.il, %bb.bz ], [ %i.ie, %bb.bs ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #16
          to label %common.resume unwind label %bb.cb, !noalias !223, !inline_history !224

_RINvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtB5_3HirEEB7_.exit: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_.exit145, %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !219
  br label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes.exit

bb.cd:                                            ; preds = %bb.g
  %i.ip = load i64, ptr %i.bn, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.ip) #17
  unreachable

bb.ce:                                            ; preds = %bb.g
  %i.iq = load ptr, ptr %i.bn, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ir = icmp ule i64 %i.bi, %i.bm
  tail call void @llvm.assume(i1 %i.ir)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %bb.cf, label %bb.cl

bb.cf:                                            ; preds = %bb.cl, %bb.ce
  store i64 %i.bm, ptr %i.at, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.iq, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.bi, ptr %.sroa.42.0..sroa_idx, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i8 1, ptr %i.is, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !234
  %i.it = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 32, i64 noundef range(i64 1, 9) 8) #18, !noalias !234 ; 8 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.cg, label %_RNvMs2_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit17, !prof !8

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #17
          to label %.noexc.i16 unwind label %bb.ch, !noalias !234

.noexc.i16:                                       ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.cg
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.at) #16
          to label %common.resume unwind label %bb.ci, !noalias !231

bb.ci:                                            ; preds = %bb.ch
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !231
  unreachable

_RNvMs2_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit17: ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false), !noalias !231
  store i64 1, ptr %i.au, align 8, !alias.scope !231, !noalias !236
  %.sroa.42.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.it, ptr %.sroa.42.0..sroa_idx.i14, align 8, !alias.scope !231, !noalias !236
  %.sroa.53.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 1, ptr %.sroa.53.0..sroa_idx.i15, align 8, !alias.scope !231, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.ix, align 8, !noundef !7 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val5 = load i8, ptr %i.iy, align 8, !range !9, !noundef !7
  %i.iz = trunc nuw i8 %.val5 to i1
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !noalias !237, !noundef !7 ; 2 uses
  %.not2.i.i = icmp ult i64 %.val, %i.jb          ; 2 uses
  br i1 %i.iz, label %.lr.ph.i.i.preheader, label %.lr.ph.i3.i.preheader

.lr.ph.i3.i.preheader:                            ; preds = %_RNvMs2_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit17
  br i1 %.not2.i.i, label %bb.ck, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs2_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit17
  br i1 %.not2.i.i, label %bb.cj, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit

bb.cj:                                            ; preds = %.lr.ph.i.i.preheader
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store i8 0, ptr %i.jc, align 8, !noalias !240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !240
  %i.jd = sub nuw i64 %i.jb, %.val
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range7RangeTojEECs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.it, i64 noundef %i.jd)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.cj
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainhENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !240
  br label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit

bb.ck:                                            ; preds = %.lr.ph.i3.i.preheader
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store i8 0, ptr %i.je, align 8, !noalias !243
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE8truncateCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.it, i64 noundef %.val)
          to label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit unwind label %.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull align 1 %i.bg, i64 %i.bi, i1 false)
  br label %bb.cf

.loopexit:                                        ; preds = %bb.cj, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp:                               ; preds = %bb.ck
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.au) #16
          to label %common.resume unwind label %bb.cn

_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit: ; preds = %.lr.ph.i3.i.preheader, %bb.ck, %.lr.ph.i.i.preheader, %.noexc18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes.exit

_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes.exit: ; preds = %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit.i54, %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor24class_over_limit_unicode.exit.thread.i, %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit.i, %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread.i, %_RINvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB3_9Extractor14extract_concatINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtB5_3HirEEB7_.exit, %_RINvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB3_9Extractor14extract_concatINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevINtNtNtB1p_5slice4iter4IterNtB5_3HirEEEB7_.exit, %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit, %_RINvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtB5_3HirEEB7_.exit, %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor18extract_repetition.exit, %_RNvMs2_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit
  ret void

bb.cn:                                            ; preds = %bb.cm
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.co:                                            ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %.val16.i = load i64, ptr %1, align 8, !alias.scope !249, !noalias !246 ; 2 uses
  %.idx.i.i20 = shl nuw nsw i64 %.val7, 1
  %i.jg = getelementptr inbounds nuw i8, ptr %.val6, i64 %.idx.i.i20 ; 2 uses
  br i1 %i.br, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread2.thread.i, label %.lr.ph.i.i21

_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread2.thread.i: ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !251
  store i64 0, ptr %i.w, align 8, !noalias !251
  %.sroa.49.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx32.i, align 8, !noalias !251
  %.sroa.510.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.510.0..sroa_idx33.i, align 8, !noalias !251
  br label %._crit_edge.i

.lr.ph.i.i21:                                     ; preds = %bb.co, %bb.cp
  %.sroa.01.03.i.i = phi i64 [ %i.jk, %bb.cp ], [ 0, %bb.co ] ; 2 uses
  %.sroa.05.02.i.i = phi ptr [ %i.ji, %bb.cp ], [ %.val6, %bb.co ] ; 2 uses
  %i.jh = icmp ugt i64 %.sroa.01.03.i.i, %.val16.i
  br i1 %i.jh, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread.i, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.i.i21
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.05.02.i.i, i64 2 ; 2 uses
  %i.jj = tail call noundef i64 @_RNvMsi_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_15ClassBytesRange3len(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %.sroa.05.02.i.i), !noalias !251
  %i.jk = add i64 %i.jj, %.sroa.01.03.i.i         ; 2 uses
  %i.jl = icmp eq ptr %i.ji, %i.jg
  br i1 %i.jl, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.i, label %.lr.ph.i.i21

_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.i: ; preds = %bb.cp
  %i.jm = icmp ugt i64 %i.jk, %.val16.i
  br i1 %i.jm, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread.i, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread2.i

_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread2.i: ; preds = %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !251
  store i64 0, ptr %i.w, align 8, !noalias !251
  %.sroa.49.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx.i22, align 8, !noalias !251
  %.sroa.510.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.510.0..sroa_idx.i23, align 8, !noalias !251
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %bb.cq

_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread.i: ; preds = %.lr.ph.i.i21, %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.i
  store i64 -1, ptr %0, align 8, !alias.scope !246, !noalias !249
  br label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes.exit

.loopexit16.i:                                    ; preds = %_RNvMs2_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_3Seq4push.exit.i, %bb.cq
  %i.jo = icmp eq ptr %i.jp, %i.jg
  br i1 %i.jo, label %._crit_edge.i, label %bb.cq

bb.cq:                                            ; preds = %.loopexit16.i, %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread2.i
  %.sroa.011.021.i = phi ptr [ %.val6, %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread2.i ], [ %i.jp, %.loopexit16.i ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.011.021.i, i64 2 ; 2 uses
  %i.jq = load i8, ptr %.sroa.011.021.i, align 1, !noalias !251, !noundef !7 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.011.021.i, i64 1
  %i.js = load i8, ptr %i.jr, align 1, !noalias !251, !noundef !7 ; 3 uses
  %.not.i19.i = icmp ugt i8 %i.jq, %i.js
  br i1 %.not.i19.i, label %.loopexit16.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.loopexit16.i, %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread2.thread.i
  %.sroa.510.0..sroa_idx35.i = phi ptr [ %.sroa.510.0..sroa_idx33.i, %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread2.thread.i ], [ %.sroa.510.0..sroa_idx.i23, %.loopexit16.i ] ; 2 uses
  %.sroa.49.0..sroa_idx34.i = phi ptr [ %.sroa.49.0..sroa_idx32.i, %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread2.thread.i ], [ %.sroa.49.0..sroa_idx.i22, %.loopexit16.i ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i27 = load i64, ptr %i.jt, align 8, !alias.scope !249, !noalias !246, !noundef !7 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val15.i = load i8, ptr %i.ju, align 8, !range !9, !alias.scope !249, !noalias !246, !noundef !7
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.jv = trunc nuw i8 %.val15.i to i1
  br i1 %i.jv, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %._crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.jw = load i64, ptr %i.w, align 8, !range !3, !alias.scope !258, !noalias !251, !noundef !7
  %.not.i.i.i = icmp eq i64 %i.jw, -1
  br i1 %.not.i.i.i, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jx = load ptr, ptr %.sroa.49.0..sroa_idx34.i, align 8, !alias.scope !258, !noalias !251, !nonnull !7, !noundef !7 ; 2 uses
  %i.jy = load i64, ptr %.sroa.510.0..sroa_idx35.i, align 8, !alias.scope !258, !noalias !251, !noundef !7 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.jy, 5
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.idx.i.i.i
  %i.ka = icmp eq i64 %i.jy, 0
  br i1 %i.ka, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cs, %bb.cu
  %.sroa.0.03.i.i.i = phi ptr [ %i.kb, %bb.cu ], [ %i.jx, %bb.cs ] ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 32 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !noalias !259, !noundef !7 ; 2 uses
  %.not2.i.i.i = icmp ult i64 %.val.i27, %i.kd
  br i1 %.not2.i.i.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.lr.ph.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 24
  store i8 0, ptr %i.ke, align 8, !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !259
  %i.kf = sub nuw i64 %i.kd, %.val.i27
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range7RangeTojEECs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.03.i.i.i, i64 noundef %i.kf)
          to label %.noexc.i28 unwind label %.loopexit.i, !noalias !251

.noexc.i28:                                       ; preds = %bb.ct
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainhENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !251

.noexc19.i:                                       ; preds = %.noexc.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !259
  br label %bb.cu

bb.cu:                                            ; preds = %.noexc19.i, %.lr.ph.i.i.i
  %i.kg = icmp eq ptr %i.kb, %i.jz
  br i1 %i.kg, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit.i, label %.lr.ph.i.i.i

bb.cv:                                            ; preds = %._crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.kh = load i64, ptr %i.w, align 8, !range !3, !alias.scope !263, !noalias !251, !noundef !7
  %.not.i1.i.i = icmp eq i64 %i.kh, -1
  br i1 %.not.i1.i.i, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ki = load ptr, ptr %.sroa.49.0..sroa_idx34.i, align 8, !alias.scope !263, !noalias !251, !nonnull !7, !noundef !7 ; 2 uses
  %i.kj = load i64, ptr %.sroa.510.0..sroa_idx35.i, align 8, !alias.scope !263, !noalias !251, !noundef !7 ; 2 uses
  %.idx.i2.i.i = shl nuw nsw i64 %i.kj, 5
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx.i2.i.i
  %i.kl = icmp eq i64 %i.kj, 0
  br i1 %i.kl, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit.i, label %.lr.ph.i3.i.i

.lr.ph.i3.i.i:                                    ; preds = %bb.cw, %.noexc20.i
  %.sroa.0.03.i4.i.i = phi ptr [ %i.km, %.noexc20.i ], [ %i.ki, %bb.cw ] ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i4.i.i, i64 32 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i4.i.i, i64 16
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !264, !noundef !7
  %.not2.i5.i.i = icmp ult i64 %.val.i27, %i.ko
  br i1 %.not2.i5.i.i, label %bb.cx, label %.noexc20.i

bb.cx:                                            ; preds = %.lr.ph.i3.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i4.i.i, i64 24
  store i8 0, ptr %i.kp, align 8, !noalias !264
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE8truncateCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.03.i4.i.i, i64 noundef %.val.i27)
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !251

.noexc20.i:                                       ; preds = %bb.cx, %.lr.ph.i3.i.i
  %i.kq = icmp eq ptr %i.km, %i.kk
  br i1 %i.kq, label %_RNvMNtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit.i, label %.lr.ph.i3.i.i

.lr.ph.i:                                         ; preds = %bb.cq, %_RNvMs2_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_3Seq4push.exit.i
  %.sroa.5.020.i = phi i8 [ %spec.select.i, %_RNvMs2_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_3Seq4push.exit.i ], [ %i.jq, %bb.cq ] ; 4 uses
  %i.kr = icmp uge i8 %.sroa.5.020.i, %i.js       ; 2 uses
  %not..i = xor i1 %i.kr, true
  %i.ks = zext i1 %not..i to i8
  %spec.select.i = add nuw i8 %.sroa.5.020.i, %i.ks ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !251
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !268
  %i.kt = call noundef dereferenceable_or_null(1) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 1, i64 noundef range(i64 1, 9) 1) #18, !noalias !268 ; 3 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %bb.cy, label %bb.cz, !prof !8

.loopexit.i:                                      ; preds = %.noexc.i28, %bb.ct
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.cx
  %lpad.loopexit12.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralEBH_.exit.i.i
  %lpad.loopexit17.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.cy
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.dh, %bb.de, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ll, %bb.dh ], [ %i.lf, %bb.de ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit12.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit17.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal3SeqEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.w) #16
          to label %common.resume unwind label %bb.dk, !noalias !251

bb.cy:                                            ; preds = %.lr.ph.i
end_hunk_0
