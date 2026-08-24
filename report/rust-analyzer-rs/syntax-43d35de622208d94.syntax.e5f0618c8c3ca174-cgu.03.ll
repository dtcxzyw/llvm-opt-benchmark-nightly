Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syntax-43d35de622208d94.syntax.e5f0618c8c3ca174-cgu.03?download=true
inline.NumInlined: 564
inline.NumDeleted: 243
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits:bb.a
  %.sroa.035.0.val319 = load ptr, ptr %.sroa.035.0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %.sroa.035.0.val319, i64 48 ; 2 uses
  %i.aps = load i32, ptr %i.apr, align 4, !noundef !4
  %i.apt = add i32 %i.aps, -1                     ; 2 uses
  store i32 %i.apt, ptr %i.apr, align 4
  %i.apu = icmp eq i32 %i.apt, 0
  br i1 %i.apu, label %bb.nr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit774

bb.nr:                                            ; preds = %bb.nq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.035.0.val319) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit774 unwind label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.apv = landingpad { ptr, i32 }
          cleanup
  store ptr %i.apq, ptr %.sroa.035.0, align 8
  br label %.body872

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit774: ; preds = %bb.nq, %bb.nr
  store ptr %i.apq, ptr %.sroa.035.0, align 8
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit767.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEB1G_.exit772: ; preds = %bb.nk, %bb.no
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  %i.apw = invoke noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode13clone_subtree(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.035.0)
          to label %bb.nt unwind label %.loopexit.split-lp1281.loopexit.split-lp.loopexit ; 5 uses

bb.nt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEB1G_.exit772
  store ptr %i.apw, ptr %i.cv, align 8
  %i.apx = invoke noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode16clone_for_update(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv)
          to label %bb.nx unwind label %bb.nw     ; 2 uses

bb.nu:                                            ; preds = %bb.nz, %bb.nw
  %.pn263 = phi { ptr, i32 } [ %i.aqh, %bb.nz ], [ %i.aqc, %bb.nw ] ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apw, i64 48 ; 2 uses
  %i.apz = load i32, ptr %i.apy, align 4, !noundef !4
  %i.aqa = add i32 %i.apz, -1                     ; 2 uses
  store i32 %i.aqa, ptr %i.apy, align 4
  %i.aqb = icmp eq i32 %i.aqa, 0
  br i1 %i.aqb, label %bb.nv, label %.body872

bb.nv:                                            ; preds = %bb.nu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.apw) #26
          to label %.body872 unwind label %bb.fu

bb.nw:                                            ; preds = %bb.nt
  %i.aqc = landingpad { ptr, i32 }
          cleanup
  br label %bb.nu

bb.nx:                                            ; preds = %bb.nt
  %.sroa.035.0.val = load ptr, ptr %.sroa.035.0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %.sroa.035.0.val, i64 48 ; 2 uses
  %i.aqe = load i32, ptr %i.aqd, align 4, !noundef !4
  %i.aqf = add i32 %i.aqe, -1                     ; 2 uses
  store i32 %i.aqf, ptr %i.aqd, align 4
  %i.aqg = icmp eq i32 %i.aqf, 0
  br i1 %i.aqg, label %bb.ny, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit778

bb.ny:                                            ; preds = %bb.nx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.035.0.val) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit778 unwind label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.aqh = landingpad { ptr, i32 }
          cleanup
  store ptr %i.apx, ptr %.sroa.035.0, align 8
  br label %bb.nu

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit778: ; preds = %bb.nx, %bb.ny
  store ptr %i.apx, ptr %.sroa.035.0, align 8
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.apw, i64 48 ; 2 uses
  %i.aqj = load i32, ptr %i.aqi, align 4, !noundef !4
  %i.aqk = add i32 %i.aqj, -1                     ; 2 uses
  store i32 %i.aqk, ptr %i.aqi, align 4
  %i.aql = icmp eq i32 %i.aqk, 0
  br i1 %i.aql, label %bb.oa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit780

bb.oa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit778
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.apw) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit780 unwind label %.loopexit.split-lp1281.loopexit.split-lp.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit780: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit778, %bb.oa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit767.thread

bb.ob:                                            ; preds = %bb.nm
  %i.aqm = add nuw i32 %i.apc, 1
  store i32 %i.aqm, ptr %i.apb, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store ptr %.val296, ptr %i.cu, align 8
  %i.aqn = load ptr, ptr %.sroa.045.0, align 8, !nonnull !4, !noundef !4
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 52
  %i.aqp = load i32, ptr %i.aqo, align 4, !noundef !4 ; 2 uses
  %i.aqq = zext i32 %i.aqp to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  %i.aqr = invoke noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode13clone_subtree(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %bb.oe unwind label %bb.od     ; 5 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit784: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit, %bb.oj, %bb.of, %bb.og, %bb.od
  %.pn272.pn.pn = phi { ptr, i32 } [ %i.aqx, %bb.of ], [ %i.aqv, %bb.od ], [ %i.aqx, %bb.og ], [ %.pn272.pn, %bb.oj ], [ %.pn272.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit ] ; 2 uses
  %i.aqs = load i32, ptr %i.apb, align 4, !noundef !4
  %i.aqt = add i32 %i.aqs, -1                     ; 2 uses
  store i32 %i.aqt, ptr %i.apb, align 4
  %i.aqu = icmp eq i32 %i.aqt, 0
  br i1 %i.aqu, label %bb.oc, label %.body872

bb.oc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit784
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val296) #26
          to label %.body872 unwind label %bb.fu

bb.od:                                            ; preds = %bb.ow, %bb.ob
  %i.aqv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit784

bb.oe:                                            ; preds = %bb.ob
  store ptr %i.aqr, ptr %i.ct, align 8
  %i.aqw = invoke noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode16clone_for_update(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %bb.oh unwind label %bb.of     ; 5 uses

bb.of:                                            ; preds = %bb.oe
  %i.aqx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqr, i64 48 ; 2 uses
  %i.aqz = load i32, ptr %i.aqy, align 4, !noundef !4
  %i.ara = add i32 %i.aqz, -1                     ; 2 uses
  store i32 %i.ara, ptr %i.aqy, align 4
  %i.arb = icmp eq i32 %i.ara, 0
  br i1 %i.arb, label %bb.og, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit784

bb.og:                                            ; preds = %bb.of
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aqr) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit784 unwind label %bb.fu

bb.oh:                                            ; preds = %bb.oe
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqr, i64 48 ; 2 uses
  %i.ard = load i32, ptr %i.arc, align 4, !noundef !4
  %i.are = add i32 %i.ard, -1                     ; 2 uses
  store i32 %i.are, ptr %i.arc, align 4
  %i.arf = icmp eq i32 %i.are, 0
  br i1 %i.arf, label %bb.oi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit786

bb.oi:                                            ; preds = %bb.oh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aqr) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit786 unwind label %.loopexit1306

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit: ; preds = %.loopexit1306, %.loopexit.split-lp1307, %bb.on, %.loopexit.split-lp1287, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i
  %.pn272.pn = phi { ptr, i32 } [ %.pn272, %bb.on ], [ %.pn272, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i ], [ %.pn272, %.loopexit.split-lp1287 ], [ %lpad.loopexit1308, %.loopexit1306 ], [ %lpad.loopexit.split-lp1309, %.loopexit.split-lp1307 ] ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqw, i64 48 ; 2 uses
  %i.arh = load i32, ptr %i.arg, align 4, !noundef !4
  %i.ari = add i32 %i.arh, -1                     ; 2 uses
  store i32 %i.ari, ptr %i.arg, align 4
  %i.arj = icmp eq i32 %i.ari, 0
  br i1 %i.arj, label %bb.oj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit784

bb.oj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aqw) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit784 unwind label %bb.fu

.loopexit1306:                                    ; preds = %bb.oi, %bb.ok, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i803
  %lpad.loopexit1308 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit

.loopexit.split-lp1307:                           ; preds = %bb.ol
  %lpad.loopexit.split-lp1309 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit786: ; preds = %bb.oh, %bb.oi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqw, i64 48 ; 4 uses
  %i.arl = load i32, ptr %i.ark, align 4, !noundef !4 ; 2 uses
  %i.arm = icmp eq i32 %i.arl, -1
  br i1 %i.arm, label %bb.ol, label %bb.ok, !prof !15

bb.ok:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit786
  %i.arn = add nuw i32 %i.arl, 1
  store i32 %i.arn, ptr %i.ark, align 4
  %i.aro = invoke { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %i.aqw)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit unwind label %.loopexit1306 ; 2 uses

bb.ol:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit786
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #30
          to label %.noexc790 unwind label %.loopexit.split-lp1307

.noexc790:                                        ; preds = %bb.ol
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit: ; preds = %bb.ok
  %i.arp = extractvalue { i64, ptr } %i.aro, 0
  %i.arq = extractvalue { i64, ptr } %i.aro, 1
  store i64 %i.arp, ptr %i.cs, align 8
  store ptr %i.arq, ptr %i.px, align 8
  %.not266 = icmp eq i32 %i.aqp, 0
  br i1 %.not266, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit.thread, label %.preheader1285

.preheader1285:                                   ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit, %_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i
  %.sroa.01.0.i791 = phi i64 [ %i.ary, %_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i ], [ %i.aqq, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit ] ; 2 uses
  %i.arr = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cs)
          to label %.noexc795 unwind label %.loopexit1286 ; 2 uses

.noexc795:                                        ; preds = %.preheader1285
  %i.ars = extractvalue { i64, ptr } %i.arr, 0
  %.not.i792 = icmp eq i64 %i.ars, 2
  br i1 %.not.i792, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit, label %bb.om

bb.om:                                            ; preds = %.noexc795
  %i.art = extractvalue { i64, ptr } %i.arr, 1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.art) ]
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 48 ; 2 uses
  %i.arv = load i32, ptr %i.aru, align 4, !noundef !4
  %i.arw = add i32 %i.arv, -1                     ; 2 uses
  store i32 %i.arw, ptr %i.aru, align 4
  %i.arx = icmp eq i32 %i.arw, 0
  br i1 %i.arx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i794, label %_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i794: ; preds = %bb.om
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.art) #26
          to label %_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i unwind label %.loopexit1286

_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i794, %bb.om
  %i.ary = add nsw i64 %.sroa.01.0.i791, -1       ; 2 uses
  %i.arz = icmp eq i64 %i.ary, 0
  br i1 %i.arz, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit.thread, label %.preheader1285

.loopexit.split-lp1287:                           ; preds = %.loopexit1286, %.loopexit.split-lp1287.loopexit.split-lp, %.loopexit.split-lp1287.loopexit, %bb.ou
  %.pn272 = phi { ptr, i32 } [ %i.asr, %bb.ou ], [ %lpad.loopexit1288, %.loopexit1286 ], [ %lpad.loopexit1311, %.loopexit.split-lp1287.loopexit ], [ %lpad.loopexit.split-lp1312, %.loopexit.split-lp1287.loopexit.split-lp ] ; 3 uses
  %.val410 = load i64, ptr %i.cs, align 8, !range !149, !noundef !4
  %.val411 = load ptr, ptr %i.px, align 8         ; 3 uses
  %i.asa = icmp eq i64 %.val410, 2
  br i1 %i.asa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit, label %bb.on

bb.on:                                            ; preds = %.loopexit.split-lp1287
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val411) ]
  %i.asb = getelementptr inbounds nuw i8, ptr %.val411, i64 48 ; 2 uses
  %i.asc = load i32, ptr %i.asb, align 4, !noundef !4
  %i.asd = add i32 %i.asc, -1                     ; 2 uses
  store i32 %i.asd, ptr %i.asb, align 4
  %i.ase = icmp eq i32 %i.asd, 0
  br i1 %i.ase, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i: ; preds = %bb.on
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val411) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit unwind label %bb.fu

.loopexit1286:                                    ; preds = %.preheader1285, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i794
  %lpad.loopexit1288 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1287

.loopexit.split-lp1287.loopexit:                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i799, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit.thread
  %lpad.loopexit1311 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1287

.loopexit.split-lp1287.loopexit.split-lp:         ; preds = %bb.oq
  %lpad.loopexit.split-lp1312 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1287

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit: ; preds = %.noexc795
  %.not267 = icmp eq i64 %.sroa.01.0.i791, 0
  br i1 %.not267, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit.thread, label %bb.oq, !prof !591

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit.thread: ; preds = %_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit
  %i.asf = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cs)
          to label %bb.oo unwind label %.loopexit.split-lp1287.loopexit ; 2 uses

bb.oo:                                            ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit.thread
  %i.asg = extractvalue { i64, ptr } %i.asf, 0    ; 2 uses
  %i.ash = extractvalue { i64, ptr } %i.asf, 1    ; 4 uses
  %.not268 = icmp eq i64 %i.asg, 2
  br i1 %.not268, label %bb.oq, label %bb.op, !prof !15

bb.op:                                            ; preds = %bb.oo
  %i.asi = trunc nuw i64 %i.asg to i1             ; 2 uses
  %.290 = select i1 %i.asi, ptr %i.ash, ptr null  ; 3 uses
  br i1 %i.asi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit801, label %bb.or

bb.oq:                                            ; preds = %bb.oo, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit801
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #30
          to label %bb.hh unwind label %.loopexit.split-lp1287.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit801: ; preds = %bb.or, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i799, %bb.op
  %.not269 = icmp eq ptr %.290, null
  br i1 %.not269, label %bb.oq, label %bb.os, !prof !15

bb.or:                                            ; preds = %bb.op
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ash) ]
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ash, i64 48 ; 2 uses
  %i.ask = load i32, ptr %i.asj, align 4, !noundef !4
  %i.asl = add i32 %i.ask, -1                     ; 2 uses
  store i32 %i.asl, ptr %i.asj, align 4
  %i.asm = icmp eq i32 %i.asl, 0
  br i1 %i.asm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i799, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit801

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i799: ; preds = %bb.or
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ash) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit801 unwind label %.loopexit.split-lp1287.loopexit

bb.os:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit801
  %.sroa.045.0.val = load ptr, ptr %.sroa.045.0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.sroa.045.0.val, i64 48 ; 2 uses
  %i.aso = load i32, ptr %i.asn, align 4, !noundef !4
  %i.asp = add i32 %i.aso, -1                     ; 2 uses
  store i32 %i.asp, ptr %i.asn, align 4
  %i.asq = icmp eq i32 %i.asp, 0
  br i1 %i.asq, label %bb.ot, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1l_.exit

bb.ot:                                            ; preds = %bb.os
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.045.0.val) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1l_.exit unwind label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.asr = landingpad { ptr, i32 }
          cleanup
  store ptr %.290, ptr %.sroa.045.0, align 8
  br label %.loopexit.split-lp1287

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1l_.exit: ; preds = %bb.os, %bb.ot
  store ptr %.290, ptr %.sroa.045.0, align 8
  %.val408 = load i64, ptr %i.cs, align 8, !range !149, !noundef !4
  %.val409 = load ptr, ptr %i.px, align 8         ; 3 uses
  %i.ass = icmp eq i64 %.val408, 2
  br i1 %i.ass, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit805, label %bb.ov

bb.ov:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1l_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val409) ]
  %i.ast = getelementptr inbounds nuw i8, ptr %.val409, i64 48 ; 2 uses
  %i.asu = load i32, ptr %i.ast, align 4, !noundef !4
  %i.asv = add i32 %i.asu, -1                     ; 2 uses
  store i32 %i.asv, ptr %i.ast, align 4
  %i.asw = icmp eq i32 %i.asv, 0
  br i1 %i.asw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i803, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit805

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i803: ; preds = %bb.ov
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val409) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit805 unwind label %.loopexit1306

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit805: ; preds = %bb.ov, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1l_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  %i.asx = load i32, ptr %i.ark, align 4, !noundef !4
  %i.asy = add i32 %i.asx, -1                     ; 2 uses
  store i32 %i.asy, ptr %i.ark, align 4
  %i.asz = icmp eq i32 %i.asy, 0
  br i1 %i.asz, label %bb.ow, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit807

bb.ow:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit805
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aqw) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit807 unwind label %bb.od

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit807: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit805, %bb.ow
  %i.ata = load i32, ptr %i.apb, align 4, !noundef !4
  %i.atb = add i32 %i.ata, -1                     ; 2 uses
  store i32 %i.atb, ptr %i.apb, align 4
  %i.atc = icmp eq i32 %i.atb, 0
  br i1 %i.atc, label %bb.ox, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit809

bb.ox:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit807
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val296) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit809 unwind label %.loopexit.split-lp1281.loopexit.split-lp.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit809: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit807, %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit767.thread

.lr.ph2141:                                       ; preds = %bb.nn, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit812.thread
  %.sroa.059.02139 = phi ptr [ %i.atd, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit812.thread ], [ %i.apg, %bb.nn ] ; 3 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %.sroa.059.02139, i64 16 ; 2 uses
  %i.ate = load i64, ptr %.sroa.059.02139, align 8, !range !142, !noundef !4
  %i.atf = getelementptr inbounds nuw i8, ptr %.sroa.059.02139, i64 8 ; 13 uses
  %i.atg = trunc nuw i64 %i.ate to i1
  %i.ath = load ptr, ptr %i.atf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ati = getelementptr i8, ptr %i.ath, i64 16
  %.val295 = load ptr, ptr %i.ati, align 8, !noundef !4 ; 7 uses
  %.not.i810 = icmp eq ptr %.val295, null         ; 2 uses
  br i1 %i.atg, label %bb.oy, label %bb.pa

bb.oy:                                            ; preds = %.lr.ph2141
  br i1 %.not.i810, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit812.thread, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.atj = getelementptr inbounds nuw i8, ptr %.val295, i64 48 ; 6 uses
  %i.atk = load i32, ptr %i.atj, align 4, !noundef !4 ; 2 uses
  %i.atl = icmp eq i32 %i.atk, -1
  br i1 %i.atl, label %.invoke3835, label %bb.pp, !prof !15

bb.pa:                                            ; preds = %.lr.ph2141
  br i1 %.not.i810, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEB1G_.exit818, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.atm = getelementptr inbounds nuw i8, ptr %.val295, i64 48
  %i.atn = load i32, ptr %i.atm, align 4, !noundef !4
  switch i32 %i.atn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEB1G_.exit821 [
    i32 -1, label %.invoke3835
    i32 0, label %bb.pc
  ], !prof !590

bb.pc:                                            ; preds = %bb.pb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val295) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEB1G_.exit821 unwind label %.loopexit.split-lp1281.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEB1G_.exit818: ; preds = %bb.pa
  %i.ato = getelementptr inbounds nuw i8, ptr %i.ath, i64 60
  %i.atp = load i8, ptr %i.ato, align 4, !range !13, !noundef !4
  %i.atq = trunc nuw i8 %i.atp to i1
  br i1 %i.atq, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit812.thread, label %bb.pd

bb.pd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEB1G_.exit818
  %i.atr = invoke noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode16clone_for_update(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.atf)
          to label %bb.pe unwind label %.loopexit.split-lp1281.loopexit ; 2 uses

bb.pe:                                            ; preds = %bb.pd
  %.val310 = load ptr, ptr %i.atf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %.val310, i64 48 ; 2 uses
  %i.att = load i32, ptr %i.ats, align 4, !noundef !4
  %i.atu = add i32 %i.att, -1                     ; 2 uses
  store i32 %i.atu, ptr %i.ats, align 4
  %i.atv = icmp eq i32 %i.atu, 0
  br i1 %i.atv, label %bb.pf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit823

bb.pf:                                            ; preds = %bb.pe
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val310) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit823 unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.atw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.atr, ptr %i.atf, align 8
  br label %.body872

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit823: ; preds = %bb.pe, %bb.pf
  store ptr %i.atr, ptr %i.atf, align 8
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit812.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEB1G_.exit821: ; preds = %bb.pb, %bb.pc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.atx = invoke noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode13clone_subtree(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.atf)
          to label %bb.ph unwind label %.loopexit.split-lp1281.loopexit ; 5 uses

bb.ph:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEB1G_.exit821
  store ptr %i.atx, ptr %i.cr, align 8
  %i.aty = invoke noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode16clone_for_update(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cr)
          to label %bb.pl unwind label %bb.pk     ; 2 uses

bb.pi:                                            ; preds = %bb.pn, %bb.pk
  %.pn249 = phi { ptr, i32 } [ %i.aui, %bb.pn ], [ %i.aud, %bb.pk ] ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atx, i64 48 ; 2 uses
  %i.aua = load i32, ptr %i.atz, align 4, !noundef !4
  %i.aub = add i32 %i.aua, -1                     ; 2 uses
  store i32 %i.aub, ptr %i.atz, align 4
  %i.auc = icmp eq i32 %i.aub, 0
  br i1 %i.auc, label %bb.pj, label %.body872

bb.pj:                                            ; preds = %bb.pi
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.atx) #26
          to label %.body872 unwind label %bb.fu

bb.pk:                                            ; preds = %bb.ph
  %i.aud = landingpad { ptr, i32 }
          cleanup
  br label %bb.pi

bb.pl:                                            ; preds = %bb.ph
  %.val308 = load ptr, ptr %i.atf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %.val308, i64 48 ; 2 uses
  %i.auf = load i32, ptr %i.aue, align 4, !noundef !4
  %i.aug = add i32 %i.auf, -1                     ; 2 uses
  store i32 %i.aug, ptr %i.aue, align 4
  %i.auh = icmp eq i32 %i.aug, 0
  br i1 %i.auh, label %bb.pm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit827

bb.pm:                                            ; preds = %bb.pl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val308) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit827 unwind label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.aui = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aty, ptr %i.atf, align 8
  br label %bb.pi

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit827: ; preds = %bb.pl, %bb.pm
  store ptr %i.aty, ptr %i.atf, align 8
  %i.auj = getelementptr inbounds nuw i8, ptr %i.atx, i64 48 ; 2 uses
  %i.auk = load i32, ptr %i.auj, align 4, !noundef !4
  %i.aul = add i32 %i.auk, -1                     ; 2 uses
  store i32 %i.aul, ptr %i.auj, align 4
  %i.aum = icmp eq i32 %i.aul, 0
  br i1 %i.aum, label %bb.po, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit829

bb.po:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit827
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.atx) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit829 unwind label %.loopexit.split-lp1281.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit829: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit827, %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit812.thread

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit812.thread: ; preds = %bb.oy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit829, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit823, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEB1G_.exit818, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit864
  %i.aun = icmp eq ptr %i.atd, %i.apj
  br i1 %i.aun, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit767.thread, label %.lr.ph2141

bb.pp:                                            ; preds = %bb.oz
  %i.auo = add nuw i32 %i.atk, 1
  store i32 %i.auo, ptr %i.atj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  store ptr %.val295, ptr %i.cq, align 8
  %i.aup = load ptr, ptr %i.atf, align 8, !nonnull !4, !noundef !4
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 52
  %i.aur = load i32, ptr %i.auq, align 4, !noundef !4 ; 2 uses
  %i.aus = zext i32 %i.aur to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.aut = invoke noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode13clone_subtree(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cq)
          to label %bb.ps unwind label %bb.pr     ; 5 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit833: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit851, %bb.px, %bb.pt, %bb.pu, %bb.pr
  %.pn256.pn.pn = phi { ptr, i32 } [ %i.auz, %bb.pt ], [ %i.aux, %bb.pr ], [ %i.auz, %bb.pu ], [ %.pn256.pn, %bb.px ], [ %.pn256.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit851 ] ; 2 uses
  %i.auu = load i32, ptr %i.atj, align 4, !noundef !4
  %i.auv = add i32 %i.auu, -1                     ; 2 uses
  store i32 %i.auv, ptr %i.atj, align 4
  %i.auw = icmp eq i32 %i.auv, 0
  br i1 %i.auw, label %bb.pq, label %.body872

bb.pq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit833
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val295) #26
          to label %.body872 unwind label %bb.fu

bb.pr:                                            ; preds = %bb.qk, %bb.pp
  %i.aux = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit833

bb.ps:                                            ; preds = %bb.pp
  store ptr %i.aut, ptr %i.cp, align 8
  %i.auy = invoke noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode16clone_for_update(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cp)
          to label %bb.pv unwind label %bb.pt     ; 5 uses

bb.pt:                                            ; preds = %bb.ps
  %i.auz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aut, i64 48 ; 2 uses
  %i.avb = load i32, ptr %i.ava, align 4, !noundef !4
  %i.avc = add i32 %i.avb, -1                     ; 2 uses
  store i32 %i.avc, ptr %i.ava, align 4
  %i.avd = icmp eq i32 %i.avc, 0
  br i1 %i.avd, label %bb.pu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit833

bb.pu:                                            ; preds = %bb.pt
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aut) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit833 unwind label %bb.fu

bb.pv:                                            ; preds = %bb.ps
  %i.ave = getelementptr inbounds nuw i8, ptr %i.aut, i64 48 ; 2 uses
  %i.avf = load i32, ptr %i.ave, align 4, !noundef !4
  %i.avg = add i32 %i.avf, -1                     ; 2 uses
  store i32 %i.avg, ptr %i.ave, align 4
  %i.avh = icmp eq i32 %i.avg, 0
  br i1 %i.avh, label %bb.pw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit835

bb.pw:                                            ; preds = %bb.pv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aut) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit835 unwind label %.loopexit1294

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit851: ; preds = %.loopexit1294, %.loopexit.split-lp1295, %bb.qb, %.loopexit.split-lp1276, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i849
  %.pn256.pn = phi { ptr, i32 } [ %.pn256, %bb.qb ], [ %.pn256, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i849 ], [ %.pn256, %.loopexit.split-lp1276 ], [ %lpad.loopexit1296, %.loopexit1294 ], [ %lpad.loopexit.split-lp1297, %.loopexit.split-lp1295 ] ; 2 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.auy, i64 48 ; 2 uses
  %i.avj = load i32, ptr %i.avi, align 4, !noundef !4
  %i.avk = add i32 %i.avj, -1                     ; 2 uses
  store i32 %i.avk, ptr %i.avi, align 4
  %i.avl = icmp eq i32 %i.avk, 0
  br i1 %i.avl, label %bb.px, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit833

bb.px:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit851
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.auy) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit833 unwind label %bb.fu

.loopexit1294:                                    ; preds = %bb.pw, %bb.py, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i858
  %lpad.loopexit1296 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit851

.loopexit.split-lp1295:                           ; preds = %bb.pz
  %lpad.loopexit.split-lp1297 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit851

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit835: ; preds = %bb.pv, %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  %i.avm = getelementptr inbounds nuw i8, ptr %i.auy, i64 48 ; 4 uses
  %i.avn = load i32, ptr %i.avm, align 4, !noundef !4 ; 2 uses
  %i.avo = icmp eq i32 %i.avn, -1
  br i1 %i.avo, label %bb.pz, label %bb.py, !prof !15

bb.py:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit835
  %i.avp = add nuw i32 %i.avn, 1
  store i32 %i.avp, ptr %i.avm, align 4
  %i.avq = invoke { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %i.auy)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit840 unwind label %.loopexit1294 ; 2 uses

bb.pz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit835
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #30
          to label %.noexc839 unwind label %.loopexit.split-lp1295

.noexc839:                                        ; preds = %bb.pz
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit840: ; preds = %bb.py
  %i.avr = extractvalue { i64, ptr } %i.avq, 0
  %i.avs = extractvalue { i64, ptr } %i.avq, 1
  store i64 %i.avr, ptr %i.co, align 8
  store ptr %i.avs, ptr %i.pw, align 8
  %.not252 = icmp eq i32 %i.aur, 0
  br i1 %.not252, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit848.thread, label %.preheader

.preheader:                                       ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit840, %_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i843
  %.sroa.01.0.i841 = phi i64 [ %i.awa, %_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i843 ], [ %i.aus, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit840 ] ; 2 uses
  %i.avt = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.co)
          to label %.noexc846 unwind label %.loopexit1275 ; 2 uses

.noexc846:                                        ; preds = %.preheader
  %i.avu = extractvalue { i64, ptr } %i.avt, 0
  %.not.i842 = icmp eq i64 %i.avu, 2
  br i1 %.not.i842, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit848, label %bb.qa

bb.qa:                                            ; preds = %.noexc846
  %i.avv = extractvalue { i64, ptr } %i.avt, 1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.avv) ]
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 48 ; 2 uses
  %i.avx = load i32, ptr %i.avw, align 4, !noundef !4
  %i.avy = add i32 %i.avx, -1                     ; 2 uses
  store i32 %i.avy, ptr %i.avw, align 4
  %i.avz = icmp eq i32 %i.avy, 0
  br i1 %i.avz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i845, label %_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i843

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i845: ; preds = %bb.qa
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.avv) #26
          to label %_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i843 unwind label %.loopexit1275

_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i843: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i845, %bb.qa
  %i.awa = add nsw i64 %.sroa.01.0.i841, -1       ; 2 uses
  %i.awb = icmp eq i64 %i.awa, 0
  br i1 %i.awb, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit848.thread, label %.preheader

.loopexit.split-lp1276:                           ; preds = %.loopexit1275, %.loopexit.split-lp1276.loopexit.split-lp, %.loopexit.split-lp1276.loopexit, %bb.qi
  %.pn256 = phi { ptr, i32 } [ %i.awt, %bb.qi ], [ %lpad.loopexit1277, %.loopexit1275 ], [ %lpad.loopexit1299, %.loopexit.split-lp1276.loopexit ], [ %lpad.loopexit.split-lp1300, %.loopexit.split-lp1276.loopexit.split-lp ] ; 3 uses
  %.val406 = load i64, ptr %i.co, align 8, !range !149, !noundef !4
  %.val407 = load ptr, ptr %i.pw, align 8         ; 3 uses
  %i.awc = icmp eq i64 %.val406, 2
  br i1 %i.awc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit851, label %bb.qb

bb.qb:                                            ; preds = %.loopexit.split-lp1276
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val407) ]
  %i.awd = getelementptr inbounds nuw i8, ptr %.val407, i64 48 ; 2 uses
  %i.awe = load i32, ptr %i.awd, align 4, !noundef !4
  %i.awf = add i32 %i.awe, -1                     ; 2 uses
  store i32 %i.awf, ptr %i.awd, align 4
  %i.awg = icmp eq i32 %i.awf, 0
  br i1 %i.awg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i849, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit851

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i849: ; preds = %bb.qb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val407) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit851 unwind label %bb.fu

.loopexit1275:                                    ; preds = %.preheader, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i845
  %lpad.loopexit1277 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1276

.loopexit.split-lp1276.loopexit:                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i853, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit848.thread
  %lpad.loopexit1299 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1276

.loopexit.split-lp1276.loopexit.split-lp:         ; preds = %bb.qe
  %lpad.loopexit.split-lp1300 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1276

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit848: ; preds = %.noexc846
  %.not253 = icmp eq i64 %.sroa.01.0.i841, 0
  br i1 %.not253, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit848.thread, label %bb.qe, !prof !592

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit848.thread: ; preds = %_RNCNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_13SpecAdvanceBy15spec_advance_by0B29_.exit.i843, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit840, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit848
  %i.awh = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.co)
          to label %bb.qc unwind label %.loopexit.split-lp1276.loopexit ; 2 uses

bb.qc:                                            ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit848.thread
  %i.awi = extractvalue { i64, ptr } %i.awh, 0    ; 2 uses
  %i.awj = extractvalue { i64, ptr } %i.awh, 1    ; 4 uses
  %.not254 = icmp eq i64 %i.awi, 2
  br i1 %.not254, label %bb.qe, label %bb.qd, !prof !15

bb.qd:                                            ; preds = %bb.qc
  %i.awk = trunc nuw i64 %i.awi to i1             ; 2 uses
  %.292 = select i1 %i.awk, ptr %i.awj, ptr null  ; 3 uses
  br i1 %i.awk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit855, label %bb.qf

bb.qe:                                            ; preds = %bb.qc, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1S_3num7nonzero7NonZerojENCNvXs_NvB1K_10advance_byB3_NtB3s_13SpecAdvanceBy15spec_advance_by0INtNtB1S_6option6OptionB2O_EEBX_.exit848, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit855
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #30
          to label %bb.hh unwind label %.loopexit.split-lp1276.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit855: ; preds = %bb.qf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i853, %bb.qd
  %.not255 = icmp eq ptr %.292, null
  br i1 %.not255, label %bb.qe, label %bb.qg, !prof !15

bb.qf:                                            ; preds = %bb.qd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.awj) ]
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awj, i64 48 ; 2 uses
  %i.awm = load i32, ptr %i.awl, align 4, !noundef !4
  %i.awn = add i32 %i.awm, -1                     ; 2 uses
  store i32 %i.awn, ptr %i.awl, align 4
  %i.awo = icmp eq i32 %i.awn, 0
  br i1 %i.awo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i853, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit855

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i853: ; preds = %bb.qf
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.awj) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit855 unwind label %.loopexit.split-lp1276.loopexit

bb.qg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit855
  %.val349 = load ptr, ptr %i.atf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %.val349, i64 48 ; 2 uses
  %i.awq = load i32, ptr %i.awp, align 4, !noundef !4
  %i.awr = add i32 %i.awq, -1                     ; 2 uses
  store i32 %i.awr, ptr %i.awp, align 4
  %i.aws = icmp eq i32 %i.awr, 0
  br i1 %i.aws, label %bb.qh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1l_.exit857

bb.qh:                                            ; preds = %bb.qg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val349) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1l_.exit857 unwind label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.awt = landingpad { ptr, i32 }
          cleanup
  store ptr %.292, ptr %i.atf, align 8
  br label %.loopexit.split-lp1276

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1l_.exit857: ; preds = %bb.qg, %bb.qh
  store ptr %.292, ptr %i.atf, align 8
  %.val404 = load i64, ptr %i.co, align 8, !range !149, !noundef !4
  %.val405 = load ptr, ptr %i.pw, align 8         ; 3 uses
  %i.awu = icmp eq i64 %.val404, 2
  br i1 %i.awu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit860, label %bb.qj

bb.qj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1l_.exit857
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val405) ]
  %i.awv = getelementptr inbounds nuw i8, ptr %.val405, i64 48 ; 2 uses
  %i.aww = load i32, ptr %i.awv, align 4, !noundef !4
  %i.awx = add i32 %i.aww, -1                     ; 2 uses
  store i32 %i.awx, ptr %i.awv, align 4
  %i.awy = icmp eq i32 %i.awx, 0
  br i1 %i.awy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i858, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit860

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i858: ; preds = %bb.qj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val405) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit860 unwind label %.loopexit1294

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit860: ; preds = %bb.qj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1l_.exit857, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %i.awz = load i32, ptr %i.avm, align 4, !noundef !4
  %i.axa = add i32 %i.awz, -1                     ; 2 uses
  store i32 %i.axa, ptr %i.avm, align 4
  %i.axb = icmp eq i32 %i.axa, 0
  br i1 %i.axb, label %bb.qk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit862

bb.qk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit860
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.auy) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit862 unwind label %bb.pr

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit862: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1v_.exit860, %bb.qk
  %i.axc = load i32, ptr %i.atj, align 4, !noundef !4
  %i.axd = add i32 %i.axc, -1                     ; 2 uses
  store i32 %i.axd, ptr %i.atj, align 4
  %i.axe = icmp eq i32 %i.axd, 0
  br i1 %i.axe, label %bb.ql, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit864

bb.ql:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit862
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val295) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit864 unwind label %.loopexit.split-lp1281.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit864: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit862, %bb.ql
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit812.thread

bb.qm:                                            ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit767.thread
  %i.axf = load ptr, ptr %i.dy, align 8, !nonnull !4, !noundef !4
  %i.axg = getelementptr inbounds nuw [64 x i8], ptr %i.axf, i64 %i.qb ; 4 uses
  %i.axh = load i64, ptr %i.axg, align 8, !range !66, !noundef !4 ; 2 uses
  %i.axi = add nsw i64 %i.axh, -2
  %i.axj = icmp samesign ugt i64 %i.axh, 1
  %i.axk = select i1 %i.axj, i64 %i.axi, i64 4
  switch i64 %i.axk, label %.loopexit [
    i64 0, label %bb.qn
    i64 1, label %bb.qr
    i64 2, label %bb.qo
    i64 3, label %bb.qr
    i64 4, label %bb.qp
  ]

bb.qn:                                            ; preds = %bb.qm
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  br label %bb.qq

bb.qo:                                            ; preds = %bb.qm
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axg, i64 24 ; 2 uses
  %i.axn = load i64, ptr %i.axm, align 8, !range !149, !noundef !4
  %.not270 = icmp eq i64 %i.axn, 2
  br i1 %.not270, label %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBY_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1N_11SyntaxTokenB28_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachQNCNvNtNtB2c_13syntax_editor9edit_algo11apply_editss3_0EB2c_.exit, label %bb.qq

bb.qp:                                            ; preds = %bb.qm
  br label %bb.qr

bb.qq:                                            ; preds = %bb.qo, %bb.qn
  %.sroa.069.0 = phi ptr [ %i.axl, %bb.qn ], [ %i.axm, %bb.qo ]
  invoke fastcc void @_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss3_0B7_(ptr nonnull %i.cx, ptr noalias nofree noundef align 8 dereferenceable(16) %.sroa.069.0)
          to label %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBY_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1N_11SyntaxTokenB28_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachQNCNvNtNtB2c_13syntax_editor9edit_algo11apply_editss3_0EB2c_.exit unwind label %.loopexit.split-lp1281.loopexit.split-lp.loopexit

bb.qr:                                            ; preds = %bb.qm, %bb.qm, %bb.qp
  %.sink3844 = phi i64 [ 40, %bb.qp ], [ 24, %bb.qm ], [ 24, %bb.qm ]
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axg, i64 %.sink3844 ; 2 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 8
  %i.axq = load ptr, ptr %i.axp, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axo, i64 16
  %i.axs = load i64, ptr %i.axr, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.axs, 4
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axq, i64 %.idx
  %i.axu = icmp eq i64 %i.axs, 0
  br i1 %i.axu, label %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBY_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1N_11SyntaxTokenB28_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachQNCNvNtNtB2c_13syntax_editor9edit_algo11apply_editss3_0EB2c_.exit, label %.lr.ph.i865

.lr.ph.i865:                                      ; preds = %bb.qr, %.noexc866
  %.sroa.0.02.i = phi ptr [ %i.axv, %.noexc866 ], [ %i.axq, %bb.qr ] ; 2 uses
  invoke fastcc void @_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss3_0B7_(ptr nonnull %i.cx, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.0.02.i) #28
          to label %.noexc866 unwind label %.loopexit1280

.noexc866:                                        ; preds = %.lr.ph.i865
  %i.axv = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 16 ; 2 uses
  %i.axw = icmp eq ptr %i.axv, %i.axt
  br i1 %i.axw, label %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBY_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1N_11SyntaxTokenB28_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachQNCNvNtNtB2c_13syntax_editor9edit_algo11apply_editss3_0EB2c_.exit, label %.lr.ph.i865

_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBY_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1N_11SyntaxTokenB28_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachQNCNvNtNtB2c_13syntax_editor9edit_algo11apply_editss3_0EB2c_.exit: ; preds = %.noexc866, %bb.qr, %bb.qq, %bb.qo
  %i.axx = load i64, ptr %i.ea, align 8, !noundef !4 ; 2 uses
  %i.axy = icmp ugt i64 %i.axx, %i.qb
  br i1 %i.axy, label %bb.qs, label %.invoke3833

bb.qs:                                            ; preds = %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBY_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1N_11SyntaxTokenB28_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachQNCNvNtNtB2c_13syntax_editor9edit_algo11apply_editss3_0EB2c_.exit
  %i.axz = load ptr, ptr %i.dy, align 8, !nonnull !4, !noundef !4
  %i.aya = getelementptr inbounds nuw [64 x i8], ptr %i.axz, i64 %i.qb ; 7 uses
  %i.ayb = load i64, ptr %i.aya, align 8, !range !66, !noundef !4 ; 2 uses
  %i.ayc = add nsw i64 %i.ayb, -2
  %i.ayd = icmp samesign ugt i64 %i.ayb, 1
  %i.aye = select i1 %i.ayd, i64 %i.ayc, i64 4
  switch i64 %i.aye, label %.loopexit [
    i64 0, label %bb.qt
    i64 1, label %.invoke3832
    i64 2, label %bb.qu
    i64 3, label %.invoke3832
    i64 4, label %bb.qv
  ]

bb.qt:                                            ; preds = %bb.qs
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aya, i64 8
  %i.ayg = load i64, ptr %i.ayf, align 8, !range !142, !noundef !4 ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.aya, i64 16
  %.val418 = load ptr, ptr %i.ayh, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %.val418, i64 48 ; 2 uses
  %i.ayj = load i32, ptr %i.ayi, align 4, !noundef !4 ; 2 uses
  %i.ayk = icmp eq i32 %i.ayj, -1
  br i1 %i.ayk, label %.invoke3835, label %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit, !prof !15

.invoke3832:                                      ; preds = %bb.qs, %bb.qs, %bb.qv
  %.sink3850 = phi i64 [ 48, %bb.qv ], [ 32, %bb.qs ], [ 32, %bb.qs ]
  %.sink3848 = phi i64 [ 56, %bb.qv ], [ 40, %bb.qs ], [ 40, %bb.qs ]
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.aya, i64 %.sink3850
  %i.aym = load ptr, ptr %i.ayl, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aya, i64 %.sink3848
  %i.ayo = load i64, ptr %i.ayn, align 8, !noundef !4
  %i.ayp = getelementptr inbounds nuw [16 x i8], ptr %i.aym, i64 %i.ayo
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6cloned6ClonedINtNtNtB3C_5slice4iter4IterBG_EEEB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull %i.aym, ptr noundef nonnull %i.ayp)
          to label %bb.qz unwind label %.loopexit.split-lp1281.loopexit.split-lp.loopexit

bb.qu:                                            ; preds = %bb.qs
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.aya, i64 24
  %i.ayr = load i64, ptr %i.ayq, align 8, !range !149, !noundef !4
  %i.ays = getelementptr inbounds nuw i8, ptr %i.aya, i64 32 ; 2 uses
  switch i64 %i.ayr, label %bb.ra [
    i64 2, label %bb.qz
    i64 0, label %bb.rb
  ]

bb.qv:                                            ; preds = %bb.qs
  br label %.invoke3832

_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit: ; preds = %bb.qt
  %i.ayt = add nuw i32 %i.ayj, 1
  store i32 %i.ayt, ptr %i.ayi, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.ayu = load i64, ptr %i.pp, align 8, !alias.scope !593, !noundef !4 ; 3 uses
  %i.ayv = load i64, ptr %i.cy, align 8, !range !248, !alias.scope !593, !noundef !4
  %i.ayw = icmp eq i64 %i.ayu, %i.ayv
  br i1 %i.ayw, label %bb.qw, label %.sink.split

bb.qw:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBR_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1G_11SyntaxTokenB21_EEE8grow_oneB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %.sink.split unwind label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.ayx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %.val418, i64 48 ; 2 uses
  %i.ayz = load i32, ptr %i.ayy, align 4, !noalias !593, !noundef !4
  %i.aza = add i32 %i.ayz, -1                     ; 2 uses
  store i32 %i.aza, ptr %i.ayy, align 4, !noalias !593
  %i.azb = icmp eq i32 %i.aza, 0
  br i1 %i.azb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i871, label %.body872

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i871: ; preds = %bb.qx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val418) #26
          to label %.body872 unwind label %bb.qy

bb.qy:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i871
  %i.azc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

.sink.split:                                      ; preds = %bb.qw, %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit, %bb.rd, %bb.rc
  %.sink3858 = phi i64 [ %i.azs, %bb.rd ], [ %i.azs, %bb.rc ], [ %i.ayu, %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit ], [ %i.ayu, %bb.qw ] ; 2 uses
  %.sroa.074.0.sink = phi i64 [ %.sroa.074.0, %bb.rd ], [ %.sroa.074.0, %bb.rc ], [ %i.ayg, %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit ], [ %i.ayg, %bb.qw ]
  %.sroa.575.0.sink = phi ptr [ %.sroa.575.0, %bb.rd ], [ %.sroa.575.0, %bb.rc ], [ %.val418, %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit ], [ %.val418, %bb.qw ]
  %i.azd = load ptr, ptr %i.po, align 8, !nonnull !4, !noundef !4
  %i.aze = getelementptr inbounds nuw [16 x i8], ptr %i.azd, i64 %.sink3858 ; 2 uses
  store i64 %.sroa.074.0.sink, ptr %i.aze, align 8
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 8
  store ptr %.sroa.575.0.sink, ptr %i.azf, align 8
  %i.azg = add i64 %.sink3858, 1
  store i64 %i.azg, ptr %i.pp, align 8
  br label %bb.qz

bb.qz:                                            ; preds = %.sink.split, %.invoke3832, %bb.qu
  %i.azh = load ptr, ptr %.sroa.613.0..sroa_idx, align 8, !alias.scope !596, !nonnull !4, !noundef !4
  %i.azi = load ptr, ptr %.sroa.411.0..sroa_idx, align 8, !alias.scope !596, !nonnull !4, !noundef !4 ; 2 uses
  %i.azj = icmp eq ptr %i.azi, %i.azh
  br i1 %i.azj, label %._crit_edge2144, label %bb.ee

bb.ra:                                            ; preds = %bb.qu
  %.val417 = load ptr, ptr %i.ays, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %.val417, i64 48 ; 2 uses
  %i.azl = load i32, ptr %i.azk, align 4, !noundef !4 ; 2 uses
  %i.azm = icmp eq i32 %i.azl, -1
  br i1 %i.azm, label %.invoke3835, label %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit876, !prof !15

_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit876: ; preds = %bb.ra
  %i.azn = add nuw i32 %i.azl, 1
  store i32 %i.azn, ptr %i.azk, align 4
  br label %bb.rc

bb.rb:                                            ; preds = %bb.qu
  %.val345 = load ptr, ptr %i.ays, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %.val345, i64 48 ; 2 uses
  %i.azp = load i32, ptr %i.azo, align 4, !noundef !4 ; 2 uses
  %i.azq = icmp eq i32 %i.azp, -1
  br i1 %i.azq, label %.invoke3835, label %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBR_.exit878, !prof !15

_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBR_.exit878: ; preds = %bb.rb
  %i.azr = add nuw i32 %i.azp, 1
  store i32 %i.azr, ptr %i.azo, align 4
  br label %bb.rc

bb.rc:                                            ; preds = %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBR_.exit878, %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit876
  %.sroa.575.0 = phi ptr [ %.val345, %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBR_.exit878 ], [ %.val417, %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit876 ] ; 4 uses
  %.sroa.074.0 = phi i64 [ 0, %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBR_.exit878 ], [ 1, %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_.exit876 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.azs = load i64, ptr %i.pp, align 8, !alias.scope !598, !noundef !4 ; 3 uses
  %i.azt = load i64, ptr %i.cy, align 8, !range !248, !alias.scope !598, !noundef !4
  %i.azu = icmp eq i64 %i.azs, %i.azt
  br i1 %i.azu, label %bb.rd, label %.sink.split

bb.rd:                                            ; preds = %bb.rc
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBR_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1G_11SyntaxTokenB21_EEE8grow_oneB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %.sink.split unwind label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.azv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %.sroa.575.0, i64 48 ; 2 uses
  %i.azx = load i32, ptr %i.azw, align 4, !noalias !598, !noundef !4
  %i.azy = add i32 %i.azx, -1                     ; 2 uses
  store i32 %i.azy, ptr %i.azw, align 4, !noalias !598
  %i.azz = icmp eq i32 %i.azy, 0
  br i1 %i.azz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i880, label %.body872

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i880: ; preds = %bb.re
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.575.0) #26
          to label %.body872 unwind label %bb.rf

bb.rf:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i880
  %i.baa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.rg:                                            ; preds = %bb.na
  %i.bab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.anl) ]
  %i.bac = getelementptr inbounds nuw i8, ptr %i.anl, i64 48 ; 2 uses
  %i.bad = load i32, ptr %i.bac, align 4, !noundef !4
  %i.bae = add i32 %i.bad, -1                     ; 2 uses
  store i32 %i.bae, ptr %i.bac, align 4
  %i.baf = icmp eq i32 %i.bae, 0
  br i1 %i.baf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i885, label %.body872

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i885: ; preds = %bb.rg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.anl) #26
          to label %.body872 unwind label %bb.fu

bb.rh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoItermEECsjJXvCMGntp8_6syntax.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBK_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1z_11SyntaxTokenB1U_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.rj unwind label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.bag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBR_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1G_11SyntaxTokenB21_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %.body438 unwind label %bb.rk

bb.rj:                                            ; preds = %bb.rh
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBR_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1G_11SyntaxTokenB21_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.rl unwind label %bb.fu

bb.rk:                                            ; preds = %bb.ri
  %i.bah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

.critedge:                                        ; preds = %bb.rm, %bb.rl
  br i1 %.sroa.0163.8, label %bb.rn, label %bb.dy

bb.rl:                                            ; preds = %bb.rj
  %i.bai = load i32, ptr %i.pd, align 4, !noundef !4
  %i.baj = add i32 %i.bai, -1                     ; 2 uses
  store i32 %i.baj, ptr %i.pd, align 4
  %i.bak = icmp eq i32 %i.baj, 0
  br i1 %i.bak, label %bb.rm, label %.critedge

bb.rm:                                            ; preds = %bb.rl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dt) #26
          to label %.critedge unwind label %bb.fu

bb.rn:                                            ; preds = %.critedge
  %i.bal = getelementptr inbounds nuw i8, ptr %i.ph, i64 48 ; 2 uses
  %i.bam = load i32, ptr %i.bal, align 4, !noundef !4
  %i.ban = add i32 %i.bam, -1                     ; 2 uses
  store i32 %i.ban, ptr %i.bal, align 4
  %i.bao = icmp eq i32 %i.ban, 0
  br i1 %i.bao, label %bb.ro, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit894

bb.ro:                                            ; preds = %bb.rn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ph) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit894 unwind label %bb.fu

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit894: ; preds = %bb.ro, %bb.rn
  br i1 %.sroa.0159.1, label %.thread1065, label %.thread

bb.rp:                                            ; preds = %bb.dz
  %i.bap = invoke noundef i64 @_RNvXs4_NtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorENtNtNtNtCshzWfHUSfYae_4core4iter6traits10exact_size17ExactSizeIterator3lenB1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de)
          to label %.noexc896 unwind label %.loopexit1314

.noexc896:                                        ; preds = %bb.rp
  %i.baq = invoke { i64, i64 } @_RINvXs3_NtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque4iterINtB6_4IterNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB2l_8iterator8Iterator9rposition5checkRB19_NCNvB1b_11apply_editss2_0E0INtNtNtB2p_3ops12control_flow11ControlFlowjjEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.de, i64 noundef %i.bap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0949.02138)
          to label %bb.rq unwind label %.loopexit1314 ; 2 uses

bb.rq:                                            ; preds = %.noexc896
  %i.bar = extractvalue { i64, i64 } %i.baq, 0
  %i.bas = trunc nuw i64 %i.bar to i1
  %i.bat = extractvalue { i64, i64 } %i.baq, 1    ; 3 uses
  br i1 %i.bas, label %bb.rr, label %bb.rs

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  %i.bau = add i64 %i.bat, 1
  %i.bav = load i64, ptr %i.mh, align 8, !noundef !4
  %i.baw = invoke { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECsjJXvCMGntp8_6syntax(i64 noundef %i.bau, i64 noundef %i.bav, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
          to label %bb.rt unwind label %.loopexit1314 ; 2 uses

bb.rs:                                            ; preds = %bb.rq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  %i.bax = load i64, ptr %i.mh, align 8, !noundef !4
  %i.bay = invoke { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsjJXvCMGntp8_6syntax(i64 noundef %i.bax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
          to label %bb.sf unwind label %.loopexit1314 ; 2 uses

bb.rt:                                            ; preds = %bb.rr
  %i.baz = extractvalue { i64, i64 } %i.baw, 0    ; 3 uses
  %i.bba = extractvalue { i64, i64 } %i.baw, 1    ; 2 uses
  %i.bbb = sub i64 %i.bba, %i.baz                 ; 2 uses
  %i.bbc = load i64, ptr %i.mh, align 8, !noundef !4
  store i64 %i.baz, ptr %i.mh, align 8
  %i.bbd = sub i64 %i.bbc, %i.bba
  store ptr %i.di, ptr %i.dd, align 8
  store i64 %i.bbb, ptr %i.mx, align 8
  store i64 %i.baz, ptr %i.my, align 8
  store i64 %i.bbd, ptr %i.mz, align 8
  store i64 %i.bbb, ptr %i.na, align 8
  invoke void @_RNvXs2_NtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dd)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque5drain5DrainNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorEEB1J_.exit unwind label %.loopexit1314

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque5drain5DrainNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorEEB1J_.exit: ; preds = %bb.rt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  %i.bbe = load i64, ptr %i.mh, align 8, !noundef !4
  %i.bbf = icmp ult i64 %i.bat, %i.bbe
  br i1 %i.bbf, label %bb.rv, label %bb.ru, !prof !14

bb.ru:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque5drain5DrainNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorEEB1J_.exit
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #30
          to label %bb.hh unwind label %.loopexit.split-lp1315

bb.rv:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque5drain5DrainNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorEEB1J_.exit
  %i.bbg = load i64, ptr %i.mg, align 8, !noundef !4
  %i.bbh = add i64 %i.bbg, %i.bat                 ; 2 uses
  %i.bbi = load i64, ptr %i.di, align 8, !range !248, !noundef !4 ; 2 uses
  %.not279 = icmp ult i64 %i.bbh, %i.bbi
  %i.bbj = select i1 %.not279, i64 0, i64 %i.bbi
  %.sroa.0165.0 = sub nuw i64 %i.bbh, %i.bbj
  %i.bbk = load ptr, ptr %i.mi, align 8, !nonnull !4, !noundef !4
  %i.bbl = getelementptr inbounds nuw [56 x i8], ptr %i.bbk, i64 %.sroa.0165.0
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbl, i64 48
  %i.bbn = load i64, ptr %i.bbm, align 8, !noundef !4 ; 4 uses
  %i.bbo = load i64, ptr %i.ea, align 8, !noundef !4 ; 2 uses
  %i.bbp = icmp ult i64 %i.bbn, %i.bbo
  br i1 %i.bbp, label %bb.rw, label %bb.rx

bb.rw:                                            ; preds = %bb.rv
  %i.bbq = load ptr, ptr %i.dy, align 8, !nonnull !4, !noundef !4
  %i.bbr = getelementptr inbounds nuw [64 x i8], ptr %i.bbq, i64 %i.bbn ; 2 uses
  %i.bbs = load i64, ptr %i.bbr, align 8, !range !66, !noundef !4
  %i.bbt = icmp eq i64 %i.bbs, 4
  br i1 %i.bbt, label %bb.ry, label %bb.rz

bb.rx:                                            ; preds = %bb.rv
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.bbn, i64 noundef %i.bbo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #30
          to label %bb.hh unwind label %.loopexit.split-lp1315

bb.ry:                                            ; preds = %bb.rw
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbr, i64 24
  %i.bbv = load i64, ptr %i.bbu, align 8, !range !149, !noundef !4
  %.not280 = icmp eq i64 %i.bbv, 2
  br i1 %.not280, label %bb.sb, label %bb.rz

bb.rz:                                            ; preds = %bb.ry, %bb.rw
  %i.bbw = trunc i64 %i.bbn to i32
  %i.bbx = trunc i64 %.sroa.7.02137 to i32
  %i.bby = load i64, ptr %i.mk, align 8, !alias.scope !601, !noundef !4 ; 3 uses
  %i.bbz = load i64, ptr %i.dh, align 8, !range !248, !alias.scope !601, !noundef !4
  %i.bca = icmp eq i64 %i.bby, %i.bbz
  br i1 %i.bca, label %bb.sa, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeE8push_mutBN_.exit

bb.sa:                                            ; preds = %bb.rz
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dh) #26
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeE8push_mutBN_.exit unwind label %.loopexit1314

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeE8push_mutBN_.exit: ; preds = %bb.sa, %bb.rz
  %i.bcb = load ptr, ptr %i.mj, align 8, !alias.scope !601, !nonnull !4, !noundef !4
  %i.bcc = getelementptr inbounds nuw [8 x i8], ptr %i.bcb, i64 %i.bby ; 2 uses
  store i32 %i.bbw, ptr %i.bcc, align 4
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 4
  store i32 %i.bbx, ptr %i.bcd, align 4
  %i.bce = add i64 %i.bby, 1
  store i64 %i.bce, ptr %i.mk, align 8, !alias.scope !601
  br label %bb.sd

bb.sb:                                            ; preds = %bb.ry
  %i.bcf = trunc i64 %.sroa.7.02137 to i32
  %i.bcg = load i64, ptr %i.mo, align 8, !alias.scope !604, !noundef !4 ; 3 uses
  %i.bch = load i64, ptr %i.df, align 8, !range !248, !alias.scope !604, !noundef !4
  %i.bci = icmp eq i64 %i.bcg, %i.bch
  br i1 %i.bci, label %bb.sc, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax.exit

bb.sc:                                            ; preds = %bb.sb
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsdVrXiLXuAnx_6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #26
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax.exit unwind label %.loopexit1314

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax.exit: ; preds = %bb.sc, %bb.sb
  %i.bcj = load ptr, ptr %i.mn, align 8, !alias.scope !604, !nonnull !4, !noundef !4
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bcj, i64 %i.bcg
  store i32 %i.bcf, ptr %i.bck, align 4
  %i.bcl = add i64 %i.bcg, 1
  store i64 %i.bcl, ptr %i.mo, align 8, !alias.scope !604
  br label %bb.sd

bb.sd:                                            ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax.exit, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeE8push_mutBN_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br label %bb.se

bb.se:                                            ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax.exit904, %bb.sd
  %i.bcm = load i64, ptr %.sroa.0949.02138, align 8, !range !66, !noundef !4 ; 3 uses
  %i.bcn = add nsw i64 %i.bcm, -2
  %i.bco = icmp samesign ugt i64 %i.bcm, 1
  %i.bcp = select i1 %i.bco, i64 %i.bcn, i64 4
  switch i64 %i.bcp, label %bb.sh [
    i64 2, label %bb.si
    i64 3, label %bb.sj
    i64 4, label %bb.sk
  ]

bb.sf:                                            ; preds = %bb.rs
  %i.bcq = extractvalue { i64, i64 } %i.bay, 0    ; 3 uses
  %i.bcr = extractvalue { i64, i64 } %i.bay, 1    ; 2 uses
  %i.bcs = sub i64 %i.bcr, %i.bcq                 ; 2 uses
  %i.bct = load i64, ptr %i.mh, align 8, !noundef !4
  store i64 %i.bcq, ptr %i.mh, align 8
  %i.bcu = sub i64 %i.bct, %i.bcr
  store ptr %i.di, ptr %i.dc, align 8
  store i64 %i.bcs, ptr %i.mt, align 8
  store i64 %i.bcq, ptr %i.mu, align 8
  store i64 %i.bcu, ptr %i.mv, align 8
  store i64 %i.bcs, ptr %i.mw, align 8
  invoke void @_RNvXs2_NtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dc)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque5drain5DrainNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorEEB1J_.exit902 unwind label %.loopexit1314

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque5drain5DrainNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorEEB1J_.exit902: ; preds = %bb.sf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  %i.bcv = trunc i64 %.sroa.7.02137 to i32
  %i.bcw = load i64, ptr %i.mm, align 8, !alias.scope !607, !noundef !4 ; 3 uses
  %i.bcx = load i64, ptr %i.dg, align 8, !range !248, !alias.scope !607, !noundef !4
  %i.bcy = icmp eq i64 %i.bcw, %i.bcx
  br i1 %i.bcy, label %bb.sg, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax.exit904

bb.sg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque5drain5DrainNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorEEB1J_.exit902
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsdVrXiLXuAnx_6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg) #26
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax.exit904 unwind label %.loopexit1314

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax.exit904: ; preds = %bb.sg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque5drain5DrainNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorEEB1J_.exit902
  %i.bcz = load ptr, ptr %i.ml, align 8, !alias.scope !607, !nonnull !4, !noundef !4
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %i.bcz, i64 %i.bcw
  store i32 %i.bcv, ptr %i.bda, align 4
  %i.bdb = add i64 %i.bcw, 1
  store i64 %i.bdb, ptr %i.mm, align 8, !alias.scope !607
  br label %bb.se

bb.sh:                                            ; preds = %bb.sw, %bb.su, %bb.sj, %bb.si, %bb.se
  %i.bdc = icmp eq ptr %i.pb, %i.mr
  br i1 %i.bdc, label %._crit_edge, label %bb.dz

bb.si:                                            ; preds = %bb.se
  %i.bdd = getelementptr inbounds nuw i8, ptr %.sroa.0949.02138, i64 8
  %i.bde = load i64, ptr %i.bdd, align 8, !range !142, !noundef !4
  %i.bdf = trunc nuw i64 %i.bde to i1
  br i1 %i.bdf, label %bb.sh, label %bb.ss

bb.sj:                                            ; preds = %bb.se
  %i.bdg = getelementptr inbounds nuw i8, ptr %.sroa.0949.02138, i64 8
  %i.bdh = load i64, ptr %i.bdg, align 8, !range !142, !noundef !4
  %i.bdi = trunc nuw i64 %i.bdh to i1
  br i1 %i.bdi, label %bb.sh, label %bb.ss

bb.sk:                                            ; preds = %bb.se
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !615
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.bdj = getelementptr inbounds nuw i8, ptr %.sroa.0949.02138, i64 8
  %.val5.i.i905 = load ptr, ptr %i.bdj, align 8, !alias.scope !621, !noalias !622, !nonnull !4, !noundef !4 ; 3 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %.val5.i.i905, i64 48 ; 4 uses
  %i.bdl = load i32, ptr %i.bdk, align 4, !noalias !623, !noundef !4 ; 2 uses
  %i.bdm = icmp eq i32 %i.bdl, -1
  br i1 %i.bdm, label %.invoke, label %_RNvXs6_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB5_11NodeOrTokenINtNtB7_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB12_11SyntaxTokenB1n_EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1r_.exit.i.i, !prof !15

_RNvXs6_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB5_11NodeOrTokenINtNtB7_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB12_11SyntaxTokenB1n_EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1r_.exit.i.i: ; preds = %bb.sk
  %i.bdn = add nuw i32 %i.bdl, 1
  store i32 %i.bdn, ptr %i.bdk, align 4, !noalias !623
  %i.bdo = getelementptr inbounds nuw i8, ptr %.sroa.0949.02138, i64 24
  %.val3.i.i906 = load ptr, ptr %i.bdo, align 8, !alias.scope !621, !noalias !622, !nonnull !4, !noundef !4 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %.val3.i.i906, i64 48 ; 2 uses
  %i.bdq = load i32, ptr %i.bdp, align 4, !noalias !623, !noundef !4 ; 2 uses
  %i.bdr = icmp eq i32 %i.bdq, -1
  br i1 %i.bdr, label %.invoke.i.i, label %_RNvXs10_NtNtCshzWfHUSfYae_4core3ops5rangeINtB6_14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1T_11SyntaxTokenB2f_EEENtNtBa_5clone5Clone5cloneB2j_.exit.i, !prof !15

.invoke.i.i:                                      ; preds = %_RNvXs6_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB5_11NodeOrTokenINtNtB7_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB12_11SyntaxTokenB1n_EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1r_.exit.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #30
          to label %.cont.i.i unwind label %bb.sl, !noalias !623

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.sl:                                            ; preds = %.invoke.i.i
  %i.bds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bdt = load i32, ptr %i.bdk, align 4, !noalias !623, !noundef !4
  %i.bdu = add i32 %i.bdt, -1                     ; 2 uses
  store i32 %i.bdu, ptr %i.bdk, align 4, !noalias !623
  %i.bdv = icmp eq i32 %i.bdu, 0
  br i1 %i.bdv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i911, label %.thread1065

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i911: ; preds = %bb.sl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i905) #26
          to label %.thread1065 unwind label %bb.sm, !noalias !623

bb.sm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i911
  %i.bdw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !623
  unreachable

_RNvXs10_NtNtCshzWfHUSfYae_4core3ops5rangeINtB6_14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1T_11SyntaxTokenB2f_EEENtNtBa_5clone5Clone5cloneB2j_.exit.i: ; preds = %_RNvXs6_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB5_11NodeOrTokenINtNtB7_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB12_11SyntaxTokenB1n_EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1r_.exit.i.i
  %i.bdx = getelementptr inbounds nuw i8, ptr %.sroa.0949.02138, i64 16
  %.val2.i.i = load i64, ptr %i.bdx, align 8, !range !142, !alias.scope !621, !noalias !622, !noundef !4
  %i.bdy = add nuw i32 %i.bdq, 1
  store i32 %i.bdy, ptr %i.bdp, align 4, !noalias !623
  %i.bdz = getelementptr inbounds nuw i8, ptr %.sroa.0949.02138, i64 32
  %i.bea = load i8, ptr %i.bdz, align 8, !range !13, !alias.scope !621, !noalias !622, !noundef !4
  store i64 %i.bcm, ptr %i.b, align 8, !alias.scope !616, !noalias !624
  store ptr %.val5.i.i905, ptr %i.nb, align 8, !alias.scope !616, !noalias !624
  store i64 %.val2.i.i, ptr %i.nc, align 8, !alias.scope !616, !noalias !624
  store ptr %.val3.i.i906, ptr %i.nd, align 8, !alias.scope !616, !noalias !624
  store i8 %i.bea, ptr %i.ne, align 8, !alias.scope !616, !noalias !624
  %i.beb = invoke noundef ptr @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE6parentB1r_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0949.02138)
          to label %bb.so unwind label %.loopexit1319, !noalias !610 ; 2 uses

.loopexit1319:                                    ; preds = %_RNvXs10_NtNtCshzWfHUSfYae_4core3ops5rangeINtB6_14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1T_11SyntaxTokenB2f_EEENtNtBa_5clone5Clone5cloneB2j_.exit.i
  %lpad.loopexit1321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.sn

.loopexit.split-lp1320:                           ; preds = %bb.sp
  %lpad.loopexit.split-lp1322 = landingpad { ptr, i32 }
          cleanup
  br label %bb.sn

bb.sn:                                            ; preds = %.loopexit.split-lp1320, %.loopexit1319
  %lpad.phi1323 = phi { ptr, i32 } [ %lpad.loopexit1321, %.loopexit1319 ], [ %lpad.loopexit.split-lp1322, %.loopexit.split-lp1320 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEEB2v_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #27
          to label %.thread1065 unwind label %bb.sr, !noalias !610

bb.so:                                            ; preds = %_RNvXs10_NtNtCshzWfHUSfYae_4core3ops5rangeINtB6_14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1T_11SyntaxTokenB2f_EEENtNtBa_5clone5Clone5cloneB2j_.exit.i
  %.not.i909 = icmp eq ptr %i.beb, null
  br i1 %.not.i909, label %bb.sp, label %bb.sv, !prof !15

bb.sp:                                            ; preds = %bb.so
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #30
          to label %bb.sq unwind label %.loopexit.split-lp1320, !noalias !610

bb.sq:                                            ; preds = %bb.sp
  unreachable

bb.sr:                                            ; preds = %bb.sn
  %i.bec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !610
  unreachable

bb.ss:                                            ; preds = %bb.sj, %bb.si
  %.sroa.09.0 = getelementptr inbounds nuw i8, ptr %.sroa.0949.02138, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  %.sroa.09.0.val = load ptr, ptr %.sroa.09.0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.bed = getelementptr inbounds nuw i8, ptr %.sroa.09.0.val, i64 48 ; 2 uses
  %i.bee = load i32, ptr %i.bed, align 4, !noalias !625, !noundef !4 ; 2 uses
  %i.bef = icmp eq i32 %i.bee, -1
  br i1 %i.bef, label %.invoke, label %bb.st, !prof !15

bb.st:                                            ; preds = %bb.ss
  %i.beg = add nuw i32 %i.bee, 1
  store i32 %i.beg, ptr %i.bed, align 4, !noalias !625
  store i64 2, ptr %i.db, align 8, !alias.scope !625
  store ptr %.sroa.09.0.val, ptr %.sroa.4.0..sroa_idx.i917, align 8, !alias.scope !625
  store i64 %.sroa.7.02137, ptr %i.ng, align 8, !alias.scope !625
  %i.beh = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsbSS6DM8SDEO_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorE13push_back_mutB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.di, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.db)
          to label %bb.su unwind label %.loopexit1314 ; 0 uses

bb.su:                                            ; preds = %bb.st
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.sh

bb.sv:                                            ; preds = %bb.so
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !615
  store ptr %i.beb, ptr %.sroa.4.0..sroa_idx.i910, align 8, !alias.scope !610, !noalias !613
  store i64 %.sroa.7.02137, ptr %i.nf, align 8, !alias.scope !610, !noalias !613
  %i.bei = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsbSS6DM8SDEO_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorE13push_back_mutB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.di, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.da)
          to label %bb.sw unwind label %.loopexit1314 ; 0 uses

bb.sw:                                            ; preds = %bb.sv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %bb.sh

.thread:                                          ; preds = %bb.dy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit894
  %.sroa.0163.71078.ph = phi i8 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit894 ], [ 0, %bb.dy ] ; 2 uses
  br i1 %.sroa.0161.1, label %bb.tj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeEEB1g_.exit

bb.sx:                                            ; preds = %bb.sz
  br i1 %.sroa.0160.01073, label %bb.tc, label %bb.tb

.thread1065:                                      ; preds = %.loopexit1314, %.loopexit.split-lp1315, %bb.sl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i911, %bb.sn, %bb.ea, %bb.eb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit894, %bb.dy
  %.pn2811081 = phi { ptr, i32 } [ %.pn272.pn.pn.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit894 ], [ %.pn272.pn.pn.pn.pn, %bb.dy ], [ %i.pi, %bb.ea ], [ %lpad.phi1323, %bb.sn ], [ %i.pi, %bb.eb ], [ %i.bds, %bb.sl ], [ %i.bds, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i911 ], [ %lpad.loopexit1316, %.loopexit1314 ], [ %lpad.loopexit.split-lp1317, %.loopexit.split-lp1315 ] ; 4 uses
  %.sroa.0163.71079 = phi i8 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit894 ], [ 0, %bb.dy ], [ 1, %bb.ea ], [ 1, %bb.sn ], [ 1, %bb.eb ], [ 1, %bb.sl ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i911 ], [ 1, %.loopexit1314 ], [ 1, %.loopexit.split-lp1315 ] ; 4 uses
  %.sroa.0162.61077 = phi i8 [ %.sroa.0162.7, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit894 ], [ %.sroa.0162.7, %bb.dy ], [ 1, %bb.ea ], [ 1, %bb.sn ], [ 1, %bb.eb ], [ 1, %bb.sl ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i911 ], [ 1, %.loopexit1314 ], [ 1, %.loopexit.split-lp1315 ] ; 4 uses
  %.sroa.0161.01075 = phi i1 [ %.sroa.0161.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit894 ], [ %.sroa.0161.1, %bb.dy ], [ true, %bb.ea ], [ true, %bb.sn ], [ true, %bb.eb ], [ true, %bb.sl ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i911 ], [ true, %.loopexit1314 ], [ true, %.loopexit.split-lp1315 ] ; 2 uses
  %.sroa.0160.01073 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit894 ], [ false, %bb.dy ], [ true, %bb.ea ], [ true, %bb.sn ], [ true, %bb.eb ], [ true, %bb.sl ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i.i911 ], [ true, %.loopexit1314 ], [ true, %.loopexit.split-lp1315 ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %bb.sz unwind label %bb.sy

bb.sy:                                            ; preds = %.thread1065
  %i.bej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %.body438 unwind label %bb.ta

bb.sz:                                            ; preds = %.thread1065
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %bb.sx unwind label %bb.fu

bb.ta:                                            ; preds = %bb.sy
  %i.bek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.tb:                                            ; preds = %bb.sx
  br i1 %.sroa.0161.01075, label %bb.tj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeEEB1g_.exit

bb.tc:                                            ; preds = %bb.sx
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %bb.te unwind label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.bel = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %.body438 unwind label %bb.tf

bb.te:                                            ; preds = %bb.tc
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsjJXvCMGntp8_6syntax.exit926 unwind label %bb.fu

bb.tf:                                            ; preds = %bb.td
  %i.bem = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsjJXvCMGntp8_6syntax.exit926: ; preds = %bb.te
  br i1 %.sroa.0161.01075, label %bb.tj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeEEB1g_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeEEB1g_.exit: ; preds = %.thread.thread, %bb.tl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsjJXvCMGntp8_6syntax.exit926, %.thread, %bb.tb
  %.pn281108012031211 = phi { ptr, i32 } [ %.pn272.pn.pn.pn.pn, %.thread ], [ %.pn2811081, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsjJXvCMGntp8_6syntax.exit926 ], [ %.pn2811081, %bb.tb ], [ %.pn281108012031212, %bb.tl ], [ %i.tc, %.thread.thread ]
  %.sroa.0163.7107812041209 = phi i8 [ %.sroa.0163.71078.ph, %.thread ], [ %.sroa.0163.71079, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsjJXvCMGntp8_6syntax.exit926 ], [ %.sroa.0163.71079, %bb.tb ], [ %.sroa.0163.7107812041210, %bb.tl ], [ 0, %.thread.thread ]
  %.sroa.0162.6107612051207 = phi i8 [ %.sroa.0162.7, %.thread ], [ %.sroa.0162.61077, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsjJXvCMGntp8_6syntax.exit926 ], [ %.sroa.0162.61077, %bb.tb ], [ %.sroa.0162.6107612051208, %bb.tl ], [ 0, %.thread.thread ]
  invoke void @_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.di)
          to label %bb.th unwind label %bb.tg

bb.tg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeEEB1g_.exit
  %i.ben = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.di)
          to label %.body438 unwind label %bb.ti

bb.th:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeEEB1g_.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.di)
          to label %.body unwind label %bb.fu

bb.ti:                                            ; preds = %bb.tg
  %i.beo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.tj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsjJXvCMGntp8_6syntax.exit926, %.thread, %bb.tb
  %.pn281108012031212 = phi { ptr, i32 } [ %.pn272.pn.pn.pn.pn, %.thread ], [ %.pn2811081, %bb.tb ], [ %.pn2811081, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsjJXvCMGntp8_6syntax.exit926 ]
  %.sroa.0163.7107812041210 = phi i8 [ %.sroa.0163.71078.ph, %.thread ], [ %.sroa.0163.71079, %bb.tb ], [ %.sroa.0163.71079, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsjJXvCMGntp8_6syntax.exit926 ]
  %.sroa.0162.6107612051208 = phi i8 [ %.sroa.0162.7, %.thread ], [ %.sroa.0162.61077, %bb.tb ], [ %.sroa.0162.61077, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsjJXvCMGntp8_6syntax.exit926 ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %bb.tl unwind label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.bep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %.body438 unwind label %bb.tm

bb.tl:                                            ; preds = %bb.tj
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeEEB1g_.exit unwind label %bb.fu

bb.tm:                                            ; preds = %bb.tk
  %i.beq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

.body445.thread:                                  ; preds = %.body.i440, %.body445
  %.pn281.pn.pn.pn1219 = phi { ptr, i32 } [ %.pn281.pn.pn.pn, %.body445 ], [ %eh.lpad-body.i441, %.body.i440 ]
  %.sroa.0164.01218 = phi i1 [ %.sroa.0164.0, %.body445 ], [ false, %.body.i440 ]
  %.sroa.0163.01217 = phi i8 [ %.sroa.0163.0, %.body445 ], [ 1, %.body.i440 ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EENtNtB1Z_13syntax_editor16SyntaxAnnotationEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %bb.to unwind label %bb.tn

bb.tn:                                            ; preds = %.body445.thread
  %i.ber = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBS_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1H_11SyntaxTokenB22_EENtNtB26_13syntax_editor16SyntaxAnnotationEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %.body438 unwind label %bb.tp

bb.to:                                            ; preds = %.body445.thread
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBS_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1H_11SyntaxTokenB22_EENtNtB26_13syntax_editor16SyntaxAnnotationEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1e_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB23_11SyntaxTokenB2p_EENtNtB2t_13syntax_editor16SyntaxAnnotationEEEB2t_.exit939 unwind label %bb.fu

bb.tp:                                            ; preds = %bb.tn
  %i.bes = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread1053:                                      ; preds = %bb.de, %bb.dh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1e_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB23_11SyntaxTokenB2p_EENtNtB2t_13syntax_editor16SyntaxAnnotationEEEB2t_.exit939
  %.pn281.pn.pn.pn.pn1058 = phi { ptr, i32 } [ %.pn281.pn.pn.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1e_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB23_11SyntaxTokenB2p_EENtNtB2t_13syntax_editor16SyntaxAnnotationEEEB2t_.exit939 ], [ %i.of, %bb.dh ], [ %i.oc, %bb.de ]
  %.sroa.0164.41057 = phi i1 [ %.sroa.0164.4, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1e_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB23_11SyntaxTokenB2p_EENtNtB2t_13syntax_editor16SyntaxAnnotationEEEB2t_.exit939 ], [ false, %bb.dh ], [ false, %bb.de ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %bb.tr unwind label %bb.tq

bb.tq:                                            ; preds = %.thread1053
  %i.bet = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %.body438 unwind label %bb.ts

bb.tr:                                            ; preds = %.thread1053
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %.body452 unwind label %bb.fu

bb.ts:                                            ; preds = %bb.tq
  %i.beu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit946: ; preds = %.body.i.i.i.i.i457, %.body461.thread, %bb.tt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory13SyntaxFactoryEBH_.exit
  %.pn281.pn.pn.pn.pn.pn.pn1059 = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i458, %.body.i.i.i.i.i457 ], [ %.pn281.pn.pn.pn.pn.pn.pn1060, %.body461.thread ], [ %.pn281.pn.pn.pn.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory13SyntaxFactoryEBH_.exit ], [ %.pn281.pn.pn.pn.pn.pn.pn1060, %bb.tt ]
  resume { ptr, i32 } %.pn281.pn.pn.pn.pn.pn.pn1059

.body461.thread:                                  ; preds = %.body.i.i.i.i.i509, %.body461.thread1064, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory13SyntaxFactoryEBH_.exit
  %.pn281.pn.pn.pn.pn.pn.pn1060 = phi { ptr, i32 } [ %i.tu, %.body461.thread1064 ], [ %.pn281.pn.pn.pn.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory13SyntaxFactoryEBH_.exit ], [ %eh.lpad-body.i.i.i.i.i510, %.body.i.i.i.i.i509 ] ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.dt, i64 48 ; 2 uses
  %i.bew = load i32, ptr %i.bev, align 4, !noundef !4
  %i.bex = add i32 %i.bew, -1                     ; 2 uses
  store i32 %i.bex, ptr %i.bev, align 4
  %i.bey = icmp eq i32 %i.bex, 0
  br i1 %i.bey, label %bb.tt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit946

bb.tt:                                            ; preds = %.body461.thread
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dt) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit946 unwind label %bb.fu
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss6_0INtB7_5FnMutTTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2g_3api10SyntaxNodeNtNtBW_11syntax_node12RustLanguageEINtB35_11SyntaxTokenB3r_EENtBU_16SyntaxAnnotationEEE8call_mutBW_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 8 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !align !12, !noundef !4
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !align !12, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !631
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !631
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.e, align 8, !noalias !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !631
  invoke void @_RNvMNtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB2_13SyntaxMapping13upmap_element(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val1)
          to label %bb.c unwind label %.thread.i, !noalias !631

.thread.i:                                        ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.sink.split.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !range !633, !noalias !631, !noundef !4 ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 -1, label %bb.e
    i64 2, label %.thread2.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !631, !noundef !4
  store i64 %i.h, ptr %0, align 8, !alias.scope !628, !noalias !634
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !628, !noalias !634
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.3.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !628, !noalias !634
  br label %bb.f

.thread2.i:                                       ; preds = %bb.c
  store i64 2, ptr %0, align 8, !alias.scope !628, !noalias !634
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val15.i = load ptr, ptr %i.k, align 8, !noalias !631, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val15.i, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noalias !631, !noundef !4
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !noalias !631
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.sink.split.i.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !628, !noalias !634
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !628, !noalias !634
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.3.0.copyload, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !628, !noalias !634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !631
  br label %_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss6_0B7_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.sink.split.i.i: ; preds = %.thread2.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val15.i) #26
          to label %bb.f unwind label %bb.b, !noalias !631

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit.sink.split.i.i, %.thread2.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !631
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noalias !631, !noundef !4
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !noalias !631
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i, label %_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss6_0B7_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i: ; preds = %bb.f
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.2.0.copyload) #26, !noalias !631
  br label %_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss6_0B7_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit18.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i16.i, %bb.g
  resume { ptr, i32 } %i.t

bb.g:                                             ; preds = %bb.b, %.thread.i
  %i.t = phi { ptr, i32 } [ %i.f, %.thread.i ], [ %i.g, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noalias !631, !noundef !4
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !noalias !631
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i16.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit18.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i16.i: ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.2.0.copyload) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEEB1U_.exit18.i unwind label %bb.h, !noalias !631

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i16.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !631
  unreachable

_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss6_0B7_.exit: ; preds = %bb.e, %bb.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !631
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !635, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !635, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !635, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !635
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !638
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !641, !noalias !638, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !641, !noalias !638, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !641, !noalias !638
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !641, !noalias !638
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1o_6option6OptionQIB23_hEEEE9call_onceCsjJXvCMGntp8_6syntax(ptr noalias nofree readnone captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsaMQbKjKCVRW_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsjJXvCMGntp8_6syntax(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @94, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsjJXvCMGntp8_6syntax(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEjEE14insert_no_growB1y_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtB11_9edit_algo11apply_editss_0E0INtNtB1S_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 144115188075855872), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBK_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1z_11SyntaxTokenB1U_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EENtNtB1Z_13syntax_editor16SyntaxAnnotationEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1Z_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBR_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1G_11SyntaxTokenB21_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB25_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBS_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1H_11SyntaxTokenB22_EENtNtB26_13syntax_editor16SyntaxAnnotationEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB26_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1y_13syntax_editor7mapping12MappingEntryEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1y_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEjEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1y_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1y_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2n_3api10SyntaxNodeNtNtBT_11syntax_node12RustLanguageEINtB3c_11SyntaxTokenB3y_EEEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtB5_5DrainNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB11_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Q_11SyntaxTokenB2c_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2g_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB12_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1R_11SyntaxTokenB2d_EENtNtB2h_13syntax_editor16SyntaxAnnotationEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2h_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtNtCsbSS6DM8SDEO_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo15ChangedAncestorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB11_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1Q_11SyntaxTokenB2c_EEE32forget_allocation_drop_remainingB2g_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjJXvCMGntp8_6syntax(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCsaMQbKjKCVRW_12tracing_core5fieldNtNtCshzWfHUSfYae_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs3_NtCsjJXvCMGntp8_6syntax13syntax_editorNtB5_6Change12target_range(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #16

end_hunk_0
begin_hunk_1_@llvm.umax.i32
!391 = distinct !{!391, !392, !"_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMB2_SBH_7sort_byNCNvNtBJ_9edit_algo11apply_editss_0E0EBL_: argument 0"}
!392 = distinct !{!392, !"_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMB2_SBH_7sort_byNCNvNtBJ_9edit_algo11apply_editss_0E0EBL_"}
!393 = distinct !{!393, !392, !"_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeNCINvMB2_SBH_7sort_byNCNvNtBJ_9edit_algo11apply_editss_0E0EBL_: argument 1"}
!394 = !{!395, !397}
!395 = distinct !{!395, !396, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtB1B_8adapters4skip4SkipB3_EEBN_: argument 0"}
!396 = distinct !{!396, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtB1B_8adapters4skip4SkipB3_EEBN_"}
!397 = distinct !{!397, !396, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtB1B_8adapters4skip4SkipB3_EEBN_: argument 1"}
!398 = !{!399, !401}
!399 = distinct !{!399, !400, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters4skip4SkipINtNtNtB8_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEENtB2_12IntoIterator9into_iterB1I_: argument 0"}
!400 = distinct !{!400, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters4skip4SkipINtNtNtB8_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEENtB2_12IntoIterator9into_iterB1I_"}
!401 = distinct !{!401, !400, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters4skip4SkipINtNtNtB8_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEENtB2_12IntoIterator9into_iterB1I_: argument 1"}
!402 = !{!395}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB8_4skip4SkipBR_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldTRB1h_B3H_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCNvNtB1j_9edit_algo11apply_editss0_0NCINvNvB2q_3all5checkB3G_NCB4B_s1_0E0E0B3S_EB1l_: argument 0"}
!405 = distinct !{!405, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB8_4skip4SkipBR_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldTRB1h_B3H_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCNvNtB1j_9edit_algo11apply_editss0_0NCINvNvB2q_3all5checkB3G_NCB4B_s1_0E0E0B3S_EB1l_"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB8_4skip4SkipBR_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldTRB1h_B3H_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCNvNtB1j_9edit_algo11apply_editss0_0NCINvNvB2q_3all5checkB3G_NCB4B_s1_0E0E0B3S_EB1l_: argument 1"}
!408 = !{!409, !411, !404}
!409 = distinct !{!409, !410, !"_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB7_4skip4SkipBW_EEINtB5_7ZipImplBW_B28_E4nextB1q_: argument 0"}
!410 = distinct !{!410, !"_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB7_4skip4SkipBW_EEINtB5_7ZipImplBW_B28_E4nextB1q_"}
!411 = distinct !{!411, !412, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB6_4skip4SkipBV_EENtNtNtB8_6traits8iterator8Iterator4nextB1p_: argument 0"}
!412 = distinct !{!412, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB6_4skip4SkipBV_EENtNtNtB8_6traits8iterator8Iterator4nextB1p_"}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTRNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeB16_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtB19_9edit_algo11apply_editss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB15_NCB2H_s1_0E0E0B1b_: argument 0"}
!415 = distinct !{!415, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTRNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeB16_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtB19_9edit_algo11apply_editss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB15_NCB2H_s1_0E0E0B1b_"}
!416 = !{!417}
!417 = distinct !{!417, !415, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTRNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeB16_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvNtB19_9edit_algo11apply_editss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB15_NCB2H_s1_0E0E0B1b_: argument 1"}
!418 = !{!417, !407}
!419 = !{!414, !407}
!420 = !{!421, !423, !424}
!421 = distinct !{!421, !422, !"_RINvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo27report_intersecting_changesNCNvB2_11apply_edits0EB6_: argument 0"}
!422 = distinct !{!422, !"_RINvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo27report_intersecting_changesNCNvB2_11apply_edits0EB6_"}
!423 = distinct !{!423, !422, !"_RINvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo27report_intersecting_changesNCNvB2_11apply_edits0EB6_: argument 1"}
!424 = distinct !{!424, !422, !"_RINvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo27report_intersecting_changesNCNvB2_11apply_edits0EB6_: argument 2"}
!425 = !{!426, !428, !421, !423, !424}
!426 = distinct !{!426, !427, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtB1B_8adapters4skip4SkipB3_EEBN_: argument 0"}
!427 = distinct !{!427, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtB1B_8adapters4skip4SkipB3_EEBN_"}
!428 = distinct !{!428, !427, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtB1B_8adapters4skip4SkipB3_EEBN_: argument 1"}
!429 = !{!430, !432}
!430 = distinct !{!430, !431, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters4skip4SkipINtNtNtB8_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEENtB2_12IntoIterator9into_iterB1I_: argument 0"}
!431 = distinct !{!431, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters4skip4SkipINtNtNtB8_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEENtB2_12IntoIterator9into_iterB1I_"}
!432 = distinct !{!432, !431, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters4skip4SkipINtNtNtB8_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEENtB2_12IntoIterator9into_iterB1I_: argument 1"}
!433 = !{!426, !421, !423, !424}
!434 = !{i64 0, i64 -9223372036854775807}
!435 = !{!436, !438, !421, !423, !424}
!436 = distinct !{!436, !437, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB5_12SpecToString14spec_to_stringB1h_: argument 0"}
!437 = distinct !{!437, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB5_12SpecToString14spec_to_stringB1h_"}
!438 = distinct !{!438, !437, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB5_12SpecToString14spec_to_stringB1h_: argument 1"}
!439 = !{!436}
!440 = !{!438, !421, !423, !424}
!441 = !{!442, !444, !446}
!442 = distinct !{!442, !443, !"_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB7_4skip4SkipBW_EEINtB5_7ZipImplBW_B28_E4nextB1q_: argument 0"}
!443 = distinct !{!443, !"_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB7_4skip4SkipBW_EEINtB5_7ZipImplBW_B28_E4nextB1q_"}
!444 = distinct !{!444, !445, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB6_4skip4SkipBV_EENtNtNtB8_6traits8iterator8Iterator4nextB1p_: argument 0"}
!445 = distinct !{!445, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB6_4skip4SkipBV_EENtNtNtB8_6traits8iterator8Iterator4nextB1p_"}
!446 = distinct !{!446, !447, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB8_4skip4SkipBR_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldTRB1h_B3H_EuINtNtNtBc_3ops12control_flow11ControlFlowB3G_ENCINvNtB1j_9edit_algo27report_intersecting_changesNCNvB4H_11apply_edits0E0NCINvNvB2q_4find5checkB3G_QNCB4E_s_0E0E0B3S_EB1l_: argument 0:pre.rot"}
!447 = distinct !{!447, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB8_4skip4SkipBR_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldTRB1h_B3H_EuINtNtNtBc_3ops12control_flow11ControlFlowB3G_ENCINvNtB1j_9edit_algo27report_intersecting_changesNCNvB4H_11apply_edits0E0NCINvNvB2q_4find5checkB3G_QNCB4E_s_0E0E0B3S_EB1l_"}
!448 = !{!449, !421, !423, !424}
!449 = distinct !{!449, !447, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB8_4skip4SkipBR_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldTRB1h_B3H_EuINtNtNtBc_3ops12control_flow11ControlFlowB3G_ENCINvNtB1j_9edit_algo27report_intersecting_changesNCNvB4H_11apply_edits0E0NCINvNvB2q_4find5checkB3G_QNCB4E_s_0E0E0B3S_EB1l_: argument 1:pre.rot"}
!450 = !{!451}
!451 = distinct !{!451, !447, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB8_4skip4SkipBR_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldTRB1h_B3H_EuINtNtNtBc_3ops12control_flow11ControlFlowB3G_ENCINvNtB1j_9edit_algo27report_intersecting_changesNCNvB4H_11apply_edits0E0NCINvNvB2q_4find5checkB3G_QNCB4E_s_0E0E0B3S_EB1l_: argument 0"}
!452 = !{!453}
!453 = distinct !{!453, !447, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB8_4skip4SkipBR_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldTRB1h_B3H_EuINtNtNtBc_3ops12control_flow11ControlFlowB3G_ENCINvNtB1j_9edit_algo27report_intersecting_changesNCNvB4H_11apply_edits0E0NCINvNvB2q_4find5checkB3G_QNCB4E_s_0E0E0B3S_EB1l_: argument 1"}
!454 = !{!451, !421, !423, !424}
!455 = !{!442, !444, !451}
!456 = !{!453, !421, !423, !424}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTRNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeB16_EuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCINvNtB19_9edit_algo27report_intersecting_changesNCNvB2N_11apply_edits0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2K_s_0E0E0B1b_: argument 0"}
!459 = distinct !{!459, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTRNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeB16_EuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCINvNtB19_9edit_algo27report_intersecting_changesNCNvB2N_11apply_edits0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2K_s_0E0E0B1b_"}
!460 = !{!461}
!461 = distinct !{!461, !459, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTRNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeB16_EuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCINvNtB19_9edit_algo27report_intersecting_changesNCNvB2N_11apply_edits0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2K_s_0E0E0B1b_: argument 1"}
!462 = !{!461, !453}
!463 = !{!458, !453}
!464 = !{!465, !461, !453}
!465 = distinct !{!465, !466, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkTRNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeB1d_EQNCINvNtB1g_9edit_algo27report_intersecting_changesNCNvB2a_11apply_edits0Es_0E0B1i_: argument 1"}
!466 = distinct !{!466, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkTRNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeB1d_EQNCINvNtB1g_9edit_algo27report_intersecting_changesNCNvB2a_11apply_edits0Es_0E0B1i_"}
!467 = !{!"address", !"read_provenance"}
!468 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!469 = !{!"branch_weights", i32 1073205, i32 2146410443}
!470 = !{!471}
!471 = distinct !{!471, !472, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range: argument 0"}
!472 = distinct !{!472, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range"}
!473 = !{!"branch_weights", i32 2146410443, i32 1073205}
!474 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!475 = !{!476}
!476 = distinct !{!476, !477, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range: argument 0"}
!477 = distinct !{!477, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range"}
!478 = !{!479}
!479 = distinct !{!479, !480, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsjJXvCMGntp8_6syntax: argument 0"}
!480 = distinct !{!480, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsjJXvCMGntp8_6syntax"}
!481 = !{!482}
!482 = distinct !{!482, !483, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range: argument 0"}
!483 = distinct !{!483, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range"}
!484 = !{!485}
!485 = distinct !{!485, !486, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsjJXvCMGntp8_6syntax: argument 0"}
!486 = distinct !{!486, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsjJXvCMGntp8_6syntax"}
!487 = !{!488}
!488 = distinct !{!488, !489, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsjJXvCMGntp8_6syntax: argument 0"}
!489 = distinct !{!489, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsjJXvCMGntp8_6syntax"}
!490 = !{!442, !444, !491}
!491 = distinct !{!491, !447, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB8_4skip4SkipBR_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldTRB1h_B3H_EuINtNtNtBc_3ops12control_flow11ControlFlowB3G_ENCINvNtB1j_9edit_algo27report_intersecting_changesNCNvB4H_11apply_edits0E0NCINvNvB2q_4find5checkB3G_QNCB4E_s_0E0E0B3S_EB1l_: argument 0:h.rot"}
!492 = !{!493, !421, !423, !424}
!493 = distinct !{!493, !447, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEINtNtB8_4skip4SkipBR_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldTRB1h_B3H_EuINtNtNtBc_3ops12control_flow11ControlFlowB3G_ENCINvNtB1j_9edit_algo27report_intersecting_changesNCNvB4H_11apply_edits0E0NCINvNvB2q_4find5checkB3G_QNCB4E_s_0E0E0B3S_EB1l_: argument 1:h.rot"}
!494 = !{!495, !497}
!495 = distinct !{!495, !496, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell7RefCellNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor7mapping13SyntaxMappingEEEB1o_: argument 0"}
!496 = distinct !{!496, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell7RefCellNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor7mapping13SyntaxMappingEEEB1o_"}
!497 = distinct !{!497, !498, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory13SyntaxFactoryEBH_: argument 0"}
!498 = distinct !{!498, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory13SyntaxFactoryEBH_"}
!499 = !{!500, !502}
!500 = distinct !{!500, !501, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell7RefCellNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor7mapping13SyntaxMappingEEEB1o_: argument 0"}
!501 = distinct !{!501, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell7RefCellNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor7mapping13SyntaxMappingEEEB1o_"}
!502 = distinct !{!502, !503, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory13SyntaxFactoryEBH_: argument 0"}
!503 = distinct !{!503, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory13SyntaxFactoryEBH_"}
!504 = !{!505}
!505 = distinct !{!505, !506, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax: argument 0"}
!506 = distinct !{!506, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax"}
!507 = !{!508}
!508 = distinct !{!508, !509, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB14_: argument 1"}
!509 = distinct !{!509, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB14_"}
!510 = !{!511}
!511 = distinct !{!511, !509, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB14_: argument 0"}
!512 = !{!511, !508}
!513 = !{!514}
!514 = distinct !{!514, !515, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsjJXvCMGntp8_6syntax: argument 0"}
!515 = distinct !{!515, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsjJXvCMGntp8_6syntax"}
!516 = !{!517}
!517 = distinct !{!517, !518, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_: argument 1"}
!518 = distinct !{!518, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_"}
!519 = !{!520}
!520 = distinct !{!520, !518, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_: argument 0"}
!521 = !{!522, !524}
!522 = distinct !{!522, !523, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell7RefCellNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor7mapping13SyntaxMappingEEEB1o_: argument 0"}
!523 = distinct !{!523, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell7RefCellNtNtNtCsjJXvCMGntp8_6syntax13syntax_editor7mapping13SyntaxMappingEEEB1o_"}
!524 = distinct !{!524, !525, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory13SyntaxFactoryEBH_: argument 0"}
!525 = distinct !{!525, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory13SyntaxFactoryEBH_"}
!526 = !{!527, !529}
!527 = distinct !{!527, !528, !"_RNvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2A_3api10SyntaxNodeNtNtB16_11syntax_node12RustLanguageEINtB3p_11SyntaxTokenB3L_EEEE9or_insertB16_: argument 0"}
!528 = distinct !{!528, !"_RNvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2A_3api10SyntaxNodeNtNtB16_11syntax_node12RustLanguageEINtB3p_11SyntaxTokenB3L_EEEE9or_insertB16_"}
!529 = distinct !{!529, !528, !"_RNvMs18_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2A_3api10SyntaxNodeNtNtB16_11syntax_node12RustLanguageEINtB3p_11SyntaxTokenB3L_EEEE9or_insertB16_: argument 1"}
!530 = !{!527}
!531 = !{!532}
!532 = distinct !{!532, !533, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBK_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1z_11SyntaxTokenB1U_EEE8push_mutB1Y_: argument 0"}
!533 = distinct !{!533, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBK_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1z_11SyntaxTokenB1U_EEE8push_mutB1Y_"}
!534 = !{!535}
!535 = distinct !{!535, !518, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_: argument 1:h.rot"}
!536 = !{!537}
!537 = distinct !{!537, !538, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEEB2v_: argument 0"}
!538 = distinct !{!538, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEEB2v_"}
!539 = !{!540}
!540 = distinct !{!540, !541, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEBF_: argument 0"}
!541 = distinct !{!541, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeEBF_"}
!542 = !{!543}
!543 = distinct !{!543, !544, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEEB2v_: argument 0"}
!544 = distinct !{!544, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEEB2v_"}
!545 = !{!543, !540}
!546 = !{!547}
!547 = distinct !{!547, !515, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsjJXvCMGntp8_6syntax: argument 0:h.rot"}
!548 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 2000, i32 1, i32 1}
!549 = !{!550, !552}
!550 = distinct !{!550, !551, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_: argument 0"}
!551 = distinct !{!551, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_"}
!552 = distinct !{!552, !551, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_: argument 1"}
!553 = !{!550}
!554 = !{!555, !557}
!555 = distinct !{!555, !556, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_: argument 0"}
!556 = distinct !{!556, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_"}
!557 = distinct !{!557, !556, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_: argument 1"}
!558 = !{!555}
!559 = !{!560, !562}
!560 = distinct !{!560, !561, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss4_0B7_: argument 0"}
!561 = distinct !{!561, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss4_0B7_"}
!562 = distinct !{!562, !561, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss4_0B7_: argument 1"}
!563 = !{!560}
!564 = !{!565, !567}
!565 = distinct !{!565, !566, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_: argument 0"}
!566 = distinct !{!566, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_"}
!567 = distinct !{!567, !566, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_: argument 1"}
!568 = !{!565}
!569 = !{!570, !572}
!570 = distinct !{!570, !571, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_: argument 0"}
!571 = distinct !{!571, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_"}
!572 = distinct !{!572, !571, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss5_0B7_: argument 1"}
!573 = !{!570}
!574 = !{!575}
!575 = distinct !{!575, !576, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEEB2v_: argument 0"}
!576 = distinct !{!576, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEEB2v_"}
!577 = !{!578}
!578 = distinct !{!578, !509, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB14_: argument 1:h.rot"}
!579 = !{!580, !582}
!580 = distinct !{!580, !581, !"_RNvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algoNtB4_11TreeMutator15make_syntax_mut: argument 0"}
!581 = distinct !{!581, !"_RNvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algoNtB4_11TreeMutator15make_syntax_mut"}
!582 = distinct !{!582, !581, !"_RNvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algoNtB4_11TreeMutator15make_syntax_mut: argument 1"}
!583 = !{!584, !586}
!584 = distinct !{!584, !585, !"_RNvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algoNtB4_11TreeMutator15make_syntax_mut: argument 0"}
!585 = distinct !{!585, !"_RNvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algoNtB4_11TreeMutator15make_syntax_mut"}
!586 = distinct !{!586, !585, !"_RNvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algoNtB4_11TreeMutator15make_syntax_mut: argument 1"}
!587 = !{!588}
!588 = distinct !{!588, !589, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEEB2v_: argument 0"}
!589 = distinct !{!589, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEEB2v_"}
!590 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!591 = !{!"branch_weights", !"expected", i32 2145370776, i32 2112872}
!592 = !{!"branch_weights", !"expected", i32 2145370777, i32 2112871}
!593 = !{!594}
!594 = distinct !{!594, !595, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBK_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1z_11SyntaxTokenB1U_EEE8push_mutB1Y_: argument 0"}
!595 = distinct !{!595, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBK_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1z_11SyntaxTokenB1U_EEE8push_mutB1Y_"}
!596 = !{!597}
!597 = distinct !{!597, !506, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax: argument 0:h.rot"}
!598 = !{!599}
!599 = distinct !{!599, !600, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBK_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1z_11SyntaxTokenB1U_EEE8push_mutB1Y_: argument 0"}
!600 = distinct !{!600, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBK_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1z_11SyntaxTokenB1U_EEE8push_mutB1Y_"}
!601 = !{!602}
!602 = distinct !{!602, !603, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeE8push_mutBN_: argument 0"}
!603 = distinct !{!603, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_edits15DependentChangeE8push_mutBN_"}
!604 = !{!605}
!605 = distinct !{!605, !606, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax: argument 0"}
!606 = distinct !{!606, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax"}
!607 = !{!608}
!608 = distinct !{!608, !609, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax: argument 0"}
!609 = distinct !{!609, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmE8push_mutCsjJXvCMGntp8_6syntax"}
!610 = !{!611}
!611 = distinct !{!611, !612, !"_RNvMNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algoNtB2_15ChangedAncestor8multiple: argument 0"}
!612 = distinct !{!612, !"_RNvMNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algoNtB2_15ChangedAncestor8multiple"}
!613 = !{!614}
!614 = distinct !{!614, !612, !"_RNvMNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algoNtB2_15ChangedAncestor8multiple: argument 1"}
!615 = !{!611, !614}
!616 = !{!617}
!617 = distinct !{!617, !618, !"_RNvXs10_NtNtCshzWfHUSfYae_4core3ops5rangeINtB6_14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1T_11SyntaxTokenB2f_EEENtNtBa_5clone5Clone5cloneB2j_: argument 0"}
!618 = distinct !{!618, !"_RNvXs10_NtNtCshzWfHUSfYae_4core3ops5rangeINtB6_14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1T_11SyntaxTokenB2f_EEENtNtBa_5clone5Clone5cloneB2j_"}
!619 = !{!620}
!620 = distinct !{!620, !618, !"_RNvXs10_NtNtCshzWfHUSfYae_4core3ops5rangeINtB6_14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB14_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1T_11SyntaxTokenB2f_EEENtNtBa_5clone5Clone5cloneB2j_: argument 1"}
!621 = !{!620, !614}
!622 = !{!617, !611}
!623 = !{!617, !620, !611, !614}
!624 = !{!620, !611, !614}
!625 = !{!626}
!626 = distinct !{!626, !627, !"_RNvMNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algoNtB2_15ChangedAncestor6single: argument 0"}
!627 = distinct !{!627, !"_RNvMNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algoNtB2_15ChangedAncestor6single"}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss6_0B7_: argument 0"}
!630 = distinct !{!630, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss6_0B7_"}
!631 = !{!629, !632}
!632 = distinct !{!632, !630, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax13syntax_editor9edit_algo11apply_editss6_0B7_: argument 1"}
!633 = !{i64 -1, i64 3}
!634 = !{!632}
!635 = !{!636}
!636 = distinct !{!636, !637, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!637 = distinct !{!637, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!638 = !{!639}
!639 = distinct !{!639, !640, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 1"}
!640 = distinct !{!640, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str"}
!641 = !{!642, !644}
!642 = distinct !{!642, !643, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsjJXvCMGntp8_6syntax: argument 0"}
!643 = distinct !{!643, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsjJXvCMGntp8_6syntax"}
!644 = distinct !{!644, !640, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 0"}
end_hunk_1
