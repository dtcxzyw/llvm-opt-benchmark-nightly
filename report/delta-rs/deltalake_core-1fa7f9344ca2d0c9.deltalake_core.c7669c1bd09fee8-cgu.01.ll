inline.NumInlined: 11461
inline.NumDeleted: 4051
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers1_1__NtB2x_13DeltaScanWireNtB1n_11Deserialize11deserialize9___VisitorEB2B_:bb.a

bb.i:                                             ; preds = %.thread
  %i.bb = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @266)
  br label %bb.eo

bb.j:                                             ; preds = %.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.bd = load i8, ptr %i.bc, align 8, !noundef !8
  %i.be = add i8 %i.bd, -1                        ; 2 uses
  store i8 %i.be, ptr %i.bc, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.l, label %bb.m, !prof !3

bb.k:                                             ; preds = %.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.bh = load i8, ptr %i.bg, align 8, !noundef !8
  %i.bi = add i8 %i.bh, -1                        ; 2 uses
  store i8 %i.bi, ptr %i.bg, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.az, label %bb.ba, !prof !3

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 24, ptr %i.ah, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12649)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i40 = load i64, ptr %i.bk, align 8, !alias.scope !12649, !noalias !12652, !noundef !8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i41 = load i64, ptr %i.bl, align 8, !alias.scope !12649, !noalias !12652, !noundef !8
  %i.bm = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah, i64 noundef %.val.i40, i64 noundef %.val2.i41), !noalias !12649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.am

bb.m:                                             ; preds = %bb.j
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %1, ptr %i.aa, align 8, !noalias !12654
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 1, ptr %i.bn, align 8, !noalias !12654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !12654
  call void @llvm.experimental.noalias.scope.decl(metadata !12658)
  call void @llvm.experimental.noalias.scope.decl(metadata !12661)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !12664
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa), !noalias !12667
  %i.bo = load i8, ptr %i.x, align 8, !range !89, !noalias !12664, !noundef !8
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !12664, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12664
  br label %_RINvXs0_NvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers1_1__NtBb_13DeltaScanWireNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1J_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3n_4read6IoReadRShEEEBf_.exit

bb.o:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !range !89, !noalias !12664, !noundef !8
  %i.bu = trunc nuw i8 %i.bt to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12664
  br i1 %i.bu, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !12664
  %i.bv = load ptr, ptr %i.aa, align 8, !alias.scope !12668, !noalias !12669, !nonnull !8, !align !216, !noundef !8
  call void @_RINvXsf_Cseo6ZV82fEK1_3urlNtB6_3UrlNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB1A_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bv), !noalias !12670
  %i.bw = load i64, ptr %i.w, align 8, !range !65, !noalias !12664, !noundef !8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, -9223372036854775808
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !12671 ; 2 uses
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12664
  br label %_RINvXs0_NvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers1_1__NtBb_13DeltaScanWireNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1J_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3n_4read6IoReadRShEEEBf_.exit

common.resume.sink.split:                         ; preds = %bb.ax, %bb.en
  %.sink208 = phi ptr [ %i.jy, %bb.en ], [ %i.di, %bb.ax ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.kk, %bb.en ], [ %i.dw, %bb.ax ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink208, i64 noundef 40, i64 noundef 8) #46, !noalias !8
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.ee, %bb.an, %bb.dv, %bb.dy, %bb.ed, %bb.x, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %.pn117.i, %bb.dv ], [ %i.jz, %bb.ee ], [ %i.dd, %bb.aj ], [ %i.dk, %bb.an ], [ %.pn.i, %bb.x ], [ %i.jr, %bb.dy ], [ %.pn117.i, %bb.ed ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.12.0..sroa_idx.i, i64 72, i1 false), !noalias !12654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12664
  store i64 %i.bw, ptr %i.z, align 8, !noalias !12654
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.bz, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !12654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !12654
  call void @llvm.experimental.noalias.scope.decl(metadata !12672)
  call void @llvm.experimental.noalias.scope.decl(metadata !12675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !12678
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %.noexc.i unwind label %bb.y, !noalias !12681

.noexc.i:                                         ; preds = %bb.r
  %i.ca = load i8, ptr %i.v, align 8, !range !89, !noalias !12678, !noundef !8
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !12678, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12678
  br label %bb.ai

bb.t:                                             ; preds = %.noexc.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !range !89, !noalias !12678, !noundef !8
  %i.cg = trunc nuw i8 %i.cf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12678
  br i1 %i.cg, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !12678
  %i.ch = load ptr, ptr %i.aa, align 8, !alias.scope !12682, !noalias !12683, !nonnull !8, !align !216, !noundef !8
  invoke void @_RINvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers_1__NtB5_15DeltaScanConfigNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2F_4read6IoReadRShEEEB9_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ch)
          to label %.noexc45.i unwind label %bb.y, !noalias !12681

.noexc45.i:                                       ; preds = %bb.u
  %i.ci = load i64, ptr %i.u, align 8, !range !69, !noalias !12678, !noundef !8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, -9223372036854775807
  %i.ck = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !12684 ; 2 uses
  br i1 %i.cj, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.noexc45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12678
  br label %bb.ai

bb.w:                                             ; preds = %bb.o
  %i.cm = call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @187, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166), !noalias !12681
  br label %_RINvXs0_NvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers1_1__NtBb_13DeltaScanWireNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1J_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3n_4read6IoReadRShEEEBf_.exit

bb.x:                                             ; preds = %bb.ad, %bb.y
  %.pn.i = phi { ptr, i32 } [ %i.cn, %bb.y ], [ %i.cy, %bb.ad ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.z) #42
          to label %common.resume unwind label %bb.al, !noalias !12681

bb.y:                                             ; preds = %bb.ah, %bb.ac, %bb.u, %bb.r
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %.noexc45.i
  %.sroa.1251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.520.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1251.0..sroa_idx.i, i64 24, i1 false), !noalias !12654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12678
  store i64 %i.ci, ptr %i.y, align 8, !noalias !12654
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.cl, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !12654
  call void @llvm.experimental.noalias.scope.decl(metadata !12685)
  call void @llvm.experimental.noalias.scope.decl(metadata !12688)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !12691
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %.noexc46.i unwind label %bb.ad, !noalias !12681

.noexc46.i:                                       ; preds = %bb.z
  %i.co = load i8, ptr %i.t, align 8, !range !89, !noalias !12691, !noundef !8
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %.thread.i, label %bb.aa

.thread.i:                                        ; preds = %.noexc46.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !12691, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12691
  br label %bb.ah

bb.aa:                                            ; preds = %.noexc46.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !range !89, !noalias !12691, !noundef !8
  %i.cu = trunc nuw i8 %i.ct to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12691
  br i1 %i.cu, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.cv = load ptr, ptr %i.aa, align 8, !alias.scope !12692, !noalias !12654, !nonnull !8, !align !216, !noundef !8
  %i.cw = invoke { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2E_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.cv)
          to label %bb.ae unwind label %bb.ad, !noalias !12681 ; 2 uses

bb.ac:                                            ; preds = %bb.t
  %i.cx = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull @187, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.ai unwind label %bb.y, !noalias !12681

bb.ad:                                            ; preds = %bb.ag, %bb.ab, %bb.z
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y) #42
          to label %bb.x unwind label %bb.al, !noalias !12681

bb.ae:                                            ; preds = %bb.ab
  %i.cz = extractvalue { i64, ptr } %i.cw, 0
  %i.da = extractvalue { i64, ptr } %i.cw, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.da) ]
  %i.db = trunc i64 %i.cz to i1
  br i1 %i.db, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.030.i.sroa.0.0.copyload = load i64, ptr %i.z, align 8, !noalias !12654
  %.sroa.030.i.sroa.4.0.copyload = load ptr, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !12654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.030.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx.i, i64 72, i1 false)
  %.sroa.030.i.sroa.5.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.030.i.sroa.5, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.030.i.sroa.5.88..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12654
  br label %_RINvXs0_NvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers1_1__NtBb_13DeltaScanWireNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1J_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3n_4read6IoReadRShEEEBf_.exit

bb.ag:                                            ; preds = %bb.aa
  %i.dc = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 2, ptr noundef nonnull @187, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.ah unwind label %bb.ad, !noalias !12681

bb.ah:                                            ; preds = %bb.ag, %bb.ae, %.thread.i
  %.sink72.i = phi ptr [ %i.da, %bb.ae ], [ %i.cr, %.thread.i ], [ %i.dc, %bb.ag ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %bb.ai unwind label %bb.y, !noalias !12681

bb.ai:                                            ; preds = %bb.s, %bb.v, %bb.ac, %bb.ah
  %.sroa.861.0 = phi ptr [ %.sink72.i, %bb.ah ], [ %i.cd, %bb.s ], [ %i.cl, %bb.v ], [ %i.cx, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12654
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.aj, !noalias !12681

bb.aj:                                            ; preds = %bb.ai
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.z)
          to label %common.resume unwind label %bb.ak, !noalias !12681

bb.ak:                                            ; preds = %bb.aj
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !12681
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ai
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.z), !noalias !12681
  br label %_RINvXs0_NvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers1_1__NtBb_13DeltaScanWireNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1J_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3n_4read6IoReadRShEEEBf_.exit

bb.al:                                            ; preds = %bb.ad, %bb.x
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !12681
  unreachable

_RINvXs0_NvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers1_1__NtBb_13DeltaScanWireNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1J_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3n_4read6IoReadRShEEEBf_.exit: ; preds = %bb.n, %bb.q, %bb.w, %bb.af, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.1164.0 = phi ptr [ %i.da, %bb.af ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i ], [ undef, %bb.w ], [ undef, %bb.q ], [ undef, %bb.n ]
  %.sroa.861.1 = phi ptr [ %.sroa.030.i.sroa.4.0.copyload, %bb.af ], [ %.sroa.861.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.cm, %bb.w ], [ %i.bz, %bb.q ], [ %i.br, %bb.n ]
  %.sroa.059.1 = phi i64 [ %.sroa.030.i.sroa.0.0.copyload, %bb.af ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i ], [ -9223372036854775808, %bb.w ], [ -9223372036854775808, %bb.q ], [ -9223372036854775808, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dg = load i8, ptr %i.bc, align 8, !noundef !8
  %i.dh = add i8 %i.dg, 1
  store i8 %i.dh, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.sroa.059.1, ptr %i.af, align 8
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.861.1, ptr %.sroa.861.0..sroa_idx, align 8
  %.sroa.1163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.1163.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.030.i.sroa.5, i64 112, i1 false)
  %.sroa.1164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  store ptr %.sroa.1164.0, ptr %.sroa.1164.0..sroa_idx, align 8
  %i.di = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %1)
          to label %bb.ao unwind label %bb.an     ; 10 uses

bb.am:                                            ; preds = %bb.az, %bb.l
  %.sink209 = phi ptr [ %i.ea, %bb.az ], [ %i.bm, %bb.l ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink209, ptr %i.dj, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.er

bb.an:                                            ; preds = %_RINvXs0_NvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers1_1__NtBb_13DeltaScanWireNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1J_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3n_4read6IoReadRShEEEBf_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider13DeltaScanWireNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB18_(ptr noalias noundef align 8 dereferenceable(136) %i.af) #42
          to label %common.resume unwind label %bb.as

bb.ao:                                            ; preds = %_RINvXs0_NvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers1_1__NtBb_13DeltaScanWireNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1J_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3n_4read6IoReadRShEEEBf_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ag, ptr noundef nonnull align 8 dereferenceable(136) %i.af, i64 136, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  store ptr %i.di, ptr %i.dl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.dm = load i64, ptr %i.ag, align 8, !range !65, !noundef !8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, -9223372036854775808
  br i1 %i.dn, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not37 = icmp eq ptr %i.di, null
  br i1 %.not37, label %.thread171, label %bb.ar

.thread171:                                       ; preds = %bb.ap
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.3.0..sroa_idx, i64 120, i1 false)
  br label %.thread86

bb.aq:                                            ; preds = %bb.ao
  %i.do = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !8, !align !216, !noundef !8 ; 2 uses
  %.not101 = icmp eq ptr %i.di, null
  br i1 %.not101, label %.thread86, label %bb.at

bb.ar:                                            ; preds = %bb.ap
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider13DeltaScanWireEBM_(ptr noalias noundef align 8 dereferenceable(136) %i.ag)
  br label %.thread86

bb.as:                                            ; preds = %bb.ee, %bb.an
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

.thread86:                                        ; preds = %.thread171, %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, %bb.aq
  %.sroa.09.092 = phi i64 [ -9223372036854775808, %bb.aq ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit ], [ -9223372036854775808, %bb.ar ], [ %i.dm, %.thread171 ]
  %.sroa.10.091 = phi ptr [ %i.dp, %bb.aq ], [ %i.dp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.di, %bb.ar ], [ %.sroa.219.0.copyload, %.thread171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.ay

bb.at:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !12693)
  call void @llvm.experimental.noalias.scope.decl(metadata !12696)
  %i.dr = load i64, ptr %i.di, align 8, !range !3250, !alias.scope !12699, !noalias !12700, !noundef !8
  switch i64 %i.dr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.au
    i64 1, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.ds, align 8, !alias.scope !12699, !noalias !12700, !noundef !8 ; 2 uses
  %i.dt = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.dt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.du, align 8, !alias.scope !12699, !noalias !12700, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #46, !noalias !12703
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit

bb.aw:                                            ; preds = %bb.at
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ax, !noalias !12700

bb.ax:                                            ; preds = %bb.aw
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.at, %bb.au, %bb.av, %bb.aw
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.di, i64 noundef 40, i64 noundef 8) #46, !noalias !12700
  br label %.thread86

bb.ay:                                            ; preds = %.thread93, %.thread86
  %.sroa.10.1 = phi ptr [ %.sroa.10.091, %.thread86 ], [ %.sroa.10.298, %.thread93 ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.092, %.thread86 ], [ %.sroa.09.299, %.thread93 ] ; 2 uses
  %i.dx = icmp eq i64 %.sroa.09.1, -9223372036854775808
  br i1 %i.dx, label %bb.eo, label %bb.ep, !prof !3

bb.az:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 24, ptr %i.ae, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12704)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i44 = load i64, ptr %i.dy, align 8, !alias.scope !12704, !noalias !12707, !noundef !8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i45 = load i64, ptr %i.dz, align 8, !alias.scope !12704, !noalias !12707, !noundef !8
  %i.ea = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae, i64 noundef %.val.i44, i64 noundef %.val2.i45), !noalias !12704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.am

bb.ba:                                            ; preds = %bb.k
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %1, ptr %i.s, align 8, !noalias !12709
  %i.eb = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 1, ptr %i.eb, align 8, !noalias !12709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12709
  store i64 -9223372036854775808, ptr %i.r, align 8, !noalias !12709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12709
  store i64 -9223372036854775807, ptr %i.q, align 8, !noalias !12709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12709
  store ptr null, ptr %i.p, align 8, !noalias !12709
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.594.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.695.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.641.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.744.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.591.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.692.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.625.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_strNtNtB8_3raw15BoxedFromStringECs14kWLkQVSKO_14deltalake_core:bb.a
bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13207)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !13208, !noundef !8 ; 2 uses
  switch i8 %i.m, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !13209, !noalias !13205
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = icmp eq i8 %i.m, 34
  br i1 %i.o, label %bb.d, label %bb.e, !prof !215

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.d:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit
  %i.r = add i64 %i.k, 1
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !13212
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.t = load i64, ptr %i.b, align 8, !range !3023, !noundef !8
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !8, !noundef !8 ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(80) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @270)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.y, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RINvXsd_NtCseqDwI8vvjGQ_10serde_json3rawNtB6_15BoxedFromStringNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_strNtNtB8_5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %.sroa.4.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = load ptr, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.aa, label %._crit_edge, label %bb.i, !prof !3

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %i.ab = phi ptr [ %.pre, %._crit_edge ], [ %i.x, %bb.e ]
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %.phi.trans.insert, align 8, !noundef !8
  store ptr %i.z, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB2t_5StatsNtB1j_11Deserialize11deserialize9___VisitorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) %3, i64 noundef range(i64 0, 576460752303423488) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13215)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !13218, !noalias !13223, !noundef !8 ; 2 uses
  %.promoted.i = load i64, ptr %i.n, align 8, !alias.scope !13215, !noalias !13227 ; 2 uses
  %i.q = icmp ult i64 %.promoted.i, %i.p
  br i1 %i.q, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !13218, !noalias !13223, !nonnull !8, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.t = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.w, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13229)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !13230, !noundef !8
  switch i8 %i.v, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !9617

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.w = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.w, ptr %i.n, align 8, !alias.scope !13231, !noalias !13227
  %exitcond.not.i = icmp eq i64 %i.w, %i.p
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 5, ptr %i.m, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(80) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @272)
  %i.z = ptrtoint ptr %i.y to i64
  br label %.thread57.a

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 8, !noundef !8
  %i.ac = add i8 %i.ab, -1                        ; 2 uses
  store i8 %i.ac, ptr %i.aa, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.h, !prof !3

bb.f:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 8, !noundef !8
  %i.ag = add i8 %i.af, -1                        ; 2 uses
  store i8 %i.ag, ptr %i.ae, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.v, label %bb.w, !prof !3

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 24, ptr %i.l, align 8
  %i.ai = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ax

bb.h:                                             ; preds = %bb.e
  %i.aj = add i64 %i.t, 1
  store i64 %i.aj, ptr %i.n, align 8, !alias.scope !13234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %0, ptr %i.j, align 8, !noalias !13237
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 1, ptr %i.ak, align 8, !noalias !13237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13246
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !13249
  %i.al = load i8, ptr %i.i, align 8, !range !89, !noalias !13246, !noundef !8
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !13246, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13246
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !89, !noalias !13246, !noundef !8
  %i.ar = trunc nuw i8 %i.aq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13246
  br i1 %i.ar, label %bb.k, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementyECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.j, align 8, !alias.scope !13250, !noalias !13251, !nonnull !8, !align !216, !noundef !8
  %i.at = tail call fastcc { i64, ptr } @_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(80) %i.as), !noalias !13252 ; 2 uses
  %5 = extractvalue { i64, ptr } %i.at, 0
  %6 = extractvalue { i64, ptr } %i.at, 1
  %spec.select.i = and i64 %5, 1
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementyECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.j
  %i.au = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @193, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i, %bb.k, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementyECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.4.1.i = phi ptr [ %6, %bb.k ], [ %i.au, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementyECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ao, %bb.i ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %spec.select.i, %bb.k ], [ 1, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementyECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 1, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.av = load i8, ptr %i.aa, align 8, !noundef !8
  %i.aw = add i8 %i.av, 1
  store i8 %i.aw, ptr %i.aa, align 8
  %i.ax = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(80) %0)
          to label %bb.m unwind label %bb.l       ; 8 uses

bb.l:                                             ; preds = %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state5StatsNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(i64 %.sroa.0.1.i, ptr %.sroa.4.1.i) #42
          to label %common.resume unwind label %bb.p

bb.m:                                             ; preds = %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit
  %i.az = trunc nuw i64 %.sroa.0.1.i to i1
  %i.ba = ptrtoint ptr %.sroa.4.1.i to i64        ; 3 uses
  %.not79 = icmp eq ptr %i.ax, null               ; 2 uses
  br i1 %i.az, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not79, label %.thread60, label %.thread54.a

.thread54.a:                                      ; preds = %bb.n
  %i.bb = ptrtoint ptr %i.ax to i64
  br label %.thread57.a

bb.o:                                             ; preds = %bb.m
  br i1 %.not79, label %.thread57.a, label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.ao
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13256)
  %i.bd = load i64, ptr %i.ax, align 8, !range !3250, !alias.scope !13259, !noalias !13260, !noundef !8
  switch i64 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.r
    i64 1, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !13259, !noalias !13260, !noundef !8 ; 2 uses
  %i.bf = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !13259, !noalias !13260, !nonnull !8, !noundef !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #46, !noalias !13263
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.u, !noalias !13260

common.resume:                                    ; preds = %bb.ao, %bb.l, %bb.aw, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.u ], [ %i.ed, %bb.aw ], [ %i.du, %bb.ao ], [ %i.ay, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef 40, i64 noundef 8) #46, !noalias !13260
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef 40, i64 noundef 8) #46, !noalias !13260
  br label %.thread57.a

bb.v:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 24, ptr %i.k, align 8
  %i.bj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ax

bb.w:                                             ; preds = %bb.f
  %i.bk = add i64 %i.t, 1
  store i64 %i.bk, ptr %i.n, align 8, !alias.scope !13264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %0, ptr %i.h, align 8, !noalias !13267
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %i.bl, align 8, !noalias !13267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13270
  call fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !13277
  %i.bm = load i8, ptr %i.g, align 8, !range !89, !noalias !13270, !noundef !8
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %._crit_edge.i, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.x

._crit_edge.i:                                    ; preds = %bb.al, %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !13278, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13278
  br label %bb.ab

bb.x:                                             ; preds = %bb.al, %.lr.ph.i22
  %.sroa.05.057.i = phi i64 [ 0, %.lr.ph.i22 ], [ %.sroa.05.1.i, %bb.al ] ; 3 uses
  %.sroa.4.056.i = phi i64 [ undef, %.lr.ph.i22 ], [ %.sroa.4.1.i26, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13281)
  call void @llvm.experimental.noalias.scope.decl(metadata !13282)
  %i.bs = load i8, ptr %i.bo, align 1, !range !89, !noalias !13278, !noundef !8
  %i.bt = trunc nuw i8 %i.bs to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13278
  br i1 %i.bt, label %bb.y, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.thread33.i

bb.y:                                             ; preds = %bb.x
  %i.bu = load ptr, ptr %i.h, align 8, !alias.scope !13283, !noalias !13284, !nonnull !8, !align !216, !noundef !8 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13285)
  call void @llvm.experimental.noalias.scope.decl(metadata !13288)
  call void @llvm.experimental.noalias.scope.decl(metadata !13291)
  call void @llvm.experimental.noalias.scope.decl(metadata !13294)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 40 ; 5 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !13297, !noalias !13300, !noundef !8
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.bw, align 8, !alias.scope !13297, !noalias !13300
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 0, ptr %i.bz, align 8, !alias.scope !13305, !noalias !13300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13306
  call void @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bu), !noalias !13300
  %i.ca = load i64, ptr %i.f, align 8, !range !3023, !noalias !13306, !noundef !8
  %i.cb = icmp eq i64 %i.ca, 2
  %i.cc = load ptr, ptr %i.bp, align 8, !noalias !13306 ; 5 uses
  br i1 %i.cb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !13306
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.cd = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 10
  br i1 %i.cd, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.thread37.i

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.thread37.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13306
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13306
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i
  %.sroa.1128.1.ph.i = phi ptr [ %i.cc, %bb.aa ], [ %i.br, %._crit_edge.i ]
  %i.ce = ptrtoint ptr %.sroa.1128.1.ph.i to i64
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.z
  %i.cf = load i64, ptr %i.cc, align 1
  %i.cg = xor i64 %i.cf, 8245918729564419438
  %i.ch = getelementptr i8, ptr %i.cc, i64 8
  %i.ci = load i16, ptr %i.ch, align 1
  %i.cj = zext i16 %i.ci to i64
  %i.ck = xor i64 %i.cj, 29540
  %i.cl = or i64 %i.cg, %i.ck
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %.not.i = icmp eq i32 %i.cn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13306
  br i1 %.not.i, label %bb.ad, label %bb.ac

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.thread33.i: ; preds = %bb.x
  %i.co = trunc nuw i64 %.sroa.05.057.i to i1
  br i1 %i.co, label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.an

bb.ac:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.thread37.i
  %i.cp = call fastcc noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.bu) ; 2 uses
  %.not26.i = icmp eq ptr %i.cp, null
  br i1 %.not26.i, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.i
  %.not25.i = icmp eq i64 %.sroa.05.057.i, 0
  br i1 %.not25.i, label %bb.af, label %bb.ae, !prof !215

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13267
  store ptr @57, ptr %i.e, align 8, !noalias !13307
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 10, ptr %i.cq, align 8, !noalias !13307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13307
  store ptr %i.e, ptr %i.d, align 8, !noalias !13307
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !13307
  %i.cr = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull @1813, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13267
  %i.cs = ptrtoint ptr %i.cr to i64
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit

bb.af:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !13310)
  call void @llvm.experimental.noalias.scope.decl(metadata !13313)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !13316, !noalias !13321, !noundef !8 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !13325, !noalias !13326 ; 2 uses
  %i.cv = icmp ult i64 %.promoted.i.i.i.i.i, %i.cu
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.af
  %i.cw = load ptr, ptr %i.bv, align 8, !alias.scope !13316, !noalias !13321, !nonnull !8, !noundef !8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %i.cx = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.da, %bb.ah ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13327)
  call void @llvm.experimental.noalias.scope.decl(metadata !13328)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !13329, !noundef !8
  switch i8 %i.cz, label %bb.ai [
    i8 32, label %bb.ah
    i8 10, label %bb.ah
    i8 9, label %bb.ah
    i8 13, label %bb.ah
    i8 58, label %bb.ak
  ], !prof !9771

bb.ah:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.da = add i64 %i.cx, 1                        ; 3 uses
  store i64 %i.da, ptr %i.bw, align 8, !alias.scope !13330, !noalias !13326
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.da, %i.cu
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.ag

.loopexit.i.i.i.i:                                ; preds = %bb.ah, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13333
  store i64 3, ptr %i.b, align 8, !noalias !13333
  %i.db = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13333
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13333
  store i64 6, ptr %i.c, align 8, !noalias !13333
  %i.dc = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13333
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit.i.i.i.i
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %i.db, %.loopexit.i.i.i.i ], [ %i.dc, %bb.ai ]
  %i.dd = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i.i, 1
  br label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ak:                                            ; preds = %bb.ag
  %i.de = add i64 %i.cx, 1
  store i64 %i.de, ptr %i.bw, align 8, !alias.scope !13334
  %i.df = call fastcc { i64, ptr } @_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(80) %i.bu)
  br label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ak, %bb.aj
  %.merged.i.i.i = phi { i64, ptr } [ %i.dd, %bb.aj ], [ %i.df, %bb.ak ] ; 2 uses
  %i.dg = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.dh = extractvalue { i64, ptr } %.merged.i.i.i, 1
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dj = trunc nuw i64 %i.dg to i1
  br i1 %i.dj, label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.al

bb.al:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ac
  %.sroa.4.1.i26 = phi i64 [ %i.di, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.4.056.i, %bb.ac ]
  %.sroa.05.1.i = phi i64 [ 1, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.05.057.i, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13337
  call fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !13277
  %i.dk = load i8, ptr %i.g, align 8, !range !89, !noalias !13337, !noundef !8
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %._crit_edge.i, label %bb.x

bb.am:                                            ; preds = %bb.ac
  %i.dm = ptrtoint ptr %i.cp to i64
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit

bb.an:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.thread33.i
  %i.dn = call { i64, ptr } @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXs19_NtB28_5implsyNtB28_11Deserialize11deserialize16PrimitiveVisitorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 10) ; 2 uses
  %i.do = extractvalue { i64, ptr } %i.dn, 0
  %i.dp = extractvalue { i64, ptr } %i.dn, 1
  %i.dq = ptrtoint ptr %i.dp to i64
  %spec.select.i23 = and i64 %i.do, 1
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ab, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.thread33.i, %bb.ae, %bb.am, %bb.an
  %.sroa.7.1.i = phi i64 [ %.sroa.4.056.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.thread33.i ], [ %i.dq, %bb.an ], [ %i.ce, %bb.ab ], [ %i.dm, %bb.am ], [ %i.cs, %bb.ae ], [ %i.di, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 4 uses
  %.sroa.0.1.i25 = phi i64 [ 0, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs14kWLkQVSKO_14deltalake_core.exit.thread33.i ], [ %spec.select.i23, %bb.an ], [ 1, %bb.ab ], [ 1, %bb.am ], [ 1, %bb.ae ], [ 1, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dr = load i8, ptr %i.ae, align 8, !noundef !8
  %i.ds = add i8 %i.dr, 1
  store i8 %i.ds, ptr %i.ae, align 8
  %i.dt = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(80) %0)
          to label %bb.ap unwind label %bb.ao     ; 8 uses

bb.ao:                                            ; preds = %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = inttoptr i64 %.sroa.7.1.i to ptr
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state5StatsNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(i64 %.sroa.0.1.i25, ptr %i.dv) #42
          to label %common.resume unwind label %bb.p

bb.ap:                                            ; preds = %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs14kWLkQVSKO_14deltalake_core.exit
  %i.dw = trunc nuw i64 %.sroa.0.1.i25 to i1
  %.not78 = icmp eq ptr %i.dt, null               ; 2 uses
  br i1 %i.dw, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not78, label %.thread60, label %.thread71

.thread71:                                        ; preds = %bb.aq
  %i.dx = ptrtoint ptr %i.dt to i64
  br label %.thread57.a

bb.ar:                                            ; preds = %bb.ap
  br i1 %.not78, label %.thread57.a, label %bb.as, !prof !13340

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !13341)
  call void @llvm.experimental.noalias.scope.decl(metadata !13344)
  %i.dy = load i64, ptr %i.dt, align 8, !range !3250, !alias.scope !13347, !noalias !13348, !noundef !8
  switch i64 %i.dy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit30 [
    i64 0, label %bb.at
    i64 1, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.val1.i.i.i.i28 = load i64, ptr %i.dz, align 8, !alias.scope !13347, !noalias !13348, !noundef !8 ; 2 uses
  %i.ea = icmp eq i64 %.val1.i.i.i.i28, 0
  br i1 %i.ea, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit30, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.val.i.i.i.i29 = load ptr, ptr %i.eb, align 8, !alias.scope !13347, !noalias !13348, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i29, i64 noundef range(i64 1, 0) %.val1.i.i.i.i28, i64 noundef 1) #46, !noalias !13351
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit30

bb.av:                                            ; preds = %bb.as
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ec)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit30 unwind label %bb.aw, !noalias !13348

bb.aw:                                            ; preds = %bb.av
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef 40, i64 noundef 8) #46, !noalias !13348
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit30: ; preds = %bb.as, %bb.at, %bb.au, %bb.av
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef 40, i64 noundef 8) #46, !noalias !13348
  br label %.thread57.a

.thread57.a:                                      ; preds = %.thread71, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit30, %bb.ar, %.thread54.a, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  %.sroa.9.3 = phi i64 [ %i.z, %bb.d ], [ %i.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.bb, %.thread54.a ], [ %i.ba, %bb.o ], [ %i.dx, %.thread71 ], [ %.sroa.7.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit30 ], [ %.sroa.7.1.i, %bb.ar ]
  %i.ee = inttoptr i64 %.sroa.9.3 to ptr
  %i.ef = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  br label %bb.ax

.thread60:                                        ; preds = %bb.aq, %bb.n
  %.sroa.9.163 = phi i64 [ %i.ba, %bb.n ], [ %.sroa.7.1.i, %bb.aq ]
  %i.eg = inttoptr i64 %.sroa.9.163 to ptr
  br label %bb.ax

bb.ax:                                            ; preds = %.thread57.a, %.thread60, %bb.g, %bb.v, %.loopexit
  %.sroa.7.3 = phi ptr [ %i.x, %.loopexit ], [ %i.bj, %bb.v ], [ %i.ai, %bb.g ], [ %i.eg, %.thread60 ], [ %i.ef, %.thread57.a ]
  %.sroa.0.3 = phi i64 [ 1, %.loopexit ], [ 1, %bb.v ], [ 1, %bb.g ], [ 0, %.thread60 ], [ 1, %.thread57.a ]
  %i.eh = insertvalue { i64, ptr } poison, i64 %.sroa.0.3, 0
  %i.ei = insertvalue { i64, ptr } %i.eh, ptr %.sroa.7.3, 1
  ret { i64, ptr } %i.ei
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_i32NtNvXsR_NtB1l_5implslNtB1l_11Deserialize11deserialize16PrimitiveVisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 20 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13357)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !13360, !noalias !13363, !noundef !8 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.j, align 8, !alias.scope !13366, !noalias !13367 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !13360, !noalias !13363, !nonnull !8, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.p = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13368)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !13369, !noundef !8 ; 3 uses
  switch i8 %i.r, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.s = add i64 %i.p, 1                          ; 3 uses
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !13370, !noalias !13367
  %exitcond.not.i.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13373
  %i.t = icmp eq i8 %i.r, 45
  br i1 %i.t, label %bb.d, label %bb.e

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13373
  store i64 5, ptr %i.i, align 8, !noalias !13373
  %i.u = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !13352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13373
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !13352, !noalias !13355
  store i32 1, ptr %0, align 8, !alias.scope !13352, !noalias !13355
  br label %_RINvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE18deserialize_numberNtNvXsR_NtNtCs1gOyXocuPRE_10serde_core2de5implslNtB1M_11Deserialize11deserialize16PrimitiveVisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.w = add i64 %i.p, 1
  store i64 %i.w, ptr %i.j, align 8, !alias.scope !13374, !noalias !13352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13373
  call fastcc void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false), !noalias !13352
  %i.x = load i64, ptr %i.g, align 8, !range !3087, !noalias !13373, !noundef !8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.aa = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.aa, 10
  br i1 %or.cond.i, label %bb.r, label %bb.q, !prof !10779

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !13373, !nonnull !8, !align !216, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !13352, !noalias !13355
  store i32 1, ptr %0, align 8, !alias.scope !13352, !noalias !13355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13373
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %.sroa.2.0.copyload.i = load i64, ptr %i.z, align 8, !noalias !13373 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13377)
  switch i64 %i.x, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.u, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ad = bitcast i64 %.sroa.2.0.copyload.i to double
  call void @_RINvYNtNvXsR_NtNtCs1gOyXocuPRE_10serde_core2de5implslNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor9visit_f64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, double noundef %i.ad), !noalias !13380
  br label %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXsR_NtNtCs1gOyXocuPRE_10serde_core2de5implslNtB1a_11Deserialize11deserialize16PrimitiveVisitorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13382)
  %i.ae = icmp ugt i64 %.sroa.2.0.copyload.i, 2147483647
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !3

bb.j:                                             ; preds = %bb.i
  %i.af = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.af, ptr %i.ag, align 4, !alias.scope !13385, !noalias !13386
  br label %_RINvXNvXsR_NtNtCs1gOyXocuPRE_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13387
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.ah, align 8, !noalias !13387
  store i8 1, ptr %i.e, align 8, !noalias !13387
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtB2v_9DeltaScanNtB1l_11Deserialize11deserialize9___VisitorEB2B_:bb.a
  store i64 2, ptr %0, align 8
  br label %bb.hm

bb.d:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit
  %i.bt = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @292)
  br label %bb.hj

bb.e:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bv = load i8, ptr %i.bu, align 8, !noundef !8
  %i.bw = add i8 %i.bv, -1                        ; 2 uses
  store i8 %i.bw, ptr %i.bu, align 8
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.g, label %bb.h, !prof !3

bb.f:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bz = load i8, ptr %i.by, align 8, !noundef !8
  %i.ca = add i8 %i.bz, -1                        ; 2 uses
  store i8 %i.ca, ptr %i.by, align 8
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.bv, label %bb.bw, !prof !3

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 24, ptr %i.bf, align 8
  %i.cc = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.bi

bb.h:                                             ; preds = %bb.e
  %i.cd = add i64 %i.bn, 1
  store i64 %i.cd, ptr %i.bh, align 8, !alias.scope !16744
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store ptr %1, ptr %i.az, align 8, !noalias !16747
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i8 1, ptr %i.ce, align 8, !noalias !16747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !16747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16754)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !16757
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az), !noalias !16760
  %i.cf = load i8, ptr %i.as, align 8, !range !89, !noalias !16757, !noundef !8
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !16757, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !16757
  br label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit

bb.j:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !range !89, !noalias !16757, !noundef !8
  %i.cl = trunc nuw i8 %i.ck to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !16757
  br i1 %i.cl, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !16757
  %i.cm = load ptr, ptr %i.az, align 8, !alias.scope !16761, !noalias !16762, !nonnull !8, !align !216, !noundef !8
  call void @_RINvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts3_1__NtB5_15SnapshotWrapperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2N_4read9SliceReadEEBb_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cm), !noalias !16763
  %i.cn = load i64, ptr %i.ar, align 8, !range !3023, !noalias !16757, !noundef !8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !16757, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !16757
  br i1 %i.co, label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit, label %bb.l

common.resume.sink.split:                         ; preds = %bb.bt, %bb.hi
  %.sink = phi ptr [ %i.rk, %bb.hi ], [ %i.go, %bb.bt ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.rw, %bb.hi ], [ %i.hc, %bb.bt ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 40, i64 noundef 8) #46, !noalias !8
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.gz, %bb.bj, %bb.gk, %bb.gy, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %.pn172.i, %bb.gk ], [ %i.rl, %bb.gz ], [ %.pn73.i, %bb.r ], [ %i.gq, %bb.bj ], [ %.pn172.i, %bb.gy ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  store i64 %i.cn, ptr %i.ay, align 8, !noalias !16747
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 6 uses
  store ptr %i.cq, ptr %i.cr, align 8, !noalias !16747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !16747
  call void @llvm.experimental.noalias.scope.decl(metadata !16764)
  call void @llvm.experimental.noalias.scope.decl(metadata !16767)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !16770
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc.i unwind label %bb.s, !noalias !16773

.noexc.i:                                         ; preds = %bb.l
  %i.cs = load i8, ptr %i.aq, align 8, !range !89, !noalias !16770, !noundef !8
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !16770, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !16770
  br label %bb.bd

bb.n:                                             ; preds = %.noexc.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !range !89, !noalias !16770, !noundef !8
  %i.cy = trunc nuw i8 %i.cx to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !16770
  br i1 %i.cy, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !16770
  %i.cz = load ptr, ptr %i.az, align 8, !alias.scope !16774, !noalias !16775, !nonnull !8, !align !216, !noundef !8
  invoke void @_RINvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers_1__NtB5_15DeltaScanConfigNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2F_4read9SliceReadEEB9_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cz)
          to label %.noexc77.i unwind label %bb.s, !noalias !16773

.noexc77.i:                                       ; preds = %bb.o
  %i.da = load i64, ptr %i.ap, align 8, !range !69, !noalias !16770, !noundef !8 ; 2 uses
  %i.db = icmp eq i64 %i.da, -9223372036854775807
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !16776 ; 2 uses
  br i1 %i.db, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.noexc77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !16770
  br label %bb.bd

bb.q:                                             ; preds = %bb.j
  %i.de = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @197, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166), !noalias !16773
  br label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s
  %.pn73.i = phi { ptr, i32 } [ %i.df, %bb.s ], [ %.pn71.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next15SnapshotWrapperEBO_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay) #42
          to label %common.resume unwind label %bb.bc, !noalias !16773

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit98.i, %bb.w, %bb.o, %bb.l
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %.noexc77.i
  %.sroa.12.0..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx103.i, i64 24, i1 false), !noalias !16747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !16770
  store i64 %i.da, ptr %i.ax, align 8, !noalias !16747
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.dd, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !16747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !16747
  call void @llvm.experimental.noalias.scope.decl(metadata !16777)
  call void @llvm.experimental.noalias.scope.decl(metadata !16780)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !16783
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc78.i unwind label %bb.x, !noalias !16773

.noexc78.i:                                       ; preds = %bb.t
  %i.dg = load i8, ptr %i.ao, align 8, !range !89, !noalias !16783, !noundef !8
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.thread.i, label %bb.u

.thread.i:                                        ; preds = %.noexc78.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !16783, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !16783
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit98.i

bb.u:                                             ; preds = %.noexc78.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !range !89, !noalias !16783, !noundef !8
  %i.dm = trunc nuw i8 %i.dl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !16783
  br i1 %i.dm, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.dn = load ptr, ptr %i.az, align 8, !alias.scope !16784, !noalias !16747, !nonnull !8, !align !216, !noundef !8
  %i.do = invoke { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2E_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.dn)
          to label %bb.y unwind label %bb.x, !noalias !16773 ; 2 uses

bb.w:                                             ; preds = %bb.n
  %i.dp = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull @197, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.bd unwind label %bb.s, !noalias !16773

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit94.i, %bb.x
  %.pn71.i = phi { ptr, i32 } [ %i.dq, %bb.x ], [ %.pn69.i, %bb.ad ], [ %.pn69.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit94.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ax) #42
          to label %bb.r unwind label %bb.bc, !noalias !16773

bb.x:                                             ; preds = %bb.bb, %bb.ac, %bb.v, %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.y:                                             ; preds = %bb.v
  %i.dr = extractvalue { i64, ptr } %i.do, 0
  %i.ds = extractvalue { i64, ptr } %i.do, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.dt = trunc i64 %i.dr to i1
  br i1 %i.dt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit98.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.ds, ptr %i.aw, align 8, !noalias !16747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !16747
  call void @llvm.experimental.noalias.scope.decl(metadata !16785)
  call void @llvm.experimental.noalias.scope.decl(metadata !16788)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !16791
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc83.i unwind label %bb.ae, !noalias !16773

.noexc83.i:                                       ; preds = %bb.z
  %i.du = load i8, ptr %i.an, align 8, !range !89, !noalias !16791, !noundef !8
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %.thread127.i, label %bb.aa

.thread127.i:                                     ; preds = %.noexc83.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !16791, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !16791
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit96.i

bb.aa:                                            ; preds = %.noexc83.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !range !89, !noalias !16791, !noundef !8
  %i.ea = trunc nuw i8 %i.dz to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !16791
  br i1 %i.ea, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load ptr, ptr %i.az, align 8, !alias.scope !16792, !noalias !16747, !nonnull !8, !align !216, !noundef !8
  %i.ec = invoke { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2E_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.eb)
          to label %bb.af unwind label %bb.ae, !noalias !16773 ; 2 uses

bb.ac:                                            ; preds = %bb.u
  %i.ed = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 2, ptr noundef nonnull @197, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit98.i unwind label %bb.x, !noalias !16773

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit94.i: ; preds = %bb.ay, %.body.i, %bb.ae
  %.pn69.i = phi { ptr, i32 } [ %i.eh, %bb.ae ], [ %.pn67.i, %bb.ay ], [ %.pn67.i, %.body.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16793)
  call void @llvm.experimental.noalias.scope.decl(metadata !16796)
  %i.ee = load ptr, ptr %i.aw, align 8, !alias.scope !16799, !noalias !16747, !nonnull !8, !noundef !8
  %i.ef = atomicrmw sub ptr %i.ee, i64 1 release, align 8, !noalias !16800
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit94.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bc, !noalias !16773

bb.ae:                                            ; preds = %bb.ba, %bb.al, %bb.ab, %bb.z
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit94.i

bb.af:                                            ; preds = %bb.ab
  %i.ei = extractvalue { i64, ptr } %i.ec, 0
  %i.ej = extractvalue { i64, ptr } %i.ec, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  %i.ek = trunc i64 %i.ei to i1
  br i1 %i.ek, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit96.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.ej, ptr %i.av, align 8, !noalias !16747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !16747
  store i64 -9223372036854775808, ptr %i.au, align 8, !noalias !16747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !16747
  store ptr null, ptr %i.at, align 16, !noalias !16747
  call void @llvm.experimental.noalias.scope.decl(metadata !16801)
  call void @llvm.experimental.noalias.scope.decl(metadata !16804)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !16807
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc87.i.a unwind label %bb.am, !noalias !16773

.noexc87.i.a:                                     ; preds = %bb.ag
  %i.el = load i8, ptr %i.am, align 8, !range !89, !noalias !16807, !noundef !8
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.noexc87.i.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !16807, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !16807
  br label %bb.ar

bb.ai:                                            ; preds = %.noexc87.i.a
  %i.ep = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !range !89, !noalias !16807, !noundef !8
  %i.er = trunc nuw i8 %i.eq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !16807
  br i1 %i.er, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !16807
  %i.es = load ptr, ptr %i.az, align 8, !alias.scope !16810, !noalias !16811, !nonnull !8, !align !216, !noundef !8
  invoke void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3r_4read9SliceReadEEB1t_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.es)
          to label %.noexc88.i unwind label %bb.am, !noalias !16773

.noexc88.i:                                       ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.eu = load i8, ptr %i.et, align 8, !range !3878, !noalias !16807, !noundef !8 ; 2 uses
  %i.ev = icmp eq i8 %i.eu, 3
  %i.ew = load ptr, ptr %i.al, align 8, !noalias !16812 ; 2 uses
  br i1 %i.ev, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.noexc88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !16807
  br label %bb.ar

bb.al:                                            ; preds = %bb.aa
  %i.ex = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 3, ptr noundef nonnull @197, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit96.i unwind label %bb.ae, !noalias !16773

bb.am:                                            ; preds = %bb.aq, %bb.aj, %bb.ag
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16813)
  %i.ez = load ptr, ptr %i.at, align 16, !alias.scope !16813, !noalias !16747, !noundef !8 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = atomicrmw sub ptr %i.ez, i64 1 release, align 8, !noalias !16816
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i unwind label %bb.bc, !noalias !16773

bb.ap:                                            ; preds = %.noexc88.i
  %.sroa.8105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8105.0..sroa_idx.i, i64 40, i1 false), !noalias !16821
  %.sroa.14.0..sroa_idx107.i = getelementptr inbounds nuw i8, ptr %i.al, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.0..sroa_idx107.i, i64 7, i1 false), !noalias !16821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !16807
  %i.fd = load i64, ptr %i.ay, align 8, !range !64, !noalias !16747, !noundef !8
  %i.fe = load ptr, ptr %i.cr, align 8, !noalias !16747, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 40, i1 false), !noalias !16821
  %i.ff = load ptr, ptr %i.aw, align 8, !noalias !16747, !nonnull !8, !noundef !8
  %i.fg = load ptr, ptr %i.av, align 8, !noalias !16747, !nonnull !8, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !16821
  %i.fh = load <2 x ptr>, ptr %i.at, align 16, !noalias !16747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !16747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !16747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !16747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !16747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !16747
  br label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit

bb.aq:                                            ; preds = %bb.ai
  %i.fi = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 4, ptr noundef nonnull @197, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.ar unwind label %bb.am, !noalias !16773

bb.ar:                                            ; preds = %bb.aq, %bb.ak, %bb.ah
  %.sink152.i = phi ptr [ %i.eo, %bb.ah ], [ %i.ew, %bb.ak ], [ %i.fi, %bb.aq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16822)
  %i.fj = load ptr, ptr %i.at, align 16, !alias.scope !16822, !noalias !16747, !noundef !8 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit91.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = atomicrmw sub ptr %i.fj, i64 1 release, align 8, !noalias !16825
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit91.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit91.i unwind label %bb.au, !noalias !16773

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i: ; preds = %bb.au, %bb.ao, %bb.an, %bb.am
  %.pn.i = phi { ptr, i32 } [ %i.fn, %bb.au ], [ %i.ey, %bb.ao ], [ %i.ey, %bb.am ], [ %i.ey, %bb.an ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au) #42
          to label %.body.i unwind label %bb.bc, !noalias !16773

bb.au:                                            ; preds = %bb.at
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit91.i: ; preds = %bb.at, %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !16747
  %i.fo = load i64, ptr %i.au, align 8, !range !65, !alias.scope !16830, !noalias !16747, !noundef !8
  %i.fp = icmp eq i64 %i.fo, -9223372036854775808
  br i1 %i.fp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.av

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit91.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.aw, !noalias !16773

bb.aw:                                            ; preds = %bb.av
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body.i unwind label %bb.ax, !noalias !16773

bb.ax:                                            ; preds = %bb.aw
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !16773
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.az, !noalias !16773

.body.i:                                          ; preds = %bb.az, %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i
  %.pn67.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i ], [ %i.fv, %bb.az ], [ %i.fq, %bb.aw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16833)
  call void @llvm.experimental.noalias.scope.decl(metadata !16836)
  %i.fs = load ptr, ptr %i.av, align 8, !alias.scope !16839, !noalias !16747, !nonnull !8, !noundef !8
  %i.ft = atomicrmw sub ptr %i.fs, i64 1 release, align 8, !noalias !16840
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit94.i

bb.ay:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit94.i unwind label %bb.bc, !noalias !16773

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !16747
  call void @llvm.experimental.noalias.scope.decl(metadata !16841)
  call void @llvm.experimental.noalias.scope.decl(metadata !16844)
  %i.fw = load ptr, ptr %i.av, align 8, !alias.scope !16847, !noalias !16747, !nonnull !8, !noundef !8
  %i.fx = atomicrmw sub ptr %i.fw, i64 1 release, align 8, !noalias !16848
  %i.fy = icmp eq i64 %i.fx, 1
  br i1 %i.fy, label %bb.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit96.i

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit96.i unwind label %bb.ae, !noalias !16773

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit96.i: ; preds = %.thread127.i, %bb.af, %bb.al, %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.258 = phi ptr [ %.sink152.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sink152.i, %bb.ba ], [ %i.ej, %bb.af ], [ %i.dx, %.thread127.i ], [ %i.ex, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !16747
  call void @llvm.experimental.noalias.scope.decl(metadata !16849)
  call void @llvm.experimental.noalias.scope.decl(metadata !16852)
  %i.fz = load ptr, ptr %i.aw, align 8, !alias.scope !16855, !noalias !16747, !nonnull !8, !noundef !8
  %i.ga = atomicrmw sub ptr %i.fz, i64 1 release, align 8, !noalias !16856
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit98.i

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit96.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit98.i unwind label %bb.x, !noalias !16773

bb.bc:                                            ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i, %bb.ao, %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.r
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !16773
end_hunk_2
begin_hunk_3_@_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core:bb.a
  store i32 1610612768, ptr %i.e, align 8, !noalias !19545
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !19545
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !19545
  store ptr %i.c, ptr %i.b, align 8, !noalias !19545
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1212, ptr %i.f, align 8, !noalias !19545
  %i.g = invoke noundef zeroext i1 @_RNvXs3_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !19552

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.e, !noalias !19552

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g, !prof !3

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1213, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @517, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1215) #41
          to label %.noexc.i.i unwind label %bb.b, !noalias !19552

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !19552
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.h, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) #42
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !19553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19545
  %i.k = invoke noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0)
  ret ptr %i.k

bb.i:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19554
  store i64 0, ptr %i.c, align 8, !noalias !19554
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !19554
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !19554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19554
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.e, align 8, !noalias !19554
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !19554
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !19554
  store ptr %i.c, ptr %i.b, align 8, !noalias !19554
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1212, ptr %i.f, align 8, !noalias !19554
  %i.g = invoke noundef zeroext i1 @_RNvXs_NtNtCsbvkFyIu7lgC_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !19561

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %bb.f unwind label %bb.e, !noalias !19561

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core.exit, !prof !3

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1213, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @517, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1215) #41
          to label %.noexc.i.i unwind label %bb.b, !noalias !19561

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !19561
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !19562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19554
  %i.j = call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.j
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19566)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19569
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !19569
  %i.c = load i64, ptr %i.a, align 8, !range !64, !noalias !19569, !noundef !8
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !65, !noalias !19569, !noundef !8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !3

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !19569
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #41, !noalias !19569
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !19569, !nonnull !8, !noundef !8 ; 2 uses
  %i.j = icmp ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19569
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !19573
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !19574
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !19574
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !19574
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(16) %0)
  %i.b = load i8, ptr %i.a, align 8, !range !89, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !89, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !nonnull !8, !align !216, !noundef !8
  %i.j = tail call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2C_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.i) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %. = and i64 %i.k, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.5.0 = phi ptr [ %i.e, %bb.b ], [ %i.l, %bb.d ], [ null, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ %., %bb.d ], [ 0, %bb.c ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.j, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.k = load i8, ptr %i.j, align 8, !range !89, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !align !216, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !89, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.s, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19587)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 89 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !19590)
  %i.aa = load i8, ptr %i.v, align 8, !range !89, !alias.scope !19593, !noalias !19594, !noundef !8
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19601
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesRShEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.x), !noalias !19594
  %i.ac = load i8, ptr %i.e, align 8, !range !466, !noalias !19601, !noundef !8
  switch i8 %i.ac, label %bb.j [
    i8 2, label %bb.k
    i8 0, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  ], !prof !9989

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ad = load i8, ptr %i.y, align 1, !noalias !19601, !noundef !8 ; 2 uses
  store i8 1, ptr %i.v, align 8, !alias.scope !19593, !noalias !19594
  store i8 %i.ad, ptr %i.w, align 1, !alias.scope !19593, !noalias !19594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19601
  br label %bb.h

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i.i.i.i: ; preds = %bb.f
  %i.ae = load i8, ptr %i.w, align 1, !alias.scope !19593, !noalias !19594, !noundef !8
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i.i.i.i, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.af = phi i8 [ %i.ae, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i.i.i.i ], [ %i.ad, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ]
  switch i8 %i.af, label %.loopexit.i.i.i.i [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 91, label %.loopexit30.i.i.i.i
  ], !prof !9771

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u), !noalias !19602
  br label %bb.f

bb.j:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.z, align 8, !noalias !19601, !nonnull !8, !noundef !8
  %i.ah = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ag), !noalias !19594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19601
  br label %bb.ai

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !19603
  store i64 5, ptr %i.i, align 8, !noalias !19603
  call void @llvm.experimental.noalias.scope.decl(metadata !19604)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.val.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !19607, !noalias !19608, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.val2.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !19607, !noalias !19608, !noundef !8
  %i.ak = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i), !noalias !19610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !19603
  br label %bb.ai

.loopexit30.i.i.i.i:                              ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 4 uses
  %i.am = load i8, ptr %i.al, align 8, !alias.scope !19611, !noalias !19612, !noundef !8
  %i.an = add i8 %i.am, -1                        ; 2 uses
  store i8 %i.an, ptr %i.al, align 8, !alias.scope !19611, !noalias !19612
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.m, !prof !3

.loopexit.i.i.i.i:                                ; preds = %bb.h
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167), !noalias !19612
  br label %bb.ag

bb.l:                                             ; preds = %.loopexit30.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19603
  store i64 24, ptr %i.h, align 8, !noalias !19603
  call void @llvm.experimental.noalias.scope.decl(metadata !19613)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.val.i16.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !19616, !noalias !19617, !noundef !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.val2.i17.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !19616, !noalias !19617, !noundef !8
  %i.as = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.val.i16.i.i.i.i, i64 noundef %.val2.i17.i.i.i.i), !noalias !19619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19603
  br label %bb.ai

bb.m:                                             ; preds = %.loopexit30.i.i.i.i
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u), !noalias !19612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19603
  store ptr %i.t, ptr %i.d, align 8, !noalias !19620
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 1, ptr %i.at, align 8, !noalias !19620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19620
  call fastcc void @_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(16) %i.d), !noalias !19624
  %i.au = load i8, ptr %i.c, align 8, !range !89, !noalias !19620, !noundef !8
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !19620, !nonnull !8, !align !216, !noundef !8
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !range !89, !noalias !19620, !noundef !8
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bc = load i8, ptr %i.bb, align 2, !noalias !19620
  br i1 %i.ba, label %bb.p, label %bb.r, !prof !215

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19620
  call void @llvm.experimental.noalias.scope.decl(metadata !19625)
  call void @llvm.experimental.noalias.scope.decl(metadata !19628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19631
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !19624
  %i.bd = load i8, ptr %i.b, align 8, !range !89, !noalias !19631, !noundef !8
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i, label %bb.q

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i: ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !19631, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19631
  br label %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3r_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !range !89, !noalias !19631, !noundef !8
  %i.bj = trunc nuw i8 %i.bi to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19631
  br i1 %i.bj, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, label %bb.u

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.q
  %i.bk = load ptr, ptr %i.d, align 8, !alias.scope !19632, !noalias !19620, !nonnull !8, !align !216, !noundef !8
  %i.bl = call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2C_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bk), !noalias !19633 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  %i.bo = trunc i64 %i.bm to i1
  br i1 %i.bo, label %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3r_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.bp = call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167), !noalias !19624
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.sink.i.i.i.i.i = phi ptr [ %i.bp, %bb.r ], [ %i.ax, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19620
  br label %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3r_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.t:                                             ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %.sroa.022.0.insert.ext.i.i.i.i = zext i8 %i.bc to i64
  %i.bq = inttoptr i64 %.sroa.022.0.insert.ext.i.i.i.i to ptr
  br label %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3r_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.u:                                             ; preds = %bb.q
  %i.br = call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167), !noalias !19624
  br label %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3r_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3r_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  %.sroa.823.0.i.i.i.i = phi ptr [ null, %bb.s ], [ null, %bb.u ], [ %i.bn, %bb.t ], [ null, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ], [ null, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i ]
  %.sroa.022.0.i.i.i.i = phi ptr [ %.sink.i.i.i.i.i, %bb.s ], [ %i.br, %bb.u ], [ %i.bq, %bb.t ], [ %i.bn, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ], [ %i.bg, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19603
  %i.bs = load i8, ptr %i.al, align 8, !alias.scope !19611, !noalias !19612, !noundef !8
  %i.bt = add i8 %i.bs, 1
  store i8 %i.bt, ptr %i.al, align 8, !alias.scope !19611, !noalias !19612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19603
  store ptr %.sroa.022.0.i.i.i.i, ptr %i.f, align 8, !noalias !19603
  %.sroa.823.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.823.0.i.i.i.i, ptr %.sroa.823.0..sroa_idx.i.i.i.i, align 8, !noalias !19603
  %i.bu = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.t)
          to label %bb.w unwind label %bb.v, !noalias !19612 ; 10 uses

bb.v:                                             ; preds = %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3r_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.f) #42
          to label %common.resume.i.i.i.i unwind label %bb.aa, !noalias !19612

bb.w:                                             ; preds = %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3r_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !19603
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.bu, ptr %i.bw, align 8, !noalias !19603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19603
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !19603, !noundef !8 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.y

.thread64.i.i.i.i:                                ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19603
  br label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.w
  %i.ca = load ptr, ptr %i.g, align 8, !noalias !19603, !nonnull !8, !align !216, !noundef !8
  %.not80.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not80.i.i.i.i, label %.thread.i.i.i, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cb = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !19634
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.z, label %.thread64.i.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bx) #45, !noalias !19612
  br label %.thread64.i.i.i.i

bb.aa:                                            ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !19612
  unreachable

.thread.i.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19603
  br label %bb.ag

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19641)
  call void @llvm.experimental.noalias.scope.decl(metadata !19644)
  %i.ce = load i64, ptr %i.bu, align 8, !range !3250, !alias.scope !19647, !noalias !19648, !noundef !8
  switch i64 %i.ce, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i [
    i64 0, label %bb.ac
    i64 1, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !19647, !noalias !19648, !noundef !8 ; 2 uses
  %i.cg = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !19647, !noalias !19648, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i.i, i64 noundef 1) #46, !noalias !19651
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.af, !noalias !19648

common.resume.i.i.i.i:                            ; preds = %bb.af, %bb.v
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.cj, %bb.af ], [ %i.bv, %bb.v ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef 40, i64 noundef 8) #46, !noalias !19648
  br label %common.resume.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef 40, i64 noundef 8) #46, !noalias !19648
  br label %.thread.i.i.i

bb.ag:                                            ; preds = %.thread.i.i.i, %.thread64.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.05.1.i.i.i.i = phi ptr [ %i.ca, %.thread.i.i.i ], [ %i.ap, %.loopexit.i.i.i.i ], [ %i.bu, %.thread64.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.val.i.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !19611, !noalias !19612
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.val15.i.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !19611, !noalias !19612
  %i.cm = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadRShEE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.05.1.i.i.i.i, i64 %.val.i.i.i.i, i64 %.val15.i.i.i.i), !noalias !19612
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aj, %bb.ai, %bb.d, %bb.b
  ret void

bb.ai:                                            ; preds = %bb.j, %bb.k, %bb.ag, %bb.l
  %.sroa.0.0.ph = phi ptr [ %i.ak, %bb.k ], [ %i.ah, %bb.j ], [ %i.as, %bb.l ], [ %i.cm, %bb.ag ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.ph, ptr %i.cn, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ah

bb.aj:                                            ; preds = %bb.x
  %i.co = load i8, ptr %i.g, align 8, !noalias !19603, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19603
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.co, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.by, ptr %i.cq, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedNtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !89, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !216, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i8 23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !89, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 22, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8
  call void @_RINvXsi_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2h_4read7StrReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.k)
  %i.l = load i8, ptr %i.a, align 8, !range !3232, !noundef !8
  %i.m = icmp eq i8 %i.l, 22
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !align !216, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_3
begin_hunk_4_@_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedNtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECs14kWLkQVSKO_14deltalake_core:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataINtNtB2j_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot5serde13FileMetaSerdeEEEB3r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !89, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !216, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -9223372036854775806, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !89, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8
  call void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot5serde13FileMetaSerdeENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3a_4read9SliceReadEEB1t_(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !69, !noundef !8
  %i.m = icmp eq i64 %i.l, -9223372036854775807
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !align !216, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -9223372036854775806, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot5serde13FileMetaSerdeEEEB3B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !89, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !216, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !89, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8
  call void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot5serde13FileMetaSerdeENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB35_4read9SliceReadEEB1o_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !65, !noundef !8
  %i.m = icmp eq i64 %i.l, -9223372036854775808
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !align !216, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !89, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !216, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !89, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8
  call void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1T_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !65, !noundef !8
  %i.m = icmp eq i64 %i.l, -9223372036854775808
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !align !216, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(16) %0)
  %i.b = load i8, ptr %i.a, align 8, !range !89, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !89, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !nonnull !8, !align !216, !noundef !8
  %i.j = tail call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2C_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %. = and i64 %i.k, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.5.0 = phi ptr [ %i.e, %bb.b ], [ %i.l, %bb.d ], [ null, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ %., %bb.d ], [ 0, %bb.c ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEEEB3A_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(16) %0)
  %i.b = load i8, ptr %i.a, align 8, !range !89, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !89, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !nonnull !8, !align !216, !noundef !8
  %i.j = tail call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2T_4read9SliceReadEEB1o_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %. = and i64 %i.k, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.5.0 = phi ptr [ %i.e, %bb.b ], [ %i.l, %bb.d ], [ null, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ %., %bb.d ], [ 0, %bb.c ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !89, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !216, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !89, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8
  call void @_RINvXsf_Cseo6ZV82fEK1_3urlNtB6_3UrlNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1A_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !65, !noundef !8
  %i.m = icmp eq i64 %i.l, -9223372036854775808
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !align !216, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !89, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !216, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !89, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8
  call void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !65, !noundef !8
  %i.m = icmp eq i64 %i.l, -9223372036854775808
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !align !216, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !89, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !216, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -9223372036854775782, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !89, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8
  call void @_RINvXNvNtCs8ulvy0Wg6Ot_12delta_kernel14table_featuress_1__NtB5_12TableFeatureNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2g_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !19652, !noundef !8
  %i.m = icmp eq i64 %i.l, -9223372036854775783
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !align !216, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -9223372036854775782, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !89, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !216, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !89, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
end_hunk_4
begin_hunk_5_@_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot5serde13FileMetaSerdeEEB34_:bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !89, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8
  call void @_RINvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot5serdes_1__NtB5_13FileMetaSerdeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2t_4read9SliceReadEEBb_(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !65, !noundef !8
  %i.m = icmp eq i64 %i.l, -9223372036854775808
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !align !216, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.j = load i8, ptr %i.i, align 8, !range !89, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !align !216, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !89, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.r, align 8
  store i64 0, ptr %0, align 8
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19665)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !19668, !noalias !19671, !noundef !8 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !19678, !noalias !19679 ; 2 uses
  %i.w = icmp ult i64 %.promoted.i.i.i.i.i, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !19668, !noalias !19671, !nonnull !8, !noundef !8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.z = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19680)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !19681, !noundef !8
  switch i8 %i.ab, label %bb.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 91, label %bb.h
  ], !prof !9771

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.ac = add i64 %i.z, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !19682, !noalias !19679
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ac, %i.v
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.f

.loopexit.i.i.i.i:                                ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19685
  store i64 5, ptr %i.h, align 8, !noalias !19685
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !19686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19685
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 8, !alias.scope !19687, !noalias !19686, !noundef !8
  %i.ag = add i8 %i.af, -1                        ; 2 uses
  store i8 %i.ag, ptr %i.ae, align 8, !alias.scope !19687, !noalias !19686
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !3

bb.i:                                             ; preds = %bb.f
  %i.ai = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167), !noalias !19686
  br label %bb.ae

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19685
  store i64 24, ptr %i.g, align 8, !noalias !19685
  %i.aj = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !19686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19685
  br label %bb.ag

bb.k:                                             ; preds = %bb.h
  %i.ak = add i64 %i.z, 1
  store i64 %i.ak, ptr %i.t, align 8, !alias.scope !19688, !noalias !19686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19685
  store ptr %i.s, ptr %i.d, align 8, !noalias !19691
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 1, ptr %i.al, align 8, !noalias !19691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19691
  call fastcc void @_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(16) %i.d), !noalias !19695
  %i.am = load i8, ptr %i.c, align 8, !range !89, !noalias !19691, !noundef !8
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !19691, !nonnull !8, !align !216, !noundef !8
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !range !89, !noalias !19691, !noundef !8
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.au = load i8, ptr %i.at, align 2, !noalias !19691
  br i1 %i.as, label %bb.n, label %bb.p, !prof !215

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19691
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19699)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19702
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !19695
  %i.av = load i8, ptr %i.b, align 8, !range !89, !noalias !19702, !noundef !8
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i, label %bb.o

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i: ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !19702, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19702
  br label %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3r_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !range !89, !noalias !19702, !noundef !8
  %i.bb = trunc nuw i8 %i.ba to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19702
  br i1 %i.bb, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, label %bb.s

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bc = load ptr, ptr %i.d, align 8, !alias.scope !19703, !noalias !19691, !nonnull !8, !align !216, !noundef !8
  %i.bd = tail call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2C_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bc), !noalias !19704 ; 2 uses
  %i.be = extractvalue { i64, ptr } %i.bd, 0
  %i.bf = extractvalue { i64, ptr } %i.bd, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  %i.bg = trunc i64 %i.be to i1
  br i1 %i.bg, label %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3r_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.bh = call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167), !noalias !19695
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.sink.i.i.i.i.i = phi ptr [ %i.bh, %bb.p ], [ %i.ap, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19691
  br label %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3r_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.r:                                             ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %.sroa.016.0.insert.ext.i.i.i.i = zext i8 %i.au to i64
  %i.bi = inttoptr i64 %.sroa.016.0.insert.ext.i.i.i.i to ptr
  br label %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3r_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.bj = call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167), !noalias !19695
  br label %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3r_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3r_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  %.sroa.8.017.i.i.i.i = phi ptr [ null, %bb.q ], [ null, %bb.s ], [ %i.bf, %bb.r ], [ null, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ], [ null, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i ]
  %.sroa.016.0.i.i.i.i = phi ptr [ %.sink.i.i.i.i.i, %bb.q ], [ %i.bj, %bb.s ], [ %i.bi, %bb.r ], [ %i.bf, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ], [ %i.ay, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19685
  %i.bk = load i8, ptr %i.ae, align 8, !alias.scope !19687, !noalias !19686, !noundef !8
  %i.bl = add i8 %i.bk, 1
  store i8 %i.bl, ptr %i.ae, align 8, !alias.scope !19687, !noalias !19686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19685
  store ptr %.sroa.016.0.i.i.i.i, ptr %i.e, align 8, !noalias !19685
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.8.017.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !19685
  %i.bm = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %bb.u unwind label %bb.t, !noalias !19686 ; 10 uses

bb.t:                                             ; preds = %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3r_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.e) #42
          to label %common.resume.i.i.i.i unwind label %bb.y, !noalias !19686

bb.u:                                             ; preds = %_RINvXNvXs30_NtNtCs1gOyXocuPRE_10serde_core2de5implsTppENtBc_11Deserialize11deserializeINtB3_12TupleVisitoraINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtBc_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3r_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !19685
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.bm, ptr %i.bo, align 8, !noalias !19685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19685
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !19685, !noundef !8 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.w

.thread32.i.i.i.i:                                ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19685
  br label %bb.ae

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.u
  %i.bs = load ptr, ptr %i.f, align 8, !noalias !19685, !nonnull !8, !align !216, !noundef !8
  %.not38.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not38.i.i.i.i, label %.thread.i.i.i, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bt = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !19705
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.x, label %.thread32.i.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bp) #45, !noalias !19686
  br label %.thread32.i.i.i.i

bb.y:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !19686
  unreachable

.thread.i.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19685
  br label %bb.ae

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19712)
  call void @llvm.experimental.noalias.scope.decl(metadata !19715)
  %i.bw = load i64, ptr %i.bm, align 8, !range !3250, !alias.scope !19718, !noalias !19719, !noundef !8
  switch i64 %i.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i [
    i64 0, label %bb.aa
    i64 1, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !19718, !noalias !19719, !noundef !8 ; 2 uses
  %i.by = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !19718, !noalias !19719, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i.i, i64 noundef 1) #46, !noalias !19722
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ca)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.ad, !noalias !19719

common.resume.i.i.i.i:                            ; preds = %bb.ad, %bb.t
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.ad ], [ %i.bn, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 40, i64 noundef 8) #46, !noalias !19719
  br label %common.resume.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 40, i64 noundef 8) #46, !noalias !19719
  br label %.thread.i.i.i

bb.ae:                                            ; preds = %.thread.i.i.i, %.thread32.i.i.i.i, %bb.i
  %.sroa.05.1.i.i.i.i = phi ptr [ %i.bs, %.thread.i.i.i ], [ %i.ai, %bb.i ], [ %i.bm, %.thread32.i.i.i.i ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.05.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s), !noalias !19686
  br label %bb.ag

bb.af:                                            ; preds = %bb.ah, %bb.ag, %bb.d, %bb.b
  ret void

bb.ag:                                            ; preds = %bb.ae, %.loopexit.i.i.i.i, %bb.j
  %.sroa.0.0.ph = phi ptr [ %i.aj, %bb.j ], [ %i.ad, %.loopexit.i.i.i.i ], [ %i.cc, %bb.ae ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.ph, ptr %i.cd, align 8
  store i64 1, ptr %0, align 8
  br label %bb.af

bb.ah:                                            ; preds = %bb.v
  %i.ce = load i8, ptr %i.f, align 8, !noalias !19685, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19685
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bq, ptr %i.cg, align 8
  store i64 0, ptr %0, align 8
  br label %bb.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDatahEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 21 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.j, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.k = load i8, ptr %i.j, align 8, !range !89, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !align !216, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !89, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.s, align 1
  store i8 0, ptr %0, align 8
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19735)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
end_hunk_5
begin_hunk_6_@_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2z_8DataTypeNtB1n_11Deserialize11deserializeNtB2u_9___VisitorNtB1n_7Visitor10visit_enums0_9___VisitorECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.al:                                            ; preds = %bb.ai
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.am, !noalias !20344

bb.am:                                            ; preds = %bb.al
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef 40, i64 noundef 8) #46, !noalias !20344
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef 40, i64 noundef 8) #46, !noalias !20344
  br label %.thread45.thread83.i

bb.an:                                            ; preds = %.thread45.thread83.i, %.thread45.thread.i, %bb.j
  %.sroa.88.1.i = phi ptr [ %i.ck, %.thread45.thread83.i ], [ %i.ai, %bb.j ], [ %i.ce, %.thread45.thread.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load i64, ptr %i.cs, align 8, !alias.scope !20257, !noalias !20254
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val27.i = load i64, ptr %i.ct, align 8, !alias.scope !20257, !noalias !20254
  %i.cu = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadRShEE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.88.1.i, i64 %.val.i, i64 %.val27.i), !noalias !20254
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !alias.scope !20254, !noalias !20257
  store i8 41, ptr %0, align 8, !alias.scope !20254, !noalias !20257
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums0_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.ao:                                            ; preds = %bb.af
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.217.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.214.0..sroa_idx.i, i64 7, i1 false), !noalias !20257
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !20271
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20271
  store i8 %i.ch, ptr %0, align 8, !alias.scope !20254, !noalias !20257
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !20254, !noalias !20257
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !20254, !noalias !20257
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums0_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums0_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.an, %bb.ao, %bb.h, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2z_8DataTypeNtB1n_11Deserialize11deserializeNtB2u_9___VisitorNtB1n_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(104) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20353)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !20356)
  %i.q = load i8, ptr %i.l, align 8, !range !89, !alias.scope !20359, !noalias !20360, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20363
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesRShEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.n), !noalias !20360
  %i.s = load i8, ptr %i.f, align 8, !range !466, !noalias !20363, !noundef !8
  switch i8 %i.s, label %bb.f [
    i8 2, label %bb.g
    i8 0, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i
  ], !prof !9989

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.c
  %i.t = load i8, ptr %i.o, align 1, !noalias !20363, !noundef !8 ; 2 uses
  store i8 1, ptr %i.l, align 8, !alias.scope !20359, !noalias !20360
  store i8 %i.t, ptr %i.m, align 1, !alias.scope !20359, !noalias !20360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20363
  br label %bb.d

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i: ; preds = %bb.b
  %i.u = load i8, ptr %i.m, align 1, !alias.scope !20359, !noalias !20360, !noundef !8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.v = phi i8 [ %i.u, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i ], [ %i.t, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  switch i8 %i.v, label %bb.j [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 91, label %bb.i
  ], !prof !9771

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k), !noalias !20364
  br label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.p, align 8, !noalias !20363, !nonnull !8, !noundef !8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.w), !noalias !20360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20363
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20365
  store i64 5, ptr %i.j, align 8, !noalias !20365
  call void @llvm.experimental.noalias.scope.decl(metadata !20366)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load i64, ptr %i.y, align 8, !alias.scope !20369, !noalias !20370, !noundef !8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i.i = load i64, ptr %i.z, align 8, !alias.scope !20369, !noalias !20370, !noundef !8
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %.val.i.i, i64 noundef %.val2.i.i), !noalias !20372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20365
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi ptr [ %i.aa, %bb.g ], [ %i.x, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.ab, align 8, !alias.scope !20348, !noalias !20351
  store i8 41, ptr %0, align 8, !alias.scope !20348, !noalias !20351
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 8, !alias.scope !20351, !noalias !20348, !noundef !8
  %i.ae = add i8 %i.ad, -1                        ; 2 uses
  store i8 %i.ae, ptr %i.ac, align 8, !alias.scope !20351, !noalias !20348
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.l, !prof !3

bb.j:                                             ; preds = %bb.d
  %i.ag = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245), !noalias !20348
  br label %bb.ah

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20365
  store i64 24, ptr %i.i, align 8, !noalias !20365
  call void @llvm.experimental.noalias.scope.decl(metadata !20373)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i28.i = load i64, ptr %i.ah, align 8, !alias.scope !20376, !noalias !20377, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i29.i = load i64, ptr %i.ai, align 8, !alias.scope !20376, !noalias !20377, !noundef !8
  %i.aj = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %.val.i28.i, i64 noundef %.val2.i29.i), !noalias !20379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20365
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !20348, !noalias !20351
  store i8 41, ptr %0, align 8, !alias.scope !20348, !noalias !20351
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.i
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k), !noalias !20348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20365
  store ptr %1, ptr %i.e, align 8, !noalias !20380
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 1, ptr %i.al, align 8, !noalias !20380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20380
  call void @llvm.experimental.noalias.scope.decl(metadata !20384)
  call void @llvm.experimental.noalias.scope.decl(metadata !20387)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20390
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !20391
  %i.am = load i8, ptr %i.c, align 8, !range !89, !noalias !20390, !noundef !8
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.m

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !20390, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20390
  br label %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !range !89, !noalias !20390, !noundef !8
  %i.as = trunc nuw i8 %i.ar to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20390
  br i1 %i.as, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.q

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.m
  %i.at = load ptr, ptr %i.e, align 8, !alias.scope !20392, !noalias !20380, !nonnull !8, !align !216, !noundef !8
  %i.au = call { i64, ptr } @_RINvXs3n_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2J_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.at), !noalias !20393 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = extractvalue { i64, ptr } %i.au, 1      ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ax = trunc i64 %i.av to i1
  br i1 %i.ax, label %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.n

common.resume.i:                                  ; preds = %bb.ag, %bb.x, %bb.v, %bb.r
  %common.resume.op.i = phi { ptr, i32 } [ %i.bi, %bb.r ], [ %i.ce, %bb.ag ], [ %i.bn, %bb.v ], [ %i.bs, %bb.x ]
  resume { ptr, i32 } %common.resume.op.i

bb.n:                                             ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  store ptr %i.aw, ptr %i.d, align 8, !noalias !20380
  call void @llvm.experimental.noalias.scope.decl(metadata !20394)
  call void @llvm.experimental.noalias.scope.decl(metadata !20397)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20400
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc.i.i unwind label %bb.r, !noalias !20391

.noexc.i.i:                                       ; preds = %bb.n
  %i.ay = load i8, ptr %i.b, align 8, !range !89, !noalias !20400, !noundef !8
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.thread37.i.i, label %bb.o

.thread37.i.i:                                    ; preds = %.noexc.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !20400, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20400
  br label %bb.u

bb.o:                                             ; preds = %.noexc.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !range !89, !noalias !20400, !noundef !8
  %i.be = trunc nuw i8 %i.bd to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20400
  br i1 %i.be, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %i.e, align 8, !alias.scope !20401, !noalias !20380, !nonnull !8, !align !216, !noundef !8
  %i.bg = invoke { i64, ptr } @_RINvXs3n_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2J_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bf)
          to label %bb.s unwind label %bb.r, !noalias !20391 ; 2 uses

bb.q:                                             ; preds = %bb.m
  %i.bh = call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @233, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166), !noalias !20391
  br label %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.r:                                             ; preds = %bb.t, %bb.p, %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.d) #42
          to label %common.resume.i unwind label %bb.w, !noalias !20391

bb.s:                                             ; preds = %bb.p
  %i.bj = extractvalue { i64, ptr } %i.bg, 0
  %i.bk = extractvalue { i64, ptr } %i.bg, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %i.bl = trunc i64 %i.bj to i1
  br i1 %i.bl, label %bb.u, label %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.t:                                             ; preds = %bb.o
  %i.bm = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull @233, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.u unwind label %bb.r, !noalias !20391

bb.u:                                             ; preds = %bb.t, %bb.s, %.thread37.i.i
  %.sink49.i.i = phi ptr [ %i.bk, %bb.s ], [ %i.bb, %.thread37.i.i ], [ %i.bm, %bb.t ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aw) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.v, !noalias !20402, !inline_history !6899

bb.v:                                             ; preds = %bb.u
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef 24, i64 noundef 8) #46, !noalias !20402, !inline_history !6899
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.u
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef 24, i64 noundef 8) #46, !noalias !20402, !inline_history !6899
  br label %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.w:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !20391
  unreachable

_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.s, %bb.q, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.035.0.i = phi i8 [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ 41, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 41, %bb.q ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 34, %bb.s ]
  %.sroa.736.0.i = phi ptr [ %i.ap, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ %.sink49.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.bh, %bb.q ], [ %i.aw, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.aw, %bb.s ]
  %.sroa.10.0.i = phi ptr [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ undef, %bb.q ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.bk, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20365
  %i.bp = load i8, ptr %i.ac, align 8, !alias.scope !20351, !noalias !20348, !noundef !8
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.ac, align 8, !alias.scope !20351, !noalias !20348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20365
  store i8 %.sroa.035.0.i, ptr %i.g, align 8, !noalias !20365
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.736.0.i, ptr %.sroa.736.0..sroa_idx.i, align 8, !noalias !20365
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !20365
  %i.br = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.y unwind label %bb.x, !noalias !20348 ; 10 uses

bb.x:                                             ; preds = %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #42
          to label %common.resume.i unwind label %bb.ab, !noalias !20348

bb.y:                                             ; preds = %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !20365
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.br, ptr %i.bt, align 8, !noalias !20365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20365
  %i.bu = load i8, ptr %i.h, align 8, !range !3519, !noalias !20365, !noundef !8 ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 41
  br i1 %i.bv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.ai, label %.thread43.thread.i

bb.aa:                                            ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !20365, !nonnull !8, !align !216, !noundef !8
  %.not55.i = icmp eq ptr %i.br, null
  br i1 %.not55.i, label %.thread43.thread80.i, label %bb.ac

.thread43.thread.i:                               ; preds = %bb.z
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h), !noalias !20348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20365
  br label %bb.ah

bb.ab:                                            ; preds = %bb.x
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !20348
  unreachable

.thread43.thread80.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20365
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !20405)
  call void @llvm.experimental.noalias.scope.decl(metadata !20408)
  %i.bz = load i64, ptr %i.br, align 8, !range !3250, !alias.scope !20411, !noalias !20412, !noundef !8
  switch i64 %i.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.ad
    i64 1, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !20411, !noalias !20412, !noundef !8 ; 2 uses
  %i.cb = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !20411, !noalias !20412, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #46, !noalias !20415
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.af:                                            ; preds = %bb.ac
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ag, !noalias !20412

bb.ag:                                            ; preds = %bb.af
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.br, i64 noundef 40, i64 noundef 8) #46, !noalias !20412
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.br, i64 noundef 40, i64 noundef 8) #46, !noalias !20412
  br label %.thread43.thread80.i

bb.ah:                                            ; preds = %.thread43.thread80.i, %.thread43.thread.i, %bb.j
  %.sroa.88.1.i = phi ptr [ %i.bx, %.thread43.thread80.i ], [ %i.ag, %bb.j ], [ %i.br, %.thread43.thread.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load i64, ptr %i.cf, align 8, !alias.scope !20351, !noalias !20348
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val27.i = load i64, ptr %i.cg, align 8, !alias.scope !20351, !noalias !20348
  %i.ch = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadRShEE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.88.1.i, i64 %.val.i, i64 %.val27.i), !noalias !20348
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !alias.scope !20348, !noalias !20351
  store i8 41, ptr %0, align 8, !alias.scope !20348, !noalias !20351
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.z
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.217.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.214.0..sroa_idx.i, i64 7, i1 false), !noalias !20351
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !20365
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20365
  store i8 %i.bu, ptr %0, align 8, !alias.scope !20348, !noalias !20351
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !20348, !noalias !20351
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !20348, !noalias !20351
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai, %bb.h, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2z_8DataTypeNtB1n_11Deserialize11deserializeNtB2u_9___VisitorNtB1n_7Visitor10visit_enums2_9___VisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(104) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20421)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !20424)
  %i.p = load i8, ptr %i.k, align 8, !range !89, !alias.scope !20427, !noalias !20428, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20431
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesRShEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m), !noalias !20428
  %i.r = load i8, ptr %i.e, align 8, !range !466, !noalias !20431, !noundef !8
  switch i8 %i.r, label %bb.f [
    i8 2, label %bb.g
    i8 0, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i
  ], !prof !9989

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.c
  %i.s = load i8, ptr %i.n, align 1, !noalias !20431, !noundef !8 ; 2 uses
  store i8 1, ptr %i.k, align 8, !alias.scope !20427, !noalias !20428
  store i8 %i.s, ptr %i.l, align 1, !alias.scope !20427, !noalias !20428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20431
  br label %bb.d

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i: ; preds = %bb.b
end_hunk_6
begin_hunk_7_@_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2z_8DataTypeNtB1n_11Deserialize11deserializeNtB2u_9___VisitorNtB1n_7Visitor10visit_enums5_9___VisitorECs14kWLkQVSKO_14deltalake_core:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ac, !noalias !20604

common.resume.i:                                  ; preds = %bb.ac, %bb.t
  %common.resume.op.i = phi { ptr, i32 } [ %i.bu, %bb.ac ], [ %i.bi, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i

bb.ac:                                            ; preds = %bb.ab
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef 40, i64 noundef 8) #46, !noalias !20604
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef 40, i64 noundef 8) #46, !noalias !20604
  br label %.thread45.thread82.i

bb.ad:                                            ; preds = %.thread45.thread82.i, %.thread45.thread.i, %bb.j
  %.sroa.88.1.i = phi ptr [ %i.bn, %.thread45.thread82.i ], [ %i.af, %bb.j ], [ %i.bh, %.thread45.thread.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load i64, ptr %i.bv, align 8, !alias.scope !20563, !noalias !20560
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val27.i = load i64, ptr %i.bw, align 8, !alias.scope !20563, !noalias !20560
  %i.bx = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadRShEE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.88.1.i, i64 %.val.i, i64 %.val27.i), !noalias !20560
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !alias.scope !20560, !noalias !20563
  store i8 41, ptr %0, align 8, !alias.scope !20560, !noalias !20563
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums5_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.ae:                                            ; preds = %bb.v
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.217.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.214.0..sroa_idx.i, i64 7, i1 false), !noalias !20563
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !20577
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20577
  store i8 %i.bk, ptr %0, align 8, !alias.scope !20560, !noalias !20563
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !20560, !noalias !20563
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !20560, !noalias !20563
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums5_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums5_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ad, %bb.ae, %bb.h, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2z_8DataTypeNtB1n_11Deserialize11deserializeNtB2u_9___VisitorNtB1n_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(104) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20613)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !20616)
  %i.r = load i8, ptr %i.m, align 8, !range !89, !alias.scope !20619, !noalias !20620, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20623
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesRShEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o), !noalias !20620
  %i.t = load i8, ptr %i.g, align 8, !range !466, !noalias !20623, !noundef !8
  switch i8 %i.t, label %bb.f [
    i8 2, label %bb.g
    i8 0, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i
  ], !prof !9989

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.c
  %i.u = load i8, ptr %i.p, align 1, !noalias !20623, !noundef !8 ; 2 uses
  store i8 1, ptr %i.m, align 8, !alias.scope !20619, !noalias !20620
  store i8 %i.u, ptr %i.n, align 1, !alias.scope !20619, !noalias !20620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20623
  br label %bb.d

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i: ; preds = %bb.b
  %i.v = load i8, ptr %i.n, align 1, !alias.scope !20619, !noalias !20620, !noundef !8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.w = phi i8 [ %i.v, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i ], [ %i.u, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  switch i8 %i.w, label %bb.j [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 91, label %bb.i
  ], !prof !9771

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l), !noalias !20624
  br label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.q, align 8, !noalias !20623, !nonnull !8, !noundef !8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.x), !noalias !20620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20623
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !20625
  store i64 5, ptr %i.k, align 8, !noalias !20625
  call void @llvm.experimental.noalias.scope.decl(metadata !20626)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load i64, ptr %i.z, align 8, !alias.scope !20629, !noalias !20630, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i.i = load i64, ptr %i.aa, align 8, !alias.scope !20629, !noalias !20630, !noundef !8
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %.val.i.i, i64 noundef %.val2.i.i), !noalias !20632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20625
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi ptr [ %i.ab, %bb.g ], [ %i.y, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.ac, align 8, !alias.scope !20608, !noalias !20611
  store i8 41, ptr %0, align 8, !alias.scope !20608, !noalias !20611
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 8, !alias.scope !20611, !noalias !20608, !noundef !8
  %i.af = add i8 %i.ae, -1                        ; 2 uses
  store i8 %i.af, ptr %i.ad, align 8, !alias.scope !20611, !noalias !20608
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !3

bb.j:                                             ; preds = %bb.d
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @250), !noalias !20608
  br label %bb.ak

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20625
  store i64 24, ptr %i.j, align 8, !noalias !20625
  call void @llvm.experimental.noalias.scope.decl(metadata !20633)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i28.i = load i64, ptr %i.ai, align 8, !alias.scope !20636, !noalias !20637, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i29.i = load i64, ptr %i.aj, align 8, !alias.scope !20636, !noalias !20637, !noundef !8
  %i.ak = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %.val.i28.i, i64 noundef %.val2.i29.i), !noalias !20639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20625
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !20608, !noalias !20611
  store i8 41, ptr %0, align 8, !alias.scope !20608, !noalias !20611
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.i
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l), !noalias !20608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20625
  store ptr %1, ptr %i.f, align 8, !noalias !20640
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 1, ptr %i.am, align 8, !noalias !20640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20640
  call void @llvm.experimental.noalias.scope.decl(metadata !20644)
  call void @llvm.experimental.noalias.scope.decl(metadata !20647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20650
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !20651
  %i.an = load i8, ptr %i.d, align 8, !range !89, !noalias !20650, !noundef !8
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.m

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !20650, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20650
  br label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !range !89, !noalias !20650, !noundef !8
  %i.at = trunc nuw i8 %i.as to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20650
  br i1 %i.at, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.s

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.m
  %i.au = load ptr, ptr %i.f, align 8, !alias.scope !20652, !noalias !20640, !nonnull !8, !align !216, !noundef !8
  %i.av = call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2C_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.au), !noalias !20653 ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = extractvalue { i64, ptr } %i.av, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = trunc i64 %i.aw to i1
  br i1 %i.ay, label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.n

common.resume.i:                                  ; preds = %bb.aj, %bb.aa, %bb.u, %bb.t
  %common.resume.op.i = phi { ptr, i32 } [ %i.bm, %bb.t ], [ %i.cn, %bb.aj ], [ %i.bm, %bb.u ], [ %i.cb, %bb.aa ]
  resume { ptr, i32 } %common.resume.op.i

bb.n:                                             ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  store ptr %i.ax, ptr %i.e, align 8, !noalias !20640
  call void @llvm.experimental.noalias.scope.decl(metadata !20654)
  call void @llvm.experimental.noalias.scope.decl(metadata !20657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20660
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc.i.i unwind label %bb.t, !noalias !20651

.noexc.i.i:                                       ; preds = %bb.n
  %i.az = load i8, ptr %i.c, align 8, !range !89, !noalias !20660, !noundef !8
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !20660, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20660
  br label %bb.x

bb.p:                                             ; preds = %.noexc.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !range !89, !noalias !20660, !noundef !8
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20660
  br i1 %i.bf, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20660
  %i.bg = load ptr, ptr %i.f, align 8, !alias.scope !20663, !noalias !20664, !nonnull !8, !align !216, !noundef !8
  invoke void @_RINvXs1_NtNtCs1gOyXocuPRE_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB1l_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bg)
          to label %.noexc20.i.i unwind label %bb.t, !noalias !20651

.noexc20.i.i:                                     ; preds = %bb.q
  %i.bh = load i8, ptr %i.b, align 8, !range !89, !noalias !20660, !noundef !8
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.r, label %bb.v

bb.r:                                             ; preds = %.noexc20.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !20660, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20660
  br label %bb.x

bb.s:                                             ; preds = %bb.m
  %i.bl = call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @303, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166), !noalias !20651
  br label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.t:                                             ; preds = %bb.w, %bb.q, %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20665)
  call void @llvm.experimental.noalias.scope.decl(metadata !20668)
  %i.bn = load ptr, ptr %i.e, align 8, !alias.scope !20671, !noalias !20640, !nonnull !8, !noundef !8
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !20672
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.u, label %common.resume.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume.i unwind label %bb.z, !noalias !20651

bb.v:                                             ; preds = %.noexc20.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !range !89, !noalias !20660, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20660
  %i.bs = load ptr, ptr %i.e, align 8, !noalias !20640, !nonnull !8, !noundef !8
  br label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.w:                                             ; preds = %bb.p
  %i.bt = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull @303, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.x unwind label %bb.t, !noalias !20651

bb.x:                                             ; preds = %bb.w, %bb.r, %bb.o
  %.sink43.i.i = phi ptr [ %i.bc, %bb.o ], [ %i.bk, %bb.r ], [ %i.bt, %bb.w ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20673)
  call void @llvm.experimental.noalias.scope.decl(metadata !20676)
  %i.bu = load ptr, ptr %i.e, align 8, !alias.scope !20679, !noalias !20640, !nonnull !8, !noundef !8
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !20680
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.y, label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !20651
  br label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.z:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !20651
  unreachable

_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.y, %bb.x, %bb.v, %bb.s, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.035.0.i = phi i8 [ 39, %bb.v ], [ 41, %bb.y ], [ 41, %bb.x ], [ 41, %bb.s ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.sroa.7.0.i = phi i8 [ %i.br, %bb.v ], [ undef, %bb.y ], [ undef, %bb.x ], [ undef, %bb.s ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.sroa.837.0.i = phi ptr [ %i.bs, %bb.v ], [ %.sink43.i.i, %bb.y ], [ %.sink43.i.i, %bb.x ], [ %i.bl, %bb.s ], [ %i.ax, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.aq, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20625
  %i.by = load i8, ptr %i.ad, align 8, !alias.scope !20611, !noalias !20608, !noundef !8
  %i.bz = add i8 %i.by, 1
  store i8 %i.bz, ptr %i.ad, align 8, !alias.scope !20611, !noalias !20608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20625
  store i8 %.sroa.035.0.i, ptr %i.h, align 8, !noalias !20625
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 1, !noalias !20625
  %.sroa.837.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.837.0.i, ptr %.sroa.837.0..sroa_idx.i, align 8, !noalias !20625
  %i.ca = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.ab unwind label %bb.aa, !noalias !20608 ; 10 uses

bb.aa:                                            ; preds = %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h) #42
          to label %common.resume.i unwind label %bb.ae, !noalias !20608

bb.ab:                                            ; preds = %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !20625
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.ca, ptr %i.cc, align 8, !noalias !20625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20625
  %i.cd = load i8, ptr %i.i, align 8, !range !3519, !noalias !20625, !noundef !8 ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 41
  br i1 %i.ce, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %bb.al, label %.thread45.thread.i

bb.ad:                                            ; preds = %bb.ab
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !20625, !nonnull !8, !align !216, !noundef !8
  %.not57.i = icmp eq ptr %i.ca, null
  br i1 %.not57.i, label %.thread45.thread82.i, label %bb.af

.thread45.thread.i:                               ; preds = %bb.ac
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i), !noalias !20608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20625
  br label %bb.ak

bb.ae:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !20608
  unreachable

.thread45.thread82.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20625
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !20681)
  call void @llvm.experimental.noalias.scope.decl(metadata !20684)
  %i.ci = load i64, ptr %i.ca, align 8, !range !3250, !alias.scope !20687, !noalias !20688, !noundef !8
  switch i64 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.ag
    i64 1, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !20687, !noalias !20688, !noundef !8 ; 2 uses
  %i.ck = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !20687, !noalias !20688, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #46, !noalias !20691
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ai:                                            ; preds = %bb.af
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.aj, !noalias !20688

bb.aj:                                            ; preds = %bb.ai
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef 40, i64 noundef 8) #46, !noalias !20688
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef 40, i64 noundef 8) #46, !noalias !20688
  br label %.thread45.thread82.i

bb.ak:                                            ; preds = %.thread45.thread82.i, %.thread45.thread.i, %bb.j
  %.sroa.88.1.i = phi ptr [ %i.cg, %.thread45.thread82.i ], [ %i.ah, %bb.j ], [ %i.ca, %.thread45.thread.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load i64, ptr %i.co, align 8, !alias.scope !20611, !noalias !20608
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val27.i = load i64, ptr %i.cp, align 8, !alias.scope !20611, !noalias !20608
  %i.cq = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadRShEE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.88.1.i, i64 %.val.i, i64 %.val27.i), !noalias !20608
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %i.cr, align 8, !alias.scope !20608, !noalias !20611
  store i8 41, ptr %0, align 8, !alias.scope !20608, !noalias !20611
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.al:                                            ; preds = %bb.ac
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.217.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.214.0..sroa_idx.i, i64 7, i1 false), !noalias !20611
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !20625
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20625
  store i8 %i.cd, ptr %0, align 8, !alias.scope !20608, !noalias !20611
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !20608, !noalias !20611
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !20608, !noalias !20611
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ak, %bb.al, %bb.h, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2z_8DataTypeNtB1n_11Deserialize11deserializeNtB2u_9___VisitorNtB1n_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(104) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20697)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !20700)
  %i.q = load i8, ptr %i.l, align 8, !range !89, !alias.scope !20703, !noalias !20704, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20707
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesRShEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.n), !noalias !20704
  %i.s = load i8, ptr %i.f, align 8, !range !466, !noalias !20707, !noundef !8
  switch i8 %i.s, label %bb.f [
    i8 2, label %bb.g
    i8 0, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i
  ], !prof !9989

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.c
  %i.t = load i8, ptr %i.o, align 1, !noalias !20707, !noundef !8 ; 2 uses
  store i8 1, ptr %i.l, align 8, !alias.scope !20703, !noalias !20704
  store i8 %i.t, ptr %i.m, align 1, !alias.scope !20703, !noalias !20704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20707
  br label %bb.d

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i: ; preds = %bb.b
  %i.u = load i8, ptr %i.m, align 1, !alias.scope !20703, !noalias !20704, !noundef !8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.v = phi i8 [ %i.u, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i ], [ %i.t, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  switch i8 %i.v, label %bb.j [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 91, label %bb.i
  ], !prof !9771

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k), !noalias !20708
  br label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.p, align 8, !noalias !20707, !nonnull !8, !noundef !8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.w), !noalias !20704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20707
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20709
  store i64 5, ptr %i.j, align 8, !noalias !20709
  call void @llvm.experimental.noalias.scope.decl(metadata !20710)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load i64, ptr %i.y, align 8, !alias.scope !20713, !noalias !20714, !noundef !8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i.i = load i64, ptr %i.z, align 8, !alias.scope !20713, !noalias !20714, !noundef !8
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %.val.i.i, i64 noundef %.val2.i.i), !noalias !20716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20709
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi ptr [ %i.aa, %bb.g ], [ %i.x, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.ab, align 8, !alias.scope !20692, !noalias !20695
  store i8 41, ptr %0, align 8, !alias.scope !20692, !noalias !20695
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 8, !alias.scope !20695, !noalias !20692, !noundef !8
  %i.ae = add i8 %i.ad, -1                        ; 2 uses
  store i8 %i.ae, ptr %i.ac, align 8, !alias.scope !20695, !noalias !20692
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.l, !prof !3

bb.j:                                             ; preds = %bb.d
  %i.ag = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @251), !noalias !20692
  br label %bb.ai

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20709
  store i64 24, ptr %i.i, align 8, !noalias !20709
  call void @llvm.experimental.noalias.scope.decl(metadata !20717)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i28.i = load i64, ptr %i.ah, align 8, !alias.scope !20720, !noalias !20721, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i29.i = load i64, ptr %i.ai, align 8, !alias.scope !20720, !noalias !20721, !noundef !8
  %i.aj = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %.val.i28.i, i64 noundef %.val2.i29.i), !noalias !20723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20709
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !20692, !noalias !20695
  store i8 41, ptr %0, align 8, !alias.scope !20692, !noalias !20695
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.i
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k), !noalias !20692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20709
  store ptr %1, ptr %i.e, align 8, !noalias !20724
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 1, ptr %i.al, align 8, !noalias !20724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20724
  call void @llvm.experimental.noalias.scope.decl(metadata !20728)
  call void @llvm.experimental.noalias.scope.decl(metadata !20731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20734
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !20735
  %i.am = load i8, ptr %i.c, align 8, !range !89, !noalias !20734, !noundef !8
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.m

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !20734, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20734
  br label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !range !89, !noalias !20734, !noundef !8
  %i.as = trunc nuw i8 %i.ar to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20734
  br i1 %i.as, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.q

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.m
  %i.at = load ptr, ptr %i.e, align 8, !alias.scope !20736, !noalias !20724, !nonnull !8, !align !216, !noundef !8
  %i.au = call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2C_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.at), !noalias !20737 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = extractvalue { i64, ptr } %i.au, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ax = trunc i64 %i.av to i1
  br i1 %i.ax, label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.n

common.resume.i:                                  ; preds = %bb.ah, %bb.y, %bb.s, %bb.r
  %common.resume.op.i = phi { ptr, i32 } [ %i.bi, %bb.r ], [ %i.cj, %bb.ah ], [ %i.bi, %bb.s ], [ %i.bx, %bb.y ]
  resume { ptr, i32 } %common.resume.op.i

bb.n:                                             ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  store ptr %i.aw, ptr %i.d, align 8, !noalias !20724
  call void @llvm.experimental.noalias.scope.decl(metadata !20738)
  call void @llvm.experimental.noalias.scope.decl(metadata !20741)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20744
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc.i.i unwind label %bb.r, !noalias !20735

.noexc.i.i:                                       ; preds = %bb.n
  %i.ay = load i8, ptr %i.b, align 8, !range !89, !noalias !20744, !noundef !8
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.thread39.i.i, label %bb.o

.thread39.i.i:                                    ; preds = %.noexc.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !20744, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20744
  br label %bb.v

bb.o:                                             ; preds = %.noexc.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !range !89, !noalias !20744, !noundef !8
  %i.be = trunc nuw i8 %i.bd to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20744
  br i1 %i.be, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %i.e, align 8, !alias.scope !20745, !noalias !20724, !nonnull !8, !align !216, !noundef !8
  %i.bg = invoke { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2C_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.bf)
          to label %bb.t unwind label %bb.r, !noalias !20735 ; 2 uses

bb.q:                                             ; preds = %bb.m
  %i.bh = call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166), !noalias !20735
  br label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.r:                                             ; preds = %bb.u, %bb.p, %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20746)
  call void @llvm.experimental.noalias.scope.decl(metadata !20749)
  %i.bj = load ptr, ptr %i.d, align 8, !alias.scope !20752, !noalias !20724, !nonnull !8, !noundef !8
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !20753
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.s, label %common.resume.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %common.resume.i unwind label %bb.x, !noalias !20735

bb.t:                                             ; preds = %bb.p
  %i.bm = extractvalue { i64, ptr } %i.bg, 0
  %i.bn = extractvalue { i64, ptr } %i.bg, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  %i.bo = trunc i64 %i.bm to i1
  %.pre1 = load ptr, ptr %i.d, align 8, !noalias !20724 ; 2 uses
  br i1 %i.bo, label %bb.v, label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.u:                                             ; preds = %bb.o
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %._crit_edge unwind label %bb.r, !noalias !20735

._crit_edge:                                      ; preds = %bb.u
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !20754, !noalias !20724
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.t, %.thread39.i.i
  %i.bq = phi ptr [ %.pre1, %bb.t ], [ %i.aw, %.thread39.i.i ], [ %.pre, %._crit_edge ]
  %.sink51.i.i = phi ptr [ %i.bn, %bb.t ], [ %i.bb, %.thread39.i.i ], [ %i.bp, %._crit_edge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20759)
  call void @llvm.experimental.noalias.scope.decl(metadata !20760)
  %i.br = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !20761
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.w, label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45, !noalias !20735
  br label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.x:                                             ; preds = %bb.s
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !20735
  unreachable

_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.t, %bb.w, %bb.v, %bb.q, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.035.0.i = phi i8 [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ 41, %bb.w ], [ 41, %bb.v ], [ 41, %bb.q ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 40, %bb.t ]
  %.sroa.736.0.i = phi ptr [ %i.ap, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ %.sink51.i.i, %bb.w ], [ %.sink51.i.i, %bb.v ], [ %i.bh, %bb.q ], [ %i.aw, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.pre1, %bb.t ]
  %.sroa.10.0.i = phi ptr [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ undef, %bb.w ], [ undef, %bb.v ], [ undef, %bb.q ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.bn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20709
  %i.bu = load i8, ptr %i.ac, align 8, !alias.scope !20695, !noalias !20692, !noundef !8
  %i.bv = add i8 %i.bu, 1
  store i8 %i.bv, ptr %i.ac, align 8, !alias.scope !20695, !noalias !20692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20709
  store i8 %.sroa.035.0.i, ptr %i.g, align 8, !noalias !20709
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.736.0.i, ptr %.sroa.736.0..sroa_idx.i, align 8, !noalias !20709
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !20709
  %i.bw = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.z unwind label %bb.y, !noalias !20692 ; 10 uses

bb.y:                                             ; preds = %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #42
          to label %common.resume.i unwind label %bb.ac, !noalias !20692

bb.z:                                             ; preds = %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3s_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !20709
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.bw, ptr %i.by, align 8, !noalias !20709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20709
  %i.bz = load i8, ptr %i.h, align 8, !range !3519, !noalias !20709, !noundef !8 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 41
  br i1 %i.ca, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %bb.aj, label %.thread43.thread.i

bb.ab:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !20709, !nonnull !8, !align !216, !noundef !8
  %.not55.i = icmp eq ptr %i.bw, null
  br i1 %.not55.i, label %.thread43.thread80.i, label %bb.ad

.thread43.thread.i:                               ; preds = %bb.aa
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h), !noalias !20692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20709
  br label %bb.ai

bb.ac:                                            ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !20692
  unreachable

.thread43.thread80.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20709
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !20762)
  call void @llvm.experimental.noalias.scope.decl(metadata !20765)
  %i.ce = load i64, ptr %i.bw, align 8, !range !3250, !alias.scope !20768, !noalias !20769, !noundef !8
  switch i64 %i.ce, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.ae
    i64 1, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !20768, !noalias !20769, !noundef !8 ; 2 uses
  %i.cg = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !20768, !noalias !20769, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #46, !noalias !20772
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ag:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ah, !noalias !20769

bb.ah:                                            ; preds = %bb.ag
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef 40, i64 noundef 8) #46, !noalias !20769
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef 40, i64 noundef 8) #46, !noalias !20769
  br label %.thread43.thread80.i

bb.ai:                                            ; preds = %.thread43.thread80.i, %.thread43.thread.i, %bb.j
  %.sroa.88.1.i = phi ptr [ %i.cc, %.thread43.thread80.i ], [ %i.ag, %bb.j ], [ %i.bw, %.thread43.thread.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load i64, ptr %i.ck, align 8, !alias.scope !20695, !noalias !20692
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val27.i = load i64, ptr %i.cl, align 8, !alias.scope !20695, !noalias !20692
  %i.cm = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadRShEE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.88.1.i, i64 %.val.i, i64 %.val27.i), !noalias !20692
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !alias.scope !20692, !noalias !20695
  store i8 41, ptr %0, align 8, !alias.scope !20692, !noalias !20695
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.aj:                                            ; preds = %bb.aa
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.217.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.214.0..sroa_idx.i, i64 7, i1 false), !noalias !20695
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !20709
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20709
  store i8 %i.bz, ptr %0, align 8, !alias.scope !20692, !noalias !20695
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !20692, !noalias !20695
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !20692, !noalias !20695
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ai, %bb.aj, %bb.h, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2z_8DataTypeNtB1n_11Deserialize11deserializeNtB2u_9___VisitorNtB1n_7Visitor10visit_enums_9___VisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(104) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20778)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !20781)
  %i.r = load i8, ptr %i.m, align 8, !range !89, !alias.scope !20784, !noalias !20785, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20788
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesRShEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o), !noalias !20785
  %i.t = load i8, ptr %i.g, align 8, !range !466, !noalias !20788, !noundef !8
  switch i8 %i.t, label %bb.f [
    i8 2, label %bb.g
    i8 0, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i
  ], !prof !9989

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.c
  %i.u = load i8, ptr %i.p, align 1, !noalias !20788, !noundef !8 ; 2 uses
  store i8 1, ptr %i.m, align 8, !alias.scope !20784, !noalias !20785
  store i8 %i.u, ptr %i.n, align 1, !alias.scope !20784, !noalias !20785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20788
  br label %bb.d

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i: ; preds = %bb.b
  %i.v = load i8, ptr %i.n, align 1, !alias.scope !20784, !noalias !20785, !noundef !8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.w = phi i8 [ %i.v, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread.i ], [ %i.u, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  switch i8 %i.w, label %bb.j [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 91, label %bb.i
  ], !prof !9771

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l), !noalias !20789
  br label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.q, align 8, !noalias !20788, !nonnull !8, !noundef !8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.x), !noalias !20785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20788
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !20790
  store i64 5, ptr %i.k, align 8, !noalias !20790
  call void @llvm.experimental.noalias.scope.decl(metadata !20791)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load i64, ptr %i.z, align 8, !alias.scope !20794, !noalias !20795, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i.i = load i64, ptr %i.aa, align 8, !alias.scope !20794, !noalias !20795, !noundef !8
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %.val.i.i, i64 noundef %.val2.i.i), !noalias !20797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20790
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi ptr [ %i.ab, %bb.g ], [ %i.y, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.ac, align 8, !alias.scope !20773, !noalias !20776
  store i8 41, ptr %0, align 8, !alias.scope !20773, !noalias !20776
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 8, !alias.scope !20776, !noalias !20773, !noundef !8
  %i.af = add i8 %i.ae, -1                        ; 2 uses
  store i8 %i.af, ptr %i.ad, align 8, !alias.scope !20776, !noalias !20773
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !3

bb.j:                                             ; preds = %bb.d
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @252), !noalias !20773
  br label %bb.ak

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20790
  store i64 24, ptr %i.j, align 8, !noalias !20790
  call void @llvm.experimental.noalias.scope.decl(metadata !20798)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i28.i = load i64, ptr %i.ai, align 8, !alias.scope !20801, !noalias !20802, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i29.i = load i64, ptr %i.aj, align 8, !alias.scope !20801, !noalias !20802, !noundef !8
  %i.ak = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %.val.i28.i, i64 noundef %.val2.i29.i), !noalias !20804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20790
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !20773, !noalias !20776
  store i8 41, ptr %0, align 8, !alias.scope !20773, !noalias !20776
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2A_8DataTypeNtB1n_11Deserialize11deserializeNtB2v_9___VisitorNtB1n_7Visitor10visit_enums_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.i
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l), !noalias !20773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20790
  store ptr %1, ptr %i.f, align 8, !noalias !20805
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 1, ptr %i.am, align 8, !noalias !20805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20805
  call void @llvm.experimental.noalias.scope.decl(metadata !20809)
  call void @llvm.experimental.noalias.scope.decl(metadata !20812)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20815
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !20816
  %i.an = load i8, ptr %i.d, align 8, !range !89, !noalias !20815, !noundef !8
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.m

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !20815, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20815
  br label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3q_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !range !89, !noalias !20815, !noundef !8
  %i.at = trunc nuw i8 %i.as to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20815
  br i1 %i.at, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.s

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.m
  %i.au = load ptr, ptr %i.f, align 8, !alias.scope !20817, !noalias !20805, !nonnull !8, !align !216, !noundef !8
  %i.av = call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2C_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.au), !noalias !20818 ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = extractvalue { i64, ptr } %i.av, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = trunc i64 %i.aw to i1
  br i1 %i.ay, label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3q_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.n

common.resume.i:                                  ; preds = %bb.aj, %bb.aa, %bb.u, %bb.t
  %common.resume.op.i = phi { ptr, i32 } [ %i.bm, %bb.t ], [ %i.cn, %bb.aj ], [ %i.bm, %bb.u ], [ %i.cb, %bb.aa ]
  resume { ptr, i32 } %common.resume.op.i

bb.n:                                             ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  store ptr %i.ax, ptr %i.e, align 8, !noalias !20805
  call void @llvm.experimental.noalias.scope.decl(metadata !20819)
  call void @llvm.experimental.noalias.scope.decl(metadata !20822)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20825
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc.i.i unwind label %bb.t, !noalias !20816

.noexc.i.i:                                       ; preds = %bb.n
  %i.az = load i8, ptr %i.c, align 8, !range !89, !noalias !20825, !noundef !8
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !20825, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20825
  br label %bb.x

bb.p:                                             ; preds = %.noexc.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !range !89, !noalias !20825, !noundef !8
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20825
  br i1 %i.bf, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20825
  %i.bg = load ptr, ptr %i.f, align 8, !alias.scope !20828, !noalias !20829, !nonnull !8, !align !216, !noundef !8
  invoke fastcc void @_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDatalENtB6_15DeserializeSeed11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB20_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(104) %i.bg)
          to label %.noexc18.i.i unwind label %bb.t, !noalias !20816

.noexc18.i.i:                                     ; preds = %bb.q
  %i.bh = load i32, ptr %i.b, align 8, !range !11877, !noalias !20825, !noundef !8
  %i.bi = trunc nuw i32 %i.bh to i1
  br i1 %i.bi, label %bb.r, label %bb.v

bb.r:                                             ; preds = %.noexc18.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !20825, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20825
  br label %bb.x

bb.s:                                             ; preds = %bb.m
  %i.bl = call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @310, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166), !noalias !20816
  br label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3q_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.t:                                             ; preds = %bb.w, %bb.q, %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20830)
  call void @llvm.experimental.noalias.scope.decl(metadata !20833)
  %i.bn = load ptr, ptr %i.e, align 8, !alias.scope !20836, !noalias !20805, !nonnull !8, !noundef !8
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !20837
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.u, label %common.resume.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume.i unwind label %bb.z, !noalias !20816

bb.v:                                             ; preds = %.noexc18.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !noalias !20825, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20825
  %i.bs = load ptr, ptr %i.e, align 8, !noalias !20805, !nonnull !8, !noundef !8
  br label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3q_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.w:                                             ; preds = %bb.p
  %i.bt = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull @310, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.x unwind label %bb.t, !noalias !20816

bb.x:                                             ; preds = %bb.w, %bb.r, %bb.o
  %.sink41.i.i = phi ptr [ %i.bc, %bb.o ], [ %i.bk, %bb.r ], [ %i.bt, %bb.w ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20838)
  call void @llvm.experimental.noalias.scope.decl(metadata !20841)
  %i.bu = load ptr, ptr %i.e, align 8, !alias.scope !20844, !noalias !20805, !nonnull !8, !noundef !8
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !20845
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.y, label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3q_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !20816
  br label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3q_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.z:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !20816
  unreachable

_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3q_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.y, %bb.x, %bb.v, %bb.s, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.035.0.i = phi i8 [ 29, %bb.v ], [ 41, %bb.y ], [ 41, %bb.x ], [ 41, %bb.s ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.sroa.736.0.i = phi i32 [ %i.br, %bb.v ], [ undef, %bb.y ], [ undef, %bb.x ], [ undef, %bb.s ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.sroa.837.0.i = phi ptr [ %i.bs, %bb.v ], [ %.sink41.i.i, %bb.y ], [ %.sink41.i.i, %bb.x ], [ %i.bl, %bb.s ], [ %i.ax, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.aq, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20790
  %i.by = load i8, ptr %i.ad, align 8, !alias.scope !20776, !noalias !20773, !noundef !8
  %i.bz = add i8 %i.by, 1
  store i8 %i.bz, ptr %i.ad, align 8, !alias.scope !20776, !noalias !20773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20790
  store i8 %.sroa.035.0.i, ptr %i.h, align 8, !noalias !20790
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %.sroa.736.0.i, ptr %.sroa.736.0..sroa_idx.i, align 4, !noalias !20790
  %.sroa.837.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.837.0.i, ptr %.sroa.837.0..sroa_idx.i, align 8, !noalias !20790
  %i.ca = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.ab unwind label %bb.aa, !noalias !20773 ; 10 uses

bb.aa:                                            ; preds = %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3q_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h) #42
          to label %common.resume.i unwind label %bb.ae, !noalias !20773

bb.ab:                                            ; preds = %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessINtNtB3q_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !20790
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.ca, ptr %i.cc, align 8, !noalias !20790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20790
  %i.cd = load i8, ptr %i.i, align 8, !range !3519, !noalias !20790, !noundef !8 ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 41
  br i1 %i.ce, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %bb.al, label %.thread45.thread.i

bb.ad:                                            ; preds = %bb.ab
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !20790, !nonnull !8, !align !216, !noundef !8
  %.not57.i = icmp eq ptr %i.ca, null
  br i1 %.not57.i, label %.thread45.thread82.i, label %bb.af

.thread45.thread.i:                               ; preds = %bb.ac
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i), !noalias !20773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20790
  br label %bb.ak

bb.ae:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !20773
  unreachable

.thread45.thread82.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20790
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !20846)
  call void @llvm.experimental.noalias.scope.decl(metadata !20849)
  %i.ci = load i64, ptr %i.ca, align 8, !range !3250, !alias.scope !20852, !noalias !20853, !noundef !8
  switch i64 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.ag
    i64 1, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !20852, !noalias !20853, !noundef !8 ; 2 uses
  %i.ck = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !20852, !noalias !20853, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #46, !noalias !20856
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ai:                                            ; preds = %bb.af
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.aj, !noalias !20853

bb.aj:                                            ; preds = %bb.ai
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef 40, i64 noundef 8) #46, !noalias !20853
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef 40, i64 noundef 8) #46, !noalias !20853
  br label %.thread45.thread82.i

bb.ak:                                            ; preds = %.thread45.thread82.i, %.thread45.thread.i, %bb.j
  %.sroa.88.1.i = phi ptr [ %i.cg, %.thread45.thread82.i ], [ %i.ah, %bb.j ], [ %i.ca, %.thread45.thread.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load i64, ptr %i.co, align 8, !alias.scope !20776, !noalias !20773
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val27.i = load i64, ptr %i.cp, align 8, !alias.scope !20776, !noalias !20773
end_hunk_7
begin_hunk_8_@_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2x_8DataTypeNtB1l_11Deserialize11deserializeNtB2s_9___VisitorNtB1l_7Visitor10visit_enums0_9___VisitorECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %.not.i, label %bb.aj, label %.thread36.thread.i

bb.ab:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !20945, !nonnull !8, !align !216, !noundef !8
  %.not48.i = icmp eq ptr %i.bw, null
  br i1 %.not48.i, label %.thread36.thread61.i, label %bb.ad

.thread36.thread.i:                               ; preds = %bb.aa
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i), !noalias !20924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20945
  br label %bb.ai

bb.ac:                                            ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !20924
  unreachable

.thread36.thread61.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20945
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !21000)
  call void @llvm.experimental.noalias.scope.decl(metadata !21003)
  %i.ce = load i64, ptr %i.bw, align 8, !range !3250, !alias.scope !21006, !noalias !21007, !noundef !8
  switch i64 %i.ce, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.ae
    i64 1, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !21006, !noalias !21007, !noundef !8 ; 2 uses
  %i.cg = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !21006, !noalias !21007, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #46, !noalias !21010
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ag:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ah, !noalias !21007

bb.ah:                                            ; preds = %bb.ag
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef 40, i64 noundef 8) #46, !noalias !21007
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef 40, i64 noundef 8) #46, !noalias !21007
  br label %.thread36.thread61.i

bb.ai:                                            ; preds = %.thread36.thread61.i, %.thread36.thread.i, %bb.e
  %.sroa.88.1.i = phi ptr [ %i.cc, %.thread36.thread61.i ], [ %i.ab, %bb.e ], [ %i.bw, %.thread36.thread.i ]
  %i.ck = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.88.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !20924
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !alias.scope !20924, !noalias !20927
  store i8 41, ptr %0, align 8, !alias.scope !20924, !noalias !20927
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums0_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.aj:                                            ; preds = %bb.aa
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.217.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.214.0..sroa_idx.i, i64 7, i1 false), !noalias !20927
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !20945
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20945
  store i8 %i.bz, ptr %0, align 8, !alias.scope !20924, !noalias !20927
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !20924, !noalias !20927
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !20924, !noalias !20927
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums0_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums0_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ai, %bb.aj, %.loopexit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2x_8DataTypeNtB1l_11Deserialize11deserializeNtB2s_9___VisitorNtB1l_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21016)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !21019, !noalias !21022, !noundef !8 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.j, align 8, !alias.scope !21025, !noalias !21026 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !21019, !noalias !21022, !nonnull !8, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.p = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21027)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !21028, !noundef !8
  switch i8 %i.r, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !9771

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.s = add i64 %i.p, 1                          ; 3 uses
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !21029, !noalias !21026
  %exitcond.not.i.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21032
  store i64 5, ptr %i.i, align 8, !noalias !21032
  %i.t = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !21011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21032
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !21011, !noalias !21014
  store i8 41, ptr %0, align 8, !alias.scope !21011, !noalias !21014
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.w = load i8, ptr %i.v, align 8, !alias.scope !21014, !noalias !21011, !noundef !8
  %i.x = add i8 %i.w, -1                          ; 2 uses
  store i8 %i.x, ptr %i.v, align 8, !alias.scope !21014, !noalias !21011
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.g, !prof !3

bb.e:                                             ; preds = %bb.b
  %i.z = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245), !noalias !21011
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21032
  store i64 24, ptr %i.h, align 8, !noalias !21032
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !21011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21032
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !21011, !noalias !21014
  store i8 41, ptr %0, align 8, !alias.scope !21011, !noalias !21014
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.d
  %i.ac = add i64 %i.p, 1
  store i64 %i.ac, ptr %i.j, align 8, !alias.scope !21033, !noalias !21011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21032
  store ptr %1, ptr %i.e, align 8, !noalias !21036
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 1, ptr %i.ad, align 8, !noalias !21036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21043)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21046
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !21047
  %i.ae = load i8, ptr %i.c, align 8, !range !89, !noalias !21046, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.h

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !21046, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21046
  br label %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !range !89, !noalias !21046, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21046
  br i1 %i.ak, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.l

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.h
  %i.al = load ptr, ptr %i.e, align 8, !alias.scope !21048, !noalias !21036, !nonnull !8, !align !216, !noundef !8
  %i.am = tail call { i64, ptr } @_RINvXs3n_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2J_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.al), !noalias !21049 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = trunc i64 %i.an to i1
  br i1 %i.ap, label %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.i

common.resume.i:                                  ; preds = %bb.ab, %bb.s, %bb.q, %bb.m
  %common.resume.op.i = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.bw, %bb.ab ], [ %i.bf, %bb.q ], [ %i.bk, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  store ptr %i.ao, ptr %i.d, align 8, !noalias !21036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21053)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21056
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc.i.i unwind label %bb.m, !noalias !21047

.noexc.i.i:                                       ; preds = %bb.i
  %i.aq = load i8, ptr %i.b, align 8, !range !89, !noalias !21056, !noundef !8
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.thread37.i.i, label %bb.j

.thread37.i.i:                                    ; preds = %.noexc.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !21056, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21056
  br label %bb.p

bb.j:                                             ; preds = %.noexc.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.av = load i8, ptr %i.au, align 1, !range !89, !noalias !21056, !noundef !8
  %i.aw = trunc nuw i8 %i.av to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21056
  br i1 %i.aw, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.e, align 8, !alias.scope !21057, !noalias !21036, !nonnull !8, !align !216, !noundef !8
  %i.ay = invoke { i64, ptr } @_RINvXs3n_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2J_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ax)
          to label %bb.n unwind label %bb.m, !noalias !21047 ; 2 uses

bb.l:                                             ; preds = %bb.h
  %i.az = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @233, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166), !noalias !21047
  br label %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.m:                                             ; preds = %bb.o, %bb.k, %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.d) #42
          to label %common.resume.i unwind label %bb.r, !noalias !21047

bb.n:                                             ; preds = %bb.k
  %i.bb = extractvalue { i64, ptr } %i.ay, 0
  %i.bc = extractvalue { i64, ptr } %i.ay, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = trunc i64 %i.bb to i1
  br i1 %i.bd, label %bb.p, label %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.o:                                             ; preds = %bb.j
  %i.be = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull @233, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.p unwind label %bb.m, !noalias !21047

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread37.i.i
  %.sink49.i.i = phi ptr [ %i.bc, %bb.n ], [ %i.at, %.thread37.i.i ], [ %i.be, %bb.o ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.q, !noalias !21058, !inline_history !6899

bb.q:                                             ; preds = %bb.p
  %i.bf = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 24, i64 noundef 8) #46, !noalias !21058, !inline_history !6899
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.p
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 24, i64 noundef 8) #46, !noalias !21058, !inline_history !6899
  br label %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.r:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !21047
  unreachable

_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.n, %bb.l, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.028.0.i = phi i8 [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ 41, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 41, %bb.l ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 34, %bb.n ]
  %.sroa.729.0.i = phi ptr [ %i.ah, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ %.sink49.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.az, %bb.l ], [ %i.ao, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ao, %bb.n ]
  %.sroa.10.0.i = phi ptr [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ undef, %bb.l ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.bc, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21032
  %i.bh = load i8, ptr %i.v, align 8, !alias.scope !21014, !noalias !21011, !noundef !8
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.v, align 8, !alias.scope !21014, !noalias !21011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21032
  store i8 %.sroa.028.0.i, ptr %i.f, align 8, !noalias !21032
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.729.0.i, ptr %.sroa.729.0..sroa_idx.i, align 8, !noalias !21032
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !21032
  %i.bj = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.t unwind label %bb.s, !noalias !21011 ; 10 uses

bb.s:                                             ; preds = %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.f) #42
          to label %common.resume.i unwind label %bb.w, !noalias !21011

bb.t:                                             ; preds = %_RINvXs1_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s1_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !21032
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.bj, ptr %i.bl, align 8, !noalias !21032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21032
  %i.bm = load i8, ptr %i.g, align 8, !range !3519, !noalias !21032, !noundef !8 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 41
  br i1 %i.bn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %bb.ad, label %.thread34.thread.i

bb.v:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !21032, !nonnull !8, !align !216, !noundef !8
  %.not46.i = icmp eq ptr %i.bj, null
  br i1 %.not46.i, label %.thread34.thread58.i, label %bb.x

.thread34.thread.i:                               ; preds = %bb.u
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g), !noalias !21011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21032
  br label %bb.ac

bb.w:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !21011
  unreachable

.thread34.thread58.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21032
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21064)
  %i.br = load i64, ptr %i.bj, align 8, !range !3250, !alias.scope !21067, !noalias !21068, !noundef !8
  switch i64 %i.br, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.y
    i64 1, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !21067, !noalias !21068, !noundef !8 ; 2 uses
  %i.bt = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !21067, !noalias !21068, !nonnull !8, !noundef !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #46, !noalias !21071
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.aa:                                            ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ab, !noalias !21068

bb.ab:                                            ; preds = %bb.aa
  %i.bw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bj, i64 noundef 40, i64 noundef 8) #46, !noalias !21068
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bj, i64 noundef 40, i64 noundef 8) #46, !noalias !21068
  br label %.thread34.thread58.i

bb.ac:                                            ; preds = %.thread34.thread58.i, %.thread34.thread.i, %bb.e
  %.sroa.88.1.i = phi ptr [ %i.bp, %.thread34.thread58.i ], [ %i.z, %bb.e ], [ %i.bj, %.thread34.thread.i ]
  %i.bx = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.88.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !21011
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !alias.scope !21011, !noalias !21014
  store i8 41, ptr %0, align 8, !alias.scope !21011, !noalias !21014
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.ad:                                            ; preds = %bb.u
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.217.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.214.0..sroa_idx.i, i64 7, i1 false), !noalias !21014
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !21032
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !21032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21032
  store i8 %i.bm, ptr %0, align 8, !alias.scope !21011, !noalias !21014
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !21011, !noalias !21014
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !21011, !noalias !21014
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums1_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ac, %bb.ad, %.loopexit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2x_8DataTypeNtB1l_11Deserialize11deserializeNtB2s_9___VisitorNtB1l_7Visitor10visit_enums2_9___VisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21077)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !21080, !noalias !21083, !noundef !8 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !21086, !noalias !21087 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !21080, !noalias !21083, !nonnull !8, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.o = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.r, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21088)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noalias !21089, !noundef !8
  switch i8 %i.q, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !9771

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.r = add i64 %i.o, 1                          ; 3 uses
  store i64 %i.r, ptr %i.i, align 8, !alias.scope !21090, !noalias !21087
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21093
  store i64 5, ptr %i.h, align 8, !noalias !21093
  %i.s = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !21072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21093
end_hunk_8
begin_hunk_9_@_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2x_8DataTypeNtB1l_11Deserialize11deserializeNtB2s_9___VisitorNtB1l_7Visitor10visit_enums5_9___VisitorECs14kWLkQVSKO_14deltalake_core:bb.a
  %.not48.i = icmp eq ptr %i.az, null
  br i1 %.not48.i, label %.thread36.thread60.i, label %bb.t

.thread36.thread.i:                               ; preds = %bb.q
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.f), !noalias !21195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21216
  br label %bb.y

bb.s:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !21195
  unreachable

.thread36.thread60.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21216
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21228)
  %i.bh = load i64, ptr %i.az, align 8, !range !3250, !alias.scope !21231, !noalias !21232, !noundef !8
  switch i64 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.u
    i64 1, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !21231, !noalias !21232, !noundef !8 ; 2 uses
  %i.bj = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !21231, !noalias !21232, !nonnull !8, !noundef !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #46, !noalias !21235
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.w:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.x, !noalias !21232

common.resume.i:                                  ; preds = %bb.x, %bb.o
  %common.resume.op.i = phi { ptr, i32 } [ %i.bm, %bb.x ], [ %i.ba, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i

bb.x:                                             ; preds = %bb.w
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef 40, i64 noundef 8) #46, !noalias !21232
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef 40, i64 noundef 8) #46, !noalias !21232
  br label %.thread36.thread60.i

bb.y:                                             ; preds = %.thread36.thread60.i, %.thread36.thread.i, %bb.e
  %.sroa.88.1.i = phi ptr [ %i.bf, %.thread36.thread60.i ], [ %i.y, %bb.e ], [ %i.az, %.thread36.thread.i ]
  %i.bn = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.88.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !21195
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !alias.scope !21195, !noalias !21198
  store i8 41, ptr %0, align 8, !alias.scope !21195, !noalias !21198
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums5_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %bb.q
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.217.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.214.0..sroa_idx.i, i64 7, i1 false), !noalias !21198
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !21216
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !21216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21216
  store i8 %i.bc, ptr %0, align 8, !alias.scope !21195, !noalias !21198
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !21195, !noalias !21198
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !21195, !noalias !21198
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums5_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums5_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.y, %bb.z, %.loopexit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2x_8DataTypeNtB1l_11Deserialize11deserializeNtB2s_9___VisitorNtB1l_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21241)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !21244, !noalias !21247, !noundef !8 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.k, align 8, !alias.scope !21250, !noalias !21251 ; 2 uses
  %i.n = icmp ult i64 %.promoted.i.i, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !21244, !noalias !21247, !nonnull !8, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.q = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.t, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21252)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !21253, !noundef !8
  switch i8 %i.s, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !9771

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.t = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.t, ptr %i.k, align 8, !alias.scope !21254, !noalias !21251
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !21257
  store i64 5, ptr %i.j, align 8, !noalias !21257
  %i.u = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !21236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21257
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !21236, !noalias !21239
  store i8 41, ptr %0, align 8, !alias.scope !21236, !noalias !21239
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.x = load i8, ptr %i.w, align 8, !alias.scope !21239, !noalias !21236, !noundef !8
  %i.y = add i8 %i.x, -1                          ; 2 uses
  store i8 %i.y, ptr %i.w, align 8, !alias.scope !21239, !noalias !21236
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g, !prof !3

bb.e:                                             ; preds = %bb.b
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @250), !noalias !21236
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21257
  store i64 24, ptr %i.i, align 8, !noalias !21257
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !21236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21257
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !21236, !noalias !21239
  store i8 41, ptr %0, align 8, !alias.scope !21236, !noalias !21239
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.d
  %i.ad = add i64 %i.q, 1
  store i64 %i.ad, ptr %i.k, align 8, !alias.scope !21258, !noalias !21236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21257
  store ptr %1, ptr %i.f, align 8, !noalias !21261
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 1, ptr %i.ae, align 8, !noalias !21261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21261
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21268)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21271
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !21272
  %i.af = load i8, ptr %i.d, align 8, !range !89, !noalias !21271, !noundef !8
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.h

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !21271, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21271
  br label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !range !89, !noalias !21271, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21271
  br i1 %i.al, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.n

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.h
  %i.am = load ptr, ptr %i.f, align 8, !alias.scope !21273, !noalias !21261, !nonnull !8, !align !216, !noundef !8
  %i.an = tail call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2C_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.am), !noalias !21274 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = trunc i64 %i.ao to i1
  br i1 %i.aq, label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.i

common.resume.i:                                  ; preds = %bb.ae, %bb.v, %bb.p, %bb.o
  %common.resume.op.i = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.cf, %bb.ae ], [ %i.be, %bb.p ], [ %i.bt, %bb.v ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  store ptr %i.ap, ptr %i.e, align 8, !noalias !21261
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21281
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc.i.i unwind label %bb.o, !noalias !21272

.noexc.i.i:                                       ; preds = %bb.i
  %i.ar = load i8, ptr %i.c, align 8, !range !89, !noalias !21281, !noundef !8
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !21281, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21281
  br label %bb.s

bb.k:                                             ; preds = %.noexc.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !89, !noalias !21281, !noundef !8
  %i.ax = trunc nuw i8 %i.aw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21281
  br i1 %i.ax, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21281
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !21284, !noalias !21285, !nonnull !8, !align !216, !noundef !8
  invoke void @_RINvXs1_NtNtCs1gOyXocuPRE_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1l_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ay)
          to label %.noexc20.i.i unwind label %bb.o, !noalias !21272

.noexc20.i.i:                                     ; preds = %bb.l
  %i.az = load i8, ptr %i.b, align 8, !range !89, !noalias !21281, !noundef !8
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %bb.q

bb.m:                                             ; preds = %.noexc20.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !21281, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21281
  br label %bb.s

bb.n:                                             ; preds = %bb.h
  %i.bd = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @303, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166), !noalias !21272
  br label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.o:                                             ; preds = %bb.r, %bb.l, %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21286)
  call void @llvm.experimental.noalias.scope.decl(metadata !21289)
  %i.bf = load ptr, ptr %i.e, align 8, !alias.scope !21292, !noalias !21261, !nonnull !8, !noundef !8
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !21293
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.p, label %common.resume.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume.i unwind label %bb.u, !noalias !21272

bb.q:                                             ; preds = %.noexc20.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !range !89, !noalias !21281, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21281
  %i.bk = load ptr, ptr %i.e, align 8, !noalias !21261, !nonnull !8, !noundef !8
  br label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.r:                                             ; preds = %bb.k
  %i.bl = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull @303, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.s unwind label %bb.o, !noalias !21272

bb.s:                                             ; preds = %bb.r, %bb.m, %bb.j
  %.sink43.i.i = phi ptr [ %i.au, %bb.j ], [ %i.bc, %bb.m ], [ %i.bl, %bb.r ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21294)
  call void @llvm.experimental.noalias.scope.decl(metadata !21297)
  %i.bm = load ptr, ptr %i.e, align 8, !alias.scope !21300, !noalias !21261, !nonnull !8, !noundef !8
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !21301
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.t, label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !21272
  br label %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.u:                                             ; preds = %bb.p
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !21272
  unreachable

_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.t, %bb.s, %bb.q, %bb.n, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.028.0.i = phi i8 [ 39, %bb.q ], [ 41, %bb.t ], [ 41, %bb.s ], [ 41, %bb.n ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.sroa.7.0.i = phi i8 [ %i.bj, %bb.q ], [ undef, %bb.t ], [ undef, %bb.s ], [ undef, %bb.n ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.sroa.830.0.i = phi ptr [ %i.bk, %bb.q ], [ %.sink43.i.i, %bb.t ], [ %.sink43.i.i, %bb.s ], [ %i.bd, %bb.n ], [ %i.ap, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21257
  %i.bq = load i8, ptr %i.w, align 8, !alias.scope !21239, !noalias !21236, !noundef !8
  %i.br = add i8 %i.bq, 1
  store i8 %i.br, ptr %i.w, align 8, !alias.scope !21239, !noalias !21236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21257
  store i8 %.sroa.028.0.i, ptr %i.g, align 8, !noalias !21257
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 1, !noalias !21257
  %.sroa.830.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.830.0.i, ptr %.sroa.830.0..sroa_idx.i, align 8, !noalias !21257
  %i.bs = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.w unwind label %bb.v, !noalias !21236 ; 10 uses

bb.v:                                             ; preds = %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #42
          to label %common.resume.i unwind label %bb.z, !noalias !21236

bb.w:                                             ; preds = %_RINvXs6_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s6_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !21257
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.bs, ptr %i.bu, align 8, !noalias !21257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21257
  %i.bv = load i8, ptr %i.h, align 8, !range !3519, !noalias !21257, !noundef !8 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 41
  br i1 %i.bw, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %bb.ag, label %.thread35.thread.i

bb.y:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !21257, !nonnull !8, !align !216, !noundef !8
  %.not47.i = icmp eq ptr %i.bs, null
  br i1 %.not47.i, label %.thread35.thread59.i, label %bb.aa

.thread35.thread.i:                               ; preds = %bb.x
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h), !noalias !21236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21257
  br label %bb.af

bb.z:                                             ; preds = %bb.v
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !21236
  unreachable

.thread35.thread59.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21257
  br label %bb.af

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !21302)
  call void @llvm.experimental.noalias.scope.decl(metadata !21305)
  %i.ca = load i64, ptr %i.bs, align 8, !range !3250, !alias.scope !21308, !noalias !21309, !noundef !8
  switch i64 %i.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.ab
    i64 1, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !21308, !noalias !21309, !noundef !8 ; 2 uses
  %i.cc = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !21308, !noalias !21309, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #46, !noalias !21312
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ad:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ce)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ae, !noalias !21309

bb.ae:                                            ; preds = %bb.ad
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef 40, i64 noundef 8) #46, !noalias !21309
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef 40, i64 noundef 8) #46, !noalias !21309
  br label %.thread35.thread59.i

bb.af:                                            ; preds = %.thread35.thread59.i, %.thread35.thread.i, %bb.e
  %.sroa.88.1.i = phi ptr [ %i.by, %.thread35.thread59.i ], [ %i.aa, %bb.e ], [ %i.bs, %.thread35.thread.i ]
  %i.cg = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.88.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !21236
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !21236, !noalias !21239
  store i8 41, ptr %0, align 8, !alias.scope !21236, !noalias !21239
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.ag:                                            ; preds = %bb.x
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.217.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.214.0..sroa_idx.i, i64 7, i1 false), !noalias !21239
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !21257
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !21257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21257
  store i8 %i.bv, ptr %0, align 8, !alias.scope !21236, !noalias !21239
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !21236, !noalias !21239
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !21236, !noalias !21239
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums6_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.af, %bb.ag, %.loopexit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2x_8DataTypeNtB1l_11Deserialize11deserializeNtB2s_9___VisitorNtB1l_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21318)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !21321, !noalias !21324, !noundef !8 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.j, align 8, !alias.scope !21327, !noalias !21328 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !21321, !noalias !21324, !nonnull !8, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.p = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21329)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !21330, !noundef !8
  switch i8 %i.r, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !9771

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.s = add i64 %i.p, 1                          ; 3 uses
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !21331, !noalias !21328
  %exitcond.not.i.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21334
  store i64 5, ptr %i.i, align 8, !noalias !21334
  %i.t = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !21313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21334
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !21313, !noalias !21316
  store i8 41, ptr %0, align 8, !alias.scope !21313, !noalias !21316
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.w = load i8, ptr %i.v, align 8, !alias.scope !21316, !noalias !21313, !noundef !8
  %i.x = add i8 %i.w, -1                          ; 2 uses
  store i8 %i.x, ptr %i.v, align 8, !alias.scope !21316, !noalias !21313
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.g, !prof !3

bb.e:                                             ; preds = %bb.b
  %i.z = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @251), !noalias !21313
  br label %bb.ad

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21334
  store i64 24, ptr %i.h, align 8, !noalias !21334
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !21313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21334
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !21313, !noalias !21316
  store i8 41, ptr %0, align 8, !alias.scope !21313, !noalias !21316
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.d
  %i.ac = add i64 %i.p, 1
  store i64 %i.ac, ptr %i.j, align 8, !alias.scope !21335, !noalias !21313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21334
  store ptr %1, ptr %i.e, align 8, !noalias !21338
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 1, ptr %i.ad, align 8, !noalias !21338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21338
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21345)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21348
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !21349
  %i.ae = load i8, ptr %i.c, align 8, !range !89, !noalias !21348, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.h

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !21348, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21348
  br label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !range !89, !noalias !21348, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21348
  br i1 %i.ak, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.l

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.h
  %i.al = load ptr, ptr %i.e, align 8, !alias.scope !21350, !noalias !21338, !nonnull !8, !align !216, !noundef !8
  %i.am = tail call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2C_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.al), !noalias !21351 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = trunc i64 %i.an to i1
  br i1 %i.ap, label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.i

common.resume.i:                                  ; preds = %bb.ac, %bb.t, %bb.n, %bb.m
  %common.resume.op.i = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.cb, %bb.ac ], [ %i.ba, %bb.n ], [ %i.bp, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  store ptr %i.ao, ptr %i.d, align 8, !noalias !21338
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21355)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21358
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc.i.i unwind label %bb.m, !noalias !21349

.noexc.i.i:                                       ; preds = %bb.i
  %i.aq = load i8, ptr %i.b, align 8, !range !89, !noalias !21358, !noundef !8
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.thread39.i.i, label %bb.j

.thread39.i.i:                                    ; preds = %.noexc.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !21358, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21358
  br label %bb.q

bb.j:                                             ; preds = %.noexc.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.av = load i8, ptr %i.au, align 1, !range !89, !noalias !21358, !noundef !8
  %i.aw = trunc nuw i8 %i.av to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21358
  br i1 %i.aw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.e, align 8, !alias.scope !21359, !noalias !21338, !nonnull !8, !align !216, !noundef !8
  %i.ay = invoke { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2C_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ax)
          to label %bb.o unwind label %bb.m, !noalias !21349 ; 2 uses

bb.l:                                             ; preds = %bb.h
  %i.az = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166), !noalias !21349
  br label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.m:                                             ; preds = %bb.p, %bb.k, %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21363)
  %i.bb = load ptr, ptr %i.d, align 8, !alias.scope !21366, !noalias !21338, !nonnull !8, !noundef !8
  %i.bc = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !21367
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.n, label %common.resume.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45
          to label %common.resume.i unwind label %bb.s, !noalias !21349

bb.o:                                             ; preds = %bb.k
  %i.be = extractvalue { i64, ptr } %i.ay, 0
  %i.bf = extractvalue { i64, ptr } %i.ay, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  %i.bg = trunc i64 %i.be to i1
  %.pre5 = load ptr, ptr %i.d, align 8, !noalias !21338 ; 2 uses
  br i1 %i.bg, label %bb.q, label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.p:                                             ; preds = %bb.j
  %i.bh = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %._crit_edge unwind label %bb.m, !noalias !21349

._crit_edge:                                      ; preds = %bb.p
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !21368, !noalias !21338
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.o, %.thread39.i.i
  %i.bi = phi ptr [ %.pre5, %bb.o ], [ %i.ao, %.thread39.i.i ], [ %.pre, %._crit_edge ]
  %.sink51.i.i = phi ptr [ %i.bf, %bb.o ], [ %i.at, %.thread39.i.i ], [ %i.bh, %._crit_edge ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21374)
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !21375
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.r, label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #45, !noalias !21349
  br label %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.s:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !21349
  unreachable

_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.o, %bb.r, %bb.q, %bb.l, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.028.0.i = phi i8 [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ 41, %bb.r ], [ 41, %bb.q ], [ 41, %bb.l ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 40, %bb.o ]
  %.sroa.729.0.i = phi ptr [ %i.ah, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ %.sink51.i.i, %bb.r ], [ %.sink51.i.i, %bb.q ], [ %i.az, %bb.l ], [ %i.ao, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.pre5, %bb.o ]
  %.sroa.10.0.i = phi ptr [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ undef, %bb.r ], [ undef, %bb.q ], [ undef, %bb.l ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.bf, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21334
  %i.bm = load i8, ptr %i.v, align 8, !alias.scope !21316, !noalias !21313, !noundef !8
  %i.bn = add i8 %i.bm, 1
  store i8 %i.bn, ptr %i.v, align 8, !alias.scope !21316, !noalias !21313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21334
  store i8 %.sroa.028.0.i, ptr %i.f, align 8, !noalias !21334
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.729.0.i, ptr %.sroa.729.0..sroa_idx.i, align 8, !noalias !21334
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !21334
  %i.bo = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.u unwind label %bb.t, !noalias !21313 ; 10 uses

bb.t:                                             ; preds = %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.f) #42
          to label %common.resume.i unwind label %bb.x, !noalias !21313

bb.u:                                             ; preds = %_RINvXs7_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBh_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBc_9___VisitorNtB1f_7Visitor10visit_enumNtB6_s7_9___VisitorB2q_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3s_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !21334
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.bo, ptr %i.bq, align 8, !noalias !21334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21334
  %i.br = load i8, ptr %i.g, align 8, !range !3519, !noalias !21334, !noundef !8 ; 2 uses
  %i.bs = icmp eq i8 %i.br, 41
  br i1 %i.bs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %bb.ae, label %.thread34.thread.i

bb.w:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !21334, !nonnull !8, !align !216, !noundef !8
  %.not46.i = icmp eq ptr %i.bo, null
  br i1 %.not46.i, label %.thread34.thread58.i, label %bb.y

.thread34.thread.i:                               ; preds = %bb.v
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g), !noalias !21313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21334
  br label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !21313
  unreachable

.thread34.thread58.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21334
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !21376)
  call void @llvm.experimental.noalias.scope.decl(metadata !21379)
  %i.bw = load i64, ptr %i.bo, align 8, !range !3250, !alias.scope !21382, !noalias !21383, !noundef !8
  switch i64 %i.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.z
    i64 1, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !21382, !noalias !21383, !noundef !8 ; 2 uses
  %i.by = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !21382, !noalias !21383, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #46, !noalias !21386
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ab:                                            ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ca)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ac, !noalias !21383

bb.ac:                                            ; preds = %bb.ab
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef 40, i64 noundef 8) #46, !noalias !21383
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef 40, i64 noundef 8) #46, !noalias !21383
  br label %.thread34.thread58.i

bb.ad:                                            ; preds = %.thread34.thread58.i, %.thread34.thread.i, %bb.e
  %.sroa.88.1.i = phi ptr [ %i.bu, %.thread34.thread58.i ], [ %i.z, %bb.e ], [ %i.bo, %.thread34.thread.i ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.88.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !21313
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !alias.scope !21313, !noalias !21316
  store i8 41, ptr %0, align 8, !alias.scope !21313, !noalias !21316
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.ae:                                            ; preds = %bb.v
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.217.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.214.0..sroa_idx.i, i64 7, i1 false), !noalias !21316
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !21334
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !21334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21334
  store i8 %i.br, ptr %0, align 8, !alias.scope !21313, !noalias !21316
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !21313, !noalias !21316
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !21313, !noalias !21316
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums7_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ad, %bb.ae, %.loopexit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtCseqDwI8vvjGQ_10serde_json2deINtB6_13VariantAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de13VariantAccess13tuple_variantNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2x_8DataTypeNtB1l_11Deserialize11deserializeNtB2s_9___VisitorNtB1l_7Visitor10visit_enums_9___VisitorECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21392)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !21395, !noalias !21398, !noundef !8 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.k, align 8, !alias.scope !21401, !noalias !21402 ; 2 uses
  %i.n = icmp ult i64 %.promoted.i.i, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !21395, !noalias !21398, !nonnull !8, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.q = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.t, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21403)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !21404, !noundef !8
  switch i8 %i.s, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !9771

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.t = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.t, ptr %i.k, align 8, !alias.scope !21405, !noalias !21402
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !21408
  store i64 5, ptr %i.j, align 8, !noalias !21408
  %i.u = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !21387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21408
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !21387, !noalias !21390
  store i8 41, ptr %0, align 8, !alias.scope !21387, !noalias !21390
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.x = load i8, ptr %i.w, align 8, !alias.scope !21390, !noalias !21387, !noundef !8
  %i.y = add i8 %i.x, -1                          ; 2 uses
  store i8 %i.y, ptr %i.w, align 8, !alias.scope !21390, !noalias !21387
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g, !prof !3

bb.e:                                             ; preds = %bb.b
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @252), !noalias !21387
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21408
  store i64 24, ptr %i.i, align 8, !noalias !21408
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !21387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21408
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !21387, !noalias !21390
  store i8 41, ptr %0, align 8, !alias.scope !21387, !noalias !21390
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_seqNtNvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtB2y_8DataTypeNtB1l_11Deserialize11deserializeNtB2t_9___VisitorNtB1l_7Visitor10visit_enums_9___VisitorECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.d
  %i.ad = add i64 %i.q, 1
  store i64 %i.ad, ptr %i.k, align 8, !alias.scope !21409, !noalias !21387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21408
  store ptr %1, ptr %i.f, align 8, !noalias !21412
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 1, ptr %i.ae, align 8, !noalias !21412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21419)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21422
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !21423
  %i.af = load i8, ptr %i.d, align 8, !range !89, !noalias !21422, !noundef !8
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.h

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !21422, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21422
  br label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3q_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !range !89, !noalias !21422, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21422
  br i1 %i.al, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.n

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.h
  %i.am = load ptr, ptr %i.f, align 8, !alias.scope !21424, !noalias !21412, !nonnull !8, !align !216, !noundef !8
  %i.an = tail call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2C_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.am), !noalias !21425 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = trunc i64 %i.ao to i1
  br i1 %i.aq, label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3q_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.i

common.resume.i:                                  ; preds = %bb.ae, %bb.v, %bb.p, %bb.o
  %common.resume.op.i = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.cf, %bb.ae ], [ %i.be, %bb.p ], [ %i.bt, %bb.v ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  store ptr %i.ap, ptr %i.e, align 8, !noalias !21412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21432
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc.i.i unwind label %bb.o, !noalias !21423

.noexc.i.i:                                       ; preds = %bb.i
  %i.ar = load i8, ptr %i.c, align 8, !range !89, !noalias !21432, !noundef !8
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !21432, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21432
  br label %bb.s

bb.k:                                             ; preds = %.noexc.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !89, !noalias !21432, !noundef !8
  %i.ax = trunc nuw i8 %i.aw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21432
  br i1 %i.ax, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21432
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !21435, !noalias !21436, !nonnull !8, !align !216, !noundef !8
  invoke void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_i32NtNvXsR_NtB1l_5implslNtB1l_11Deserialize11deserialize16PrimitiveVisitorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ay)
          to label %.noexc18.i.i unwind label %bb.o, !noalias !21423

.noexc18.i.i:                                     ; preds = %bb.l
  %i.az = load i32, ptr %i.b, align 8, !range !11877, !noalias !21432, !noundef !8
  %i.ba = trunc nuw i32 %i.az to i1
  br i1 %i.ba, label %bb.m, label %bb.q

bb.m:                                             ; preds = %.noexc18.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !21432, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21432
  br label %bb.s

bb.n:                                             ; preds = %bb.h
  %i.bd = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @310, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166), !noalias !21423
  br label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3q_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.o:                                             ; preds = %bb.r, %bb.l, %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21440)
  %i.bf = load ptr, ptr %i.e, align 8, !alias.scope !21443, !noalias !21412, !nonnull !8, !noundef !8
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !21444
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.p, label %common.resume.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45
          to label %common.resume.i unwind label %bb.u, !noalias !21423

bb.q:                                             ; preds = %.noexc18.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !21432, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21432
  %i.bk = load ptr, ptr %i.e, align 8, !noalias !21412, !nonnull !8, !noundef !8
  br label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3q_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.r:                                             ; preds = %bb.k
  %i.bl = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull @310, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.s unwind label %bb.o, !noalias !21423

bb.s:                                             ; preds = %bb.r, %bb.m, %bb.j
  %.sink41.i.i = phi ptr [ %i.au, %bb.j ], [ %i.bc, %bb.m ], [ %i.bl, %bb.r ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21448)
  %i.bm = load ptr, ptr %i.e, align 8, !alias.scope !21451, !noalias !21412, !nonnull !8, !noundef !8
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !21452
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.t, label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3q_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #45, !noalias !21423
  br label %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3q_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.u:                                             ; preds = %bb.p
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !21423
  unreachable

_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3q_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.t, %bb.s, %bb.q, %bb.n, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.028.0.i = phi i8 [ 29, %bb.q ], [ 41, %bb.t ], [ 41, %bb.s ], [ 41, %bb.n ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 41, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.sroa.729.0.i = phi i32 [ %i.bj, %bb.q ], [ undef, %bb.t ], [ undef, %bb.s ], [ undef, %bb.n ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ undef, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.sroa.830.0.i = phi ptr [ %i.bk, %bb.q ], [ %.sink41.i.i, %bb.t ], [ %.sink41.i.i, %bb.s ], [ %i.bd, %bb.n ], [ %i.ap, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21408
  %i.bq = load i8, ptr %i.w, align 8, !alias.scope !21390, !noalias !21387, !noundef !8
  %i.br = add i8 %i.bq, 1
  store i8 %i.br, ptr %i.w, align 8, !alias.scope !21390, !noalias !21387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21408
  store i8 %.sroa.028.0.i, ptr %i.g, align 8, !noalias !21408
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %.sroa.729.0.i, ptr %.sroa.729.0..sroa_idx.i, align 4, !noalias !21408
  %.sroa.830.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.830.0.i, ptr %.sroa.830.0..sroa_idx.i, align 8, !noalias !21408
  %i.bs = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.w unwind label %bb.v, !noalias !21387 ; 10 uses

bb.v:                                             ; preds = %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3q_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #42
          to label %common.resume.i unwind label %bb.z, !noalias !21387

bb.w:                                             ; preds = %_RINvXs_NvXs0_NvXNvNtCsfYVtenZkBsn_12arrow_schema8datatypes_1__NtBg_8DataTypeNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3q_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !21408
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.bs, ptr %i.bu, align 8, !noalias !21408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21408
  %i.bv = load i8, ptr %i.h, align 8, !range !3519, !noalias !21408, !noundef !8 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 41
  br i1 %i.bw, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %bb.ag, label %.thread35.thread.i

bb.y:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !21408, !nonnull !8, !align !216, !noundef !8
  %.not47.i = icmp eq ptr %i.bs, null
  br i1 %.not47.i, label %.thread35.thread59.i, label %bb.aa

.thread35.thread.i:                               ; preds = %bb.x
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h), !noalias !21387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21408
  br label %bb.af

bb.z:                                             ; preds = %bb.v
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !21387
  unreachable

.thread35.thread59.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21408
  br label %bb.af

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !21453)
  call void @llvm.experimental.noalias.scope.decl(metadata !21456)
  %i.ca = load i64, ptr %i.bs, align 8, !range !3250, !alias.scope !21459, !noalias !21460, !noundef !8
  switch i64 %i.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.ab
    i64 1, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !21459, !noalias !21460, !noundef !8 ; 2 uses
  %i.cc = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !21459, !noalias !21460, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #46, !noalias !21463
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ad:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ce)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ae, !noalias !21460

bb.ae:                                            ; preds = %bb.ad
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef 40, i64 noundef 8) #46, !noalias !21460
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef 40, i64 noundef 8) #46, !noalias !21460
  br label %.thread35.thread59.i

bb.af:                                            ; preds = %.thread35.thread59.i, %.thread35.thread.i, %bb.e
  %.sroa.88.1.i = phi ptr [ %i.by, %.thread35.thread59.i ], [ %i.aa, %bb.e ], [ %i.bs, %.thread35.thread.i ]
  %i.cg = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.88.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !21387
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !21387, !noalias !21390
  store i8 41, ptr %0, align 8, !alias.scope !21387, !noalias !21390
end_hunk_9
begin_hunk_10_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete7execute00B9_:bb.a

bb.ni:                                            ; preds = %bb.ng
  %.sroa.0569.320..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0569, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0569.320..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %.sroa.0569, ptr noundef nonnull align 16 dereferenceable(320) %i.cm, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !23316
  store i64 1, ptr %i.l, align 16, !noalias !23316
  %i.afx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.afx, align 8, !noalias !23316
  %i.afy = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(344) %i.afy, ptr noundef nonnull align 16 dereferenceable(344) %.sroa.0569, i64 344, i1 false)
  %.sroa.7570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  store i8 0, ptr %.sroa.7570.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !23319
  %i.afz = call noundef align 16 dereferenceable_or_null(368) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 368, i64 noundef range(i64 8, 17) 16) #46, !noalias !23319 ; 3 uses
  %i.aga = icmp eq ptr %i.afz, null
  br i1 %i.aga, label %bb.nj, label %bb.nm, !prof !308

bb.nj:                                            ; preds = %bb.ni
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 368) #41
          to label %.noexc.i294 unwind label %bb.nk, !noalias !23316

.noexc.i294:                                      ; preds = %bb.nj
  unreachable

bb.nk:                                            ; preds = %bb.nj
  %i.agb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logical14MetricObserverEEB1p_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.l) #42
          to label %.body295 unwind label %bb.nl, !noalias !23316

bb.nl:                                            ; preds = %bb.nk
  %i.agc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !23316
  unreachable

.body295:                                         ; preds = %bb.nk, %bb.qw
  %.pn62 = phi { ptr, i32 } [ %i.afw, %bb.qw ], [ %i.agb, %bb.nk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0569)
  br label %bb.qx

bb.nm:                                            ; preds = %bb.ni
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.afz, ptr noundef nonnull align 16 dereferenceable(368) %i.l, i64 368, i1 false), !noalias !23316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !23316
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0569)
  %i.agd = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.afz, ptr %i.agd, align 8
  %i.age = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr @337, ptr %i.age, align 16
  store i64 28, ptr %i.co, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %i.agf = invoke { ptr, i1 } @_RNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtB5_14LogicalPlanExt12into_builder(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.co)
          to label %bb.no unwind label %bb.nn     ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit332: ; preds = %bb.qt, %bb.qu, %bb.nt, %bb.nn
  %.pn66.pn = phi { ptr, i32 } [ %i.agg, %bb.nn ], [ %i.agr, %bb.nt ], [ %.pn64, %bb.qu ], [ %.pn64, %bb.qt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.ql

bb.nn:                                            ; preds = %bb.nm
  %i.agg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit332

bb.no:                                            ; preds = %bb.nm
  %i.agh = extractvalue { ptr, i1 } %i.agf, 0
  %i.agi = extractvalue { ptr, i1 } %i.agf, 1
  store ptr %i.agh, ptr %i.ci, align 8
  %i.agj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.agk = zext i1 %i.agi to i8
  store i8 %i.agk, ptr %i.agj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.agl = getelementptr inbounds nuw i8, ptr %1, i64 1472 ; 2 uses
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.cg, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.agl)
          to label %bb.nq unwind label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %bb.qt

bb.nq:                                            ; preds = %bb.no
  invoke void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr11is_not_true(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ch, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.cg)
          to label %bb.ns unwind label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.agn = landingpad { ptr, i32 }
          cleanup
  br label %bb.qt

bb.ns:                                            ; preds = %bb.nq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %i.ago = load ptr, ptr %i.ci, align 8, !nonnull !8, !noundef !8
  %i.agp = load i8, ptr %i.agj, align 8, !range !89, !noundef !8
  %i.agq = trunc nuw i8 %i.agp to i1
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder6filterNtNtB9_4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cj, ptr noundef nonnull %i.ago, i1 noundef zeroext %i.agq, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.ch)
          to label %bb.nu unwind label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.agr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit332

bb.nu:                                            ; preds = %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.experimental.noalias.scope.decl(metadata !23322)
  %i.ags = load i64, ptr %i.cj, align 8, !range !43, !alias.scope !23325, !noalias !23322, !noundef !8 ; 2 uses
  %.not.i297 = icmp eq i64 %i.ags, 20
  %i.agt = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.agu = load ptr, ptr %i.agt, align 8, !alias.scope !23327 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.agw = load i8, ptr %i.agv, align 8, !alias.scope !23327 ; 2 uses
  br i1 %.not.i297, label %bb.nw, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %.sroa.12586.0..sroa_idx587 = getelementptr inbounds nuw i8, ptr %i.cj, i64 17
  %.sroa.4591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4591.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12586.0..sroa_idx587, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  store i64 %i.ags, ptr %i.k, align 8, !noalias !23328
  %.sroa.2589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.agu, ptr %.sroa.2589.0..sroa_idx, align 8, !noalias !23328
  %.sroa.3590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 %i.agw, ptr %.sroa.3590.0..sroa_idx, align 8, !noalias !23328
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.qo unwind label %bb.nx

bb.nw:                                            ; preds = %bb.nu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  %i.agx = trunc nuw i8 %i.agw to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %i.ck, ptr noundef nonnull %i.agu, i1 noundef zeroext %i.agx)
          to label %bb.ny unwind label %bb.nx

bb.nx:                                            ; preds = %bb.nv, %bb.nw
  %i.agy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.ql

bb.ny:                                            ; preds = %bb.nw
  call void @llvm.experimental.noalias.scope.decl(metadata !23331)
  %i.agz = load i64, ptr %i.ck, align 16, !range !289, !alias.scope !23334, !noalias !23331, !noundef !8 ; 2 uses
  %i.aha = icmp eq i64 %i.agz, 36
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8574, ptr noundef nonnull align 8 dereferenceable(40) %i.ahb, i64 40, i1 false), !alias.scope !23336
  br i1 %i.aha, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8574, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.j)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtB1o_10operations6delete13DeleteMetricsENtNtB1o_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1o_.exit301 unwind label %bb.qm

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtB1o_10operations6delete13DeleteMetricsENtNtB1o_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1o_.exit301: ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.qn

bb.oa:                                            ; preds = %bb.ny
  %.sroa.10576.0..sroa_idx577 = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %.sroa.5594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5594.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.10576.0..sroa_idx577, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %.sroa.4593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4593.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8574, i64 40, i1 false)
  %i.ahc = getelementptr inbounds nuw i8, ptr %1, i64 2083 ; 3 uses
  store i8 1, ptr %i.ahc, align 1
  store i64 %i.agz, ptr %i.cl, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8574)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations3cdc16should_write_cdc(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ahd)
          to label %bb.oc unwind label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.qh

bb.oc:                                            ; preds = %bb.oa
  call void @llvm.experimental.noalias.scope.decl(metadata !23337)
  %i.ahf = load i64, ptr %i.cf, align 16, !range !296, !alias.scope !23340, !noalias !23337, !noundef !8 ; 2 uses
  %.not.i302 = icmp eq i64 %i.ahf, -9223372036854775711
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ahh = load i8, ptr %i.ahg, align 8, !alias.scope !23342 ; 3 uses
  br i1 %.not.i302, label %bb.od, label %bb.qi

bb.od:                                            ; preds = %bb.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %i.ahi = trunc nuw i8 %i.ahh to i1
  br i1 %i.ahi, label %bb.og, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  store i8 0, ptr %i.ahc, align 1
  %.sroa.0682.0.copyload = load i64, ptr %i.cl, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4593.0..sroa_idx, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.06.sroa.8, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5594.0..sroa_idx, i64 272, i1 false)
  br label %bb.of

bb.of:                                            ; preds = %bb.pl, %bb.oe
  %.sroa.06.sroa.0.0 = phi i64 [ %i.ajq, %bb.pl ], [ %.sroa.0682.0.copyload, %bb.oe ]
  %i.ahj = getelementptr inbounds nuw i8, ptr %1, i64 1616 ; 2 uses
  store i64 %.sroa.06.sroa.0.0, ptr %i.ahj, align 16
  %.sroa.06.sroa.7.0..sroa_idx680 = getelementptr inbounds nuw i8, ptr %1, i64 1624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.sroa.7.0..sroa_idx680, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.sroa.7, i64 40, i1 false)
  %.sroa.06.sroa.8.0..sroa_idx681 = getelementptr inbounds nuw i8, ptr %1, i64 1664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.06.sroa.8.0..sroa_idx681, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.06.sroa.8, i64 272, i1 false)
  %i.ahk = getelementptr inbounds nuw i8, ptr %1, i64 2081
  store i8 %i.ahh, ptr %i.ahk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.sroa.8)
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ahm = load ptr, ptr %i.ahl, align 16, !nonnull !8, !noundef !8
  %i.ahn = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aho = load ptr, ptr %i.ahn, align 8, !nonnull !8, !align !216, !noundef !8
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 48
  %i.ahq = load ptr, ptr %i.ahp, align 8, !invariant.load !8, !nonnull !8
  %i.ahr = invoke { ptr, ptr } %i.ahq(ptr noundef nonnull %i.ahm, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ahj)
          to label %bb.pn unwind label %bb.pm     ; 2 uses

bb.og:                                            ; preds = %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8607)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  invoke fastcc void @_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(320) %i.bz, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.afv)
          to label %bb.oi unwind label %bb.oh

bb.oh:                                            ; preds = %bb.oi, %bb.og
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.om

bb.oi:                                            ; preds = %bb.og
  %i.aht = invoke { ptr, i1 } @_RNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtB5_14LogicalPlanExt12into_builder(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.bz)
          to label %bb.oj unwind label %bb.oh     ; 2 uses

bb.oj:                                            ; preds = %bb.oi
  %i.ahu = extractvalue { ptr, i1 } %i.aht, 0
  %i.ahv = extractvalue { ptr, i1 } %i.aht, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.ahw = getelementptr inbounds nuw i8, ptr %1, i64 2082
  store i8 0, ptr %i.ahw, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.by, ptr noundef nonnull align 16 dereferenceable(112) %i.agl, i64 112, i1 false)
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder6filterNtNtB9_4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ca, ptr noundef nonnull %i.ahu, i1 noundef zeroext %i.ahv, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.by)
          to label %bb.ol unwind label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.om

bb.ol:                                            ; preds = %bb.oj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.experimental.noalias.scope.decl(metadata !23343)
  %i.ahy = load i64, ptr %i.ca, align 8, !range !43, !alias.scope !23346, !noalias !23343, !noundef !8 ; 2 uses
  %.not.i303 = icmp eq i64 %i.ahy, 20
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.aia = load ptr, ptr %i.ahz, align 8, !alias.scope !23348 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.aic = load i8, ptr %i.aib, align 8, !alias.scope !23348 ; 2 uses
  br i1 %.not.i303, label %bb.oo, label %bb.on

bb.om:                                            ; preds = %bb.oh, %bb.ok
  %.pn75 = phi { ptr, i32 } [ %i.ahs, %bb.oh ], [ %i.ahx, %bb.ok ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %bb.py

bb.on:                                            ; preds = %bb.ol
  %.sroa.12629.0..sroa_idx630 = getelementptr inbounds nuw i8, ptr %i.ca, i64 17
  %.sroa.4634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4634.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12629.0..sroa_idx630, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  store i64 %i.ahy, ptr %i.i, align 8, !noalias !23349
  %.sroa.2632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aia, ptr %.sroa.2632.0..sroa_idx, align 8, !noalias !23349
  %.sroa.3633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 %i.aic, ptr %.sroa.3633.0..sroa_idx, align 8, !noalias !23349
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.qf unwind label %bb.qe

bb.oo:                                            ; preds = %bb.ol
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  store ptr %i.aia, ptr %i.cb, align 8
  %i.aid = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store i8 %i.aic, ptr %i.aid, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.bx, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 6)
          to label %bb.oq unwind label %bb.qc

bb.op:                                            ; preds = %bb.oq
  %i.aie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit327

bb.oq:                                            ; preds = %bb.oo
  %i.aif = load ptr, ptr %i.cb, align 8, !nonnull !8, !noundef !8
  %i.aig = load i8, ptr %i.aid, align 8, !range !89, !noundef !8
  %i.aih = trunc nuw i8 %i.aig to i1
  invoke void @_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB5_21LogicalPlanBuilderExt11with_column(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cc, ptr noundef nonnull %i.aif, i1 noundef zeroext %i.aih, ptr noalias noundef nonnull readonly captures(address, read_provenance) @338, i64 noundef 12, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.bx)
          to label %bb.or unwind label %bb.op

bb.or:                                            ; preds = %bb.oq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.experimental.noalias.scope.decl(metadata !23352)
  %i.aii = load i64, ptr %i.cc, align 8, !range !43, !alias.scope !23355, !noalias !23352, !noundef !8 ; 2 uses
  %.not.i307 = icmp eq i64 %i.aii, 20
  %i.aij = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.aik = load ptr, ptr %i.aij, align 8, !alias.scope !23357 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.aim = load i8, ptr %i.ail, align 8, !alias.scope !23357 ; 2 uses
  br i1 %.not.i307, label %bb.ot, label %bb.os

bb.os:                                            ; preds = %bb.or
  %.sroa.12619.0..sroa_idx620 = getelementptr inbounds nuw i8, ptr %i.cc, i64 17
  %.sroa.4638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4638.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12619.0..sroa_idx620, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  store i64 %i.aii, ptr %i.h, align 8, !noalias !23358
  %.sroa.2636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.aik, ptr %.sroa.2636.0..sroa_idx, align 8, !noalias !23358
  %.sroa.3637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 %i.aim, ptr %.sroa.3637.0..sroa_idx, align 8, !noalias !23358
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.qb unwind label %bb.ou

bb.ot:                                            ; preds = %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.ain = trunc nuw i8 %i.aim to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %i.cd, ptr noundef nonnull %i.aik, i1 noundef zeroext %i.ain)
          to label %bb.ov unwind label %bb.ou

bb.ou:                                            ; preds = %bb.os, %bb.ot
  %i.aio = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %bb.py

bb.ov:                                            ; preds = %bb.ot
  call void @llvm.experimental.noalias.scope.decl(metadata !23361)
  %i.aip = load i64, ptr %i.cd, align 16, !range !289, !alias.scope !23364, !noalias !23361, !noundef !8 ; 2 uses
  %i.aiq = icmp eq i64 %i.aip, 36
  %i.air = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8607, ptr noundef nonnull align 8 dereferenceable(40) %i.air, i64 40, i1 false), !alias.scope !23366
  br i1 %i.aiq, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8607, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtB1o_10operations6delete13DeleteMetricsENtNtB1o_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1o_.exit313 unwind label %bb.pz

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtB1o_10operations6delete13DeleteMetricsENtNtB1o_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1o_.exit313: ; preds = %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.qa

bb.ox:                                            ; preds = %bb.ov
  %.sroa.10609.0..sroa_idx610 = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %.sroa.5641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5641.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.10609.0..sroa_idx610, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %.sroa.4640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4640.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8607, i64 40, i1 false)
  store i64 %i.aip, ptr %i.ce, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8607)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8644)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store i8 0, ptr %i.ahc, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.bs, ptr noundef nonnull align 16 dereferenceable(320) %i.cl, i64 320, i1 false)
  %i.ais = invoke { ptr, i1 } @_RNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtB5_14LogicalPlanExt12into_builder(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.bs)
          to label %bb.oz unwind label %bb.oy     ; 2 uses

bb.oy:                                            ; preds = %bb.ox
  %i.ait = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %.thread830

bb.oz:                                            ; preds = %bb.ox
  %i.aiu = extractvalue { ptr, i1 } %i.ais, 0
  %i.aiv = extractvalue { ptr, i1 } %i.ais, 1
  store ptr %i.aiu, ptr %i.bt, align 8
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.aix = zext i1 %i.aiv to i8
  store i8 %i.aix, ptr %i.aiw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.br, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.pb unwind label %bb.pv

bb.pa:                                            ; preds = %bb.pb
end_hunk_10
begin_hunk_11_@_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB7_22FileSystemCheckBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %.sroa.3.sroa.6.0.copyload.i = load ptr, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i, align 16, !noalias !26651 ; 3 uses
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %.sroa.3.sroa.7.0.copyload.i = load ptr, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !26651 ; 2 uses
  %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 48, i1 false), !noalias !26651
  %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.3.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 160, i1 false), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !26651
  %.not.i81 = icmp eq i64 %i.fs, 3
  br i1 %.not.i81, label %bb.bw, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !26651
  %i.fv = icmp eq i64 %i.fs, 2
  br i1 %i.fv, label %bb.bq, label %bb.ay

bb.ax:                                            ; preds = %bb.ay
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !26651
  br label %.thread.i

bb.ay:                                            ; preds = %bb.aw
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx148.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.3.sroa.9.i, i64 160, i1 false), !noalias !26651
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx148.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.sroa.8.i, i64 48, i1 false), !noalias !26651
  store i64 %i.fs, ptr %i.bo, align 8, !noalias !26651
  %.sroa.4.0..sroa_idx148.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store <2 x i64> %i.fu, ptr %.sroa.4.0..sroa_idx148.i, align 8, !noalias !26651
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %.sroa.3.sroa.3.0.copyload.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx148.sroa_idx.i, align 8, !noalias !26651
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  store ptr %.sroa.3.sroa.4.0.copyload.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx148.sroa_idx.i, align 8, !noalias !26651
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i64 %.sroa.3.sroa.5.0.copyload.i, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx148.sroa_idx.i, align 8, !noalias !26651
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store ptr %.sroa.3.sroa.6.0.copyload.i, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx148.sroa_idx.i, align 8, !noalias !26651
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store ptr %.sroa.3.sroa.7.0.copyload.i, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx148.sroa_idx.i, align 8, !noalias !26651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !26651
  %i.fx = inttoptr i64 %.sroa.3.sroa.5.0.copyload.i to ptr
  %i.fy = ptrtoint ptr %.sroa.3.sroa.6.0.copyload.i to i64
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_check16is_absolute_path(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fx, i64 noundef %i.fy)
          to label %bb.az unwind label %bb.ax, !noalias !26655

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !26659)
  %i.fz = load i64, ptr %i.bn, align 16, !range !296, !alias.scope !26662, !noalias !26664, !noundef !8 ; 2 uses
  %.not.i97.i = icmp eq i64 %i.fz, -9223372036854775711
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.gb = load i8, ptr %i.ga, align 8, !alias.scope !26665, !noalias !26651 ; 2 uses
  br i1 %.not.i97.i, label %bb.ba, label %bb.bl

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !26651
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !26651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !26651
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx148.sroa_idx.i)
          to label %bb.be unwind label %.thread261.i, !noalias !26655

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !26666
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef range(i64 0, -9223372036854775808) 48, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.bi, !noalias !26655

.noexc.i:                                         ; preds = %bb.bc
  %i.gd = load i64, ptr %i.aq, align 8, !range !64, !noalias !26666, !noundef !8
  %i.ge = trunc nuw i64 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !65, !noalias !26666, !noundef !8 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  br i1 %i.ge, label %bb.bd, label %bb.bj, !prof !3

bb.bd:                                            ; preds = %.noexc.i
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !26666
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gg, i64 %i.gi) #41
          to label %.noexc98.i unwind label %bb.bi, !noalias !26655

.noexc98.i:                                       ; preds = %bb.bd
  unreachable

.thread261.i:                                     ; preds = %bb.bb
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !26651
  br label %.thread.i

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !26651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bk, ptr noundef nonnull align 8 dereferenceable(272) %i.bo, i64 272, i1 false), !noalias !26651
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertB1x_(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.bm, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(272) %i.bk)
          to label %_RNvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE6insertB1N_.exit.i unwind label %bb.bh, !noalias !26655

_RNvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE6insertB1N_.exit.i: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !26651
  %i.gk = load i64, ptr %i.bm, align 8, !range !3023, !alias.scope !26676, !noalias !26651, !noundef !8
  %i.gl = icmp eq i64 %i.gk, 2
  br i1 %i.gl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1a_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_RNvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE6insertB1N_.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.bm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1a_.exit.i unwind label %.thread258.i, !noalias !26655

.thread258.i:                                     ; preds = %bb.bf
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !26651
  br label %bb.bm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1a_.exit.i: ; preds = %bb.bf, %_RNvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE6insertB1N_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !26651
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1a_.exit.i, %bb.ao
  %i.gn = phi ptr [ %i.fp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1a_.exit.i ], [ %i.ea, %bb.ao ]
  %i.go = phi ptr [ %i.fq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1a_.exit.i ], [ %i.eb, %bb.ao ]
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 392
  store ptr %i.gp, ptr %i.gq, align 8, !noalias !26651
  br label %bb.as

bb.bh:                                            ; preds = %bb.be
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !26651
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bd, %bb.bc
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.bj:                                            ; preds = %.noexc.i
  %i.gt = load ptr, ptr %i.gh, align 8, !noalias !26666, !nonnull !8, !noundef !8 ; 2 uses
  %i.gu = icmp ugt i64 %i.gg, 47
  call void @llvm.assume(i1 %i.gu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !26666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.gt, ptr noundef nonnull readonly align 1 dereferenceable(48) @393, i64 range(i64 0, -9223372036854775808) 48, i1 false), !noalias !26679
  %.sroa.6180.sroa.0.0.extract.trunc196.i = trunc i64 %i.gg to i8
  %.sroa.6180.sroa.6.0.extract.shift199.i = lshr i64 %i.gg, 8
  %.sroa.6180.sroa.6.0.extract.trunc200.i = trunc nuw i64 %.sroa.6180.sroa.6.0.extract.shift199.i to i56
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %bb.bj
  %.sroa.0178.0.i = phi i64 [ -9223372036854775722, %bb.bj ], [ %i.fz, %bb.bl ]
  %.sroa.11184.0.i = phi ptr [ %i.gt, %bb.bj ], [ %.sroa.11.sroa.7.0.copyload.i, %bb.bl ]
  %.sroa.12.0.i = phi i64 [ 48, %bb.bj ], [ %.sroa.11.sroa.8.0.copyload.i, %bb.bl ]
  %.sroa.13.0.i = phi ptr [ undef, %bb.bj ], [ %.sroa.11.sroa.9.0.copyload.i, %bb.bl ]
  %.sroa.14.0.i = phi ptr [ undef, %bb.bj ], [ %.sroa.11.sroa.10.0.copyload.i, %bb.bl ]
  %.sroa.6180.sroa.0.0.i = phi i8 [ %.sroa.6180.sroa.0.0.extract.trunc196.i, %bb.bj ], [ %i.gb, %bb.bl ]
  %.sroa.6180.sroa.6.sroa.0.0.i = phi i56 [ %.sroa.6180.sroa.6.0.extract.trunc200.i, %bb.bj ], [ %.sroa.11.sroa.0.0.copyload.i, %bb.bl ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef align 8 dereferenceable(272) %i.bo)
          to label %bb.bo unwind label %bb.bn, !noalias !26655

bb.bl:                                            ; preds = %bb.az
  %.sroa.11.0..sroa_idx153.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  %.sroa.11.sroa.0.0.copyload.i = load i56, ptr %.sroa.11.0..sroa_idx153.i, align 1, !alias.scope !26680, !noalias !26651
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx153.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.11.sroa.7.0.copyload.i = load ptr, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx153.sroa_idx.i, align 16, !alias.scope !26680, !noalias !26651
  %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx153.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.11.sroa.8.0.copyload.i = load i64, ptr %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx153.sroa_idx.i, align 8, !alias.scope !26680, !noalias !26651
  %.sroa.11.sroa.9.0..sroa.11.0..sroa_idx153.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.sroa.11.sroa.9.0.copyload.i = load ptr, ptr %.sroa.11.sroa.9.0..sroa.11.0..sroa_idx153.sroa_idx.i, align 16, !alias.scope !26680, !noalias !26651
  %.sroa.11.sroa.10.0..sroa.11.0..sroa_idx153.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %.sroa.11.sroa.10.0.copyload.i = load ptr, ptr %.sroa.11.sroa.10.0..sroa.11.0..sroa_idx153.sroa_idx.i, align 8, !alias.scope !26680, !noalias !26651
  %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx153.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.15.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx153.sroa_idx.i, i64 48, i1 false), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !26651
  br label %bb.bk

bb.bm:                                            ; preds = %.thread.i, %bb.bn, %bb.bh, %.thread258.i
  %.pn53.i = phi { ptr, i32 } [ %i.gm, %.thread258.i ], [ %i.gv, %bb.bn ], [ %.pn50.pn257.i, %.thread.i ], [ %i.gr, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !26651
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bn:                                            ; preds = %bb.bk
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bq, %bb.bk
  %.sroa.0178.1.i = phi i64 [ %.sroa.3.sroa.2.0.copyload.i, %bb.bq ], [ %.sroa.0178.0.i, %bb.bk ]
  %.sroa.11184.1.i = phi ptr [ %.sroa.3.sroa.4.0.copyload.i, %bb.bq ], [ %.sroa.11184.0.i, %bb.bk ]
  %.sroa.12.1.i = phi i64 [ %.sroa.3.sroa.5.0.copyload.i, %bb.bq ], [ %.sroa.12.0.i, %bb.bk ]
  %.sroa.13.1.i = phi ptr [ %.sroa.3.sroa.6.0.copyload.i, %bb.bq ], [ %.sroa.13.0.i, %bb.bk ]
  %.sroa.14.1.i = phi ptr [ %.sroa.3.sroa.7.0.copyload.i, %bb.bq ], [ %.sroa.14.0.i, %bb.bk ]
  %.sroa.6180.sroa.0.1.i = phi i8 [ %.sroa.6180.sroa.0.0.extract.trunc.i, %bb.bq ], [ %.sroa.6180.sroa.0.0.i, %bb.bk ]
  %.sroa.6180.sroa.6.sroa.0.1.i = phi i56 [ %.sroa.6180.sroa.6.0.extract.trunc.i, %bb.bq ], [ %.sroa.6180.sroa.6.sroa.0.0.i, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !26651
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit114.i

.thread.i:                                        ; preds = %bb.bi, %.thread261.i, %bb.ax
  %.pn50.pn257.i = phi { ptr, i32 } [ %i.gj, %.thread261.i ], [ %i.gs, %bb.bi ], [ %i.fw, %bb.ax ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef align 8 dereferenceable(272) %i.bo) #42
          to label %bb.bm unwind label %bb.bp, !noalias !26655

bb.bp:                                            ; preds = %bb.fo, %bb.fn, %bb.fl, %bb.dd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ct, %.body111.i, %bb.ck, %.thread.i
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !26655
  unreachable

bb.bq:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.sroa.8.i, i64 48, i1 false), !noalias !26651
  %.sroa.6180.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.3.sroa.3.0.copyload.i to i8
  %.sroa.6180.sroa.6.0.extract.shift.i = lshr i64 %.sroa.3.sroa.3.0.copyload.i, 8
  %.sroa.6180.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6180.sroa.6.0.extract.shift.i to i56
  br label %bb.bo

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit114.i: ; preds = %bb.dv, %bb.du, %bb.bo
  %i.gx = phi ptr [ %i.fp, %bb.bo ], [ %i.jv, %bb.dv ], [ %i.jv, %bb.du ] ; 5 uses
  %i.gy = phi ptr [ %i.fq, %bb.bo ], [ %i.jw, %bb.dv ], [ %i.jw, %bb.du ] ; 6 uses
  %.sroa.0178.2.i = phi i64 [ %.sroa.0178.1.i, %bb.bo ], [ -9223372036854775743, %bb.dv ], [ -9223372036854775743, %bb.du ]
  %.sroa.11184.2.i = phi ptr [ %.sroa.11184.1.i, %bb.bo ], [ %.sroa.36.sroa.2.0.copyload.i, %bb.dv ], [ %.sroa.36.sroa.2.0.copyload.i, %bb.du ]
  %.sroa.12.2.i = phi i64 [ %.sroa.12.1.i, %bb.bo ], [ %.sroa.36.sroa.3.0.copyload.i, %bb.dv ], [ %.sroa.36.sroa.3.0.copyload.i, %bb.du ]
  %.sroa.13.2.i = phi ptr [ %.sroa.13.1.i, %bb.bo ], [ %.sroa.36.sroa.4.0.copyload.i, %bb.dv ], [ %.sroa.36.sroa.4.0.copyload.i, %bb.du ]
  %.sroa.14.2.i = phi ptr [ %.sroa.14.1.i, %bb.bo ], [ %.sroa.36.sroa.5.0.copyload.i, %bb.dv ], [ %.sroa.36.sroa.5.0.copyload.i, %bb.du ]
  %.sroa.6180.sroa.0.2.i = phi i8 [ %.sroa.6180.sroa.0.1.i, %bb.bo ], [ %.sroa.6180.sroa.0.0.extract.trunc197.i, %bb.dv ], [ %.sroa.6180.sroa.0.0.extract.trunc197.i, %bb.du ]
  %.sroa.6180.sroa.6.sroa.0.2.i = phi i56 [ %.sroa.6180.sroa.6.sroa.0.1.i, %bb.bo ], [ %.sroa.6180.sroa.6.0.extract.trunc202.i, %bb.dv ], [ %.sroa.6180.sroa.6.0.extract.trunc202.i, %bb.du ]
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val88.i = load ptr, ptr %i.gz, align 8, !noalias !26651 ; 5 uses
  %i.ha = getelementptr i8, ptr %1, i64 360
  %.val89.i = load ptr, ptr %i.ha, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8 ; 5 uses
  %i.hb = load ptr, ptr %.val89.i, align 8, !invariant.load !8, !noalias !26655 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit114.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val88.i) ]
  invoke void %i.hb(ptr noundef nonnull %.val88.i)
          to label %bb.bs unwind label %bb.bu, !noalias !26655

bb.bs:                                            ; preds = %bb.br, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit114.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.val89.i, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !range !231, !invariant.load !8, !noalias !26655 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hf = getelementptr inbounds nuw i8, ptr %.val89.i, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !range !2991, !invariant.load !8, !noalias !26655
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val88.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val88.i, i64 noundef range(i64 1, 0) %i.hd, i64 noundef range(i64 1, 536870913) %i.hg) #46, !noalias !26655
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit.i

bb.bu:                                            ; preds = %bb.br
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.val89.i, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !range !231, !invariant.load !8, !noalias !26655 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %.body.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hl = getelementptr inbounds nuw i8, ptr %.val89.i, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !range !2991, !invariant.load !8, !noalias !26655
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val88.i, i64 noundef range(i64 1, 0) %i.hj, i64 noundef range(i64 1, 536870913) %i.hm) #46, !noalias !26655
  br label %.body.i

bb.bw:                                            ; preds = %bb.av
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.val70.i = load ptr, ptr %i.hn, align 8, !noalias !26651, !nonnull !8, !noundef !8
  %i.ho = getelementptr i8, ptr %1, i64 344
  %.val71.i = load ptr, ptr %i.ho, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.val71.i, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !range !2991, !invariant.load !8, !noalias !26655
  %i.hr = add nsw i64 %i.hq, -1
  %i.hs = and i64 %i.hr, -16
  %i.ht = getelementptr inbounds nuw i8, ptr %.val70.i, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !26651
  store i8 0, ptr %i.bj, align 1, !noalias !26651
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.val71.i, i64 112
  %i.hx = load ptr, ptr %i.hw, align 8, !invariant.load !8, !noalias !26655, !nonnull !8
  %i.hy = invoke { ptr, ptr } %i.hx(ptr noundef nonnull %i.hu, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.bj)
          to label %bb.by unwind label %bb.bx, !noalias !26655 ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !26651
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.by:                                            ; preds = %bb.bw
  %i.ia = extractvalue { ptr, ptr } %i.hy, 0
  %i.ib = extractvalue { ptr, ptr } %i.hy, 1
  store ptr %i.ia, ptr %i.hv, align 8, !noalias !26651
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 456
  store ptr %i.ib, ptr %i.ic, align 8, !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !26651
  %i.id = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !26651
  %i.ie = icmp ult i64 %i.id, 3
  br i1 %i.ie, label %bb.bz, label %bb.ci

bb.bz:                                            ; preds = %bb.by
  %i.if = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan010___CALLSITE, i64 16) monotonic, align 8, !noalias !26651 ; 2 uses
  %i.ig = icmp ult i8 %i.if, 3
  br i1 %i.ig, label %bb.cc, label %bb.ca, !prof !22989

bb.ca:                                            ; preds = %bb.bz
  %i.ih = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan010___CALLSITE) #45
          to label %bb.cc unwind label %bb.cb, !noalias !26655

bb.cb:                                            ; preds = %bb.ca
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.0.0.i.i = phi i8 [ %i.if, %bb.bz ], [ %i.ih, %bb.ca ] ; 2 uses
  %i.ij = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ij, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ik = load ptr, ptr @_RNvNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan010___CALLSITE, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8
  %i.il = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ik, i8 noundef %.sroa.0.0.i.i)
          to label %bb.cf unwind label %bb.ce, !noalias !26655

bb.ce:                                            ; preds = %bb.cd
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.il, label %bb.co, label %bb.ci

bb.cg:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !26651
  br label %bb.cs

bb.ch:                                            ; preds = %bb.cl, %bb.ci
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.in, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !26651
  br label %bb.cm

bb.ci:                                            ; preds = %bb.cf, %bb.cc, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !26651
  %i.io = load ptr, ptr @_RNvNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan010___CALLSITE, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8 ; 2 uses
  store i64 2, ptr %i.bh, align 8, !alias.scope !26681, !noalias !26684
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.io, ptr %i.ip, align 8, !alias.scope !26681, !noalias !26684
  %i.iq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !26651
  %.not265.i = icmp eq i8 %i.iq, 0
  br i1 %.not265.i, label %bb.cj, label %bb.ch

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !26651
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  store i64 1, ptr %i.bg, align 8, !alias.scope !26686, !noalias !26689
  %.sroa.4.0..sroa_idx.i102.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @397, ptr %.sroa.4.0..sroa_idx.i102.i, align 8, !alias.scope !26686, !noalias !26689
  %.sroa.5.0..sroa_idx.i103.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i103.i, align 8, !alias.scope !26686, !noalias !26689
  %i.is = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.ir, ptr %i.is, align 8, !alias.scope !26686, !noalias !26689
  %i.it = invoke noundef nonnull align 8 ptr @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg)
          to label %bb.cl unwind label %bb.ck, !noalias !26655 ; 0 uses

bb.ck:                                            ; preds = %bb.cj
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !26651
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.bh) #42
          to label %bb.cg unwind label %bb.bp, !noalias !26655

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !26651
  br label %bb.ch

bb.cm:                                            ; preds = %bb.cp, %bb.ch
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.iw = invoke { ptr, ptr } @_RINvMNtCscTw95cGIolY_7tracing4spanNtB3_4Span8in_scopeNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtBY_22FileSystemCheckBuilder16create_fsck_plan0s_0INtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2U_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB5a_5ErrorENtNtB2U_6marker4SendEL_EEEB12_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hv)
          to label %bb.cr unwind label %bb.cq, !noalias !26655 ; 2 uses

bb.cn:                                            ; preds = %bb.co
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !26651
  br label %bb.cs

bb.co:                                            ; preds = %bb.cf
  %i.iy = load ptr, ptr @_RNvNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan010___CALLSITE, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !26651
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 48
  store i64 1, ptr %i.bi, align 8, !alias.scope !26692, !noalias !26695
  %.sroa.4.0..sroa_idx.i104.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @397, ptr %.sroa.4.0..sroa_idx.i104.i, align 8, !alias.scope !26692, !noalias !26695
  %.sroa.5.0..sroa_idx.i105.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i105.i, align 8, !alias.scope !26692, !noalias !26695
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.iz, ptr %i.ja, align 8, !alias.scope !26692, !noalias !26695
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.jb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bi)
          to label %bb.cp unwind label %bb.cn, !noalias !26655

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !26651
  br label %bb.cm

bb.cq:                                            ; preds = %bb.cm
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body111.i

bb.cr:                                            ; preds = %bb.cm
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.je = extractvalue { ptr, ptr } %i.iw, 0
  %i.jf = extractvalue { ptr, ptr } %i.iw, 1
  store ptr %i.je, ptr %i.jd, align 8, !noalias !26651
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 472
  store ptr %i.jf, ptr %i.jg, align 8, !noalias !26651
  store i32 0, ptr %i.fr, align 8, !noalias !26651
  br label %bb.dl

.body111.i:                                       ; preds = %bb.fl, %bb.fd, %bb.fc, %bb.ds, %bb.dr, %bb.cq
  %i.jh = phi ptr [ %i.fp, %bb.cq ], [ %i.jv, %bb.fl ], [ %i.jv, %bb.dr ], [ %i.jv, %bb.ds ], [ %i.jv, %bb.fc ], [ %i.jv, %bb.fd ]
  %i.ji = phi ptr [ %i.fq, %bb.cq ], [ %i.jw, %bb.fl ], [ %i.jw, %bb.dr ], [ %i.jw, %bb.ds ], [ %i.jw, %bb.fc ], [ %i.jw, %bb.fd ]
  %.pn41.i = phi { ptr, i32 } [ %i.jc, %bb.cq ], [ %.pn38.pn.i, %bb.fl ], [ %i.kz, %bb.dr ], [ %i.kz, %bb.ds ], [ %i.of, %bb.fc ], [ %i.of, %bb.fd ]
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.jj) #42
          to label %bb.cs unwind label %bb.bp, !noalias !26655

bb.cs:                                            ; preds = %bb.dt, %.body111.i, %bb.cn, %bb.cg, %bb.ce, %bb.cb
  %i.jk = phi ptr [ %i.jv, %bb.dt ], [ %i.jh, %.body111.i ], [ %i.fp, %bb.cn ], [ %i.fp, %bb.cb ], [ %i.fp, %bb.cg ], [ %i.fp, %bb.ce ] ; 2 uses
  %i.jl = phi ptr [ %i.jw, %bb.dt ], [ %i.ji, %.body111.i ], [ %i.fq, %bb.cn ], [ %i.fq, %bb.cb ], [ %i.fq, %bb.cg ], [ %i.fq, %bb.ce ] ; 2 uses
  %.pn43.i = phi { ptr, i32 } [ %i.lg, %bb.dt ], [ %.pn41.i, %.body111.i ], [ %i.ix, %bb.cn ], [ %i.ii, %bb.cb ], [ %i.iu, %bb.cg ], [ %i.im, %bb.ce ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26698)
  call void @llvm.experimental.noalias.scope.decl(metadata !26701)
  %i.jn = load ptr, ptr %i.jm, align 8, !alias.scope !26704, !noalias !26651, !nonnull !8, !noundef !8
  %i.jo = atomicrmw sub ptr %i.jn, i64 1 release, align 8, !noalias !26705
  %i.jp = icmp eq i64 %i.jo, 1
  br i1 %i.jp, label %bb.ct, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ct:                                            ; preds = %bb.cs
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.jm) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bp, !noalias !26655

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.dw, %bb.ct, %bb.cs, %bb.bx, %bb.bm, %bb.ar
  %i.jq = phi ptr [ %i.fp, %bb.bm ], [ %i.jv, %bb.dw ], [ %i.jk, %bb.cs ], [ %i.fp, %bb.bx ], [ %i.jk, %bb.ct ], [ %i.fp, %bb.ar ]
  %i.jr = phi ptr [ %i.fq, %bb.bm ], [ %i.jw, %bb.dw ], [ %i.jl, %bb.cs ], [ %i.fq, %bb.bx ], [ %i.jl, %bb.ct ], [ %i.fq, %bb.ar ]
  %.pn53.pn.i = phi { ptr, i32 } [ %.pn53.i, %bb.bm ], [ %i.ll, %bb.dw ], [ %.pn43.i, %bb.cs ], [ %i.hz, %bb.bx ], [ %.pn43.i, %bb.ct ], [ %i.fo, %bb.ar ]
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val86.i = load ptr, ptr %i.js, align 8, !noalias !26651
  %i.jt = getelementptr i8, ptr %1, i64 360
  %.val87.i = load ptr, ptr %i.jt, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_(ptr %.val86.i, ptr nonnull %.val87.i) #42
          to label %.body.i unwind label %bb.bp, !noalias !26655

bb.cu:                                            ; preds = %bb.cv
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !26651
  br label %bb.fl

bb.cv:                                            ; preds = %bb.dl, %bb.ah
  %i.jv = phi ptr [ %i.kn, %bb.dl ], [ %i.dz, %bb.ah ] ; 14 uses
  %i.jw = phi ptr [ %i.ko, %bb.dl ], [ %i.dy, %bb.ah ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !26651
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 440
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4nextINtB5_4NextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cw unwind label %bb.cu, !noalias !26655

bb.cw:                                            ; preds = %bb.cv
  %i.jy = load i64, ptr %i.bf, align 8, !range !3042, !noalias !26651, !noundef !8 ; 4 uses
  %i.jz = icmp eq i64 %i.jy, -9223372036854775806
  br i1 %i.jz, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !26651
  br label %.thread

bb.cy:                                            ; preds = %bb.cw
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.36.sroa.0.0.copyload.i = load i64, ptr %.sroa.36.0..sroa_idx.i, align 8, !noalias !26651 ; 4 uses
  %.sroa.36.sroa.2.0..sroa.36.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.36.sroa.2.0.copyload.i = load ptr, ptr %.sroa.36.sroa.2.0..sroa.36.0..sroa_idx.sroa_idx.i, align 8, !noalias !26651 ; 4 uses
  %.sroa.36.sroa.3.0..sroa.36.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.36.sroa.3.0.copyload.i = load i64, ptr %.sroa.36.sroa.3.0..sroa.36.0..sroa_idx.sroa_idx.i, align 8, !noalias !26651 ; 3 uses
  %.sroa.36.sroa.4.0..sroa.36.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %.sroa.36.sroa.4.0.copyload.i = load ptr, ptr %.sroa.36.sroa.4.0..sroa.36.0..sroa_idx.sroa_idx.i, align 8, !noalias !26651 ; 3 uses
  %.sroa.36.sroa.5.0..sroa.36.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %.sroa.36.sroa.5.0.copyload.i = load ptr, ptr %.sroa.36.sroa.5.0..sroa.36.0..sroa_idx.sroa_idx.i, align 8, !noalias !26651 ; 3 uses
  %.sroa.36.sroa.6.0..sroa.36.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.36.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.36.sroa.6.0..sroa.36.0..sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !26651
  %.sroa.36.sroa.7.0..sroa.36.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36.sroa.7.0..sroa.36.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !26651
  %.not19.i = icmp eq i64 %i.jy, -9223372036854775807
  br i1 %.not19.i, label %bb.dz, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !26651
  %i.ka = icmp eq i64 %i.jy, -9223372036854775808
  br i1 %i.ka, label %bb.dn, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.sroa.4166.sroa.9.0..sroa.4166.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4166.sroa.9.0..sroa.4166.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36.sroa.7.i, i64 16, i1 false), !noalias !26651
  %.sroa.4166.sroa.8.0..sroa.4166.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4166.sroa.8.0..sroa.4166.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.36.sroa.6.i, i64 32, i1 false), !noalias !26651
  store i64 %i.jy, ptr %i.be, align 8, !noalias !26651
  %.sroa.4166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %.sroa.36.sroa.0.0.copyload.i, ptr %.sroa.4166.0..sroa_idx.i, align 8, !noalias !26651
  %.sroa.4166.sroa.4.0..sroa.4166.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %.sroa.36.sroa.2.0.copyload.i, ptr %.sroa.4166.sroa.4.0..sroa.4166.0..sroa_idx.sroa_idx.i, align 8, !noalias !26651
  %.sroa.4166.sroa.5.0..sroa.4166.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %.sroa.36.sroa.3.0.copyload.i, ptr %.sroa.4166.sroa.5.0..sroa.4166.0..sroa_idx.sroa_idx.i, align 8, !noalias !26651
  %.sroa.4166.sroa.6.0..sroa.4166.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %.sroa.36.sroa.4.0.copyload.i, ptr %.sroa.4166.sroa.6.0..sroa.4166.0..sroa_idx.sroa_idx.i, align 8, !noalias !26651
  %.sroa.4166.sroa.7.0..sroa.4166.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %.sroa.36.sroa.5.0.copyload.i, ptr %.sroa.4166.sroa.7.0..sroa.4166.0..sroa_idx.sroa_idx.i, align 8, !noalias !26651
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 8, !noalias !26651, !noundef !8
  %i.kd = add i32 %i.kc, 1
  store i32 %i.kd, ptr %i.kb, align 8, !noalias !26651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !26651
  %i.ke = inttoptr i64 %.sroa.36.sroa.0.0.copyload.i to ptr
  %i.kf = ptrtoint ptr %.sroa.36.sroa.2.0.copyload.i to i64
  invoke void @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6removeeEB1y_(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.jw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ke, i64 noundef %i.kf)
          to label %_RINvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE6removeeEB1O_.exit.i unwind label %bb.db, !noalias !26655

bb.db:                                            ; preds = %bb.da
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

_RINvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE6removeeEB1O_.exit.i: ; preds = %bb.da
  %i.kh = load i64, ptr %i.bd, align 8, !range !3023, !alias.scope !26706, !noalias !26651, !noundef !8
  %i.ki = icmp eq i64 %i.kh, 2
  br i1 %i.ki, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %_RINvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE6removeeEB1O_.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.bd)
          to label %bb.df unwind label %bb.de, !noalias !26655

bb.dd:                                            ; preds = %bb.de, %bb.db
  %.pn20.i = phi { ptr, i32 } [ %i.kj, %bb.de ], [ %i.kg, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !26651
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.be) #42
          to label %bb.di unwind label %bb.bp, !noalias !26655

bb.de:                                            ; preds = %bb.dc
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.df:                                            ; preds = %bb.dc, %_RINvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE6removeeEB1O_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !26651
  %i.kk = getelementptr i8, ptr %1, i64 312
  %.val92.i = load i64, ptr %i.kk, align 8, !noalias !26651, !noundef !8
  %i.kl = icmp eq i64 %.val92.i, 0
  br i1 %i.kl, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.be)
          to label %bb.dk unwind label %bb.dj, !noalias !26655

bb.dh:                                            ; preds = %bb.df
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.be)
          to label %bb.dm unwind label %bb.dj, !noalias !26655

bb.di:                                            ; preds = %bb.dj, %bb.dd
  %.pn38.i = phi { ptr, i32 } [ %.pn20.i, %bb.dd ], [ %i.km, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !26651
  br label %bb.fl

bb.dj:                                            ; preds = %bb.dh, %bb.dg
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dk:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !26651
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.cr
  %i.kn = phi ptr [ %i.jv, %bb.dk ], [ %i.fp, %bb.cr ]
  %i.ko = phi ptr [ %i.jw, %bb.dk ], [ %i.fq, %bb.cr ]
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 440
  store ptr %i.kp, ptr %i.kq, align 8, !noalias !26651
  br label %bb.cv

bb.dm:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !26651
  br label %bb.dz

bb.dn:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.36.sroa.6.i, i64 32, i1 false), !noalias !26651
  %.sroa.6180.sroa.0.0.extract.trunc197.i = trunc i64 %.sroa.36.sroa.0.0.copyload.i to i8 ; 2 uses
  %.sroa.6180.sroa.6.0.extract.shift201.i = lshr i64 %.sroa.36.sroa.0.0.copyload.i, 8
  %.sroa.6180.sroa.6.0.extract.trunc202.i = trunc nuw i64 %.sroa.6180.sroa.6.0.extract.shift201.i to i56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !26651
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.val82.i = load ptr, ptr %i.kr, align 8, !noalias !26651 ; 5 uses
  %i.ks = getelementptr i8, ptr %1, i64 472
  %.val83.i = load ptr, ptr %i.ks, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8 ; 5 uses
  %i.kt = load ptr, ptr %.val83.i, align 8, !invariant.load !8, !noalias !26655 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val82.i) ]
  invoke void %i.kt(ptr noundef nonnull %.val82.i)
          to label %bb.dp unwind label %bb.dr, !noalias !26655

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.ku = getelementptr inbounds nuw i8, ptr %.val83.i, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !range !231, !invariant.load !8, !noalias !26655 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 0
  br i1 %i.kw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.kx = getelementptr inbounds nuw i8, ptr %.val83.i, i64 16
  %i.ky = load i64, ptr %i.kx, align 8, !range !2991, !invariant.load !8, !noalias !26655
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val82.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val82.i, i64 noundef range(i64 1, 0) %i.kv, i64 noundef range(i64 1, 536870913) %i.ky) #46, !noalias !26655
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.dr:                                            ; preds = %bb.do
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.val83.i, i64 8
  %i.lb = load i64, ptr %i.la, align 8, !range !231, !invariant.load !8, !noalias !26655 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %.body111.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ld = getelementptr inbounds nuw i8, ptr %.val83.i, i64 16
  %i.le = load i64, ptr %i.ld, align 8, !range !2991, !invariant.load !8, !noalias !26655
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val82.i, i64 noundef range(i64 1, 0) %i.lb, i64 noundef range(i64 1, 536870913) %i.le) #46, !noalias !26655
  br label %.body111.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.dq, %bb.dp
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.lf)
          to label %bb.du unwind label %bb.dt, !noalias !26655

bb.dt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit132.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.du:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26709)
  call void @llvm.experimental.noalias.scope.decl(metadata !26712)
  %i.li = load ptr, ptr %i.lh, align 8, !alias.scope !26715, !noalias !26651, !nonnull !8, !noundef !8
  %i.lj = atomicrmw sub ptr %i.li, i64 1 release, align 8, !noalias !26716
  %i.lk = icmp eq i64 %i.lj, 1
  br i1 %i.lk, label %bb.dv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit114.i

bb.dv:                                            ; preds = %bb.du
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.lh) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit114.i unwind label %bb.dw, !noalias !26655

bb.dw:                                            ; preds = %bb.ff, %bb.dv
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit.i: ; preds = %bb.bt, %bb.bs
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26717)
  call void @llvm.experimental.noalias.scope.decl(metadata !26720)
  %i.ln = load ptr, ptr %i.lm, align 8, !alias.scope !26723, !noalias !26651, !nonnull !8, !noundef !8
  %i.lo = atomicrmw sub ptr %i.ln, i64 1 release, align 8, !noalias !26724
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %bb.dx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i

bb.dx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.lm) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i unwind label %bb.dy, !noalias !26655

bb.dy:                                            ; preds = %bb.dx
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit141.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i: ; preds = %bb.dx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit.i
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i8 0, ptr %i.lr, align 8, !noalias !26651
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1z_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i unwind label %bb.aj, !noalias !26655

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 385
  store i8 0, ptr %i.ls, align 1, !noalias !26651
  br label %bb.fp

bb.dz:                                            ; preds = %bb.dm, %bb.cy
  %i.lt = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !26651
  %i.lu = icmp ult i64 %i.lt, 3
  br i1 %i.lu, label %bb.ea, label %bb.eh

bb.ea:                                            ; preds = %bb.dz
  %i.lv = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan0s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !26651 ; 2 uses
  %i.lw = icmp ult i8 %i.lv, 3
  br i1 %i.lw, label %bb.ed, label %bb.eb, !prof !22989

bb.eb:                                            ; preds = %bb.ea
  %i.lx = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan0s_10___CALLSITE) #45
          to label %bb.ed unwind label %bb.ec, !noalias !26655

bb.ec:                                            ; preds = %bb.eb
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.ed:                                            ; preds = %bb.eb, %bb.ea
  %.sroa.0.0.i117.i = phi i8 [ %i.lv, %bb.ea ], [ %i.lx, %bb.eb ] ; 2 uses
  %i.lz = icmp eq i8 %.sroa.0.0.i117.i, 0
  br i1 %i.lz, label %bb.eh, label %bb.ef

bb.ee:                                            ; preds = %bb.ef
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.ef:                                            ; preds = %bb.ed
  %i.mb = load ptr, ptr @_RNvNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan0s_10___CALLSITE, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8
  %i.mc = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mb, i8 noundef %.sroa.0.0.i117.i)
          to label %bb.eg unwind label %bb.ee, !noalias !26655

bb.eg:                                            ; preds = %bb.ef
  br i1 %i.mc, label %bb.es, label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ed, %bb.dz
  %i.md = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !26651
  %.not266.i = icmp eq i8 %i.md, 0
  br i1 %.not266.i, label %bb.ei, label %bb.er

bb.ei:                                            ; preds = %bb.eh
  %i.me = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !26651 ; 2 uses
  %i.mf = icmp ult i64 %i.me, 6
  call void @llvm.assume(i1 %i.mf)
  %i.mg = icmp samesign ugt i64 %i.me, 2
  br i1 %i.mg, label %bb.ek, label %bb.er

bb.ej:                                            ; preds = %bb.ek
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.ek:                                            ; preds = %bb.ei
  %i.mi = load ptr, ptr @_RNvNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan0s_10___CALLSITE, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8 ; 3 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 32
  %.val93.i = load ptr, ptr %i.mj, align 8, !noalias !26655, !nonnull !8, !noundef !8
  %i.mk = getelementptr i8, ptr %i.mi, i64 40
  %.val94.i = load i64, ptr %i.mk, align 8, !noalias !26655, !noundef !8
  store i64 3, ptr %i.ay, align 8, !alias.scope !26725, !noalias !26651
  %.sroa.6176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.val93.i, ptr %.sroa.6176.0..sroa_idx.i, align 8, !alias.scope !26725, !noalias !26651
  %.sroa.8177.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %.val94.i, ptr %.sroa.8177.0..sroa_idx.i, align 8, !alias.scope !26725, !noalias !26651
  %i.ml = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.el unwind label %bb.ej, !noalias !26655 ; 2 uses

bb.el:                                            ; preds = %bb.ek
  %i.mm = extractvalue { ptr, ptr } %i.ml, 0      ; 2 uses
  %i.mn = extractvalue { ptr, ptr } %i.ml, 1      ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8, !invariant.load !8, !noalias !26655, !nonnull !8
  %i.mq = invoke noundef zeroext i1 %i.mp(ptr noundef %i.mm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.en unwind label %bb.em, !noalias !26655

bb.em:                                            ; preds = %bb.el
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.en:                                            ; preds = %bb.el
  br i1 %i.mq, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !26651
  %i.ms = load ptr, ptr @_RNvNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan0s_10___CALLSITE, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !26651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !26651
  store ptr @398, ptr %i.av, align 8, !noalias !26651
  %i.mu = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.mu, align 8, !noalias !26651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !26651
  %i.mv = getelementptr i8, ptr %1, i64 312
  %.val96.i = load i64, ptr %i.mv, align 8, !noalias !26651, !noundef !8
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i64 %.val96.i, ptr %i.au, align 8, !noalias !26651
  store ptr %i.av, ptr %i.aw, align 8, !noalias !26651
  %i.mx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @332, ptr %i.mx, align 8, !noalias !26651
  %i.my = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.mw, ptr %i.my, align 8, !noalias !26651
  %i.mz = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr @399, ptr %i.mz, align 8, !noalias !26651
  %i.na = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.au, ptr %i.na, align 8, !noalias !26651
  %i.nb = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr @400, ptr %i.nb, align 8, !noalias !26651
  store i64 1, ptr %i.ax, align 8, !alias.scope !26729, !noalias !26732
  %.sroa.4.0..sroa_idx.i122.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i122.i, align 8, !alias.scope !26729, !noalias !26732
  %.sroa.5.0..sroa_idx.i123.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i123.i, align 8, !alias.scope !26729, !noalias !26732
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.mt, ptr %i.nc, align 8, !alias.scope !26729, !noalias !26732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !26651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !26651
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mi, ptr noundef nonnull %i.mm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mn, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax)
          to label %bb.eq unwind label %bb.ep, !noalias !26655

bb.ep:                                            ; preds = %bb.eo
  %i.nd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !26651
  br label %bb.fl

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !26651
  br label %bb.er

bb.er:                                            ; preds = %bb.eu, %bb.eq, %bb.en, %bb.ei, %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !26651
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 385 ; 2 uses
  store i8 0, ptr %i.ne, align 1, !noalias !26651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !26651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.jw, i64 48, i1 false), !noalias !26651
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterB1x_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ap)
          to label %bb.ew unwind label %bb.ev, !noalias !26655

bb.es:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !26651
  %i.nf = load ptr, ptr @_RNvNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan0s_10___CALLSITE, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !26651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !26651
  store ptr @398, ptr %i.ba, align 8, !noalias !26651
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.nh, align 8, !noalias !26651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !26651
  %i.ni = getelementptr i8, ptr %1, i64 312
  %.val95.i = load i64, ptr %i.ni, align 8, !noalias !26651, !noundef !8
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i64 %.val95.i, ptr %i.az, align 8, !noalias !26651
  store ptr %i.ba, ptr %i.bb, align 8, !noalias !26651
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @332, ptr %i.nk, align 8, !noalias !26651
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.nj, ptr %i.nl, align 8, !noalias !26651
  %i.nm = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr @399, ptr %i.nm, align 8, !noalias !26651
  %i.nn = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.az, ptr %i.nn, align 8, !noalias !26651
  %i.no = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr @400, ptr %i.no, align 8, !noalias !26651
  store i64 1, ptr %i.bc, align 8, !noalias !26651
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !26651
  %.sroa.8170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 3, ptr %.sroa.8170.0..sroa_idx.i, align 8, !noalias !26651
  %.sroa.9171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.ng, ptr %.sroa.9171.0..sroa_idx.i, align 8, !noalias !26651
  invoke fastcc void @_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan0s1_0Bc_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.bc)
          to label %bb.eu unwind label %bb.et, !noalias !26655

bb.et:                                            ; preds = %bb.es
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !26651
  br label %bb.fl

bb.eu:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !26651
  br label %bb.er

bb.ev:                                            ; preds = %bb.er
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !26651
  br label %bb.fl

bb.ew:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !26651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !26735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.as, i64 64, i1 false), !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !26651
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map10IntoValuesNtNtB6_6string6StringBU_ENCNCNvMs_NtNtB12_10operations16filesystem_checkNtB4F_22FileSystemCheckBuilder16create_fsck_plan0s0_0EE9from_iterB12_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.ao)
          to label %bb.ey unwind label %bb.ex, !noalias !26655

bb.ex:                                            ; preds = %bb.ew
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !26735
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  store i8 0, ptr %i.ns, align 8, !noalias !26651
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.nu = load ptr, ptr %i.nt, align 8, !noalias !26651, !nonnull !8, !noundef !8
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.nw = load ptr, ptr %i.nv, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8
  %.sroa.09.sroa.0.0.copyload.i = load i64, ptr %i.at, align 8, !noalias !26651 ; 2 uses
  %.sroa.09.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.09.sroa.4.0.copyload.i = load ptr, ptr %.sroa.09.sroa.4.0..sroa_idx.i, align 8, !noalias !26651
  %.sroa.09.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.09.sroa.5.0.copyload.i = load i64, ptr %.sroa.09.sroa.5.0..sroa_idx.i, align 8, !noalias !26651
  %.sroa.6180.sroa.0.0.extract.trunc198.i = trunc i64 %.sroa.09.sroa.0.0.copyload.i to i8
  %.sroa.6180.sroa.6.0.extract.shift203.i = lshr i64 %.sroa.09.sroa.0.0.copyload.i, 8
  %.sroa.6180.sroa.6.0.extract.trunc204.i = trunc nuw i64 %.sroa.6180.sroa.6.0.extract.shift203.i to i56
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.val80.i = load ptr, ptr %i.nx, align 8, !noalias !26651 ; 5 uses
  %i.ny = getelementptr i8, ptr %1, i64 472
  %.val81.i = load ptr, ptr %i.ny, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8 ; 5 uses
  %i.nz = load ptr, ptr %.val81.i, align 8, !invariant.load !8, !noalias !26655 ; 2 uses
  %.not.i.i128.i = icmp eq ptr %i.nz, null
  br i1 %.not.i.i128.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val80.i) ]
  invoke void %i.nz(ptr noundef nonnull %.val80.i)
          to label %bb.fa unwind label %bb.fc, !noalias !26655

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.oa = getelementptr inbounds nuw i8, ptr %.val81.i, i64 8
  %i.ob = load i64, ptr %i.oa, align 8, !range !231, !invariant.load !8, !noalias !26655 ; 2 uses
  %i.oc = icmp eq i64 %i.ob, 0
  br i1 %i.oc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit132.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.od = getelementptr inbounds nuw i8, ptr %.val81.i, i64 16
  %i.oe = load i64, ptr %i.od, align 8, !range !2991, !invariant.load !8, !noalias !26655
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val80.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val80.i, i64 noundef range(i64 1, 0) %i.ob, i64 noundef range(i64 1, 536870913) %i.oe) #46, !noalias !26655
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit132.i

bb.fc:                                            ; preds = %bb.ez
  %i.of = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.val81.i, i64 8
  %i.oh = load i64, ptr %i.og, align 8, !range !231, !invariant.load !8, !noalias !26655 ; 2 uses
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %.body111.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.oj = getelementptr inbounds nuw i8, ptr %.val81.i, i64 16
  %i.ok = load i64, ptr %i.oj, align 8, !range !2991, !invariant.load !8, !noalias !26655
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val80.i, i64 noundef range(i64 1, 0) %i.oh, i64 noundef range(i64 1, 536870913) %i.ok) #46, !noalias !26655
  br label %.body111.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit132.i: ; preds = %bb.fb, %bb.fa
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ol)
          to label %bb.fe unwind label %bb.dt, !noalias !26655

bb.fe:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit132.i
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26742)
  call void @llvm.experimental.noalias.scope.decl(metadata !26745)
  %i.on = load ptr, ptr %i.om, align 8, !alias.scope !26748, !noalias !26651, !nonnull !8, !noundef !8
  %i.oo = atomicrmw sub ptr %i.on, i64 1 release, align 8, !noalias !26749
  %i.op = icmp eq i64 %i.oo, 1
  br i1 %i.op, label %bb.ff, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit134.i

bb.ff:                                            ; preds = %bb.fe
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.om) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit134.i unwind label %bb.dw, !noalias !26655

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit134.i: ; preds = %bb.ff, %bb.fe
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val84.i = load ptr, ptr %i.oq, align 8, !noalias !26651 ; 5 uses
  %i.or = getelementptr i8, ptr %1, i64 360
  %.val85.i = load ptr, ptr %i.or, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8 ; 5 uses
  %i.os = load ptr, ptr %.val85.i, align 8, !invariant.load !8, !noalias !26655 ; 2 uses
  %.not.i.i.i.i.i135.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i.i.i135.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit134.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val84.i) ]
  invoke void %i.os(ptr noundef nonnull %.val84.i)
          to label %bb.fh unwind label %bb.fj, !noalias !26655

bb.fh:                                            ; preds = %bb.fg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit134.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.val85.i, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !range !231, !invariant.load !8, !noalias !26655 ; 2 uses
  %i.ov = icmp eq i64 %i.ou, 0
  br i1 %i.ov, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ow = getelementptr inbounds nuw i8, ptr %.val85.i, i64 16
  %i.ox = load i64, ptr %i.ow, align 8, !range !2991, !invariant.load !8, !noalias !26655
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val84.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val84.i, i64 noundef range(i64 1, 0) %i.ou, i64 noundef range(i64 1, 536870913) %i.ox) #46, !noalias !26655
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i

bb.fj:                                            ; preds = %bb.fg
  %i.oy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.val85.i, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !range !231, !invariant.load !8, !noalias !26655 ; 2 uses
  %i.pb = icmp eq i64 %i.pa, 0
  br i1 %i.pb, label %.body.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.pc = getelementptr inbounds nuw i8, ptr %.val85.i, i64 16
  %i.pd = load i64, ptr %i.pc, align 8, !range !2991, !invariant.load !8, !noalias !26655
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val84.i, i64 noundef range(i64 1, 0) %i.pa, i64 noundef range(i64 1, 536870913) %i.pd) #46, !noalias !26655
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i: ; preds = %bb.fi, %bb.fh
  store i8 0, ptr %i.ns, align 8, !noalias !26651
  store i8 0, ptr %i.ne, align 1, !noalias !26651
  br label %bb.fp

bb.fl:                                            ; preds = %bb.ev, %bb.ex, %bb.et, %bb.ep, %bb.em, %bb.ej, %bb.ee, %bb.ec, %bb.di, %bb.cu
  %.pn38.pn.i = phi { ptr, i32 } [ %.pn38.i, %bb.di ], [ %i.nd, %bb.ep ], [ %i.np, %bb.et ], [ %i.ly, %bb.ec ], [ %i.mh, %bb.ej ], [ %i.ju, %bb.cu ], [ %i.mr, %bb.em ], [ %i.ma, %bb.ee ], [ %i.nr, %bb.ex ], [ %i.nq, %bb.ev ]
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.val78.i = load ptr, ptr %i.pe, align 8, !noalias !26651
  %i.pf = getelementptr i8, ptr %1, i64 472
  %.val79.i = load ptr, ptr %i.pf, align 8, !noalias !26651, !nonnull !8, !align !216, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val78.i, ptr nonnull %.val79.i) #42
          to label %.body111.i unwind label %bb.bp, !noalias !26655

bb.fm:                                            ; preds = %.body.i
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26750)
  call void @llvm.experimental.noalias.scope.decl(metadata !26753)
  %i.ph = load ptr, ptr %i.pg, align 8, !alias.scope !26756, !noalias !26651, !nonnull !8, !noundef !8
  %i.pi = atomicrmw sub ptr %i.ph, i64 1 release, align 8, !noalias !26757
  %i.pj = icmp eq i64 %i.pi, 1
  br i1 %i.pj, label %bb.fn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit141.i

bb.fn:                                            ; preds = %bb.fm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.pg) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit141.i unwind label %bb.bp, !noalias !26655

bb.fo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit141.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1z_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit143.i unwind label %bb.bp, !noalias !26655

.thread:                                          ; preds = %bb.au, %bb.cx
  %i.pk = phi ptr [ %i.fp, %bb.au ], [ %i.jv, %bb.cx ]
  %.sink.i.ph = phi i8 [ 3, %bb.au ], [ 4, %bb.cx ]
  store i8 %.sink.i.ph, ptr %i.pk, align 2, !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.9.i)
  br label %bb.fq

bb.fp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i
  %i.pl = phi ptr [ %i.jv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i ], [ %i.gx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i ]
  %i.pm = phi ptr [ %i.jw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i ], [ %i.gy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i ] ; 2 uses
  %.sroa.0178.3.i = phi i64 [ -9223372036854775711, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i ], [ %.sroa.0178.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i ] ; 3 uses
  %.sroa.11184.3.i = phi ptr [ %.sroa.09.sroa.4.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i ], [ %.sroa.11184.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.09.sroa.5.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i ], [ %.sroa.12.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i ] ; 4 uses
  %.sroa.13.3.i = phi ptr [ %i.nu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i ], [ %.sroa.13.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i ] ; 2 uses
  %.sroa.14.3.i = phi ptr [ %i.nw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i ], [ %.sroa.14.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i ] ; 2 uses
  %.sroa.6180.sroa.0.3.i = phi i8 [ %.sroa.6180.sroa.0.0.extract.trunc198.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i ], [ %.sroa.6180.sroa.0.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i ]
  %.sroa.6180.sroa.6.sroa.0.3.i = phi i56 [ %.sroa.6180.sroa.6.0.extract.trunc204.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs_NtNtB3O_10operations16filesystem_checkNtB63_22FileSystemCheckBuilder16create_fsck_plan00EEB3O_.exit139.i ], [ %.sroa.6180.sroa.6.sroa.0.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit.i ]
  %.sroa.6180.sroa.6.0.insert.ext.i = zext i56 %.sroa.6180.sroa.6.sroa.0.3.i to i64
  %.sroa.6180.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6180.sroa.6.0.insert.ext.i, 8
  %.sroa.6180.sroa.0.0.insert.ext.i = zext i8 %.sroa.6180.sroa.0.3.i to i64
  %.sroa.6180.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6180.sroa.6.0.insert.shift.i, %.sroa.6180.sroa.0.0.insert.ext.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.14266, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.15.i, i64 48, i1 false), !noalias !26758
  store i8 1, ptr %i.pl, align 2, !noalias !26651
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.9.i)
  %i.pn = icmp eq i64 %.sroa.0178.3.i, -9223372036854775710
  br i1 %i.pn, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %.thread, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14266)
  store i64 2, ptr %0, align 16
  br label %common.ret

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10283, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.14266, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14266)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtBN_22FileSystemCheckBuilder16create_fsck_plan0EBR_(ptr noundef nonnull align 8 %i.pm)
          to label %bb.ft unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %.body197

bb.ft:                                            ; preds = %bb.fr
  %.not.i86 = icmp eq i64 %.sroa.0178.3.i, -9223372036854775711
  br i1 %.not.i86, label %bb.fu, label %bb.gg

bb.fu:                                            ; preds = %bb.ft
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 281
  store i8 1, ptr %i.pp, align 1
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 282 ; 2 uses
  store i8 1, ptr %i.pq, align 2
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  store i64 %.sroa.6180.sroa.0.0.insert.insert.i, ptr %i.pr, align 8
  %.sroa.4297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  store ptr %.sroa.11184.3.i, ptr %.sroa.4297.0..sroa_idx, align 8
  %.sroa.5298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i64 %.sroa.12.3.i, ptr %.sroa.5298.0..sroa_idx, align 8
  %.sroa.6299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %.sroa.13.3.i, ptr %.sroa.6299.0..sroa_idx, align 8
  %.sroa.7300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %.sroa.14.3.i, ptr %.sroa.7300.0..sroa_idx, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.pt = load i8, ptr %i.ps, align 8, !range !89, !noundef !8
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %bb.gb, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.pv = icmp ult i64 %.sroa.12.3.i, 33909456017848441
  call void @llvm.assume(i1 %i.pv)
  %i.pw = icmp eq i64 %.sroa.12.3.i, 0
  br i1 %i.pw, label %bb.fz, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  invoke void @_RNvMNtCs3LITIwzqf1g_4uuid2v4NtB4_4Uuid6new_v4(ptr noalias noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.px)
          to label %.thread652 unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %.body161

.thread652:                                       ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8325)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8325, ptr noundef nonnull align 8 dereferenceable(16) %i.px, i64 16, i1 false)
  store ptr %1, ptr %i.pm, align 8
  %.sroa.8325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8325.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8325, i64 16, i1 false)
  %.sroa.10327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i8 0, ptr %.sroa.10327.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8330.sroa.10)
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 360
  br label %bb.gk

bb.fy:                                            ; preds = %bb.hh, %.body96
  %.pn47 = phi { ptr, i32 } [ %i.ua, %bb.hh ], [ %eh.lpad-body97, %.body96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8325)
  br label %.body161

.body161:                                         ; preds = %bb.ro, %bb.oj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit, %bb.og, %bb.hs, %bb.gf, %bb.fy, %bb.fx
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %bb.gf ], [ %i.ql, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit ], [ %.pn47, %bb.fy ], [ %.pn45, %bb.hs ], [ %i.aju, %bb.oj ], [ %.pn42.pn, %bb.og ], [ %i.py, %bb.fx ], [ %i.aqx, %bb.ro ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 281
  %i.qc = load i8, ptr %i.qb, align 1, !range !89, !noundef !8
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %bb.sp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit218

bb.fz:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 284
  store i8 0, ptr %i.qe, align 4
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.qg = load ptr, ptr %i.qf, align 8, !nonnull !8, !noundef !8
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.qi = load ptr, ptr %i.qh, align 8, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 283
  store i8 0, ptr %i.qj, align 1
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.qk, i64 32, i1 false)
  invoke void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable14new_with_state(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.bw, ptr noundef nonnull %i.qg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.qi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bv)
          to label %bb.ga unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit: ; preds = %bb.fz
  %i.ql = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %.body161

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %.sroa.06.sroa.0.sroa.0.0.copyload = load i64, ptr %i.bw, align 8
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.06.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.06.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.06.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.06.sroa.0.sroa.7.0.copyload = load ptr, ptr %.sroa.06.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %.sroa.06.sroa.0.sroa.8.0.copyload = load i64, ptr %.sroa.06.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %.sroa.06.sroa.0.sroa.9.0.copyload = load ptr, ptr %.sroa.06.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %.sroa.06.sroa.0.sroa.10.0.copyload = load ptr, ptr %.sroa.06.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.06.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.32, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.06.sroa.0.sroa.11.0..sroa_idx, i64 48, i1 false)
  %.sroa.06.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.33, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.sroa.0.sroa.12.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_check22FileSystemCheckMetricsEBM_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_check22FileSystemCheckMetricsEBM_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.nd, %bb.ht, %bb.ge, %bb.ga
  %.sroa.0415.1 = phi i64 [ 0, %bb.ge ], [ 0, %bb.ga ], [ 1, %bb.ht ], [ 1, %bb.nd ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.10416.1 = phi i64 [ %.sroa.01.sroa.0.0.copyload, %bb.ge ], [ %.sroa.06.sroa.0.sroa.0.0.copyload, %bb.ga ], [ undef, %bb.ht ], [ undef, %bb.nd ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.13419.1 = phi i64 [ %.sroa.01.sroa.5.0.copyload, %bb.ge ], [ %.sroa.06.sroa.0.sroa.5.0.copyload, %bb.ga ], [ %.sroa.0.0.i, %bb.ht ], [ %.sroa.0156.1.i, %bb.nd ], [ %.sroa.13419.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.19.1 = phi i64 [ %.sroa.01.sroa.6.0.copyload, %bb.ge ], [ %.sroa.06.sroa.0.sroa.6.0.copyload, %bb.ga ], [ %.sroa.3.i.sroa.0.0, %bb.ht ], [ %i.agp, %bb.nd ], [ %.sroa.19.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.25.1 = phi ptr [ %.sroa.01.sroa.7.0.copyload, %bb.ge ], [ %.sroa.06.sroa.0.sroa.7.0.copyload, %bb.ga ], [ %.sroa.3.i.sroa.4.0, %bb.ht ], [ %.sroa.7159.i.sroa.0.1, %bb.nd ], [ %.sroa.25.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.27.1 = phi i64 [ %.sroa.01.sroa.8.0.copyload, %bb.ge ], [ %.sroa.06.sroa.0.sroa.8.0.copyload, %bb.ga ], [ %.sroa.3.i.sroa.5.0, %bb.ht ], [ %.sroa.7159.i.sroa.5.1, %bb.nd ], [ %.sroa.27.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.28.1 = phi ptr [ %.sroa.01.sroa.9.0.copyload, %bb.ge ], [ %.sroa.06.sroa.0.sroa.9.0.copyload, %bb.ga ], [ %.sroa.3.i.sroa.6.0, %bb.ht ], [ %.sroa.7159.i.sroa.6.1, %bb.nd ], [ %.sroa.28.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.29.1 = phi ptr [ %.sroa.01.sroa.10.0.copyload, %bb.ge ], [ %.sroa.06.sroa.0.sroa.10.0.copyload, %bb.ga ], [ %.sroa.3.i.sroa.7.0, %bb.ht ], [ %.sroa.7159.i.sroa.7.1, %bb.nd ], [ %.sroa.29.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.33447.1 = phi i64 [ %.sroa.0.sroa.0.0.copyload, %bb.ge ], [ 0, %bb.ga ], [ undef, %bb.ht ], [ undef, %bb.nd ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.34.1 = phi ptr [ %.sroa.0.sroa.5.0.copyload, %bb.ge ], [ inttoptr (i64 8 to ptr), %bb.ga ], [ undef, %bb.ht ], [ undef, %bb.nd ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.35.1 = phi i64 [ %.sroa.0.sroa.6.0.copyload, %bb.ge ], [ 0, %bb.ga ], [ undef, %bb.ht ], [ undef, %bb.nd ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.36.1 = phi i8 [ 1, %bb.ge ], [ 0, %bb.ga ], [ undef, %bb.ht ], [ undef, %bb.nd ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 281 ; 2 uses
  %i.qn = load i8, ptr %i.qm, align 1, !range !89, !noundef !8
  %i.qo = trunc nuw i8 %i.qn to i1
  br i1 %i.qo, label %bb.rp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit195

bb.gb:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 284
  store i8 0, ptr %i.qp, align 4
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.qr = load ptr, ptr %i.qq, align 8, !nonnull !8, !noundef !8
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.qt = load ptr, ptr %i.qs, align 8, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 283
  store i8 0, ptr %i.qu, align 1
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.qv, i64 32, i1 false)
  invoke void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable14new_with_state(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.bz, ptr noundef nonnull %i.qr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.qt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.by)
          to label %bb.gc unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit91

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit91: ; preds = %bb.gb
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.gf

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store i8 0, ptr %i.pq, align 2
  %.sroa.0309.0.copyload = load i64, ptr %i.pr, align 8
  %.sroa.5310.0.copyload = load ptr, ptr %.sroa.4297.0..sroa_idx, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %.sroa.6311.0.copyload = load i64, ptr %.sroa.5298.0..sroa_idx, align 8 ; 2 uses
  %i.qx = icmp ult i64 %.sroa.6311.0.copyload, 33909456017848441
  call void @llvm.assume(i1 %i.qx)
  %i.qy = getelementptr inbounds nuw [272 x i8], ptr %.sroa.5310.0.copyload, i64 %.sroa.6311.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !26759
  store ptr %.sroa.5310.0.copyload, ptr %i.an, align 8, !alias.scope !26766, !noalias !26770
  %.sroa.5306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.5310.0.copyload, ptr %.sroa.5306.0..sroa_idx, align 8, !alias.scope !26766, !noalias !26770
  %.sroa.6307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.0309.0.copyload, ptr %.sroa.6307.0..sroa_idx, align 8, !alias.scope !26766, !noalias !26770
  %.sroa.7308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.qy, ptr %.sroa.7308.0..sroa_idx, align 8, !alias.scope !26766, !noalias !26770
end_hunk_11
begin_hunk_12_@_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8order_byINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21order_by_to_sort_exprB1j_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !29382
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !29379, !noalias !29384, !nonnull !8, !noundef !8 ; 4 uses
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !29382
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.az, ptr %i.k, align 8, !noalias !29382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !29382
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtBK_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
          to label %bb.l unwind label %bb.k, !noalias !29384

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.m, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %i.be, %bb.k ] ; 2 uses
  %i.bc = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !29385
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.j, label %.body

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #45
          to label %.body unwind label %bb.n, !noalias !29384

bb.k:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !29382
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.r unwind label %bb.m, !noalias !29384

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %bb.i unwind label %bb.n, !noalias !29384

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !29384
  unreachable

bb.o:                                             ; preds = %._crit_edge, %bb.e
  %i.bi = phi i64 [ %i.as, %bb.e ], [ %.pre, %._crit_edge ] ; 3 uses
  %.sroa.042.0 = phi i8 [ 0, %bb.e ], [ 1, %._crit_edge ] ; 7 uses
  %.sroa.04.0 = phi ptr [ %3, %bb.e ], [ %i.aq, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.bj = icmp ult i64 %i.bi, 6987403058223316
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %i.bi, i1 noundef zeroext false, i64 noundef 16, i64 noundef 128)
          to label %bb.s unwind label %bb.q

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit, %.body
  %.sroa.046.0 = phi i1 [ %.sroa.046.1.lpad-body, %.body ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.042.1 = phi i8 [ %.sroa.042.2.lpad-body, %.body ], [ %.sroa.042.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0125.0 = phi ptr [ %i.bm, %.body ], [ %.sroa.0125.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.28.0 = phi i32 [ %i.bn, %.body ], [ %.sroa.28.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bk = trunc nuw i8 %.sroa.042.1 to i1
  br i1 %i.bk, label %bb.eb, label %bb.aa

bb.q:                                             ; preds = %bb.dr, %bb.t, %bb.r, %bb.o
  %.sroa.046.1 = phi i1 [ true, %bb.t ], [ false, %bb.dr ], [ true, %bb.o ], [ true, %bb.r ]
  %.sroa.042.2 = phi i8 [ %.sroa.042.0, %bb.t ], [ %.sroa.042.0, %bb.dr ], [ %.sroa.042.0, %bb.o ], [ 1, %bb.r ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.dq, %bb.q, %bb.i, %bb.j
  %.sroa.046.1.lpad-body = phi i1 [ true, %bb.i ], [ true, %bb.j ], [ %.sroa.046.1, %bb.q ], [ false, %bb.dq ]
  %.sroa.042.2.lpad-body = phi i8 [ 0, %bb.i ], [ 0, %bb.j ], [ %.sroa.042.2, %bb.q ], [ %.sroa.042.0, %bb.dq ]
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %.pn.i, %bb.j ], [ %i.bl, %bb.q ], [ %i.jc, %bb.dq ] ; 2 uses
  %i.bm = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bn = extractvalue { ptr, i32 } %eh.lpad-body, 1
  br label %bb.p

bb.r:                                             ; preds = %bb.l
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !29379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !29379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !29382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx225 = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store ptr %i.az, ptr %.sroa.5.0..sroa_idx225, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema5merge(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %6)
          to label %._crit_edge unwind label %bb.q

._crit_edge:                                      ; preds = %bb.r
  %.pre = load i64, ptr %i.ar, align 8
  br label %bb.o

bb.s:                                             ; preds = %bb.o
  %i.bo = load i64, ptr %i.o, align 8, !range !64, !noundef !8
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !65, !noundef !8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.t, label %bb.u, !prof !3

bb.t:                                             ; preds = %bb.s
  %i.bt = load i64, ptr %i.bs, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bt) #41
          to label %bb.aw unwind label %bb.q

bb.u:                                             ; preds = %bb.s
  %i.bu = load ptr, ptr %i.bs, align 8, !nonnull !8, !noundef !8
  %i.bv = icmp samesign ule i64 %i.bi, %i.br
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.br, ptr %i.ap, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  store i64 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.ca = load i64, ptr %2, align 8, !range !231, !noundef !8
  %i.cb = load i64, ptr %i.ar, align 8, !noundef !8 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 6987403058223316
  call void @llvm.assume(i1 %i.cc)
  %.idx = mul nuw nsw i64 %i.cb, 1320
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.bz, ptr %i.ao, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  store ptr %i.bz, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.ca, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  store ptr %i.cd, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ce = icmp eq i64 %i.cb, 0
  br i1 %i.ce, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph: ; preds = %bb.u
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 9 uses
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.337.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.337, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cm = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.cr = load i8, ptr %i.cq, align 2, !range !3878
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 113
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.5257, i64 8
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i, %.body161
  %.sroa.0125.1 = phi ptr [ %.sroa.0125.6276, %bb.ea ], [ %.sroa.0125.6276, %bb.dy ], [ %.sroa.0125.6276, %bb.dz ], [ %i.cv, %.body161 ], [ %.sroa.0125.6276, %bb.dw ], [ %.sroa.0125.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.28.1 = phi i32 [ %.sroa.28.6275, %bb.ea ], [ %.sroa.28.6275, %bb.dy ], [ %.sroa.28.6275, %bb.dz ], [ %i.cw, %.body161 ], [ %.sroa.28.6275, %bb.dw ], [ %.sroa.28.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.av

.loopexit306:                                     ; preds = %bb.dn, %bb.dp
  %lpad.loopexit308 = landingpad { ptr, i32 }
          cleanup
  br label %.body161

.loopexit.split-lp307:                            ; preds = %bb.aq, %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i160
  %lpad.loopexit.split-lp309 = landingpad { ptr, i32 }
          cleanup
  br label %.body161

.body161:                                         ; preds = %.loopexit306, %.loopexit.split-lp307, %bb.as
  %eh.lpad-body162 = phi { ptr, i32 } [ %i.ef, %bb.as ], [ %lpad.loopexit308, %.loopexit306 ], [ %lpad.loopexit.split-lp309, %.loopexit.split-lp307 ] ; 2 uses
  %i.cv = extractvalue { ptr, i32 } %eh.lpad-body162, 0
  %i.cw = extractvalue { ptr, i32 } %eh.lpad-body162, 1
  br label %bb.v

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph, %bb.dl
  %i.cx = phi ptr [ %i.bz, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph ], [ %i.iu, %bb.dl ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29390)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1320
  store ptr %i.cy, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !29390, !noalias !29393
  %.sroa.0227.0.copyload = load i64, ptr %i.cx, align 8, !noalias !29390 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1312
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !29390
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1313
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1, !noalias !29390 ; 2 uses
  %.not127 = icmp eq i64 %.sroa.0227.0.copyload, 69
  br i1 %.not127, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.w

bb.w:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 336
  %.sroa.8231.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.cx, i64 328
  %.sroa.8231.0.copyload = load i64, ptr %.sroa.8231.0..sroa_idx.a, align 8, !noalias !29390 ; 2 uses
  %.sroa.8229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5257)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5257, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.8229.0..sroa_idx, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %.sroa.3123, ptr noundef nonnull align 8 dereferenceable(976) %.sroa.9.0..sroa_idx, i64 976, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 %.sroa.0227.0.copyload, ptr %i.an, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5257.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5257, i64 320, i1 false)
  %.not128.not.not.not.not.not = icmp ne i64 %.sroa.8231.0.copyload, 70 ; 3 uses
  br i1 %.not128.not.not.not.not.not, label %bb.ac, label %bb.ad

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit, %bb.dl, %bb.u
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit150 unwind label %bb.x

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.v, %bb.x
  %.sroa.0125.2 = phi ptr [ %i.da, %bb.x ], [ %.sroa.0125.1, %bb.v ]
  %.sroa.28.2 = phi i32 [ %i.db, %bb.x ], [ %.sroa.28.1, %bb.v ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #42
          to label %bb.p unwind label %bb.av

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit163, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  %i.db = extractvalue { ptr, i32 } %i.cz, 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit150: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  store i64 20, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.dd = trunc nuw i8 %.sroa.042.0 to i1
  br i1 %i.dd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ab

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit150
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aq)
          to label %bb.y unwind label %.thread

bb.aa:                                            ; preds = %bb.eb, %bb.p
  br i1 %.sroa.046.0, label %bb.ed, label %bb.ec

.thread:                                          ; preds = %bb.z, %bb.du
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  %i.dg = extractvalue { ptr, i32 } %i.de, 1
  br label %bb.ec

bb.ab:                                            ; preds = %bb.dt, %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.ac:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 %.sroa.8231.0.copyload, ptr %i.am, align 8
  %.sroa.3123.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %.sroa.3123.0..sroa_idx124, ptr noundef nonnull align 8 dereferenceable(976) %.sroa.3123, i64 976, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.am, ptr %i.ai, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXsV_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB5_8WithFillNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noundef nonnull @594, ptr noundef nonnull %i.ai)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ae

bb.ad:                                            ; preds = %bb.w
  %i.dh = icmp ne i64 %.sroa.0227.0.copyload, 48
  call void @llvm.assume(i1 %i.dh)
  %i.di = icmp eq i64 %.sroa.0227.0.copyload, 45
  br i1 %i.di, label %bb.ax, label %bb.ay

.body156:                                         ; preds = %bb.am, %bb.ae, %.body152
  %.pn134.pn = phi { ptr, i32 } [ %.pn134, %.body152 ], [ %i.dj, %bb.ae ], [ %i.dw, %bb.am ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query8WithFillECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(984) %i.am) #42
          to label %.thread268 unwind label %bb.av

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155, %bb.ac
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body156

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ag unwind label %bb.af

.body152:                                         ; preds = %bb.ak, %bb.af, %bb.aj
  %.pn134 = phi { ptr, i32 } [ %i.dt, %bb.aj ], [ %i.dk, %bb.af ], [ %i.du, %bb.ak ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak) #42
          to label %.body156 unwind label %bb.av

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ah, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body152

bb.ag:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.dl = load i64, ptr %i.n, align 8, !range !64, !noundef !8
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !65, !noundef !8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.dm, label %bb.ah, label %bb.ai, !prof !3

bb.ah:                                            ; preds = %bb.ag
  %i.dq = load i64, ptr %i.dp, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #41
          to label %bb.aw unwind label %bb.af

bb.ai:                                            ; preds = %bb.ag
  %i.dr = load ptr, ptr %i.dp, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.do, ptr %i.ah, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.dr, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.560.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ak, ptr %i.ag, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.464.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ah, ptr %i.ds, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.468.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull @52, ptr noundef nonnull %i.ag)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit151 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #42
          to label %.body152 unwind label %bb.av

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit151: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit151
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body152 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit151
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155 unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body156 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit158 unwind label %bb.ae

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit158: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  store i64 5, ptr %0, align 8
end_hunk_12
begin_hunk_13_@_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8order_byINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21order_by_to_sort_exprB1j_:bb.a
          to label %.noexc170 unwind label %.loopexit.split-lp302

.noexc170:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit
  %i.gk = load i64, ptr %i.ck, align 8, !noundef !8 ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %.sroa.12238.2
  br i1 %i.gl, label %bb.cf, label %bb.cd

bb.bt:                                            ; preds = %.noexc169
  %i.gm = load ptr, ptr %i.gi, align 8, !noalias !29403, !nonnull !8, !noundef !8 ; 2 uses
  %i.gn = icmp ugt i64 %i.gh, 44
  call void @llvm.assume(i1 %i.gn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.gm, ptr noundef nonnull readonly align 1 dereferenceable(45) @595, i64 range(i64 0, -9223372036854775808) 45, i1 false), !noalias !29416
  store i64 %i.gh, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.gm, ptr %.sroa.4.0..sroa_idx242, align 8
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 45, ptr %.sroa.5243.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bv unwind label %bb.bu

.body176:                                         ; preds = %bb.bz, %bb.bu, %bb.by
  %.pn130 = phi { ptr, i32 } [ %i.gx, %bb.by ], [ %i.go, %bb.bu ], [ %i.gy, %bb.bz ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac) #42
          to label %.body166 unwind label %bb.av

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i175, %bb.bw, %bb.bt
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.bv:                                            ; preds = %bb.bt
  %i.gp = load i64, ptr %i.m, align 8, !range !64, !noundef !8
  %i.gq = trunc nuw i64 %i.gp to i1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !range !65, !noundef !8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.gq, label %bb.bw, label %bb.bx, !prof !3

bb.bw:                                            ; preds = %bb.bv
  %i.gu = load i64, ptr %i.gt, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gs, i64 %i.gu) #41
          to label %bb.aw unwind label %bb.bu

bb.bx:                                            ; preds = %bb.bv
  %i.gv = load ptr, ptr %i.gt, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.gs, ptr %i.ab, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.gv, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.584.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ac, ptr %i.aa, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.488.0..sroa_idx, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.gw, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.492.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull @52, ptr noundef nonnull %i.aa)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit173 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab) #42
          to label %.body176 unwind label %bb.av

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit173: ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i175 unwind label %bb.bz

bb.bz:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit173
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body176 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i175: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit173
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit179 unwind label %bb.bu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit179: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i181 unwind label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit179
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body166 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i181: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit179
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit185 unwind label %.loopexit.split-lp302

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit185: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.225.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  store i64 7, ptr %0, align 8
  br label %bb.cy

bb.cd:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.hc = add i64 %.sroa.12238.2, -1              ; 4 uses
  %i.hd = icmp ult i64 %i.hc, %i.cm
  br i1 %i.hd, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, -1) %i.hc, i64 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #48
          to label %.noexc186 unwind label %.loopexit.split-lp302

.noexc186:                                        ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %i.gk, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.ae, ptr %i.v, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.498.0..sroa_idx, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.he, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4102.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @596, ptr noundef nonnull %i.v)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit189 unwind label %.loopexit.split-lp302

bb.cg:                                            ; preds = %bb.cd
  %i.hf = getelementptr inbounds nuw [56 x i8], ptr %i.co, i64 %i.hc ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !range !3087, !noalias !29417, !noundef !8
  %.not.i = icmp eq i64 %i.hg, 3
  %..i = select i1 %.not.i, ptr null, ptr %i.hf
  %i.hh = load ptr, ptr %i.cp, align 8, !noalias !29417, !nonnull !8, !noundef !8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hc
  invoke void @_RNvXs4_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnINtNtCsbvkFyIu7lgC_4core7convert4FromTINtNtB12_6option6OptionRNtNtB7_15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE4from(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %..i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hj)
          to label %bb.ch unwind label %.loopexit301

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.337, ptr noundef nonnull align 8 dereferenceable(104) %i.s, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i191 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.thread277 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

.thread277:                                       ; preds = %bb.ci
  %.sroa.28.6280 = extractvalue { ptr, i32 } %i.hk, 1
  %.sroa.0125.6281 = extractvalue { ptr, i32 } %i.hk, 0
  br label %bb.dv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i191: ; preds = %bb.ch
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit195 unwind label %.loopexit297

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit195: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.df, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit195
  %.sroa.038.2 = phi i8 [ 0, %bb.df ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit195 ] ; 2 uses
  %.sroa.036.0 = phi i64 [ %i.ii, %bb.df ], [ 5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit195 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !29420)
  %.sroa.04.0.i = icmp ne i8 %.sroa.10.0.copyload, 0 ; 3 uses
  %.not7.i = icmp eq i8 %.sroa.11.0.copyload, 2
  br i1 %.not7.i, label %bb.cl, label %7

7:                                                ; preds = %bb.ck
  %8 = trunc nuw i8 %.sroa.11.0.copyload to i1
  br label %bb.dg

bb.cl:                                            ; preds = %bb.ck
  switch i8 %i.cr, label %default.unreachable [
    i8 0, label %bb.cm
    i8 1, label %bb.dg
    i8 2, label %bb.cn
    i8 3, label %bb.co
  ]

default.unreachable:                              ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %9 = xor i1 %.sroa.04.0.i, true
  br label %bb.dg

bb.cn:                                            ; preds = %bb.cl
  br label %bb.dg

bb.co:                                            ; preds = %bb.cl
  br label %bb.dg

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit189: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cq unwind label %bb.cp

.body200:                                         ; preds = %bb.cu, %bb.cp, %bb.ct
  %.pn = phi { ptr, i32 } [ %i.hv, %bb.ct ], [ %i.hm, %bb.cp ], [ %i.hw, %bb.cu ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #42
          to label %.body166 unwind label %bb.av

bb.cp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i199, %bb.cr, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit189
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body200

bb.cq:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit189
  %i.hn = load i64, ptr %i.l, align 8, !range !64, !noundef !8
  %i.ho = trunc nuw i64 %i.hn to i1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !range !65, !noundef !8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.ho, label %bb.cr, label %bb.cs, !prof !3

bb.cr:                                            ; preds = %bb.cq
  %i.hs = load i64, ptr %i.hr, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hq, i64 %i.hs) #41
          to label %bb.aw unwind label %bb.cp

bb.cs:                                            ; preds = %bb.cq
  %i.ht = load ptr, ptr %i.hr, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.hq, ptr %i.u, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ht, ptr %.sroa.4106.0..sroa_idx, align 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.5107.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.y, ptr %i.t, align 8
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4111.0..sroa_idx, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.hu, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4115.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull @52, ptr noundef nonnull %i.t)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit197 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #42
          to label %.body200 unwind label %bb.av

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit197: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i199 unwind label %bb.cu

bb.cu:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit197
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body200 unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i199: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit197
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit203 unwind label %bb.cp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit203: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i205 unwind label %bb.cw

bb.cw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit203
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body166 unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i205: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit203
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit209 unwind label %.loopexit.split-lp302

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit209: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.228.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  store i64 7, ptr %0, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit185, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit209, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i211 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.thread282 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

.thread282:                                       ; preds = %bb.cz
  %.sroa.28.6285 = extractvalue { ptr, i32 } %i.ia, 1
  %.sroa.0125.6286 = extractvalue { ptr, i32 } %i.ia, 0
  br label %bb.dv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i211: ; preds = %bb.cy
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit216 unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i.thread

bb.db:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29400
  %.sroa.4254.8.copyload = load i64, ptr %i.g, align 8
  %.sroa.6255.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.379.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6255.8..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 7, ptr %0, align 8
  %.sroa.278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4254.8.copyload, ptr %.sroa.278.0..sroa_idx, align 8
  br label %bb.cy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit216: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ic = load i64, ptr %i.an, align 8, !range !5761, !noundef !8 ; 2 uses
  %i.id = icmp ne i64 %i.ic, 48
  call void @llvm.assume(i1 %i.id)
  %i.ie = icmp eq i64 %i.ic, 45
  br i1 %i.ie, label %bb.dc, label %bb.aq

bb.dc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit216
  %i.if = load i64, ptr %.sroa.5257.0..sroa_idx, align 8, !range !8300, !noundef !8 ; 2 uses
  %i.ig = icmp ne i64 %i.if, -9223372036854775806
  call void @llvm.assume(i1 %i.ig)
  %i.ih = icmp eq i64 %i.if, -9223372036854775808
  br i1 %i.ih, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit163, label %bb.au

bb.dd:                                            ; preds = %bb.ay
  %i.ii = load i64, ptr %i.q, align 16, !range !4, !noundef !8 ; 2 uses
  %i.ij = icmp eq i64 %i.ii, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.632, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5119.0..sroa_idx, i64 40, i1 false)
  br i1 %i.ij, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.632, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.834)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit163

bb.df:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.834, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6120.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.337, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.632, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.337.48..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.834, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.834)
  br label %bb.ck

bb.dg:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl, %7
  %.sroa.06.0.i = phi i1 [ %8, %7 ], [ %9, %bb.cm ], [ false, %bb.co ], [ true, %bb.cn ], [ %.sroa.04.0.i, %bb.cl ]
  store i64 %.sroa.036.0, ptr %i.p, align 16, !alias.scope !29423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4251.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.337, i64 104, i1 false)
  %10 = zext i1 %.sroa.04.0.i to i8
  store i8 %10, ptr %i.cs, align 16, !alias.scope !29425, !noalias !29420
  %11 = zext i1 %.sroa.06.0.i to i8
  store i8 %11, ptr %i.ct, align 1, !alias.scope !29425, !noalias !29420
  %i.ik = load i64, ptr %i.bx, align 8, !alias.scope !29426, !noalias !29429, !noundef !8 ; 3 uses
  %i.il = load i64, ptr %i.ap, align 8, !range !231, !alias.scope !29426, !noalias !29429, !noundef !8
  %i.im = icmp eq i64 %i.ik, %i.il
  br i1 %i.im, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.dk unwind label %bb.di, !noalias !29429

bb.di:                                            ; preds = %bb.dh
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.dk:                                            ; preds = %bb.dh, %bb.dg
  %i.ip = load ptr, ptr %i.bw, align 8, !alias.scope !29426, !noalias !29429, !nonnull !8, !noundef !8
  %i.iq = getelementptr inbounds nuw [128 x i8], ptr %i.ip, i64 %i.ik
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.iq, ptr noundef nonnull align 16 dereferenceable(128) %i.p, i64 128, i1 false)
  %i.ir = add i64 %i.ik, 1
  store i64 %i.ir, ptr %i.bx, align 8, !alias.scope !29426, !noalias !29429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.is = trunc nuw i8 %.sroa.038.2 to i1
  br i1 %i.is, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dp, %bb.do, %bb.dn, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5257)
  %i.it = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !29431, !noalias !29393, !nonnull !8, !noundef !8
  %i.iu = load ptr, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !29431, !noalias !29393, !nonnull !8, !noundef !8 ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.it
  br i1 %i.iv, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

bb.dm:                                            ; preds = %bb.dk
  %i.iw = load i64, ptr %i.an, align 8, !range !5761, !noundef !8 ; 2 uses
  %i.ix = icmp ne i64 %i.iw, 48
  call void @llvm.assume(i1 %i.ix)
  %i.iy = icmp eq i64 %i.iw, 45
  br i1 %i.iy, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.an)
          to label %bb.dl unwind label %.loopexit306

bb.do:                                            ; preds = %bb.dm
  %i.iz = load i64, ptr %.sroa.5257.0..sroa_idx, align 8, !range !8300, !noundef !8 ; 2 uses
  %i.ja = icmp ne i64 %i.iz, -9223372036854775806
  call void @llvm.assume(i1 %i.ja)
  %i.jb = icmp eq i64 %i.iz, -9223372036854775808
  br i1 %i.jb, label %bb.dl, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5257.0..sroa_idx)
          to label %bb.dl unwind label %.loopexit306

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit164: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.dr unwind label %bb.dq

bb.dq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit164
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body unwind label %bb.ds

bb.dr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core.exit164
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.q

bb.ds:                                            ; preds = %bb.dq
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.je = trunc nuw i8 %.sroa.042.0 to i1
  br i1 %i.je, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.du, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ab

bb.du:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aq)
          to label %bb.dt unwind label %.thread

bb.dv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i.thread, %.thread282, %.thread277, %.thread268, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0125.6276 = phi ptr [ %.sroa.0125.6273, %.thread268 ], [ %.sroa.0125.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.0125.6281, %.thread277 ], [ %.sroa.0125.6286, %.thread282 ], [ %.sroa.0125.6475, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i.thread ] ; 4 uses
  %.sroa.28.6275 = phi i32 [ %.sroa.28.6272, %.thread268 ], [ %.sroa.28.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.28.6280, %.thread277 ], [ %.sroa.28.6285, %.thread282 ], [ %.sroa.28.6474, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i.thread ] ; 4 uses
  %.sroa.045.0274 = phi i1 [ %.not128.not.not.not.not.not, %.thread268 ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i ], [ false, %.thread277 ], [ false, %.thread282 ], [ %.not128.not.not.not.not.not, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortECs14kWLkQVSKO_14deltalake_core.exit.i.thread ]
  %i.jf = load i64, ptr %i.an, align 8, !range !5761, !noundef !8 ; 2 uses
  %i.jg = icmp ne i64 %i.jf, 48
  call void @llvm.assume(i1 %i.jg)
  %i.jh = icmp eq i64 %i.jf, 45
  br i1 %i.jh, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.an) #42
          to label %bb.v unwind label %bb.av

bb.dx:                                            ; preds = %bb.dv
  %i.ji = load i64, ptr %.sroa.5257.0..sroa_idx, align 8, !range !8300, !noundef !8 ; 2 uses
  %i.jj = icmp ne i64 %i.ji, -9223372036854775806
  call void @llvm.assume(i1 %i.jj)
  %i.jk = icmp eq i64 %i.ji, -9223372036854775808
  br i1 %i.jk, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  br i1 %.sroa.045.0274, label %bb.ea, label %bb.v

bb.dz:                                            ; preds = %bb.dx
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5257.0..sroa_idx) #42
          to label %bb.v unwind label %bb.av

bb.ea:                                            ; preds = %bb.dy
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf) #42
          to label %bb.v unwind label %bb.av

bb.eb:                                            ; preds = %bb.p
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aq) #42
          to label %bb.aa unwind label %bb.av

bb.ec:                                            ; preds = %.thread, %bb.ed, %bb.aa
  %.sroa.28.3267 = phi i32 [ %i.dg, %.thread ], [ %.sroa.28.0, %bb.ed ], [ %.sroa.28.0, %bb.aa ]
  %.sroa.0125.3266 = phi ptr [ %i.df, %.thread ], [ %.sroa.0125.0, %bb.ed ], [ %.sroa.0125.0, %bb.aa ]
  %i.jl = insertvalue { ptr, i32 } poison, ptr %.sroa.0125.3266, 0
  %i.jm = insertvalue { ptr, i32 } %i.jl, i32 %.sroa.28.3267, 1
  br label %common.resume

bb.ed:                                            ; preds = %bb.aa
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #42
          to label %bb.ec unwind label %bb.av
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8subqueryINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE17parse_in_subqueryB1j_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(328) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(1400) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %5, ptr noalias noundef nonnull align 8 dereferenceable(80) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [336 x i8], align 16              ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.024 = alloca [48 x i8], align 8          ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [112 x i8], align 16              ; 5 uses
  %i.h = alloca [328 x i8], align 8               ; 4 uses
  %i.i = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.613 = alloca [40 x i8], align 8          ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [1400 x i8], align 8              ; 4 uses
  %i.n = alloca [320 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.o = alloca [320 x i8], align 16              ; 12 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 16 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29436
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !29433, !noalias !29438, !nonnull !8, !noundef !8 ; 4 uses
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8, !noalias !29436
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.t, ptr %i.c, align 8, !noalias !29436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29436
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtBK_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %5)
          to label %bb.g unwind label %bb.f, !noalias !29438

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.y, %bb.f ] ; 2 uses
  %i.w = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !29439
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %.body.thread

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #45
          to label %.body.thread unwind label %bb.i, !noalias !29438

bb.f:                                             ; preds = %bb.b
end_hunk_13
begin_hunk_14_@_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprB1l_:bb.a
  %i.cc = alloca [8 x i8], align 8                ; 7 uses
  %i.cd = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.6254 = alloca [24 x i8], align 8         ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 2 uses
  %i.cf = alloca [24 x i8], align 8               ; 4 uses
  %i.cg = alloca [24 x i8], align 8               ; 4 uses
  %i.ch = alloca [24 x i8], align 8               ; 4 uses
  %i.ci = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6249 = alloca [40 x i8], align 8         ; 7 uses
  %i.cj = alloca [24 x i8], align 8               ; 14 uses
  %i.ck = alloca [32 x i8], align 8               ; 7 uses
  %i.cl = alloca [24 x i8], align 8               ; 8 uses
  %i.cm = alloca [24 x i8], align 8               ; 4 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [24 x i8], align 8               ; 2 uses
  %i.cp = alloca [24 x i8], align 8               ; 4 uses
  %i.cq = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.6242 = alloca [40 x i8], align 8         ; 7 uses
  %i.cr = alloca [24 x i8], align 8               ; 13 uses
  %i.cs = alloca [24 x i8], align 8               ; 11 uses
  %i.ct = alloca [32 x i8], align 8               ; 7 uses
  %i.cu = alloca [24 x i8], align 8               ; 8 uses
  %i.cv = alloca [16 x i8], align 8               ; 5 uses
  %i.cw = alloca [16 x i8], align 8               ; 5 uses
  %i.cx = alloca [24 x i8], align 8               ; 4 uses
  %i.cy = alloca [24 x i8], align 8               ; 6 uses
  %i.cz = alloca [24 x i8], align 8               ; 2 uses
  %i.da = alloca [8 x i8], align 8                ; 12 uses
  %i.db = alloca [24 x i8], align 8               ; 4 uses
  %i.dc = alloca [288 x i8], align 16             ; 5 uses
  %i.dd = alloca [112 x i8], align 16             ; 5 uses
  %i.de = alloca [112 x i8], align 16             ; 4 uses
  %i.df = alloca [32 x i8], align 8               ; 7 uses
  %i.dg = alloca [24 x i8], align 8               ; 4 uses
  %i.dh = alloca [24 x i8], align 8               ; 5 uses
  %i.di = alloca [24 x i8], align 8               ; 7 uses
  %i.dj = alloca [24 x i8], align 8               ; 6 uses
  %i.dk = alloca [288 x i8], align 16             ; 5 uses
  %i.dl = alloca [288 x i8], align 16             ; 17 uses
  %.sroa.3223.sroa.0 = alloca [160 x i8], align 16 ; 4 uses
  %.sroa.3223.sroa.6 = alloca [24 x i8], align 16 ; 2 uses
  %.sroa.3223.sroa.7 = alloca [24 x i8], align 8  ; 2 uses
  %.sroa.3223.sroa.8 = alloca [24 x i8], align 16 ; 2 uses
  %.sroa.3223.sroa.12 = alloca [14 x i8], align 2 ; 2 uses
  %i.dm = alloca [288 x i8], align 16             ; 14 uses
  %i.dn = alloca [288 x i8], align 16             ; 16 uses
  %.sroa.6218 = alloca [40 x i8], align 16        ; 6 uses
  %.sroa.61631 = alloca [160 x i8], align 16      ; 6 uses
  %.sroa.11 = alloca [24 x i8], align 16          ; 6 uses
  %.sroa.13 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.15 = alloca [24 x i8], align 16          ; 6 uses
  %.sroa.23 = alloca [14 x i8], align 2           ; 4 uses
  %i.do = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.7204 = alloca [40 x i8], align 8         ; 6 uses
  %.sroa.8206 = alloca [64 x i8], align 16        ; 6 uses
  %.sroa.9194 = alloca [40 x i8], align 8         ; 7 uses
  %.sroa.8183 = alloca [40 x i8], align 8         ; 7 uses
  %i.dp = alloca [32 x i8], align 8               ; 7 uses
  %i.dq = alloca [24 x i8], align 8               ; 8 uses
  %i.dr = alloca [16 x i8], align 8               ; 5 uses
  %i.ds = alloca [24 x i8], align 8               ; 4 uses
  %i.dt = alloca [24 x i8], align 8               ; 6 uses
  %i.du = alloca [24 x i8], align 8               ; 2 uses
  %i.dv = alloca [24 x i8], align 8               ; 4 uses
  %i.dw = alloca [24 x i8], align 8               ; 4 uses
  %i.dx = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.6167 = alloca [24 x i8], align 8         ; 6 uses
  %i.dy = alloca [24 x i8], align 8               ; 9 uses
  %i.dz = alloca [24 x i8], align 8               ; 4 uses
  %i.ea = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.6162 = alloca [40 x i8], align 8         ; 7 uses
  %i.eb = alloca [24 x i8], align 8               ; 11 uses
  %i.ec = alloca [24 x i8], align 8               ; 9 uses
  %i.ed = alloca [16 x i8], align 8               ; 8 uses
  %i.ee = alloca [40 x i8], align 8               ; 12 uses
  %i.ef = alloca [176 x i8], align 16             ; 28 uses
  %.sroa.6151 = alloca [40 x i8], align 16        ; 5 uses
  %.sroa.7153 = alloca [120 x i8], align 8        ; 5 uses
  %.sroa.7 = alloca [40 x i8], align 16           ; 6 uses
  %.sroa.9146 = alloca [120 x i8], align 8        ; 5 uses
  %.sroa.6137 = alloca [40 x i8], align 16        ; 7 uses
  %.sroa.71793 = alloca [40 x i8], align 16       ; 7 uses
  %.sroa.8 = alloca [120 x i8], align 8           ; 7 uses
  %i.eg = alloca [16 x i8], align 8               ; 5 uses
  %i.eh = alloca [24 x i8], align 8               ; 4 uses
  %i.ei = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.6125 = alloca [24 x i8], align 8         ; 6 uses
  %i.ej = alloca [24 x i8], align 8               ; 13 uses
  %i.ek = alloca [56 x i8], align 8               ; 8 uses
  %i.el = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.6104 = alloca [24 x i8], align 8         ; 6 uses
  %i.em = alloca [24 x i8], align 8               ; 9 uses
  %i.en = alloca [152 x i8], align 8              ; 27 uses
  %i.eo = alloca [32 x i8], align 8               ; 7 uses
  %i.ep = alloca [24 x i8], align 8               ; 8 uses
  %i.eq = alloca [24 x i8], align 8               ; 4 uses
  %i.er = alloca [24 x i8], align 8               ; 6 uses
  %i.es = alloca [24 x i8], align 8               ; 2 uses
  %i.et = alloca [112 x i8], align 16             ; 4 uses
  %i.eu = alloca [40 x i8], align 8               ; 6 uses
  %i.ev = alloca [112 x i8], align 16             ; 7 uses
  %i.ew = alloca [32 x i8], align 8               ; 7 uses
  %i.ex = alloca [24 x i8], align 8               ; 8 uses
  %i.ey = alloca [24 x i8], align 8               ; 4 uses
  %i.ez = alloca [24 x i8], align 8               ; 6 uses
  %i.fa = alloca [24 x i8], align 8               ; 2 uses
  %i.fb = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.685 = alloca [24 x i8], align 8          ; 6 uses
  %i.fc = alloca [24 x i8], align 8               ; 7 uses
  %i.fd = alloca [112 x i8], align 16             ; 5 uses
  %i.fe = alloca [112 x i8], align 16             ; 4 uses
  %i.ff = alloca [32 x i8], align 8               ; 7 uses
  %i.fg = alloca [24 x i8], align 8               ; 2 uses
  %i.fh = alloca [24 x i8], align 8               ; 7 uses
  %i.fi = alloca [24 x i8], align 8               ; 6 uses
  %i.fj = alloca [32 x i8], align 8               ; 10 uses
  %i.fk = alloca [32 x i8], align 8               ; 7 uses
  %i.fl = alloca [24 x i8], align 8               ; 8 uses
  %i.fm = alloca [16 x i8], align 8               ; 5 uses
  %i.fn = alloca [16 x i8], align 8               ; 5 uses
  %i.fo = alloca [24 x i8], align 8               ; 4 uses
  %i.fp = alloca [24 x i8], align 8               ; 6 uses
  %i.fq = alloca [24 x i8], align 8               ; 2 uses
  %i.fr = alloca [24 x i8], align 8               ; 3 uses
  %i.fs = alloca [24 x i8], align 8               ; 4 uses
  %i.ft = alloca [24 x i8], align 8               ; 4 uses
  %i.fu = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.669 = alloca [24 x i8], align 8          ; 6 uses
  %i.fv = alloca [48 x i8], align 8               ; 12 uses
  %.sroa.665 = alloca [40 x i8], align 8          ; 8 uses
  %i.fw = alloca [24 x i8], align 8               ; 11 uses
  %i.fx = alloca [24 x i8], align 8               ; 10 uses
  %i.fy = alloca [8 x i8], align 8                ; 10 uses
  %.sroa.652 = alloca [40 x i8], align 8          ; 4 uses
  %.sroa.5 = alloca [64 x i8], align 16           ; 2 uses
  %i.fz = alloca [24 x i8], align 8               ; 4 uses
  %i.ga = alloca [112 x i8], align 16             ; 7 uses
  %i.gb = alloca [24 x i8], align 8               ; 6 uses
  %i.gc = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.639 = alloca [24 x i8], align 8          ; 6 uses
  %i.gd = alloca [24 x i8], align 8               ; 8 uses
  %i.ge = alloca [32 x i8], align 8               ; 7 uses
  %i.gf = alloca [24 x i8], align 8               ; 8 uses
  %i.gg = alloca [24 x i8], align 8               ; 4 uses
  %i.gh = alloca [24 x i8], align 8               ; 6 uses
  %i.gi = alloca [24 x i8], align 8               ; 2 uses
  %i.gj = alloca [16 x i8], align 8               ; 5 uses
  %i.gk = alloca [24 x i8], align 8               ; 6 uses
  %i.gl = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.624 = alloca [24 x i8], align 8          ; 6 uses
  %i.gm = alloca [24 x i8], align 8               ; 9 uses
  %i.gn = alloca [32 x i8], align 8               ; 7 uses
  %i.go = alloca [24 x i8], align 8               ; 10 uses
  %i.gp = alloca [16 x i8], align 8               ; 5 uses
  %i.gq = alloca [24 x i8], align 8               ; 4 uses
  %i.gr = alloca [24 x i8], align 8               ; 8 uses
  %i.gs = alloca [24 x i8], align 8               ; 2 uses
  %i.gt = alloca [64 x i8], align 8               ; 6 uses
  %i.gu = alloca [24 x i8], align 8               ; 23 uses
  %i.gv = alloca [32 x i8], align 8               ; 10 uses
  %i.gw = alloca [32 x i8], align 8               ; 7 uses
  %i.gx = alloca [24 x i8], align 8               ; 10 uses
  %i.gy = alloca [24 x i8], align 8               ; 10 uses
  %i.gz = alloca [24 x i8], align 8               ; 2 uses
  %i.ha = alloca [32 x i8], align 8               ; 7 uses
  %i.hb = alloca [24 x i8], align 8               ; 10 uses
  %i.hc = alloca [24 x i8], align 8               ; 10 uses
  %i.hd = alloca [24 x i8], align 8               ; 2 uses
  %i.he = alloca [24 x i8], align 8               ; 18 uses
  %i.hf = alloca [8 x i8], align 8                ; 6 uses
  %i.hg = alloca [152 x i8], align 8              ; 15 uses
  %i.hh = alloca [24 x i8], align 8               ; 11 uses
  %i.hi = alloca [24 x i8], align 8               ; 19 uses
  %i.hj = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.3 = alloca [200 x i8], align 8           ; 6 uses
  %i.hk = alloca [264 x i8], align 8              ; 11 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk)
  call void @_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionNtB2_12FunctionArgs7try_new(ptr noalias noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.hk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %2)
  %i.hl = load i64, ptr %i.hk, align 8, !range !3144, !noundef !8 ; 4 uses
  %i.hm = icmp eq i64 %i.hl, 6
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.hn, i64 40, i1 false)
  br i1 %i.hm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ho, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.qi

bb.c:                                             ; preds = %bb.a
  %.sroa.6397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.6397.0..sroa_idx, i64 200, i1 false)
  %.sroa.7398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 248
  %.sroa.7398.0.copyload = load ptr, ptr %.sroa.7398.0..sroa_idx, align 8 ; 9 uses
  %.sroa.8399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 256
  %.sroa.8399.0.copyload = load i8, ptr %.sroa.8399.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 257
  %.sroa.9400.0.copyload = load i8, ptr %.sroa.9400.0..sroa_idx, align 1
  %.sroa.10401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 258
  %.sroa.10401.0.copyload = load i8, ptr %.sroa.10401.0..sroa_idx, align 2 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj)
  %.sroa.3.152..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.152..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hi)
  %.sroa.3.176..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.176..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hh)
  %.sroa.3.200..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.200..sroa_idx, i64 24, i1 false)
  store i64 %i.hl, ptr %i.hg, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf)
  store ptr %.sroa.7398.0.copyload, ptr %i.hf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he)
  %.sroa.3.224..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.224..sroa_idx, i64 24, i1 false)
  %i.hp = trunc nuw i8 %.sroa.9400.0.copyload to i1
  %.not872 = icmp eq i64 %i.hl, 5
  br i1 %.not872, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.hq = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hr = load i64, ptr %i.hq, align 8, !noundef !8 ; 2 uses
  %i.hs = icmp ult i64 %i.hr, 6987403058223316
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = icmp eq i64 %i.hr, 0
  br i1 %i.ht, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 3 uses
  %i.hv = load i64, ptr %i.hu, align 8, !noundef !8 ; 2 uses
  %i.hw = icmp ult i64 %i.hv, 6987403058223316
  tail call void @llvm.assume(i1 %i.hw)
  %i.hx = icmp eq i64 %i.hv, 0
  br i1 %i.hx, label %bb.y, label %bb.z

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !31736
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef range(i64 0, -9223372036854775808) 143, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  %i.hy = load i64, ptr %i.k, align 8, !range !64, !noalias !31736, !noundef !8
  %i.hz = trunc nuw i64 %i.hy to i1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !range !65, !noalias !31736, !noundef !8 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.hz, label %bb.g, label %bb.i, !prof !3

bb.g:                                             ; preds = %.noexc
  %i.id = load i64, ptr %i.ic, align 8, !noalias !31736
  br label %.invoke

.body1094:                                        ; preds = %bb.cr, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1187
  %.sroa.0367.0 = phi i8 [ %.sroa.0367.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1187 ], [ %.sroa.0367.4, %bb.cr ], [ %.sroa.0367.1, %bb.h ]
  %.sroa.0369.0 = phi i8 [ %.sroa.0369.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1187 ], [ %.sroa.0369.4, %bb.cr ], [ %.sroa.0369.1, %bb.h ] ; 2 uses
  %.sroa.0371.0 = phi i8 [ %.sroa.0371.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1187 ], [ %.sroa.0371.4, %bb.cr ], [ %.sroa.0371.1, %bb.h ] ; 2 uses
  %.sroa.0373.0 = phi i8 [ %.sroa.0373.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1187 ], [ %.sroa.0373.4, %bb.cr ], [ %.sroa.0373.1, %bb.h ] ; 2 uses
  %.sroa.0375.0 = phi i8 [ %.sroa.0375.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1187 ], [ %.sroa.0375.4, %bb.cr ], [ %.sroa.0375.1, %bb.h ] ; 2 uses
  %.pn987 = phi { ptr, i32 } [ %.pn985, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1187 ], [ %i.oq, %bb.cr ], [ %i.if, %bb.h ] ; 2 uses
  %i.ie = trunc nuw i8 %.sroa.0367.0 to i1
  br i1 %i.ie, label %.thread, label %.body1099

bb.h:                                             ; preds = %.invoke1720, %.invoke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1293, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1160, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1142, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1124, %bb.ap, %bb.aa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1093, %bb.f, %bb.pm, %bb.am, %bb.al, %bb.ac
  %.sroa.0367.1 = phi i8 [ %.sroa.0367.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1160 ], [ 1, %bb.pm ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1142 ], [ 1, %bb.aa ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1124 ], [ 1, %bb.ap ], [ 1, %bb.f ], [ 1, %bb.am ], [ 1, %bb.al ], [ 1, %.invoke1720 ], [ 1, %bb.ac ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1093 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1293 ], [ 1, %.invoke ]
  %.sroa.0369.1 = phi i8 [ %.sroa.0369.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1160 ], [ 1, %bb.pm ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1142 ], [ 1, %bb.aa ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1124 ], [ 1, %bb.ap ], [ 1, %bb.f ], [ 1, %bb.am ], [ 1, %bb.al ], [ 1, %.invoke1720 ], [ 1, %bb.ac ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1093 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1293 ], [ 1, %.invoke ]
  %.sroa.0371.1 = phi i8 [ %.sroa.0371.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1160 ], [ %.sroa.0371.5, %bb.pm ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1142 ], [ 1, %bb.aa ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1124 ], [ 1, %bb.ap ], [ 1, %bb.f ], [ 1, %bb.am ], [ 1, %bb.al ], [ 1, %.invoke1720 ], [ 1, %bb.ac ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1093 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1293 ], [ 1, %.invoke ]
  %.sroa.0373.1 = phi i8 [ %.sroa.0373.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1160 ], [ 1, %bb.pm ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1142 ], [ 1, %bb.aa ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1124 ], [ 1, %bb.ap ], [ 1, %bb.f ], [ 1, %bb.am ], [ 1, %bb.al ], [ 1, %.invoke1720 ], [ 1, %bb.ac ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1093 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1293 ], [ 1, %.invoke ]
  %.sroa.0375.1 = phi i8 [ %.sroa.0375.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1160 ], [ 1, %bb.pm ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1142 ], [ 1, %bb.aa ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1124 ], [ 1, %bb.ap ], [ 1, %bb.f ], [ 1, %bb.am ], [ 1, %bb.al ], [ 1, %.invoke1720 ], [ 1, %bb.ac ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1093 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1293 ], [ 1, %.invoke ]
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body1094

bb.i:                                             ; preds = %.noexc
  %i.ig = load ptr, ptr %i.ic, align 8, !noalias !31736, !nonnull !8, !noundef !8 ; 2 uses
  %i.ih = icmp ugt i64 %i.ib, 142
  tail call void @llvm.assume(i1 %i.ih)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !31736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(143) %i.ig, ptr noundef nonnull readonly align 1 dereferenceable(143) @667, i64 range(i64 0, -9223372036854775808) 143, i1 false), !noalias !31749
  store i64 %i.ib, ptr %i.hc, align 8
  %.sroa.41332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %i.ig, ptr %.sroa.41332.0..sroa_idx, align 8
  %.sroa.51333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store i64 143, ptr %.sroa.51333.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.j

.body1089:                                        ; preds = %bb.o, %bb.j, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ir, %bb.n ], [ %i.ii, %bb.j ], [ %i.is, %bb.o ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hc) #42
          to label %.thread unwind label %bb.w

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.l, %bb.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body1089

bb.k:                                             ; preds = %bb.i
  %i.ij = load i64, ptr %i.ah, align 8, !range !64, !noundef !8
  %i.ik = trunc nuw i64 %i.ij to i1
  %i.il = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.im = load i64, ptr %i.il, align 8, !range !65, !noundef !8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  br i1 %i.ik, label %bb.l, label %bb.m, !prof !3

bb.l:                                             ; preds = %bb.k
  %i.io = load i64, ptr %i.in, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.im, i64 %i.io) #41
          to label %bb.x unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.ip = load ptr, ptr %i.in, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 %i.im, ptr %i.hb, align 8
  %.sroa.4406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.ip, ptr %.sroa.4406.0..sroa_idx, align 8
  %.sroa.5407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i64 0, ptr %.sroa.5407.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  store ptr %i.hc, ptr %i.ha, align 8
  %.sroa.4411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4411.0..sroa_idx, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %i.hb, ptr %i.iq, align 8
  %.sroa.4415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4415.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hd, ptr noundef nonnull @52, ptr noundef nonnull %i.ha)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit1088 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb) #42
          to label %.body1089 unwind label %bb.w

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit1088: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.o

bb.o:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit1088
  %i.is = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %.body1089 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit1088
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1093 unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hc)
          to label %.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1093: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit1097 unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit1097: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i1093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc)
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.212.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i64 24, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.iw, align 8
  store i64 37, ptr %0, align 16
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit1302, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit1133, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit1097
end_hunk_14
begin_hunk_15_@_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprB1l_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6104, ptr noundef nonnull align 8 dereferenceable(24) %i.tw, i64 24, i1 false)
  br i1 %.not892.not, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %.sroa.6572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %.sroa.6572.0.copyload = load i64, ptr %.sroa.6572.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  %.sroa.2574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2574.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6104, i64 24, i1 false)
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.tv, ptr %i.tx, align 8
  %.sroa.3575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6572.0.copyload, ptr %.sroa.3575.0..sroa_idx, align 8
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6104)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  %i.ty = getelementptr inbounds nuw i8, ptr %i.en, i64 88
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ty)
          to label %bb.ju unwind label %.thread1517

.thread1517:                                      ; preds = %bb.fd
  %i.tz = landingpad { ptr, i32 }
          cleanup
  %i.ua = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ua) #42
          to label %bb.jw unwind label %bb.w

bb.fe:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6104, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6125)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.ub = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.ub, i64 24, i1 false)
  invoke fastcc void @_RNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr8order_byINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21order_by_to_sort_exprB1j_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.ei, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias noundef align 8 dereferenceable(80) %4, i1 noundef zeroext false, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null)
          to label %bb.fg unwind label %bb.ff

bb.ff:                                            ; preds = %bb.ji, %bb.jc, %bb.fn, %bb.fe
  %.sroa.0369.8 = phi i8 [ 1, %bb.fn ], [ 1, %bb.ji ], [ %.sroa.0369.20, %bb.jc ], [ 1, %bb.fe ]
  %.sroa.0375.8 = phi i8 [ 1, %bb.fn ], [ 1, %bb.ji ], [ 0, %bb.jc ], [ 1, %bb.fe ]
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.fg:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  %i.ud = load i64, ptr %i.ei, align 8, !range !43, !noundef !8 ; 2 uses
  %.not893 = icmp eq i64 %i.ud, 20
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6125, ptr noundef nonnull align 8 dereferenceable(24) %i.ue, i64 24, i1 false)
  br i1 %.not893, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.sroa.6581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %.sroa.6581.0.copyload = load i64, ptr %.sroa.6581.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  %.sroa.2583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2583.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6125, i64 24, i1 false)
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ud, ptr %i.uf, align 8
  %.sroa.3584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6581.0.copyload, ptr %.sroa.3584.0..sroa_idx, align 8
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6125)
  br label %.thread1516

bb.fi:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6125, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6125)
  %i.ug = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.uk = load i64, ptr %i.uj, align 8, !noundef !8
  %i.ul = getelementptr inbounds nuw [128 x i8], ptr %i.ui, i64 %i.uk
  store ptr %i.ui, ptr %i.eg, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ul, ptr %i.um, align 8
  %i.un = invoke fastcc noundef i8 @_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapbNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2A_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs3_0EB3O_(ptr noalias noundef align 8 dereferenceable(16) %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ug)
          to label %bb.fj unwind label %.thread1467 ; 2 uses

.thread1467:                                      ; preds = %bb.fi, %bb.fk
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %.thread1699

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.71793)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6137)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9146)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6151)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7153)
  %i.up = load i64, ptr %i.en, align 8, !range !3087, !noundef !8
  %.not894 = icmp eq i64 %i.up, 3
  br i1 %.not894, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke fastcc void @_RNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs4_0B1n_(ptr noalias noundef align 16 captures(address) dereferenceable(176) %i.y, ptr noalias noundef align 8 dereferenceable(24) %i.ej, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.en)
          to label %bb.fm unwind label %.thread1467

bb.fl:                                            ; preds = %bb.fj, %bb.fo
  %i.uq = phi i128 [ %.sroa.0149.0.copyload, %bb.fo ], [ 3, %bb.fj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6151)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7153)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6137, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.9146, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9146)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.71793, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6137, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %.not895 = icmp eq i128 %i.uq, 3
  br i1 %.not895, label %bb.fq, label %bb.fp

bb.fm:                                            ; preds = %bb.fk
  %.sroa.0149.0.copyload = load i128, ptr %i.y, align 16 ; 2 uses
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6151, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6151.0..sroa_idx, i64 40, i1 false)
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7153, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7153.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ur = icmp eq i128 %.sroa.0149.0.copyload, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6151, i64 40, i1 false)
  br i1 %i.ur, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6151)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7153)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6137, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9146)
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.us, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6137, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6137)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.71793)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ej)
          to label %.thread1516 unwind label %bb.ff

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.9146, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7153, i64 120, i1 false)
  br label %bb.fl

bb.fp:                                            ; preds = %bb.fl
  store i128 %i.uq, ptr %i.ef, align 16
  %.sroa.71793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.71793.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.71793, i64 40, i1 false)
  %.sroa.8.0..sroa_idx1794 = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8.0..sroa_idx1794, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8, i64 120, i1 false)
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fl
  switch i8 %i.un, label %bb.ft [
    i8 2, label %bb.fs
    i8 0, label %bb.fu
  ]

bb.fr:                                            ; preds = %bb.fv, %bb.fw, %bb.fu, %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  %i.ut = load ptr, ptr %i.kj, align 8, !nonnull !8, !noundef !8
  %i.uu = load i64, ptr %i.kl, align 8, !noundef !8
  invoke fastcc void @_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE16find_window_funcB1l_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.ee, ptr %i.lq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ut, i64 noundef %i.uu)
          to label %bb.fz unwind label %bb.fy

bb.fs:                                            ; preds = %bb.fq
  %i.uv = load i64, ptr %i.uj, align 8, !noundef !8 ; 2 uses
  %i.uw = icmp ult i64 %i.uv, 72057594037927936
  call void @llvm.assume(i1 %i.uw)
  %.not897 = icmp eq i64 %i.uv, 0
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ef, i64 161 ; 2 uses
  %.sroa.4615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %.sroa.4615.sroa.4.0..sroa.4615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ef, i64 80 ; 2 uses
  br i1 %.not897, label %bb.fv, label %bb.fw

bb.ft:                                            ; preds = %bb.fq
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fq, %bb.ft
  %.sroa.0597.0 = phi i8 [ 0, %bb.ft ], [ 1, %bb.fq ]
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ef, i64 161
  store i8 %.sroa.0597.0, ptr %i.uz, align 1
  store i128 0, ptr %i.ef, align 16
  %.sroa.4599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i128 18, ptr %.sroa.4599.0..sroa_idx, align 16
  %.sroa.4599.sroa.4.0..sroa.4599.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  store i64 0, ptr %.sroa.4599.sroa.4.0..sroa.4599.0..sroa_idx.sroa_idx, align 16
  %i.va = getelementptr inbounds nuw i8, ptr %i.ef, i64 80
  store i128 1, ptr %i.va, align 16
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ef, i64 160
  %5 = and i8 %i.un, 1
  store i8 %5, ptr %i.vb, align 16
  br label %bb.fr

bb.fv:                                            ; preds = %bb.fs
  store i8 0, ptr %i.ux, align 1
  store i128 0, ptr %i.ef, align 16
  store i128 18, ptr %.sroa.4615.0..sroa_idx, align 16
  store i64 0, ptr %.sroa.4615.sroa.4.0..sroa.4615.0..sroa_idx.sroa_idx, align 16
  store i128 2, ptr %i.uy, align 16
  %.sroa.4624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 96
  store i128 18, ptr %.sroa.4624.0..sroa_idx, align 16
  %.sroa.5625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 112
  store i64 0, ptr %.sroa.5625.0..sroa_idx, align 16
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ef, i64 160
  store i8 0, ptr %i.vc, align 16
  br label %bb.fr

bb.fw:                                            ; preds = %bb.fs
  store i8 1, ptr %i.ux, align 1
  store i128 0, ptr %i.ef, align 16
  store i128 18, ptr %.sroa.4615.0..sroa_idx, align 16
  store i64 0, ptr %.sroa.4615.sroa.4.0..sroa.4615.0..sroa_idx.sroa_idx, align 16
  store i128 1, ptr %i.uy, align 16
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ef, i64 160
  store i8 0, ptr %i.vd, align 16
  br label %bb.fr

bb.fx:                                            ; preds = %bb.jf, %bb.iv, %bb.fy
  %.sroa.0356.3 = phi i8 [ %.sroa.0356.4, %bb.fy ], [ %.sroa.0356.18, %bb.iv ], [ %.sroa.0356.18, %bb.jf ]
  %.sroa.0369.10 = phi i8 [ %.sroa.0369.11, %bb.fy ], [ %.sroa.0369.22, %bb.iv ], [ %.sroa.0369.22, %bb.jf ] ; 2 uses
  %.sroa.0375.10 = phi i8 [ %.sroa.0375.11, %bb.fy ], [ 0, %bb.iv ], [ 0, %bb.jf ] ; 2 uses
  %.pn921 = phi { ptr, i32 } [ %i.vf, %bb.fy ], [ %.pn918, %bb.iv ], [ %.pn918, %bb.jf ] ; 2 uses
  %i.ve = trunc nuw i8 %.sroa.0356.3 to i1
  br i1 %i.ve, label %bb.jq, label %bb.fa

bb.fy:                                            ; preds = %bb.fr, %bb.jg, %bb.ix
  %.sroa.0356.4 = phi i8 [ 1, %bb.jg ], [ %.sroa.0356.16, %bb.ix ], [ 1, %bb.fr ]
  %.sroa.0369.11 = phi i8 [ 1, %bb.jg ], [ %.sroa.0369.20, %bb.ix ], [ 1, %bb.fr ]
  %.sroa.0375.11 = phi i8 [ 1, %bb.jg ], [ 0, %bb.ix ], [ 1, %bb.fr ]
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fz:                                            ; preds = %bb.fr
  %i.vg = load i64, ptr %i.ee, align 8, !range !43, !noundef !8
  %.not898 = icmp eq i64 %i.vg, 20
  br i1 %.not898, label %bb.ga, label %bb.jg

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.vi = load i64, ptr %i.vh, align 8, !range !64, !noundef !8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !noundef !8
  store i64 %i.vi, ptr %i.ed, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  store ptr %i.vk, ptr %i.vl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i64 24, i1 false)
  invoke fastcc void @_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE32function_args_to_expr_with_namesB1l_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.dz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias noundef align 8 dereferenceable(80) %4)
          to label %bb.gc unwind label %.thread1475

bb.gb:                                            ; preds = %bb.iu, %bb.ig
  %i.vm = trunc nuw i8 %.sroa.0356.12 to i1
  br i1 %i.vm, label %bb.je, label %bb.iv

.thread1475:                                      ; preds = %bb.ga, %bb.ir
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.gc:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.vo = load i64, ptr %i.ea, align 8, !range !65, !noundef !8 ; 2 uses
  %i.vp = icmp eq i64 %i.vo, -9223372036854775808
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6162, ptr noundef nonnull align 8 dereferenceable(40) %i.vq, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br i1 %i.vp, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.vr, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6162, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6162)
  br label %bb.it

bb.ge:                                            ; preds = %bb.gc
  %.sroa.2853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2853.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6162, i64 16, i1 false)
  %.sroa.6162.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6162, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6162.24..sroa_idx, i64 24, i1 false)
  store i64 %i.vo, ptr %i.ec, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.vv = load i64, ptr %i.vu, align 8, !noundef !8 ; 2 uses
  %.idx1775 = shl nuw nsw i64 %i.vv, 5
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 %.idx1775
  %.not3.not.not.i1196.not1752 = icmp eq i64 %i.vv, 0
  br i1 %.not3.not.not.i1196.not1752, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB35_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs5_0EB4j_.exit, label %.lr.ph1754

bb.gf:                                            ; preds = %.lr.ph1754
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vy, i64 32 ; 2 uses
  %.not3.not.not.i1196.not = icmp eq ptr %i.vx, %i.vw
  br i1 %.not3.not.not.i1196.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB35_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs5_0EB4j_.exit, label %.lr.ph1754

.lr.ph1754:                                       ; preds = %bb.ge, %bb.gf
  %i.vy = phi ptr [ %i.vx, %bb.gf ], [ %i.vt, %bb.ge ] ; 2 uses
  %.val.i1197 = load i64, ptr %i.vy, align 8, !range !65, !noalias !31828, !noundef !8
  %.not.i1198 = icmp eq i64 %.val.i1197, -9223372036854775808
  br i1 %.not.i1198, label %bb.gf, label %bb.gh

.critedge1007.thread:                             ; preds = %bb.gz, %bb.hj, %.thread1494, %.body1014, %bb.ho, %.critedge1007, %bb.gg
  %.sroa.0346.0 = phi i8 [ %.sroa.0346.1, %bb.gg ], [ %.sroa.0346.2, %.critedge1007 ], [ %.sroa.0346.2, %bb.ho ], [ %.sroa.0346.2, %.body1014 ], [ %.sroa.0346.2, %.thread1494 ], [ %.sroa.0346.2, %bb.hj ], [ %.sroa.0346.2, %bb.gz ]
  %.sroa.0348.0 = phi i8 [ %.sroa.0348.1, %bb.gg ], [ 0, %.critedge1007 ], [ 0, %bb.ho ], [ 0, %.body1014 ], [ 0, %.thread1494 ], [ 0, %bb.hj ], [ 0, %bb.gz ] ; 2 uses
  %.sroa.0356.7 = phi i8 [ 1, %bb.gg ], [ 1, %.critedge1007 ], [ 0, %bb.ho ], [ 0, %.body1014 ], [ 0, %.thread1494 ], [ 0, %bb.hj ], [ 0, %bb.gz ] ; 2 uses
  %.sroa.0369.14 = phi i8 [ %.sroa.0369.15, %bb.gg ], [ 0, %.critedge1007 ], [ 0, %bb.ho ], [ 0, %.body1014 ], [ 0, %.thread1494 ], [ 0, %bb.hj ], [ 0, %bb.gz ] ; 2 uses
  %.pn912 = phi { ptr, i32 } [ %i.wa, %bb.gg ], [ %eh.lpad-body1020, %.critedge1007 ], [ %i.yz, %bb.ho ], [ %lpad.thr_comm.split-lp1501, %.body1014 ], [ %.pn9081497, %.thread1494 ], [ %.pn906, %bb.hj ], [ %i.wy, %bb.gz ] ; 2 uses
  %i.vz = trunc nuw i8 %.sroa.0346.0 to i1
  br i1 %i.vz, label %.thread1482, label %bb.ig

bb.gg:                                            ; preds = %bb.gn, %bb.ip, %bb.gv, %bb.gm, %bb.gk, %bb.gj
  %.sroa.0346.1 = phi i8 [ %.sroa.0346.2, %bb.gv ], [ 0, %bb.gm ], [ 1, %bb.ip ], [ 1, %bb.gn ], [ 1, %bb.gj ], [ 1, %bb.gk ]
  %.sroa.0348.1 = phi i8 [ 0, %bb.gv ], [ 0, %bb.gm ], [ 1, %bb.ip ], [ 1, %bb.gn ], [ 1, %bb.gj ], [ 1, %bb.gk ]
  %.sroa.0369.15 = phi i8 [ 0, %bb.gv ], [ 1, %bb.gm ], [ 1, %bb.ip ], [ 1, %bb.gn ], [ 1, %bb.gj ], [ 1, %bb.gk ]
  %i.wa = landingpad { ptr, i32 }
          cleanup
  br label %.critedge1007.thread

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB35_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs5_0EB4j_.exit: ; preds = %bb.gf, %bb.ge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  br label %bb.gi

bb.gh:                                            ; preds = %.lr.ph1754
  %i.wb = load i64, ptr %i.ed, align 8, !range !64, !noundef !8
  %i.wc = trunc nuw i64 %i.wb to i1
  %i.wd = load ptr, ptr %i.vl, align 8, !nonnull !8, !noundef !8
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16 ; 2 uses
  br i1 %i.wc, label %bb.gj, label %bb.gk

bb.gi:                                            ; preds = %bb.gq, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB35_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs5_0EB4j_.exit
  %.sroa.0346.2 = phi i8 [ 0, %bb.gq ], [ 1, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB35_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs5_0EB4j_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8183)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9194)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7204)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8206)
  store ptr %1, ptr %i.do, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %3, ptr %i.wf, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store ptr %4, ptr %i.wg, align 8
  %.not903 = icmp eq ptr %.sroa.7398.0.copyload, null
  br i1 %.not903, label %bb.gs, label %bb.gr

bb.gj:                                            ; preds = %bb.gh
  %i.wh = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB5_9WindowUDF9signature(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.we)
          to label %bb.gl unwind label %bb.gg

bb.gk:                                            ; preds = %bb.gh
  %i.wi = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCs8VI8w5SIoU4_15datafusion_expr4udafNtB5_12AggregateUDF9signature(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.we)
          to label %bb.gl unwind label %bb.gg

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  %.sroa.0164.0 = phi ptr [ %i.wi, %bb.gk ], [ %i.wh, %bb.gj ] ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.0164.0, i64 40
  %i.wk = load i64, ptr %i.wj, align 8, !range !65, !noundef !8
  %.not899 = icmp eq i64 %i.wk, -9223372036854775808
  br i1 %.not899, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0164.0, i64 48
  %i.wm = load ptr, ptr %i.wl, align 8, !nonnull !8, !noundef !8
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.0164.0, i64 56
  %i.wo = load i64, ptr %i.wn, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false)
  invoke void @_RNvNtCs8VI8w5SIoU4_15datafusion_expr9arguments26resolve_function_arguments(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.dx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.wm, i64 noundef %i.wo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.dw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.dv)
          to label %bb.go unwind label %bb.gg

bb.gn:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  store ptr %i.gu, ptr %i.dr, align 8
  %.sroa.4642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4642.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ds, ptr noundef nonnull @676, ptr noundef nonnull %i.dr)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit1200 unwind label %bb.gg

bb.go:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.wp = load i64, ptr %i.dx, align 8, !range !43, !noundef !8 ; 2 uses
  %.not902 = icmp eq i64 %i.wp, 20
  %i.wq = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6167, ptr noundef nonnull align 8 dereferenceable(24) %i.wq, i64 24, i1 false)
  br i1 %.not902, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %.sroa.6635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %.sroa.6635.0.copyload = load i64, ptr %.sroa.6635.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  %.sroa.2637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2637.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6167, i64 24, i1 false)
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.wp, ptr %i.wr, align 8
  %.sroa.3638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6635.0.copyload, ptr %.sroa.3638.0..sroa_idx, align 8
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6167)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %.thread1512

bb.gq:                                            ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6167, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6167)
  br label %bb.gi

bb.gr:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke fastcc void @_RNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs6_0B1n_(ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.w, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.do, ptr noalias noundef nonnull align 8 %.sroa.7398.0.copyload)
          to label %bb.gu unwind label %bb.gt

bb.gs:                                            ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7204)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8206)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9194)
  br label %bb.ha

bb.gt:                                            ; preds = %bb.gr
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %.critedge1007

bb.gu:                                            ; preds = %bb.gr
  %.sroa.0202.0.copyload = load i64, ptr %i.w, align 16 ; 2 uses
  %.sroa.7204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7204, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7204.0..sroa_idx, i64 40, i1 false)
  %.sroa.8206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8206, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8206.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.wt = icmp eq i64 %.sroa.0202.0.copyload, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9194, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7204, i64 40, i1 false)
  br i1 %i.wt, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7204)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8206)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8183, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9194, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9194)
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.wu, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8183, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8183)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %bb.id unwind label %bb.gg

bb.gw:                                            ; preds = %bb.gu
  %.sroa.5212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5212.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8206, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7204)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8206)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8183, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9194, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9194)
  %.sroa.3211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3211.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8183, i64 40, i1 false)
  store i64 %.sroa.0202.0.copyload, ptr %i.v, align 16
  %i.wv = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit1021 unwind label %bb.gx, !noalias !31831 ; 2 uses

bb.gx:                                            ; preds = %bb.gw
  %i.ww = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.v) #42
          to label %.critedge1007 unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.wx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit1021: ; preds = %bb.gw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.wv, ptr noundef nonnull align 16 dereferenceable(112) %i.v, i64 112, i1 false)
  br label %bb.ha

bb.gz:                                            ; preds = %bb.hb
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %.critedge1007.thread

bb.ha:                                            ; preds = %bb.gs, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit1021
  %.sroa.0178.0 = phi ptr [ null, %bb.gs ], [ %i.wv, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit1021 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8183)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61631)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.wz = load i64, ptr %i.ed, align 8, !range !64, !noundef !8 ; 2 uses
  %i.xa = load ptr, ptr %i.vl, align 8, !noundef !8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false)
  %.sroa.01635.0.copyload = load i128, ptr %i.ef, align 16 ; 2 uses
  %.sroa.41636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.61631, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.41636.0..sroa_idx, i64 160, i1 false)
  %6 = and i8 %.sroa.8399.0.copyload, 1           ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.lq, i64 1688
  %i.xc = load ptr, ptr %i.xb, align 8, !alias.scope !31834, !nonnull !8, !noundef !8 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.lq, i64 1696
  %i.xe = load i64, ptr %i.xd, align 8, !alias.scope !31834, !noundef !8 ; 2 uses
  %.idx1623 = shl nuw nsw i64 %i.xe, 4
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 %.idx1623
  %i.xg = icmp eq i64 %i.xe, 0
  br i1 %i.xg, label %._crit_edge1618, label %.lr.ph1617

.lr.ph1617:                                       ; preds = %bb.ha
  %.sroa.5671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.sroa.6672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %.sroa.61631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.71634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 184
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 192
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 216
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 240
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 264
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 272
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 273
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 274
  %.sroa.3223.sroa.0.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3223.sroa.0, i64 40
  %.sroa.6672.sroa.5.0..sroa.6672.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 176
  %.sroa.6672.sroa.6.0..sroa.6672.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 184
  %.sroa.6672.sroa.7.0..sroa.6672.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 192
  %.sroa.6672.sroa.8.0..sroa.6672.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 216
  %.sroa.6672.sroa.9.0..sroa.6672.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 240
  %.sroa.6672.sroa.10.0..sroa.6672.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 264
  %.sroa.6672.sroa.11.0..sroa.6672.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 272
  %.sroa.6672.sroa.12.0..sroa.6672.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 273
  %.sroa.6672.sroa.13.0..sroa.6672.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 274
  br label %bb.hb

bb.hb:                                            ; preds = %.lr.ph1617, %bb.hf
  %.sroa.21.0 = phi i8 [ %.sroa.10401.0.copyload, %.lr.ph1617 ], [ %.sroa.6672.sroa.12.0.copyload, %bb.hf ]
  %.sroa.19.0 = phi i8 [ %6, %.lr.ph1617 ], [ %.sroa.6672.sroa.11.0.copyload, %bb.hf ]
  %.sroa.17.0 = phi ptr [ %.sroa.0178.0, %.lr.ph1617 ], [ %.sroa.6672.sroa.10.0.copyload, %bb.hf ]
  %.sroa.9.0 = phi ptr [ %i.xa, %.lr.ph1617 ], [ %.sroa.6672.sroa.6.0.copyload, %bb.hf ]
  %.sroa.71634.0 = phi i64 [ %i.wz, %.lr.ph1617 ], [ %.sroa.6672.sroa.5.0.copyload, %bb.hf ]
  %.sroa.0.0 = phi i128 [ %.sroa.01635.0.copyload, %.lr.ph1617 ], [ %i.xy, %bb.hf ]
  %.sroa.0213.01615 = phi ptr [ %i.xc, %.lr.ph1617 ], [ %i.xh, %bb.hf ] ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.0213.01615, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  %i.xi = load ptr, ptr %.sroa.0213.01615, align 8, !nonnull !8, !noundef !8
  %i.xj = getelementptr inbounds nuw i8, ptr %.sroa.0213.01615, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8, !nonnull !8, !align !216, !noundef !8 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %i.xm = load i64, ptr %i.xl, align 8, !range !2991, !invariant.load !8
  %i.xn = add nsw i64 %i.xm, -1
  %i.xo = and i64 %i.xn, -16
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  store i128 %.sroa.0.0, ptr %i.dm, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.61631.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.61631, i64 160, i1 false)
  store i64 %.sroa.71634.0, ptr %.sroa.71634.0..sroa_idx, align 16
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.15, i64 24, i1 false)
  store ptr %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 16
  store i8 %.sroa.21.0, ptr %.sroa.21.0..sroa_idx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.23.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.23, i64 14, i1 false)
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xk, i64 136
  %i.xs = load ptr, ptr %i.xr, align 8, !invariant.load !8, !nonnull !8
  invoke void %i.xs(ptr noalias noundef nonnull sret([288 x i8]) align 16 captures(address) dereferenceable(288) %i.dn, ptr noundef nonnull %i.xq, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(288) %i.dm)
          to label %bb.hc unwind label %bb.gz

._crit_edge1618:                                  ; preds = %bb.hf, %bb.ha
  %.sroa.21.1 = phi i8 [ %.sroa.10401.0.copyload, %bb.ha ], [ %.sroa.6672.sroa.12.0.copyload, %bb.hf ]
  %.sroa.19.1 = phi i8 [ %6, %bb.ha ], [ %.sroa.6672.sroa.11.0.copyload, %bb.hf ]
  %.sroa.17.1 = phi ptr [ %.sroa.0178.0, %bb.ha ], [ %.sroa.6672.sroa.10.0.copyload, %bb.hf ]
  %.sroa.9.1 = phi ptr [ %i.xa, %bb.ha ], [ %.sroa.6672.sroa.6.0.copyload, %bb.hf ]
  %.sroa.71634.1 = phi i64 [ %i.wz, %bb.ha ], [ %.sroa.6672.sroa.5.0.copyload, %bb.hf ]
  %.sroa.0.1 = phi i128 [ %.sroa.01635.0.copyload, %bb.ha ], [ %i.xy, %bb.hf ]
  %.sroa.0226.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0226.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  %.sroa.0226.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0226.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, i64 24, i1 false)
  %.sroa.0226.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0226.sroa.7.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.15, i64 24, i1 false)
  %.sroa.0226.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.0226.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.61631, i64 160, i1 false)
  %i.xt = getelementptr inbounds nuw i8, ptr %i.dl, i64 272 ; 2 uses
  store i64 %.sroa.71634.1, ptr %i.xt, align 16
  %i.xu = getelementptr inbounds nuw i8, ptr %i.dl, i64 280
  store ptr %.sroa.9.1, ptr %i.xu, align 8
  store i128 %.sroa.0.1, ptr %i.dl, align 16
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 248
  store ptr %.sroa.17.1, ptr %.sroa.7227.0..sroa_idx, align 8
  %.sroa.8228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 256
  store i8 %.sroa.19.1, ptr %.sroa.8228.0..sroa_idx, align 16
  %.sroa.9229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 257
  store i8 %.sroa.21.1, ptr %.sroa.9229.0..sroa_idx, align 1
  %i.xv = load ptr, ptr %i.kj, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.xw = load i64, ptr %i.kl, align 8, !noundef !8 ; 7 uses
  %i.xx = invoke { ptr, i64 } @_RNvMso_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_24WindowFunctionDefinition4name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.xt)
          to label %bb.hk unwind label %.body1014.thread1502 ; 2 uses

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  %i.xy = load i128, ptr %i.dn, align 16, !range !31837, !noundef !8 ; 4 uses
  %i.xz = icmp eq i128 %i.xy, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6218, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.5671.0..sroa_idx, i64 40, i1 false)
  br i1 %i.xz, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ya, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6218, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  br label %bb.hh

bb.he:                                            ; preds = %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.3223.sroa.0.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6672.0..sroa_idx, i64 120, i1 false)
  %.sroa.6672.sroa.5.0.copyload = load i64, ptr %.sroa.6672.sroa.5.0..sroa.6672.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  %.sroa.6672.sroa.6.0.copyload = load ptr, ptr %.sroa.6672.sroa.6.0..sroa.6672.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.3223.sroa.6, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6672.sroa.7.0..sroa.6672.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3223.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6672.sroa.8.0..sroa.6672.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.3223.sroa.8, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6672.sroa.9.0..sroa.6672.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.6672.sroa.10.0.copyload = load ptr, ptr %.sroa.6672.sroa.10.0..sroa.6672.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6672.sroa.11.0.copyload = load i8, ptr %.sroa.6672.sroa.11.0..sroa.6672.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  %.sroa.6672.sroa.12.0.copyload = load i8, ptr %.sroa.6672.sroa.12.0..sroa.6672.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.3223.sroa.12, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6672.sroa.13.0..sroa.6672.0..sroa_idx.sroa_idx, i64 14, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.3223.sroa.0, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6218, i64 40, i1 false)
  %.not904 = icmp eq i128 %i.xy, 3
  br i1 %.not904, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.61631, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.3223.sroa.0, i64 160, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.3223.sroa.6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3223.sroa.7, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.3223.sroa.8, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.23, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.3223.sroa.12, i64 14, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6218)
  %i.yb = icmp eq ptr %i.xh, %i.xf
  br i1 %i.yb, label %._crit_edge1618, label %bb.hb

bb.hg:                                            ; preds = %bb.he
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.3223.sroa.0, i64 112, i1 false)
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6218)
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hr, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61631)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  br label %bb.id

bb.hj:                                            ; preds = %bb.hv
  br i1 %.sroa.0385.2, label %.thread1494, label %.critedge1007.thread

.body1014.thread1502:                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread1506, %._crit_edge1618
  %lpad.thr_comm1500 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1494

.body1014:                                        ; preds = %bb.ib
  %lpad.thr_comm.split-lp1501 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge1007.thread

bb.hk:                                            ; preds = %._crit_edge1618
  %i.yc = extractvalue { ptr, i64 } %i.xx, 0      ; 2 uses
  %i.yd = extractvalue { ptr, i64 } %i.xx, 1
  %.not905 = icmp eq i64 %i.xw, %i.yd
  br i1 %.not905, label %bb.hl, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread1506

bb.hl:                                            ; preds = %bb.hk
  %i.ye = icmp ugt i64 %i.xw, 15
  br i1 %i.ye, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.experimental.noalias.scope.decl(metadata !31838)
  call void @llvm.experimental.noalias.scope.decl(metadata !31841)
  %.not15.i12061756 = icmp eq i64 %i.xw, 0
  br i1 %.not15.i12061756, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread, label %.lr.ph1762

bb.hn:                                            ; preds = %.lr.ph1762
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i12041760, i64 1
  %i.yg = add nsw i64 %.sroa.5.0.i12031759, -1    ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i12021758, i64 1
  %i.yi = add nsw i64 %.sroa.58.0.i12011757, -1   ; 2 uses
  %.not.i1205 = icmp eq i64 %i.yg, 0
  %.not15.i1206 = icmp eq i64 %i.yi, 0
  %or.cond.i1207 = select i1 %.not.i1205, i1 true, i1 %.not15.i1206
  br i1 %or.cond.i1207, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread, label %.lr.ph1762

.lr.ph1762:                                       ; preds = %bb.hm, %bb.hn
  %.sroa.0.0.i12041760 = phi ptr [ %i.yf, %bb.hn ], [ %i.xv, %bb.hm ] ; 2 uses
  %.sroa.5.0.i12031759 = phi i64 [ %i.yg, %bb.hn ], [ %i.xw, %bb.hm ]
  %.sroa.05.0.i12021758 = phi ptr [ %i.yh, %bb.hn ], [ %i.yc, %bb.hm ] ; 2 uses
  %.sroa.58.0.i12011757 = phi i64 [ %i.yi, %bb.hn ], [ %i.xw, %bb.hm ]
  %i.yj = load i8, ptr %.sroa.0.0.i12041760, align 1, !alias.scope !31838, !noalias !31841, !noundef !8 ; 2 uses
  %i.yk = add i8 %i.yj, -65
  %i.yl = icmp ult i8 %i.yk, 26
  %i.ym = select i1 %i.yl, i8 32, i8 0
  %.sroa.012.0.i1208 = or i8 %i.ym, %i.yj
  %i.yn = load i8, ptr %.sroa.05.0.i12021758, align 1, !alias.scope !31841, !noalias !31838, !noundef !8 ; 2 uses
  %i.yo = add i8 %i.yn, -65
  %i.yp = icmp ult i8 %i.yo, 26
  %i.yq = select i1 %i.yp, i8 32, i8 0
  %.sroa.013.0.i1209 = or i8 %i.yq, %i.yn
  %i.yr = icmp eq i8 %.sroa.012.0.i1208, %.sroa.013.0.i1209
  br i1 %i.yr, label %bb.hn, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread1506

_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210: ; preds = %bb.hl
  %i.ys = call fastcc noundef zeroext i1 @_RINvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_chunksKj10_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.xv, i64 noundef %i.xw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.yc, i64 noundef %i.xw)
  br i1 %i.ys, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread1506

_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread1506: ; preds = %.lr.ph1762, %bb.hk, %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  %i.yt = getelementptr inbounds nuw i8, ptr %i.dl, i64 184
  %i.yu = load ptr, ptr %i.yt, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.dl, i64 192
  %i.yw = load i64, ptr %i.yv, align 16, !noundef !8
  %i.yx = getelementptr inbounds nuw [112 x i8], ptr %i.yu, i64 %i.yw
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3N_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs7_0EE9from_iterB51_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.di, ptr noundef nonnull %i.yu, ptr noundef nonnull %i.yx)
          to label %bb.hs unwind label %.body1014.thread1502

_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread: ; preds = %bb.hn, %bb.hm, %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.dk, ptr noundef nonnull align 16 dereferenceable(288) %i.dl, i64 288, i1 false)
  %i.yy = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 288)
          to label %bb.hq unwind label %bb.ho, !noalias !31843 ; 2 uses

bb.ho:                                            ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread
  %i.yz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14WindowFunctionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(288) %i.dk) #42
          to label %.critedge1007.thread unwind label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.za = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.hq:                                            ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.yy, ptr noundef nonnull align 16 dereferenceable(288) %i.dk, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  store i64 27, ptr %0, align 16
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.yy, ptr %.sroa.4233.0..sroa_idx, align 8
  br label %bb.hr

bb.hr:                                            ; preds = %bb.ic, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.hi

bb.hs:                                            ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1210.thread1506
  %i.zb = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.zc = load ptr, ptr %i.zb, align 8, !nonnull !8, !noundef !8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.ze = load i64, ptr %i.zd, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RINvNtCs6Po7BT7Nknu_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.zc, i64 noundef %i.ze, ptr noalias noundef nonnull readonly captures(address, read_provenance) @673, i64 noundef 1)
          to label %bb.hu unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.zf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.di) #42
end_hunk_15
begin_hunk_16_@_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprB1l_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.ku

bb.ma:                                            ; preds = %bb.lz
  %.sroa.6721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6721.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %.sroa.2857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2857.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6249, i64 16, i1 false)
  %.sroa.6249.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6249, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6249.24..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6249)
  store i64 %i.adf, ptr %i.cj, align 8
  br label %bb.li

bb.mb:                                            ; preds = %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_RNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs8_0B1n_(ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cb, ptr noalias noundef nonnull align 8 %.sroa.7398.0.copyload)
          to label %bb.mg unwind label %bb.mf

bb.mc:                                            ; preds = %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7288)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8290)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9278)
  br label %bb.md

bb.md:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit, %bb.mc
  %storemerge = phi ptr [ null, %bb.mc ], [ %i.adt, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  store ptr %storemerge, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8266)
  %i.adj = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.adm = load i64, ptr %i.adl, align 8, !noundef !8 ; 2 uses
  %.idx1776 = shl nuw nsw i64 %i.adm, 5
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 %.idx1776
  %.not3.not.not.i1232.not1763 = icmp eq i64 %i.adm, 0
  br i1 %.not3.not.not.i1232.not1763, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB35_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs9_0EB4j_.exit, label %.lr.ph1765

bb.me:                                            ; preds = %.lr.ph1765
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adp, i64 32 ; 2 uses
  %.not3.not.not.i1232.not = icmp eq ptr %i.ado, %i.adn
  br i1 %.not3.not.not.i1232.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB35_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs9_0EB4j_.exit, label %.lr.ph1765

.lr.ph1765:                                       ; preds = %bb.md, %bb.me
  %i.adp = phi ptr [ %i.ado, %bb.me ], [ %i.adk, %bb.md ] ; 2 uses
  %.val.i1233 = load i64, ptr %i.adp, align 8, !range !65, !noalias !31871, !noundef !8
  %.not.i1234 = icmp eq i64 %.val.i1233, -9223372036854775808
  br i1 %.not.i1234, label %bb.me, label %bb.mm

bb.mf:                                            ; preds = %bb.nr, %bb.mb
  %.sroa.0338.4 = phi i8 [ %.sroa.0338.10, %bb.nr ], [ 1, %bb.mb ]
  %i.adq = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

bb.mg:                                            ; preds = %bb.mb
  %.sroa.0286.0.copyload = load i64, ptr %i.r, align 16 ; 2 uses
  %.sroa.7288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7288, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7288.0..sroa_idx, i64 40, i1 false)
  %.sroa.8290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8290, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8290.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.adr = icmp eq i64 %.sroa.0286.0.copyload, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9278, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7288, i64 40, i1 false)
  br i1 %i.adr, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7288)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8290)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8266, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9278, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9278)
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ads, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8266, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8266)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cj)
          to label %bb.oe unwind label %bb.kz

bb.mi:                                            ; preds = %bb.mg
  %.sroa.5296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5296.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8290, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7288)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8290)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8266, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9278, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9278)
  %.sroa.3295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3295.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8266, i64 40, i1 false)
  store i64 %.sroa.0286.0.copyload, ptr %i.q, align 16
  %i.adt = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 112)
          to label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.mj, !noalias !31874 ; 2 uses

bb.mj:                                            ; preds = %bb.mi
  %i.adu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.q) #42
          to label %bb.og unwind label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.adv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.mi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.adt, ptr noundef nonnull align 16 dereferenceable(112) %i.q, i64 112, i1 false)
  br label %bb.md

bb.ml:                                            ; preds = %bb.ns, %bb.nz, %bb.mp, %bb.mo, %bb.mm
  %.sroa.0338.6 = phi i8 [ 0, %bb.mo ], [ 1, %bb.nz ], [ 1, %bb.ns ], [ 1, %bb.mp ], [ 1, %bb.mm ]
  %i.adw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge1011

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB35_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs9_0EB4j_.exit: ; preds = %bb.me, %bb.md
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false)
  br label %bb.mu

bb.mm:                                            ; preds = %.lr.ph1765
  %i.adx = load ptr, ptr %i.da, align 8, !nonnull !8, !noundef !8
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %i.adz = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCs8VI8w5SIoU4_15datafusion_expr4udafNtB5_12AggregateUDF9signature(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ady)
          to label %bb.mn unwind label %bb.ml     ; 3 uses

bb.mn:                                            ; preds = %bb.mm
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 40
  %i.aeb = load i64, ptr %i.aea, align 8, !range !65, !noundef !8
  %.not951 = icmp eq i64 %i.aeb, -9223372036854775808
  br i1 %.not951, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adz, i64 48
  %i.aed = load ptr, ptr %i.aec, align 8, !nonnull !8, !noundef !8
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adz, i64 56
  %i.aef = load i64, ptr %i.aee, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  invoke void @_RNvNtCs8VI8w5SIoU4_15datafusion_expr9arguments26resolve_function_arguments(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aed, i64 noundef %i.aef, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.by)
          to label %bb.mq unwind label %bb.ml

bb.mp:                                            ; preds = %bb.mn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.aeg = load ptr, ptr %i.da, align 8, !nonnull !8, !noundef !8
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %i.aei = invoke { ptr, i64 } @_RNvMs2_NtCs8VI8w5SIoU4_15datafusion_expr4udafNtB5_12AggregateUDF4name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aeh)
          to label %bb.ns unwind label %bb.ml     ; 2 uses

bb.mq:                                            ; preds = %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %i.aej = load i64, ptr %i.ca, align 8, !range !43, !noundef !8 ; 2 uses
  %.not954 = icmp eq i64 %i.aej, 20
  %i.aek = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6299, ptr noundef nonnull align 8 dereferenceable(24) %i.aek, i64 24, i1 false)
  br i1 %.not954, label %bb.ms, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %.sroa.6749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %.sroa.6749.0.copyload = load i64, ptr %.sroa.6749.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %.sroa.2751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2751.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6299, i64 24, i1 false)
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aej, ptr %i.ael, align 8
  %.sroa.3752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6749.0.copyload, ptr %.sroa.3752.0..sroa_idx, align 8
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6299)
  br label %bb.nr

bb.ms:                                            ; preds = %bb.mq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6299, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6299)
  br label %bb.mu

bb.mt:                                            ; preds = %bb.mv
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %.critedge1011.thread

bb.mu:                                            ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB35_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs9_0EB4j_.exit, %bb.ms
  %.sroa.0338.7 = phi i8 [ 0, %bb.ms ], [ 1, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB35_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs9_0EB4j_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01639.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.aen = load ptr, ptr %i.da, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.01639.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01639.sroa.0, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01639.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false)
  %.sroa.41664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.41664.0.copyload = load i64, ptr %.sroa.41664.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01639.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  %7 = and i8 %.sroa.8399.0.copyload, 1           ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.lq, i64 1688
  %i.aep = load ptr, ptr %i.aeo, align 8, !alias.scope !31877, !nonnull !8, !noundef !8 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.lq, i64 1696
  %i.aer = load i64, ptr %i.aeq, align 8, !alias.scope !31877, !noundef !8 ; 2 uses
  %.idx1624 = shl nuw nsw i64 %i.aer, 4
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 %.idx1624
  %i.aet = icmp eq i64 %i.aer, 0
  br i1 %i.aet, label %._crit_edge1622, label %.lr.ph1621

.lr.ph1621:                                       ; preds = %bb.mu
  %.sroa.5778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.6779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %.sroa.01639.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %.sroa.101643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %.sroa.141648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 65
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 66
  %.sroa.6779.sroa.5.0..sroa.6779.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %.sroa.6779.sroa.6.0..sroa.6779.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %.sroa.6779.sroa.7.0..sroa.6779.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %.sroa.6779.sroa.8.0..sroa.6779.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 73
  %.sroa.6779.sroa.9.0..sroa.6779.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 74
  %.sroa.6779.sroa.10.0..sroa.6779.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  br label %bb.mv

bb.mv:                                            ; preds = %.lr.ph1621, %bb.mz
  %.sroa.8.0 = phi ptr [ %i.aen, %.lr.ph1621 ], [ %.sroa.6779.sroa.5.0.copyload, %bb.mz ]
  %.sroa.101643.0 = phi ptr [ %storemerge, %.lr.ph1621 ], [ %.sroa.6779.sroa.6.0.copyload, %bb.mz ]
  %.sroa.12.0 = phi i8 [ %7, %.lr.ph1621 ], [ %.sroa.6779.sroa.7.0.copyload, %bb.mz ]
  %.sroa.141648.0 = phi i8 [ %.sroa.10401.0.copyload, %.lr.ph1621 ], [ %.sroa.6779.sroa.8.0.copyload, %bb.mz ]
  %.sroa.01639.sroa.8.0 = phi i64 [ %.sroa.41664.0.copyload, %.lr.ph1621 ], [ %.sroa.6779.sroa.0.0.copyload, %bb.mz ]
  %.sroa.0310.01619 = phi ptr [ %i.aep, %.lr.ph1621 ], [ %i.aeu, %bb.mz ] ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %.sroa.0310.01619, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.aev = load ptr, ptr %.sroa.0310.01619, align 8, !nonnull !8, !noundef !8
  %i.aew = getelementptr inbounds nuw i8, ptr %.sroa.0310.01619, i64 8
  %i.aex = load ptr, ptr %i.aew, align 8, !nonnull !8, !align !216, !noundef !8 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  %i.aez = load i64, ptr %i.aey, align 8, !range !2991, !invariant.load !8
  %i.afa = add nsw i64 %i.aez, -1
  %i.afb = and i64 %i.afa, -16
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aev, i64 %i.afb
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01639.sroa.0, i64 40, i1 false)
  store i64 %.sroa.01639.sroa.8.0, ptr %.sroa.01639.sroa.8.0..sroa_idx, align 8
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  store ptr %.sroa.101643.0, ptr %.sroa.101643.0..sroa_idx, align 8
  store i8 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  store i8 %.sroa.141648.0, ptr %.sroa.141648.0..sroa_idx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16, i64 6, i1 false)
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aex, i64 128
  %i.aff = load ptr, ptr %i.afe, align 8, !invariant.load !8, !nonnull !8
  invoke void %i.aff(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.bp, ptr noundef nonnull %i.afd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bo)
          to label %bb.mw unwind label %bb.mt

._crit_edge1622:                                  ; preds = %bb.mz, %bb.mu
  %.sroa.8.1 = phi ptr [ %i.aen, %bb.mu ], [ %.sroa.6779.sroa.5.0.copyload, %bb.mz ] ; 2 uses
  %.sroa.101643.1 = phi ptr [ %storemerge, %bb.mu ], [ %.sroa.6779.sroa.6.0.copyload, %bb.mz ]
  %.sroa.12.1 = phi i8 [ %7, %bb.mu ], [ %.sroa.6779.sroa.7.0.copyload, %bb.mz ]
  %.sroa.141648.1 = phi i8 [ %.sroa.10401.0.copyload, %bb.mu ], [ %.sroa.6779.sroa.8.0.copyload, %bb.mz ]
  %.sroa.01639.sroa.8.1 = phi i64 [ %.sroa.41664.0.copyload, %bb.mu ], [ %.sroa.6779.sroa.0.0.copyload, %bb.mz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0772.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0772.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01639.sroa.0, i64 24, i1 false)
  %.sroa.0772.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0772.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0772.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01639.sroa.0.24..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.afg = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  store ptr %.sroa.8.1, ptr %i.afg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0772.sroa.0, i64 40, i1 false)
  %.sroa.0772.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i64 %.sroa.01639.sroa.8.1, ptr %.sroa.0772.sroa.5.0..sroa_idx, align 8
  %.sroa.5773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr %.sroa.101643.1, ptr %.sroa.5773.0..sroa_idx, align 8
  %.sroa.6774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  store i8 %.sroa.12.1, ptr %.sroa.6774.0..sroa_idx, align 8
  %.sroa.7775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 57
  store i8 %.sroa.141648.1, ptr %.sroa.7775.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0772.sroa.0)
  %i.afh = load ptr, ptr %i.kj, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.afi = load i64, ptr %i.kl, align 8, !noundef !8 ; 7 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.8.1, i64 16
  %i.afk = invoke { ptr, i64 } @_RNvMs2_NtCs8VI8w5SIoU4_15datafusion_expr4udafNtB5_12AggregateUDF4name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.afj)
          to label %bb.ne unwind label %.thread1570 ; 2 uses

bb.mw:                                            ; preds = %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.afl = load i64, ptr %i.bp, align 16, !range !34, !noundef !8 ; 3 uses
  %i.afm = icmp eq i64 %i.afl, 38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6315, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5778.0..sroa_idx, i64 40, i1 false)
  br i1 %i.afm, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.afn, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6315, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  br label %bb.nb

bb.my:                                            ; preds = %bb.mw
  %.sroa.6779.sroa.0.0.copyload = load i64, ptr %.sroa.6779.0..sroa_idx, align 16 ; 3 uses
  %.sroa.6779.sroa.5.0.copyload = load ptr, ptr %.sroa.6779.sroa.5.0..sroa.6779.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6779.sroa.6.0.copyload = load ptr, ptr %.sroa.6779.sroa.6.0..sroa.6779.0..sroa_idx.sroa_idx, align 16 ; 3 uses
  %.sroa.6779.sroa.7.0.copyload = load i8, ptr %.sroa.6779.sroa.7.0..sroa.6779.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6779.sroa.8.0.copyload = load i8, ptr %.sroa.6779.sroa.8.0..sroa.6779.0..sroa_idx.sroa_idx, align 1 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3320.sroa.8, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6779.sroa.9.0..sroa.6779.0..sroa_idx.sroa_idx, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.3320.sroa.9, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6779.sroa.10.0..sroa.6779.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.afo = icmp eq i64 %i.afl, 37
  br i1 %i.afo, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01639.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6315, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3320.sroa.8, i64 6, i1 false)
  %i.afp = icmp eq ptr %i.aeu, %i.aes
  br i1 %i.afp, label %._crit_edge1622, label %bb.mv

bb.na:                                            ; preds = %bb.my
  %.sroa.2322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2322.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6315, i64 40, i1 false)
  %.sroa.2322.sroa.7.0..sroa.2322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.2322.sroa.7.0..sroa.2322.0..sroa_idx.sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3320.sroa.8, i64 6, i1 false)
  %.sroa.2322.sroa.8.0..sroa.2322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.2322.sroa.8.0..sroa.2322.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.3320.sroa.9, i64 32, i1 false)
  store i64 %i.afl, ptr %0, align 16
  %.sroa.2322.sroa.2.0..sroa.2322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.6779.sroa.0.0.copyload, ptr %.sroa.2322.sroa.2.0..sroa.2322.0..sroa_idx.sroa_idx, align 16
  %.sroa.2322.sroa.3.0..sroa.2322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6779.sroa.5.0.copyload, ptr %.sroa.2322.sroa.3.0..sroa.2322.0..sroa_idx.sroa_idx, align 8
  %.sroa.2322.sroa.4.0..sroa.2322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.6779.sroa.6.0.copyload, ptr %.sroa.2322.sroa.4.0..sroa.2322.0..sroa_idx.sroa_idx, align 16
  %.sroa.2322.sroa.5.0..sroa.2322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.6779.sroa.7.0.copyload, ptr %.sroa.2322.sroa.5.0..sroa.2322.0..sroa_idx.sroa_idx, align 8
  %.sroa.2322.sroa.6.0..sroa.2322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %.sroa.6779.sroa.8.0.copyload, ptr %.sroa.2322.sroa.6.0..sroa.2322.0..sroa_idx.sroa_idx, align 1
  br label %bb.nb

bb.nb:                                            ; preds = %bb.mx, %bb.na, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01639.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.nq

bb.nc:                                            ; preds = %bb.nm
  br i1 %.sroa.0379.2, label %.thread1562, label %.critedge1011.thread

.thread1570:                                      ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244.thread1574, %._crit_edge1622
  %lpad.thr_comm1568 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1562

bb.nd:                                            ; preds = %bb.no
  %lpad.thr_comm.split-lp1569 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge1011.thread

bb.ne:                                            ; preds = %._crit_edge1622
  %i.afq = extractvalue { ptr, i64 } %i.afk, 0    ; 2 uses
  %i.afr = extractvalue { ptr, i64 } %i.afk, 1
  %.not955 = icmp eq i64 %i.afi, %i.afr
  br i1 %.not955, label %bb.nf, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244.thread1574

bb.nf:                                            ; preds = %bb.ne
  %i.afs = icmp ugt i64 %i.afi, 15
  br i1 %i.afs, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  call void @llvm.experimental.noalias.scope.decl(metadata !31880)
  call void @llvm.experimental.noalias.scope.decl(metadata !31883)
  %.not15.i12401767 = icmp eq i64 %i.afi, 0
  br i1 %.not15.i12401767, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244.thread, label %.lr.ph1773

bb.nh:                                            ; preds = %.lr.ph1773
  %i.aft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i12381771, i64 1
  %i.afu = add nsw i64 %.sroa.5.0.i12371770, -1   ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i12361769, i64 1
  %i.afw = add nsw i64 %.sroa.58.0.i12351768, -1  ; 2 uses
  %.not.i1239 = icmp eq i64 %i.afu, 0
  %.not15.i1240 = icmp eq i64 %i.afw, 0
  %or.cond.i1241 = select i1 %.not.i1239, i1 true, i1 %.not15.i1240
  br i1 %or.cond.i1241, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244.thread, label %.lr.ph1773

.lr.ph1773:                                       ; preds = %bb.ng, %bb.nh
  %.sroa.0.0.i12381771 = phi ptr [ %i.aft, %bb.nh ], [ %i.afh, %bb.ng ] ; 2 uses
  %.sroa.5.0.i12371770 = phi i64 [ %i.afu, %bb.nh ], [ %i.afi, %bb.ng ]
  %.sroa.05.0.i12361769 = phi ptr [ %i.afv, %bb.nh ], [ %i.afq, %bb.ng ] ; 2 uses
  %.sroa.58.0.i12351768 = phi i64 [ %i.afw, %bb.nh ], [ %i.afi, %bb.ng ]
  %i.afx = load i8, ptr %.sroa.0.0.i12381771, align 1, !alias.scope !31880, !noalias !31883, !noundef !8 ; 2 uses
  %i.afy = add i8 %i.afx, -65
  %i.afz = icmp ult i8 %i.afy, 26
  %i.aga = select i1 %i.afz, i8 32, i8 0
  %.sroa.012.0.i1242 = or i8 %i.aga, %i.afx
  %i.agb = load i8, ptr %.sroa.05.0.i12361769, align 1, !alias.scope !31883, !noalias !31880, !noundef !8 ; 2 uses
  %i.agc = add i8 %i.agb, -65
  %i.agd = icmp ult i8 %i.agc, 26
  %i.age = select i1 %i.agd, i8 32, i8 0
  %.sroa.013.0.i1243 = or i8 %i.age, %i.agb
  %i.agf = icmp eq i8 %.sroa.012.0.i1242, %.sroa.013.0.i1243
  br i1 %i.agf, label %bb.nh, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244.thread1574

_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244: ; preds = %bb.nf
  %i.agg = call fastcc noundef zeroext i1 @_RINvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_chunksKj10_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.afh, i64 noundef %i.afi, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.afq, i64 noundef %i.afi)
  br i1 %i.agg, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244.thread, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244.thread1574

_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244.thread1574: ; preds = %.lr.ph1773, %bb.ne, %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.agh = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.agk = load i64, ptr %i.agj, align 8, !noundef !8
  %i.agl = getelementptr inbounds nuw [112 x i8], ptr %i.agi, i64 %i.agk
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3N_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprsa_0EE9from_iterB51_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noundef nonnull %i.agi, ptr noundef nonnull %i.agl)
          to label %bb.nj unwind label %.thread1570

_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244.thread: ; preds = %bb.nh, %bb.ng, %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244
  %.sroa.4325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4325.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.bn, i64 72, i1 false)
  store i64 26, ptr %0, align 16
  br label %bb.ni

bb.ni:                                            ; preds = %bb.np, %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.nb

bb.nj:                                            ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit1244.thread1574
  %i.agm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.agn = load ptr, ptr %i.agm, align 8, !nonnull !8, !noundef !8
  %i.ago = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.agp = load i64, ptr %i.ago, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvNtCs6Po7BT7Nknu_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.agn, i64 noundef %i.agp, ptr noalias noundef nonnull readonly captures(address, read_provenance) @673, i64 noundef 1)
          to label %bb.nl unwind label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.agq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bl) #42
          to label %.thread1562 unwind label %bb.w

bb.nl:                                            ; preds = %bb.nj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bl)
          to label %bb.nn unwind label %bb.nm

bb.nm:                                            ; preds = %bb.nn, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit1246, %bb.nl
  %.sroa.0379.2 = phi i1 [ false, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit1246 ], [ true, %bb.nn ], [ true, %bb.nl ]
  %i.agr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm) #42
          to label %bb.nc unwind label %bb.w

bb.nn:                                            ; preds = %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr %i.gu, ptr %i.bj, align 8
  %.sroa.4783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4783.0..sroa_idx, align 8
  %i.ags = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
end_hunk_16
