Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.02?download=true
inline.NumInlined: 5987
inline.NumDeleted: 1935
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB7_7Assists3addReNCNvNtNtB9_8handlers10flip_comma10flip_commas_0E0B9_:bb.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit77.i: ; preds = %bb.ao, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.thread.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i
  %.pn18.pn.pn86.i = phi { ptr, i32 } [ %.pn1897.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i ], [ %.pn18.pn.pn87.i, %bb.ao ], [ %.pn18.pn.pn87.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.thread.i ]
  resume { ptr, i32 } %.pn18.pn.pn86.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.thread.i: ; preds = %bb.an, %bb.am, %.thread.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i
  %.pn18.pn.pn87.i = phi { ptr, i32 } [ %i.m, %.thread.i ], [ %.pn1897.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i ], [ %i.cg, %bb.an ], [ %i.cg, %bb.am ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !noalias !3476, !noundef !4
  %i.cm = add i32 %i.cl, -1                       ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 8, !noalias !3476
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit77.i

bb.ao:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.thread.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.copyload) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit77.i unwind label %bb.ab, !noalias !3476

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma10flip_commas_0B7_.exit: ; preds = %bb.ah, %bb.ai, %bb.aj
  ret void

bb.ap:                                            ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB7_7Assists3addReNCNvNtNtB9_8handlers10move_guard22move_guard_to_arm_bodys0_0E0B9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [144 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [144 x i8], align 8               ; 10 uses
  %.sroa.11 = alloca [16 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !align !24, !noundef !4 ; 13 uses
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 14 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.5.sroa.8.0.copyload = load ptr, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.5.sroa.9.0.copyload = load ptr, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.sroa.5.sroa.10.0.copyload = load ptr, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.5.sroa.11.0.copyload = load ptr, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %.sroa.5.sroa.12.0.copyload = load ptr, ptr %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %.sroa.5.sroa.13.0.copyload = load ptr, ptr %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  store i64 -1, ptr %i.g, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.ae, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3495
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.7.0.copyload) ]
  invoke void @_RNvMs6_NtCs6oosyzwIepl_6ide_db13source_changeNtB5_19SourceChangeBuilder11make_editor(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.5.sroa.7.0.copyload)
          to label %bb.c unwind label %bb.ac, !noalias !3496

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3495
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %i.e, align 8, !noalias !3497
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.10.16..sroa_idx, align 8, !noalias !3497
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false), !noalias !3497
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit49.i, %bb.c
  %i.k = phi i64 [ %.pre, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit49.i ], [ %.sroa.5.sroa.4.0.copyload, %bb.c ] ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.i, label %.thread62.i, label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit52.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i50.i, %bb.ab, %bb.x, %.loopexit.split-lp.i, %.loopexit.i
  %.pn15.i = phi { ptr, i32 } [ %i.br, %bb.ab ], [ %i.bl, %bb.x ], [ %i.br, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i50.i ], [ %lpad.loopexit109.i, %.loopexit.i ], [ %lpad.loopexit.split-lp110.i, %.loopexit.split-lp.i ]
  %.val34.i = load i64, ptr %i.e, align 8, !range !10, !noalias !3495, !noundef !4
  %.val35.i = load ptr, ptr %.sroa.10.16..sroa_idx, align 8, !noalias !3495
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_(i64 %.val34.i, ptr %.val35.i) #26
          to label %.thread88.i unwind label %bb.t, !noalias !3496

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit109.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit52.i

.loopexit.split-lp.i:                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i47.i
  %lpad.loopexit.split-lp110.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit52.i

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %.sroa.10.16..sroa_idx, align 8, !alias.scope !3498, !noalias !3495
  %.not4.i.i = icmp eq i64 %i.k, 2                ; 2 uses
  %spec.store.select.i.i = select i1 %.not4.i.i, i64 -1, i64 2
  store i64 %spec.store.select.i.i, ptr %i.e, align 8, !alias.scope !3499, !noalias !3495
  call void @llvm.experimental.noalias.scope.decl(metadata !3500)
  br i1 %.not4.i.i, label %.thread62.i, label %.thread72.i

.thread62.i:                                      ; preds = %bb.e, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !3501)
  %i.m = load ptr, ptr %.sroa.11.16..sroa_idx, align 8, !alias.scope !3502, !noalias !3495, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_.exit.i, label %bb.f

bb.f:                                             ; preds = %.thread62.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3503)
  call void @llvm.experimental.noalias.scope.decl(metadata !3504)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3505
  store ptr %i.h, ptr %i.a, align 8, !noalias !3506
  %i.n = load ptr, ptr %i.i, align 8, !alias.scope !3507, !noalias !3508, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %.thread66.i.thread9, label %.lr.ph.i.i.i.i.i

.thread66.i.thread9:                              ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3505
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %i.p = phi ptr [ %i.q, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %i.q, ptr %.sroa.11.16..sroa_idx, align 8, !alias.scope !3507, !noalias !3508
  %i.r = invoke { i64, ptr } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0INtB7_5FnMutTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmEE8call_mutBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !3496 ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.s = extractvalue { i64, ptr } %i.r, 0        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.s, 2
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc.i
  %i.t = icmp eq ptr %i.q, %i.n
  br i1 %i.t, label %.thread66.i, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %.noexc.i
  %i.u = extractvalue { i64, ptr } %i.r, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3505
  br label %.thread72.i

.thread72.i:                                      ; preds = %bb.h, %bb.e
  %.pn10.i79.i = phi ptr [ %i.u, %bb.h ], [ %i.l, %bb.e ] ; 8 uses
  %.pn12.i78.i = phi i64 [ %i.s, %bb.h ], [ %i.k, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3495
  store i64 %.pn12.i78.i, ptr %i.d, align 8, !noalias !3495
  store ptr %.pn10.i79.i, ptr %i.j, align 8, !noalias !3495
  %i.v = invoke noundef i16 @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %bb.y unwind label %bb.ab, !noalias !3496

.thread66.i:                                      ; preds = %bb.g
  %.val32.pre.pre.i = load i64, ptr %i.e, align 8, !range !10, !noalias !3495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3505
  %.val33.i = load ptr, ptr %.sroa.10.16..sroa_idx, align 8, !noalias !3495 ; 3 uses
  switch i64 %.val32.pre.pre.i, label %bb.i [
    i64 -1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_.exit.i
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_.exit.i
  ]

bb.i:                                             ; preds = %.thread66.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val33.i) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.val33.i, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noalias !3496, !noundef !4
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !noalias !3496
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val33.i) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_.exit.i unwind label %.thread97.loopexit.split-lp.i, !noalias !3496

.thread97.loopexit.i:                             ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread88.i

.thread97.loopexit.split-lp.i:                    ; preds = %.noexc45.i, %bb.w, %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i
  %.sroa.010.2.ph.ph.i = phi i1 [ %.not13.i, %bb.v ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i ], [ %.not13.i, %bb.m ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i ], [ %.not13.i, %.noexc45.i ], [ %.not13.i, %bb.w ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread88.i

bb.j:                                             ; preds = %_RNvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB2_13AssistContext11vfs_file_id.exit.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_.exit.i: ; preds = %.thread62.i, %.thread66.i.thread9, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i, %bb.i, %.thread66.i, %.thread66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3495
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.8.0.copyload) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.8.0.copyload, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !3496, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.8.0.copyload, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !3496, !noundef !4 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ad, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_.exit.i, %bb.k
  %.sroa.04.0118.i = phi ptr [ %i.ag, %bb.k ], [ %i.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_.exit.i ] ; 2 uses
  invoke void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor6deleteRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB5_11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0118.i)
          to label %bb.k unwind label %.thread97.loopexit.i, !noalias !3496

._crit_edge.i:                                    ; preds = %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_.exit.i
  %.not13.i = icmp eq i64 %.sroa.0.0.copyload, 2  ; 6 uses
  br i1 %.not13.i, label %bb.m, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.0118.i, i64 8 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ae
  br i1 %i.ah, label %._crit_edge.i, label %.lr.ph.i

bb.l:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3495
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8, !noalias !3495
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %i.ai, align 8, !noalias !3495
  %i.aj = invoke noundef i16 @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.n unwind label %bb.u, !noalias !3496

.sink.split.i:                                    ; preds = %bb.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3495
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i, %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.10.0.copyload) ]
  invoke void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor6deleteRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB5_11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.5.sroa.10.0.copyload)
          to label %bb.v unwind label %.thread97.loopexit.split-lp.i, !noalias !3496

bb.n:                                             ; preds = %bb.l
  %i.ak = icmp eq i16 %i.aj, 157
  br i1 %i.ak, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noalias !3496, !noundef !4
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !noalias !3496
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %.sink.split.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i: ; preds = %bb.o
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload) #27
          to label %.sink.split.i unwind label %.thread97.loopexit.split-lp.i, !noalias !3496

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.9.0.copyload) ]
  %i.ap = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory10whitespace(ptr noundef nonnull align 8 %.sroa.5.sroa.9.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 1)
          to label %bb.r unwind label %bb.s, !noalias !3496

bb.q:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.thread88.i

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor7replaceINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1b_3api10SyntaxNodeNtNtB5_11syntax_node12RustLanguageEINtB20_11SyntaxTokenB2m_EEB2V_ECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.f, i64 noundef %.sroa.0.0.copyload, ptr noundef %.sroa.5.sroa.0.0.copyload, ptr noundef nonnull %i.ap)
          to label %.sink.split.i unwind label %bb.q, !noalias !3496

bb.s:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !noalias !3496, !noundef !4
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !noalias !3496
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i39.i, label %.thread88.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i39.i: ; preds = %bb.s
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload) #27
          to label %.thread88.i unwind label %bb.t, !noalias !3496

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i53.i, %bb.ac, %.thread88.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i50.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i42.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i39.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit52.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !3496
  unreachable

bb.u:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 48 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !noalias !3496, !noundef !4
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 4, !noalias !3496
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i42.i, label %.thread88.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i42.i: ; preds = %bb.u
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload) #27
          to label %.thread88.i unwind label %bb.t, !noalias !3496

bb.v:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.11.0.copyload) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.11.0.copyload, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.12.0.copyload) ]
  invoke void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor7replaceRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB5_11syntax_node12RustLanguageEB16_ECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.5.sroa.12.0.copyload)
          to label %bb.w unwind label %.thread97.loopexit.split-lp.i, !noalias !3496

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.13.0.copyload) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.13.0.copyload, i64 320
  %i.be = load i32, ptr %i.bd, align 8, !range !26, !noalias !3496, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.13.0.copyload, i64 324
  %i.bg = load i32, ptr %i.bf, align 4, !noalias !3496, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.13.0.copyload, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !3496, !nonnull !4, !align !24, !noundef !4
  %i.bj = invoke noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECsiU5vK8fN4ZC_11ide_assists(i32 noundef %i.be, i32 noundef %i.bg, ptr noundef nonnull %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @182)
          to label %.noexc45.i unwind label %.thread97.loopexit.split-lp.i, !noalias !3496

.noexc45.i:                                       ; preds = %bb.w
  %i.bk = invoke noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.bj)
          to label %_RNvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB2_13AssistContext11vfs_file_id.exit.i unwind label %.thread97.loopexit.split-lp.i, !noalias !3496

_RNvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB2_13AssistContext11vfs_file_id.exit.i: ; preds = %.noexc45.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false), !noalias !3495
  invoke void @_RINvMs6_NtCs6oosyzwIepl_6ide_db13source_changeNtB6_19SourceChangeBuilder14add_file_editsNtCs4sl5YdnrCxp_3vfs6FileIdECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.b)
          to label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_bodys0_0B7_.exit unwind label %bb.j, !noalias !3496

bb.x:                                             ; preds = %bb.aa
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit52.i

bb.y:                                             ; preds = %.thread72.i
  %i.bm = icmp eq i16 %i.v, 157
  br i1 %i.bm, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn10.i79.i) ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn10.i79.i, i64 48 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !3496, !noundef !4
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !noalias !3496
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i47.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit49.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i47.i: ; preds = %bb.z
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.pn10.i79.i) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit49.i unwind label %.loopexit.split-lp.i, !noalias !3496

bb.aa:                                            ; preds = %bb.y
  invoke void @_RINvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB3_12SyntaxEditor6deleteINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1a_3api10SyntaxNodeNtNtB5_11syntax_node12RustLanguageEINtB1Z_11SyntaxTokenB2l_EEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.f, i64 noundef %.pn12.i78.i, ptr noundef %.pn10.i79.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit49.i unwind label %bb.x, !noalias !3496

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit49.i: ; preds = %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i47.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3495
  %.pre = load i64, ptr %i.e, align 8, !range !10, !alias.scope !3499, !noalias !3495
  br label %bb.d

bb.ab:                                            ; preds = %.thread72.i
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn10.i79.i) ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn10.i79.i, i64 48 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !noalias !3496, !noundef !4
  %i.bu = add i32 %i.bt, -1                       ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 4, !noalias !3496
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i50.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit52.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i50.i: ; preds = %bb.ab
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.pn10.i79.i) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit52.i unwind label %bb.t, !noalias !3496

.thread88.i:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i42.i, %bb.u, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i39.i, %bb.s, %bb.q, %.thread97.loopexit.split-lp.i, %.thread97.loopexit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit52.i
  %.sroa.010.195.i = phi i1 [ false, %bb.s ], [ false, %bb.u ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit52.i ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i42.i ], [ false, %bb.q ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i39.i ], [ true, %.thread97.loopexit.i ], [ %.sroa.010.2.ph.ph.i, %.thread97.loopexit.split-lp.i ]
  %.pn15.pn93.i = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %i.ax, %bb.u ], [ %.pn15.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit52.i ], [ %i.ax, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i42.i ], [ %i.aq, %bb.q ], [ %i.ar, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i39.i ], [ %lpad.loopexit.i, %.thread97.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread97.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor12SyntaxEditorECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(144) %i.f) #26
          to label %.thread.i unwind label %bb.t, !noalias !3496

.thread.i:                                        ; preds = %bb.ac, %.thread88.i, %bb.j
  %.sroa.010.061.i = phi i1 [ true, %bb.ac ], [ %.not13.i, %bb.j ], [ %.sroa.010.195.i, %.thread88.i ]
  %.pn15.pn.pn60.i = phi { ptr, i32 } [ %i.bx, %bb.ac ], [ %lpad.thr_comm.split-lp.i, %bb.j ], [ %.pn15.pn93.i, %.thread88.i ]
  %i.bw = icmp ne i64 %.sroa.0.0.copyload, 2
  %or.cond.i = and i1 %i.bw, %.sroa.010.061.i
  br i1 %or.cond.i, label %bb.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit55.i

bb.ac:                                            ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1G_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2v_11SyntaxTokenB2R_EEEINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtNtB2V_3ast9generated5nodes8MatchArmENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10move_guard22move_guard_to_arm_body0EEEB5R_(i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.5.sroa.5.0.copyload) #26
end_hunk_0
