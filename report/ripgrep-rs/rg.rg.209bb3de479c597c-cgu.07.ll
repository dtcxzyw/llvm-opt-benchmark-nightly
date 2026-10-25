Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.07?download=true
inline.NumInlined: 669
inline.NumDeleted: 154
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE4sinkCs2NzvFoTxuAy_2rg:bb.a
  %.not.i.i166.i = icmp eq ptr %i.ahy, null, !dbg !8918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !8919, !noalias !7736
  br i1 %.not.i.i166.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !8920

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit, %bb.ig, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit135, %bb.ib
  %i.aie = load i64, ptr %i.ig, align 8, !dbg !8921, !noundef !401 ; 2 uses
  %i.aif = icmp ult i64 %i.xu, %i.xs, !dbg !8922
  %.not31.i = icmp ugt i64 %i.xu, %i.aie
  %or.cond.i = or i1 %i.aif, %.not31.i, !dbg !8922
  br i1 %or.cond.i, label %bb.im, label %bb.il, !dbg !8922, !prof !576

bb.il:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.i
  %i.aig = load ptr, ptr %i.if, align 8, !dbg !8921, !nonnull !401, !noundef !401
  %i.aih = sub nuw i64 %i.xu, %i.xs, !dbg !8923   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !dbg !8924
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.xs, !dbg !8925
  store i64 0, ptr %i.da, align 8, !dbg !8924
  store i64 %i.aih, ptr %i.ih, align 8, !dbg !8924
  %i.aij = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE18write_colored_lineCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.da, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aii, i64 noundef %i.aih), !dbg !8926 ; 2 uses
  %.not32.i = icmp eq ptr %i.aij, null, !dbg !8927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !dbg !8928
  br i1 %.not32.i, label %bb.in, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !8929

bb.im:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.xs, i64 noundef %i.xu, i64 noundef %i.aie, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #14, !dbg !8930
  unreachable, !dbg !8930

bb.in:                                            ; preds = %bb.il
  %i.aik = icmp eq ptr %i.xr, %i.hz, !dbg !8052
  br i1 %i.aik, label %.loopexit, label %bb.fa, !dbg !8053

bb.io:                                            ; preds = %bb.ad
  %i.ail = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !8931 ; 4 uses
  %i.aim = load ptr, ptr %i.ail, align 8, !dbg !8931, !noundef !401
  %.not4 = icmp eq ptr %i.aim, null, !dbg !8932
  br i1 %.not4, label %bb.ip, label %bb.af, !dbg !8933

bb.ip:                                            ; preds = %bb.io
  %i.ain = load ptr, ptr %i.de, align 8, !dbg !8934, !nonnull !401, !align !467, !noundef !401
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 240, !dbg !8934
  %i.aip = load ptr, ptr %i.aio, align 8, !dbg !8934, !nonnull !401, !align !467, !noundef !401 ; 4 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 146, !dbg !8935
  %i.air = load i8, ptr %i.aiq, align 2, !dbg !8935, !range !403, !noundef !401
  %i.ais = trunc nuw i8 %i.air to i1, !dbg !8935
  br i1 %i.ais, label %bb.ir, label %bb.iq, !dbg !8935

bb.iq:                                            ; preds = %bb.ip
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 147, !dbg !8936
  %i.aiu = load i8, ptr %i.ait, align 1, !dbg !8936, !range !403, !noundef !401
  %i.aiv = trunc nuw i8 %i.aiu to i1, !dbg !8936
  %i.aiw = load ptr, ptr %i.he, align 8, !dbg !8937, !nonnull !401, !align !467, !noundef !401 ; 3 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 56, !dbg !8937
  %i.aiy = load i8, ptr %i.aix, align 8, !dbg !8937, !range !403, !noundef !401
  %i.aiz = trunc nuw i8 %i.aiy to i1, !dbg !8937  ; 2 uses
  br i1 %i.aiv, label %bb.nn, label %bb.nm, !dbg !8936

bb.ir:                                            ; preds = %bb.ip
  %i.aja = load ptr, ptr %i.he, align 8, !dbg !8938, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 56, !dbg !8939
  %i.ajc = load i8, ptr %i.ajb, align 8, !dbg !8939, !range !403, !noundef !401
  %i.ajd = trunc nuw i8 %i.ajc to i1, !dbg !8939
  br i1 %i.ajd, label %bb.it, label %bb.is, !dbg !8940

bb.is:                                            ; preds = %bb.ir
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aja, i64 57, !dbg !8939
  %i.ajf = load i8, ptr %i.aje, align 1, !dbg !8939
  br label %bb.it, !dbg !8941

bb.it:                                            ; preds = %bb.is, %bb.ir
  %.sroa.01.0.i.i = phi i8 [ %i.ajf, %bb.is ], [ 10, %bb.ir ], !dbg !8942
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aip, i64 113, !dbg !8943
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8944
  %i.aji = load ptr, ptr %i.ajh, align 8, !dbg !8944, !nonnull !401, !noundef !401 ; 6 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8944
  %i.ajk = load i64, ptr %i.ajj, align 8, !dbg !8944, !noundef !401 ; 8 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !8945
  %i.ajm = load ptr, ptr %i.ajl, align 8, !dbg !8945, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.ajn = load i64, ptr %i.hb, align 8, !dbg !8945, !noundef !401 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !dbg !8946
  store i64 0, ptr %i.bl, align 8, !dbg !8947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !8948
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16, !dbg !8949
  store i8 %.sroa.01.0.i.i, ptr %i.ajo, align 8, !dbg !8949
  store i64 0, ptr %i.bk, align 8, !dbg !8949
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8, !dbg !8949
  store i64 %i.ajk, ptr %i.ajp, align 8, !dbg !8949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !8950
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aji, i64 noundef %i.ajk), !dbg !8951
  %i.ajq = load i64, ptr %i.bj, align 8, !dbg !8950, !range !429, !noundef !401
  %i.ajr = trunc nuw i64 %i.ajq to i1, !dbg !8952
  br i1 %i.ajr, label %.lr.ph430.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i, !dbg !8952

.lr.ph430.i.i:                                    ; preds = %bb.it
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.aju = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 6 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  br label %bb.iu, !dbg !8952

bb.iu:                                            ; preds = %._crit_edge.i.i, %.lr.ph430.i.i
  %.sroa.02.0428.i.i = phi i64 [ 0, %.lr.ph430.i.i ], [ %i.akz, %._crit_edge.i.i ] ; 2 uses
  %i.ajz = load i64, ptr %i.ajs, align 8, !dbg !8953, !noundef !401 ; 2 uses
  %i.aka = load i64, ptr %i.ajt, align 8, !dbg !8954, !noundef !401 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !8955
  %.not.i90.i = icmp ugt i64 %i.ajz, %i.aka, !dbg !8956
  br i1 %.not.i90.i, label %bb.iv, label %bb.iw, !dbg !8956, !prof !582

bb.iv:                                            ; preds = %bb.iu
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !dbg !8957
  unreachable, !dbg !8957

bb.iw:                                            ; preds = %bb.iu
  store i64 %i.ajz, ptr %i.bi, align 8, !dbg !8958
  store i64 %i.aka, ptr %i.aju, align 8, !dbg !8958
  %i.akb = load ptr, ptr %i.he, align 8, !dbg !8959, !nonnull !401, !align !467, !noundef !401
  %i.akc = call { ptr, i64 } @_RNvNtCshhHc5tDBDRu_12grep_printer4util20trim_line_terminator(ptr noundef nonnull align 8 %i.akb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aji, i64 noundef %i.ajk, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi), !dbg !8960 ; 0 uses
  %i.akd = load ptr, ptr %i.de, align 8, !dbg !8961, !nonnull !401, !align !467, !noundef !401
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 240, !dbg !8961
  %i.akf = load ptr, ptr %i.ake, align 8, !dbg !8961, !nonnull !401, !align !467, !noundef !401
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 152, !dbg !8962
  %i.akh = load i8, ptr %i.akg, align 8, !dbg !8962, !range !403, !noundef !401
  %i.aki = trunc nuw i8 %i.akh to i1, !dbg !8962
  %.pre.i.i = load i64, ptr %i.aju, align 8, !dbg !8963 ; 2 uses
  %.pre580.i.i = load i64, ptr %i.bi, align 8, !dbg !8964 ; 2 uses
  br i1 %i.aki, label %bb.ix, label %bb.iy, !dbg !8962

bb.ix:                                            ; preds = %bb.iw
  %i.akj = load ptr, ptr %i.he, align 8, !dbg !8965, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 56, !dbg !8966
  %i.akl = load i8, ptr %i.akk, align 8, !dbg !8966, !range !403, !noundef !401
  %i.akm = trunc nuw i8 %i.akl to i1, !dbg !8966
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akj, i64 57, !dbg !8966
  %i.ako = load i8, ptr %i.akn, align 1, !dbg !8966
  %i.akp = call { i64, i64 } @_RNvNtCshhHc5tDBDRu_12grep_printer4util17trim_ascii_prefix(i1 noundef zeroext %i.akm, i8 %i.ako, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aji, i64 noundef %i.ajk, i64 noundef %.pre580.i.i, i64 noundef %.pre.i.i), !dbg !8967 ; 2 uses
  %i.akq = extractvalue { i64, i64 } %i.akp, 0, !dbg !8967 ; 2 uses
  %i.akr = extractvalue { i64, i64 } %i.akp, 1, !dbg !8967 ; 2 uses
  store i64 %i.akq, ptr %i.bi, align 8, !dbg !8968
  store i64 %i.akr, ptr %i.aju, align 8, !dbg !8968
  br label %bb.iy, !dbg !8969

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.aks = phi i64 [ %.pre580.i.i, %bb.iw ], [ %i.akq, %bb.ix ], !dbg !8964 ; 2 uses
  %i.akt = phi i64 [ %.pre.i.i, %bb.iw ], [ %i.akr, %bb.ix ], !dbg !8963 ; 2 uses
  %i.aku = icmp eq i64 %i.akt, %i.aks, !dbg !8970
  br i1 %i.aku, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i, !dbg !8971

.lr.ph.preheader.i.i:                             ; preds = %bb.iy
  %.pre582.i.i = load i64, ptr %i.bl, align 8, !dbg !8972
  br label %.lr.ph.i.i, !dbg !8973

.lr.ph.i.i:                                       ; preds = %.backedge.i.i, %.lr.ph.preheader.i.i
  %i.akv = phi i64 [ %i.awu, %.backedge.i.i ], [ %.pre582.i.i, %.lr.ph.preheader.i.i ], !dbg !8972 ; 6 uses
  %i.akw = phi i64 [ %i.aww, %.backedge.i.i ], [ %i.aks, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.akx = phi i64 [ %i.awv, %.backedge.i.i ], [ %i.akt, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.aky = icmp ult i64 %i.akv, %i.ajn, !dbg !8973
  br i1 %i.aky, label %bb.iz, label %bb.ja, !dbg !8973

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.jb, %bb.iy
  %i.akz = add i64 %.sroa.02.0428.i.i, 1, !dbg !8974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !8975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !8976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !8950
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aji, i64 noundef %i.ajk), !dbg !8951
  %i.ala = load i64, ptr %i.bj, align 8, !dbg !8950, !range !429, !noundef !401
  %i.alb = trunc nuw i64 %i.ala to i1, !dbg !8952
  br i1 %i.alb, label %bb.iu, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i, !dbg !8952

bb.iz:                                            ; preds = %.lr.ph.i.i
  %i.alc = getelementptr inbounds nuw [16 x i8], ptr %i.ajm, i64 %i.akv, !dbg !8973 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 8, !dbg !8977
  %i.ale = load i64, ptr %i.ald, align 8, !dbg !8977, !noundef !401 ; 2 uses
  %.not65.i.i = icmp ugt i64 %i.ale, %i.akw, !dbg !8973
  br i1 %.not65.i.i, label %bb.jc, label %bb.jb, !dbg !8973

bb.ja:                                            ; preds = %.lr.ph.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.akv, i64 noundef %i.ajn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #14, !dbg !8973
  unreachable, !dbg !8973

bb.jb:                                            ; preds = %bb.iz
  %i.alf = add nuw i64 %i.akv, 1, !dbg !8978      ; 3 uses
  %i.alg = icmp ult i64 %i.alf, %i.ajn, !dbg !8978
  br i1 %i.alg, label %bb.nl, label %._crit_edge.i.i, !dbg !8978

bb.jc:                                            ; preds = %bb.iz
  %i.alh = load i64, ptr %i.alc, align 8, !dbg !8979, !noundef !401 ; 4 uses
  %i.ali = icmp ult i64 %i.akw, %i.alh, !dbg !8980
  br i1 %i.ali, label %bb.nk, label %bb.jd, !dbg !8980

bb.jd:                                            ; preds = %bb.jc
  %..i121.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ale, i64 %i.akx), !dbg !8981 ; 9 uses
  %i.alj = load i64, ptr %i.ajv, align 8, !dbg !8982, !noundef !401
  %i.alk = add i64 %i.alj, %i.alh, !dbg !8983
  %i.all = load i64, ptr %0, align 8, !dbg !8984, !range !429, !noundef !401
  %i.alm = trunc nuw i64 %i.all to i1, !dbg !8985
  br i1 %i.alm, label %bb.je, label %bb.jf, !dbg !8985

bb.je:                                            ; preds = %bb.jd
  %i.aln = load i64, ptr %i.ajw, align 8, !dbg !8984
  %i.alo = add i64 %i.aln, %.sroa.02.0428.i.i, !dbg !8986
  br label %bb.jf, !dbg !8987

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %.sroa.5.0.i.i = phi i64 [ %i.alo, %bb.je ], [ undef, %bb.jd ], !dbg !8988 ; 2 uses
  %.sroa.07.0.i.i = phi i64 [ 1, %bb.je ], [ 0, %bb.jd ], !dbg !8988 ; 2 uses
  %i.alp = add nuw i64 %i.alh, 1, !dbg !8989      ; 2 uses
  %i.alq = load ptr, ptr %i.ail, align 8, !dbg !8990, !noundef !401
  %.not.i123.i.i = icmp eq ptr %i.alq, null, !dbg !8991
  %i.alr = load ptr, ptr %i.de, align 8, !dbg !8992, !nonnull !401, !align !467, !noundef !401 ; 4 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 240, !dbg !8992
  %i.alt = load ptr, ptr %i.als, align 8, !dbg !8992, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %..i124.i.i = select i1 %.not.i123.i.i, i64 48, i64 56, !dbg !8993
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 %..i124.i.i, !dbg !8994
  %.pn.i.i.i = load ptr, ptr %i.alu, align 8, !dbg !8994, !nonnull !401, !noundef !401 ; 2 uses
  %.sroa.0.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24, !dbg !8995
  %.sroa.0.0.i125.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !dbg !8995, !nonnull !401, !noundef !401 ; 4 uses
  %.sroa.3.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32, !dbg !8996
  %.sroa.3.0.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i, align 8, !dbg !8996, !noundef !401 ; 4 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alr, i64 104, !dbg !8997 ; 2 uses
  %i.alw = load i64, ptr %i.alv, align 8, !dbg !8997, !range !455, !noalias !7743, !noundef !401
  %.not.i103.i.i = icmp eq i64 %i.alw, -2, !dbg !8997
  br i1 %.not.i103.i.i, label %bb.jn, label %bb.jg, !dbg !8998

bb.jg:                                            ; preds = %bb.jf
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alt, i64 16, !dbg !8999
  %i.aly = load ptr, ptr %i.alx, align 8, !dbg !8999, !noalias !7743, !nonnull !401, !noundef !401
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 40, !dbg !9000
  %i.ama = load i8, ptr %i.alz, align 8, !dbg !9000, !range !403, !noalias !7743, !noundef !401
  %i.amb = trunc nuw i8 %i.ama to i1, !dbg !9000
  br i1 %i.amb, label %bb.ji, label %bb.jh, !dbg !9001

bb.jh:                                            ; preds = %bb.jg
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alt, i64 144, !dbg !9002
  %i.amd = load i8, ptr %i.amc, align 8, !dbg !9002, !range !403, !noalias !7743, !noundef !401
  %i.ame = trunc nuw i8 %i.amd to i1, !dbg !9002
  br i1 %i.ame, label %bb.jn, label %bb.ji, !dbg !9002

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !9003, !noalias !7743
  %i.amf = call noundef align 8 ptr @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath12as_hyperlink(ptr noundef nonnull align 8 %i.alv), !dbg !9004, !noalias !7744 ; 2 uses
  %.not.i126.i.i = icmp eq ptr %i.amf, null, !dbg !9005
  br i1 %.not.i126.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i, label %bb.jj, !dbg !9006

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !9007, !noalias !7744
  store i64 %.sroa.07.0.i.i, ptr %i.au, align 8, !dbg !9008, !noalias !7744
  store i64 %.sroa.5.0.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !dbg !9008, !noalias !7744
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !9008, !noalias !7744
  store i64 %i.alp, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !dbg !9008, !noalias !7744
  store ptr %i.amf, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !dbg !9008, !noalias !7744
  %i.amg = load ptr, ptr %i.de, align 8, !dbg !9009, !noalias !7744, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 240, !dbg !9010
  %i.ami = load ptr, ptr %i.amh, align 8, !dbg !9010, !noalias !7744, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 184, !dbg !9011 ; 5 uses
  %i.amk = load i64, ptr %i.amj, align 8, !dbg !9012, !noalias !7744, !noundef !401
  %i.aml = icmp eq i64 %i.amk, 0, !dbg !9013
  br i1 %i.aml, label %bb.jk, label %bb.jl, !dbg !9013, !prof !427

bb.jk:                                            ; preds = %bb.jj
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amg, i64 248, !dbg !9009
  store i64 -1, ptr %i.amj, align 8, !dbg !9014, !noalias !7744
  %i.amn = getelementptr inbounds nuw i8, ptr %i.ami, i64 192, !dbg !9015
  invoke void @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator5beginQINtNtB8_7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.av, ptr noundef nonnull align 8 %i.amm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.amn)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.jm, !dbg !9016, !noalias !7743

bb.jl:                                            ; preds = %bb.jj
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !dbg !9017, !noalias !7744
  unreachable, !dbg !9017

common.resume.i21:                                ; preds = %bb.vv, %bb.uv, %bb.ug, %bb.ty, %bb.tt, %bb.tj, %bb.sv, %bb.ss, %bb.sj, %bb.rz, %bb.rg, %bb.rb, %bb.qw, %bb.qq, %bb.qi, %bb.qd, %bb.pv, %bb.pn, %bb.pi, %bb.pa, %bb.os, %bb.on, %bb.od, %bb.nj, %bb.ne, %bb.mp, %bb.mk, %bb.mf, %bb.lz, %bb.lr, %bb.lm, %bb.le, %bb.kw, %bb.kr, %bb.kj, %bb.kb, %bb.jw, %bb.jm
  %.lcssa1390.sink1404.i = phi ptr [ %i.bvk, %bb.vv ], [ %i.bae, %bb.on ], [ %i.brq, %bb.uv ], [ %i.bqc, %bb.ug ], [ %i.bpm, %bb.ty ], [ %i.boz, %bb.tt ], [ %i.bny, %bb.tj ], [ %i.bhf, %bb.rg ], [ %i.bgp, %bb.rb ], [ %i.bfk, %bb.qq ], [ %i.beu, %bb.qi ], [ %i.beh, %bb.qd ], [ %i.bct, %bb.pn ], [ %i.anm, %bb.jw ], [ %i.aun, %bb.mp ], [ %i.atx, %bb.mk ], [ %i.asc, %bb.lr ], [ %i.awk, %bb.nj ], [ %i.amj, %bb.jm ], [ %i.avj, %bb.ne ], [ %i.atm, %bb.mf ], [ %i.ass, %bb.lz ], [ %i.arp, %bb.lm ], [ %i.aqr, %bb.le ], [ %i.aqb, %bb.kw ], [ %i.apo, %bb.kr ], [ %i.aop, %bb.kj ], [ %i.anz, %bb.kb ], [ %i.bja, %bb.sv ], [ %i.azd, %bb.od ], [ %i.bla, %bb.ss ], [ %i.bkk, %bb.sj ], [ %i.bjn, %bb.rz ], [ %i.bge, %bb.qw ], [ %i.bdj, %bb.pv ], [ %i.bcg, %bb.pi ], [ %i.bbh, %bb.pa ], [ %i.bar, %bb.os ] ; 2 uses
  %common.resume.op.i22 = phi { ptr, i32 } [ %i.bvr, %bb.vv ], [ %i.baj, %bb.on ], [ %i.bsi, %bb.uv ], [ %i.bqu, %bb.ug ], [ %i.bpr, %bb.ty ], [ %i.bpe, %bb.tt ], [ %i.bod, %bb.tj ], [ %i.bhk, %bb.rg ], [ %i.bgu, %bb.rb ], [ %i.bgc, %bb.qq ], [ %i.bez, %bb.qi ], [ %i.bem, %bb.qd ], [ %i.bcy, %bb.pn ], [ %i.anr, %bb.jw ], [ %i.aus, %bb.mp ], [ %i.auc, %bb.mk ], [ %i.ash, %bb.lr ], [ %i.awr, %bb.nj ], [ %i.amq, %bb.jm ], [ %i.awa, %bb.ne ], [ %i.ats, %bb.mf ], [ %i.atk, %bb.lz ], [ %i.aru, %bb.lm ], [ %i.arj, %bb.le ], [ %i.aqg, %bb.kw ], [ %i.apt, %bb.kr ], [ %i.aph, %bb.kj ], [ %i.aoe, %bb.kb ], [ %i.blo, %bb.sv ], [ %i.azi, %bb.od ], [ %i.blg, %bb.ss ], [ %i.bkr, %bb.sj ], [ %i.bke, %bb.rz ], [ %i.bgk, %bb.qw ], [ %i.beb, %bb.pv ], [ %i.bcl, %bb.pi ], [ %i.bbz, %bb.pa ], [ %i.baw, %bb.os ]
  %i.amo = load i64, ptr %.lcssa1390.sink1404.i, align 8, !dbg !8937, !noundef !401
  %i.amp = add i64 %i.amo, 1, !dbg !8937
  store i64 %i.amp, ptr %.lcssa1390.sink1404.i, align 8, !dbg !8937
  br label %common.resume, !dbg !8937

bb.jm:                                            ; preds = %bb.jk
  %i.amq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9018

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.jk
  %i.amr = load i64, ptr %i.amj, align 8, !dbg !9019, !noalias !7744, !noundef !401
  %i.ams = add i64 %i.amr, 1, !dbg !9020
  store i64 %i.ams, ptr %i.amj, align 8, !dbg !9021, !noalias !7744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !9022, !noalias !7744
  %.pre583.i.i = load i8, ptr %i.av, align 8, !dbg !9023, !range !403, !noalias !7743
  %i.amt = trunc nuw i8 %.pre583.i.i to i1, !dbg !9023
  br i1 %i.amt, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i._crit_edge.i, !dbg !9024

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i._crit_edge.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i
  %.pre967.i = load i8, ptr %i.ajx, align 1, !dbg !9025, !range !403, !noalias !7743
  %i.amu = trunc nuw i8 %.pre967.i to i1, !dbg !9026
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9024

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i._crit_edge.i, %bb.ji
  %i.amv = phi i1 [ %i.amu, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i._crit_edge.i ], [ false, %bb.ji ], !dbg !9025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !9027, !noalias !7743
  %.pre584.i.i = load ptr, ptr %i.de, align 8, !dbg !9028, !noalias !7745 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre584.i.i, i64 240
  %.pre585.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !dbg !9028, !noalias !7745
  br label %bb.jn, !dbg !9029

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i
  %i.amw = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !9030
  %i.amx = load ptr, ptr %i.amw, align 8, !dbg !9030, !noalias !7743, !nonnull !401, !noundef !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !9027, !noalias !7743
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9031

bb.jn:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i, %bb.jh, %bb.jf
  %i.amy = phi ptr [ %i.alt, %bb.jh ], [ %.pre585.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ %i.alt, %bb.jf ], !dbg !9028 ; 3 uses
  %i.amz = phi ptr [ %i.alr, %bb.jh ], [ %.pre584.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ %i.alr, %bb.jf ], !dbg !9028 ; 3 uses
  %.sroa.52.0.ph.i.i = phi i1 [ false, %bb.jh ], [ %i.amv, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ false, %bb.jf ]
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amy, i64 144, !dbg !9032
  %i.anb = load i8, ptr %i.ana, align 8, !dbg !9032, !range !403, !noalias !7745, !noundef !401
  %i.anc = trunc nuw i8 %i.anb to i1, !dbg !9032
  br i1 %i.anc, label %bb.jr, label %bb.jo, !dbg !9032

bb.jo:                                            ; preds = %bb.jn
  %i.and = getelementptr inbounds nuw i8, ptr %i.amz, i64 104, !dbg !9033 ; 2 uses
  %i.ane = load i64, ptr %i.and, align 8, !dbg !9033, !range !455, !noalias !7745, !noundef !401
  %.not.i74.i.i = icmp eq i64 %i.ane, -2, !dbg !9033
  br i1 %.not.i74.i.i, label %bb.jr, label %bb.jp, !dbg !9034

bb.jp:                                            ; preds = %bb.jo
  %i.anf = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_pathCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.and), !dbg !9035 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.anf, null, !dbg !9036
  br i1 %.not10.i.i.i, label %bb.jq, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9037

bb.jq:                                            ; preds = %bb.jp
  %i.ang = load ptr, ptr %i.de, align 8, !dbg !9038, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 240, !dbg !9038
  %i.ani = load ptr, ptr %i.anh, align 8, !dbg !9038, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 66, !dbg !9039
  %i.ank = load i8, ptr %i.anj, align 2, !dbg !9039, !range !403, !noundef !401
  %..i.i.i = add nuw nsw i8 %i.ank, 1, !dbg !9040
  br label %bb.jr, !dbg !9041

bb.jr:                                            ; preds = %bb.jq, %bb.jo, %bb.jn
  %i.anl = phi ptr [ %i.ani, %bb.jq ], [ %i.amy, %bb.jo ], [ %i.amy, %bb.jn ] ; 6 uses
  %.val108.i.i = phi ptr [ %i.ang, %bb.jq ], [ %i.amz, %bb.jo ], [ %i.amz, %bb.jn ]
  %.sroa.37.0.ph.i.i = phi i8 [ %..i.i.i, %bb.jq ], [ 0, %bb.jo ], [ 0, %bb.jn ] ; 2 uses
  %1 = trunc nuw i64 %.sroa.07.0.i.i to i1, !dbg !9042
  br i1 %1, label %bb.js, label %bb.km, !dbg !9042

bb.js:                                            ; preds = %bb.jr
  switch i8 %.sroa.37.0.ph.i.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i
    i8 1, label %bb.jt
    i8 2, label %bb.jx
  ], !dbg !9043

bb.jt:                                            ; preds = %bb.js
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 184, !dbg !9044 ; 5 uses
  %i.ann = load i64, ptr %i.anm, align 8, !dbg !9045, !noalias !7746, !noundef !401
  %i.ano = icmp eq i64 %i.ann, 0, !dbg !9046
  br i1 %i.ano, label %bb.ju, label %bb.jv, !dbg !9046, !prof !427

bb.ju:                                            ; preds = %bb.jt
  store i64 -1, ptr %i.anm, align 8, !dbg !9047, !noalias !7746
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anl, i64 192, !dbg !9048
  %i.anq = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.anp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i125.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit128.i.i unwind label %bb.jw, !dbg !9049 ; 2 uses

bb.jv:                                            ; preds = %bb.jt
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !9050, !noalias !7746
  unreachable, !dbg !9050

bb.jw:                                            ; preds = %bb.ju
  %i.anr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9051

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit128.i.i: ; preds = %bb.ju
  %i.ans = load i64, ptr %i.anm, align 8, !dbg !9052, !noundef !401
  %i.ant = add i64 %i.ans, 1, !dbg !9053
  store i64 %i.ant, ptr %i.anm, align 8, !dbg !9054
  %.not7.i.i86.i.i = icmp eq ptr %i.anq, null, !dbg !9055
  br i1 %.not7.i.i86.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9056

bb.jx:                                            ; preds = %bb.js
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anl, i64 66, !dbg !9057
  %i.anv = load i8, ptr %i.anu, align 2, !dbg !9057, !range !403, !noalias !7747, !noundef !401
  %i.anw = trunc nuw i8 %i.anv to i1, !dbg !9057
  br i1 %i.anw, label %bb.jy, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i, !dbg !9058

bb.jy:                                            ; preds = %bb.jx
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anl, i64 67, !dbg !9057
  %i.any = load i8, ptr %i.anx, align 1, !dbg !9059, !noalias !7747, !noundef !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !9060, !noalias !7747
  store i8 %i.any, ptr %i.az, align 1, !dbg !9060, !noalias !7747
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anl, i64 184, !dbg !9061 ; 5 uses
  %i.aoa = load i64, ptr %i.anz, align 8, !dbg !9062, !noalias !7748, !noundef !401
  %i.aob = icmp eq i64 %i.aoa, 0, !dbg !9063
  br i1 %i.aob, label %bb.jz, label %bb.ka, !dbg !9063, !prof !427

bb.jz:                                            ; preds = %bb.jy
  store i64 -1, ptr %i.anz, align 8, !dbg !9064, !noalias !7748
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anl, i64 192, !dbg !9065
  %i.aod = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aoc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit129.i.i unwind label %bb.kb, !dbg !9066 ; 2 uses

bb.ka:                                            ; preds = %bb.jy
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !9067, !noalias !7748
  unreachable, !dbg !9067

bb.kb:                                            ; preds = %bb.jz
  %i.aoe = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9068

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit129.i.i: ; preds = %bb.jz
  %i.aof = load i64, ptr %i.anz, align 8, !dbg !9069, !noundef !401
  %i.aog = add i64 %i.aof, 1, !dbg !9070
  store i64 %i.aog, ptr %i.anz, align 8, !dbg !9071
  %.not.i.i85.i.i = icmp eq ptr %i.aod, null, !dbg !9072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !9073, !noalias !7747
  br i1 %.not.i.i85.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9074

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit129.i.i, %bb.jx, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit128.i.i, %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !9075, !noalias !7749
  call void @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ba, i64 noundef %.sroa.5.0.i.i), !dbg !9076, !noalias !7749
  %i.aoh = load ptr, ptr %i.de, align 8, !dbg !9077, !noalias !7749, !nonnull !401, !align !467, !noundef !401
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 240, !dbg !9077
  %i.aoj = load ptr, ptr %i.aoi, align 8, !dbg !9077, !noalias !7749, !nonnull !401, !align !467, !noundef !401
  %i.aok = call { ptr, i64 } @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter8as_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba), !dbg !9078, !noalias !7749 ; 2 uses
  %i.aol = extractvalue { ptr, i64 } %i.aok, 0, !dbg !9078
  %i.aom = extractvalue { ptr, i64 } %i.aok, 1, !dbg !9078
  %.val118.i.i = load ptr, ptr %i.de, align 8, !dbg !9079, !nonnull !401, !align !467, !noundef !401
  %i.aon = getelementptr inbounds nuw i8, ptr %.val118.i.i, i64 240, !dbg !9080
  %i.aoo = load ptr, ptr %i.aon, align 8, !dbg !9080, !noalias !7750, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 184, !dbg !9081 ; 7 uses
  %i.aoq = load i64, ptr %i.aop, align 8, !dbg !9082, !noalias !7750, !noundef !401
  %i.aor = icmp eq i64 %i.aoq, 0, !dbg !9083
  br i1 %i.aor, label %bb.kc, label %bb.kd, !dbg !9083, !prof !427

bb.kc:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoj, i64 83, !dbg !9084
  store i64 -1, ptr %i.aop, align 8, !dbg !9085, !noalias !7750
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoo, i64 192, !dbg !9086 ; 3 uses
  %i.aou = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aot, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.aos)
          to label %bb.ke unwind label %bb.kj, !dbg !9087, !noalias !7751 ; 2 uses

bb.kd:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !9088, !noalias !7750
  unreachable, !dbg !9088

bb.ke:                                            ; preds = %bb.kc
  %.not.i130.i.i = icmp eq ptr %i.aou, null, !dbg !9089
  br i1 %.not.i130.i.i, label %bb.kf, label %bb.kk, !dbg !9090

bb.kf:                                            ; preds = %bb.ke
  %i.aov = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aot, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aol, i64 noundef range(i64 0, -9223372036854775808) %i.aom)
          to label %bb.kg unwind label %bb.kj, !dbg !9091 ; 2 uses

bb.kg:                                            ; preds = %bb.kf
  %.not11.i.i.i = icmp eq ptr %i.aov, null, !dbg !9092
  br i1 %.not11.i.i.i, label %bb.kh, label %bb.kk, !dbg !9093

bb.kh:                                            ; preds = %bb.kg
  %i.aow = load i64, ptr %i.aot, align 8, !dbg !9094, !range !429, !alias.scope !7752, !noundef !401
  %i.aox = trunc nuw i64 %i.aow to i1, !dbg !9095
  br i1 %i.aox, label %bb.ki, label %bb.kl, !dbg !9095

bb.ki:                                            ; preds = %bb.kh
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aoo, i64 200, !dbg !9096
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aoy, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %bb.kj, !dbg !9097

.noexc.i.i.i:                                     ; preds = %bb.ki
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoo, i64 216, !dbg !9098 ; 3 uses
  %i.apa = load i64, ptr %i.aoz, align 8, !dbg !9098, !alias.scope !7753, !noundef !401 ; 2 uses
  %i.apb = icmp sgt i64 %i.apa, -1, !dbg !9099
  call void @llvm.assume(i1 %i.apb), !dbg !9100
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoo, i64 208, !dbg !9101
  %i.apd = load ptr, ptr %i.apc, align 8, !dbg !9101, !alias.scope !7753, !nonnull !401, !noundef !401
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 %i.apa, !dbg !9102
  store i32 1831885595, ptr %i.ape, align 1, !dbg !9103
  %i.apf = load i64, ptr %i.aoz, align 8, !dbg !9104, !alias.scope !7753, !noundef !401
  %i.apg = add i64 %i.apf, 4, !dbg !9104
  store i64 %i.apg, ptr %i.aoz, align 8, !dbg !9104, !alias.scope !7753
  br label %bb.kl, !dbg !9105

bb.kj:                                            ; preds = %bb.ki, %bb.kf, %bb.kc
  %i.aph = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9106

bb.kk:                                            ; preds = %bb.kg, %bb.ke
  %.sroa.0.0.i131.i.i = phi ptr [ %i.aou, %bb.ke ], [ %i.aov, %bb.kg ], !dbg !9107
  %storemerge.in.i.i.i = load i64, ptr %i.aop, align 8, !dbg !9108, !noundef !401
  %storemerge.i.i.i = add i64 %storemerge.in.i.i.i, 1, !dbg !9109
  store i64 %storemerge.i.i.i, ptr %i.aop, align 8, !dbg !9110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !9111, !noalias !7749
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9112

bb.kl:                                            ; preds = %.noexc.i.i.i, %bb.kh
  %storemerge.in.i202.i.i = load i64, ptr %i.aop, align 8, !dbg !9108, !noundef !401
  %storemerge.i203.i.i = add i64 %storemerge.in.i202.i.i, 1, !dbg !9109
  store i64 %storemerge.i203.i.i, ptr %i.aop, align 8, !dbg !9110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !9111, !noalias !7749
  %.pre586.i.i = load ptr, ptr %i.de, align 8, !dbg !9113, !noalias !7754
  br label %bb.km, !dbg !9114

bb.km:                                            ; preds = %bb.kl, %bb.jr
  %i.api = phi ptr [ %.val108.i.i, %bb.jr ], [ %.pre586.i.i, %bb.kl ], !dbg !9113 ; 2 uses
  %.sroa.37.5.ph.i.i = phi i8 [ %.sroa.37.0.ph.i.i, %bb.jr ], [ 1, %bb.kl ] ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 240, !dbg !9113
  %i.apk = load ptr, ptr %i.apj, align 8, !dbg !9113, !noalias !7754, !nonnull !401, !align !467, !noundef !401 ; 8 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 150, !dbg !9115
  %i.apm = load i8, ptr %i.apl, align 2, !dbg !9115, !range !403, !noalias !7754, !noundef !401
  %i.apn = trunc nuw i8 %i.apm to i1, !dbg !9115
  br i1 %i.apn, label %bb.kn, label %bb.lh, !dbg !9115

bb.kn:                                            ; preds = %bb.km
  switch i8 %.sroa.37.5.ph.i.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i89.i.i
    i8 1, label %bb.ko
    i8 2, label %bb.ks
  ], !dbg !9116

bb.ko:                                            ; preds = %bb.kn
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apk, i64 184, !dbg !9117 ; 5 uses
  %i.app = load i64, ptr %i.apo, align 8, !dbg !9118, !noalias !7755, !noundef !401
  %i.apq = icmp eq i64 %i.app, 0, !dbg !9119
  br i1 %i.apq, label %bb.kp, label %bb.kq, !dbg !9119, !prof !427

bb.kp:                                            ; preds = %bb.ko
  store i64 -1, ptr %i.apo, align 8, !dbg !9120, !noalias !7755
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apk, i64 192, !dbg !9121
  %i.aps = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.apr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i125.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit132.i.i unwind label %bb.kr, !dbg !9122 ; 2 uses

bb.kq:                                            ; preds = %bb.ko
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !9123, !noalias !7755
  unreachable, !dbg !9123

bb.kr:                                            ; preds = %bb.kp
  %i.apt = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9124

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit132.i.i: ; preds = %bb.kp
  %i.apu = load i64, ptr %i.apo, align 8, !dbg !9125, !noundef !401
end_hunk_0
begin_hunk_1_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE4sinkCs2NzvFoTxuAy_2rg:bb.a
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avd, i64 216, !dbg !9347 ; 3 uses
  %i.avt = load i64, ptr %i.avs, align 8, !dbg !9347, !alias.scope !7778, !noundef !401 ; 2 uses
  %i.avu = icmp sgt i64 %i.avt, -1, !dbg !9348
  call void @llvm.assume(i1 %i.avu), !dbg !9349
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avd, i64 208, !dbg !9350
  %i.avw = load ptr, ptr %i.avv, align 8, !dbg !9350, !alias.scope !7778, !nonnull !401, !noundef !401
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.avt, !dbg !9351
  store i32 1831885595, ptr %i.avx, align 1, !dbg !9352
  %i.avy = load i64, ptr %i.avs, align 8, !dbg !9353, !alias.scope !7778, !noundef !401
  %i.avz = add i64 %i.avy, 4, !dbg !9353
  store i64 %i.avz, ptr %i.avs, align 8, !dbg !9353, !alias.scope !7778
  br label %bb.ng, !dbg !9354

bb.ne:                                            ; preds = %bb.nd, %bb.na, %bb.mx
  %i.awa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9355

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_specCs2NzvFoTxuAy_2rg.exit155.i.i: ; preds = %bb.nb, %bb.mz
  %.sroa.0.0.i150.i.i = phi ptr [ %i.avn, %bb.mz ], [ %i.avo, %bb.nb ], !dbg !9356
  %storemerge.in.i151.i.i = load i64, ptr %i.avj, align 8, !dbg !9357, !noundef !401
  %storemerge.i152.i.i = add i64 %storemerge.in.i151.i.i, 1, !dbg !9358
  store i64 %storemerge.i152.i.i, ptr %i.avj, align 8, !dbg !9359
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9360

bb.nf:                                            ; preds = %bb.mv
  %i.awb = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE19write_exceeded_lineCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aji, i64 noundef %i.ajk, i64 noundef %i.auv, i64 noundef %..i121.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ajm, i64 noundef %i.ajn, ptr noalias nofree noundef align 8 dereferenceable(8) %i.bl), !dbg !9361 ; 2 uses
  %.not72.i.i = icmp eq ptr %i.awb, null, !dbg !9362
  %.pre581.i.i = load i64, ptr %i.bl, align 8, !dbg !8972
  br i1 %.not72.i.i, label %.backedge.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9363

bb.ng:                                            ; preds = %.noexc.i154.i.i, %bb.nc
  %storemerge.in.i151234.i.i = load i64, ptr %i.avj, align 8, !dbg !9357, !noundef !401
  %storemerge.i152235.i.i = add i64 %storemerge.in.i151234.i.i, 1, !dbg !9358
  store i64 %storemerge.i152235.i.i, ptr %i.avj, align 8, !dbg !9359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !9364
  %i.awc = load ptr, ptr %i.he, align 8, !dbg !9364, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 56, !dbg !9365
  %i.awe = load i8, ptr %i.awd, align 8, !dbg !9365, !range !403, !noundef !401 ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awc, i64 57, !dbg !9365
  %i.awg = load i8, ptr %i.awf, align 1, !dbg !9365
  store i8 %i.awe, ptr %i.bd, align 1, !dbg !9365
  store i8 %i.awg, ptr %i.ajy, align 1, !dbg !9365
  %i.awh = trunc nuw i8 %i.awe to i1, !dbg !9366
  %.val114.i.i = load ptr, ptr %i.de, align 8, !dbg !9367, !nonnull !401, !align !467, !noundef !401
  %i.awi = getelementptr inbounds nuw i8, ptr %.val114.i.i, i64 240, !dbg !9368
  %i.awj = load ptr, ptr %i.awi, align 8, !dbg !9368, !noalias !401, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 184, !dbg !9369 ; 5 uses
  %i.awl = load i64, ptr %i.awk, align 8, !dbg !9370, !noalias !401, !noundef !401
  %i.awm = icmp eq i64 %i.awl, 0, !dbg !9371      ; 2 uses
  br i1 %i.awh, label %.split49.i.i, label %.split.i.i50, !dbg !9372

.split49.i.i:                                     ; preds = %bb.ng
  br i1 %i.awm, label %.invoke.i, label %bb.nh, !dbg !9373, !prof !427

.invoke.i:                                        ; preds = %.split.i.i50, %.split49.i.i
  %i.awn = phi ptr [ %i.ajy, %.split.i.i50 ], [ @17, %.split49.i.i ]
  %i.awo = phi i64 [ 1, %.split.i.i50 ], [ 2, %.split49.i.i ]
  store i64 -1, ptr %i.awk, align 8, !dbg !9374, !noalias !401
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awj, i64 192, !dbg !9375
  %i.awq = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.awp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.awn, i64 noundef %i.awo)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i unwind label %bb.nj, !dbg !9376 ; 2 uses

bb.nh:                                            ; preds = %.split49.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !9377, !noalias !7779
  unreachable, !dbg !9377

.split.i.i50:                                     ; preds = %bb.ng
  br i1 %i.awm, label %.invoke.i, label %bb.ni, !dbg !9378, !prof !427

bb.ni:                                            ; preds = %.split.i.i50
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !9379, !noalias !7780
  unreachable, !dbg !9379

bb.nj:                                            ; preds = %.invoke.i
  %i.awr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9380

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i: ; preds = %.invoke.i
  %i.aws = load i64, ptr %i.awk, align 8, !dbg !9381, !noundef !401
  %i.awt = add i64 %i.aws, 1, !dbg !9382
  store i64 %i.awt, ptr %i.awk, align 8, !dbg !9383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !9384
  %.not71.i.i = icmp eq ptr %i.awq, null, !dbg !9385
  br i1 %.not71.i.i, label %.backedge.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !9386

.backedge.i.i:                                    ; preds = %bb.nl, %bb.nk, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i, %bb.nf
  %i.awu = phi i64 [ %i.akv, %bb.nk ], [ %i.akv, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i ], [ %.pre581.i.i, %bb.nf ], [ %i.alf, %bb.nl ]
  %i.awv = load i64, ptr %i.aju, align 8, !dbg !8963, !noundef !401 ; 2 uses
  %i.aww = load i64, ptr %i.bi, align 8, !dbg !8964, !noundef !401 ; 2 uses
  %i.awx = icmp eq i64 %i.awv, %i.aww, !dbg !8970
  br i1 %i.awx, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !8971

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i, %bb.nf, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit157.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit141.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit132.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit128.i.i, %bb.jp, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit158.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit133.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit129.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_specCs2NzvFoTxuAy_2rg.exit155.i.i, %bb.ma, %bb.lf, %bb.kk, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i.i
  %.sroa.0.0.i91.i = phi ptr [ %.sroa.0.0.i150.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_specCs2NzvFoTxuAy_2rg.exit155.i.i ], [ %i.amx, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i.i ], [ %.sroa.0.0.i131.i.i, %bb.kk ], [ %.sroa.0.0.i143.i.i, %bb.ma ], [ %.sroa.0.0.i135.i.i, %bb.lf ], [ %i.art, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit141.i.i ], [ %i.aps, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit132.i.i ], [ %i.anq, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit128.i.i ], [ %i.atr, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.anf, %bb.jp ], [ %i.aub, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit157.i ], [ %i.awb, %bb.nf ], [ %i.awq, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i ], [ %i.aqf, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit133.i.i ], [ %i.asg, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit158.i ], [ %i.aur, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i ], [ %i.aod, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit129.i.i ], !dbg !9387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !8975
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i, !dbg !9388

bb.nk:                                            ; preds = %bb.jc
  %..i122.i.i = call noundef i64 @llvm.umin.i64(i64 %i.alh, i64 %i.akx), !dbg !9389
  store i64 %..i122.i.i, ptr %i.bi, align 8, !dbg !9390
  br label %.backedge.i.i, !dbg !9391

bb.nl:                                            ; preds = %bb.jb
  store i64 %i.alf, ptr %i.bl, align 8, !dbg !9392
  br label %.backedge.i.i, !dbg !9393

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i: ; preds = %._crit_edge.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, %bb.it
  %.sroa.0.1.i89.i = phi ptr [ %.sroa.0.0.i91.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ null, %bb.it ], [ null, %._crit_edge.i.i ], !dbg !9394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !8976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !9395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !9396
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !9397

bb.nm:                                            ; preds = %bb.iq
  br i1 %i.aiz, label %bb.sz, label %bb.sy, !dbg !9398

bb.nn:                                            ; preds = %bb.iq
  br i1 %i.aiz, label %bb.np, label %bb.no, !dbg !9399

bb.no:                                            ; preds = %bb.nn
  %i.awy = getelementptr inbounds nuw i8, ptr %i.aiw, i64 57, !dbg !9400
  %i.awz = load i8, ptr %i.awy, align 1, !dbg !9400
  br label %bb.np, !dbg !9401

bb.np:                                            ; preds = %bb.no, %bb.nn
  %.sroa.01.0.i93.i = phi i8 [ %i.awz, %bb.no ], [ 10, %bb.nn ], !dbg !9402
  %i.axa = getelementptr inbounds nuw i8, ptr %i.aip, i64 113, !dbg !9403
  %i.axb = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9404
  %i.axc = load ptr, ptr %i.axb, align 8, !dbg !9404, !nonnull !401, !noundef !401 ; 8 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9404
  %i.axe = load i64, ptr %i.axd, align 8, !dbg !9404, !noundef !401 ; 14 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9405
  %i.axg = load ptr, ptr %i.axf, align 8, !dbg !9405, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.axh = load i64, ptr %i.hb, align 8, !dbg !9405, !noundef !401 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.axh, 4, !dbg !9406
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axg, i64 %.idx.i.i, !dbg !9406
  %i.axj = icmp eq i64 %i.axh, 0, !dbg !9407
  br i1 %i.axj, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE9sink_slowCs2NzvFoTxuAy_2rg.exit, label %.lr.ph462.i.i, !dbg !9408

.lr.ph462.i.i:                                    ; preds = %bb.np
  %i.axk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.axl = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.axm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.axn = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.axo = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 8 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.axq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0..sroa_idx.i.i94.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.0..sroa_idx.i.i95.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.7.0..sroa_idx.i.i96.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.9.0..sroa_idx.i.i97.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.axr = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.axs = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  br label %bb.nq, !dbg !9408

bb.nq:                                            ; preds = %._crit_edge459.i.i, %.lr.ph462.i.i
  %.sroa.02.0460.i.i = phi ptr [ %i.axg, %.lr.ph462.i.i ], [ %i.axu, %._crit_edge459.i.i ] ; 3 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %.sroa.02.0460.i.i, i64 16, !dbg !9409 ; 2 uses
  %i.axv = load i64, ptr %.sroa.02.0460.i.i, align 8, !dbg !9410, !noundef !401 ; 5 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %.sroa.02.0460.i.i, i64 8, !dbg !9410
  %i.axx = load i64, ptr %i.axw, align 8, !dbg !9410, !noundef !401 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !9411
  store i8 %.sroa.01.0.i93.i, ptr %i.axk, align 8, !dbg !9412
  store i64 0, ptr %i.at, align 8, !dbg !9412
  store i64 %i.axe, ptr %i.axl, align 8, !dbg !9412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !9413
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.axc, i64 noundef %i.axe), !dbg !9414
  %i.axy = load i64, ptr %i.as, align 8, !dbg !9413, !range !429, !noundef !401
  %i.axz = trunc nuw i64 %i.axy to i1, !dbg !9415
  br i1 %i.axz, label %.lr.ph458.i.i, label %._crit_edge459.i.i, !dbg !9415

.lr.ph458.i.i:                                    ; preds = %bb.nq, %.backedge.i100.i
  %.sroa.04.0456.i.i = phi i64 [ %.sroa.04.0.be.i.i, %.backedge.i100.i ], [ 0, %bb.nq ] ; 2 uses
  %i.aya = load i64, ptr %i.axm, align 8, !dbg !9416, !noundef !401 ; 5 uses
  %i.ayb = load i64, ptr %i.axn, align 8, !dbg !9417, !noundef !401 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !9418
  %.not.i99.i = icmp ugt i64 %i.aya, %i.ayb, !dbg !9419
  br i1 %.not.i99.i, label %bb.nr, label %bb.ns, !dbg !9419, !prof !582

bb.nr:                                            ; preds = %.lr.ph458.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !dbg !9420
  unreachable, !dbg !9420

bb.ns:                                            ; preds = %.lr.ph458.i.i
  store i64 %i.aya, ptr %i.ar, align 8, !dbg !9421
  store i64 %i.ayb, ptr %i.axo, align 8, !dbg !9421
  %.not93.i.i = icmp ult i64 %i.aya, %i.axx, !dbg !9422
  br i1 %.not93.i.i, label %bb.nt, label %bb.sx, !dbg !9422

bb.nt:                                            ; preds = %bb.ns
  %.not94.i.i = icmp ugt i64 %i.ayb, %i.axv, !dbg !9423
  br i1 %.not94.i.i, label %bb.nu, label %.backedge.i100.i, !dbg !9423

bb.nu:                                            ; preds = %bb.nt
  %i.ayc = load i64, ptr %i.axp, align 8, !dbg !9424, !noundef !401
  %i.ayd = add i64 %i.ayc, %i.aya, !dbg !9425
  %i.aye = load i64, ptr %0, align 8, !dbg !9426, !range !429, !noundef !401
  %i.ayf = trunc nuw i64 %i.aye to i1, !dbg !9427
  br i1 %i.ayf, label %bb.nv, label %bb.nw, !dbg !9427

bb.nv:                                            ; preds = %bb.nu
  %i.ayg = load i64, ptr %i.axq, align 8, !dbg !9426
  %i.ayh = add i64 %i.ayg, %.sroa.04.0456.i.i, !dbg !9428
  br label %bb.nw, !dbg !9429

bb.nw:                                            ; preds = %bb.nv, %bb.nu
  %.sroa.5.0.i101.i = phi i64 [ %i.ayh, %bb.nv ], [ undef, %bb.nu ], !dbg !9430 ; 2 uses
  %.sroa.010.0.i.i = phi i64 [ 1, %bb.nv ], [ 0, %bb.nu ], !dbg !9430 ; 2 uses
  %i.ayi = call i64 @llvm.usub.sat.i64(i64 %i.axv, i64 %i.aya), !dbg !9431
  %i.ayj = add nuw i64 %i.ayi, 1, !dbg !9432      ; 2 uses
  %i.ayk = load ptr, ptr %i.ail, align 8, !dbg !9433, !noundef !401
  %.not.i160.i.i = icmp eq ptr %i.ayk, null, !dbg !9434
  %i.ayl = load ptr, ptr %i.de, align 8, !dbg !9435, !nonnull !401, !align !467, !noundef !401 ; 4 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 240, !dbg !9435
  %i.ayn = load ptr, ptr %i.aym, align 8, !dbg !9435, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %..i161.i.i = select i1 %.not.i160.i.i, i64 48, i64 56, !dbg !9436
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 %..i161.i.i, !dbg !9437
  %.pn.i.i102.i = load ptr, ptr %i.ayo, align 8, !dbg !9437, !nonnull !401, !noundef !401 ; 2 uses
  %.sroa.0.0.in.i.i103.i = getelementptr inbounds nuw i8, ptr %.pn.i.i102.i, i64 24, !dbg !9438
  %.sroa.0.0.i162.i.i = load ptr, ptr %.sroa.0.0.in.i.i103.i, align 8, !dbg !9438, !nonnull !401, !noundef !401 ; 4 uses
  %.sroa.3.0.in.i.i104.i = getelementptr inbounds nuw i8, ptr %.pn.i.i102.i, i64 32, !dbg !9439
  %.sroa.3.0.i.i105.i = load i64, ptr %.sroa.3.0.in.i.i104.i, align 8, !dbg !9439, !noundef !401 ; 4 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayl, i64 104, !dbg !9440 ; 2 uses
  %i.ayq = load i64, ptr %i.ayp, align 8, !dbg !9440, !range !455, !noalias !7783, !noundef !401
  %.not.i140.i.i = icmp eq i64 %i.ayq, -2, !dbg !9440
  br i1 %.not.i140.i.i, label %bb.oe, label %bb.nx, !dbg !9441

bb.nx:                                            ; preds = %bb.nw
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayn, i64 16, !dbg !9442
  %i.ays = load ptr, ptr %i.ayr, align 8, !dbg !9442, !noalias !7783, !nonnull !401, !noundef !401
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 40, !dbg !9443
  %i.ayu = load i8, ptr %i.ayt, align 8, !dbg !9443, !range !403, !noalias !7783, !noundef !401
  %i.ayv = trunc nuw i8 %i.ayu to i1, !dbg !9443
  br i1 %i.ayv, label %bb.nz, label %bb.ny, !dbg !9444

bb.ny:                                            ; preds = %bb.nx
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayn, i64 144, !dbg !9445
  %i.ayx = load i8, ptr %i.ayw, align 8, !dbg !9445, !range !403, !noalias !7783, !noundef !401
  %i.ayy = trunc nuw i8 %i.ayx to i1, !dbg !9445
  br i1 %i.ayy, label %bb.oe, label %bb.nz, !dbg !9445

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !9446, !noalias !7783
  %i.ayz = call noundef align 8 ptr @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath12as_hyperlink(ptr noundef nonnull align 8 %i.ayp), !dbg !9447, !noalias !7784 ; 2 uses
  %.not.i163.i.i = icmp eq ptr %i.ayz, null, !dbg !9448
  br i1 %.not.i163.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i, label %bb.oa, !dbg !9449

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !9450, !noalias !7784
  store i64 %.sroa.010.0.i.i, ptr %i.x, align 8, !dbg !9451, !noalias !7784
  store i64 %.sroa.5.0.i101.i, ptr %.sroa.3.0..sroa_idx.i.i94.i, align 8, !dbg !9451, !noalias !7784
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i95.i, align 8, !dbg !9451, !noalias !7784
  store i64 %i.ayj, ptr %.sroa.7.0..sroa_idx.i.i96.i, align 8, !dbg !9451, !noalias !7784
  store ptr %i.ayz, ptr %.sroa.9.0..sroa_idx.i.i97.i, align 8, !dbg !9451, !noalias !7784
  %i.aza = load ptr, ptr %i.de, align 8, !dbg !9452, !noalias !7784, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 240, !dbg !9453
  %i.azc = load ptr, ptr %i.azb, align 8, !dbg !9453, !noalias !7784, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 184, !dbg !9454 ; 5 uses
  %i.aze = load i64, ptr %i.azd, align 8, !dbg !9455, !noalias !7784, !noundef !401
  %i.azf = icmp eq i64 %i.aze, 0, !dbg !9456
  br i1 %i.azf, label %bb.ob, label %bb.oc, !dbg !9456, !prof !427

bb.ob:                                            ; preds = %bb.oa
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aza, i64 248, !dbg !9452
  store i64 -1, ptr %i.azd, align 8, !dbg !9457, !noalias !7784
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azc, i64 192, !dbg !9458
  invoke void @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator5beginQINtNtB8_7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.y, ptr noundef nonnull align 8 %i.azg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.azh)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108.i unwind label %bb.od, !dbg !9459, !noalias !7783

bb.oc:                                            ; preds = %bb.oa
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !dbg !9460, !noalias !7784
  unreachable, !dbg !9460

bb.od:                                            ; preds = %bb.ob
  %i.azi = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9461

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108.i: ; preds = %bb.ob
  %i.azj = load i64, ptr %i.azd, align 8, !dbg !9462, !noalias !7784, !noundef !401
  %i.azk = add i64 %i.azj, 1, !dbg !9463
  store i64 %i.azk, ptr %i.azd, align 8, !dbg !9464, !noalias !7784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !9465, !noalias !7784
  %.pre.i109.i = load i8, ptr %i.y, align 8, !dbg !9466, !range !403, !noalias !7783
  %i.azl = trunc nuw i8 %.pre.i109.i to i1, !dbg !9466
  br i1 %i.azl, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i136.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108._crit_edge.i, !dbg !9467

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108._crit_edge.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108.i
  %.pre966.i = load i8, ptr %i.axr, align 1, !dbg !9468, !range !403, !noalias !7783
  %i.azm = trunc nuw i8 %.pre966.i to i1, !dbg !9469
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i, !dbg !9467

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108._crit_edge.i, %bb.nz
  %i.azn = phi i1 [ %i.azm, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108._crit_edge.i ], [ false, %bb.nz ], !dbg !9468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !9470, !noalias !7783
  %.pre605.i.i = load ptr, ptr %i.de, align 8, !dbg !9471, !noalias !7785 ; 2 uses
  %.phi.trans.insert.i110.i = getelementptr inbounds nuw i8, ptr %.pre605.i.i, i64 240
  %.pre606.i.i = load ptr, ptr %.phi.trans.insert.i110.i, align 8, !dbg !9471, !noalias !7785
  br label %bb.oe, !dbg !9472

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i136.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108.i
  %i.azo = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !9473
  %i.azp = load ptr, ptr %i.azo, align 8, !dbg !9473, !noalias !7783, !nonnull !401, !noundef !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !9470, !noalias !7783
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !9474

bb.oe:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i, %bb.ny, %bb.nw
  %i.azq = phi ptr [ %i.ayn, %bb.ny ], [ %.pre606.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i ], [ %i.ayn, %bb.nw ], !dbg !9471 ; 3 uses
  %i.azr = phi ptr [ %i.ayl, %bb.ny ], [ %.pre605.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i ], [ %i.ayl, %bb.nw ], !dbg !9471 ; 3 uses
  %.sroa.52.0.ph.i111.i = phi i1 [ false, %bb.ny ], [ %i.azn, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i ], [ false, %bb.nw ]
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azq, i64 144, !dbg !9475
  %i.azt = load i8, ptr %i.azs, align 8, !dbg !9475, !range !403, !noalias !7785, !noundef !401
  %i.azu = trunc nuw i8 %i.azt to i1, !dbg !9475
  br i1 %i.azu, label %bb.oi, label %bb.of, !dbg !9475

bb.of:                                            ; preds = %bb.oe
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azr, i64 104, !dbg !9476 ; 2 uses
  %i.azw = load i64, ptr %i.azv, align 8, !dbg !9476, !range !455, !noalias !7785, !noundef !401
  %.not.i111.i.i = icmp eq i64 %i.azw, -2, !dbg !9476
  br i1 %.not.i111.i.i, label %bb.oi, label %bb.og, !dbg !9477

bb.og:                                            ; preds = %bb.of
  %i.azx = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_pathCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.azv), !dbg !9478 ; 2 uses
  %.not10.i.i112.i = icmp eq ptr %i.azx, null, !dbg !9479
  br i1 %.not10.i.i112.i, label %bb.oh, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !9480

bb.oh:                                            ; preds = %bb.og
  %i.azy = load ptr, ptr %i.de, align 8, !dbg !9481, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 240, !dbg !9481
  %i.baa = load ptr, ptr %i.azz, align 8, !dbg !9481, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 66, !dbg !9482
  %i.bac = load i8, ptr %i.bab, align 2, !dbg !9482, !range !403, !noundef !401
  %..i.i115.i = add nuw nsw i8 %i.bac, 1, !dbg !9483
  br label %bb.oi, !dbg !9484

bb.oi:                                            ; preds = %bb.oh, %bb.of, %bb.oe
  %i.bad = phi ptr [ %i.baa, %bb.oh ], [ %i.azq, %bb.of ], [ %i.azq, %bb.oe ] ; 6 uses
  %.val145.i.i = phi ptr [ %i.azy, %bb.oh ], [ %i.azr, %bb.of ], [ %i.azr, %bb.oe ]
  %.sroa.37.0.ph.i116.i = phi i8 [ %..i.i115.i, %bb.oh ], [ 0, %bb.of ], [ 0, %bb.oe ] ; 2 uses
  %2 = trunc nuw i64 %.sroa.010.0.i.i to i1, !dbg !9485
  br i1 %2, label %bb.oj, label %bb.pd, !dbg !9485

bb.oj:                                            ; preds = %bb.oi
  switch i8 %.sroa.37.0.ph.i116.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
    i8 1, label %bb.ok
    i8 2, label %bb.oo
  ], !dbg !9486

bb.ok:                                            ; preds = %bb.oj
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 184, !dbg !9487 ; 5 uses
  %i.baf = load i64, ptr %i.bae, align 8, !dbg !9488, !noalias !7786, !noundef !401
  %i.bag = icmp eq i64 %i.baf, 0, !dbg !9489
  br i1 %i.bag, label %bb.ol, label %bb.om, !dbg !9489, !prof !427

bb.ol:                                            ; preds = %bb.ok
  store i64 -1, ptr %i.bae, align 8, !dbg !9490, !noalias !7786
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bad, i64 192, !dbg !9491
  %i.bai = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i162.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i105.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit165.i.i unwind label %bb.on, !dbg !9492 ; 2 uses

bb.om:                                            ; preds = %bb.ok
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !9493, !noalias !7786
  unreachable, !dbg !9493

bb.on:                                            ; preds = %bb.ol
  %i.baj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9494

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit165.i.i: ; preds = %bb.ol
  %i.bak = load i64, ptr %i.bae, align 8, !dbg !9495, !noundef !401
  %i.bal = add i64 %i.bak, 1, !dbg !9496
  store i64 %i.bal, ptr %i.bae, align 8, !dbg !9497
  %.not7.i.i123.i.i = icmp eq ptr %i.bai, null, !dbg !9498
  br i1 %.not7.i.i123.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !9499

bb.oo:                                            ; preds = %bb.oj
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bad, i64 66, !dbg !9500
  %i.ban = load i8, ptr %i.bam, align 2, !dbg !9500, !range !403, !noalias !7787, !noundef !401
  %i.bao = trunc nuw i8 %i.ban to i1, !dbg !9500
  br i1 %i.bao, label %bb.op, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, !dbg !9501

bb.op:                                            ; preds = %bb.oo
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bad, i64 67, !dbg !9500
  %i.baq = load i8, ptr %i.bap, align 1, !dbg !9502, !noalias !7787, !noundef !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !9503, !noalias !7787
  store i8 %i.baq, ptr %i.ac, align 1, !dbg !9503, !noalias !7787
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bad, i64 184, !dbg !9504 ; 5 uses
  %i.bas = load i64, ptr %i.bar, align 8, !dbg !9505, !noalias !7788, !noundef !401
  %i.bat = icmp eq i64 %i.bas, 0, !dbg !9506
  br i1 %i.bat, label %bb.oq, label %bb.or, !dbg !9506, !prof !427

bb.oq:                                            ; preds = %bb.op
  store i64 -1, ptr %i.bar, align 8, !dbg !9507, !noalias !7788
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bad, i64 192, !dbg !9508
  %i.bav = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bau, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit166.i.i unwind label %bb.os, !dbg !9509 ; 2 uses

bb.or:                                            ; preds = %bb.op
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !9510, !noalias !7788
  unreachable, !dbg !9510

bb.os:                                            ; preds = %bb.oq
  %i.baw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9511

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit166.i.i: ; preds = %bb.oq
  %i.bax = load i64, ptr %i.bar, align 8, !dbg !9512, !noundef !401
  %i.bay = add i64 %i.bax, 1, !dbg !9513
  store i64 %i.bay, ptr %i.bar, align 8, !dbg !9514
  %.not.i.i122.i.i = icmp eq ptr %i.bav, null, !dbg !9515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !9516, !noalias !7787
  br i1 %.not.i.i122.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !9517

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit166.i.i, %bb.oo, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit165.i.i, %bb.oj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !9518, !noalias !7789
  call void @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, i64 noundef %.sroa.5.0.i101.i), !dbg !9519, !noalias !7789
  %i.baz = load ptr, ptr %i.de, align 8, !dbg !9520, !noalias !7789, !nonnull !401, !align !467, !noundef !401
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 240, !dbg !9520
  %i.bbb = load ptr, ptr %i.bba, align 8, !dbg !9520, !noalias !7789, !nonnull !401, !align !467, !noundef !401
  %i.bbc = call { ptr, i64 } @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter8as_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !dbg !9521, !noalias !7789 ; 2 uses
  %i.bbd = extractvalue { ptr, i64 } %i.bbc, 0, !dbg !9521
  %i.bbe = extractvalue { ptr, i64 } %i.bbc, 1, !dbg !9521
  %.val157.i.i = load ptr, ptr %i.de, align 8, !dbg !9522, !nonnull !401, !align !467, !noundef !401
  %i.bbf = getelementptr inbounds nuw i8, ptr %.val157.i.i, i64 240, !dbg !9523
  %i.bbg = load ptr, ptr %i.bbf, align 8, !dbg !9523, !noalias !7790, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 184, !dbg !9524 ; 7 uses
  %i.bbi = load i64, ptr %i.bbh, align 8, !dbg !9525, !noalias !7790, !noundef !401
  %i.bbj = icmp eq i64 %i.bbi, 0, !dbg !9526
  br i1 %i.bbj, label %bb.ot, label %bb.ou, !dbg !9526, !prof !427

bb.ot:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbb, i64 83, !dbg !9527
  store i64 -1, ptr %i.bbh, align 8, !dbg !9528, !noalias !7790
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbg, i64 192, !dbg !9529 ; 3 uses
  %i.bbm = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bbl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.bbk)
          to label %bb.ov unwind label %bb.pa, !dbg !9530, !noalias !7791 ; 2 uses

bb.ou:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !9531, !noalias !7790
  unreachable, !dbg !9531

bb.ov:                                            ; preds = %bb.ot
  %.not.i167.i.i = icmp eq ptr %i.bbm, null, !dbg !9532
  br i1 %.not.i167.i.i, label %bb.ow, label %bb.pb, !dbg !9533

bb.ow:                                            ; preds = %bb.ov
  %i.bbn = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bbl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bbd, i64 noundef range(i64 0, -9223372036854775808) %i.bbe)
          to label %bb.ox unwind label %bb.pa, !dbg !9534 ; 2 uses

bb.ox:                                            ; preds = %bb.ow
  %.not11.i.i134.i = icmp eq ptr %i.bbn, null, !dbg !9535
  br i1 %.not11.i.i134.i, label %bb.oy, label %bb.pb, !dbg !9536

bb.oy:                                            ; preds = %bb.ox
  %i.bbo = load i64, ptr %i.bbl, align 8, !dbg !9537, !range !429, !alias.scope !7792, !noundef !401
  %i.bbp = trunc nuw i64 %i.bbo to i1, !dbg !9538
  br i1 %i.bbp, label %bb.oz, label %bb.pc, !dbg !9538

bb.oz:                                            ; preds = %bb.oy
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbg, i64 200, !dbg !9539
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bbq, i64 noundef 4)
          to label %.noexc.i.i135.i unwind label %bb.pa, !dbg !9540

.noexc.i.i135.i:                                  ; preds = %bb.oz
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbg, i64 216, !dbg !9541 ; 3 uses
  %i.bbs = load i64, ptr %i.bbr, align 8, !dbg !9541, !alias.scope !7793, !noundef !401 ; 2 uses
  %i.bbt = icmp sgt i64 %i.bbs, -1, !dbg !9542
  call void @llvm.assume(i1 %i.bbt), !dbg !9543
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbg, i64 208, !dbg !9544
  %i.bbv = load ptr, ptr %i.bbu, align 8, !dbg !9544, !alias.scope !7793, !nonnull !401, !noundef !401
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %i.bbs, !dbg !9545
  store i32 1831885595, ptr %i.bbw, align 1, !dbg !9546
  %i.bbx = load i64, ptr %i.bbr, align 8, !dbg !9547, !alias.scope !7793, !noundef !401
  %i.bby = add i64 %i.bbx, 4, !dbg !9547
  store i64 %i.bby, ptr %i.bbr, align 8, !dbg !9547, !alias.scope !7793
  br label %bb.pc, !dbg !9548

bb.pa:                                            ; preds = %bb.oz, %bb.ow, %bb.ot
  %i.bbz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9549

bb.pb:                                            ; preds = %bb.ox, %bb.ov
  %.sroa.0.0.i168.i.i = phi ptr [ %i.bbm, %bb.ov ], [ %i.bbn, %bb.ox ], !dbg !9550
  %storemerge.in.i.i132.i = load i64, ptr %i.bbh, align 8, !dbg !9551, !noundef !401
  %storemerge.i.i133.i = add i64 %storemerge.in.i.i132.i, 1, !dbg !9552
  store i64 %storemerge.i.i133.i, ptr %i.bbh, align 8, !dbg !9553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !9554, !noalias !7789
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !9555

bb.pc:                                            ; preds = %.noexc.i.i135.i, %bb.oy
  %storemerge.in.i234.i.i = load i64, ptr %i.bbh, align 8, !dbg !9551, !noundef !401
  %storemerge.i235.i.i = add i64 %storemerge.in.i234.i.i, 1, !dbg !9552
  store i64 %storemerge.i235.i.i, ptr %i.bbh, align 8, !dbg !9553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !9554, !noalias !7789
  %.pre607.i.i = load ptr, ptr %i.de, align 8, !dbg !9556, !noalias !7794
  br label %bb.pd, !dbg !9557

bb.pd:                                            ; preds = %bb.pc, %bb.oi
  %i.bca = phi ptr [ %.val145.i.i, %bb.oi ], [ %.pre607.i.i, %bb.pc ], !dbg !9556 ; 3 uses
  %.sroa.37.5.ph.i117.i = phi i8 [ %.sroa.37.0.ph.i116.i, %bb.oi ], [ 1, %bb.pc ] ; 2 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 240, !dbg !9556
  %i.bcc = load ptr, ptr %i.bcb, align 8, !dbg !9556, !noalias !7794, !nonnull !401, !align !467, !noundef !401 ; 8 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 150, !dbg !9558
  %i.bce = load i8, ptr %i.bcd, align 2, !dbg !9558, !range !403, !noalias !7794, !noundef !401
  %i.bcf = trunc nuw i8 %i.bce to i1, !dbg !9558
  br i1 %i.bcf, label %bb.pe, label %bb.py, !dbg !9558

bb.pe:                                            ; preds = %bb.pd
  switch i8 %.sroa.37.5.ph.i117.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i
    i8 1, label %bb.pf
    i8 2, label %bb.pj
  ], !dbg !9559

bb.pf:                                            ; preds = %bb.pe
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcc, i64 184, !dbg !9560 ; 5 uses
  %i.bch = load i64, ptr %i.bcg, align 8, !dbg !9561, !noalias !7795, !noundef !401
  %i.bci = icmp eq i64 %i.bch, 0, !dbg !9562
  br i1 %i.bci, label %bb.pg, label %bb.ph, !dbg !9562, !prof !427

bb.pg:                                            ; preds = %bb.pf
  store i64 -1, ptr %i.bcg, align 8, !dbg !9563, !noalias !7795
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bcc, i64 192, !dbg !9564
  %i.bck = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bcj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i162.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i105.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit169.i.i unwind label %bb.pi, !dbg !9565 ; 2 uses

bb.ph:                                            ; preds = %bb.pf
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !9566, !noalias !7795
  unreachable, !dbg !9566

bb.pi:                                            ; preds = %bb.pg
  %i.bcl = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9567

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit169.i.i: ; preds = %bb.pg
  %i.bcm = load i64, ptr %i.bcg, align 8, !dbg !9568, !noundef !401
end_hunk_1
begin_hunk_2_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE4sinkCs2NzvFoTxuAy_2rg:bb.a
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !dbg !9869
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !9869
  store ptr %i.axo, ptr %i.bkv, align 8, !dbg !9869
  %.sroa.453.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !9869
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.453.0..sroa_idx.i.i, align 8, !dbg !9869
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #14, !dbg !9870
  unreachable, !dbg !9870

bb.sm:                                            ; preds = %bb.sk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !9871
  br label %bb.sn, !dbg !9843

bb.sn:                                            ; preds = %bb.sm, %bb.sc
  %..i177.sink.i.i = phi i64 [ %..i177.i.i, %bb.sc ], [ %..i178.i.i, %bb.sm ] ; 6 uses
  %i.bkw = phi i64 [ %i.bkf, %bb.sc ], [ %i.bku, %bb.sm ], !dbg !9790 ; 4 uses
  store i64 %..i177.sink.i.i, ptr %i.ar, align 8, !dbg !9872
  %i.bkx = icmp eq i64 %i.bkw, %..i177.sink.i.i, !dbg !9771
  br i1 %i.bkx, label %._crit_edge.i124.i, label %.lr.ph.i123.i, !dbg !9772

bb.so:                                            ; preds = %.lr.ph.i123._crit_edge.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.lcssa442.i, i64 noundef %.lcssa426.i, i64 noundef %i.axe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #14, !dbg !9873
  unreachable, !dbg !9873

bb.sp:                                            ; preds = %.lr.ph.i123._crit_edge.i
  %.val153.i.i = load ptr, ptr %i.de, align 8, !dbg !9874, !nonnull !401, !align !467, !noundef !401
  %i.bky = getelementptr inbounds nuw i8, ptr %.val153.i.i, i64 240, !dbg !9875
  %i.bkz = load ptr, ptr %i.bky, align 8, !dbg !9875, !noalias !7831, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 184, !dbg !9876 ; 5 uses
  %i.blb = load i64, ptr %i.bla, align 8, !dbg !9877, !noalias !7831, !noundef !401
  %i.blc = icmp eq i64 %i.blb, 0, !dbg !9878
  br i1 %i.blc, label %bb.sq, label %bb.sr, !dbg !9878, !prof !427

bb.sq:                                            ; preds = %bb.sp
  %i.bld = getelementptr inbounds nuw i8, ptr %i.axc, i64 %.lcssa442.i, !dbg !9879
  store i64 -1, ptr %i.bla, align 8, !dbg !9880, !noalias !7831
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bkz, i64 192, !dbg !9881
  %i.blf = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ble, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bld, i64 noundef range(i64 0, -9223372036854775808) %.lcssa458.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit187.i.i unwind label %bb.ss, !dbg !9882 ; 2 uses

bb.sr:                                            ; preds = %bb.sp
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !9883, !noalias !7831
  unreachable, !dbg !9883

bb.ss:                                            ; preds = %bb.sq
  %i.blg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9884

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit187.i.i: ; preds = %bb.sq
  %i.blh = load i64, ptr %i.bla, align 8, !dbg !9885, !noundef !401
  %i.bli = add i64 %i.blh, 1, !dbg !9886
  store i64 %i.bli, ptr %i.bla, align 8, !dbg !9887
  %.not107.i.i = icmp eq ptr %i.blf, null, !dbg !9888
  br i1 %.not107.i.i, label %.thread.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !9889

.thread.i.i:                                      ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit187.i.i
  %i.blj = load i64, ptr %i.axo, align 8, !dbg !9890, !noundef !401
  store i64 %i.blj, ptr %i.ar, align 8, !dbg !9891
  br label %._crit_edge.i124.i, !dbg !9772

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i: ; preds = %bb.rl, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit188.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit187.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit160.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i120.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit169.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit169.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit165.i.i, %bb.og, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit159.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit168.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit170.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit166.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit186.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_specCs2NzvFoTxuAy_2rg.exit185.i.i, %bb.qr, %bb.pw, %bb.pb, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i136.i
  %.sroa.0.0.i114.i = phi ptr [ %i.azp, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i136.i ], [ %.sroa.0.0.i171.i.i, %bb.pw ], [ %.sroa.0.0.i168.i.i, %bb.pb ], [ %i.bkq, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit186.i.i ], [ %.sroa.0.0.i180.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_specCs2NzvFoTxuAy_2rg.exit185.i.i ], [ %.sroa.0.0.i162.i, %bb.qr ], [ %i.bln, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit188.i.i ], [ %i.bck, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit169.i.i ], [ %i.bai, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit165.i.i ], [ %i.bgj, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i120.i ], [ %i.azx, %bb.og ], [ %i.bgt, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit160.i ], [ %i.bel, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit169.i ], [ %i.bhj, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit159.i ], [ %i.bey, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit168.i ], [ %i.bir, %bb.rl ], [ %i.bav, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit166.i.i ], [ %i.bcx, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit170.i ], [ %i.blf, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit187.i.i ], !dbg !9892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !9893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !9894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !9895
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !9896

.split74.i.i:                                     ; preds = %._crit_edge.i124.i
  br i1 %i.bjc, label %.invoke1405.i, label %bb.st, !dbg !9897, !prof !427

.invoke1405.i:                                    ; preds = %.split.i125.i, %.split74.i.i
  %i.blk = phi ptr [ %i.axs, %.split.i125.i ], [ @17, %.split74.i.i ]
  %i.bll = phi i64 [ 1, %.split.i125.i ], [ 2, %.split74.i.i ]
  store i64 -1, ptr %i.bja, align 8, !dbg !9898, !noalias !401
  %i.blm = getelementptr inbounds nuw i8, ptr %i.biz, i64 192, !dbg !9899
  %i.bln = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.blm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.blk, i64 noundef %i.bll)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit188.i.i unwind label %bb.sv, !dbg !9900 ; 2 uses

bb.st:                                            ; preds = %.split74.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !9901, !noalias !7832
  unreachable, !dbg !9901

.split.i125.i:                                    ; preds = %._crit_edge.i124.i
  br i1 %i.bjc, label %.invoke1405.i, label %bb.su, !dbg !9902, !prof !427

bb.su:                                            ; preds = %.split.i125.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !9903, !noalias !7833
  unreachable, !dbg !9903

bb.sv:                                            ; preds = %.invoke1405.i
  %i.blo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9904

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit188.i.i: ; preds = %.invoke1405.i
  %i.blp = load i64, ptr %i.bja, align 8, !dbg !9905, !noundef !401
  %i.blq = add i64 %i.blp, 1, !dbg !9906
  store i64 %i.blq, ptr %i.bja, align 8, !dbg !9907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !9908
  %.not108.i.i = icmp eq ptr %i.bln, null, !dbg !9909
  br i1 %.not108.i.i, label %bb.sw, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !9910

bb.sw:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit188.i.i
  %i.blr = load ptr, ptr %i.de, align 8, !dbg !9911, !nonnull !401, !align !467, !noundef !401
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 240, !dbg !9911
  %i.blt = load ptr, ptr %i.bls, align 8, !dbg !9911, !nonnull !401, !align !467, !noundef !401
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 148, !dbg !9912
  %i.blv = load i8, ptr %i.blu, align 4, !dbg !9912, !range !403, !noundef !401
  %i.blw = trunc nuw i8 %i.blv to i1, !dbg !9912
  br i1 %i.blw, label %bb.sx, label %.backedge.i100.i, !dbg !9912

.backedge.i100.i:                                 ; preds = %bb.rl, %bb.sw, %bb.nt
  %.sroa.04.0.be.i.i = add i64 %.sroa.04.0456.i.i, 1, !dbg !9872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !9893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !9894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !9413
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.axc, i64 noundef %i.axe), !dbg !9414
  %i.blx = load i64, ptr %i.as, align 8, !dbg !9413, !range !429, !noundef !401
  %i.bly = trunc nuw i64 %i.blx to i1, !dbg !9415
  br i1 %i.bly, label %.lr.ph458.i.i, label %._crit_edge459.i.i, !dbg !9415

bb.sx:                                            ; preds = %bb.sw, %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !9893
  br label %._crit_edge459.i.i, !dbg !9913

._crit_edge459.i.i:                               ; preds = %.backedge.i100.i, %bb.sx, %bb.nq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !9894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !9895
  %i.blz = icmp eq ptr %i.axu, %i.axi, !dbg !9407
  br i1 %i.blz, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE9sink_slowCs2NzvFoTxuAy_2rg.exit, label %bb.nq, !dbg !9408

bb.sy:                                            ; preds = %bb.nm
  %i.bma = getelementptr inbounds nuw i8, ptr %i.aiw, i64 57, !dbg !9914
  %i.bmb = load i8, ptr %i.bma, align 1, !dbg !9914
  br label %bb.sz, !dbg !9915

bb.sz:                                            ; preds = %bb.sy, %bb.nm
  %.sroa.01.0.i = phi i8 [ %i.bmb, %bb.sy ], [ 10, %bb.nm ], !dbg !9916
  %i.bmc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9917
  %i.bmd = load ptr, ptr %i.bmc, align 8, !dbg !9917, !nonnull !401, !noundef !401 ; 5 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9917
  %i.bmf = load i64, ptr %i.bme, align 8, !dbg !9917, !noundef !401 ; 8 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9918
  %i.bmh = load ptr, ptr %i.bmg, align 8, !dbg !9918, !nonnull !401, !align !467, !noundef !401 ; 3 uses
  %i.bmi = load i64, ptr %i.hb, align 8, !dbg !9918, !noundef !401 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !9919
  store i64 0, ptr %i.bx, align 8, !dbg !9920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !dbg !9921
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bw, i64 16, !dbg !9922
  store i8 %.sroa.01.0.i, ptr %i.bmj, align 8, !dbg !9922
  store i64 0, ptr %i.bw, align 8, !dbg !9922
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !9922
  store i64 %i.bmf, ptr %i.bmk, align 8, !dbg !9922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !9923
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bmd, i64 noundef %i.bmf), !dbg !9924
  %i.bml = load i64, ptr %i.bv, align 8, !dbg !9923, !range !429, !noundef !401
  %i.bmm = trunc nuw i64 %i.bml to i1, !dbg !9925
  br i1 %i.bmm, label %.lr.ph.i11, label %._crit_edge.i10, !dbg !9925

.lr.ph.i11:                                       ; preds = %bb.sz
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bmp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bmq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not37.i = icmp eq i64 %i.bmi, 0
  %.sroa.3.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.7.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.9.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  br i1 %.not37.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i11
  %i.bmt = load i64, ptr %i.bmn, align 8, !dbg !9926, !noundef !401
  %i.bmu = load i64, ptr %i.bmo, align 8, !dbg !9927, !noundef !401
  %.not.us.i = icmp ugt i64 %i.bmt, %i.bmu, !dbg !9928
  br i1 %.not.us.i, label %.split611.us.i, label %.split613.us.i, !dbg !9928, !prof !582

.lr.ph.split.i:                                   ; preds = %.lr.ph.i11, %bb.vw
  %.sroa.02.0609.i = phi i64 [ %i.bua, %bb.vw ], [ 0, %.lr.ph.i11 ] ; 2 uses
  %i.bmv = load i64, ptr %i.bmn, align 8, !dbg !9926, !noundef !401 ; 4 uses
  %i.bmw = load i64, ptr %i.bmo, align 8, !dbg !9927, !noundef !401 ; 3 uses
  %.not.i16 = icmp ugt i64 %i.bmv, %i.bmw, !dbg !9928
  br i1 %.not.i16, label %.split611.us.i, label %bb.ta, !dbg !9928, !prof !582

._crit_edge.i10:                                  ; preds = %bb.vw, %bb.sz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !9929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !9930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !9931
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !9932

.split611.us.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !dbg !9933
  unreachable, !dbg !9933

bb.ta:                                            ; preds = %.lr.ph.split.i
  %i.bmx = load i64, ptr %i.bmp, align 8, !dbg !9934, !noundef !401
  %i.bmy = add i64 %i.bmx, %i.bmv, !dbg !9935
  %i.bmz = load i64, ptr %0, align 8, !dbg !9936, !range !429, !noundef !401
  %i.bna = trunc nuw i64 %i.bmz to i1, !dbg !9937
  br i1 %i.bna, label %bb.tb, label %bb.tc, !dbg !9937

bb.tb:                                            ; preds = %bb.ta
  %i.bnb = load i64, ptr %i.bmq, align 8, !dbg !9936
  %i.bnc = add i64 %i.bnb, %.sroa.02.0609.i, !dbg !9938
  br label %bb.tc, !dbg !9939

bb.tc:                                            ; preds = %bb.tb, %bb.ta
  %.sroa.5.0.i = phi i64 [ %i.bnc, %bb.tb ], [ undef, %bb.ta ], !dbg !9940 ; 2 uses
  %.sroa.015.0.i = phi i64 [ 1, %bb.tb ], [ 0, %bb.ta ], !dbg !9940 ; 2 uses
  %i.bnd = load i64, ptr %i.bmh, align 8, !dbg !9941, !noundef !401
  %i.bne = add i64 %i.bnd, 1, !dbg !9942          ; 2 uses
  %i.bnf = load ptr, ptr %i.ail, align 8, !dbg !9943, !noundef !401
  %.not.i138.i = icmp eq ptr %i.bnf, null, !dbg !9944
  %i.bng = load ptr, ptr %i.de, align 8, !dbg !9945, !nonnull !401, !align !467, !noundef !401 ; 4 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 240, !dbg !9945
  %i.bni = load ptr, ptr %i.bnh, align 8, !dbg !9945, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %..i139.i = select i1 %.not.i138.i, i64 48, i64 56, !dbg !9946
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bni, i64 %..i139.i, !dbg !9947
  %.pn.i.i17 = load ptr, ptr %i.bnj, align 8, !dbg !9947, !nonnull !401, !noundef !401 ; 2 uses
  %.sroa.0.0.in.i.i18 = getelementptr inbounds nuw i8, ptr %.pn.i.i17, i64 24, !dbg !9948
  %.sroa.0.0.i140.i = load ptr, ptr %.sroa.0.0.in.i.i18, align 8, !dbg !9948, !nonnull !401, !noundef !401 ; 4 uses
  %.sroa.3.0.in.i.i19 = getelementptr inbounds nuw i8, ptr %.pn.i.i17, i64 32, !dbg !9949
  %.sroa.3.0.i.i20 = load i64, ptr %.sroa.3.0.in.i.i19, align 8, !dbg !9949, !noundef !401 ; 4 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bng, i64 104, !dbg !9950 ; 2 uses
  %i.bnl = load i64, ptr %i.bnk, align 8, !dbg !9950, !range !455, !noalias !7835, !noundef !401
  %.not.i72.i = icmp eq i64 %i.bnl, -2, !dbg !9950
  br i1 %.not.i72.i, label %bb.tk, label %bb.td, !dbg !9951

bb.td:                                            ; preds = %bb.tc
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bni, i64 16, !dbg !9952
  %i.bnn = load ptr, ptr %i.bnm, align 8, !dbg !9952, !noalias !7835, !nonnull !401, !noundef !401
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnn, i64 40, !dbg !9953
  %i.bnp = load i8, ptr %i.bno, align 8, !dbg !9953, !range !403, !noalias !7835, !noundef !401
  %i.bnq = trunc nuw i8 %i.bnp to i1, !dbg !9953
  br i1 %i.bnq, label %bb.tf, label %bb.te, !dbg !9954

bb.te:                                            ; preds = %bb.td
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bni, i64 144, !dbg !9955
  %i.bns = load i8, ptr %i.bnr, align 8, !dbg !9955, !range !403, !noalias !7835, !noundef !401
  %i.bnt = trunc nuw i8 %i.bns to i1, !dbg !9955
  br i1 %i.bnt, label %bb.tk, label %bb.tf, !dbg !9955

bb.tf:                                            ; preds = %bb.te, %bb.td
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !dbg !9956, !noalias !7835
  %i.bnu = call noundef align 8 ptr @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath12as_hyperlink(ptr noundef nonnull align 8 %i.bnk), !dbg !9957, !noalias !7836 ; 2 uses
  %.not.i141.i = icmp eq ptr %i.bnu, null, !dbg !9958
  br i1 %.not.i141.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i49, label %bb.tg, !dbg !9959

bb.tg:                                            ; preds = %bb.tf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !9960, !noalias !7836
  store i64 %.sroa.015.0.i, ptr %i.w, align 8, !dbg !9961, !noalias !7836
  store i64 %.sroa.5.0.i, ptr %.sroa.3.0..sroa_idx.i.i12, align 8, !dbg !9961, !noalias !7836
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i13, align 8, !dbg !9961, !noalias !7836
  store i64 %i.bne, ptr %.sroa.7.0..sroa_idx.i.i14, align 8, !dbg !9961, !noalias !7836
  store ptr %i.bnu, ptr %.sroa.9.0..sroa_idx.i.i15, align 8, !dbg !9961, !noalias !7836
  %i.bnv = load ptr, ptr %i.de, align 8, !dbg !9962, !noalias !7836, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 240, !dbg !9963
  %i.bnx = load ptr, ptr %i.bnw, align 8, !dbg !9963, !noalias !7836, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnx, i64 184, !dbg !9964 ; 5 uses
  %i.bnz = load i64, ptr %i.bny, align 8, !dbg !9965, !noalias !7836, !noundef !401
  %i.boa = icmp eq i64 %i.bnz, 0, !dbg !9966
  br i1 %i.boa, label %bb.th, label %bb.ti, !dbg !9966, !prof !427

bb.th:                                            ; preds = %bb.tg
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnv, i64 248, !dbg !9962
  store i64 -1, ptr %i.bny, align 8, !dbg !9967, !noalias !7836
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bnx, i64 192, !dbg !9968
  invoke void @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator5beginQINtNtB8_7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bm, ptr noundef nonnull align 8 %i.bob, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.boc)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23 unwind label %bb.tj, !dbg !9969, !noalias !7835

bb.ti:                                            ; preds = %bb.tg
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !dbg !9970, !noalias !7836
  unreachable, !dbg !9970

bb.tj:                                            ; preds = %bb.th
  %i.bod = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !9971

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23: ; preds = %bb.th
  %i.boe = load i64, ptr %i.bny, align 8, !dbg !9972, !noalias !7836, !noundef !401
  %i.bof = add i64 %i.boe, 1, !dbg !9973
  store i64 %i.bof, ptr %i.bny, align 8, !dbg !9974, !noalias !7836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !9975, !noalias !7836
  %.pre.i24 = load i8, ptr %i.bm, align 8, !dbg !9976, !range !403, !noalias !7835
  %i.bog = trunc nuw i8 %.pre.i24 to i1, !dbg !9976
  br i1 %i.bog, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i48, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23._crit_edge, !dbg !9977

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23._crit_edge: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23
  %.pre1390 = load i8, ptr %i.bmr, align 1, !dbg !9978, !range !403, !noalias !7835
  %i.boh = trunc nuw i8 %.pre1390 to i1, !dbg !9979
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i49, !dbg !9977

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i49: ; preds = %bb.tf, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23._crit_edge
  %i.boi = phi i1 [ %i.boh, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23._crit_edge ], [ false, %bb.tf ], !dbg !9978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !9980, !noalias !7835
  %.pre959.i = load ptr, ptr %i.de, align 8, !dbg !9981, !noalias !7837 ; 2 uses
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %.pre959.i, i64 240
  %.pre960.i = load ptr, ptr %.phi.trans.insert.i25, align 8, !dbg !9981, !noalias !7837
  br label %bb.tk, !dbg !9982

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i48: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !9983
  %i.bok = load ptr, ptr %i.boj, align 8, !dbg !9983, !noalias !7835, !nonnull !401, !noundef !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !9980, !noalias !7835
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !9984

bb.tk:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i49, %bb.te, %bb.tc
  %i.bol = phi ptr [ %i.bni, %bb.te ], [ %.pre960.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i49 ], [ %i.bni, %bb.tc ], !dbg !9981 ; 3 uses
  %i.bom = phi ptr [ %i.bng, %bb.te ], [ %.pre959.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i49 ], [ %i.bng, %bb.tc ], !dbg !9981 ; 3 uses
  %.sroa.52.0.ph.i26 = phi i1 [ false, %bb.te ], [ %i.boi, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i49 ], [ false, %bb.tc ]
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bol, i64 144, !dbg !9985
  %i.boo = load i8, ptr %i.bon, align 8, !dbg !9985, !range !403, !noalias !7837, !noundef !401
  %i.bop = trunc nuw i8 %i.boo to i1, !dbg !9985
  br i1 %i.bop, label %bb.to, label %bb.tl, !dbg !9985

bb.tl:                                            ; preds = %bb.tk
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bom, i64 104, !dbg !9986 ; 2 uses
  %i.bor = load i64, ptr %i.boq, align 8, !dbg !9986, !range !455, !noalias !7837, !noundef !401
  %.not.i43.i = icmp eq i64 %i.bor, -2, !dbg !9986
  br i1 %.not.i43.i, label %bb.to, label %bb.tm, !dbg !9987

bb.tm:                                            ; preds = %bb.tl
  %i.bos = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_pathCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.boq), !dbg !9988 ; 2 uses
  %.not10.i.i27 = icmp eq ptr %i.bos, null, !dbg !9989
  br i1 %.not10.i.i27, label %bb.tn, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !9990

bb.tn:                                            ; preds = %bb.tm
  %i.bot = load ptr, ptr %i.de, align 8, !dbg !9991, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bot, i64 240, !dbg !9991
  %i.bov = load ptr, ptr %i.bou, align 8, !dbg !9991, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 66, !dbg !9992
  %i.box = load i8, ptr %i.bow, align 2, !dbg !9992, !range !403, !noundef !401
  %..i.i29 = add nuw nsw i8 %i.box, 1, !dbg !9993
  br label %bb.to, !dbg !9994

bb.to:                                            ; preds = %bb.tn, %bb.tl, %bb.tk
  %i.boy = phi ptr [ %i.bov, %bb.tn ], [ %i.bol, %bb.tl ], [ %i.bol, %bb.tk ] ; 6 uses
  %.val77.i = phi ptr [ %i.bot, %bb.tn ], [ %i.bom, %bb.tl ], [ %i.bom, %bb.tk ]
  %.sroa.37.0.ph.i30 = phi i8 [ %..i.i29, %bb.tn ], [ 0, %bb.tl ], [ 0, %bb.tk ] ; 2 uses
  %3 = trunc nuw i64 %.sroa.015.0.i to i1, !dbg !9995
  br i1 %3, label %bb.tp, label %bb.uj, !dbg !9995

bb.tp:                                            ; preds = %bb.to
  switch i8 %.sroa.37.0.ph.i30, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i
    i8 1, label %bb.tq
    i8 2, label %bb.tu
  ], !dbg !9996

bb.tq:                                            ; preds = %bb.tp
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 184, !dbg !9997 ; 5 uses
  %i.bpa = load i64, ptr %i.boz, align 8, !dbg !9998, !noalias !7838, !noundef !401
  %i.bpb = icmp eq i64 %i.bpa, 0, !dbg !9999
  br i1 %i.bpb, label %bb.tr, label %bb.ts, !dbg !9999, !prof !427

bb.tr:                                            ; preds = %bb.tq
  store i64 -1, ptr %i.boz, align 8, !dbg !10000, !noalias !7838
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.boy, i64 192, !dbg !10001
  %i.bpd = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bpc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i140.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i20)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit143.i unwind label %bb.tt, !dbg !10002 ; 2 uses

bb.ts:                                            ; preds = %bb.tq
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !10003, !noalias !7838
  unreachable, !dbg !10003

bb.tt:                                            ; preds = %bb.tr
  %i.bpe = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !10004

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit143.i: ; preds = %bb.tr
  %i.bpf = load i64, ptr %i.boz, align 8, !dbg !10005, !noundef !401
  %i.bpg = add i64 %i.bpf, 1, !dbg !10006
  store i64 %i.bpg, ptr %i.boz, align 8, !dbg !10007
  %.not7.i.i55.i = icmp eq ptr %i.bpd, null, !dbg !10008
  br i1 %.not7.i.i55.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !10009

bb.tu:                                            ; preds = %bb.tp
  %i.bph = getelementptr inbounds nuw i8, ptr %i.boy, i64 66, !dbg !10010
  %i.bpi = load i8, ptr %i.bph, align 2, !dbg !10010, !range !403, !noalias !7839, !noundef !401
  %i.bpj = trunc nuw i8 %i.bpi to i1, !dbg !10010
  br i1 %i.bpj, label %bb.tv, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i, !dbg !10011

bb.tv:                                            ; preds = %bb.tu
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.boy, i64 67, !dbg !10010
  %i.bpl = load i8, ptr %i.bpk, align 1, !dbg !10012, !noalias !7839, !noundef !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !10013, !noalias !7839
  store i8 %i.bpl, ptr %i.bq, align 1, !dbg !10013, !noalias !7839
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.boy, i64 184, !dbg !10014 ; 5 uses
  %i.bpn = load i64, ptr %i.bpm, align 8, !dbg !10015, !noalias !7840, !noundef !401
  %i.bpo = icmp eq i64 %i.bpn, 0, !dbg !10016
  br i1 %i.bpo, label %bb.tw, label %bb.tx, !dbg !10016, !prof !427

bb.tw:                                            ; preds = %bb.tv
  store i64 -1, ptr %i.bpm, align 8, !dbg !10017, !noalias !7840
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.boy, i64 192, !dbg !10018
  %i.bpq = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bpp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit144.i unwind label %bb.ty, !dbg !10019 ; 2 uses

bb.tx:                                            ; preds = %bb.tv
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !10020, !noalias !7840
  unreachable, !dbg !10020

bb.ty:                                            ; preds = %bb.tw
  %i.bpr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !10021

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit144.i: ; preds = %bb.tw
  %i.bps = load i64, ptr %i.bpm, align 8, !dbg !10022, !noundef !401
  %i.bpt = add i64 %i.bps, 1, !dbg !10023
  store i64 %i.bpt, ptr %i.bpm, align 8, !dbg !10024
  %.not.i.i54.i = icmp eq ptr %i.bpq, null, !dbg !10025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !10026, !noalias !7839
  br i1 %.not.i.i54.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !10027

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit144.i, %bb.tu, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit143.i, %bb.tp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !10028, !noalias !7841
  call void @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.br, i64 noundef %.sroa.5.0.i), !dbg !10029, !noalias !7841
  %i.bpu = load ptr, ptr %i.de, align 8, !dbg !10030, !noalias !7841, !nonnull !401, !align !467, !noundef !401
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 240, !dbg !10030
  %i.bpw = load ptr, ptr %i.bpv, align 8, !dbg !10030, !noalias !7841, !nonnull !401, !align !467, !noundef !401
  %i.bpx = call { ptr, i64 } @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter8as_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br), !dbg !10031, !noalias !7841 ; 2 uses
  %i.bpy = extractvalue { ptr, i64 } %i.bpx, 0, !dbg !10031
  %i.bpz = extractvalue { ptr, i64 } %i.bpx, 1, !dbg !10031
  %.val87.i = load ptr, ptr %i.de, align 8, !dbg !10032, !nonnull !401, !align !467, !noundef !401
  %i.bqa = getelementptr inbounds nuw i8, ptr %.val87.i, i64 240, !dbg !10033
  %i.bqb = load ptr, ptr %i.bqa, align 8, !dbg !10033, !noalias !7842, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 184, !dbg !10034 ; 7 uses
  %i.bqd = load i64, ptr %i.bqc, align 8, !dbg !10035, !noalias !7842, !noundef !401
  %i.bqe = icmp eq i64 %i.bqd, 0, !dbg !10036
  br i1 %i.bqe, label %bb.tz, label %bb.ua, !dbg !10036, !prof !427

bb.tz:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bpw, i64 83, !dbg !10037
  store i64 -1, ptr %i.bqc, align 8, !dbg !10038, !noalias !7842
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqb, i64 192, !dbg !10039 ; 3 uses
  %i.bqh = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bqg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.bqf)
          to label %bb.ub unwind label %bb.ug, !dbg !10040, !noalias !7843 ; 2 uses

bb.ua:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !10041, !noalias !7842
  unreachable, !dbg !10041

bb.ub:                                            ; preds = %bb.tz
  %.not.i145.i = icmp eq ptr %i.bqh, null, !dbg !10042
  br i1 %.not.i145.i, label %bb.uc, label %bb.uh, !dbg !10043

bb.uc:                                            ; preds = %bb.ub
  %i.bqi = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bqg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bpy, i64 noundef range(i64 0, -9223372036854775808) %i.bpz)
          to label %bb.ud unwind label %bb.ug, !dbg !10044 ; 2 uses

bb.ud:                                            ; preds = %bb.uc
  %.not11.i.i46 = icmp eq ptr %i.bqi, null, !dbg !10045
  br i1 %.not11.i.i46, label %bb.ue, label %bb.uh, !dbg !10046

bb.ue:                                            ; preds = %bb.ud
  %i.bqj = load i64, ptr %i.bqg, align 8, !dbg !10047, !range !429, !alias.scope !7844, !noundef !401
  %i.bqk = trunc nuw i64 %i.bqj to i1, !dbg !10048
  br i1 %i.bqk, label %bb.uf, label %bb.ui, !dbg !10048

bb.uf:                                            ; preds = %bb.ue
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqb, i64 200, !dbg !10049
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bql, i64 noundef 4)
          to label %.noexc.i.i47 unwind label %bb.ug, !dbg !10050

.noexc.i.i47:                                     ; preds = %bb.uf
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqb, i64 216, !dbg !10051 ; 3 uses
  %i.bqn = load i64, ptr %i.bqm, align 8, !dbg !10051, !alias.scope !7845, !noundef !401 ; 2 uses
  %i.bqo = icmp sgt i64 %i.bqn, -1, !dbg !10052
  call void @llvm.assume(i1 %i.bqo), !dbg !10053
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqb, i64 208, !dbg !10054
  %i.bqq = load ptr, ptr %i.bqp, align 8, !dbg !10054, !alias.scope !7845, !nonnull !401, !noundef !401
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 %i.bqn, !dbg !10055
  store i32 1831885595, ptr %i.bqr, align 1, !dbg !10056
  %i.bqs = load i64, ptr %i.bqm, align 8, !dbg !10057, !alias.scope !7845, !noundef !401
  %i.bqt = add i64 %i.bqs, 4, !dbg !10057
  store i64 %i.bqt, ptr %i.bqm, align 8, !dbg !10057, !alias.scope !7845
  br label %bb.ui, !dbg !10058

bb.ug:                                            ; preds = %bb.uf, %bb.uc, %bb.tz
  %i.bqu = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !10059

bb.uh:                                            ; preds = %bb.ud, %bb.ub
  %.sroa.0.0.i146.i = phi ptr [ %i.bqh, %bb.ub ], [ %i.bqi, %bb.ud ], !dbg !10060
  %storemerge.in.i.i44 = load i64, ptr %i.bqc, align 8, !dbg !10061, !noundef !401
  %storemerge.i.i45 = add i64 %storemerge.in.i.i44, 1, !dbg !10062
  store i64 %storemerge.i.i45, ptr %i.bqc, align 8, !dbg !10063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !10064, !noalias !7841
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !10065

bb.ui:                                            ; preds = %.noexc.i.i47, %bb.ue
  %storemerge.in.i219.i = load i64, ptr %i.bqc, align 8, !dbg !10061, !noundef !401
  %storemerge.i220.i = add i64 %storemerge.in.i219.i, 1, !dbg !10062
  store i64 %storemerge.i220.i, ptr %i.bqc, align 8, !dbg !10063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !10064, !noalias !7841
  %.pre961.i = load ptr, ptr %i.de, align 8, !dbg !10066, !noalias !7846
  br label %bb.uj, !dbg !10067

bb.uj:                                            ; preds = %bb.ui, %bb.to
  %i.bqv = phi ptr [ %.val77.i, %bb.to ], [ %.pre961.i, %bb.ui ], !dbg !10066 ; 4 uses
  %.sroa.37.5.ph.i31 = phi i8 [ %.sroa.37.0.ph.i30, %bb.to ], [ 1, %bb.ui ] ; 2 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 240, !dbg !10066
  %i.bqx = load ptr, ptr %i.bqw, align 8, !dbg !10066, !noalias !7846, !nonnull !401, !align !467, !noundef !401 ; 4 uses
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 150, !dbg !10068
  %i.bqz = load i8, ptr %i.bqy, align 2, !dbg !10068, !range !403, !noalias !7846, !noundef !401
  %i.bra = trunc nuw i8 %i.bqz to i1, !dbg !10068
  br i1 %i.bra, label %bb.uk, label %bb.uy, !dbg !10068

bb.uk:                                            ; preds = %bb.uj
  switch i8 %.sroa.37.5.ph.i31, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i58.i
    i8 1, label %bb.ul
    i8 2, label %bb.um
  ], !dbg !10069

bb.ul:                                            ; preds = %bb.uk
  %i.brb = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg(ptr nonnull %i.bqv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i140.i, i64 noundef %.sroa.3.0.i.i20), !dbg !10070 ; 2 uses
  %.not7.i.i63.i = icmp eq ptr %i.brb, null, !dbg !10071
  br i1 %.not7.i.i63.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i58.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !10072

bb.um:                                            ; preds = %bb.uk
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqx, i64 66, !dbg !10073
  %i.brd = load i8, ptr %i.brc, align 2, !dbg !10073, !range !403, !noalias !7847, !noundef !401
  %i.bre = trunc nuw i8 %i.brd to i1, !dbg !10073
  br i1 %i.bre, label %bb.un, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i58.i, !dbg !10074

bb.un:                                            ; preds = %bb.um
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bqx, i64 67, !dbg !10073
  %i.brg = load i8, ptr %i.brf, align 1, !dbg !10075, !noalias !7847, !noundef !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !10076, !noalias !7847
  store i8 %i.brg, ptr %i.bo, align 1, !dbg !10076, !noalias !7847
  %i.brh = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg(ptr nonnull %i.bqv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef 1), !dbg !10077 ; 2 uses
  %.not.i.i62.i = icmp eq ptr %i.brh, null, !dbg !10078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !10079, !noalias !7847
  br i1 %.not.i.i62.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i58.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !10080

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i58.i: ; preds = %bb.un, %bb.um, %bb.ul, %bb.uk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !10081, !noalias !7846
end_hunk_2
begin_hunk_3_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE4sinkCs2NzvFoTxuAy_2rg:bb.a
  %.not.i.i166.i = icmp eq ptr %i.ahg, null, !dbg !17324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !17325, !noalias !16202
  br i1 %.not.i.i166.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !17326

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit, %bb.hi, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit150, %bb.hd
  %i.ahm = load i64, ptr %i.ig, align 8, !dbg !17327, !noundef !401 ; 2 uses
  %i.ahn = icmp ult i64 %i.xl, %i.xj, !dbg !17328
  %.not31.i = icmp ugt i64 %i.xl, %i.ahm
  %or.cond.i = or i1 %i.ahn, %.not31.i, !dbg !17328
  br i1 %or.cond.i, label %bb.ho, label %bb.hn, !dbg !17328, !prof !576

bb.hn:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.i
  %i.aho = load ptr, ptr %i.if, align 8, !dbg !17327, !nonnull !401, !noundef !401
  %i.ahp = sub nuw i64 %i.xl, %i.xj, !dbg !17329  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !dbg !17330
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.xj, !dbg !17331
  store i64 0, ptr %i.da, align 8, !dbg !17330
  store i64 %i.ahp, ptr %i.ih, align 8, !dbg !17330
  %i.ahr = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE18write_colored_lineCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.da, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ahq, i64 noundef %i.ahp), !dbg !17332 ; 2 uses
  %.not32.i = icmp eq ptr %i.ahr, null, !dbg !17333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !dbg !17334
  br i1 %.not32.i, label %bb.hp, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !17335

bb.ho:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.xj, i64 noundef %i.xl, i64 noundef %i.ahm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #14, !dbg !17336
  unreachable, !dbg !17336

bb.hp:                                            ; preds = %bb.hn
  %i.ahs = icmp eq ptr %i.xi, %i.hz, !dbg !16518
  br i1 %i.ahs, label %.loopexit2397, label %bb.eo, !dbg !16519

bb.hq:                                            ; preds = %bb.ad
  %i.aht = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !17337 ; 4 uses
  %i.ahu = load ptr, ptr %i.aht, align 8, !dbg !17337, !noundef !401
  %.not4 = icmp eq ptr %i.ahu, null, !dbg !17338
  br i1 %.not4, label %bb.hr, label %bb.af, !dbg !17339

bb.hr:                                            ; preds = %bb.hq
  %i.ahv = load ptr, ptr %i.de, align 8, !dbg !17340, !nonnull !401, !align !467, !noundef !401
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 240, !dbg !17340
  %i.ahx = load ptr, ptr %i.ahw, align 8, !dbg !17340, !nonnull !401, !align !467, !noundef !401 ; 4 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 146, !dbg !17341
  %i.ahz = load i8, ptr %i.ahy, align 2, !dbg !17341, !range !403, !noundef !401
  %i.aia = trunc nuw i8 %i.ahz to i1, !dbg !17341
  br i1 %i.aia, label %bb.ht, label %bb.hs, !dbg !17341

bb.hs:                                            ; preds = %bb.hr
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahx, i64 147, !dbg !17342
  %i.aic = load i8, ptr %i.aib, align 1, !dbg !17342, !range !403, !noundef !401
  %i.aid = trunc nuw i8 %i.aic to i1, !dbg !17342
  %i.aie = load ptr, ptr %i.he, align 8, !dbg !17343, !nonnull !401, !align !467, !noundef !401 ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 56, !dbg !17343
  %i.aig = load i8, ptr %i.aif, align 8, !dbg !17343, !range !403, !noundef !401
  %i.aih = trunc nuw i8 %i.aig to i1, !dbg !17343 ; 2 uses
  br i1 %i.aid, label %bb.ma, label %bb.lz, !dbg !17342

bb.ht:                                            ; preds = %bb.hr
  %i.aii = load ptr, ptr %i.he, align 8, !dbg !17344, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 56, !dbg !17345
  %i.aik = load i8, ptr %i.aij, align 8, !dbg !17345, !range !403, !noundef !401
  %i.ail = trunc nuw i8 %i.aik to i1, !dbg !17345
  br i1 %i.ail, label %bb.hv, label %bb.hu, !dbg !17346

bb.hu:                                            ; preds = %bb.ht
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aii, i64 57, !dbg !17345
  %i.ain = load i8, ptr %i.aim, align 1, !dbg !17345
  br label %bb.hv, !dbg !17347

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.sroa.01.0.i.i = phi i8 [ %i.ain, %bb.hu ], [ 10, %bb.ht ], !dbg !17348
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ahx, i64 113, !dbg !17349
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17350
  %i.aiq = load ptr, ptr %i.aip, align 8, !dbg !17350, !nonnull !401, !noundef !401 ; 6 uses
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17350
  %i.ais = load i64, ptr %i.air, align 8, !dbg !17350, !noundef !401 ; 8 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17351
  %i.aiu = load ptr, ptr %i.ait, align 8, !dbg !17351, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.aiv = load i64, ptr %i.hb, align 8, !dbg !17351, !noundef !401 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !dbg !17352
  store i64 0, ptr %i.bl, align 8, !dbg !17353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !17354
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.bk, i64 16, !dbg !17355
  store i8 %.sroa.01.0.i.i, ptr %i.aiw, align 8, !dbg !17355
  store i64 0, ptr %i.bk, align 8, !dbg !17355
  %i.aix = getelementptr inbounds nuw i8, ptr %i.bk, i64 8, !dbg !17355
  store i64 %i.ais, ptr %i.aix, align 8, !dbg !17355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !17356
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiq, i64 noundef %i.ais), !dbg !17357
  %i.aiy = load i64, ptr %i.bj, align 8, !dbg !17356, !range !429, !noundef !401
  %i.aiz = trunc nuw i64 %i.aiy to i1, !dbg !17358
  br i1 %i.aiz, label %.lr.ph479.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i, !dbg !17358

.lr.ph479.i.i:                                    ; preds = %bb.hv
  %i.aja = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 6 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aje = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  br label %bb.hw, !dbg !17358

bb.hw:                                            ; preds = %._crit_edge.i.i, %.lr.ph479.i.i
  %.sroa.02.0477.i.i = phi i64 [ 0, %.lr.ph479.i.i ], [ %i.akh, %._crit_edge.i.i ] ; 2 uses
  %i.ajh = load i64, ptr %i.aja, align 8, !dbg !17359, !noundef !401 ; 2 uses
  %i.aji = load i64, ptr %i.ajb, align 8, !dbg !17360, !noundef !401 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !17361
  %.not.i90.i = icmp ugt i64 %i.ajh, %i.aji, !dbg !17362
  br i1 %.not.i90.i, label %bb.hx, label %bb.hy, !dbg !17362, !prof !582

bb.hx:                                            ; preds = %bb.hw
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !dbg !17363
  unreachable, !dbg !17363

bb.hy:                                            ; preds = %bb.hw
  store i64 %i.ajh, ptr %i.bi, align 8, !dbg !17364
  store i64 %i.aji, ptr %i.ajc, align 8, !dbg !17364
  %i.ajj = load ptr, ptr %i.he, align 8, !dbg !17365, !nonnull !401, !align !467, !noundef !401
  %i.ajk = call { ptr, i64 } @_RNvNtCshhHc5tDBDRu_12grep_printer4util20trim_line_terminator(ptr noundef nonnull align 8 %i.ajj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiq, i64 noundef %i.ais, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi), !dbg !17366 ; 0 uses
  %i.ajl = load ptr, ptr %i.de, align 8, !dbg !17367, !nonnull !401, !align !467, !noundef !401
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 240, !dbg !17367
  %i.ajn = load ptr, ptr %i.ajm, align 8, !dbg !17367, !nonnull !401, !align !467, !noundef !401
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 152, !dbg !17368
  %i.ajp = load i8, ptr %i.ajo, align 8, !dbg !17368, !range !403, !noundef !401
  %i.ajq = trunc nuw i8 %i.ajp to i1, !dbg !17368
  %.pre.i.i = load i64, ptr %i.ajc, align 8, !dbg !17369 ; 2 uses
  %.pre641.i.i = load i64, ptr %i.bi, align 8, !dbg !17370 ; 2 uses
  br i1 %i.ajq, label %bb.hz, label %bb.ia, !dbg !17368

bb.hz:                                            ; preds = %bb.hy
  %i.ajr = load ptr, ptr %i.he, align 8, !dbg !17371, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 56, !dbg !17372
  %i.ajt = load i8, ptr %i.ajs, align 8, !dbg !17372, !range !403, !noundef !401
  %i.aju = trunc nuw i8 %i.ajt to i1, !dbg !17372
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajr, i64 57, !dbg !17372
  %i.ajw = load i8, ptr %i.ajv, align 1, !dbg !17372
  %i.ajx = call { i64, i64 } @_RNvNtCshhHc5tDBDRu_12grep_printer4util17trim_ascii_prefix(i1 noundef zeroext %i.aju, i8 %i.ajw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiq, i64 noundef %i.ais, i64 noundef %.pre641.i.i, i64 noundef %.pre.i.i), !dbg !17373 ; 2 uses
  %i.ajy = extractvalue { i64, i64 } %i.ajx, 0, !dbg !17373 ; 2 uses
  %i.ajz = extractvalue { i64, i64 } %i.ajx, 1, !dbg !17373 ; 2 uses
  store i64 %i.ajy, ptr %i.bi, align 8, !dbg !17374
  store i64 %i.ajz, ptr %i.ajc, align 8, !dbg !17374
  br label %bb.ia, !dbg !17375

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.aka = phi i64 [ %.pre641.i.i, %bb.hy ], [ %i.ajy, %bb.hz ], !dbg !17370 ; 2 uses
  %i.akb = phi i64 [ %.pre.i.i, %bb.hy ], [ %i.ajz, %bb.hz ], !dbg !17369 ; 2 uses
  %i.akc = icmp eq i64 %i.akb, %i.aka, !dbg !17376
  br i1 %i.akc, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i, !dbg !17377

.lr.ph.preheader.i.i:                             ; preds = %bb.ia
  %.pre643.i.i = load i64, ptr %i.bl, align 8, !dbg !17378
  br label %.lr.ph.i.i, !dbg !17379

.lr.ph.i.i:                                       ; preds = %.backedge.i.i, %.lr.ph.preheader.i.i
  %i.akd = phi i64 [ %i.avq, %.backedge.i.i ], [ %.pre643.i.i, %.lr.ph.preheader.i.i ], !dbg !17378 ; 6 uses
  %i.ake = phi i64 [ %i.avs, %.backedge.i.i ], [ %i.aka, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.akf = phi i64 [ %i.avr, %.backedge.i.i ], [ %i.akb, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.akg = icmp ult i64 %i.akd, %i.aiv, !dbg !17379
  br i1 %i.akg, label %bb.ib, label %bb.ic, !dbg !17379

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.id, %bb.ia
  %i.akh = add i64 %.sroa.02.0477.i.i, 1, !dbg !17380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !17381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !17382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !17356
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiq, i64 noundef %i.ais), !dbg !17357
  %i.aki = load i64, ptr %i.bj, align 8, !dbg !17356, !range !429, !noundef !401
  %i.akj = trunc nuw i64 %i.aki to i1, !dbg !17358
  br i1 %i.akj, label %bb.hw, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i, !dbg !17358

bb.ib:                                            ; preds = %.lr.ph.i.i
  %i.akk = getelementptr inbounds nuw [16 x i8], ptr %i.aiu, i64 %i.akd, !dbg !17379 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 8, !dbg !17383
  %i.akm = load i64, ptr %i.akl, align 8, !dbg !17383, !noundef !401 ; 2 uses
  %.not65.i.i = icmp ugt i64 %i.akm, %i.ake, !dbg !17379
  br i1 %.not65.i.i, label %bb.ie, label %bb.id, !dbg !17379

bb.ic:                                            ; preds = %.lr.ph.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.akd, i64 noundef %i.aiv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #14, !dbg !17379
  unreachable, !dbg !17379

bb.id:                                            ; preds = %bb.ib
  %i.akn = add nuw i64 %i.akd, 1, !dbg !17384     ; 3 uses
  %i.ako = icmp ult i64 %i.akn, %i.aiv, !dbg !17384
  br i1 %i.ako, label %bb.ly, label %._crit_edge.i.i, !dbg !17384

bb.ie:                                            ; preds = %bb.ib
  %i.akp = load i64, ptr %i.akk, align 8, !dbg !17385, !noundef !401 ; 4 uses
  %i.akq = icmp ult i64 %i.ake, %i.akp, !dbg !17386
  br i1 %i.akq, label %bb.lx, label %bb.if, !dbg !17386

bb.if:                                            ; preds = %bb.ie
  %..i121.i.i = call noundef i64 @llvm.umin.i64(i64 %i.akm, i64 %i.akf), !dbg !17387 ; 9 uses
  %i.akr = load i64, ptr %i.ajd, align 8, !dbg !17388, !noundef !401
  %i.aks = add i64 %i.akr, %i.akp, !dbg !17389
  %i.akt = load i64, ptr %0, align 8, !dbg !17390, !range !429, !noundef !401
  %i.aku = trunc nuw i64 %i.akt to i1, !dbg !17391
  br i1 %i.aku, label %bb.ig, label %bb.ih, !dbg !17391

bb.ig:                                            ; preds = %bb.if
  %i.akv = load i64, ptr %i.aje, align 8, !dbg !17390
  %i.akw = add i64 %i.akv, %.sroa.02.0477.i.i, !dbg !17392
  br label %bb.ih, !dbg !17393

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.sroa.5.0.i.i = phi i64 [ %i.akw, %bb.ig ], [ undef, %bb.if ], !dbg !17394 ; 2 uses
  %.sroa.07.0.i.i = phi i64 [ 1, %bb.ig ], [ 0, %bb.if ], !dbg !17394 ; 2 uses
  %i.akx = add nuw i64 %i.akp, 1, !dbg !17395     ; 2 uses
  %i.aky = load ptr, ptr %i.aht, align 8, !dbg !17396, !noundef !401
  %.not.i123.i.i = icmp eq ptr %i.aky, null, !dbg !17397
  %i.akz = load ptr, ptr %i.de, align 8, !dbg !17398, !nonnull !401, !align !467, !noundef !401 ; 4 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 240, !dbg !17398
  %i.alb = load ptr, ptr %i.ala, align 8, !dbg !17398, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %..i124.i.i = select i1 %.not.i123.i.i, i64 48, i64 56, !dbg !17399
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 %..i124.i.i, !dbg !17400
  %.pn.i.i.i = load ptr, ptr %i.alc, align 8, !dbg !17400, !nonnull !401, !noundef !401 ; 2 uses
  %.sroa.0.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24, !dbg !17401
  %.sroa.0.0.i125.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !dbg !17401, !nonnull !401, !noundef !401 ; 4 uses
  %.sroa.3.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32, !dbg !17402
  %.sroa.3.0.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i, align 8, !dbg !17402, !noundef !401 ; 4 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akz, i64 104, !dbg !17403 ; 2 uses
  %i.ale = load i64, ptr %i.ald, align 8, !dbg !17403, !range !455, !noalias !16209, !noundef !401
  %.not.i103.i.i = icmp eq i64 %i.ale, -2, !dbg !17403
  br i1 %.not.i103.i.i, label %bb.ip, label %bb.ii, !dbg !17404

bb.ii:                                            ; preds = %bb.ih
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alb, i64 16, !dbg !17405
  %i.alg = load ptr, ptr %i.alf, align 8, !dbg !17405, !noalias !16209, !nonnull !401, !noundef !401
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 40, !dbg !17406
  %i.ali = load i8, ptr %i.alh, align 8, !dbg !17406, !range !403, !noalias !16209, !noundef !401
  %i.alj = trunc nuw i8 %i.ali to i1, !dbg !17406
  br i1 %i.alj, label %bb.ik, label %bb.ij, !dbg !17407

bb.ij:                                            ; preds = %bb.ii
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alb, i64 144, !dbg !17408
  %i.all = load i8, ptr %i.alk, align 8, !dbg !17408, !range !403, !noalias !16209, !noundef !401
  %i.alm = trunc nuw i8 %i.all to i1, !dbg !17408
  br i1 %i.alm, label %bb.ip, label %bb.ik, !dbg !17408

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !17409, !noalias !16209
  %i.aln = call noundef align 8 ptr @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath12as_hyperlink(ptr noundef nonnull align 8 %i.ald), !dbg !17410, !noalias !16210 ; 2 uses
  %.not.i126.i.i = icmp eq ptr %i.aln, null, !dbg !17411
  br i1 %.not.i126.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i, label %bb.il, !dbg !17412

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !17413, !noalias !16210
  store i64 %.sroa.07.0.i.i, ptr %i.au, align 8, !dbg !17414, !noalias !16210
  store i64 %.sroa.5.0.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !dbg !17414, !noalias !16210
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !17414, !noalias !16210
  store i64 %i.akx, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !dbg !17414, !noalias !16210
  store ptr %i.aln, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !dbg !17414, !noalias !16210
  %i.alo = load ptr, ptr %i.de, align 8, !dbg !17415, !noalias !16210, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 240, !dbg !17416
  %i.alq = load ptr, ptr %i.alp, align 8, !dbg !17416, !noalias !16210, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 184, !dbg !17417 ; 5 uses
  %i.als = load i64, ptr %i.alr, align 8, !dbg !17418, !noalias !16210, !noundef !401
  %i.alt = icmp eq i64 %i.als, 0, !dbg !17419
  br i1 %i.alt, label %bb.im, label %bb.in, !dbg !17419, !prof !427

bb.im:                                            ; preds = %bb.il
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alo, i64 248, !dbg !17415
  store i64 -1, ptr %i.alr, align 8, !dbg !17420, !noalias !16210
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alq, i64 192, !dbg !17421
  invoke void @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator5beginQINtNtB8_7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.av, ptr noundef nonnull align 8 %i.alu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.alv)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.io, !dbg !17422, !noalias !16209

bb.in:                                            ; preds = %bb.il
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !dbg !17423, !noalias !16210
  unreachable, !dbg !17423

common.resume.i21:                                ; preds = %bb.tl, %bb.sm, %bb.sb, %bb.rw, %bb.rr, %bb.rh, %bb.qt, %bb.qq, %bb.qh, %bb.px, %bb.ph, %bb.pc, %bb.ox, %bb.os, %bb.on, %bb.oi, %bb.ob, %bb.nw, %bb.nr, %bb.nk, %bb.nf, %bb.na, %bb.mq, %bb.lw, %bb.lr, %bb.lf, %bb.la, %bb.kv, %bb.kq, %bb.kl, %bb.kg, %bb.jz, %bb.ju, %bb.jp, %bb.ji, %bb.jd, %bb.iy, %bb.io
  %.lcssa1497.sink1511.i = phi ptr [ %i.bto, %bb.tl ], [ %i.aza, %bb.na ], [ %i.bpy, %bb.sm ], [ %i.bon, %bb.sb ], [ %i.bnw, %bb.rw ], [ %i.bnj, %bb.rr ], [ %i.bmi, %bb.rh ], [ %i.bfs, %bb.ph ], [ %i.bfc, %bb.pc ], [ %i.beb, %bb.os ], [ %i.bdk, %bb.on ], [ %i.bcx, %bb.oi ], [ %i.bbm, %bb.nw ], [ %i.amu, %bb.iy ], [ %i.atm, %bb.lf ], [ %i.asw, %bb.la ], [ %i.are, %bb.kl ], [ %i.avg, %bb.lw ], [ %i.alr, %bb.io ], [ %i.aui, %bb.lr ], [ %i.asl, %bb.kv ], [ %i.arv, %bb.kq ], [ %i.aqr, %bb.kg ], [ %i.apx, %bb.jz ], [ %i.apg, %bb.ju ], [ %i.aot, %bb.jp ], [ %i.any, %bb.ji ], [ %i.anh, %bb.jd ], [ %i.bhn, %bb.qt ], [ %i.axz, %bb.mq ], [ %i.bjk, %bb.qq ], [ %i.biu, %bb.qh ], [ %i.bia, %bb.px ], [ %i.ber, %bb.ox ], [ %i.bcd, %bb.ob ], [ %i.baz, %bb.nr ], [ %i.bae, %bb.nk ], [ %i.azn, %bb.nf ] ; 2 uses
  %common.resume.op.i22 = phi { ptr, i32 } [ %i.btv, %bb.tl ], [ %i.azf, %bb.na ], [ %i.bqm, %bb.sm ], [ %i.bpb, %bb.sb ], [ %i.bob, %bb.rw ], [ %i.bno, %bb.rr ], [ %i.bmn, %bb.rh ], [ %i.bfx, %bb.ph ], [ %i.bfh, %bb.pc ], [ %i.bep, %bb.os ], [ %i.bdp, %bb.on ], [ %i.bdc, %bb.oi ], [ %i.bbr, %bb.nw ], [ %i.amz, %bb.iy ], [ %i.atr, %bb.lf ], [ %i.atb, %bb.la ], [ %i.arj, %bb.kl ], [ %i.avn, %bb.lw ], [ %i.aly, %bb.io ], [ %i.auw, %bb.lr ], [ %i.asr, %bb.kv ], [ %i.asj, %bb.kq ], [ %i.aqw, %bb.kg ], [ %i.aql, %bb.jz ], [ %i.apl, %bb.ju ], [ %i.aoy, %bb.jp ], [ %i.aom, %bb.ji ], [ %i.anm, %bb.jd ], [ %i.bjy, %bb.qt ], [ %i.aye, %bb.mq ], [ %i.bjq, %bb.qq ], [ %i.bjb, %bb.qh ], [ %i.bio, %bb.px ], [ %i.bex, %bb.ox ], [ %i.bcr, %bb.ob ], [ %i.bbe, %bb.nr ], [ %i.bas, %bb.nk ], [ %i.azs, %bb.nf ]
  %i.alw = load i64, ptr %.lcssa1497.sink1511.i, align 8, !dbg !17343, !noundef !401
  %i.alx = add i64 %i.alw, 1, !dbg !17343
  store i64 %i.alx, ptr %.lcssa1497.sink1511.i, align 8, !dbg !17343
  br label %common.resume, !dbg !17343

bb.io:                                            ; preds = %bb.im
  %i.aly = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !17424

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.im
  %i.alz = load i64, ptr %i.alr, align 8, !dbg !17425, !noalias !16210, !noundef !401
  %i.ama = add i64 %i.alz, 1, !dbg !17426
  store i64 %i.ama, ptr %i.alr, align 8, !dbg !17427, !noalias !16210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !17428, !noalias !16210
  %.pre644.i.i = load i8, ptr %i.av, align 8, !dbg !17429, !range !403, !noalias !16209
  %i.amb = trunc nuw i8 %.pre644.i.i to i1, !dbg !17429
  br i1 %i.amb, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i._crit_edge.i, !dbg !17430

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i._crit_edge.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i
  %.pre1045.i = load i8, ptr %i.ajf, align 1, !dbg !17431, !range !403, !noalias !16209
  %i.amc = trunc nuw i8 %.pre1045.i to i1, !dbg !17432
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17430

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i._crit_edge.i, %bb.ik
  %i.amd = phi i1 [ %i.amc, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i._crit_edge.i ], [ false, %bb.ik ], !dbg !17431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !17433, !noalias !16209
  %.pre645.i.i = load ptr, ptr %i.de, align 8, !dbg !17434, !noalias !16211 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre645.i.i, i64 240
  %.pre646.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !dbg !17434, !noalias !16211
  br label %bb.ip, !dbg !17435

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i
  %i.ame = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !17436
  %i.amf = load ptr, ptr %i.ame, align 8, !dbg !17436, !noalias !16209, !nonnull !401, !noundef !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !17433, !noalias !16209
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17437

bb.ip:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i, %bb.ij, %bb.ih
  %i.amg = phi ptr [ %i.alb, %bb.ij ], [ %.pre646.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ %i.alb, %bb.ih ], !dbg !17434 ; 3 uses
  %i.amh = phi ptr [ %i.akz, %bb.ij ], [ %.pre645.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ %i.akz, %bb.ih ], !dbg !17434 ; 3 uses
  %.sroa.52.0.ph.i.i = phi i1 [ false, %bb.ij ], [ %i.amd, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ false, %bb.ih ]
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amg, i64 144, !dbg !17438
  %i.amj = load i8, ptr %i.ami, align 8, !dbg !17438, !range !403, !noalias !16211, !noundef !401
  %i.amk = trunc nuw i8 %i.amj to i1, !dbg !17438
  br i1 %i.amk, label %bb.it, label %bb.iq, !dbg !17438

bb.iq:                                            ; preds = %bb.ip
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amh, i64 104, !dbg !17439 ; 2 uses
  %i.amm = load i64, ptr %i.aml, align 8, !dbg !17439, !range !455, !noalias !16211, !noundef !401
  %.not.i74.i.i = icmp eq i64 %i.amm, -2, !dbg !17439
  br i1 %.not.i74.i.i, label %bb.it, label %bb.ir, !dbg !17440

bb.ir:                                            ; preds = %bb.iq
  %i.amn = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_pathCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.aml), !dbg !17441 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.amn, null, !dbg !17442
  br i1 %.not10.i.i.i, label %bb.is, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17443

bb.is:                                            ; preds = %bb.ir
  %i.amo = load ptr, ptr %i.de, align 8, !dbg !17444, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 240, !dbg !17444
  %i.amq = load ptr, ptr %i.amp, align 8, !dbg !17444, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 66, !dbg !17445
  %i.ams = load i8, ptr %i.amr, align 2, !dbg !17445, !range !403, !noundef !401
  %..i.i.i = add nuw nsw i8 %i.ams, 1, !dbg !17446
  br label %bb.it, !dbg !17447

bb.it:                                            ; preds = %bb.is, %bb.iq, %bb.ip
  %i.amt = phi ptr [ %i.amq, %bb.is ], [ %i.amg, %bb.iq ], [ %i.amg, %bb.ip ] ; 6 uses
  %.val108.i.i = phi ptr [ %i.amo, %bb.is ], [ %i.amh, %bb.iq ], [ %i.amh, %bb.ip ]
  %.sroa.37.0.ph.i.i = phi i8 [ %..i.i.i, %bb.is ], [ 0, %bb.iq ], [ 0, %bb.ip ] ; 2 uses
  %1 = trunc nuw i64 %.sroa.07.0.i.i to i1, !dbg !17448
  br i1 %1, label %bb.iu, label %bb.jk, !dbg !17448

bb.iu:                                            ; preds = %bb.it
  switch i8 %.sroa.37.0.ph.i.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i
    i8 1, label %bb.iv
    i8 2, label %bb.iz
  ], !dbg !17449

bb.iv:                                            ; preds = %bb.iu
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 184, !dbg !17450 ; 5 uses
  %i.amv = load i64, ptr %i.amu, align 8, !dbg !17451, !noalias !16212, !noundef !401
  %i.amw = icmp eq i64 %i.amv, 0, !dbg !17452
  br i1 %i.amw, label %bb.iw, label %bb.ix, !dbg !17452, !prof !427

bb.iw:                                            ; preds = %bb.iv
  store i64 -1, ptr %i.amu, align 8, !dbg !17453, !noalias !16212
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amt, i64 192, !dbg !17454
  %i.amy = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.amx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i125.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit128.i.i unwind label %bb.iy, !dbg !17455 ; 2 uses

bb.ix:                                            ; preds = %bb.iv
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !17456, !noalias !16212
  unreachable, !dbg !17456

bb.iy:                                            ; preds = %bb.iw
  %i.amz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !17457

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit128.i.i: ; preds = %bb.iw
  %i.ana = load i64, ptr %i.amu, align 8, !dbg !17458, !noundef !401
  %i.anb = add i64 %i.ana, 1, !dbg !17459
  store i64 %i.anb, ptr %i.amu, align 8, !dbg !17460
  %.not7.i.i86.i.i = icmp eq ptr %i.amy, null, !dbg !17461
  br i1 %.not7.i.i86.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17462

bb.iz:                                            ; preds = %bb.iu
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amt, i64 66, !dbg !17463
  %i.and = load i8, ptr %i.anc, align 2, !dbg !17463, !range !403, !noalias !16213, !noundef !401
  %i.ane = trunc nuw i8 %i.and to i1, !dbg !17463
  br i1 %i.ane, label %bb.ja, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i, !dbg !17464

bb.ja:                                            ; preds = %bb.iz
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amt, i64 67, !dbg !17463
  %i.ang = load i8, ptr %i.anf, align 1, !dbg !17465, !noalias !16213, !noundef !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !17466, !noalias !16213
  store i8 %i.ang, ptr %i.az, align 1, !dbg !17466, !noalias !16213
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amt, i64 184, !dbg !17467 ; 5 uses
  %i.ani = load i64, ptr %i.anh, align 8, !dbg !17468, !noalias !16214, !noundef !401
  %i.anj = icmp eq i64 %i.ani, 0, !dbg !17469
  br i1 %i.anj, label %bb.jb, label %bb.jc, !dbg !17469, !prof !427

bb.jb:                                            ; preds = %bb.ja
  store i64 -1, ptr %i.anh, align 8, !dbg !17470, !noalias !16214
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amt, i64 192, !dbg !17471
  %i.anl = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ank, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit129.i.i unwind label %bb.jd, !dbg !17472 ; 2 uses

bb.jc:                                            ; preds = %bb.ja
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !17473, !noalias !16214
  unreachable, !dbg !17473

bb.jd:                                            ; preds = %bb.jb
  %i.anm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !17474

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit129.i.i: ; preds = %bb.jb
  %i.ann = load i64, ptr %i.anh, align 8, !dbg !17475, !noundef !401
  %i.ano = add i64 %i.ann, 1, !dbg !17476
  store i64 %i.ano, ptr %i.anh, align 8, !dbg !17477
  %.not.i.i85.i.i = icmp eq ptr %i.anl, null, !dbg !17478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !17479, !noalias !16213
  br i1 %.not.i.i85.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17480

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit129.i.i, %bb.iz, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit128.i.i, %bb.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !17481, !noalias !16215
  call void @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ba, i64 noundef %.sroa.5.0.i.i), !dbg !17482, !noalias !16215
  %i.anp = load ptr, ptr %i.de, align 8, !dbg !17483, !noalias !16215, !nonnull !401, !align !467, !noundef !401
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 240, !dbg !17483
  %i.anr = load ptr, ptr %i.anq, align 8, !dbg !17483, !noalias !16215, !nonnull !401, !align !467, !noundef !401
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 83, !dbg !17484
  %i.ant = call { ptr, i64 } @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter8as_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba), !dbg !17485, !noalias !16215 ; 2 uses
  %i.anu = extractvalue { ptr, i64 } %i.ant, 0, !dbg !17485
  %i.anv = extractvalue { ptr, i64 } %i.ant, 1, !dbg !17485
  %.val118.i.i = load ptr, ptr %i.de, align 8, !dbg !17486, !nonnull !401, !align !467, !noundef !401
  %i.anw = getelementptr inbounds nuw i8, ptr %.val118.i.i, i64 240, !dbg !17487
  %i.anx = load ptr, ptr %i.anw, align 8, !dbg !17487, !noalias !16216, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 184, !dbg !17488 ; 9 uses
  %i.anz = load i64, ptr %i.any, align 8, !dbg !17489, !noalias !16216, !noundef !401
  %i.aoa = icmp eq i64 %i.anz, 0, !dbg !17490
  br i1 %i.aoa, label %bb.je, label %bb.jf, !dbg !17490, !prof !427

bb.je:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i
  store i64 -1, ptr %i.any, align 8, !dbg !17491, !noalias !16216
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anx, i64 192, !dbg !17492
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anx, i64 200, !dbg !17493 ; 2 uses
  %i.aod = load i64, ptr %i.aoc, align 8, !dbg !17493, !range !429, !alias.scope !16217, !noalias !16216, !noundef !401
  %i.aoe = trunc nuw i64 %i.aod to i1, !dbg !17493
  br i1 %i.aoe, label %.sink.split.i.i.i.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i.i, !dbg !17493

.sink.split.i.i.i.i:                              ; preds = %bb.je
  %i.aof = getelementptr inbounds nuw i8, ptr %i.anx, i64 208, !dbg !17493
  %i.aog = invoke fastcc noundef ptr @_RNvXsv_Cs6Ur84ob3I15_9termcolorINtB5_4AnsiNtB5_16IoStandardStreamENtB5_10WriteColor9set_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aof, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.ans) #18
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i.i unwind label %bb.ji, !dbg !17493, !noalias !16218 ; 2 uses

bb.jf:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i81.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !17494, !noalias !16216
  unreachable, !dbg !17494

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i.i: ; preds = %.sink.split.i.i.i.i
  %.not.i131.i.i = icmp eq ptr %i.aog, null, !dbg !17495
  br i1 %.not.i131.i.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17496

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i.i: ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i.i, %bb.je
  %i.aoh = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aob, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.anu, i64 noundef range(i64 0, -9223372036854775808) %i.anv)
          to label %bb.jg unwind label %bb.ji, !dbg !17497 ; 2 uses

bb.jg:                                            ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i.i
  %.not11.i.i.i = icmp eq ptr %i.aoh, null, !dbg !17498
  br i1 %.not11.i.i.i, label %bb.jh, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17499

bb.jh:                                            ; preds = %bb.jg
  %i.aoi = load i64, ptr %i.aoc, align 8, !dbg !17500, !range !429, !alias.scope !16219, !noundef !401
  %i.aoj = trunc nuw i64 %i.aoi to i1, !dbg !17500
  br i1 %i.aoj, label %.sink.split.i16.i.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread215.i.i, !dbg !17500

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread215.i.i: ; preds = %bb.jh
  %storemerge.in.i217.i.i = load i64, ptr %i.any, align 8, !dbg !17501, !noundef !401
  %storemerge.i218.i.i = add i64 %storemerge.in.i217.i.i, 1, !dbg !17502
  store i64 %storemerge.i218.i.i, ptr %i.any, align 8, !dbg !17503
  br label %bb.jj, !dbg !17504

.sink.split.i16.i.i.i:                            ; preds = %bb.jh
  %i.aok = getelementptr inbounds nuw i8, ptr %i.anx, i64 208, !dbg !17500
  %i.aol = invoke noundef ptr @_RNvYNtCs6Ur84ob3I15_9termcolor16IoStandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aok, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.ji, !dbg !17500 ; 2 uses

bb.ji:                                            ; preds = %.sink.split.i16.i.i.i, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i.i, %.sink.split.i.i.i.i
  %i.aom = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !17505

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %bb.jg, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i.i
  %.sroa.0.0.i130.ph.i.i = phi ptr [ %i.aoh, %bb.jg ], [ %i.aog, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i.i ]
  %storemerge.in.i211.i.i = load i64, ptr %i.any, align 8, !dbg !17501, !noundef !401
  %storemerge.i212.i.i = add i64 %storemerge.in.i211.i.i, 1, !dbg !17502
  store i64 %storemerge.i212.i.i, ptr %i.any, align 8, !dbg !17503
  br label %.loopexit.i.i, !dbg !17504

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %.sink.split.i16.i.i.i
  %storemerge.in.i.i.i = load i64, ptr %i.any, align 8, !dbg !17501, !noundef !401
  %storemerge.i.i.i = add i64 %storemerge.in.i.i.i, 1, !dbg !17502
  store i64 %storemerge.i.i.i, ptr %i.any, align 8, !dbg !17503
  %.not9.i84.i.i = icmp eq ptr %i.aol, null, !dbg !17506
  br i1 %.not9.i84.i.i, label %bb.jj, label %.loopexit.i.i, !dbg !17504

.loopexit.i.i:                                    ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i.i
  %.sroa.0.0.i130214.i.i = phi ptr [ %.sroa.0.0.i130.ph.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ %i.aol, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !17507, !noalias !16215
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17508

bb.jj:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread215.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !17507, !noalias !16215
  %.pre647.i.i = load ptr, ptr %i.de, align 8, !dbg !17509, !noalias !16220
  br label %bb.jk, !dbg !17510

bb.jk:                                            ; preds = %bb.jj, %bb.it
  %i.aon = phi ptr [ %.val108.i.i, %bb.it ], [ %.pre647.i.i, %bb.jj ], !dbg !17509 ; 2 uses
  %.sroa.37.5.ph.i.i = phi i8 [ %.sroa.37.0.ph.i.i, %bb.it ], [ 1, %bb.jj ] ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 240, !dbg !17509
  %i.aop = load ptr, ptr %i.aoo, align 8, !dbg !17509, !noalias !16220, !nonnull !401, !align !467, !noundef !401 ; 8 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 150, !dbg !17511
  %i.aor = load i8, ptr %i.aoq, align 2, !dbg !17511, !range !403, !noalias !16220, !noundef !401
  %i.aos = trunc nuw i8 %i.aor to i1, !dbg !17511
  br i1 %i.aos, label %bb.jl, label %bb.kb, !dbg !17511

bb.jl:                                            ; preds = %bb.jk
  switch i8 %.sroa.37.5.ph.i.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i89.i.i
    i8 1, label %bb.jm
    i8 2, label %bb.jq
  ], !dbg !17512

bb.jm:                                            ; preds = %bb.jl
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aop, i64 184, !dbg !17513 ; 5 uses
  %i.aou = load i64, ptr %i.aot, align 8, !dbg !17514, !noalias !16221, !noundef !401
  %i.aov = icmp eq i64 %i.aou, 0, !dbg !17515
  br i1 %i.aov, label %bb.jn, label %bb.jo, !dbg !17515, !prof !427

bb.jn:                                            ; preds = %bb.jm
  store i64 -1, ptr %i.aot, align 8, !dbg !17516, !noalias !16221
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aop, i64 192, !dbg !17517
  %i.aox = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aow, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i125.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit132.i.i unwind label %bb.jp, !dbg !17518 ; 2 uses

bb.jo:                                            ; preds = %bb.jm
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !17519, !noalias !16221
  unreachable, !dbg !17519

end_hunk_3
begin_hunk_4_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE4sinkCs2NzvFoTxuAy_2rg:bb.a
  %storemerge.i159267.i.i = add i64 %storemerge.in.i158266.i.i, 1, !dbg !17721
  store i64 %storemerge.i159267.i.i, ptr %i.aui, align 8, !dbg !17722
  br label %bb.lt, !dbg !17723

.sink.split.i16.i160.i.i:                         ; preds = %bb.lq
  %i.auu = getelementptr inbounds nuw i8, ptr %i.auc, i64 208, !dbg !17719
  %i.auv = invoke noundef ptr @_RNvYNtCs6Ur84ob3I15_9termcolor16IoStandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.auu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.i.i unwind label %bb.lr, !dbg !17719 ; 2 uses

bb.lr:                                            ; preds = %.sink.split.i16.i160.i.i, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i155.i.i, %.sink.split.i.i161.i.i
  %i.auw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !17724

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.thread.i.i: ; preds = %bb.lp, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i162.i.i
  %.sroa.0.0.i157.ph.i.i = phi ptr [ %i.aur, %bb.lp ], [ %i.auq, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i162.i.i ]
  %storemerge.in.i158261.i.i = load i64, ptr %i.aui, align 8, !dbg !17720, !noundef !401
  %storemerge.i159262.i.i = add i64 %storemerge.in.i158261.i.i, 1, !dbg !17721
  store i64 %storemerge.i159262.i.i, ptr %i.aui, align 8, !dbg !17722
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17723

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.i.i: ; preds = %.sink.split.i16.i160.i.i
  %storemerge.in.i158.i.i = load i64, ptr %i.aui, align 8, !dbg !17720, !noundef !401
  %storemerge.i159.i.i = add i64 %storemerge.in.i158.i.i, 1, !dbg !17721
  store i64 %storemerge.i159.i.i, ptr %i.aui, align 8, !dbg !17722
  %.not70.i.i = icmp eq ptr %i.auv, null, !dbg !17725
  br i1 %.not70.i.i, label %bb.lt, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17723

bb.ls:                                            ; preds = %bb.ll
  %i.aux = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE19write_exceeded_lineCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiq, i64 noundef %i.ais, i64 noundef %i.atu, i64 noundef %..i121.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aiu, i64 noundef %i.aiv, ptr noalias nofree noundef align 8 dereferenceable(8) %i.bl), !dbg !17726 ; 2 uses
  %.not72.i.i = icmp eq ptr %i.aux, null, !dbg !17727
  %.pre642.i.i = load i64, ptr %i.bl, align 8, !dbg !17378
  br i1 %.not72.i.i, label %.backedge.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17728

bb.lt:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.thread264.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !17729
  %i.auy = load ptr, ptr %i.he, align 8, !dbg !17729, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 56, !dbg !17730
  %i.ava = load i8, ptr %i.auz, align 8, !dbg !17730, !range !403, !noundef !401 ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auy, i64 57, !dbg !17730
  %i.avc = load i8, ptr %i.avb, align 1, !dbg !17730
  store i8 %i.ava, ptr %i.bd, align 1, !dbg !17730
  store i8 %i.avc, ptr %i.ajg, align 1, !dbg !17730
  %i.avd = trunc nuw i8 %i.ava to i1, !dbg !17731
  %.val114.i.i = load ptr, ptr %i.de, align 8, !dbg !17732, !nonnull !401, !align !467, !noundef !401
  %i.ave = getelementptr inbounds nuw i8, ptr %.val114.i.i, i64 240, !dbg !17733
  %i.avf = load ptr, ptr %i.ave, align 8, !dbg !17733, !noalias !401, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 184, !dbg !17734 ; 5 uses
  %i.avh = load i64, ptr %i.avg, align 8, !dbg !17735, !noalias !401, !noundef !401
  %i.avi = icmp eq i64 %i.avh, 0, !dbg !17736     ; 2 uses
  br i1 %i.avd, label %.split49.i.i, label %.split.i.i57, !dbg !17737

.split49.i.i:                                     ; preds = %bb.lt
  br i1 %i.avi, label %.invoke.i, label %bb.lu, !dbg !17738, !prof !427

.invoke.i:                                        ; preds = %.split.i.i57, %.split49.i.i
  %i.avj = phi ptr [ %i.ajg, %.split.i.i57 ], [ @17, %.split49.i.i ]
  %i.avk = phi i64 [ 1, %.split.i.i57 ], [ 2, %.split49.i.i ]
  store i64 -1, ptr %i.avg, align 8, !dbg !17739, !noalias !401
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avf, i64 192, !dbg !17740
  %i.avm = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.avl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.avj, i64 noundef %i.avk)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i unwind label %bb.lw, !dbg !17741 ; 2 uses

bb.lu:                                            ; preds = %.split49.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !17742, !noalias !16245
  unreachable, !dbg !17742

.split.i.i57:                                     ; preds = %bb.lt
  br i1 %i.avi, label %.invoke.i, label %bb.lv, !dbg !17743, !prof !427

bb.lv:                                            ; preds = %.split.i.i57
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !17744, !noalias !16246
  unreachable, !dbg !17744

bb.lw:                                            ; preds = %.invoke.i
  %i.avn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !17745

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i: ; preds = %.invoke.i
  %i.avo = load i64, ptr %i.avg, align 8, !dbg !17746, !noundef !401
  %i.avp = add i64 %i.avo, 1, !dbg !17747
  store i64 %i.avp, ptr %i.avg, align 8, !dbg !17748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !17749
  %.not71.i.i = icmp eq ptr %i.avm, null, !dbg !17750
  br i1 %.not71.i.i, label %.backedge.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !17751

.backedge.i.i:                                    ; preds = %bb.ly, %bb.lx, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i, %bb.ls
  %i.avq = phi i64 [ %i.akd, %bb.lx ], [ %i.akd, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i ], [ %.pre642.i.i, %bb.ls ], [ %i.akn, %bb.ly ]
  %i.avr = load i64, ptr %i.ajc, align 8, !dbg !17369, !noundef !401 ; 2 uses
  %i.avs = load i64, ptr %i.bi, align 8, !dbg !17370, !noundef !401 ; 2 uses
  %i.avt = icmp eq i64 %i.avr, %i.avs, !dbg !17376
  br i1 %i.avt, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !17377

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i, %bb.ls, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit174.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit144.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit132.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit128.i.i, %bb.ir, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit173.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit175.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit133.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit129.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.thread.i.i, %.loopexit270.i.i, %.loopexit269.i.i, %.loopexit.i.i, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i.i
  %.sroa.0.0.i91.i = phi ptr [ %.sroa.0.0.i136231.i.i, %.loopexit269.i.i ], [ %i.amf, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i.i ], [ %.sroa.0.0.i157.ph.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.thread.i.i ], [ %.sroa.0.0.i130214.i.i, %.loopexit.i.i ], [ %.sroa.0.0.i147248.i.i, %.loopexit270.i.i ], [ %i.aqv, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit144.i.i ], [ %i.aox, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit132.i.i ], [ %i.amy, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit128.i.i ], [ %i.asq, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.amn, %bb.ir ], [ %i.ata, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit174.i ], [ %i.aux, %bb.ls ], [ %i.avm, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i ], [ %i.auv, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.i.i ], [ %i.apk, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit133.i.i ], [ %i.ari, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit175.i ], [ %i.atq, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit173.i ], [ %i.anl, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit129.i.i ], !dbg !17752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !17381
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i, !dbg !17753

bb.lx:                                            ; preds = %bb.ie
  %..i122.i.i = call noundef i64 @llvm.umin.i64(i64 %i.akp, i64 %i.akf), !dbg !17754
  store i64 %..i122.i.i, ptr %i.bi, align 8, !dbg !17755
  br label %.backedge.i.i, !dbg !17756

bb.ly:                                            ; preds = %bb.id
  store i64 %i.akn, ptr %i.bl, align 8, !dbg !17757
  br label %.backedge.i.i, !dbg !17758

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i: ; preds = %._crit_edge.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, %bb.hv
  %.sroa.0.1.i89.i = phi ptr [ %.sroa.0.0.i91.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ null, %bb.hv ], [ null, %._crit_edge.i.i ], !dbg !17759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !17382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !17760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !17761
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !17762

bb.lz:                                            ; preds = %bb.hs
  br i1 %i.aih, label %bb.qx, label %bb.qw, !dbg !17763

bb.ma:                                            ; preds = %bb.hs
  br i1 %i.aih, label %bb.mc, label %bb.mb, !dbg !17764

bb.mb:                                            ; preds = %bb.ma
  %i.avu = getelementptr inbounds nuw i8, ptr %i.aie, i64 57, !dbg !17765
  %i.avv = load i8, ptr %i.avu, align 1, !dbg !17765
  br label %bb.mc, !dbg !17766

bb.mc:                                            ; preds = %bb.mb, %bb.ma
  %.sroa.01.0.i93.i = phi i8 [ %i.avv, %bb.mb ], [ 10, %bb.ma ], !dbg !17767
  %i.avw = getelementptr inbounds nuw i8, ptr %i.ahx, i64 113, !dbg !17768
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17769
  %i.avy = load ptr, ptr %i.avx, align 8, !dbg !17769, !nonnull !401, !noundef !401 ; 8 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17769
  %i.awa = load i64, ptr %i.avz, align 8, !dbg !17769, !noundef !401 ; 14 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17770
  %i.awc = load ptr, ptr %i.awb, align 8, !dbg !17770, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.awd = load i64, ptr %i.hb, align 8, !dbg !17770, !noundef !401 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.awd, 4, !dbg !17771
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awc, i64 %.idx.i.i, !dbg !17771
  %i.awf = icmp eq i64 %i.awd, 0, !dbg !17772
  br i1 %i.awf, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE9sink_slowCs2NzvFoTxuAy_2rg.exit, label %.lr.ph493.i.i, !dbg !17773

.lr.ph493.i.i:                                    ; preds = %bb.mc
  %i.awg = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.awh = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.awi = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.awj = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.awk = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 8 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.awm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0..sroa_idx.i.i94.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.0..sroa_idx.i.i95.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.7.0..sroa_idx.i.i96.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.9.0..sroa_idx.i.i97.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.awn = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.awo = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  br label %bb.md, !dbg !17773

bb.md:                                            ; preds = %._crit_edge490.i.i, %.lr.ph493.i.i
  %.sroa.02.0491.i.i = phi ptr [ %i.awc, %.lr.ph493.i.i ], [ %i.awq, %._crit_edge490.i.i ] ; 3 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %.sroa.02.0491.i.i, i64 16, !dbg !17774 ; 2 uses
  %i.awr = load i64, ptr %.sroa.02.0491.i.i, align 8, !dbg !17775, !noundef !401 ; 5 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %.sroa.02.0491.i.i, i64 8, !dbg !17775
  %i.awt = load i64, ptr %i.aws, align 8, !dbg !17775, !noundef !401 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !17776
  store i8 %.sroa.01.0.i93.i, ptr %i.awg, align 8, !dbg !17777
  store i64 0, ptr %i.at, align 8, !dbg !17777
  store i64 %i.awa, ptr %i.awh, align 8, !dbg !17777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !17778
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.avy, i64 noundef %i.awa), !dbg !17779
  %i.awu = load i64, ptr %i.as, align 8, !dbg !17778, !range !429, !noundef !401
  %i.awv = trunc nuw i64 %i.awu to i1, !dbg !17780
  br i1 %i.awv, label %.lr.ph489.i.i, label %._crit_edge490.i.i, !dbg !17780

.lr.ph489.i.i:                                    ; preds = %bb.md, %.backedge.i100.i
  %.sroa.04.0487.i.i = phi i64 [ %.sroa.04.0.be.i.i, %.backedge.i100.i ], [ 0, %bb.md ] ; 2 uses
  %i.aww = load i64, ptr %i.awi, align 8, !dbg !17781, !noundef !401 ; 5 uses
  %i.awx = load i64, ptr %i.awj, align 8, !dbg !17782, !noundef !401 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !17783
  %.not.i99.i = icmp ugt i64 %i.aww, %i.awx, !dbg !17784
  br i1 %.not.i99.i, label %bb.me, label %bb.mf, !dbg !17784, !prof !582

bb.me:                                            ; preds = %.lr.ph489.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !dbg !17785
  unreachable, !dbg !17785

bb.mf:                                            ; preds = %.lr.ph489.i.i
  store i64 %i.aww, ptr %i.ar, align 8, !dbg !17786
  store i64 %i.awx, ptr %i.awk, align 8, !dbg !17786
  %.not93.i.i = icmp ult i64 %i.aww, %i.awt, !dbg !17787
  br i1 %.not93.i.i, label %bb.mg, label %bb.qv, !dbg !17787

bb.mg:                                            ; preds = %bb.mf
  %.not94.i.i = icmp ugt i64 %i.awx, %i.awr, !dbg !17788
  br i1 %.not94.i.i, label %bb.mh, label %.backedge.i100.i, !dbg !17788

bb.mh:                                            ; preds = %bb.mg
  %i.awy = load i64, ptr %i.awl, align 8, !dbg !17789, !noundef !401
  %i.awz = add i64 %i.awy, %i.aww, !dbg !17790
  %i.axa = load i64, ptr %0, align 8, !dbg !17791, !range !429, !noundef !401
  %i.axb = trunc nuw i64 %i.axa to i1, !dbg !17792
  br i1 %i.axb, label %bb.mi, label %bb.mj, !dbg !17792

bb.mi:                                            ; preds = %bb.mh
  %i.axc = load i64, ptr %i.awm, align 8, !dbg !17791
  %i.axd = add i64 %i.axc, %.sroa.04.0487.i.i, !dbg !17793
  br label %bb.mj, !dbg !17794

bb.mj:                                            ; preds = %bb.mi, %bb.mh
  %.sroa.5.0.i101.i = phi i64 [ %i.axd, %bb.mi ], [ undef, %bb.mh ], !dbg !17795 ; 2 uses
  %.sroa.010.0.i.i = phi i64 [ 1, %bb.mi ], [ 0, %bb.mh ], !dbg !17795 ; 2 uses
  %i.axe = call i64 @llvm.usub.sat.i64(i64 %i.awr, i64 %i.aww), !dbg !17796
  %i.axf = add nuw i64 %i.axe, 1, !dbg !17797     ; 2 uses
  %i.axg = load ptr, ptr %i.aht, align 8, !dbg !17798, !noundef !401
  %.not.i160.i.i = icmp eq ptr %i.axg, null, !dbg !17799
  %i.axh = load ptr, ptr %i.de, align 8, !dbg !17800, !nonnull !401, !align !467, !noundef !401 ; 4 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 240, !dbg !17800
  %i.axj = load ptr, ptr %i.axi, align 8, !dbg !17800, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %..i161.i.i = select i1 %.not.i160.i.i, i64 48, i64 56, !dbg !17801
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 %..i161.i.i, !dbg !17802
  %.pn.i.i102.i = load ptr, ptr %i.axk, align 8, !dbg !17802, !nonnull !401, !noundef !401 ; 2 uses
  %.sroa.0.0.in.i.i103.i = getelementptr inbounds nuw i8, ptr %.pn.i.i102.i, i64 24, !dbg !17803
  %.sroa.0.0.i162.i.i = load ptr, ptr %.sroa.0.0.in.i.i103.i, align 8, !dbg !17803, !nonnull !401, !noundef !401 ; 4 uses
  %.sroa.3.0.in.i.i104.i = getelementptr inbounds nuw i8, ptr %.pn.i.i102.i, i64 32, !dbg !17804
  %.sroa.3.0.i.i105.i = load i64, ptr %.sroa.3.0.in.i.i104.i, align 8, !dbg !17804, !noundef !401 ; 4 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axh, i64 104, !dbg !17805 ; 2 uses
  %i.axm = load i64, ptr %i.axl, align 8, !dbg !17805, !range !455, !noalias !16249, !noundef !401
  %.not.i140.i.i = icmp eq i64 %i.axm, -2, !dbg !17805
  br i1 %.not.i140.i.i, label %bb.mr, label %bb.mk, !dbg !17806

bb.mk:                                            ; preds = %bb.mj
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axj, i64 16, !dbg !17807
  %i.axo = load ptr, ptr %i.axn, align 8, !dbg !17807, !noalias !16249, !nonnull !401, !noundef !401
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 40, !dbg !17808
  %i.axq = load i8, ptr %i.axp, align 8, !dbg !17808, !range !403, !noalias !16249, !noundef !401
  %i.axr = trunc nuw i8 %i.axq to i1, !dbg !17808
  br i1 %i.axr, label %bb.mm, label %bb.ml, !dbg !17809

bb.ml:                                            ; preds = %bb.mk
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axj, i64 144, !dbg !17810
  %i.axt = load i8, ptr %i.axs, align 8, !dbg !17810, !range !403, !noalias !16249, !noundef !401
  %i.axu = trunc nuw i8 %i.axt to i1, !dbg !17810
  br i1 %i.axu, label %bb.mr, label %bb.mm, !dbg !17810

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !17811, !noalias !16249
  %i.axv = call noundef align 8 ptr @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath12as_hyperlink(ptr noundef nonnull align 8 %i.axl), !dbg !17812, !noalias !16250 ; 2 uses
  %.not.i163.i106.i = icmp eq ptr %i.axv, null, !dbg !17813
  br i1 %.not.i163.i106.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i, label %bb.mn, !dbg !17814

bb.mn:                                            ; preds = %bb.mm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !17815, !noalias !16250
  store i64 %.sroa.010.0.i.i, ptr %i.x, align 8, !dbg !17816, !noalias !16250
  store i64 %.sroa.5.0.i101.i, ptr %.sroa.3.0..sroa_idx.i.i94.i, align 8, !dbg !17816, !noalias !16250
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i95.i, align 8, !dbg !17816, !noalias !16250
  store i64 %i.axf, ptr %.sroa.7.0..sroa_idx.i.i96.i, align 8, !dbg !17816, !noalias !16250
  store ptr %i.axv, ptr %.sroa.9.0..sroa_idx.i.i97.i, align 8, !dbg !17816, !noalias !16250
  %i.axw = load ptr, ptr %i.de, align 8, !dbg !17817, !noalias !16250, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 240, !dbg !17818
  %i.axy = load ptr, ptr %i.axx, align 8, !dbg !17818, !noalias !16250, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 184, !dbg !17819 ; 5 uses
  %i.aya = load i64, ptr %i.axz, align 8, !dbg !17820, !noalias !16250, !noundef !401
  %i.ayb = icmp eq i64 %i.aya, 0, !dbg !17821
  br i1 %i.ayb, label %bb.mo, label %bb.mp, !dbg !17821, !prof !427

bb.mo:                                            ; preds = %bb.mn
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axw, i64 248, !dbg !17817
  store i64 -1, ptr %i.axz, align 8, !dbg !17822, !noalias !16250
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axy, i64 192, !dbg !17823
  invoke void @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator5beginQINtNtB8_7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.y, ptr noundef nonnull align 8 %i.ayc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ayd)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109.i unwind label %bb.mq, !dbg !17824, !noalias !16249

bb.mp:                                            ; preds = %bb.mn
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !dbg !17825, !noalias !16250
  unreachable, !dbg !17825

bb.mq:                                            ; preds = %bb.mo
  %i.aye = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !17826

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109.i: ; preds = %bb.mo
  %i.ayf = load i64, ptr %i.axz, align 8, !dbg !17827, !noalias !16250, !noundef !401
  %i.ayg = add i64 %i.ayf, 1, !dbg !17828
  store i64 %i.ayg, ptr %i.axz, align 8, !dbg !17829, !noalias !16250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !17830, !noalias !16250
  %.pre.i110.i = load i8, ptr %i.y, align 8, !dbg !17831, !range !403, !noalias !16249
  %i.ayh = trunc nuw i8 %.pre.i110.i to i1, !dbg !17831
  br i1 %i.ayh, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i150.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109._crit_edge.i, !dbg !17832

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109._crit_edge.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109.i
  %.pre1044.i = load i8, ptr %i.awn, align 1, !dbg !17833, !range !403, !noalias !16249
  %i.ayi = trunc nuw i8 %.pre1044.i to i1, !dbg !17834
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i, !dbg !17832

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109._crit_edge.i, %bb.mm
  %i.ayj = phi i1 [ %i.ayi, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109._crit_edge.i ], [ false, %bb.mm ], !dbg !17833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !17835, !noalias !16249
  %.pre640.i.i = load ptr, ptr %i.de, align 8, !dbg !17836, !noalias !16251 ; 2 uses
  %.phi.trans.insert.i111.i = getelementptr inbounds nuw i8, ptr %.pre640.i.i, i64 240
  %.pre641.i112.i = load ptr, ptr %.phi.trans.insert.i111.i, align 8, !dbg !17836, !noalias !16251
  br label %bb.mr, !dbg !17837

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i150.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109.i
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !17838
  %i.ayl = load ptr, ptr %i.ayk, align 8, !dbg !17838, !noalias !16249, !nonnull !401, !noundef !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !17835, !noalias !16249
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !17839

bb.mr:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i, %bb.ml, %bb.mj
  %i.aym = phi ptr [ %i.axj, %bb.ml ], [ %.pre641.i112.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i ], [ %i.axj, %bb.mj ], !dbg !17836 ; 3 uses
  %i.ayn = phi ptr [ %i.axh, %bb.ml ], [ %.pre640.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i ], [ %i.axh, %bb.mj ], !dbg !17836 ; 3 uses
  %.sroa.52.0.ph.i113.i = phi i1 [ false, %bb.ml ], [ %i.ayj, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i ], [ false, %bb.mj ]
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.aym, i64 144, !dbg !17840
  %i.ayp = load i8, ptr %i.ayo, align 8, !dbg !17840, !range !403, !noalias !16251, !noundef !401
  %i.ayq = trunc nuw i8 %i.ayp to i1, !dbg !17840
  br i1 %i.ayq, label %bb.mv, label %bb.ms, !dbg !17840

bb.ms:                                            ; preds = %bb.mr
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayn, i64 104, !dbg !17841 ; 2 uses
  %i.ays = load i64, ptr %i.ayr, align 8, !dbg !17841, !range !455, !noalias !16251, !noundef !401
  %.not.i111.i.i = icmp eq i64 %i.ays, -2, !dbg !17841
  br i1 %.not.i111.i.i, label %bb.mv, label %bb.mt, !dbg !17842

bb.mt:                                            ; preds = %bb.ms
  %i.ayt = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_pathCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.ayr), !dbg !17843 ; 2 uses
  %.not10.i.i114.i = icmp eq ptr %i.ayt, null, !dbg !17844
  br i1 %.not10.i.i114.i, label %bb.mu, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !17845

bb.mu:                                            ; preds = %bb.mt
  %i.ayu = load ptr, ptr %i.de, align 8, !dbg !17846, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 240, !dbg !17846
  %i.ayw = load ptr, ptr %i.ayv, align 8, !dbg !17846, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 66, !dbg !17847
  %i.ayy = load i8, ptr %i.ayx, align 2, !dbg !17847, !range !403, !noundef !401
  %..i.i117.i = add nuw nsw i8 %i.ayy, 1, !dbg !17848
  br label %bb.mv, !dbg !17849

bb.mv:                                            ; preds = %bb.mu, %bb.ms, %bb.mr
  %i.ayz = phi ptr [ %i.ayw, %bb.mu ], [ %i.aym, %bb.ms ], [ %i.aym, %bb.mr ] ; 6 uses
  %.val145.i.i = phi ptr [ %i.ayu, %bb.mu ], [ %i.ayn, %bb.ms ], [ %i.ayn, %bb.mr ]
  %.sroa.37.0.ph.i118.i = phi i8 [ %..i.i117.i, %bb.mu ], [ 0, %bb.ms ], [ 0, %bb.mr ] ; 2 uses
  %2 = trunc nuw i64 %.sroa.010.0.i.i to i1, !dbg !17850
  br i1 %2, label %bb.mw, label %bb.nm, !dbg !17850

bb.mw:                                            ; preds = %bb.mv
  switch i8 %.sroa.37.0.ph.i118.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
    i8 1, label %bb.mx
    i8 2, label %bb.nb
  ], !dbg !17851

bb.mx:                                            ; preds = %bb.mw
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 184, !dbg !17852 ; 5 uses
  %i.azb = load i64, ptr %i.aza, align 8, !dbg !17853, !noalias !16252, !noundef !401
  %i.azc = icmp eq i64 %i.azb, 0, !dbg !17854
  br i1 %i.azc, label %bb.my, label %bb.mz, !dbg !17854, !prof !427

bb.my:                                            ; preds = %bb.mx
  store i64 -1, ptr %i.aza, align 8, !dbg !17855, !noalias !16252
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ayz, i64 192, !dbg !17856
  %i.aze = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.azd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i162.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i105.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i149.i unwind label %bb.na, !dbg !17857 ; 2 uses

bb.mz:                                            ; preds = %bb.mx
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !17858, !noalias !16252
  unreachable, !dbg !17858

bb.na:                                            ; preds = %bb.my
  %i.azf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !17859

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i149.i: ; preds = %bb.my
  %i.azg = load i64, ptr %i.aza, align 8, !dbg !17860, !noundef !401
  %i.azh = add i64 %i.azg, 1, !dbg !17861
  store i64 %i.azh, ptr %i.aza, align 8, !dbg !17862
  %.not7.i.i123.i.i = icmp eq ptr %i.aze, null, !dbg !17863
  br i1 %.not7.i.i123.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !17864

bb.nb:                                            ; preds = %bb.mw
  %i.azi = getelementptr inbounds nuw i8, ptr %i.ayz, i64 66, !dbg !17865
  %i.azj = load i8, ptr %i.azi, align 2, !dbg !17865, !range !403, !noalias !16253, !noundef !401
  %i.azk = trunc nuw i8 %i.azj to i1, !dbg !17865
  br i1 %i.azk, label %bb.nc, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, !dbg !17866

bb.nc:                                            ; preds = %bb.nb
  %i.azl = getelementptr inbounds nuw i8, ptr %i.ayz, i64 67, !dbg !17865
  %i.azm = load i8, ptr %i.azl, align 1, !dbg !17867, !noalias !16253, !noundef !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !17868, !noalias !16253
  store i8 %i.azm, ptr %i.ac, align 1, !dbg !17868, !noalias !16253
  %i.azn = getelementptr inbounds nuw i8, ptr %i.ayz, i64 184, !dbg !17869 ; 5 uses
  %i.azo = load i64, ptr %i.azn, align 8, !dbg !17870, !noalias !16254, !noundef !401
  %i.azp = icmp eq i64 %i.azo, 0, !dbg !17871
  br i1 %i.azp, label %bb.nd, label %bb.ne, !dbg !17871, !prof !427

bb.nd:                                            ; preds = %bb.nc
  store i64 -1, ptr %i.azn, align 8, !dbg !17872, !noalias !16254
  %i.azq = getelementptr inbounds nuw i8, ptr %i.ayz, i64 192, !dbg !17873
  %i.azr = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.azq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit166.i.i unwind label %bb.nf, !dbg !17874 ; 2 uses

bb.ne:                                            ; preds = %bb.nc
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !17875, !noalias !16254
  unreachable, !dbg !17875

bb.nf:                                            ; preds = %bb.nd
  %i.azs = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !17876

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit166.i.i: ; preds = %bb.nd
  %i.azt = load i64, ptr %i.azn, align 8, !dbg !17877, !noundef !401
  %i.azu = add i64 %i.azt, 1, !dbg !17878
  store i64 %i.azu, ptr %i.azn, align 8, !dbg !17879
  %.not.i.i122.i.i = icmp eq ptr %i.azr, null, !dbg !17880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !17881, !noalias !16253
  br i1 %.not.i.i122.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !17882

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit166.i.i, %bb.nb, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i149.i, %bb.mw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !17883, !noalias !16255
  call void @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, i64 noundef %.sroa.5.0.i101.i), !dbg !17884, !noalias !16255
  %i.azv = load ptr, ptr %i.de, align 8, !dbg !17885, !noalias !16255, !nonnull !401, !align !467, !noundef !401
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 240, !dbg !17885
  %i.azx = load ptr, ptr %i.azw, align 8, !dbg !17885, !noalias !16255, !nonnull !401, !align !467, !noundef !401
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 83, !dbg !17886
  %i.azz = call { ptr, i64 } @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter8as_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !dbg !17887, !noalias !16255 ; 2 uses
  %i.baa = extractvalue { ptr, i64 } %i.azz, 0, !dbg !17887
  %i.bab = extractvalue { ptr, i64 } %i.azz, 1, !dbg !17887
  %.val157.i.i = load ptr, ptr %i.de, align 8, !dbg !17888, !nonnull !401, !align !467, !noundef !401
  %i.bac = getelementptr inbounds nuw i8, ptr %.val157.i.i, i64 240, !dbg !17889
  %i.bad = load ptr, ptr %i.bac, align 8, !dbg !17889, !noalias !16256, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 184, !dbg !17890 ; 9 uses
  %i.baf = load i64, ptr %i.bae, align 8, !dbg !17891, !noalias !16256, !noundef !401
  %i.bag = icmp eq i64 %i.baf, 0, !dbg !17892
  br i1 %i.bag, label %bb.ng, label %bb.nh, !dbg !17892, !prof !427

bb.ng:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
  store i64 -1, ptr %i.bae, align 8, !dbg !17893, !noalias !16256
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bad, i64 192, !dbg !17894
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bad, i64 200, !dbg !17895 ; 2 uses
  %i.baj = load i64, ptr %i.bai, align 8, !dbg !17895, !range !429, !alias.scope !16257, !noalias !16256, !noundef !401
  %i.bak = trunc nuw i64 %i.baj to i1, !dbg !17895
  br i1 %i.bak, label %.sink.split.i.i.i147.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i138.i, !dbg !17895

.sink.split.i.i.i147.i:                           ; preds = %bb.ng
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bad, i64 208, !dbg !17895
  %i.bam = invoke fastcc noundef ptr @_RNvXsv_Cs6Ur84ob3I15_9termcolorINtB5_4AnsiNtB5_16IoStandardStreamENtB5_10WriteColor9set_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bal, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.azy) #18
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i148.i unwind label %bb.nk, !dbg !17895, !noalias !16258 ; 2 uses

bb.nh:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !17896, !noalias !16256
  unreachable, !dbg !17896

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i148.i: ; preds = %.sink.split.i.i.i147.i
  %.not.i168.i.i = icmp eq ptr %i.bam, null, !dbg !17897
  br i1 %.not.i168.i.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i138.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i140.i, !dbg !17898

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i138.i: ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i148.i, %bb.ng
  %i.ban = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.baa, i64 noundef range(i64 0, -9223372036854775808) %i.bab)
          to label %bb.ni unwind label %bb.nk, !dbg !17899 ; 2 uses

bb.ni:                                            ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i138.i
  %.not11.i.i139.i = icmp eq ptr %i.ban, null, !dbg !17900
  br i1 %.not11.i.i139.i, label %bb.nj, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i140.i, !dbg !17901

bb.nj:                                            ; preds = %bb.ni
  %i.bao = load i64, ptr %i.bai, align 8, !dbg !17902, !range !429, !alias.scope !16259, !noundef !401
  %i.bap = trunc nuw i64 %i.bao to i1, !dbg !17902
  br i1 %i.bap, label %.sink.split.i16.i.i143.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread244.i.i, !dbg !17902

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread244.i.i: ; preds = %bb.nj
  %storemerge.in.i246.i.i = load i64, ptr %i.bae, align 8, !dbg !17903, !noundef !401
  %storemerge.i247.i.i = add i64 %storemerge.in.i246.i.i, 1, !dbg !17904
  store i64 %storemerge.i247.i.i, ptr %i.bae, align 8, !dbg !17905
  br label %bb.nl, !dbg !17906

.sink.split.i16.i.i143.i:                         ; preds = %bb.nj
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bad, i64 208, !dbg !17902
  %i.bar = invoke noundef ptr @_RNvYNtCs6Ur84ob3I15_9termcolor16IoStandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.baq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i144.i unwind label %bb.nk, !dbg !17902 ; 2 uses

bb.nk:                                            ; preds = %.sink.split.i16.i.i143.i, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i138.i, %.sink.split.i.i.i147.i
  %i.bas = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !17907

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i140.i: ; preds = %bb.ni, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i148.i
  %.sroa.0.0.i167.ph.i.i = phi ptr [ %i.ban, %bb.ni ], [ %i.bam, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i148.i ]
  %storemerge.in.i240.i.i = load i64, ptr %i.bae, align 8, !dbg !17903, !noundef !401
  %storemerge.i241.i.i = add i64 %storemerge.in.i240.i.i, 1, !dbg !17904
  store i64 %storemerge.i241.i.i, ptr %i.bae, align 8, !dbg !17905
  br label %.loopexit.i141.i, !dbg !17906

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i144.i: ; preds = %.sink.split.i16.i.i143.i
  %storemerge.in.i.i145.i = load i64, ptr %i.bae, align 8, !dbg !17903, !noundef !401
  %storemerge.i.i146.i = add i64 %storemerge.in.i.i145.i, 1, !dbg !17904
  store i64 %storemerge.i.i146.i, ptr %i.bae, align 8, !dbg !17905
  %.not9.i121.i.i = icmp eq ptr %i.bar, null, !dbg !17908
  br i1 %.not9.i121.i.i, label %bb.nl, label %.loopexit.i141.i, !dbg !17906

.loopexit.i141.i:                                 ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i144.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i140.i
  %.sroa.0.0.i167243.i.i = phi ptr [ %.sroa.0.0.i167.ph.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i140.i ], [ %i.bar, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i144.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !17909, !noalias !16255
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !17910

bb.nl:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i144.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread244.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !17909, !noalias !16255
  %.pre642.i142.i = load ptr, ptr %i.de, align 8, !dbg !17911, !noalias !16260
  br label %bb.nm, !dbg !17912

bb.nm:                                            ; preds = %bb.nl, %bb.mv
  %i.bat = phi ptr [ %.val145.i.i, %bb.mv ], [ %.pre642.i142.i, %bb.nl ], !dbg !17911 ; 3 uses
  %.sroa.37.5.ph.i119.i = phi i8 [ %.sroa.37.0.ph.i118.i, %bb.mv ], [ 1, %bb.nl ] ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 240, !dbg !17911
  %i.bav = load ptr, ptr %i.bau, align 8, !dbg !17911, !noalias !16260, !nonnull !401, !align !467, !noundef !401 ; 8 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 150, !dbg !17913
  %i.bax = load i8, ptr %i.baw, align 2, !dbg !17913, !range !403, !noalias !16260, !noundef !401
  %i.bay = trunc nuw i8 %i.bax to i1, !dbg !17913
  br i1 %i.bay, label %bb.nn, label %bb.od, !dbg !17913

bb.nn:                                            ; preds = %bb.nm
  switch i8 %.sroa.37.5.ph.i119.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i
    i8 1, label %bb.no
    i8 2, label %bb.ns
  ], !dbg !17914

bb.no:                                            ; preds = %bb.nn
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bav, i64 184, !dbg !17915 ; 5 uses
  %i.bba = load i64, ptr %i.baz, align 8, !dbg !17916, !noalias !16261, !noundef !401
  %i.bbb = icmp eq i64 %i.bba, 0, !dbg !17917
  br i1 %i.bbb, label %bb.np, label %bb.nq, !dbg !17917, !prof !427

bb.np:                                            ; preds = %bb.no
  store i64 -1, ptr %i.baz, align 8, !dbg !17918, !noalias !16261
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bav, i64 192, !dbg !17919
  %i.bbd = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bbc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i162.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i105.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit169.i.i unwind label %bb.nr, !dbg !17920 ; 2 uses

bb.nq:                                            ; preds = %bb.no
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !17921, !noalias !16261
  unreachable, !dbg !17921

end_hunk_4
begin_hunk_5_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE4sinkCs2NzvFoTxuAy_2rg:bb.a
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !dbg !18193
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !18193
  store ptr %i.awk, ptr %i.bjf, align 8, !dbg !18193
  %.sroa.453.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !18193
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.453.0..sroa_idx.i.i, align 8, !dbg !18193
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #14, !dbg !18194
  unreachable, !dbg !18194

bb.qk:                                            ; preds = %bb.qi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !18195
  br label %bb.ql, !dbg !18167

bb.ql:                                            ; preds = %bb.qk, %bb.qa
  %..i180.sink.i.i = phi i64 [ %..i180.i.i, %bb.qa ], [ %..i181.i.i, %bb.qk ] ; 6 uses
  %i.bjg = phi i64 [ %i.bip, %bb.qa ], [ %i.bje, %bb.qk ], !dbg !18125 ; 4 uses
  store i64 %..i180.sink.i.i, ptr %i.ar, align 8, !dbg !18196
  %i.bjh = icmp eq i64 %i.bjg, %..i180.sink.i.i, !dbg !18106
  br i1 %i.bjh, label %._crit_edge.i127.i, label %.lr.ph.i126.i, !dbg !18107

bb.qm:                                            ; preds = %.lr.ph.i126._crit_edge.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.lcssa491.i, i64 noundef %.lcssa475.i, i64 noundef %i.awa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #14, !dbg !18197
  unreachable, !dbg !18197

bb.qn:                                            ; preds = %.lr.ph.i126._crit_edge.i
  %.val153.i.i = load ptr, ptr %i.de, align 8, !dbg !18198, !nonnull !401, !align !467, !noundef !401
  %i.bji = getelementptr inbounds nuw i8, ptr %.val153.i.i, i64 240, !dbg !18199
  %i.bjj = load ptr, ptr %i.bji, align 8, !dbg !18199, !noalias !16297, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 184, !dbg !18200 ; 5 uses
  %i.bjl = load i64, ptr %i.bjk, align 8, !dbg !18201, !noalias !16297, !noundef !401
  %i.bjm = icmp eq i64 %i.bjl, 0, !dbg !18202
  br i1 %i.bjm, label %bb.qo, label %bb.qp, !dbg !18202, !prof !427

bb.qo:                                            ; preds = %bb.qn
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.avy, i64 %.lcssa491.i, !dbg !18203
  store i64 -1, ptr %i.bjk, align 8, !dbg !18204, !noalias !16297
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjj, i64 192, !dbg !18205
  %i.bjp = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bjo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bjn, i64 noundef range(i64 0, -9223372036854775808) %.lcssa507.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit193.i.i unwind label %bb.qq, !dbg !18206 ; 2 uses

bb.qp:                                            ; preds = %bb.qn
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !18207, !noalias !16297
  unreachable, !dbg !18207

bb.qq:                                            ; preds = %bb.qo
  %i.bjq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !18208

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit193.i.i: ; preds = %bb.qo
  %i.bjr = load i64, ptr %i.bjk, align 8, !dbg !18209, !noundef !401
  %i.bjs = add i64 %i.bjr, 1, !dbg !18210
  store i64 %i.bjs, ptr %i.bjk, align 8, !dbg !18211
  %.not107.i.i = icmp eq ptr %i.bjp, null, !dbg !18212
  br i1 %.not107.i.i, label %.thread.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !18213

.thread.i.i:                                      ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit193.i.i
  %i.bjt = load i64, ptr %i.awk, align 8, !dbg !18214, !noundef !401
  store i64 %i.bjt, ptr %i.ar, align 8, !dbg !18215
  br label %._crit_edge.i127.i, !dbg !18107

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i: ; preds = %bb.pm, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit194.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit193.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit177.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i122.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit189.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit169.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i149.i, %bb.mt, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit176.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit188.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit190.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit166.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit192.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit191.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit191.thread.i.i, %.loopexit.i56, %.loopexit290.i.i, %.loopexit.i141.i, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i150.i
  %.sroa.0.0.i116.i = phi ptr [ %.sroa.0.0.i184.ph.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit191.thread.i.i ], [ %.sroa.0.0.i180227.i, %.loopexit.i56 ], [ %.sroa.0.0.i172260.i.i, %.loopexit290.i.i ], [ %i.ayl, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i150.i ], [ %i.bja, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit192.i.i ], [ %.sroa.0.0.i167243.i.i, %.loopexit.i141.i ], [ %i.bin, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit191.i.i ], [ %i.bbd, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit169.i.i ], [ %i.aze, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i149.i ], [ %i.bew, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i122.i ], [ %i.ayt, %bb.mt ], [ %i.bfg, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit177.i ], [ %i.bjx, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit194.i.i ], [ %i.bhe, %bb.pm ], [ %i.bfw, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit176.i ], [ %i.bdo, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit188.i ], [ %i.bjp, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit193.i.i ], [ %i.azr, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit166.i.i ], [ %i.bbq, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit190.i ], [ %i.bdb, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit189.i ], !dbg !18216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !18217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !18218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !18219
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !18220

.split74.i.i:                                     ; preds = %._crit_edge.i127.i
  br i1 %i.bhp, label %.invoke1512.i, label %bb.qr, !dbg !18221, !prof !427

.invoke1512.i:                                    ; preds = %.split.i128.i, %.split74.i.i
  %i.bju = phi ptr [ %i.awo, %.split.i128.i ], [ @17, %.split74.i.i ]
  %i.bjv = phi i64 [ 1, %.split.i128.i ], [ 2, %.split74.i.i ]
  store i64 -1, ptr %i.bhn, align 8, !dbg !18222, !noalias !401
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bhm, i64 192, !dbg !18223
  %i.bjx = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bjw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bju, i64 noundef %i.bjv)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit194.i.i unwind label %bb.qt, !dbg !18224 ; 2 uses

bb.qr:                                            ; preds = %.split74.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !18225, !noalias !16298
  unreachable, !dbg !18225

.split.i128.i:                                    ; preds = %._crit_edge.i127.i
  br i1 %i.bhp, label %.invoke1512.i, label %bb.qs, !dbg !18226, !prof !427

bb.qs:                                            ; preds = %.split.i128.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !18227, !noalias !16299
  unreachable, !dbg !18227

bb.qt:                                            ; preds = %.invoke1512.i
  %i.bjy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !18228

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit194.i.i: ; preds = %.invoke1512.i
  %i.bjz = load i64, ptr %i.bhn, align 8, !dbg !18229, !noundef !401
  %i.bka = add i64 %i.bjz, 1, !dbg !18230
  store i64 %i.bka, ptr %i.bhn, align 8, !dbg !18231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !18232
  %.not108.i.i = icmp eq ptr %i.bjx, null, !dbg !18233
  br i1 %.not108.i.i, label %bb.qu, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !18234

bb.qu:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit194.i.i
  %i.bkb = load ptr, ptr %i.de, align 8, !dbg !18235, !nonnull !401, !align !467, !noundef !401
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 240, !dbg !18235
  %i.bkd = load ptr, ptr %i.bkc, align 8, !dbg !18235, !nonnull !401, !align !467, !noundef !401
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 148, !dbg !18236
  %i.bkf = load i8, ptr %i.bke, align 4, !dbg !18236, !range !403, !noundef !401
  %i.bkg = trunc nuw i8 %i.bkf to i1, !dbg !18236
  br i1 %i.bkg, label %bb.qv, label %.backedge.i100.i, !dbg !18236

.backedge.i100.i:                                 ; preds = %bb.pm, %bb.qu, %bb.mg
  %.sroa.04.0.be.i.i = add i64 %.sroa.04.0487.i.i, 1, !dbg !18196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !18217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !18218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !17778
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.avy, i64 noundef %i.awa), !dbg !17779
  %i.bkh = load i64, ptr %i.as, align 8, !dbg !17778, !range !429, !noundef !401
  %i.bki = trunc nuw i64 %i.bkh to i1, !dbg !17780
  br i1 %i.bki, label %.lr.ph489.i.i, label %._crit_edge490.i.i, !dbg !17780

bb.qv:                                            ; preds = %bb.qu, %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !18217
  br label %._crit_edge490.i.i, !dbg !18237

._crit_edge490.i.i:                               ; preds = %.backedge.i100.i, %bb.qv, %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !18218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !18219
  %i.bkj = icmp eq ptr %i.awq, %i.awe, !dbg !17772
  br i1 %i.bkj, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE9sink_slowCs2NzvFoTxuAy_2rg.exit, label %bb.md, !dbg !17773

bb.qw:                                            ; preds = %bb.lz
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.aie, i64 57, !dbg !18238
  %i.bkl = load i8, ptr %i.bkk, align 1, !dbg !18238
  br label %bb.qx, !dbg !18239

bb.qx:                                            ; preds = %bb.qw, %bb.lz
  %.sroa.01.0.i = phi i8 [ %i.bkl, %bb.qw ], [ 10, %bb.lz ], !dbg !18240
  %i.bkm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18241
  %i.bkn = load ptr, ptr %i.bkm, align 8, !dbg !18241, !nonnull !401, !noundef !401 ; 5 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18241
  %i.bkp = load i64, ptr %i.bko, align 8, !dbg !18241, !noundef !401 ; 8 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18242
  %i.bkr = load ptr, ptr %i.bkq, align 8, !dbg !18242, !nonnull !401, !align !467, !noundef !401 ; 3 uses
  %i.bks = load i64, ptr %i.hb, align 8, !dbg !18242, !noundef !401 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !18243
  store i64 0, ptr %i.bx, align 8, !dbg !18244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !dbg !18245
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bw, i64 16, !dbg !18246
  store i8 %.sroa.01.0.i, ptr %i.bkt, align 8, !dbg !18246
  store i64 0, ptr %i.bw, align 8, !dbg !18246
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !18246
  store i64 %i.bkp, ptr %i.bku, align 8, !dbg !18246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !18247
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bkn, i64 noundef %i.bkp), !dbg !18248
  %i.bkv = load i64, ptr %i.bv, align 8, !dbg !18247, !range !429, !noundef !401
  %i.bkw = trunc nuw i64 %i.bkv to i1, !dbg !18249
  br i1 %i.bkw, label %.lr.ph.i11, label %._crit_edge.i10, !dbg !18249

.lr.ph.i11:                                       ; preds = %bb.qx
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bla = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not37.i = icmp eq i64 %i.bks, 0
  %.sroa.3.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.7.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.9.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  br i1 %.not37.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i11
  %i.bld = load i64, ptr %i.bkx, align 8, !dbg !18250, !noundef !401
  %i.ble = load i64, ptr %i.bky, align 8, !dbg !18251, !noundef !401
  %.not.us.i = icmp ugt i64 %i.bld, %i.ble, !dbg !18252
  br i1 %.not.us.i, label %.split670.us.i, label %.split672.us.i, !dbg !18252, !prof !582

.lr.ph.split.i:                                   ; preds = %.lr.ph.i11, %bb.tm
  %.sroa.02.0668.i = phi i64 [ %i.bse, %bb.tm ], [ 0, %.lr.ph.i11 ] ; 2 uses
  %i.blf = load i64, ptr %i.bkx, align 8, !dbg !18250, !noundef !401 ; 4 uses
  %i.blg = load i64, ptr %i.bky, align 8, !dbg !18251, !noundef !401 ; 3 uses
  %.not.i16 = icmp ugt i64 %i.blf, %i.blg, !dbg !18252
  br i1 %.not.i16, label %.split670.us.i, label %bb.qy, !dbg !18252, !prof !582

._crit_edge.i10:                                  ; preds = %bb.tm, %bb.qx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !18253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !18254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !18255
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !18256

.split670.us.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !dbg !18257
  unreachable, !dbg !18257

bb.qy:                                            ; preds = %.lr.ph.split.i
  %i.blh = load i64, ptr %i.bkz, align 8, !dbg !18258, !noundef !401
  %i.bli = add i64 %i.blh, %i.blf, !dbg !18259
  %i.blj = load i64, ptr %0, align 8, !dbg !18260, !range !429, !noundef !401
  %i.blk = trunc nuw i64 %i.blj to i1, !dbg !18261
  br i1 %i.blk, label %bb.qz, label %bb.ra, !dbg !18261

bb.qz:                                            ; preds = %bb.qy
  %i.bll = load i64, ptr %i.bla, align 8, !dbg !18260
  %i.blm = add i64 %i.bll, %.sroa.02.0668.i, !dbg !18262
  br label %bb.ra, !dbg !18263

bb.ra:                                            ; preds = %bb.qz, %bb.qy
  %.sroa.5.0.i = phi i64 [ %i.blm, %bb.qz ], [ undef, %bb.qy ], !dbg !18264 ; 2 uses
  %.sroa.015.0.i = phi i64 [ 1, %bb.qz ], [ 0, %bb.qy ], !dbg !18264 ; 2 uses
  %i.bln = load i64, ptr %i.bkr, align 8, !dbg !18265, !noundef !401
  %i.blo = add i64 %i.bln, 1, !dbg !18266         ; 2 uses
  %i.blp = load ptr, ptr %i.aht, align 8, !dbg !18267, !noundef !401
  %.not.i152.i = icmp eq ptr %i.blp, null, !dbg !18268
  %i.blq = load ptr, ptr %i.de, align 8, !dbg !18269, !nonnull !401, !align !467, !noundef !401 ; 4 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blq, i64 240, !dbg !18269
  %i.bls = load ptr, ptr %i.blr, align 8, !dbg !18269, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %..i153.i = select i1 %.not.i152.i, i64 48, i64 56, !dbg !18270
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bls, i64 %..i153.i, !dbg !18271
  %.pn.i.i17 = load ptr, ptr %i.blt, align 8, !dbg !18271, !nonnull !401, !noundef !401 ; 2 uses
  %.sroa.0.0.in.i.i18 = getelementptr inbounds nuw i8, ptr %.pn.i.i17, i64 24, !dbg !18272
  %.sroa.0.0.i154.i = load ptr, ptr %.sroa.0.0.in.i.i18, align 8, !dbg !18272, !nonnull !401, !noundef !401 ; 4 uses
  %.sroa.3.0.in.i.i19 = getelementptr inbounds nuw i8, ptr %.pn.i.i17, i64 32, !dbg !18273
  %.sroa.3.0.i.i20 = load i64, ptr %.sroa.3.0.in.i.i19, align 8, !dbg !18273, !noundef !401 ; 4 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blq, i64 104, !dbg !18274 ; 2 uses
  %i.blv = load i64, ptr %i.blu, align 8, !dbg !18274, !range !455, !noalias !16301, !noundef !401
  %.not.i72.i = icmp eq i64 %i.blv, -2, !dbg !18274
  br i1 %.not.i72.i, label %bb.ri, label %bb.rb, !dbg !18275

bb.rb:                                            ; preds = %bb.ra
  %i.blw = getelementptr inbounds nuw i8, ptr %i.bls, i64 16, !dbg !18276
  %i.blx = load ptr, ptr %i.blw, align 8, !dbg !18276, !noalias !16301, !nonnull !401, !noundef !401
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blx, i64 40, !dbg !18277
  %i.blz = load i8, ptr %i.bly, align 8, !dbg !18277, !range !403, !noalias !16301, !noundef !401
  %i.bma = trunc nuw i8 %i.blz to i1, !dbg !18277
  br i1 %i.bma, label %bb.rd, label %bb.rc, !dbg !18278

bb.rc:                                            ; preds = %bb.rb
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bls, i64 144, !dbg !18279
  %i.bmc = load i8, ptr %i.bmb, align 8, !dbg !18279, !range !403, !noalias !16301, !noundef !401
  %i.bmd = trunc nuw i8 %i.bmc to i1, !dbg !18279
  br i1 %i.bmd, label %bb.ri, label %bb.rd, !dbg !18279

bb.rd:                                            ; preds = %bb.rc, %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !dbg !18280, !noalias !16301
  %i.bme = call noundef align 8 ptr @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath12as_hyperlink(ptr noundef nonnull align 8 %i.blu), !dbg !18281, !noalias !16302 ; 2 uses
  %.not.i155.i = icmp eq ptr %i.bme, null, !dbg !18282
  br i1 %.not.i155.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i55, label %bb.re, !dbg !18283

bb.re:                                            ; preds = %bb.rd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !18284, !noalias !16302
  store i64 %.sroa.015.0.i, ptr %i.w, align 8, !dbg !18285, !noalias !16302
  store i64 %.sroa.5.0.i, ptr %.sroa.3.0..sroa_idx.i.i12, align 8, !dbg !18285, !noalias !16302
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i13, align 8, !dbg !18285, !noalias !16302
  store i64 %i.blo, ptr %.sroa.7.0..sroa_idx.i.i14, align 8, !dbg !18285, !noalias !16302
  store ptr %i.bme, ptr %.sroa.9.0..sroa_idx.i.i15, align 8, !dbg !18285, !noalias !16302
  %i.bmf = load ptr, ptr %i.de, align 8, !dbg !18286, !noalias !16302, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmf, i64 240, !dbg !18287
  %i.bmh = load ptr, ptr %i.bmg, align 8, !dbg !18287, !noalias !16302, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmh, i64 184, !dbg !18288 ; 5 uses
  %i.bmj = load i64, ptr %i.bmi, align 8, !dbg !18289, !noalias !16302, !noundef !401
  %i.bmk = icmp eq i64 %i.bmj, 0, !dbg !18290
  br i1 %i.bmk, label %bb.rf, label %bb.rg, !dbg !18290, !prof !427

bb.rf:                                            ; preds = %bb.re
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmf, i64 248, !dbg !18286
  store i64 -1, ptr %i.bmi, align 8, !dbg !18291, !noalias !16302
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bmh, i64 192, !dbg !18292
  invoke void @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator5beginQINtNtB8_7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bm, ptr noundef nonnull align 8 %i.bml, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bmm)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23 unwind label %bb.rh, !dbg !18293, !noalias !16301

bb.rg:                                            ; preds = %bb.re
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !dbg !18294, !noalias !16302
  unreachable, !dbg !18294

bb.rh:                                            ; preds = %bb.rf
  %i.bmn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !18295

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23: ; preds = %bb.rf
  %i.bmo = load i64, ptr %i.bmi, align 8, !dbg !18296, !noalias !16302, !noundef !401
  %i.bmp = add i64 %i.bmo, 1, !dbg !18297
  store i64 %i.bmp, ptr %i.bmi, align 8, !dbg !18298, !noalias !16302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !18299, !noalias !16302
  %.pre.i24 = load i8, ptr %i.bm, align 8, !dbg !18300, !range !403, !noalias !16301
  %i.bmq = trunc nuw i8 %.pre.i24 to i1, !dbg !18300
  br i1 %i.bmq, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i54, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23._crit_edge, !dbg !18301

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23._crit_edge: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23
  %.pre1517 = load i8, ptr %i.blb, align 1, !dbg !18302, !range !403, !noalias !16301
  %i.bmr = trunc nuw i8 %.pre1517 to i1, !dbg !18303
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i55, !dbg !18301

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i55: ; preds = %bb.rd, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23._crit_edge
  %i.bms = phi i1 [ %i.bmr, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23._crit_edge ], [ false, %bb.rd ], !dbg !18302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !18304, !noalias !16301
  %.pre1037.i = load ptr, ptr %i.de, align 8, !dbg !18305, !noalias !16303 ; 2 uses
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %.pre1037.i, i64 240
  %.pre1038.i = load ptr, ptr %.phi.trans.insert.i25, align 8, !dbg !18305, !noalias !16303
  br label %bb.ri, !dbg !18306

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i54: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i23
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !18307
  %i.bmu = load ptr, ptr %i.bmt, align 8, !dbg !18307, !noalias !16301, !nonnull !401, !noundef !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !18304, !noalias !16301
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !18308

bb.ri:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i55, %bb.rc, %bb.ra
  %i.bmv = phi ptr [ %i.bls, %bb.rc ], [ %.pre1038.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i55 ], [ %i.bls, %bb.ra ], !dbg !18305 ; 3 uses
  %i.bmw = phi ptr [ %i.blq, %bb.rc ], [ %.pre1037.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i55 ], [ %i.blq, %bb.ra ], !dbg !18305 ; 3 uses
  %.sroa.52.0.ph.i26 = phi i1 [ false, %bb.rc ], [ %i.bms, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i55 ], [ false, %bb.ra ]
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmv, i64 144, !dbg !18309
  %i.bmy = load i8, ptr %i.bmx, align 8, !dbg !18309, !range !403, !noalias !16303, !noundef !401
  %i.bmz = trunc nuw i8 %i.bmy to i1, !dbg !18309
  br i1 %i.bmz, label %bb.rm, label %bb.rj, !dbg !18309

bb.rj:                                            ; preds = %bb.ri
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmw, i64 104, !dbg !18310 ; 2 uses
  %i.bnb = load i64, ptr %i.bna, align 8, !dbg !18310, !range !455, !noalias !16303, !noundef !401
  %.not.i43.i = icmp eq i64 %i.bnb, -2, !dbg !18310
  br i1 %.not.i43.i, label %bb.rm, label %bb.rk, !dbg !18311

bb.rk:                                            ; preds = %bb.rj
  %i.bnc = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_pathCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.bna), !dbg !18312 ; 2 uses
  %.not10.i.i27 = icmp eq ptr %i.bnc, null, !dbg !18313
  br i1 %.not10.i.i27, label %bb.rl, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !18314

bb.rl:                                            ; preds = %bb.rk
  %i.bnd = load ptr, ptr %i.de, align 8, !dbg !18315, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 240, !dbg !18315
  %i.bnf = load ptr, ptr %i.bne, align 8, !dbg !18315, !nonnull !401, !align !467, !noundef !401 ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 66, !dbg !18316
  %i.bnh = load i8, ptr %i.bng, align 2, !dbg !18316, !range !403, !noundef !401
  %..i.i29 = add nuw nsw i8 %i.bnh, 1, !dbg !18317
  br label %bb.rm, !dbg !18318

bb.rm:                                            ; preds = %bb.rl, %bb.rj, %bb.ri
  %i.bni = phi ptr [ %i.bnf, %bb.rl ], [ %i.bmv, %bb.rj ], [ %i.bmv, %bb.ri ] ; 6 uses
  %.val77.i = phi ptr [ %i.bnd, %bb.rl ], [ %i.bmw, %bb.rj ], [ %i.bmw, %bb.ri ]
  %.sroa.37.0.ph.i30 = phi i8 [ %..i.i29, %bb.rl ], [ 0, %bb.rj ], [ 0, %bb.ri ] ; 2 uses
  %3 = trunc nuw i64 %.sroa.015.0.i to i1, !dbg !18319
  br i1 %3, label %bb.rn, label %bb.sd, !dbg !18319

bb.rn:                                            ; preds = %bb.rm
  switch i8 %.sroa.37.0.ph.i30, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i
    i8 1, label %bb.ro
    i8 2, label %bb.rs
  ], !dbg !18320

bb.ro:                                            ; preds = %bb.rn
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bni, i64 184, !dbg !18321 ; 5 uses
  %i.bnk = load i64, ptr %i.bnj, align 8, !dbg !18322, !noalias !16304, !noundef !401
  %i.bnl = icmp eq i64 %i.bnk, 0, !dbg !18323
  br i1 %i.bnl, label %bb.rp, label %bb.rq, !dbg !18323, !prof !427

bb.rp:                                            ; preds = %bb.ro
  store i64 -1, ptr %i.bnj, align 8, !dbg !18324, !noalias !16304
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bni, i64 192, !dbg !18325
  %i.bnn = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bnm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i154.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i20)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit157.i unwind label %bb.rr, !dbg !18326 ; 2 uses

bb.rq:                                            ; preds = %bb.ro
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !18327, !noalias !16304
  unreachable, !dbg !18327

bb.rr:                                            ; preds = %bb.rp
  %i.bno = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !18328

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit157.i: ; preds = %bb.rp
  %i.bnp = load i64, ptr %i.bnj, align 8, !dbg !18329, !noundef !401
  %i.bnq = add i64 %i.bnp, 1, !dbg !18330
  store i64 %i.bnq, ptr %i.bnj, align 8, !dbg !18331
  %.not7.i.i55.i = icmp eq ptr %i.bnn, null, !dbg !18332
  br i1 %.not7.i.i55.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !18333

bb.rs:                                            ; preds = %bb.rn
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bni, i64 66, !dbg !18334
  %i.bns = load i8, ptr %i.bnr, align 2, !dbg !18334, !range !403, !noalias !16305, !noundef !401
  %i.bnt = trunc nuw i8 %i.bns to i1, !dbg !18334
  br i1 %i.bnt, label %bb.rt, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i, !dbg !18335

bb.rt:                                            ; preds = %bb.rs
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bni, i64 67, !dbg !18334
  %i.bnv = load i8, ptr %i.bnu, align 1, !dbg !18336, !noalias !16305, !noundef !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !18337, !noalias !16305
  store i8 %i.bnv, ptr %i.bq, align 1, !dbg !18337, !noalias !16305
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bni, i64 184, !dbg !18338 ; 5 uses
  %i.bnx = load i64, ptr %i.bnw, align 8, !dbg !18339, !noalias !16306, !noundef !401
  %i.bny = icmp eq i64 %i.bnx, 0, !dbg !18340
  br i1 %i.bny, label %bb.ru, label %bb.rv, !dbg !18340, !prof !427

bb.ru:                                            ; preds = %bb.rt
  store i64 -1, ptr %i.bnw, align 8, !dbg !18341, !noalias !16306
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bni, i64 192, !dbg !18342
  %i.boa = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bnz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit158.i unwind label %bb.rw, !dbg !18343 ; 2 uses

bb.rv:                                            ; preds = %bb.rt
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !18344, !noalias !16306
  unreachable, !dbg !18344

bb.rw:                                            ; preds = %bb.ru
  %i.bob = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !18345

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit158.i: ; preds = %bb.ru
  %i.boc = load i64, ptr %i.bnw, align 8, !dbg !18346, !noundef !401
  %i.bod = add i64 %i.boc, 1, !dbg !18347
  store i64 %i.bod, ptr %i.bnw, align 8, !dbg !18348
  %.not.i.i54.i = icmp eq ptr %i.boa, null, !dbg !18349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !18350, !noalias !16305
  br i1 %.not.i.i54.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !18351

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit158.i, %bb.rs, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit157.i, %bb.rn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !18352, !noalias !16307
  call void @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.br, i64 noundef %.sroa.5.0.i), !dbg !18353, !noalias !16307
  %i.boe = load ptr, ptr %i.de, align 8, !dbg !18354, !noalias !16307, !nonnull !401, !align !467, !noundef !401
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 240, !dbg !18354
  %i.bog = load ptr, ptr %i.bof, align 8, !dbg !18354, !noalias !16307, !nonnull !401, !align !467, !noundef !401
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 83, !dbg !18355
  %i.boi = call { ptr, i64 } @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter8as_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br), !dbg !18356, !noalias !16307 ; 2 uses
  %i.boj = extractvalue { ptr, i64 } %i.boi, 0, !dbg !18356
  %i.bok = extractvalue { ptr, i64 } %i.boi, 1, !dbg !18356
  %.val87.i = load ptr, ptr %i.de, align 8, !dbg !18357, !nonnull !401, !align !467, !noundef !401
  %i.bol = getelementptr inbounds nuw i8, ptr %.val87.i, i64 240, !dbg !18358
  %i.bom = load ptr, ptr %i.bol, align 8, !dbg !18358, !noalias !16308, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 184, !dbg !18359 ; 9 uses
  %i.boo = load i64, ptr %i.bon, align 8, !dbg !18360, !noalias !16308, !noundef !401
  %i.bop = icmp eq i64 %i.boo, 0, !dbg !18361
  br i1 %i.bop, label %bb.rx, label %bb.ry, !dbg !18361, !prof !427

bb.rx:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i
  store i64 -1, ptr %i.bon, align 8, !dbg !18362, !noalias !16308
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bom, i64 192, !dbg !18363
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bom, i64 200, !dbg !18364 ; 2 uses
  %i.bos = load i64, ptr %i.bor, align 8, !dbg !18364, !range !429, !alias.scope !16309, !noalias !16308, !noundef !401
  %i.bot = trunc nuw i64 %i.bos to i1, !dbg !18364
  br i1 %i.bot, label %.sink.split.i.i.i52, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i43, !dbg !18364

.sink.split.i.i.i52:                              ; preds = %bb.rx
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bom, i64 208, !dbg !18364
  %i.bov = invoke fastcc noundef ptr @_RNvXsv_Cs6Ur84ob3I15_9termcolorINtB5_4AnsiNtB5_16IoStandardStreamENtB5_10WriteColor9set_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bou, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.boh) #18
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i53 unwind label %bb.sb, !dbg !18364, !noalias !16310 ; 2 uses

bb.ry:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i50.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !18365, !noalias !16308
  unreachable, !dbg !18365

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i53: ; preds = %.sink.split.i.i.i52
  %.not.i160.i = icmp eq ptr %i.bov, null, !dbg !18366
  br i1 %.not.i160.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i43, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i45, !dbg !18367

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i43: ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i53, %bb.rx
  %i.bow = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.boq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.boj, i64 noundef range(i64 0, -9223372036854775808) %i.bok)
          to label %bb.rz unwind label %bb.sb, !dbg !18368 ; 2 uses

bb.rz:                                            ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i43
  %.not11.i.i44 = icmp eq ptr %i.bow, null, !dbg !18369
  br i1 %.not11.i.i44, label %bb.sa, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i45, !dbg !18370

bb.sa:                                            ; preds = %bb.rz
  %i.box = load i64, ptr %i.bor, align 8, !dbg !18371, !range !429, !alias.scope !16311, !noundef !401
  %i.boy = trunc nuw i64 %i.box to i1, !dbg !18371
  br i1 %i.boy, label %.sink.split.i16.i.i48, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread249.i, !dbg !18371

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread249.i: ; preds = %bb.sa
  %storemerge.in.i251.i = load i64, ptr %i.bon, align 8, !dbg !18372, !noundef !401
  %storemerge.i252.i = add i64 %storemerge.in.i251.i, 1, !dbg !18373
  store i64 %storemerge.i252.i, ptr %i.bon, align 8, !dbg !18374
  br label %bb.sc, !dbg !18375

.sink.split.i16.i.i48:                            ; preds = %bb.sa
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bom, i64 208, !dbg !18371
  %i.bpa = invoke noundef ptr @_RNvYNtCs6Ur84ob3I15_9termcolor16IoStandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.boz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i49 unwind label %bb.sb, !dbg !18371 ; 2 uses

bb.sb:                                            ; preds = %.sink.split.i16.i.i48, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i43, %.sink.split.i.i.i52
  %i.bpb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !18376

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i45: ; preds = %bb.rz, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i53
  %.sroa.0.0.i159.ph.i = phi ptr [ %i.bow, %bb.rz ], [ %i.bov, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i53 ]
  %storemerge.in.i245.i46 = load i64, ptr %i.bon, align 8, !dbg !18372, !noundef !401
  %storemerge.i246.i47 = add i64 %storemerge.in.i245.i46, 1, !dbg !18373
  store i64 %storemerge.i246.i47, ptr %i.bon, align 8, !dbg !18374
  br label %.loopexit286.i, !dbg !18375

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i49: ; preds = %.sink.split.i16.i.i48
  %storemerge.in.i.i50 = load i64, ptr %i.bon, align 8, !dbg !18372, !noundef !401
  %storemerge.i.i51 = add i64 %storemerge.in.i.i50, 1, !dbg !18373
  store i64 %storemerge.i.i51, ptr %i.bon, align 8, !dbg !18374
  %.not9.i53.i = icmp eq ptr %i.bpa, null, !dbg !18377
  br i1 %.not9.i53.i, label %bb.sc, label %.loopexit286.i, !dbg !18375

.loopexit286.i:                                   ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i49, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i45
  %.sroa.0.0.i159248.i = phi ptr [ %.sroa.0.0.i159.ph.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i45 ], [ %i.bpa, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !18378, !noalias !16307
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !18379

bb.sc:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i49, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread249.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !18378, !noalias !16307
  %.pre1039.i = load ptr, ptr %i.de, align 8, !dbg !18380, !noalias !16312
  br label %bb.sd, !dbg !18381

bb.sd:                                            ; preds = %bb.sc, %bb.rm
  %i.bpc = phi ptr [ %.val77.i, %bb.rm ], [ %.pre1039.i, %bb.sc ], !dbg !18380 ; 4 uses
  %.sroa.37.5.ph.i31 = phi i8 [ %.sroa.37.0.ph.i30, %bb.rm ], [ 1, %bb.sc ] ; 2 uses
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 240, !dbg !18380
  %i.bpe = load ptr, ptr %i.bpd, align 8, !dbg !18380, !noalias !16312, !nonnull !401, !align !467, !noundef !401 ; 4 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 150, !dbg !18382
  %i.bpg = load i8, ptr %i.bpf, align 2, !dbg !18382, !range !403, !noalias !16312, !noundef !401
  %i.bph = trunc nuw i8 %i.bpg to i1, !dbg !18382
  br i1 %i.bph, label %bb.se, label %bb.so, !dbg !18382

bb.se:                                            ; preds = %bb.sd
  switch i8 %.sroa.37.5.ph.i31, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i58.i
    i8 1, label %bb.sf
    i8 2, label %bb.sg
  ], !dbg !18383

bb.sf:                                            ; preds = %bb.se
  %i.bpi = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg(ptr nonnull %i.bpc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i154.i, i64 noundef %.sroa.3.0.i.i20), !dbg !18384 ; 2 uses
  %.not7.i.i63.i = icmp eq ptr %i.bpi, null, !dbg !18385
  br i1 %.not7.i.i63.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i58.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, !dbg !18386

bb.sg:                                            ; preds = %bb.se
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpe, i64 66, !dbg !18387
  %i.bpk = load i8, ptr %i.bpj, align 2, !dbg !18387, !range !403, !noalias !16313, !noundef !401
  %i.bpl = trunc nuw i8 %i.bpk to i1, !dbg !18387
  br i1 %i.bpl, label %bb.sh, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i58.i, !dbg !18388

bb.sh:                                            ; preds = %bb.sg
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpe, i64 67, !dbg !18387
  %i.bpn = load i8, ptr %i.bpm, align 1, !dbg !18389, !noalias !16313, !noundef !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !18390, !noalias !16313
  store i8 %i.bpn, ptr %i.bo, align 1, !dbg !18390, !noalias !16313
end_hunk_5
