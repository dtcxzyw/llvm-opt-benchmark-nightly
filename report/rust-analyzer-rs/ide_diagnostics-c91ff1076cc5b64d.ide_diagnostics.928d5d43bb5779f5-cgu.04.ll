Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_diagnostics-c91ff1076cc5b64d.ide_diagnostics.928d5d43bb5779f5-cgu.04?download=true
inline.NumInlined: 927
inline.NumDeleted: 498
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCscA5P7HRgTCP_15ide_diagnostics20semantic_diagnostics:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !566
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B1F_NtB1F_10SyntaxNode11descendants0ENvYINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2t_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.af, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.eh = invoke { i32, i32 } @_RINvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB6_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE18file_to_module_defNtCs4sl5YdnrCxp_3vfs6FileIdECscA5P7HRgTCP_15ide_diagnostics(ptr noundef nonnull align 8 %i.bp, i32 noundef %i.ct)
          to label %bb.ai unwind label %bb.v      ; 2 uses

bb.ai:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B1F_NtB1F_10SyntaxNode11descendants0ENvYINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2t_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit
  %i.ei = extractvalue { i32, i32 } %i.eh, 0      ; 4 uses
  %i.ej = extractvalue { i32, i32 } %i.eh, 1      ; 3 uses
  %.not133 = icmp eq i32 %i.ei, 0                 ; 2 uses
  br i1 %.not133, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ek = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef range(i32 1, 0) %i.ei, i32 noundef %i.ej, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @20)
          to label %.noexc334 unwind label %bb.v  ; 2 uses

.noexc334:                                        ; preds = %bb.aj
  %i.el = extractvalue { i32, i32 } %i.ek, 0
  %i.em = extractvalue { i32, i32 } %i.ek, 1
  %i.en = invoke noundef range(i8 -1, 3) i8 @_RNvCsgIpRO4v45SJ_7base_db17toolchain_channel(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @3, i32 noundef %i.el, i32 noundef %i.em)
          to label %_RNCNvCscA5P7HRgTCP_15ide_diagnostics20semantic_diagnosticss5_0B3_.exit unwind label %bb.v ; 2 uses

_RNCNvCscA5P7HRgTCP_15ide_diagnostics20semantic_diagnosticss5_0B3_.exit: ; preds = %.noexc334
  %i.eo = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.ei, i32 noundef %i.ej, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @20)
          to label %bb.aw unwind label %bb.v      ; 2 uses

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.ep = invoke { ptr, i64 } @_RNvCsgIpRO4v45SJ_7base_db10all_crates(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @3)
          to label %bb.al unwind label %bb.v      ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.eq = extractvalue { ptr, i64 } %i.ep, 0      ; 4 uses
  %i.er = extractvalue { ptr, i64 } %i.ep, 1      ; 3 uses
  store ptr %i.eq, ptr %i.bl, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.er, ptr %i.es, align 8
  %.not135 = icmp eq i64 %i.er, 0
  br i1 %.not135, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  store i64 0, ptr %0, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.eu, align 8
  %i.ev = atomicrmw add ptr %i.eq, i64 -1 release, align 8, !noalias !567
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.an, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bl) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.v

bb.ao:                                            ; preds = %bb.al
  %i.ex = getelementptr i8, ptr %i.eq, i64 8
  %i.ey = getelementptr [8 x i8], ptr %i.ex, i64 %i.er ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !range !15, !noundef !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !noundef !12
  %i.fc = atomicrmw add ptr %i.eq, i64 -1 release, align 8, !noalias !568
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit338

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bl) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit338 unwind label %bb.v

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.fe = load i32, ptr %i.da, align 4, !noundef !12
  %i.ff = add i32 %i.fe, -1                       ; 2 uses
  store i32 %i.ff, ptr %i.da, align 4
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.aq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECscA5P7HRgTCP_15ide_diagnostics.exit340

bb.aq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cx) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECscA5P7HRgTCP_15ide_diagnostics.exit340 unwind label %bb.q

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECscA5P7HRgTCP_15ide_diagnostics.exit340: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit, %bb.aq
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECscA5P7HRgTCP_15ide_diagnostics.exit340
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.thread550 unwind label %bb.at

bb.as:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECscA5P7HRgTCP_15ide_diagnostics.exit340
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEEB1a_.exit unwind label %bb.m

bb.at:                                            ; preds = %bb.ar
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEEB1a_.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8Xq8PKFYOms_3hir9semantics9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(272) %i.bp)
          to label %bb.au unwind label %bb.j

bb.au:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEEB1a_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECscA5P7HRgTCP_15ide_diagnostics.exit370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit338: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit338
  %.sroa.015.0566 = phi i8 [ %.sroa.015.0.ph, %bb.aw ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit338 ]
  %.sroa.4.0 = phi i32 [ %i.fl, %bb.aw ], [ %i.fb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit338 ] ; 3 uses
  %.sroa.018.0 = phi i32 [ %i.fk, %bb.aw ], [ %i.ez, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECscA5P7HRgTCP_15ide_diagnostics.exit338 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  invoke void @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate17to_display_target(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.bk, i32 noundef %.sroa.018.0, i32 noundef %.sroa.4.0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @20)
          to label %bb.ax unwind label %bb.v

bb.aw:                                            ; preds = %_RNCNvCscA5P7HRgTCP_15ide_diagnostics20semantic_diagnosticss5_0B3_.exit
  %.not134 = icmp eq i8 %i.en, -1
  %i.fj = icmp eq i8 %i.en, 2
  %narrow = or i1 %.not134, %i.fj
  %.sroa.015.0.ph = zext i1 %narrow to i8
  %i.fk = extractvalue { i32, i32 } %i.eo, 0
  %i.fl = extractvalue { i32, i32 } %i.eo, 1
  br label %bb.av

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bj, ptr noundef nonnull align 8 dereferenceable(272) %i.bp, i64 272, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bj, i64 272 ; 2 uses
  store ptr %2, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bj, i64 280
  store ptr %3, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bj, i64 300
  store i8 %i.cu, ptr %i.fo, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bj, i64 288 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fp, ptr noundef nonnull align 4 dereferenceable(12) %i.bk, i64 12, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bj, i64 301
  store i8 %.sroa.015.0566, ptr %i.fq, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i64 0, ptr %i.bi, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store i64 0, ptr %i.fs, align 8
  br i1 %.not133, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ft = invoke { ptr, i64 } @_RNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB5_15EditionedFileId12parse_errors(i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @2)
          to label %bb.be unwind label %bb.sx     ; 2 uses

bb.az:                                            ; preds = %bb.ax
  %i.fu = invoke noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECscA5P7HRgTCP_15ide_diagnostics(i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @3)
          to label %bb.bb unwind label %bb.sx

bb.ba:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs8Xq8PKFYOms_3hir11diagnostics13AnyDiagnosticEECscA5P7HRgTCP_15ide_diagnostics.exit347, %bb.bi, %._crit_edge, %bb.ez
  %.sroa.0118.5.ph = phi i8 [ 1, %._crit_edge ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs8Xq8PKFYOms_3hir11diagnostics13AnyDiagnosticEECscA5P7HRgTCP_15ide_diagnostics.exit347 ], [ 1, %bb.bi ], [ 0, %bb.ez ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread575

bb.bb:                                            ; preds = %bb.az
  %i.fv = invoke noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.fu)
          to label %bb.bc unwind label %bb.sx

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers13unlinked_file13unlinked_file(ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo, i32 noundef %i.fv)
          to label %bb.bd unwind label %bb.sx

bb.bd:                                            ; preds = %bb.be, %bb.bf, %bb.bc
  %i.fw = load ptr, ptr %i.fr, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.fx = load i64, ptr %i.bi, align 8, !range !27, !noundef !12
  %i.fy = load i64, ptr %i.fs, align 8, !noundef !12 ; 3 uses
  %i.fz = icmp ult i64 %i.fy, 576460752303423488
  call void @llvm.assume(i1 %i.fz)
  %.idx = shl nuw nsw i64 %i.fy, 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr %i.fw, ptr %i.bh, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  store ptr %i.fw, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.fx, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.ga, ptr %.sroa.627.0..sroa_idx, align 8
  %i.gb = icmp eq i64 %i.fy, 0
  br i1 %i.gb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bd
  %5 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ay, i64 72 ; 3 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 80 ; 3 uses
  %.sroa.7.0..sroa_idx.i383 = getelementptr inbounds nuw i8, ptr %i.ay, i64 88 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ay, i64 96 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ay, i64 110 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ay, i64 108 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ay, i64 109 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 3 uses
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  %i.gn = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.gp = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.gq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.gs = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.gt = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  %.sroa.45.0..sroa_idx.i374 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.bh

bb.be:                                            ; preds = %bb.ay
  %i.hc = extractvalue { ptr, i64 } %i.ft, 0
  %.not136 = icmp eq ptr %i.hc, null
  %i.hd = extractvalue { ptr, i64 } %i.ft, 1
  %i.he = icmp samesign ult i64 %i.hd, 16
  %or.cond = select i1 %.not136, i1 true, i1 %i.he
  br i1 %or.cond, label %bb.bf, label %bb.bd

bb.bf:                                            ; preds = %bb.be
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.hg = load i8, ptr %i.hf, align 2, !range !25, !noundef !12
  %i.hh = trunc nuw i8 %i.hg to i1
  invoke void @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module11diagnostics(i32 noundef %i.ei, i32 noundef %i.ej, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @20, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi, i1 noundef zeroext %i.hh)
          to label %bb.bd unwind label %bb.sx

.body387:                                         ; preds = %bb.iz, %bb.kl, %bb.lr, %bb.mc, %bb.my, %bb.pc, %bb.pw, %bb.qo, %bb.ra, %bb.bg, %bb.sr, %bb.se, %bb.qu, %bb.qe, %bb.pk, %bb.nr, %bb.mr, %bb.ly, %bb.kr, %bb.jg, %.body385, %bb.st, %bb.sk, %bb.si, %bb.sg, %bb.rw, %bb.ru, %bb.rs, %bb.rq, %bb.ro, %bb.rk, %bb.rg, %bb.re, %bb.qq, %bb.qi, %bb.qg, %bb.py, %bb.po, %bb.pm, %bb.pe, %bb.ov, %bb.ot, %bb.or, %bb.on, %bb.oj, %bb.oh, %bb.of, %bb.od, %bb.ob, %bb.nz, %bb.nx, %bb.nv, %bb.nt, %bb.ni, %bb.ng, %bb.ne, %bb.nc, %bb.na, %bb.mk, %bb.mi, %bb.mg, %bb.me, %bb.lk, %bb.li, %bb.lg, %bb.le, %bb.lc, %bb.la, %bb.ky, %bb.ku, %bb.kc, %bb.ka, %bb.jy, %bb.jw, %bb.ju, %.body380, %bb.jq, %bb.jo, %.body372, %bb.jk, %bb.ji, %bb.iv, %bb.sm, %bb.ry, %bb.rc, %bb.qw, %bb.qs, %bb.qk, %bb.qa, %bb.ps, %bb.pg, %bb.ox, %bb.nm, %bb.mt, %bb.mm, %bb.ma, %bb.lt, %bb.lm, %bb.kw, %bb.ke, %bb.jb
  %.pn = phi { ptr, i32 } [ %eh.lpad-body386, %.body385 ], [ %i.ss, %bb.iv ], [ %i.tb, %bb.jb ], [ %i.tf, %bb.ji ], [ %i.tg, %bb.jk ], [ %eh.lpad-body373, %.body372 ], [ %i.ti, %bb.jo ], [ %i.tj, %bb.jq ], [ %eh.lpad-body381, %.body380 ], [ %i.tl, %bb.ju ], [ %i.tm, %bb.jw ], [ %i.tn, %bb.jy ], [ %i.to, %bb.ka ], [ %i.tp, %bb.kc ], [ %i.tq, %bb.ke ], [ %i.uf, %bb.ku ], [ %i.ug, %bb.kw ], [ %i.uh, %bb.ky ], [ %i.ui, %bb.la ], [ %i.uj, %bb.lc ], [ %i.uk, %bb.le ], [ %i.ul, %bb.lg ], [ %i.um, %bb.li ], [ %i.un, %bb.lk ], [ %i.uo, %bb.lm ], [ %i.us, %bb.lt ], [ %i.uw, %bb.ma ], [ %i.uy, %bb.me ], [ %i.uz, %bb.mg ], [ %i.va, %bb.mi ], [ %i.vb, %bb.mk ], [ %i.vc, %bb.mm ], [ %i.vg, %bb.mt ], [ %i.vk, %bb.na ], [ %i.vl, %bb.nc ], [ %i.vm, %bb.ne ], [ %i.vn, %bb.ng ], [ %i.vo, %bb.ni ], [ %i.vq, %bb.nm ], [ %i.vu, %bb.nt ], [ %i.vv, %bb.nv ], [ %i.vw, %bb.nx ], [ %i.vx, %bb.nz ], [ %i.vy, %bb.ob ], [ %i.vz, %bb.od ], [ %i.wa, %bb.of ], [ %i.wb, %bb.oh ], [ %i.wc, %bb.oj ], [ %i.we, %bb.on ], [ %i.wg, %bb.or ], [ %i.wh, %bb.ot ], [ %i.wi, %bb.ov ], [ %i.wj, %bb.ox ], [ %i.wn, %bb.pe ], [ %i.wo, %bb.pg ], [ %i.wz, %bb.pm ], [ %i.xa, %bb.po ], [ %i.xc, %bb.ps ], [ %i.xn, %bb.py ], [ %i.xo, %bb.qa ], [ %i.xz, %bb.qg ], [ %i.ya, %bb.qi ], [ %i.yb, %bb.qk ], [ %i.ym, %bb.qq ], [ %i.yn, %bb.qs ], [ %i.yp, %bb.qw ], [ %i.za, %bb.rc ], [ %i.zb, %bb.re ], [ %i.zc, %bb.rg ], [ %i.ze, %bb.rk ], [ %i.zg, %bb.ro ], [ %i.zh, %bb.rq ], [ %i.zi, %bb.rs ], [ %i.zj, %bb.ru ], [ %i.zk, %bb.rw ], [ %i.zl, %bb.ry ], [ %i.zs, %bb.sg ], [ %i.zt, %bb.si ], [ %i.zu, %bb.sk ], [ %i.zv, %bb.sm ], [ %i.zz, %bb.st ], [ %eh.lpad-body.i457, %bb.sr ], [ %eh.lpad-body.i, %bb.jg ], [ %eh.lpad-body.i391, %bb.kl ], [ %eh.lpad-body.i394, %bb.kr ], [ %eh.lpad-body.i398, %bb.lr ], [ %eh.lpad-body.i402, %bb.ly ], [ %i.ux, %bb.mc ], [ %eh.lpad-body.i408, %bb.mr ], [ %eh.lpad-body.i411, %bb.my ], [ %eh.lpad-body.i415, %bb.nr ], [ %eh.lpad-body.i419, %bb.pc ], [ %i.wy, %bb.pk ], [ %i.xm, %bb.pw ], [ %i.xy, %bb.qe ], [ %i.yl, %bb.qo ], [ %i.yo, %bb.qu ], [ %i.yz, %bb.ra ], [ %eh.lpad-body.i454, %bb.se ], [ %i.hi, %bb.bg ], [ %i.sw, %bb.iz ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8Xq8PKFYOms_3hir11diagnostics13AnyDiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %.thread575 unwind label %bb.fc

bb.bg:                                            ; preds = %bb.rd, %bb.kx
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body387

bb.bh:                                            ; preds = %.lr.ph, %.backedge
  %i.hj = phi ptr [ %i.fw, %.lr.ph ], [ %i.ud, %.backedge ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store ptr %i.hk, ptr %.sroa.426.0..sroa_idx, align 8, !alias.scope !569
  %i.hl = load i64, ptr %i.hj, align 8, !range !570, !noalias !569, !noundef !12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !569, !nonnull !12, !noundef !12 ; 312 uses
  switch i64 %i.hl, label %default.unreachable [
    i64 0, label %bb.fd
    i64 1, label %bb.fe
    i64 2, label %bb.ff
    i64 3, label %bb.fg
    i64 4, label %bb.fh
    i64 5, label %bb.fn
    i64 6, label %bb.fo
    i64 7, label %bb.fp
    i64 8, label %bb.fv
    i64 9, label %bb.fw
    i64 10, label %bb.fx
    i64 11, label %bb.fy
    i64 12, label %bb.fz
    i64 13, label %bb.ga
    i64 14, label %bb.gb
    i64 15, label %bb.gc
    i64 16, label %bb.gd
    i64 17, label %bb.ge
    i64 18, label %bb.gf
    i64 19, label %bb.gg
    i64 20, label %bb.gh
    i64 21, label %bb.gi
    i64 22, label %bb.gj
    i64 23, label %bb.gk
    i64 24, label %bb.gl
    i64 25, label %bb.gm
    i64 26, label %bb.gn
    i64 27, label %bb.go
    i64 28, label %bb.gp
    i64 29, label %bb.gq
    i64 30, label %bb.gr
    i64 31, label %bb.gs
    i64 32, label %bb.gt
    i64 33, label %bb.gu
    i64 34, label %bb.gv
    i64 35, label %bb.gw
    i64 36, label %bb.gx
    i64 37, label %bb.gy
    i64 38, label %bb.gz
    i64 39, label %bb.ha
    i64 40, label %bb.hb
    i64 41, label %bb.hc
    i64 42, label %bb.hd
    i64 43, label %bb.he
    i64 44, label %bb.hf
    i64 45, label %bb.hg
    i64 46, label %bb.hh
    i64 47, label %bb.hi
    i64 48, label %bb.hj
    i64 49, label %bb.hk
    i64 50, label %bb.hl
    i64 51, label %bb.hm
    i64 52, label %bb.hn
    i64 53, label %bb.ho
    i64 54, label %bb.hp
    i64 55, label %bb.hq
    i64 56, label %bb.hr
    i64 57, label %bb.hs
    i64 58, label %bb.ht
    i64 59, label %bb.hu
    i64 60, label %bb.hv
    i64 61, label %bb.hw
    i64 62, label %bb.hx
    i64 63, label %bb.hy
    i64 64, label %bb.hz
    i64 65, label %bb.ia
    i64 66, label %bb.ib
    i64 67, label %bb.ic
    i64 68, label %bb.id
    i64 69, label %bb.ie
    i64 70, label %bb.if
    i64 71, label %bb.ig
    i64 72, label %bb.ih
    i64 73, label %bb.ii
    i64 74, label %bb.ij
    i64 75, label %bb.ik
    i64 76, label %bb.il
    i64 77, label %bb.im
    i64 78, label %bb.in
    i64 79, label %bb.io
    i64 80, label %bb.ip
  ]

._crit_edge:                                      ; preds = %.backedge, %bb.bd
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8Xq8PKFYOms_3hir11diagnostics13AnyDiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs8Xq8PKFYOms_3hir11diagnostics13AnyDiagnosticEECscA5P7HRgTCP_15ide_diagnostics.exit347 unwind label %bb.ba

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs8Xq8PKFYOms_3hir11diagnostics13AnyDiagnosticEECscA5P7HRgTCP_15ide_diagnostics.exit347: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.ho = load ptr, ptr %i.fm, align 8, !nonnull !12, !align !14, !noundef !12
  invoke void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE6retainNCNvBH_20semantic_diagnosticss0_0EBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ho)
          to label %bb.bi unwind label %bb.ba

bb.bi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs8Xq8PKFYOms_3hir11diagnostics13AnyDiagnosticEECscA5P7HRgTCP_15ide_diagnostics.exit347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.hp = load ptr, ptr %i.cv, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.hq = load i64, ptr %i.cw, align 8, !noundef !12
  %i.hr = getelementptr inbounds nuw [112 x i8], ptr %i.hp, i64 %i.hq
  store ptr %i.hp, ptr %i.aw, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.hr, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.bj, ptr %i.ht, align 8
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB17_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEQNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB50_6filter6FilterINtNtNtB54_5slice4iter7IterMutB3G_ENCNvB3I_20semantic_diagnosticss1_0ENCB6V_s2_0EE9from_iterB3I_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw)
          to label %bb.bj unwind label %bb.ba

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !noundef !12 ; 2 uses
  %i.hy = invoke noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECscA5P7HRgTCP_15ide_diagnostics(i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @3)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i19.i, %.lr.ph.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit40.sink.split.i.i, %.noexc359, %bb.cb, %bb.bv, %bb.bu, %bb.bp, %bb.bo, %select.unfold32.i.invoke, %bb.cc, %bb.bm, %bb.ew, %_RNvCscA5P7HRgTCP_15ide_diagnostics12handle_lints.exit, %bb.bj
  %lpad.loopexit.split-lp1367 = landingpad { ptr, i32 }
          cleanup
  br label %.body363

.body363:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cg, %bb.ch, %.body.i.i, %bb.cr, %bb.cs, %.body45.i.i, %bb.cw
  %eh.lpad-body364 = phi { ptr, i32 } [ %i.mc, %bb.cg ], [ %eh.lpad-body.i.i, %bb.cs ], [ %.pn21.i.i, %.body45.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.cr ], [ %.pn21.i.i, %bb.cw ], [ %i.mc, %bb.ch ], [ %lpad.loopexit.split-lp1367, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1e_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEQNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEEEB3P_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #26
          to label %.thread575 unwind label %bb.fc

bb.bk:                                            ; preds = %bb.bj
  %i.hz = lshr i32 %i.hy, 23
  %i.ia = trunc i32 %i.hz to i8                   ; 5 uses
  %i.ib = icmp ult i8 %i.ia, 4
  call void @llvm.assume(i1 %i.ib)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %.idx.i = shl nuw nsw i64 %i.hx, 5
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx.i
  %i.id = icmp eq i64 %i.hx, 0
  br i1 %i.id, label %_RNvCscA5P7HRgTCP_15ide_diagnostics12handle_lints.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bk
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 10 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  br label %bb.bl

bb.bl:                                            ; preds = %bb.ev, %.lr.ph.i
  %.sroa.0.0111.i = phi ptr [ %i.hv, %.lr.ph.i ], [ %i.in, %bb.ev ] ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0111.i, i64 32 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.0111.i, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !alias.scope !571, !nonnull !12, !align !14, !noundef !12 ; 8 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 72 ; 3 uses
  %i.ir = load i8, ptr %i.iq, align 8, !range !17, !noalias !571, !noundef !12
  switch i8 %i.ir, label %bb.bm [
    i8 2, label %bb.bn
    i8 3, label %bb.bt
  ], !prof !28

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @2084, ptr noundef nonnull inttoptr (i64 71 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2088) #25
          to label %.noexc350 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc350:                                        ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  %i.it = load ptr, ptr %i.is, align 8, !noalias !571, !nonnull !12, !noundef !12 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 88
  %i.iv = load i64, ptr %i.iu, align 8, !noalias !571, !noundef !12 ; 2 uses
  %i.iw = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics11RUSTC_LINTS, i64 32) acquire, align 8, !noalias !571
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE5force0EB2n_.exit.i, label %bb.bo, !prof !16

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !571
  store ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics11RUSTC_LINTS, ptr %i.ar, align 8, !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !571
  store ptr %i.ar, ptr %i.aq, align 8, !noalias !571
  invoke void @_RNvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics11RUSTC_LINTS, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %.noexc351 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc351:                                        ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !571
  br label %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE5force0EB2n_.exit.i

_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE5force0EB2n_.exit.i: ; preds = %.noexc351, %bb.bn
  %i.iy = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics11RUSTC_LINTS, i64 24), align 8, !alias.scope !572, !noalias !571, !noundef !12
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %select.unfold32.i.invoke, label %bb.bp

bb.bp:                                            ; preds = %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE5force0EB2n_.exit.i
  %i.ja = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneReECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) getelementptr inbounds nuw (i8, ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics11RUSTC_LINTS, i64 32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.it, i64 noundef %i.iv)
          to label %.noexc352 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc352:                                        ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.jb = lshr i64 %i.ja, 57
  %i.jc = trunc nuw nsw i64 %i.jb to i8
  %i.jd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics11RUSTC_LINTS, i64 8), align 8, !alias.scope !575, !noalias !571, !noundef !12 ; 2 uses
  %i.je = load ptr, ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics11RUSTC_LINTS, align 8, !alias.scope !575, !noalias !571, !nonnull !12, !noundef !12 ; 2 uses
  %i.jf = insertelement <16 x i8> poison, i8 %i.jc, i64 0
  %i.jg = shufflevector <16 x i8> %i.jf, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bs, %.noexc352
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc352 ], [ %i.jx, %bb.bs ]
  %.pn.i.i.i = phi i64 [ %i.ja, %.noexc352 ], [ %i.jy, %bb.bs ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.jd ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.jh, align 1, !noalias !576 ; 2 uses
  %i.ji = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.jg
  %i.jj = bitcast <16 x i1> %i.ji to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.jj, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bq, %bb.br
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.jw, %bb.br ], [ %i.jj, %bb.bq ] ; 3 uses
  %i.jk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.jl = zext nneg i16 %i.jk to i64
  %i.jm = add i64 %.sroa.01.0.i.i.i.i, %i.jl
  %i.jn = and i64 %i.jm, %i.jd
  %i.jo = sub nsw i64 0, %i.jn
  %i.jp = getelementptr inbounds [48 x i8], ptr %i.je, i64 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -48
  %i.jr = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrowneINtB2_10EquivalentReE10equivalentCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.it, i64 noundef %i.iv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jq)
          to label %.noexc353 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc353:                                        ; preds = %.lr.ph.i.i.i
  br i1 %i.jr, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3geteEBS_.exit.i, label %bb.br, !prof !16

._crit_edge.i.i.i:                                ; preds = %bb.br, %bb.bq
  %i.js = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.jt = bitcast <16 x i1> %i.js to i16
  %i.ju = icmp eq i16 %i.jt, 0
  br i1 %i.ju, label %bb.bs, label %select.unfold32.i.invoke, !prof !21

bb.br:                                            ; preds = %.noexc353
  %i.jv = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.jw = and i16 %i.jv, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.jw, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.bs:                                            ; preds = %._crit_edge.i.i.i
  %i.jx = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.jy = add i64 %.sroa.01.0.i.i.i.i, %i.jx
  br label %bb.bq

bb.bt:                                            ; preds = %bb.bl
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !571, !nonnull !12, !noundef !12 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ip, i64 88
  %i.kc = load i64, ptr %i.kb, align 8, !noalias !571, !noundef !12 ; 2 uses
  %i.kd = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics12CLIPPY_LINTS, i64 32) acquire, align 8, !noalias !571
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE5force0EB2n_.exit13.i, label %bb.bu, !prof !16

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !571
  store ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics12CLIPPY_LINTS, ptr %i.ap, align 8, !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !571
  store ptr %i.ap, ptr %i.ao, align 8, !noalias !571
  invoke void @_RNvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics12CLIPPY_LINTS, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %.noexc354 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc354:                                        ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !571
  br label %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE5force0EB2n_.exit13.i

_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE5force0EB2n_.exit13.i: ; preds = %.noexc354, %bb.bt
  %i.kf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics12CLIPPY_LINTS, i64 24), align 8, !alias.scope !577, !noalias !571, !noundef !12
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %select.unfold32.i.invoke, label %bb.bv

bb.bv:                                            ; preds = %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3map7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE5force0EB2n_.exit13.i
end_hunk_0
begin_hunk_1_@_RNvCscA5P7HRgTCP_15ide_diagnostics20semantic_diagnostics:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !596
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrETB1F_NtCs6oosyzwIepl_6ide_db8SeverityEuINtNtNtBa_3ops12control_flow11ControlFlowB2i_ENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2d_B2i_NCNvB3E_30find_outline_mod_lint_severity0E0E0B3E_.exit.i.i.i: ; preds = %bb.eo, %bb.en, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !593
  %.not4.i.i.i = icmp eq i8 %i.qv, -1
  br i1 %.not4.i.i.i, label %bb.eq, label %_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB2c_8adapters3map12map_try_foldBR_TB1x_NtCs6oosyzwIepl_6ide_db8SeverityEuINtNtNtB2e_3ops12control_flow11ControlFlowB4f_ENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0NCINvNvNtNtB2a_8iterator8Iterator8find_map5checkB4a_B4f_NCNvB5C_30find_outline_mod_lint_severity0E0E0B4N_EB5C_.exit.i.i

bb.eq:                                            ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrETB1F_NtCs6oosyzwIepl_6ide_db8SeverityEuINtNtNtBa_3ops12control_flow11ControlFlowB2i_ENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2d_B2i_NCNvB3E_30find_outline_mod_lint_severity0E0E0B3E_.exit.i.i.i
  %i.rb = icmp eq ptr %i.oz, %i.pz
  br i1 %i.rb, label %_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB2c_8adapters3map12map_try_foldBR_TB1x_NtCs6oosyzwIepl_6ide_db8SeverityEuINtNtNtB2e_3ops12control_flow11ControlFlowB4f_ENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0NCINvNvNtNtB2a_8iterator8Iterator8find_map5checkB4a_B4f_NCNvB5C_30find_outline_mod_lint_severity0E0E0B4N_EB5C_.exit.i.i, label %_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i

.split46.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.eo, %bb.ea
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body54.i.i

.body54.i.i:                                      ; preds = %.split46.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.ej, %bb.ei, %.split43.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body55.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp1354, %.split43.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1354, %bb.ej ], [ %lpad.loopexit.split-lp1354, %bb.ei ], [ %lpad.loopexit.split-lp, %.split46.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %.body45.i.i unwind label %bb.er, !noalias !571

_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB2c_8adapters3map12map_try_foldBR_TB1x_NtCs6oosyzwIepl_6ide_db8SeverityEuINtNtNtB2e_3ops12control_flow11ControlFlowB4f_ENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0NCINvNvNtNtB2a_8iterator8Iterator8find_map5checkB4a_B4f_NCNvB5C_30find_outline_mod_lint_severity0E0E0B4N_EB5C_.exit.i.i: ; preds = %bb.eb, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrETB1F_NtCs6oosyzwIepl_6ide_db8SeverityEuINtNtNtBa_3ops12control_flow11ControlFlowB2i_ENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2d_B2i_NCNvB3E_30find_outline_mod_lint_severity0E0E0B3E_.exit.i.us.i.i, %_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCscA5P7HRgTCP_15ide_diagnostics.exit.i.us.i.i, %bb.eq, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrETB1F_NtCs6oosyzwIepl_6ide_db8SeverityEuINtNtNtBa_3ops12control_flow11ControlFlowB2i_ENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2d_B2i_NCNvB3E_30find_outline_mod_lint_severity0E0E0B3E_.exit.i.i.i, %_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, %_RNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs.exit.i.i
  %.sroa.0.0.i.i.i = phi i8 [ -1, %_RNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs.exit.i.i ], [ %i.qv, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrETB1F_NtCs6oosyzwIepl_6ide_db8SeverityEuINtNtNtBa_3ops12control_flow11ControlFlowB2i_ENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2d_B2i_NCNvB3E_30find_outline_mod_lint_severity0E0E0B3E_.exit.i.i.i ], [ -1, %bb.eq ], [ %.sroa.05.0.copyload6.i.i.i, %_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i ], [ %.sroa.05.0.copyload6.i.us.i.i, %_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCscA5P7HRgTCP_15ide_diagnostics.exit.i.us.i.i ], [ %.sroa.0.0.i.i.i.us.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrETB1F_NtCs6oosyzwIepl_6ide_db8SeverityEuINtNtNtBa_3ops12control_flow11ControlFlowB2i_ENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2d_B2i_NCNvB3E_30find_outline_mod_lint_severity0E0E0B3E_.exit.i.us.i.i ], [ -1, %bb.eb ] ; 2 uses
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEEENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0EEB3x_.exit58.i.i unwind label %.thread27.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !571

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEEENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0EEB3x_.exit58.i.i: ; preds = %_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB2c_8adapters3map12map_try_foldBR_TB1x_NtCs6oosyzwIepl_6ide_db8SeverityEuINtNtNtB2e_3ops12control_flow11ControlFlowB4f_ENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0NCINvNvNtNtB2a_8iterator8Iterator8find_map5checkB4a_B4f_NCNvB5C_30find_outline_mod_lint_severity0E0E0B4N_EB5C_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !583
  %i.rc = load i32, ptr %i.nh, align 4, !noalias !571, !noundef !12
  %i.rd = add i32 %i.rc, -1                       ; 2 uses
  store i32 %i.rd, ptr %i.nh, align 4, !noalias !571
  %i.re = icmp eq i32 %i.rd, 0
  br i1 %i.re, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit40.sink.split.i.i, label %_RNvCscA5P7HRgTCP_15ide_diagnostics30find_outline_mod_lint_severity.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit40.sink.split.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEEENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0EEB3x_.exit58.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ItemListEECscA5P7HRgTCP_15ide_diagnostics.exit49.i.i
  %.sroa.0.3.ph.i.i = phi i8 [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ItemListEECscA5P7HRgTCP_15ide_diagnostics.exit49.i.i ], [ %.sroa.0.0.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEEENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0EEB3x_.exit58.i.i ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i1315.i.i.i) #23
          to label %_RNvCscA5P7HRgTCP_15ide_diagnostics30find_outline_mod_lint_severity.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.er:                                            ; preds = %bb.et, %.body54.i.i, %bb.cw, %bb.cs
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !571
  unreachable

bb.es:                                            ; preds = %bb.do
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load ptr, ptr %i.am, align 8, !noalias !583, !nonnull !12, !noundef !12 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 4, !noalias !571, !noundef !12
  %i.ri = add i32 %i.rh, -1                       ; 2 uses
  store i32 %i.ri, ptr %i.rg, align 4, !noalias !571
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.et, label %.body45.i.i

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i) #23
          to label %.body45.i.i unwind label %bb.er, !noalias !571

_RNvCscA5P7HRgTCP_15ide_diagnostics30find_outline_mod_lint_severity.exit.thread.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtB29_3ast9generated5nodes6ModuleENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NvYB3C_NtB3I_7AstNode4castE0E0CscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ItemListEECscA5P7HRgTCP_15ide_diagnostics.exit49.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !583
  br label %bb.eu

_RNvCscA5P7HRgTCP_15ide_diagnostics30find_outline_mod_lint_severity.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit40.sink.split.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEEENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0EEB3x_.exit58.i.i
  %.sroa.0.3.i.i = phi i8 [ %.sroa.0.0.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs8Xq8PKFYOms_3hir9semantics8LintAttrNtCs42xZ1oUXfIG_8smol_str7SmolStrEEENCNvCscA5P7HRgTCP_15ide_diagnostics10lint_attrs0EEB3x_.exit58.i.i ], [ %.sroa.0.3.ph.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit40.sink.split.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !583
  %.not11.i = icmp eq i8 %.sroa.0.3.i.i, -1
  br i1 %.not11.i, label %bb.eu, label %.thread.i

bb.eu:                                            ; preds = %_RNvCscA5P7HRgTCP_15ide_diagnostics30find_outline_mod_lint_severity.exit.i, %_RNvCscA5P7HRgTCP_15ide_diagnostics30find_outline_mod_lint_severity.exit.thread.i
  %.not12.i = icmp eq i8 %i.ls, -1
  br i1 %.not12.i, label %bb.ev, label %.thread.i

.thread.i:                                        ; preds = %bb.eu, %_RNvCscA5P7HRgTCP_15ide_diagnostics30find_outline_mod_lint_severity.exit.i
  %i.rk = phi i8 [ %i.ls, %bb.eu ], [ %.sroa.0.3.i.i, %_RNvCscA5P7HRgTCP_15ide_diagnostics30find_outline_mod_lint_severity.exit.i ]
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ip, i64 110
  store i8 %i.rk, ptr %i.rl, align 2, !noalias !571
  br label %bb.ev

bb.ev:                                            ; preds = %.thread.i, %bb.eu
  %i.rm = icmp eq ptr %i.in, %i.ic
  br i1 %i.rm, label %_RNvCscA5P7HRgTCP_15ide_diagnostics12handle_lints.exit, label %bb.bl

_RNvCscA5P7HRgTCP_15ide_diagnostics12handle_lints.exit: ; preds = %bb.ev, %bb.bk
  invoke void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE6retainNCNvBH_20semantic_diagnosticss3_0EBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.ew unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ew:                                            ; preds = %_RNvCscA5P7HRgTCP_15ide_diagnostics12handle_lints.exit
  invoke void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE10retain_mutNCNvBH_20semantic_diagnosticss4_0EBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 %i.bj)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBL_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEQNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB3l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.ez unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.rn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEQNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB3s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.thread575 unwind label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEQNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB3s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1e_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEQNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEEEB3P_.exit unwind label %bb.ba

bb.fa:                                            ; preds = %bb.ey
  %i.ro = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1e_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEQNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEEEB3P_.exit: ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8Xq8PKFYOms_3hir9semantics9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.bj)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCscA5P7HRgTCP_15ide_diagnostics18DiagnosticsContextEBD_.exit unwind label %bb.v

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCscA5P7HRgTCP_15ide_diagnostics18DiagnosticsContextEBD_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1e_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEQNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEEEB3P_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.rp = load i32, ptr %i.da, align 4, !noundef !12
  %i.rq = add i32 %i.rp, -1                       ; 2 uses
  store i32 %i.rq, ptr %i.da, align 4
  %i.rr = icmp eq i32 %i.rq, 0
  br i1 %i.rr, label %bb.fb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECscA5P7HRgTCP_15ide_diagnostics.exit370

bb.fb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCscA5P7HRgTCP_15ide_diagnostics18DiagnosticsContextEBD_.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cx) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECscA5P7HRgTCP_15ide_diagnostics.exit370 unwind label %bb.q

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECscA5P7HRgTCP_15ide_diagnostics.exit370: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCscA5P7HRgTCP_15ide_diagnostics18DiagnosticsContextEBD_.exit, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.au

bb.fc:                                            ; preds = %bb.sz, %.thread575, %.body387, %bb.u, %bb.sm, %bb.ry, %bb.rc, %bb.qw, %bb.qs, %bb.qk, %bb.qa, %bb.ps, %bb.pg, %bb.ox, %bb.nm, %bb.mt, %bb.mm, %bb.ma, %bb.lt, %bb.lm, %bb.kw, %bb.ke, %bb.jb, %.thread550, %bb.te, %bb.sx, %.body363, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit, %bb.i
  %i.rs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.fd:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers34array_pattern_without_fixed_length34array_pattern_without_fixed_length(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.iw unwind label %bb.iv

bb.fe:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers22await_outside_of_async22await_outside_of_async(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hn)
          to label %bb.jc unwind label %bb.jb

bb.ff:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers21break_outside_of_loop21break_outside_of_loop(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.hn)
          to label %bb.jj unwind label %bb.ji

bb.fg:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers22cannot_be_dereferenced22cannot_be_dereferenced(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hn)
          to label %bb.jl unwind label %bb.jk

bb.fh:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !612
  %i.rt = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.ru = load ptr, ptr %i.bj, align 8, !noalias !612, !nonnull !12, !align !14, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gu, ptr noundef nonnull align 8 dereferenceable(12) %i.fp, i64 12, i1 false), !noalias !612
  store ptr %i.ru, ptr %i.gv, align 8, !noalias !612
  store ptr @20, ptr %i.gw, align 8, !noalias !612
  store ptr %i.rt, ptr %i.gx, align 8, !noalias !612
  store i64 0, ptr %i.ad, align 8, !noalias !612
  store i64 0, ptr %i.gy, align 8, !noalias !612
  store i8 0, ptr %i.ha, align 8, !noalias !612
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.gz, align 8, !noalias !612
  store i8 3, ptr %i.hb, align 4, !noalias !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !612
  store ptr %i.ad, ptr %i.ac, align 8, !noalias !612
  store ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCscA5P7HRgTCP_15ide_diagnostics, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !612
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noundef nonnull @2112, ptr noundef nonnull %i.ac)
          to label %.noexc371 unwind label %bb.jm

.noexc371:                                        ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !612
  invoke void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1j_3ast9generated5nodes4ExprNtB2m_3PatEEE3mapNvYB1e_INtNtCshzWfHUSfYae_4core7convert4IntoINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtB1j_11syntax_node12RustLanguageEE4intoB3U_ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.hn)
          to label %bb.fi unwind label %bb.fl, !noalias !611

bb.fi:                                            ; preds = %.noexc371
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.y, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !619
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl25diagnostics_display_range(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.z, ptr noundef nonnull align 8 %i.gc, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.y)
          to label %bb.jn unwind label %bb.fj, !noalias !620

bb.fj:                                            ; preds = %bb.fi
  %i.rv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #26
          to label %.body372 unwind label %bb.fk, !noalias !620

bb.fk:                                            ; preds = %bb.fj
  %i.rw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !620
  unreachable

bb.fl:                                            ; preds = %.noexc371
  %i.rx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #26
          to label %.body372 unwind label %bb.fm, !noalias !611

bb.fm:                                            ; preds = %bb.fl
  %i.ry = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !611
  unreachable

bb.fn:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17cannot_index_into17cannot_index_into(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hn)
          to label %bb.jp unwind label %bb.jo

bb.fo:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers12invalid_cast15cast_to_unsized(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hn)
          to label %bb.jr unwind label %bb.jq

bb.fp:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !622
  %i.rz = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.sa = load ptr, ptr %i.bj, align 8, !noalias !622, !nonnull !12, !align !14, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gm, ptr noundef nonnull align 8 dereferenceable(12) %i.fp, i64 12, i1 false), !noalias !622
  store ptr %i.sa, ptr %i.gn, align 8, !noalias !622
  store ptr @20, ptr %i.go, align 8, !noalias !622
  store ptr %i.rz, ptr %i.gp, align 8, !noalias !622
  store i64 0, ptr %i.w, align 8, !noalias !622
  store i64 0, ptr %i.gq, align 8, !noalias !622
  store i8 0, ptr %i.gs, align 8, !noalias !622
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.gr, align 8, !noalias !622
  store i8 3, ptr %i.gt, align 4, !noalias !622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !622
  store ptr %i.w, ptr %i.v, align 8, !noalias !622
  store ptr @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCscA5P7HRgTCP_15ide_diagnostics, ptr %.sroa.45.0..sroa_idx.i374, align 8, !noalias !622
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @2110, ptr noundef nonnull %i.v)
          to label %.noexc379 unwind label %bb.js

.noexc379:                                        ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !622
  invoke void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1j_3ast9generated5nodes4ExprNtB2m_3PatEEE3mapNvYB1e_INtNtCshzWfHUSfYae_4core7convert4IntoINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtB1j_11syntax_node12RustLanguageEE4intoB3U_ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.hn)
          to label %bb.fq unwind label %bb.ft, !noalias !621

bb.fq:                                            ; preds = %.noexc379
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !629
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl25diagnostics_display_range(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.s, ptr noundef nonnull align 8 %i.gc, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.r)
          to label %bb.jt unwind label %bb.fr, !noalias !630

bb.fr:                                            ; preds = %bb.fq
  %i.sb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #26
          to label %.body380 unwind label %bb.fs, !noalias !630

bb.fs:                                            ; preds = %bb.fr
  %i.sc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !630
  unreachable

bb.ft:                                            ; preds = %.noexc379
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #26
          to label %.body380 unwind label %bb.fu, !noalias !621

bb.fu:                                            ; preds = %bb.ft
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !621
  unreachable

bb.fv:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17expected_function17expected_function(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hn)
          to label %bb.jv unwind label %bb.ju

bb.fw:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers24explicit_drop_method_use24explicit_drop_method_use(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.hn)
          to label %bb.jx unwind label %bb.jw

bb.fx:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers31fru_in_destructuring_assignment31fru_in_destructuring_assignment(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.jz unwind label %bb.jy

bb.fy:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers38functional_record_update_on_non_struct38functional_record_update_on_non_struct(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.kb unwind label %bb.ka

bb.fz:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers30generic_default_refers_to_self30generic_default_refers_to_self(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.kd unwind label %bb.kc

bb.ga:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers13inactive_code13inactive_code(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.bg, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.hn)
          to label %bb.kf unwind label %bb.ke

bb.gb:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers15incoherent_impl15incoherent_impl(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.kv unwind label %bb.ku

bb.gc:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14incorrect_case14incorrect_case(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.hn)
          to label %bb.kx unwind label %bb.kw

bb.gd:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers22incorrect_generics_len22incorrect_generics_len(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(52) %i.hn)
          to label %bb.kz unwind label %bb.ky

bb.ge:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers24incorrect_generics_order24incorrect_generics_order(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.hn)
          to label %bb.lb unwind label %bb.la

bb.gf:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers22infer_vars_not_allowed22infer_vars_not_allowed(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.ld unwind label %bb.lc

bb.gg:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers12invalid_cast12invalid_cast(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.hn)
          to label %bb.lf unwind label %bb.le

bb.gh:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers21invalid_derive_target21invalid_derive_target(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.hn)
          to label %bb.lh unwind label %bb.lg

bb.gi:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers25invalid_lhs_of_assignment25invalid_lhs_of_assignment(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.lj unwind label %bb.li

bb.gj:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers22invalid_range_pat_type22invalid_range_pat_type(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.ll unwind label %bb.lk

bb.gk:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers11macro_error15macro_def_error(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.hn)
          to label %bb.ln unwind label %bb.lm

bb.gl:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers11macro_error11macro_error(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.hn)
          to label %bb.lu unwind label %bb.lt

bb.gm:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.sf = load ptr, ptr %i.hn, align 8, !nonnull !12, !noundef !12
  %i.sg = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.sh = load i64, ptr %i.sg, align 8, !noundef !12
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.sj = getelementptr inbounds nuw [32 x i8], ptr %i.si, i64 %i.sh
  %i.sk = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store ptr %i.si, ptr %i.bf, align 8
  store ptr %i.sj, ptr %.sroa.4115.0..sroa_idx, align 8
  store i64 16, ptr %.sroa.5116.0..sroa_idx, align 8
  store ptr %i.bj, ptr %i.gk, align 8
  store ptr %i.sk, ptr %i.gl, align 8
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB1L_4take4TakeINtNtNtB1P_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENCNvBI_20semantic_diagnosticss_0EEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.bf)
          to label %bb.mb unwind label %bb.ma

bb.gn:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers16malformed_derive16malformed_derive(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.hn)
          to label %bb.mf unwind label %bb.me

bb.go:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers31method_call_illegal_sized_bound31method_call_illegal_sized_bound(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.mh unwind label %bb.mg

bb.gp:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers20mismatched_arg_count20mismatched_arg_count(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hn)
          to label %bb.mj unwind label %bb.mi

bb.gq:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers20mismatched_arg_count37mismatched_tuple_struct_pat_arg_count(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hn)
          to label %bb.ml unwind label %bb.mk

bb.gr:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields14missing_fields(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.hn)
          to label %bb.mn unwind label %bb.mm

bb.gs:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers18missing_match_arms18missing_match_arms(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hn)
          to label %bb.mu unwind label %bb.mt

bb.gt:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_unsafe14missing_unsafe(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.hn)
          to label %bb.nb unwind label %bb.na

bb.gu:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers16moved_out_of_ref16moved_out_of_ref(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hn)
          to label %bb.nd unwind label %bb.nc

bb.gv:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers22mut_ref_in_imm_ref_pat22mut_ref_in_imm_ref_pat(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.nf unwind label %bb.ne

bb.gw:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers11mutable_ref19mutable_ref_binding(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.nh unwind label %bb.ng

bb.gx:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17mutability_errors8need_mut(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.be, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(56) %i.hn)
          to label %bb.nj unwind label %bb.ni

bb.gy:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers18non_exhaustive_let18non_exhaustive_let(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hn)
          to label %bb.nn unwind label %bb.nm

bb.gz:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers26non_exhaustive_record_expr26non_exhaustive_record_expr(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.nu unwind label %bb.nt

bb.ha:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers25non_exhaustive_record_pat25non_exhaustive_record_pat(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.hn)
          to label %bb.nw unwind label %bb.nv

bb.hb:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers13no_such_field13no_such_field(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(52) %i.hn)
          to label %bb.ny unwind label %bb.nx

bb.hc:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers24mismatched_array_pat_len24mismatched_array_pat_len(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.hn)
          to label %bb.oa unwind label %bb.nz

bb.hd:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers15duplicate_field15duplicate_field(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.hn)
          to label %bb.oc unwind label %bb.ob

bb.he:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers24pattern_arg_in_extern_fn24pattern_arg_in_extern_fn(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.oe unwind label %bb.od

bb.hf:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers18private_assoc_item18private_assoc_item(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.hn)
          to label %bb.og unwind label %bb.of

bb.hg:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers13private_field13private_field(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(40) %i.hn)
          to label %bb.oi unwind label %bb.oh

bb.hh:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers22remove_trailing_return22remove_trailing_return(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ba, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.ok unwind label %bb.oj

bb.hi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else23remove_unnecessary_else(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.az, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.oo unwind label %bb.on

bb.hj:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers15unused_must_use15unused_must_use(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hn)
          to label %bb.os unwind label %bb.or

bb.hk:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers37replace_filter_map_next_with_find_map37replace_filter_map_next_with_find_map(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.ou unwind label %bb.ot

bb.hl:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers27trait_impl_incorrect_safety27trait_impl_incorrect_safety(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.hn)
          to label %bb.ow unwind label %bb.ov

bb.hm:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers29trait_impl_missing_assoc_item29trait_impl_missing_assoc_item(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hn)
          to label %bb.oy unwind label %bb.ox

bb.hn:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17trait_impl_orphan17trait_impl_orphan(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.pf unwind label %bb.pe

bb.ho:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers31trait_impl_redundant_assoc_item31trait_impl_redundant_assoc_item(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hn)
          to label %bb.ph unwind label %bb.pg

bb.hp:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole10typed_hole(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hn)
          to label %bb.pn unwind label %bb.pm

bb.hq:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers13type_mismatch13type_mismatch(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.bd, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hn)
          to label %bb.pp unwind label %bb.po

bb.hr:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers16undeclared_label16undeclared_label(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hn)
          to label %bb.pt unwind label %bb.ps

bb.hs:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers27unimplemented_builtin_macro27unimplemented_builtin_macro(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.pz unwind label %bb.py

bb.ht:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17unreachable_label17unreachable_label(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hn)
          to label %bb.qb unwind label %bb.qa

bb.hu:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers21unresolved_assoc_item21unresolved_assoc_item(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.qh unwind label %bb.qg

bb.hv:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23unresolved_extern_crate23unresolved_extern_crate(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.qj unwind label %bb.qi

bb.hw:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers16unresolved_field16unresolved_field(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.hn)
          to label %bb.ql unwind label %bb.qk

bb.hx:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17unresolved_import17unresolved_import(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.qr unwind label %bb.qq

bb.hy:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers21unresolved_macro_call21unresolved_macro_call(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.hn)
          to label %bb.qt unwind label %bb.qs

bb.hz:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17unresolved_method17unresolved_method(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.hn)
          to label %bb.qx unwind label %bb.qw

bb.ia:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17unresolved_module17unresolved_module(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hn)
          to label %bb.rd unwind label %bb.rc

bb.ib:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers16unresolved_ident16unresolved_ident(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.hn)
          to label %bb.rf unwind label %bb.re

bb.ic:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers17mutability_errors10unused_mut(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.bc, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.hn)
          to label %bb.rh unwind label %bb.rg

bb.id:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers16unused_variables16unused_variables(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.bb, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.hn)
          to label %bb.rl unwind label %bb.rk

bb.ie:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23generic_args_prohibited23generic_args_prohibited(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.hn)
          to label %bb.rp unwind label %bb.ro

bb.if:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers43parenthesized_generic_args_without_fn_trait43parenthesized_generic_args_without_fn_trait(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.rr unwind label %bb.rq

bb.ig:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers7bad_rtn7bad_rtn(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.rt unwind label %bb.rs

bb.ih:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers16missing_lifetime16missing_lifetime(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(44) %i.hn)
          to label %bb.rv unwind label %bb.ru

bb.ii:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers24elided_lifetimes_in_path24elided_lifetimes_in_path(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(48) %i.hn)
          to label %bb.rx unwind label %bb.rw

bb.ij:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers18type_must_be_known18type_must_be_known(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hn)
          to label %bb.rz unwind label %bb.ry

bb.ik:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers38union_expr_must_have_exactly_one_field38union_expr_must_have_exactly_one_field(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.sh unwind label %bb.sg

bb.il:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers37union_pat_must_have_exactly_one_field37union_pat_must_have_exactly_one_field(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.sj unwind label %bb.si

bb.im:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers18union_pat_has_rest18union_pat_has_rest(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.sl unwind label %bb.sk

bb.in:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers19unimplemented_trait19unimplemented_trait(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.hn)
          to label %bb.sn unwind label %bb.sm

bb.io:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23yield_outside_coroutine23yield_outside_coroutine(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.hn)
          to label %bb.su unwind label %bb.st

bb.ip:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !633
  %i.sl = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.sm = load i8, ptr %i.sl, align 4, !range !25, !alias.scope !632, !noundef !12
  %i.sn = trunc nuw i8 %i.sm to i1
  %spec.select.i = select i1 %i.sn, ptr @2106, ptr @2105
  store ptr %spec.select.i, ptr %i.q, align 8, !noalias !633, !captures !30
  store i64 6, ptr %5, align 8, !noalias !633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !633
  store ptr %i.q, ptr %i.o, align 8, !noalias !633
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCscA5P7HRgTCP_15ide_diagnostics, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !633
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @2108, ptr noundef nonnull %i.o)
          to label %.noexc384 unwind label %bb.sv

.noexc384:                                        ; preds = %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !633
  invoke void @_RINvMs6_NtCs33K2ylI4knu_10hir_expand5filesINtB6_13InFileWrapperNtB8_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB1j_3ast9generated5nodes4ExprNtB2m_3PatEEE3mapNCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23return_outside_function23return_outside_function0INtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtB1j_11syntax_node12RustLanguageEEB3k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %i.hn)
          to label %bb.iq unwind label %bb.it, !noalias !631

bb.iq:                                            ; preds = %.noexc384
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !640
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl25diagnostics_display_range(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.l, ptr noundef nonnull align 8 %i.gc, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.k)
          to label %bb.sw unwind label %bb.ir, !noalias !638

bb.ir:                                            ; preds = %bb.iq
  %i.so = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #26
          to label %.body385 unwind label %bb.is, !noalias !638

bb.is:                                            ; preds = %bb.ir
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !638
  unreachable

bb.it:                                            ; preds = %.noexc384
  %i.sq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #26
          to label %.body385 unwind label %bb.iu, !noalias !633

bb.iu:                                            ; preds = %bb.it
  %i.sr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !633
  unreachable

bb.iv:                                            ; preds = %bb.fd
  %i.ss = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.iw:                                            ; preds = %bb.fd
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.ix:                                            ; preds = %bb.rd, %bb.kx, %bb.sw, %bb.su, %bb.ss, %bb.sl, %bb.sj, %bb.sh, %bb.sf, %bb.rx, %bb.rv, %bb.rt, %bb.rr, %bb.rp, %bb.rn, %bb.rj, %bb.rf, %bb.rb, %bb.qv, %bb.qr, %bb.qp, %bb.qj, %bb.qh, %bb.qf, %bb.pz, %bb.px, %bb.pr, %bb.pn, %bb.pl, %bb.pf, %bb.pd, %bb.ow, %bb.ou, %bb.os, %bb.oq, %bb.om, %bb.oi, %bb.og, %bb.oe, %bb.oc, %bb.oa, %bb.ny, %bb.nw, %bb.nu, %bb.ns, %bb.nl, %bb.nh, %bb.nf, %bb.nd, %bb.nb, %bb.mz, %bb.ms, %bb.ml, %bb.mj, %bb.mh, %bb.mf, %bb.lz, %bb.ls, %bb.ll, %bb.lj, %bb.lh, %bb.lf, %bb.ld, %bb.lb, %bb.kz, %bb.kv, %bb.kt, %bb.kd, %bb.kb, %bb.jz, %bb.jx, %bb.jv, %bb.jt, %bb.jr, %bb.jp, %bb.jn, %bb.jl, %bb.jj, %bb.jh, %bb.iw
  %i.st = load i64, ptr %i.cw, align 8, !alias.scope !641, !noundef !12 ; 3 uses
  %i.su = load i64, ptr %i.bo, align 8, !range !27, !alias.scope !641, !noundef !12
  %i.sv = icmp eq i64 %i.st, %i.su
  br i1 %i.sv, label %bb.iy, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE8push_mutBH_.exit

bb.iy:                                            ; preds = %bb.ix
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE8push_mutBH_.exit unwind label %bb.iz, !noalias !642

bb.iz:                                            ; preds = %bb.iy
  %i.sw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ay) #26
          to label %.body387 unwind label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.sx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE8push_mutBH_.exit: ; preds = %bb.ix, %bb.iy
  %i.sy = load ptr, ptr %i.cv, align 8, !alias.scope !641, !nonnull !12, !noundef !12
  %i.sz = getelementptr inbounds nuw [112 x i8], ptr %i.sy, i64 %i.st
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.sz, ptr noundef nonnull align 8 dereferenceable(112) %i.ay, i64 112, i1 false)
  %i.ta = add i64 %i.st, 1
  store i64 %i.ta, ptr %i.cw, align 8, !alias.scope !641
  br label %.backedge

bb.jb:                                            ; preds = %bb.fe
  %i.tb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs8Xq8PKFYOms_3hir11diagnostics19AwaitOutsideOfAsyncEECscA5P7HRgTCP_15ide_diagnostics(ptr %i.hn) #26
          to label %.body387 unwind label %bb.fc

bb.jc:                                            ; preds = %bb.fe
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i.i unwind label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.tc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hn)
          to label %bb.jg unwind label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.td = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.jc
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hn)
          to label %bb.jh unwind label %bb.jf

bb.jf:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.jd
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.te, %bb.jf ], [ %i.tc, %bb.jd ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %.body387

bb.jh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %bb.ix

bb.ji:                                            ; preds = %bb.ff
  %i.tf = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 28, i64 noundef 4) #28
  br label %.body387

bb.jj:                                            ; preds = %bb.ff
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 28, i64 noundef 4) #28
  br label %bb.ix

bb.jk:                                            ; preds = %bb.fg
  %i.tg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %.body387

bb.jl:                                            ; preds = %bb.fg
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %bb.ix

bb.jm:                                            ; preds = %bb.fh
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %.body372

.body372:                                         ; preds = %bb.fj, %bb.fl, %bb.jm
  %eh.lpad-body373 = phi { ptr, i32 } [ %i.th, %bb.jm ], [ %i.rx, %bb.fl ], [ %i.rv, %bb.fj ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %.body387

bb.jn:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !617
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  store i8 0, ptr %i.gd, align 8, !alias.scope !645
  store ptr @2111, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !645
  store i64 5, ptr %.sroa.7.0..sroa_idx.i383, align 8, !alias.scope !645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !alias.scope !646, !noalias !647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ge, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.z, i64 12, i1 false), !alias.scope !648, !noalias !649
  store i8 0, ptr %i.gf, align 2, !alias.scope !650
  store i8 0, ptr %i.gg, align 4, !alias.scope !650
  store i64 -1, ptr %i.gi, align 8, !alias.scope !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.ab, i64 24, i1 false), !alias.scope !651, !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !612
  store i8 0, ptr %i.gh, align 1, !alias.scope !611
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %bb.ix

bb.jo:                                            ; preds = %bb.fn
  %i.ti = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %.body387

bb.jp:                                            ; preds = %bb.fn
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %bb.ix

bb.jq:                                            ; preds = %bb.fo
  %i.tj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %.body387

bb.jr:                                            ; preds = %bb.fo
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %bb.ix

bb.js:                                            ; preds = %bb.fp
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %.body380

.body380:                                         ; preds = %bb.fr, %bb.ft, %bb.js
  %eh.lpad-body381 = phi { ptr, i32 } [ %i.tk, %bb.js ], [ %i.sd, %bb.ft ], [ %i.sb, %bb.fr ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %.body387

bb.jt:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !627
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  store i8 0, ptr %i.gd, align 8, !alias.scope !654
  store ptr @2109, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !654
  store i64 5, ptr %.sroa.7.0..sroa_idx.i383, align 8, !alias.scope !654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.x, i64 24, i1 false), !alias.scope !655, !noalias !656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ge, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.s, i64 12, i1 false), !alias.scope !657, !noalias !658
  store i8 0, ptr %i.gf, align 2, !alias.scope !659
  store i8 0, ptr %i.gg, align 4, !alias.scope !659
  store i64 -1, ptr %i.gi, align 8, !alias.scope !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.u, i64 24, i1 false), !alias.scope !660, !noalias !656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !622
  store i8 0, ptr %i.gh, align 1, !alias.scope !621
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %bb.ix

bb.ju:                                            ; preds = %bb.fv
  %i.tl = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %.body387

bb.jv:                                            ; preds = %bb.fv
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 8) #28
  br label %bb.ix

bb.jw:                                            ; preds = %bb.fw
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 28, i64 noundef 4) #28
  br label %.body387

bb.jx:                                            ; preds = %bb.fw
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 28, i64 noundef 4) #28
  br label %bb.ix

bb.jy:                                            ; preds = %bb.fx
  %i.tn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.jz:                                            ; preds = %bb.fx
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.ka:                                            ; preds = %bb.fy
  %i.to = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.kb:                                            ; preds = %bb.fy
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.kc:                                            ; preds = %bb.fz
  %i.tp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.kd:                                            ; preds = %bb.fz
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.ke:                                            ; preds = %bb.ga
  %i.tq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs8Xq8PKFYOms_3hir11diagnostics12InactiveCodeEECscA5P7HRgTCP_15ide_diagnostics(ptr %i.hn) #26
          to label %.body387 unwind label %bb.fc

bb.kf:                                            ; preds = %bb.ga
  %i.tr = load i64, ptr %i.bg, align 8, !range !22, !noundef !12
  %.not144 = icmp eq i64 %i.tr, -1
  br i1 %.not144, label %bb.km, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ay, ptr noundef nonnull align 8 dereferenceable(112) %i.bg, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.hn)
          to label %bb.ki unwind label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.ts = landingpad { ptr, i32 }
          cleanup
  %i.tt = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.tt)
          to label %bb.kl unwind label %bb.kj

bb.ki:                                            ; preds = %bb.kg
  %i.tu = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.tu)
          to label %bb.kt unwind label %bb.kk

bb.kj:                                            ; preds = %bb.kh
  %i.tv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.kk:                                            ; preds = %bb.ki
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.kh
  %eh.lpad-body.i391 = phi { ptr, i32 } [ %i.tw, %bb.kk ], [ %i.ts, %bb.kh ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 80, i64 noundef 8) #28
  br label %.body387

bb.km:                                            ; preds = %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.hn)
          to label %bb.ko unwind label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.tx = landingpad { ptr, i32 }
          cleanup
  %i.ty = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ty)
          to label %bb.kr unwind label %bb.kp

bb.ko:                                            ; preds = %bb.km
  %i.tz = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.tz)
          to label %bb.ks unwind label %bb.kq

bb.kp:                                            ; preds = %bb.kn
  %i.ua = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.kq:                                            ; preds = %bb.ko
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kn
  %eh.lpad-body.i394 = phi { ptr, i32 } [ %i.ub, %bb.kq ], [ %i.tx, %bb.kn ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 80, i64 noundef 8) #28
  br label %.body387

bb.ks:                                            ; preds = %bb.ko
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 80, i64 noundef 8) #28
  br label %.backedge

.backedge:                                        ; preds = %bb.ks, %bb.md, %bb.nk, %bb.ol, %bb.op, %bb.pq, %bb.ri, %bb.rm, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE8push_mutBH_.exit
  %i.uc = load ptr, ptr %.sroa.627.0..sroa_idx, align 8, !alias.scope !661, !nonnull !12, !noundef !12
  %i.ud = load ptr, ptr %.sroa.426.0..sroa_idx, align 8, !alias.scope !661, !nonnull !12, !noundef !12 ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.uc
  br i1 %i.ue, label %._crit_edge, label %bb.bh

bb.kt:                                            ; preds = %bb.ki
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 80, i64 noundef 8) #28
  br label %bb.ix

bb.ku:                                            ; preds = %bb.gb
  %i.uf = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.kv:                                            ; preds = %bb.gb
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.kw:                                            ; preds = %bb.gc
  %i.ug = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics10decl_check13IncorrectCaseEECscA5P7HRgTCP_15ide_diagnostics(ptr %i.hn) #26
          to label %.body387 unwind label %bb.fc

bb.kx:                                            ; preds = %bb.gc
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics10decl_check13IncorrectCaseEECscA5P7HRgTCP_15ide_diagnostics(ptr %i.hn)
          to label %bb.ix unwind label %bb.bg

bb.ky:                                            ; preds = %bb.gd
  %i.uh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 52, i64 noundef 4) #28
  br label %.body387

bb.kz:                                            ; preds = %bb.gd
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 52, i64 noundef 4) #28
  br label %bb.ix

bb.la:                                            ; preds = %bb.ge
  %i.ui = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 28, i64 noundef 4) #28
  br label %.body387

bb.lb:                                            ; preds = %bb.ge
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 28, i64 noundef 4) #28
  br label %bb.ix

bb.lc:                                            ; preds = %bb.gf
  %i.uj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.ld:                                            ; preds = %bb.gf
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.le:                                            ; preds = %bb.gg
  %i.uk = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 80, i64 noundef 8) #28
  br label %.body387
end_hunk_1
begin_hunk_2_@_RNvCscA5P7HRgTCP_15ide_diagnostics20semantic_diagnostics:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 32, i64 noundef 4) #28
  br label %.backedge

bb.rn:                                            ; preds = %bb.rl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ay, ptr noundef nonnull align 8 dereferenceable(112) %i.bb, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 32, i64 noundef 4) #28
  br label %bb.ix

bb.ro:                                            ; preds = %bb.ie
  %i.zg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 28, i64 noundef 4) #28
  br label %.body387

bb.rp:                                            ; preds = %bb.ie
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 28, i64 noundef 4) #28
  br label %bb.ix

bb.rq:                                            ; preds = %bb.if
  %i.zh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.rr:                                            ; preds = %bb.if
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.rs:                                            ; preds = %bb.ig
  %i.zi = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.rt:                                            ; preds = %bb.ig
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.ru:                                            ; preds = %bb.ih
  %i.zj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 44, i64 noundef 4) #28
  br label %.body387

bb.rv:                                            ; preds = %bb.ih
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 44, i64 noundef 4) #28
  br label %bb.ix

bb.rw:                                            ; preds = %bb.ii
  %i.zk = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 4) #28
  br label %.body387

bb.rx:                                            ; preds = %bb.ii
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 48, i64 noundef 4) #28
  br label %bb.ix

bb.ry:                                            ; preds = %bb.ij
  %i.zl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs8Xq8PKFYOms_3hir11diagnostics15TypeMustBeKnownEECscA5P7HRgTCP_15ide_diagnostics(ptr nonnull %i.hn) #26
          to label %.body387 unwind label %bb.fc

bb.rz:                                            ; preds = %bb.ij
  %i.zm = load i64, ptr %i.hn, align 8, !range !23, !alias.scope !662, !noundef !12
  %i.zn = icmp eq i64 %i.zm, 1
  br i1 %i.zn, label %bb.sa, label %bb.sf

bb.sa:                                            ; preds = %bb.rz
  %i.zo = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zo)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i unwind label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.zp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zo)
          to label %bb.se unwind label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.zq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i: ; preds = %bb.sa
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zo)
          to label %bb.sf unwind label %bb.sd

bb.sd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i
  %i.zr = landingpad { ptr, i32 }
          cleanup
  br label %bb.se

bb.se:                                            ; preds = %bb.sd, %bb.sb
  %eh.lpad-body.i454 = phi { ptr, i32 } [ %i.zr, %bb.sd ], [ %i.zp, %bb.sb ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 56, i64 noundef 8) #28
  br label %.body387

bb.sf:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i, %bb.rz
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 56, i64 noundef 8) #28
  br label %bb.ix

bb.sg:                                            ; preds = %bb.ik
  %i.zs = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.sh:                                            ; preds = %bb.ik
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.si:                                            ; preds = %bb.il
  %i.zt = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.sj:                                            ; preds = %bb.il
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.sk:                                            ; preds = %bb.im
  %i.zu = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.sl:                                            ; preds = %bb.im
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.sm:                                            ; preds = %bb.in
  %i.zv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs8Xq8PKFYOms_3hir11diagnostics18UnimplementedTraitEECscA5P7HRgTCP_15ide_diagnostics(ptr %i.hn) #26
          to label %.body387 unwind label %bb.fc

bb.sn:                                            ; preds = %bb.in
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir14TraitPredicateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.hn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir14TraitPredicateEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i unwind label %bb.so

bb.so:                                            ; preds = %bb.sn
  %i.zw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir14TraitPredicateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.hn)
          to label %bb.sr unwind label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.zx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir14TraitPredicateEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.sn
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir14TraitPredicateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.hn)
          to label %bb.ss unwind label %bb.sq

bb.sq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir14TraitPredicateEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  %i.zy = landingpad { ptr, i32 }
          cleanup
  br label %bb.sr

bb.sr:                                            ; preds = %bb.sq, %bb.so
  %eh.lpad-body.i457 = phi { ptr, i32 } [ %i.zy, %bb.sq ], [ %i.zw, %bb.so ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 88, i64 noundef 8) #28
  br label %.body387

bb.ss:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir14TraitPredicateEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 88, i64 noundef 8) #28
  br label %bb.ix

bb.st:                                            ; preds = %bb.io
  %i.zz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %.body387

bb.su:                                            ; preds = %bb.io
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 24, i64 noundef 4) #28
  br label %bb.ix

bb.sv:                                            ; preds = %bb.ip
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %.body385

.body385:                                         ; preds = %bb.ir, %bb.it, %bb.sv
  %eh.lpad-body386 = phi { ptr, i32 } [ %i.aaa, %bb.sv ], [ %i.sq, %bb.it ], [ %i.so, %bb.ir ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 28, i64 noundef 4) #28
  br label %.body387

bb.sw:                                            ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !638
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  store i8 0, ptr %i.gd, align 8, !alias.scope !665
  store ptr @2107, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !665
  store i64 5, ptr %.sroa.7.0..sroa_idx.i383, align 8, !alias.scope !665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.p, i64 24, i1 false), !alias.scope !666, !noalias !632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ge, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.l, i64 12, i1 false), !alias.scope !667, !noalias !668
  store i8 0, ptr %i.gf, align 2, !alias.scope !669
  store i8 0, ptr %i.gg, align 4, !alias.scope !669
  store i8 1, ptr %i.gh, align 1, !alias.scope !669
  store i64 -1, ptr %i.gi, align 8, !alias.scope !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.n, i64 24, i1 false), !alias.scope !670, !noalias !632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !633
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef 28, i64 noundef 4) #28
  br label %bb.ix

.thread575:                                       ; preds = %.body387, %.body363, %bb.ey, %bb.ba, %bb.sx
  %.pn.pn574 = phi { ptr, i32 } [ %i.rn, %bb.ey ], [ %lpad.thr_comm, %bb.sx ], [ %lpad.thr_comm.split-lp, %bb.ba ], [ %eh.lpad-body364, %.body363 ], [ %.pn, %.body387 ]
  %.sroa.0118.4573 = phi i8 [ 0, %bb.ey ], [ 1, %bb.sx ], [ %.sroa.0118.5.ph, %bb.ba ], [ 1, %.body363 ], [ 1, %.body387 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8Xq8PKFYOms_3hir9semantics9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.bj)
          to label %.body unwind label %bb.fc

bb.sx:                                            ; preds = %bb.bf, %bb.az, %bb.ay, %bb.bc, %bb.bb
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8Xq8PKFYOms_3hir11diagnostics13AnyDiagnosticEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bi) #26
          to label %.thread575 unwind label %bb.fc

bb.sy:                                            ; preds = %bb.tb, %bb.ta, %bb.z
  %i.aab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.dm, i64 48 ; 2 uses
  %i.aad = load i32, ptr %i.aac, align 4, !noundef !12
  %i.aae = add i32 %i.aad, -1                     ; 2 uses
  store i32 %i.aae, ptr %i.aac, align 4
  %i.aaf = icmp eq i32 %i.aae, 0
  br i1 %i.aaf, label %bb.sz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.sz:                                            ; preds = %bb.sy
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dm) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.fc

bb.ta:                                            ; preds = %bb.z
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers15field_shorthand15field_shorthand(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo, i32 noundef %i.cp, i32 noundef %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bm)
          to label %bb.tb unwind label %bb.sy

bb.tb:                                            ; preds = %bb.ta
  invoke void @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers16json_is_not_rust13json_in_items(ptr noundef nonnull align 8 %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo, i32 noundef %i.cp, i32 noundef %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i8 noundef %i.cu)
          to label %bb.tc unwind label %bb.sy

bb.tc:                                            ; preds = %bb.tb
  %i.aag = getelementptr inbounds nuw i8, ptr %i.dm, i64 48 ; 2 uses
  %i.aah = load i32, ptr %i.aag, align 4, !noundef !12
  %i.aai = add i32 %i.aah, -1                     ; 2 uses
  store i32 %i.aai, ptr %i.aag, align 4
  %i.aaj = icmp eq i32 %i.aai, 0
  br i1 %i.aaj, label %bb.td, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit464

bb.td:                                            ; preds = %bb.tc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dm) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit464 unwind label %.loopexit.split-lp616.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit464: ; preds = %bb.tc, %bb.td
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.w

bb.te:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECscA5P7HRgTCP_15ide_diagnostics.exit
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo) #26
          to label %bb.l unwind label %bb.fc

.thread550:                                       ; preds = %bb.ar, %bb.m, %bb.l
  %.pn147.pn.pn.pn553 = phi { ptr, i32 } [ %.pn147.pn.pn, %bb.l ], [ %i.co, %bb.m ], [ %i.fh, %bb.ar ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8Xq8PKFYOms_3hir9semantics9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(272) %i.bp) #26
          to label %bb.i unwind label %bb.fc
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !682 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.02.0.copyload = load i32, ptr %i.d, align 8
  %i.e = trunc i32 %.sroa.02.0.copyload to i1
  br i1 %i.e, label %bb.b, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_B1p_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1r_3mapNtB4f_7SpanMap15spans_for_ranges0_0NCINvNvB1R_3any5checkB1p_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B3t_EB5r_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.53.0.copyload = load i32, ptr %.sroa.53.0..sroa_idx, align 4
  %i.f = load ptr, ptr %0, align 8, !nonnull !12, !align !14, !noundef !12
  %i.g = tail call noundef nonnull align 8 ptr @_RNvMs1_NtCs33K2ylI4knu_10hir_expand8span_mapNtB7_11MacroCallId18expansion_span_map(i32 noundef %.sroa.53.0.copyload, i32 noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @2)
  %i.h = tail call { i32, i32 } @_RNvMsl_NtCs33K2ylI4knu_10hir_expand5filesINtB5_13InFileWrapperNtB7_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE10text_rangeCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = extractvalue { i32, i32 } %i.h, 1
  %i.k = tail call { ptr, ptr } @_RNvMNtCsdovh4xi6v3I_4span3mapNtB2_7SpanMap15spans_for_range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i32 noundef %i.i, i32 noundef %i.j) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !nonnull !12, !align !14, !noundef !12 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %.not13.i = icmp eq ptr %i.l, %i.m
  br i1 %.not13.i, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_B1p_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1r_3mapNtB4f_7SpanMap15spans_for_ranges0_0NCINvNvB1R_3any5checkB1p_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B3t_EB5r_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEB1G_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1I_3mapNtB2Y_7SpanMap15spans_for_ranges0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1G_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B4E_.exit.backedge.i
  %i.o = phi ptr [ %i.p, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEB1G_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1I_3mapNtB2Y_7SpanMap15spans_for_ranges0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1G_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B4E_.exit.backedge.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !684, !noalias !685
  %i.q = call { i32, i32 } @_RINvMsa_NvNtCsdovh4xi6v3I_4span7hygiene1__NtB8_13SyntaxContext10outer_expnNtCs6oosyzwIepl_6ide_db12RootDatabaseECscA5P7HRgTCP_15ide_diagnostics(i32 noundef %.sroa.4.0.copyload.i.i, ptr noundef nonnull align 8 %i.n), !noalias !686 ; 2 uses
  %i.r = extractvalue { i32, i32 } %i.q, 0        ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEB1G_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1I_3mapNtB2Y_7SpanMap15spans_for_ranges0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1G_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B4E_.exit.backedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = extractvalue { i32, i32 } %i.q, 1
  %i.t = call noundef nonnull align 8 ptr @_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_ECscA5P7HRgTCP_15ide_diagnostics(i32 noundef range(i32 1, 0) %i.r, i32 noundef %i.s, ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @20), !noalias !686 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !686
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load i32, ptr %i.u, align 8, !range !15, !noalias !686, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 76
  %i.x = load i32, ptr %i.w, align 4, !noalias !686, !noundef !12
  call void @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate6origin(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, i32 noundef %i.v, i32 noundef %i.x, ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @20), !noalias !686
  %i.y = load i8, ptr %i.c, align 8, !range !18, !noalias !686, !noundef !12
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %.split.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEB1G_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1I_3mapNtB2Y_7SpanMap15spans_for_ranges0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1G_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B4E_.exit.thread.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEB1G_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1I_3mapNtB2Y_7SpanMap15spans_for_ranges0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1G_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B4E_.exit.thread.i: ; preds = %bb.c
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input11CrateOriginECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c), !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !686
  br label %.loopexit

.split.i:                                         ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input11CrateOriginECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c), !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !686
  %i.ab = load i32, ptr %i.aa, align 8, !range !687, !noalias !686, !noundef !12
  %.not.i = icmp eq i32 %i.ab, 2
  br i1 %.not.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEB1G_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1I_3mapNtB2Y_7SpanMap15spans_for_ranges0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1G_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B4E_.exit.backedge.i, label %.loopexit

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEB1G_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1I_3mapNtB2Y_7SpanMap15spans_for_ranges0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1G_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B4E_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
  %.not14.i = icmp eq ptr %i.p, %i.m
  br i1 %.not14.i, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_B1p_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1r_3mapNtB4f_7SpanMap15spans_for_ranges0_0NCINvNvB1R_3any5checkB1p_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B3t_EB5r_.exit, label %.lr.ph.i

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_B1p_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1r_3mapNtB4f_7SpanMap15spans_for_ranges0_0NCINvNvB1R_3any5checkB1p_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B3t_EB5r_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEB1G_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1I_3mapNtB2Y_7SpanMap15spans_for_ranges0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1G_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B4E_.exit.backedge.i, %bb.b, %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetReNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE5force0ECscA5P7HRgTCP_15ide_diagnostics.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEEECscA5P7HRgTCP_15ide_diagnostics.exit, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEEECscA5P7HRgTCP_15ide_diagnostics.exit ], [ %i.ar, %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetReNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE5force0ECscA5P7HRgTCP_15ide_diagnostics.exit ], [ true, %bb.b ], [ true, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEB1G_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1I_3mapNtB2Y_7SpanMap15spans_for_ranges0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1G_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B4E_.exit.backedge.i ]
  ret i1 %.sroa.0.0

.loopexit:                                        ; preds = %.split.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEB1G_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1I_3mapNtB2Y_7SpanMap15spans_for_ranges0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1G_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B4E_.exit.thread.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !22, !alias.scope !688, !noundef !12
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEEECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEECscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6oosyzwIepl_6ide_db7assists6AssistENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEECscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6oosyzwIepl_6ide_db7assists6AssistENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEEECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEECscA5P7HRgTCP_15ide_diagnostics.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.af, %bb.e ]
  store i64 -1, ptr %i.ac, align 8
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %.loopexit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEECscA5P7HRgTCP_15ide_diagnostics.exit.i
  store i64 -1, ptr %i.ac, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load i8, ptr %i.ai, align 8, !range !17, !noundef !12
  %i.ak = icmp eq i8 %i.aj, 2
  br i1 %i.ak, label %bb.h, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_B1p_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1r_3mapNtB4f_7SpanMap15spans_for_ranges0_0NCINvNvB1R_3any5checkB1p_NCNvCscA5P7HRgTCP_15ide_diagnostics23handle_diag_from_macros0E0E0B3t_EB5r_.exit

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEEECscA5P7HRgTCP_15ide_diagnostics.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !12, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ao = load i64, ptr %i.an, align 8, !noundef !12
  %i.ap = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics34LINTS_TO_REPORT_IN_EXTERNAL_MACROS, i64 32) acquire, align 8
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtNtBa_11collections4hash3set7HashSetReNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE5force0ECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics34LINTS_TO_REPORT_IN_EXTERNAL_MACROS, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCscA5P7HRgTCP_15ide_diagnostics34LINTS_TO_REPORT_IN_EXTERNAL_MACROS, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_2
