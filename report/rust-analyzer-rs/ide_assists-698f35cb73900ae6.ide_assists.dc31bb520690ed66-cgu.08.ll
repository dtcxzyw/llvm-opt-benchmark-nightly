Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.08?download=true
inline.NumInlined: 5719
inline.NumDeleted: 2221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15flip_or_pattern15flip_or_pattern:bb.a
  br i1 %i.be, label %bb.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit73

bb.ab:                                            ; preds = %bb.z, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit73
  %i.bf = getelementptr inbounds nuw i8, ptr %., i64 48 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !5
  %i.bh = add i32 %i.bg, -1                       ; 2 uses
  store i32 %i.bh, ptr %i.bf, align 4
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ao) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.am

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 48 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !5
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i71, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit73

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i71: ; preds = %bb.ad
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bd) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit73 unwind label %bb.x

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit73: ; preds = %bb.ad, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i71, %bb.aa
  %.not35 = icmp eq ptr %.40, null
  br i1 %.not35, label %bb.ab, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit73
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.bo = load i8, ptr %i.bn, align 4, !range !6, !noundef !5
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.ag, label %bb.af, !prof !7

bb.af:                                            ; preds = %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.br = load i32, ptr %i.bq, align 8, !noundef !5
  br label %.noexc76

bb.ag:                                            ; preds = %bb.ae
  %i.bs = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.f)
          to label %.noexc76 unwind label %bb.aq

.noexc76:                                         ; preds = %bb.ag, %bb.af
  %.sroa.0.0.i74 = phi i32 [ %i.br, %bb.af ], [ %i.bs, %bb.ag ] ; 3 uses
  %i.bt = load i64, ptr %i.f, align 8, !range !10, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bv = trunc nuw i64 %i.bt to i1
  %i.bw = load ptr, ptr %i.bu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.bv, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.noexc76
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noundef !5 ; 2 uses
  %i.bz = icmp ugt i64 %i.by, 4294967295
  %i.ca = shl nuw i64 %i.by, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.bz, i64 513, i64 %i.ca ; 2 uses
  %i.cb = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.cb, label %bb.ai, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !7

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #31
          to label %.noexc77 unwind label %bb.aq

.noexc77:                                         ; preds = %bb.ai
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.ah
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.ak

bb.aj:                                            ; preds = %.noexc76
  %i.cc = load i32, ptr %i.bw, align 8, !noundef !5
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.cc, %bb.aj ]
  %i.cd = add i32 %.sroa.02.0.i, %.sroa.0.0.i74   ; 2 uses
  %.not.i75 = icmp ugt i32 %.sroa.0.0.i74, %i.cd
  br i1 %.not.i75, label %bb.al, label %bb.an, !prof !7

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #31
          to label %.noexc78 unwind label %bb.aq

.noexc78:                                         ; preds = %bb.al
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit59.sink.split: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5OrPatECsiU5vK8fN4ZC_11ide_assists.exit68, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5OrPatECsiU5vK8fN4ZC_11ide_assists.exit81
  %.sroa.0.6.ph = phi i1 [ %i.ck, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5OrPatECsiU5vK8fN4ZC_11ide_assists.exit81 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5OrPatECsiU5vK8fN4ZC_11ide_assists.exit68 ]
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.f) #27
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit59

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit59: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit59.sink.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5OrPatECsiU5vK8fN4ZC_11ide_assists.exit81, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5OrPatECsiU5vK8fN4ZC_11ide_assists.exit68, %bb.a
  %.sroa.0.6 = phi i1 [ %i.ck, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5OrPatECsiU5vK8fN4ZC_11ide_assists.exit81 ], [ false, %bb.a ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5OrPatECsiU5vK8fN4ZC_11ide_assists.exit68 ], [ %.sroa.0.6.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit59.sink.split ]
  ret i1 %.sroa.0.6

bb.am:                                            ; preds = %bb.q, %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %bb.ac, %bb.an
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val46.pre = load ptr, ptr %i.e, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit86

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @64, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 15, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 5, ptr %i.cg, align 8
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %., ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.40, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %i.cj, align 8
  %i.ck = invoke noundef zeroext i1 @_RINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB5_7Assists3addReNCNvNtNtB7_8handlers15flip_or_pattern15flip_or_pattern0EB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 13, i32 noundef %.sroa.0.0.i74, i32 noundef %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %bb.ao unwind label %bb.am     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val44 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val44, i64 48 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !noundef !5
  %i.cn = add i32 %i.cm, -1                       ; 2 uses
  store i32 %i.cn, ptr %i.cl, align 4
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5OrPatECsiU5vK8fN4ZC_11ide_assists.exit81

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val44) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5OrPatECsiU5vK8fN4ZC_11ide_assists.exit81 unwind label %bb.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5OrPatECsiU5vK8fN4ZC_11ide_assists.exit81: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cp = load i32, ptr %i.aa, align 8, !noundef !5
  %i.cq = add i32 %i.cp, -1                       ; 2 uses
  store i32 %i.cq, ptr %i.aa, align 8
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit59.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit59

bb.aq:                                            ; preds = %bb.al, %bb.ag, %bb.ai
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.40, i64 48 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !noundef !5
  %i.cu = add i32 %i.ct, -1                       ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 4
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bd) #27
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.au, %bb.ar, %bb.p, %bb.e
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.at:                                            ; preds = %bb.x, %bb.ar, %bb.aq
  %.pn.ph = phi { ptr, i32 } [ %i.az, %bb.x ], [ %lpad.thr_comm, %bb.ar ], [ %lpad.thr_comm, %bb.aq ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %., i64 48 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !noundef !5
  %i.cz = add i32 %i.cy, -1                       ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 4
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.au, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit86

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ao) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit86 unwind label %bb.as

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %.pn38
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15merge_nested_if15has_logic_op_or(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 !guid !5598 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !5
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call i16 @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr7op_kind(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %.sroa.06.0.extract.trunc = trunc i16 %i.d to i8 ; 2 uses
  switch i8 %.sroa.06.0.extract.trunc, label %bb.c [
    i8 -1, label %bb.d
    i8 3, label %1
  ]

1:                                                ; preds = %bb.b
  %2 = and i16 %i.d, 256
  %3 = icmp ne i16 %2, 0
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i8 %.sroa.06.0.extract.trunc, 5
  tail call void @llvm.assume(i1 %i.e)
  br label %bb.d

bb.d:                                             ; preds = %1, %bb.c, %bb.b, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %3, %1 ], [ false, %bb.c ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15merge_nested_if15merge_nested_if(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !5599 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 4                 ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  %i.l = tail call noundef ptr @_RNvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB2_13AssistContext27find_token_syntax_at_offset(ptr noundef nonnull align 8 %1, i16 noundef 71) ; 12 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit113, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val89 = load ptr, ptr %i.m, align 8, !noundef !5 ; 9 uses
  %.not.i = icmp eq ptr %.val89, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsiU5vK8fN4ZC_11ide_assists.exit118, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.val89, i64 48 ; 12 uses
  %i.o = load i32, ptr %i.n, align 4, !noundef !5 ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.d, label %bb.g, !prof !7

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #26
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit, %bb.v, %bb.h, %bb.i, %bb.f
  %.pn64 = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.u, %bb.f ], [ %i.x, %bb.i ], [ %.pn62, %bb.v ], [ %.pn62, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !noundef !5
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 8
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit

bb.e:                                             ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.l) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.bm

bb.f:                                             ; preds = %bb.bl, %bb.aa, %bb.l, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.v = add nuw i32 %i.o, 1
  store i32 %i.v, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.val89, ptr %i.b, align 8
  %i.w = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load i32, ptr %i.n, align 4, !noundef !5
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.n, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val89) #27
          to label %.body unwind label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.ab = icmp eq i16 %i.w, 214
  br i1 %i.ab, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %i.n, align 4, !noundef !5
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.n, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val89) #27
          to label %.thread unwind label %bb.f

bb.m:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

.thread:                                          ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsiU5vK8fN4ZC_11ide_assists.exit118

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.val89, ptr %i.k, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.ah = load i8, ptr %i.ag, align 4, !range !6, !noundef !5
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.p, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !noundef !5
  br label %.noexc110

bb.p:                                             ; preds = %bb.n
  %i.al = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.l)
          to label %.noexc110 unwind label %bb.w

.noexc110:                                        ; preds = %bb.p, %bb.o
  %.sroa.0.0.i108 = phi i32 [ %i.ak, %bb.o ], [ %i.al, %bb.p ] ; 4 uses
  %i.am = load i64, ptr %i.l, align 8, !range !10, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ao = trunc nuw i64 %i.am to i1
  %i.ap = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.ao, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.noexc110
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 4294967295
  %i.at = shl nuw i64 %i.ar, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.as, i64 513, i64 %i.at ; 2 uses
  %i.au = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.au, label %bb.r, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !7

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #31
          to label %.noexc111 unwind label %bb.w

.noexc111:                                        ; preds = %bb.r
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.q
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.t

bb.s:                                             ; preds = %.noexc110
  %i.av = load i32, ptr %i.ap, align 8, !noundef !5
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.av, %bb.s ]
  %i.aw = add i32 %.sroa.02.0.i, %.sroa.0.0.i108  ; 3 uses
  %.not.i109 = icmp ugt i32 %.sroa.0.0.i108, %i.aw
  br i1 %.not.i109, label %bb.u, label %bb.x, !prof !7

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #31
          to label %.noexc112 unwind label %bb.w

.noexc112:                                        ; preds = %bb.u
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsiU5vK8fN4ZC_11ide_assists.exit118: ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext10ElseBranchEECsiU5vK8fN4ZC_11ide_assists.exit122, %bb.aa, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !5
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit113.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit113

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit179, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %bb.w
  %.pn62 = phi { ptr, i32 } [ %i.be, %bb.w ], [ %.pn60, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ], [ %.pn60, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit179 ] ; 2 uses
  %i.bb = load i32, ptr %i.n, align 4, !noundef !5
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.n, align 4
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.v, label %.body

bb.v:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val89) #27
          to label %.body unwind label %bb.bm

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i167, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i124, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i120, %bb.u, %bb.r, %bb.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext10ElseBranchEECsiU5vK8fN4ZC_11ide_assists.exit, %bb.z
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit

bb.x:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bg = load i32, ptr %i.bf, align 8, !noundef !5
  %.not42 = icmp ugt i32 %.sroa.0.0.i108, %i.bg
end_hunk_0
