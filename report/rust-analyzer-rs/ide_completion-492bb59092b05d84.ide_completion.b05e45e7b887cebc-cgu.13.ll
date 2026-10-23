Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.13?download=true
inline.NumInlined: 1304
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_path:bb.a

bb.aa:                                            ; preds = %bb.s, %bb.n
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

.thread662:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit16.i, %bb.k
  %.mux275 = phi i1 [ %i.dg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit16.i ], [ false, %bb.k ]
  %.mux673 = phi i8 [ %i.ck, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit16.i ], [ 0, %bb.k ]
  %i.dv = trunc nuw i8 %.mux673 to i1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.y
  %spec.select = and i1 %i.dl, %i.dg              ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread662
  %.sroa.025.0 = phi i1 [ %spec.select, %bb.ab ], [ %.mux275, %.thread662 ]
  %.sroa.021.3 = phi i1 [ %spec.select, %bb.ab ], [ false, %.thread662 ] ; 2 uses
  %.sroa.018.4 = phi i1 [ false, %bb.ab ], [ %i.dv, %.thread662 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 16 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !5, !align !13, !noundef !5 ; 3 uses
  store ptr %i.dx, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %1, ptr %i.ap, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %2, ptr %i.dy, align 8
  %i.dz = load i64, ptr %2, align 8, !range !8, !noundef !5 ; 3 uses
  %i.ea = icmp ne i64 %i.dz, 3
  call void @llvm.assume(i1 %i.ea)
  %i.eb = add nsw i64 %i.dz, -2
  %i.ec = icmp samesign ugt i64 %i.dz, 1
  %i.ed = select i1 %i.ec, i64 %i.eb, i64 1
  switch i64 %i.ed, label %bb.b [
    i64 0, label %bb.ad
    i64 1, label %bb.ae
    i64 2, label %bb.af
    i64 3, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions31add_nameref_keywords_with_colon(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1)
          to label %bb.ah unwind label %bb.j

bb.ae:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !range !33, !noundef !5 ; 4 uses
  %.not249 = icmp eq i32 %i.ef, -1
  br i1 %.not249, label %_RNvMNtCsf8NQSppxkmK_14ide_completion7contextNtB2_12QualifierCtx4none.exit.thread.sink.split, label %bb.cz

bb.af:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = load i32, ptr %i.eh, align 8, !range !32, !noundef !5
  %.not246 = icmp eq i32 %i.ei, -1                ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load i32, ptr %i.ej, align 8            ; 2 uses
  %.not247 = icmp eq i32 %i.ek, 0                 ; 2 uses
  %or.cond = select i1 %.not246, i1 %.not247, i1 false
  br i1 %or.cond, label %bb.ex, label %bb.ew

bb.ag:                                            ; preds = %bb.ac
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions15add_crate_roots(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %2)
          to label %_RNvMNtCsf8NQSppxkmK_14ide_completion7contextNtB2_12QualifierCtx4none.exit.thread.sink.split unwind label %bb.j

bb.ah:                                            ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.em = load i32, ptr %i.el, align 8, !range !32, !noundef !5
  %.not255 = icmp eq i32 %i.em, -1
  br i1 %.not255, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths8_0B7_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.02.0.in.i = phi ptr [ %i.en, %bb.ai ], [ %.sroa.51.0..sroa_idx.i, %bb.aj ]
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !noalias !650, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.02.0.i, align 8, !noalias !651 ; 2 uses
  %i.eo = icmp ne i32 %.sroa.0.0.copyload.i, 27
  call void @llvm.assume(i1 %i.eo)
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 2 uses
  switch i32 %.sroa.0.0.copyload.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths8_0B7_.exit.thread [
    i32 14, label %bb.aj
    i32 7, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths8_0B7_.exit
  ]

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths8_0B7_.exit: ; preds = %bb.aj
  %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24
  %.sroa.811.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !652 ; 8 uses
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 20
  %.sroa.811.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !652 ; 9 uses
  %.sroa.811.sroa.0.0.copyload.i.i = load i8, ptr %.sroa.51.0..sroa_idx.i, align 8, !noalias !652 ; 4 uses
  %switch.idx.cast.i.i = zext i8 %.sroa.811.sroa.0.0.copyload.i.i to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !653
  %i.ep = load ptr, ptr %i.cl, align 8, !noalias !653, !noundef !5
  %.not.i338 = icmp eq ptr %i.ep, null            ; 2 uses
  br i1 %.not.i338, label %.thread678.sink.split, label %bb.ak

bb.ak:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths8_0B7_.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.h, ptr noundef nonnull align 8 %i.eq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl)
          to label %.noexc350 unwind label %bb.j

.noexc350:                                        ; preds = %bb.ak
  %i.er = load i32, ptr %i.h, align 4, !range !28, !noalias !653, !noundef !5
  %.not2.i339 = icmp eq i32 %i.er, 2
  br i1 %.not2.i339, label %.thread678.sink.split, label %bb.al

bb.al:                                            ; preds = %.noexc350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !653
  %i.es = load ptr, ptr %i.dw, align 8, !noalias !653, !nonnull !5, !align !13, !noundef !5
  invoke void @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl7self_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.g, ptr noundef nonnull %i.es, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %.noexc351 unwind label %bb.j

.noexc351:                                        ; preds = %bb.al
  %.val.i = load ptr, ptr %i.i, align 8, !noalias !653, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.09.0.copyload.i.i = load i32, ptr %.val.i, align 8, !noalias !654 ; 2 uses
  %i.et = icmp ne i32 %.sroa.09.0.copyload.i.i, 27
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp eq i32 %.sroa.09.0.copyload.i.i, 7
  br i1 %i.eu, label %bb.am, label %.thread678

.thread678.sink.split:                            ; preds = %.noexc350, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths8_0B7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !653
  br label %.thread678

.thread678:                                       ; preds = %.thread678.sink.split, %.noexc351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %.noexc351
  %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i.i342 = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %.sroa.811.sroa.9.0.copyload.i.i343 = load i32, ptr %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i.i342, align 8, !noalias !654
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i344 = getelementptr inbounds nuw i8, ptr %.val.i, i64 20
  %.sroa.811.sroa.8.0.copyload.i.i345 = load i32, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i344, align 4, !noalias !654 ; 2 uses
  %.sroa.811.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.sroa.811.sroa.0.0.copyload.i.i346 = load i8, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !noalias !654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ev = icmp eq i8 %.sroa.811.sroa.0.0.copyload.i.i346, %.sroa.811.sroa.0.0.copyload.i.i
  br i1 %i.ev, label %bb.an, label %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.am
  %i.ew = icmp eq i32 %.sroa.811.sroa.9.0.copyload.i.i343, %.sroa.811.sroa.9.0.copyload.i.i ; 2 uses
  switch i8 %.sroa.811.sroa.0.0.copyload.i.i, label %default.unreachable2.i [
    i8 0, label %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread
    i8 1, label %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread757
    i8 2, label %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread760
  ]

default.unreachable2.i:                           ; preds = %bb.an
  unreachable

_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.an
  %i.ex = icmp eq i32 %.sroa.811.sroa.8.0.copyload.i.i345, %.sroa.811.sroa.8.0.copyload.i.i
  %spec.select710 = select i1 %i.ew, i1 %i.ex, i1 false
  br label %bb.ao

_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread757: ; preds = %bb.an
  %i.ey = icmp eq i32 %.sroa.811.sroa.8.0.copyload.i.i345, %.sroa.811.sroa.8.0.copyload.i.i
  %spec.select711 = select i1 %i.ew, i1 %i.ey, i1 false
  br label %bb.av

_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.am, %.thread678
  switch i8 %.sroa.811.sroa.0.0.copyload.i.i, label %bb.b [
    i8 0, label %bb.ao
    i8 1, label %bb.av
    i8 2, label %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread760
  ]

_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread760: ; preds = %bb.an, %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  %. = select i1 %.not.i338, ptr null, ptr %i.cl
  invoke void @_RINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2_4expr18complete_expr_pathsc_0EB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef %.sroa.811.sroa.8.0.copyload.i.i, i32 noundef %.sroa.811.sroa.9.0.copyload.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %., ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %2)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths8_0B7_.exit.thread unwind label %bb.j

bb.ao:                                            ; preds = %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread, %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  %.sroa.062.0756 = phi i1 [ %spec.select710, %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread ], [ false, %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.fa = load i32, ptr %i.ez, align 8, !range !27, !noundef !5
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 444
  %i.fc = load i32, ptr %i.fb, align 4, !noundef !5
  %i.fd = load ptr, ptr %i.dw, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %switch.idx.cast.i.i, ptr %i.fe, align 4
  %.sroa.7.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %.sroa.811.sroa.8.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx48, align 4
  %.sroa.10.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 %.sroa.811.sroa.9.0.copyload.i.i, ptr %.sroa.10.0..sroa_idx56, align 4
  store i8 2, ptr %i.u, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.fg = load ptr, ptr %i.ff, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.fi = load i8, ptr %i.fh, align 4, !range !11, !noundef !5
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 128
  %i.fk = load i8, ptr %i.fj, align 8, !range !11, !alias.scope !655, !noundef !5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 129
  %4 = load i16, ptr %i.fl, align 1, !alias.scope !655
  %.sroa.3.0.insert.ext.i = zext i16 %4 to i32
  %.sroa.3.0.insert.shift.i352 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.2.0.insert.ext.i = zext nneg i8 %i.fi to i32
  %.sroa.2.0.insert.shift.i353 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 24
  %.sroa.0.0.insert.ext.i355.a = zext nneg i8 %i.fk to i32
  %.sroa.2.0.insert.insert.i354 = or disjoint i32 %.sroa.2.0.insert.shift.i353, %.sroa.0.0.insert.ext.i355.a
  %.sroa.0.0.insert.insert.i356.a = or disjoint i32 %.sroa.2.0.insert.insert.i354, %.sroa.3.0.insert.shift.i352
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module9find_pathNtB6_9ModuleDefECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.v, i32 noundef %i.fa, i32 noundef %i.fc, ptr noundef nonnull %i.fd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @38, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.u, i32 noundef %.sroa.0.0.insert.insert.i356.a)
          to label %bb.ap unwind label %bb.j

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsa_0EB1J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.w, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.v)
          to label %bb.aq unwind label %bb.j

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions18add_struct_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %2, i32 noundef %.sroa.811.sroa.8.0.copyload.i.i, i32 noundef %.sroa.811.sroa.9.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.w, ptr noundef null)
          to label %bb.ar unwind label %bb.j

bb.ar:                                            ; preds = %bb.aq
  br i1 %.sroa.062.0756, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.au, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths8_0B7_.exit.thread

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i8 -1, ptr %i.fm, align 8
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions18add_struct_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %2, i32 noundef %.sroa.811.sroa.8.0.copyload.i.i, i32 noundef %.sroa.811.sroa.9.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.t, ptr noundef nonnull @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5Self_10SYMBOL_STR)
          to label %bb.au unwind label %bb.j

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.as

bb.av:                                            ; preds = %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread757, %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  %.sroa.062.0759 = phi i1 [ %spec.select711, %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread757 ], [ false, %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.fo = load i32, ptr %i.fn, align 8, !range !27, !noundef !5
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 444
  %i.fq = load i32, ptr %i.fp, align 4, !noundef !5
  %i.fr = load ptr, ptr %i.dw, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %switch.idx.cast.i.i, ptr %i.fs, align 4
  %.sroa.7.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %.sroa.811.sroa.8.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx50, align 4
  %.sroa.10.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 %.sroa.811.sroa.9.0.copyload.i.i, ptr %.sroa.10.0..sroa_idx58, align 4
  store i8 2, ptr %i.q, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.fw = load i8, ptr %i.fv, align 4, !range !11, !noundef !5
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 128
  %i.fy = load i8, ptr %i.fx, align 8, !range !11, !alias.scope !656, !noundef !5
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 129
  %5 = load i16, ptr %i.fz, align 1, !alias.scope !656
  %.sroa.3.0.insert.ext.i358 = zext i16 %5 to i32
  %.sroa.3.0.insert.shift.i359 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i358, 8
  %.sroa.2.0.insert.ext.i361 = zext nneg i8 %i.fw to i32
  %.sroa.2.0.insert.shift.i362 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i361, 24
  %.sroa.0.0.insert.ext.i364 = zext nneg i8 %i.fy to i32
  %.sroa.2.0.insert.insert.i363 = or disjoint i32 %.sroa.2.0.insert.shift.i362, %.sroa.0.0.insert.ext.i364
  %.sroa.0.0.insert.insert.i365 = or disjoint i32 %.sroa.2.0.insert.insert.i363, %.sroa.3.0.insert.shift.i359
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module9find_pathNtB6_9ModuleDefECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.r, i32 noundef %i.fo, i32 noundef %i.fq, ptr noundef nonnull %i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @38, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.q, i32 noundef %.sroa.0.0.insert.insert.i365)
          to label %bb.aw unwind label %bb.j

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathE6filterNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsb_0EB1J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.s, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.r)
          to label %bb.ax unwind label %bb.j

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions17add_union_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef %.sroa.811.sroa.8.0.copyload.i.i, i32 noundef %.sroa.811.sroa.9.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.s, ptr noundef null)
          to label %bb.ay unwind label %bb.j

bb.ay:                                            ; preds = %bb.ax
  br i1 %.sroa.062.0759, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths8_0B7_.exit.thread

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 -1, ptr %i.ga, align 8
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions17add_union_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef %.sroa.811.sroa.8.0.copyload.i.i, i32 noundef %.sroa.811.sroa.9.0.copyload.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.p, ptr noundef nonnull @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5Self_10SYMBOL_STR)
          to label %bb.bb unwind label %bb.j

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.az

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths8_0B7_.exit.thread: ; preds = %bb.aj, %bb.as, %bb.az, %_RNvXs44_Cs8Xq8PKFYOms_3hirNtB6_3AdtNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread760, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %1, ptr %i.o, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %0, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %2, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.aq, ptr %i.gd, align 8
  invoke void @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext17process_all_names(ptr noundef nonnull align 8 %1, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @39)
          to label %bb.bc unwind label %bb.j

bb.bc:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_paths8_0B7_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !noundef !5
  %.not259 = icmp eq ptr %i.gf, null
  br i1 %.not259, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.gh = invoke noundef nonnull ptr @_RNvXsgB_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_10RecordExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ge)
          to label %bb.ck unwind label %bb.j      ; 5 uses

bb.be:                                            ; preds = %bb.bc
  %.pre736 = trunc nuw i8 %i.cc to i1             ; 25 uses
  br i1 %i.br, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit370, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 17)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit370: ; preds = %bb.be, %bb.bg, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 19)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit368 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit: ; preds = %bb.bf
  br i1 %.sroa.021.3, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit370, label %bb.bg

bb.bg:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 16)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit370 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit368: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit370
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 19)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit372 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit372: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit368
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 28)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit374 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit374: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit372
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 15)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit376 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit376: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit374
  br i1 %i.co, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit376
  br i1 %i.ci, label %bb.bk, label %bb.bj

bb.bi:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit376
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 5)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit378 unwind label %bb.j

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 16)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit382.invoke unwind label %bb.j

bb.bk:                                            ; preds = %bb.bh
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 32)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit382 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit382: ; preds = %bb.bk, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit378
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit382.invoke

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit382.invoke: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit378, %bb.bj, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit382
  %i.gi = phi ptr [ @58, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit382 ], [ @57, %bb.bj ], [ @57, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit378 ]
  %i.gj = phi i64 [ 41, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit382 ], [ 25, %bb.bj ], [ 25, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit378 ]
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gi, i64 noundef %i.gj)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit384 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit378: ; preds = %bb.bi
  br i1 %i.ci, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit382, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit382.invoke

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit384: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit382.invoke
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 23)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit388 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit388: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit384
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 4)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit390 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit390: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit388
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 5)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit392 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit392: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit390
  br i1 %i.ca, label %bb.bl, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit396

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit396: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit394, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit392
  br i1 %i.br, label %bb.bm, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit400

bb.bl:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit392
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 15)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit394 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit394: ; preds = %bb.bl
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 11)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit396 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit400: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit398, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit396
  br i1 %i.bx, label %bb.bo, label %bb.bn

bb.bm:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit396
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 16)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit398 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit398: ; preds = %bb.bm
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 12)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit400 unwind label %bb.j

bb.bn:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit400
  br i1 %i.bu, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit400
  br i1 %i.bu, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit402.invoke, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit404

bb.bp:                                            ; preds = %bb.bn
  br i1 %i.cf, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit402.invoke, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit404

bb.bq:                                            ; preds = %bb.bn
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 15)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit402.invoke unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit404: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit402.invoke, %bb.bp, %bb.bo
  br i1 %.sroa.018.4, label %bb.br, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit408

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit402.invoke: ; preds = %bb.bo, %bb.bq, %bb.bp
  %i.gk = phi ptr [ @69, %bb.bp ], [ @71, %bb.bq ], [ @71, %bb.bo ]
  %i.gl = phi i64 [ 4, %bb.bp ], [ 7, %bb.bq ], [ 7, %bb.bo ]
  %i.gm = phi ptr [ @70, %bb.bp ], [ @72, %bb.bq ], [ @72, %bb.bo ]
  %i.gn = phi i64 [ 15, %bb.bp ], [ 21, %bb.bq ], [ 21, %bb.bo ]
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gk, i64 noundef %i.gl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gm, i64 noundef %i.gn)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit404 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit408: ; preds = %bb.br, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit404
  br i1 %.sroa.021.3, label %bb.bs, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit410

bb.br:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit404
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit408 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit410: ; preds = %bb.bs, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit408
  br i1 %.sroa.025.0, label %bb.bt, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit412

bb.bs:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit408
  invoke void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions24add_keyword_snippet_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %.pre736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 6)
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit410 unwind label %bb.j

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit412: ; preds = %bb.bt, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit410
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gq = load i32, ptr %i.gp, align 8, !range !32, !noundef !5
  %.not260 = icmp eq i32 %i.gq, -1
  br i1 %.not260, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsf_0B7_.exit418, label %.invoke
end_hunk_0
begin_hunk_1_@_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix16complete_postfix:bb.a

bb.t:                                             ; preds = %bb.s
  %i.jm = add nuw nsw i64 %i.jj, 1                ; 2 uses
  %i.jn = sub nuw nsw i64 %i.iv, %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.jm
  br label %_RNvNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix17get_receiver_text19indent_of_tail_line.exit.i

_RNvNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix17get_receiver_text19indent_of_tail_line.exit.i: ; preds = %bb.q, %.noexc532, %bb.t
  %i.jp = phi ptr [ %i.jo, %bb.t ], [ %i.iu, %.noexc532 ], [ %i.iu, %bb.q ]
  %i.jq = phi i64 [ %i.jn, %bb.t ], [ %i.iv, %.noexc532 ], [ %i.iv, %bb.q ] ; 2 uses
  %i.jr = invoke { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jp, i64 noundef %i.jq, i32 noundef 32)
          to label %.noexc533 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc533:                                        ; preds = %_RNvNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix17get_receiver_text19indent_of_tail_line.exit.i
  %i.js = extractvalue { ptr, i64 } %i.jr, 1
  %i.jt = sub i64 %i.jq, %i.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !826
  %i.ju = load ptr, ptr %i.iq, align 8, !noalias !830, !nonnull !5, !noundef !5
  %i.jv = load i64, ptr %i.is, align 8, !noalias !830, !noundef !5 ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 6 uses
  %i.jx = zext i32 %i.ib to i64                   ; 7 uses
  %i.jy = icmp ugt i32 %i.ib, %.sroa.5.0.i
  %i.jz = icmp ult i64 %i.jv, %i.iv
  %or.cond.i.i.i = or i1 %i.jy, %i.jz
  br i1 %or.cond.i.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i.i.invoke, label %bb.u, !prof !831

bb.u:                                             ; preds = %.noexc533
  %i.ka = icmp eq i64 %i.jv, %i.jx
  br i1 %i.ka, label %_RNvXs2_NtCsuAhG64lL82_9text_size5rangeeINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB5_9TextRangeE5index.exit9.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kb = icmp eq i32 %i.ib, 0
  br i1 %i.kb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.kc = icmp eq i64 %i.jv, %i.iv
  br i1 %i.kc, label %_RNvXs2_NtCsuAhG64lL82_9text_size5rangeeINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB5_9TextRangeE5index.exit9.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i8.i

bb.x:                                             ; preds = %bb.v
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jx
  %i.ke = load i8, ptr %i.kd, align 1, !alias.scope !835, !noalias !830, !noundef !5
  %i.kf = icmp sgt i8 %i.ke, -65
  br i1 %i.kf, label %bb.w, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i.i.invoke, !prof !836

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i8.i: ; preds = %bb.w
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.iv
  %i.kh = load i8, ptr %i.kg, align 1, !alias.scope !835, !noalias !830, !noundef !5
  %i.ki = icmp sgt i8 %i.kh, -65
  br i1 %i.ki, label %_RNvXs2_NtCsuAhG64lL82_9text_size5rangeeINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB5_9TextRangeE5index.exit9.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i.i.invoke, !prof !833

_RNvXs2_NtCsuAhG64lL82_9text_size5rangeeINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB5_9TextRangeE5index.exit9.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i8.i, %bb.w, %bb.u
  %i.kj = sub nuw nsw i64 %i.iv, %i.jx
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jx
  invoke void @_RNvCs89JjGp7luZU_4stdx9dedent_by(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, i64 noundef %i.jt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kk, i64 noundef %i.kj)
          to label %.noexc535 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc535:                                        ; preds = %_RNvXs2_NtCsuAhG64lL82_9text_size5rangeeINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB5_9TextRangeE5index.exit9.i
  invoke void @_RNvMs5_NtCs6oosyzwIepl_6ide_db13source_changeNtB5_11SnippetEdit19escape_snippet_bits(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.ab unwind label %bb.aa, !noalias !830

bb.y:                                             ; preds = %bb.i
  %i.kl = add i32 %i.id, -1                       ; 2 uses
  %.not6.i = icmp ugt i32 %i.ib, %i.kl
  br i1 %.not6.i, label %bb.z, label %bb.o, !prof !6

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #35
          to label %.noexc536 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc536:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.noexc535
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #32
          to label %.body unwind label %bb.ac, !noalias !830

bb.ab:                                            ; preds = %.noexc535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !826
  br label %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix17get_receiver_text.exit

bb.ac:                                            ; preds = %bb.aa
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !830
  unreachable

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i572, %.body568, %bb.af, %bb.aa, %bb.k, %.thread
  %.pn422.pn = phi { ptr, i32 } [ %.pn422800, %.thread ], [ %.pn420, %.body568 ], [ %i.km, %bb.aa ], [ %i.ih, %bb.k ], [ %.pn420, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i572 ], [ %i.kw, %bb.af ], [ %lpad.loopexit.split-lp1095, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi921) ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.pre-phi921, i64 48 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !noundef !5
  %i.kq = add i32 %i.kp, -1                       ; 2 uses
  store i32 %i.kq, ptr %i.ko, align 4
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i: ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.pre-phi921) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.bh

_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix17get_receiver_text.exit: ; preds = %bb.ab, %_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprNtB5_12SpecToString14spec_to_stringCsf8NQSppxkmK_14ide_completion.exit.i
  %i.ks = load ptr, ptr %i.gt, align 8, !nonnull !5, !align !13, !noundef !5
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 122
  %i.ku = load i8, ptr %i.kt, align 2, !range !11, !noundef !5
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix17get_receiver_text.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp)
  invoke void @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix29build_postfix_snippet_builder(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.gp, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
          to label %bb.ah unwind label %.thread807

bb.ae:                                            ; preds = %bb.aj, %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix17get_receiver_text.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gr)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsf8NQSppxkmK_14ide_completion.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gr)
          to label %.body unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gr)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread807:                                       ; preds = %bb.bn, %bb.bm, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit552, %bb.bl, %bb.bk, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit550, %bb.bj, %bb.bi, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit548, %bb.bf, %bb.be, %bb.av, %bb.at, %bb.am, %bb.ar, %bb.ap, %bb.ak, %bb.ad
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs2_NtCsuAhG64lL82_9text_size5rangeeINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB5_9TextRangeE5index.exit.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i.i.invoke, %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix17receiver_accessor.exit, %bb.o, %.noexc527, %.noexc528, %.noexc529, %_RNvNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix17get_receiver_text19indent_of_tail_line.exit.i, %_RNvXs2_NtCsuAhG64lL82_9text_size5rangeeINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB5_9TextRangeE5index.exit9.i, %bb.z, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsf8NQSppxkmK_14ide_completion.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i575, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i712
  %lpad.loopexit.split-lp1095 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.ad
  %i.ky = load ptr, ptr %i.gp, align 8, !noundef !5
  %.not390 = icmp eq ptr %i.ky, null
  br i1 %.not390, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go)
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.la = load i8, ptr %i.kz, align 8, !range !11, !noundef !5
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.ak, label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq)
  br label %bb.ae

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsf8NQSppxkmK_14ide_completion.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi921) ]
  %i.lc = getelementptr inbounds nuw i8, ptr %.pre-phi921, i64 48 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !noundef !5
  %i.le = add i32 %i.ld, -1                       ; 2 uses
  store i32 %i.le, ptr %i.lc, align 4
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %.sink.split.sink.split, label %.sink.split

bb.ak:                                            ; preds = %bb.ai
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.lh = invoke noundef ptr @_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken10next_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.lg)
          to label %bb.al unwind label %.thread807 ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %.not391 = icmp eq ptr %i.lh, null
  br i1 %.not391, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.li = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix16complete_postfix0B7_(ptr noundef nonnull %i.lh)
          to label %bb.ao unwind label %.thread807

bb.an:                                            ; preds = %bb.al, %bb.ao
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  br i1 %i.li, label %bb.an, label %bb.ap

bb.ap:                                            ; preds = %bb.ai, %bb.ao, %bb.an
  %.sink996 = phi ptr [ @96, %bb.an ], [ inttoptr (i64 1 to ptr), %bb.ao ], [ inttoptr (i64 1 to ptr), %bb.ai ]
  %.sink994 = phi i64 [ 1, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.ai ]
  store ptr %.sink996, ptr %i.go, align 8, !captures !36
  %i.lj = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %.sink994, ptr %i.lj, align 8
  %i.lk = load ptr, ptr %i.gt, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.lm = load i8, ptr %i.ll, align 4, !range !11, !noundef !5
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 128
  %i.lo = load i8, ptr %i.ln, align 8, !range !11, !alias.scope !838, !noundef !5
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 129
  %3 = load i16, ptr %i.lp, align 1, !alias.scope !838
  %.sroa.3.0.insert.ext.i = zext i16 %3 to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.2.0.insert.ext.i = zext nneg i8 %i.lm to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 24
  %.sroa.0.0.insert.ext.i = zext nneg i8 %i.lo to i32
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.3.0.insert.shift.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gn)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 3 uses
  store ptr %i.hv, ptr %i.gn, align 8, !alias.scope !839
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.ls = load <2 x i32>, ptr %i.lq, align 8, !noalias !839
  store <2 x i32> %i.ls, ptr %i.lr, align 8, !alias.scope !839
  %i.lt = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs13core_ops_Drop(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gn)
          to label %bb.aq unwind label %.thread807 ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.lu = extractvalue { i32, i32 } %i.lt, 0      ; 2 uses
  %.not392 = icmp eq i32 %i.lu, 0
  br i1 %.not392, label %bb.bf, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lv = extractvalue { i32, i32 } %i.lt, 1
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 5 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !nonnull !5, !align !13, !noundef !5
  %i.ly = invoke noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type11impls_trait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gy, ptr noundef nonnull %i.lx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16, i32 noundef %i.lu, i32 noundef %i.lv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.as unwind label %.thread807

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ly, label %bb.at, label %bb.bf

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl)
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  store ptr %i.hv, ptr %i.gl, align 8, !alias.scope !840
  %i.lz = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.ma = load <2 x i32>, ptr %i.lq, align 8, !noalias !840
  store <2 x i32> %i.ma, ptr %i.lz, align 8, !alias.scope !840
  invoke void @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs13core_mem_drop(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.gm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gl)
          to label %bb.au unwind label %.thread807

bb.au:                                            ; preds = %bb.at
  %i.mb = load i8, ptr %i.gm, align 4, !range !35, !noundef !5
  %.not393 = icmp eq i8 %i.mb, 2
  br i1 %.not393, label %.sink.split1001, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gk, ptr noundef nonnull align 4 dereferenceable(12) %i.gm, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj)
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.md = load i32, ptr %i.mc, align 8, !range !27, !noundef !5
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 444
  %i.mf = load i32, ptr %i.me, align 4, !noundef !5
  %i.mg = load ptr, ptr %i.lw, align 8, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.4.4..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.gm, i64 12, i1 false)
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i8 1, ptr %i.mh, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4, i64 15, i1 false)
  store i32 1, ptr %i.gi, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module9find_pathNtB6_8ItemInNsECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.gj, i32 noundef %i.md, i32 noundef %i.mf, ptr noundef nonnull %i.mg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @38, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.gi, i32 noundef %.sroa.0.0.insert.insert.i)
          to label %bb.aw unwind label %.thread807

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.mj = load i8, ptr %i.mi, align 8, !range !4, !noundef !5
  %.not394 = icmp eq i8 %i.mj, -1
  br i1 %.not394, label %.sink.split1001.sink.split, label %.noexc

.noexc:                                           ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gh, ptr noundef nonnull align 8 dereferenceable(40) %i.gj, i64 40, i1 false)
  %i.mk = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.mk, 0
  br i1 %.not.i, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, label %bb.ax, !prof !7

bb.ax:                                            ; preds = %.noexc
  %i.ml = icmp slt i64 %i.mk, 0
  br i1 %i.ml, label %bb.ay, label %.noexc428

.noexc428:                                        ; preds = %bb.ay, %bb.ax
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 23)
          to label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 23)
          to label %.noexc428 unwind label %bb.bb

bb.az:                                            ; preds = %bb.bb, %bb.bg
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm812, %bb.bg ], [ %lpad.thr_comm.split-lp813, %bb.bb ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.gh)
          to label %.thread unwind label %bb.bh

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit:     ; preds = %.noexc, %.noexc428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd)
  %i.mm = load ptr, ptr %i.lw, align 8, !nonnull !5, !align !13, !noundef !5
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 630
  %i.mo = load i8, ptr %i.mn, align 2, !range !29, !noundef !5
  store ptr %i.mm, ptr %i.gd, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr @38, ptr %i.mp, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store ptr %i.gh, ptr %i.mq, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store i8 %i.mo, ptr %i.mr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  store ptr %i.gd, ptr %i.gc, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr @_RNvXs1_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store ptr %i.gr, ptr %i.ms, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ge, ptr noundef nonnull @98, ptr noundef nonnull %i.gc)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.bb

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd)
  store ptr @99, ptr %i.gf, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 4, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store ptr @100, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i64 18, ptr %i.mv, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.gf, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mw, ptr noundef nonnull align 8 dereferenceable(24) %i.ge, i64 24, i1 false)
  invoke fastcc void @_RNCNvNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix29build_postfix_snippet_builder5build0B9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(360) %i.gg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 18, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.mw)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  %i.mx = load ptr, ptr %i.lw, align 8, !nonnull !5, !align !13, !noundef !5
  invoke void @_RNvYNtCs8Xq8PKFYOms_3hir8FunctionNtNtCs6oosyzwIepl_6ide_db13documentation7HasDocs4docsCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gb, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.gk, ptr noundef nonnull %i.mx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
          to label %bb.bc unwind label %bb.bg

bb.bb:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit, %.noexc428, %bb.ay, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, %bb.bd
  %lpad.thr_comm.split-lp813 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.bc:                                            ; preds = %bb.ba
  %i.my = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_7Builder17set_documentation(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.gb)
          to label %bb.bd unwind label %bb.bg     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ga, ptr noundef nonnull align 8 dereferenceable(360) %i.gg, i64 360, i1 false)
  %i.mz = load ptr, ptr %i.lw, align 8, !nonnull !5, !align !13, !noundef !5
  invoke void @_RNvMs_NtCsf8NQSppxkmK_14ide_completion11completionsNtNtB6_4item7Builder6add_to(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(360) %i.ga, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %i.mz)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg)
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.gh)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit546 unwind label %.thread807

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit546: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh)
  br label %.sink.split1001.sink.split

.sink.split1001.sink.split:                       ; preds = %bb.aw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk)
  br label %.sink.split1001

.sink.split1001:                                  ; preds = %.sink.split1001.sink.split, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm)
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split1001, %bb.aq, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  store ptr %i.gr, ptr %i.fw, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fx, ptr noundef nonnull @101, ptr noundef nonnull %i.fw)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsf8NQSppxkmK_14ide_completion.exit548 unwind label %.thread807

bb.bg:                                            ; preds = %bb.bc, %bb.ba
  %lpad.thr_comm812 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion4item7BuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(360) %i.gg) #32
          to label %bb.az unwind label %bb.bh

bb.bh:                                            ; preds = %bb.lo, %bb.lh, %bb.jy, %bb.hp, %bb.hg, %bb.gu, %bb.gk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i572, %bb.az, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i, %.thread, %bb.gf, %.body562, %.body584, %bb.bg
  %i.na = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
end_hunk_1
