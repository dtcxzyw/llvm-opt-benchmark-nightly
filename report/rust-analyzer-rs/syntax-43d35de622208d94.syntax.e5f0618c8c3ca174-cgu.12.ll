Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syntax-43d35de622208d94.syntax.e5f0618c8c3ca174-cgu.12?download=true
inline.NumInlined: 845
inline.NumDeleted: 454
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNvMs_NtNtCsjJXvCMGntp8_6syntax3ast4precNtNtNtB8_9generated5nodes4Expr36is_ordered_before_parent_in_place_of5order:bb.a
  %i.cq = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 60
  %i.cs = load i8, ptr %i.cr, align 4, !range !9, !noundef !4
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ba, label %bb.az, !prof !8

bb.az:                                            ; preds = %bb.ay
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cv = load i32, ptr %i.cu, align 8, !noundef !4
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.cw = call noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.cq)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.0.0.i = phi i32 [ %i.cw, %bb.ba ], [ %i.cv, %bb.az ] ; 2 uses
  %i.cx = load i64, ptr %i.cq, align 8, !range !5, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cz = trunc nuw i64 %i.cx to i1
  %i.da = load ptr, ptr %i.cy, align 8, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.cz, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4 ; 2 uses
  %i.dd = icmp ugt i64 %i.dc, 4294967295
  %i.de = shl nuw i64 %i.dc, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.dd, i64 513, i64 %i.de ; 2 uses
  %i.df = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.df, label %bb.bd, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !8

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.b, align 1
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.bc
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  %i.dg = load i32, ptr %i.da, align 8, !noundef !4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.dg, %bb.be ]
  %i.dh = xor i32 %.sroa.0.0.i, -1
  %.not.i = icmp ugt i32 %.sroa.02.0.i, %i.dh
  br i1 %.not.i, label %bb.bg, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit, !prof !8

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28
  unreachable

bb.bh:                                            ; preds = %bb.av
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 60
  %i.dj = load i8, ptr %i.di, align 4, !range !9, !noundef !4
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.bj, label %bb.bi, !prof !8

bb.bi:                                            ; preds = %bb.bh
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.dm = load i32, ptr %i.dl, align 8, !noundef !4
  br label %.noexc.i44

bb.bj:                                            ; preds = %bb.bh
  %i.dn = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.sroa.0.0)
          to label %.noexc.i44 unwind label %bb.bp

.noexc.i44:                                       ; preds = %bb.bj, %bb.bi
  %.sroa.0.0.i.i = phi i32 [ %i.dm, %bb.bi ], [ %i.dn, %bb.bj ] ; 3 uses
  %i.do = load i64, ptr %.sroa.0.0, align 8, !range !5, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.dq = trunc nuw i64 %i.do to i1
  %i.dr = load ptr, ptr %i.dp, align 8, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.dq, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.noexc.i44
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !4 ; 2 uses
  %i.du = icmp ugt i64 %i.dt, 4294967295
  %i.dv = shl nuw i64 %i.dt, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.du, i64 513, i64 %i.dv ; 2 uses
  %i.dw = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.dw, label %bb.bl, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, !prof !8

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28
          to label %.noexc2.i unwind label %bb.bp

.noexc2.i:                                        ; preds = %bb.bl
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i: ; preds = %bb.bk
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  br label %bb.bn

bb.bm:                                            ; preds = %.noexc.i44
  %i.dx = load i32, ptr %i.dr, align 8, !noundef !4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i
  %.sroa.02.0.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %i.dx, %bb.bm ]
  %i.dy = xor i32 %.sroa.0.0.i.i, -1
  %.not.i.i45 = icmp ugt i32 %.sroa.02.0.i.i, %i.dy
  br i1 %.not.i.i45, label %bb.bo, label %bb.br, !prof !8

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28
          to label %.noexc3.i unwind label %bb.bp

.noexc3.i:                                        ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bo, %bb.bl, %bb.bj
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 48 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !noundef !4
  %i.ec = add i32 %i.eb, -1                       ; 2 uses
  store i32 %i.ec, ptr %i.ea, align 4
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.bq, label %common.resume

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #24
          to label %common.resume unwind label %bb.bt

bb.br:                                            ; preds = %bb.bn
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 48 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !noundef !4
  %i.eg = add i32 %i.ef, -1                       ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 8
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.bs, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit

bb.bs:                                            ; preds = %bb.br
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #24
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit

bb.bt:                                            ; preds = %bb.bq
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit: ; preds = %bb.bs, %bb.br, %bb.bf
  %.sroa.0.0.i.i.pn = phi i32 [ %.sroa.0.0.i, %bb.bf ], [ %.sroa.0.0.i.i, %bb.br ], [ %.sroa.0.0.i.i, %bb.bs ]
  ret i32 %.sroa.0.0.i.i.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCshzWfHUSfYae_4core4hint20select_unpredictableINtB2_11DropOnPanicPNtNtCsjJXvCMGntp8_6syntax13syntax_editor6ChangeENtNtNtB6_3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens10WhitespaceNtBX_8AstToken4castINtB7_5FnMutTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtBZ_11syntax_node12RustLanguageEEE8call_mutBZ_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs10_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokensNtB6_10WhitespaceNtBa_8AstToken4cast(ptr noundef nonnull %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsuAhG64lL82_9text_size4size8TextSizeNtB6_5Debug3fmtCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !354, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXNtCsuAhG64lL82_9text_size4sizeNtB2_8TextSizeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs8_NtCscFGNKo4Sl5v_9itertools18peeking_take_whileINtB5_16PeekingTakeWhileINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB2e_9generated5nodes3PatEENCNvMsz_NtB2e_8node_extNtB2U_8SlicePat10components0ENtNtNtB1k_6traits8iterator8Iterator4nextB2g_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call { i64, ptr } @_RINvXs_NtCscFGNKo4Sl5v_9itertools18peeking_take_whileINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1Q_9generated5nodes3PatEENtB5_11PeekingNext12peeking_nextQNCNvMsz_NtB1Q_8node_extNtB2w_8SlicePat10components0EB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull %i.b)
  ret { i64, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs8_NtCscFGNKo4Sl5v_9itertools18peeking_take_whileINtB5_16PeekingTakeWhileINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB2e_9generated5nodes3PatEENCNvMsz_NtB2e_8node_extNtB2U_8SlicePat10components0ENtNtNtB1k_6traits8iterator8Iterator9size_hintB2g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 {
  %.sroa.4 = alloca i64, align 8                  ; 5 uses
  %.sroa.7 = alloca i64, align 8                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %3 = load ptr, ptr %1, align 8, !nonnull !4, !align !11, !noundef !4
  %.val = load i64, ptr %3, align 8, !range !357, !noundef !4
  %cond = icmp eq i64 %.val, -1
  br i1 %cond, label %4, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB18_9generated5nodes3PatEENtNtNtB8_6traits8iterator8Iterator9size_hintB1a_.exit

4:                                                ; preds = %2
  store i64 1, ptr %.sroa.4, align 8, !alias.scope !358
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB18_9generated5nodes3PatEENtNtNtB8_6traits8iterator8Iterator9size_hintB1a_.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB18_9generated5nodes3PatEENtNtNtB8_6traits8iterator8Iterator9size_hintB1a_.exit: ; preds = %2, %4
  %.sink1.i.sroa.phi = phi ptr [ %.sroa.7, %4 ], [ %.sroa.4, %2 ]
  store i64 0, ptr %.sink1.i.sroa.phi, align 8, !alias.scope !358
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load i64, ptr %.sroa.4, align 8, !range !5, !noundef !4
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16. = load i64, ptr %.sroa.7, align 8
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16., ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes10GenericArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not17.i = icmp eq ptr %i.b, null
  br i1 %.not17.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes10GenericArgNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.o, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes10GenericArgNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !361
  store ptr %i.c, ptr %i.a, align 8, !noalias !361
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  switch i16 %i.d, label %bb.e [
    i16 175, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
    i16 191, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit19
    i16 228, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit25
    i16 307, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes10GenericArgNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes10GenericArgNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes10GenericArgNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !361
  %i.o = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit19: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit25: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit25, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit19
  %.sroa.0.0.i.i.i.ph.i = phi i64 [ 1, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit19 ], [ 3, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit ], [ 2, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit25 ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !361
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.ph.i, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %i.c, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10GenericArgEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes10GenericArgNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.r = phi { i64, ptr } [ %i.q, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ { i64 -1, ptr null }, %bb.a ], [ { i64 -1, ptr null }, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes10GenericArgNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret { i64, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes12GenericParamENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not16.i = icmp eq ptr %i.b, null
  br i1 %.not16.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes12GenericParamNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.o, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes12GenericParamNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !364
  store ptr %i.c, ptr %i.a, align 8, !noalias !364
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  switch i16 %i.d, label %bb.e [
    i16 193, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit
    i16 229, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit26
    i16 310, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes12GenericParamNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes12GenericParamNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes12GenericParamNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !364
  %i.o = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit26: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit26, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit
  %.sroa.0.0.i.i.i.ph.i = phi i64 [ 1, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit26 ], [ 0, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !364
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.ph.i, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %i.c, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes12GenericParamNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.r = phi { i64, ptr } [ %i.q, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ { i64 -1, ptr null }, %bb.a ], [ { i64 -1, ptr null }, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes12GenericParamNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret { i64, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes3PatENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not31.i = icmp eq ptr %i.b, null
  br i1 %.not31.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.o, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !367
  store ptr %i.c, ptr %i.a, align 8, !noalias !367
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.p

bb.d:                                             ; preds = %.lr.ph.i
  switch i16 %i.d, label %bb.e [
    i16 181, label %.loopexit11.i
    i16 192, label %.loopexit32.i
    i16 195, label %.loopexit54.i
    i16 213, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit
    i16 231, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit26
    i16 237, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit47
    i16 251, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit67
    i16 253, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit87
    i16 258, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
    i16 263, label %bb.g
    i16 270, label %bb.h
    i16 276, label %bb.i
    i16 280, label %bb.j
    i16 283, label %bb.k
    i16 288, label %bb.l
    i16 302, label %bb.m
    i16 303, label %bb.n
    i16 325, label %bb.o
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.h:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.i:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.j:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.k:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.l:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.m:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.n:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.o:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.p:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !367
  %i.o = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEEB1o_.exit, label %.lr.ph.i

.loopexit11.i:                                    ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

.loopexit32.i:                                    ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

.loopexit54.i:                                    ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit26: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit47: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit67: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit87: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit87, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit67, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit47, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit26, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %.loopexit11.i, %.loopexit32.i, %.loopexit54.i
  %.sroa.0.0.i.i.i.ph.i = phi i64 [ 17, %bb.o ], [ 16, %bb.n ], [ 15, %bb.m ], [ 14, %bb.l ], [ 13, %bb.k ], [ 12, %bb.j ], [ 11, %bb.i ], [ 10, %bb.h ], [ 9, %bb.g ], [ 7, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit87 ], [ 6, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit67 ], [ 5, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit47 ], [ 4, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit26 ], [ 3, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit ], [ 2, %.loopexit54.i ], [ 1, %.loopexit32.i ], [ 0, %.loopexit11.i ], [ 8, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !367
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.ph.i, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %i.c, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.r = phi { i64, ptr } [ %i.q, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ { i64 -1, ptr null }, %bb.a ], [ { i64 -1, ptr null }, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes3PatNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret { i64, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4AttrENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4AttrNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.p, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4AttrNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !370
  store ptr %i.c, ptr %i.a, align 8, !noalias !370
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i16 %i.d, 176
  br i1 %i.j, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4AttrNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4AttrNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4AttrNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4AttrNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !370
  %i.p = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4AttrNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !370
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4AttrNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4AttrNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.q = phi ptr [ %i.c, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4AttrNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4AttrNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret ptr %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEB1o_.exit:
  %i.a = tail call fastcc { i64, ptr } @_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4ExprNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) #27 ; 3 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1
  %.not = icmp eq i64 %i.b, -1
  %. = select i1 %.not, ptr undef, ptr %i.c
  %i.d = insertvalue { i64, ptr } %i.a, ptr %., 1
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4MetaENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not19.i = icmp eq ptr %i.b, null
  br i1 %.not19.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.o, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !373
  store ptr %i.c, ptr %i.a, align 8, !noalias !373
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  switch i16 %i.d, label %bb.e [
    i16 186, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit31
    i16 188, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit39
    i16 222, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
    i16 262, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit
    i16 295, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit14
    i16 313, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit23
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  %i.o = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit14: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit23: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit31: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit39: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit39, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit31, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit23, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit14, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit
  %.sroa.0.0.i.i.i.ph.i = phi i64 [ 4, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit14 ], [ 3, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit ], [ 1, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit39 ], [ 0, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit31 ], [ 5, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit23 ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.ph.i, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %i.c, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.r = phi { i64, ptr } [ %i.q, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ { i64 -1, ptr null }, %bb.a ], [ { i64 -1, ptr null }, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret { i64, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4TypeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not28.i = icmp eq ptr %i.b, null
  br i1 %.not28.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4TypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.o, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4TypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !376
  store ptr %i.c, ptr %i.a, align 8, !noalias !376
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.m

bb.d:                                             ; preds = %.lr.ph.i
  switch i16 %i.d, label %bb.e [
    i16 161, label %.loopexit11.i
    i16 196, label %.loopexit29.i
    i16 204, label %.loopexit48.i
    i16 210, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit
    i16 217, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit23
    i16 220, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit41
    i16 240, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit58
    i16 250, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit75
    i16 259, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
    i16 265, label %bb.g
    i16 266, label %bb.h
    i16 268, label %bb.i
    i16 281, label %bb.j
    i16 289, label %bb.k
    i16 304, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4TypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4TypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.h:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.i:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.j:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.k:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.l:                                             ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

bb.m:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4TypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !376
  %i.o = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeEEB1o_.exit, label %.lr.ph.i

.loopexit11.i:                                    ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

.loopexit29.i:                                    ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

.loopexit48.i:                                    ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit23: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit41: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit58: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit75: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit75, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit58, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit41, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit23, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.loopexit11.i, %.loopexit29.i, %.loopexit48.i
  %.sroa.0.0.i.i.i.ph.i = phi i64 [ 14, %bb.l ], [ 13, %bb.k ], [ 12, %bb.j ], [ 11, %bb.i ], [ 10, %bb.h ], [ 9, %bb.g ], [ 7, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit75 ], [ 6, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit58 ], [ 5, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit41 ], [ 4, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit23 ], [ 3, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit ], [ 2, %.loopexit48.i ], [ 1, %.loopexit29.i ], [ 0, %.loopexit11.i ], [ 8, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !376
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.ph.i, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %i.c, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4TypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.r = phi { i64, ptr } [ %i.q, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ { i64 -1, ptr null }, %bb.a ], [ { i64 -1, ptr null }, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4TypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret { i64, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes7ForTypeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ForTypeEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7ForTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.p, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7ForTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !379
  store ptr %i.c, ptr %i.a, align 8, !noalias !379
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i16 %i.d, 210
  br i1 %i.j, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7ForTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7ForTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7ForTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7ForTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !379
  %i.p = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ForTypeEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7ForTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !379
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ForTypeEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ForTypeEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7ForTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7ForTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.q = phi ptr [ %i.c, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7ForTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7ForTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret ptr %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7UseTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.p, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7UseTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !382
  store ptr %i.c, ptr %i.a, align 8, !noalias !382
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i16 %i.d, 316
  br i1 %i.j, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7UseTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7UseTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7UseTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7UseTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !382
  %i.p = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7UseTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !382
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7UseTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7UseTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.q = phi ptr [ %i.c, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7UseTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7UseTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret ptr %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes7VariantENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7VariantNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.p, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7VariantNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !385
  store ptr %i.c, ptr %i.a, align 8, !noalias !385
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i16 %i.d, 318
  br i1 %i.j, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7VariantNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7VariantNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7VariantNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7VariantNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !385
  %i.p = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7VariantNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !385
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7VariantNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7VariantNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.q = phi ptr [ %i.c, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7VariantNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7VariantNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret ptr %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes8PathTypeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathTypeEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes8PathTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.p, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes8PathTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !388
  store ptr %i.c, ptr %i.a, align 8, !noalias !388
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i16 %i.d, 265
  br i1 %i.j, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes8PathTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes8PathTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes8PathTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes8PathTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !388
  %i.p = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathTypeEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes8PathTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !388
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathTypeEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8PathTypeEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes8PathTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes8PathTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.q = phi ptr [ %i.c, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes8PathTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes8PathTypeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret ptr %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes9AssocItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not17.i = icmp eq ptr %i.b, null
  br i1 %.not17.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9AssocItemNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.o, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9AssocItemNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !391
  store ptr %i.c, ptr %i.a, align 8, !noalias !391
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  switch i16 %i.d, label %bb.e [
    i16 190, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
    i16 203, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit19
    i16 233, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit25
    i16 305, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9AssocItemNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9AssocItemNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9AssocItemNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !391
  %i.o = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit19: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit25: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit: ; preds = %bb.d
  br label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit25, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit19
  %.sroa.0.0.i.i.i.ph.i = phi i64 [ 1, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit19 ], [ 3, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit ], [ 2, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.loopexit25 ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !391
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.ph.i, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %i.c, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9AssocItemNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.r = phi { i64, ptr } [ %i.q, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ { i64 -1, ptr null }, %bb.a ], [ { i64 -1, ptr null }, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9AssocItemNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret { i64, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes9BlockExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9BlockExprNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.p, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9BlockExprNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !394
  store ptr %i.c, ptr %i.a, align 8, !noalias !394
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i16 %i.d, 180
  br i1 %i.j, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9BlockExprNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9BlockExprNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9BlockExprNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9BlockExprNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !394
  %i.p = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9BlockExprNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !394
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9BlockExprNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9BlockExprNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.q = phi ptr [ %i.c, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9BlockExprNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9BlockExprNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret ptr %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes9TokenTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.p, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !397
  store ptr %i.c, ptr %i.a, align 8, !noalias !397
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i16 %i.d, 294
  br i1 %i.j, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TokenTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !397
  %i.p = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TokenTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !397
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TokenTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.q = phi ptr [ %i.c, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TokenTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret ptr %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TypeBoundNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.p, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TypeBoundNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400
  store ptr %i.c, ptr %i.a, align 8, !noalias !400
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i16 %i.d, 308
  br i1 %i.j, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TypeBoundNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TypeBoundNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TypeBoundNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TypeBoundNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400
  %i.p = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TypeBoundNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TypeBoundNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TypeBoundNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.q = phi ptr [ %i.c, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TypeBoundNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TypeBoundNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret ptr %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes9WherePredENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9WherePredNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i
  %i.c = phi ptr [ %i.p, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9WherePredNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !403
  store ptr %i.c, ptr %i.a, align 8, !noalias !403
  %i.d = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i16 %i.d, 323
  br i1 %i.j, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9WherePredNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9WherePredNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #24
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9WherePredNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB1k_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9WherePredNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !403
  %i.p = call noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEEB1o_.exit, label %.lr.ph.i

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9WherePredNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !403
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEEB1o_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEEB1o_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9WherePredNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i, %bb.a, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9WherePredNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit
  %i.q = phi ptr [ %i.c, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9WherePredNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit ], [ null, %bb.a ], [ null, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9WherePredNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i ]
  ret ptr %i.q
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsaMQbKjKCVRW_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsjJXvCMGntp8_6syntax(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @39, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1p_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1y_13syntax_editor7mapping12MappingEntryEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1y_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1F_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvXsu_NtCscFGNKo4Sl5v_9itertools10tuple_implTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtB6_12TupleCollect24collect_from_iter_no_bufQINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtBP_11AstChildrenBJ_ENCNCNvMsi_NtBP_8node_extNtBL_11UseTreeList25remove_unnecessary_braces00EEBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2_10EquivalentBq_E10equivalentB19_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCNvMsi_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB10_9generated5nodes11UseTreeList25remove_unnecessary_braces00INtB7_5FnMutTRNtB1C_7UseTreeEE8call_mutB12_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_7Display3fmtB1f_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCsaMQbKjKCVRW_12tracing_core5fieldNtNtCshzWfHUSfYae_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i16 0, 329) i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBS_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr3rhs(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhEE11spec_extendCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1y_13syntax_editor7mapping12MappingEntryNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_B2l_EE6extendINtNtNtB3V_8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTBP_mEENCNvMB2n_NtB2n_13SyntaxMapping11add_mapping0EEB1y_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1B_7sources10successors10SuccessorsTjINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMNtNtB3K_13syntax_editor7mappingNtB4D_13SyntaxMapping11upmap_child0ENCB4A_s_0EE9from_iterB3K_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1w_13syntax_editor7mapping12MappingEntryNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB1w_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1y_13syntax_editor7mapping12MappingEntryNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_B2l_EE6extendINtNtNtB3V_8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterBP_B2l_ENCNvMB2n_NtB2n_13SyntaxMapping5merge0EEB1y_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCscAsMj0W7j8b_3std7process5abort() unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjJXvCMGntp8_6syntax(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #19

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCscAsMj0W7j8b_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECsjJXvCMGntp8_6syntax(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCscAsMj0W7j8b_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECsjJXvCMGntp8_6syntax(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE8grow_oneB1v_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEE8grow_oneB1w_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsldOuP8y2tPE_15crossbeam_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE7reserveB1n_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #21

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare i16 @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr7op_kind(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!155 = distinct !{!155, !154, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2I_: argument 0"}
!156 = distinct !{!156, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2u_"}
!157 = distinct !{!157, !156, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2u_: argument 0"}
!158 = !{!157, !155}
!159 = distinct !{!159, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2I_"}
!160 = distinct !{!160, !159, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2I_: argument 0"}
!161 = distinct !{!161, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2u_"}
!162 = distinct !{!162, !161, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2u_: argument 0"}
!163 = !{!162, !160}
!164 = distinct !{!164, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2I_"}
!165 = distinct !{!165, !164, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2I_: argument 0"}
!166 = distinct !{!166, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2u_"}
!167 = distinct !{!167, !166, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2u_: argument 0"}
!168 = !{!167, !165}
!169 = distinct !{!169, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2I_"}
!170 = distinct !{!170, !169, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2I_: argument 0"}
!171 = distinct !{!171, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2u_"}
!172 = distinct !{!172, !171, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEB2u_: argument 0"}
!173 = !{!172, !170}
!174 = distinct !{!174, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax"}
!175 = distinct !{!175, !174, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax: argument 0"}
!176 = distinct !{!176, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax"}
!177 = distinct !{!177, !176, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax: argument 0"}
!178 = distinct !{!178, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax"}
!179 = distinct !{!179, !178, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax: argument 0"}
!180 = !{!175}
!181 = !{!177}
!182 = !{!179}
!183 = distinct !{!183, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range"}
!184 = distinct !{!184, !183, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range: argument 0"}
!185 = !{!184}
!186 = distinct !{!186, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range"}
!187 = distinct !{!187, !186, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range: argument 0"}
!188 = !{!187}
!189 = distinct !{!189, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB15_9generated5nodes7UseTreeENCNCNvMsi_NtB15_8node_extNtB1L_11UseTreeList25remove_unnecessary_braces00ENtNtNtB9_6traits8iterator8Iterator4nextB17_"}
!190 = distinct !{!190, !189, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB15_9generated5nodes7UseTreeENCNCNvMsi_NtB15_8node_extNtB1L_11UseTreeList25remove_unnecessary_braces00ENtNtNtB9_6traits8iterator8Iterator4nextB17_: argument 0"}
!191 = distinct !{!191, !"_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4findQNCNCNvMsi_NtB6_8node_extNtBM_11UseTreeList25remove_unnecessary_braces00EB8_"}
!192 = distinct !{!192, !191, !"_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4findQNCNCNvMsi_NtB6_8node_extNtBM_11UseTreeList25remove_unnecessary_braces00EB8_: argument 1"}
!193 = distinct !{!193, !191, !"_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4findQNCNCNvMsi_NtB6_8node_extNtBM_11UseTreeList25remove_unnecessary_braces00EB8_: argument 0"}
!194 = distinct !{!194, !"_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1i_4find5checkBK_QNCNCNvMsi_NtB6_8node_extNtBM_11UseTreeList25remove_unnecessary_braces00E0INtNtNtB1q_3ops12control_flow11ControlFlowBK_EEB8_"}
!195 = distinct !{!195, !194, !"_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1i_4find5checkBK_QNCNCNvMsi_NtB6_8node_extNtBM_11UseTreeList25remove_unnecessary_braces00E0INtNtNtB1q_3ops12control_flow11ControlFlowBK_EEB8_: argument 1"}
!196 = distinct !{!196, !194, !"_RINvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB6_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1i_4find5checkBK_QNCNCNvMsi_NtB6_8node_extNtBM_11UseTreeList25remove_unnecessary_braces00E0INtNtNtB1q_3ops12control_flow11ControlFlowBK_EEB8_: argument 0"}
!197 = distinct !{!197, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeQNCNCNvMsi_NtB1i_8node_extNtB1e_11UseTreeList25remove_unnecessary_braces00E0B1k_"}
!198 = distinct !{!198, !197, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeQNCNCNvMsi_NtB1i_8node_extNtB1e_11UseTreeList25remove_unnecessary_braces00E0B1k_: argument 0"}
!199 = !{!193, !192, !190}
!200 = !{!196, !195, !193, !192, !190}
!201 = !{!198, !196, !195, !193, !192, !190}
!202 = !{!198}
!203 = distinct !{!203, !"_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1o_"}
!204 = distinct !{!204, !203, !"_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1o_: argument 0"}
!205 = distinct !{!205, !"_RINvXsn_NtCs9GitHPCrz2Q_5rowan3apiINtB6_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEBS_"}
!206 = distinct !{!206, !205, !"_RINvXsn_NtCs9GitHPCrz2Q_5rowan3apiINtB6_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEBS_: argument 0"}
!207 = distinct !{!207, !"_RINvXs9_NtCs9GitHPCrz2Q_5rowan6cursorNtB6_10SyntaxNodeNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsjJXvCMGntp8_6syntax"}
!208 = distinct !{!208, !207, !"_RINvXs9_NtCs9GitHPCrz2Q_5rowan6cursorNtB6_10SyntaxNodeNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsjJXvCMGntp8_6syntax: argument 0"}
!209 = !{!204}
!210 = !{!208, !206, !204}
!211 = distinct !{!211, !"_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEBJ_"}
!212 = distinct !{!212, !211, !"_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsjJXvCMGntp8_6syntax13syntax_editor16SyntaxAnnotationNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEBJ_: argument 0"}
!213 = !{i32 1, i32 0}
!214 = !{!212}
!215 = !{i64 0, i64 -9223372036854775807}
!216 = distinct !{!216, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B18_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldB16_INtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBc_3ops12control_flow11ControlFlowB3y_ENvYB3y_INtNtBc_7convert4FromB16_E4fromNCINvNvB29_4find5checkB3y_NCNvMNtNtB41_13syntax_editor7mappingNtB6G_13SyntaxMapping10upmap_node0E0E0B4P_EB41_"}
!217 = distinct !{!217, !216, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B18_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldB16_INtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBc_3ops12control_flow11ControlFlowB3y_ENvYB3y_INtNtBc_7convert4FromB16_E4fromNCINvNvB29_4find5checkB3y_NCNvMNtNtB41_13syntax_editor7mappingNtB6G_13SyntaxMapping10upmap_node0E0E0B4P_EB41_: argument 1"}
!218 = distinct !{!218, !216, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B18_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldB16_INtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBc_3ops12control_flow11ControlFlowB3y_ENvYB3y_INtNtBc_7convert4FromB16_E4fromNCINvNvB29_4find5checkB3y_NCNvMNtNtB41_13syntax_editor7mappingNtB6G_13SyntaxMapping10upmap_node0E0E0B4P_EB41_: argument 0"}
!219 = distinct !{!219, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1a_B18_6parentENtNtNtB6_6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax"}
!220 = distinct !{!220, !219, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1a_B18_6parentENtNtNtB6_6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax: argument 0"}
!221 = !{!220, !218, !217}
!222 = !{!218, !217}
!223 = !{!218}
!224 = distinct !{!224, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsjJXvCMGntp8_6syntax"}
!225 = distinct !{!225, !224, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsjJXvCMGntp8_6syntax: argument 0"}
!226 = distinct !{!226, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE8push_mutB1o_"}
!227 = distinct !{!227, !226, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE8push_mutB1o_: argument 0"}
!228 = !{!225}
!229 = !{!227}
!230 = distinct !{!230, !"_RNvMNtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB2_13SyntaxMapping17upmap_to_ancestor"}
!231 = distinct !{!231, !230, !"_RNvMNtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB2_13SyntaxMapping17upmap_to_ancestor: argument 2"}
!232 = distinct !{!232, !230, !"_RNvMNtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB2_13SyntaxMapping17upmap_to_ancestor: argument 1"}
!233 = distinct !{!233, !230, !"_RNvMNtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB2_13SyntaxMapping17upmap_to_ancestor: argument 0"}
!234 = distinct !{!234, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecjE8push_mutCsjJXvCMGntp8_6syntax"}
!235 = distinct !{!235, !234, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecjE8push_mutCsjJXvCMGntp8_6syntax: argument 0"}
!236 = distinct !{!236, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEENtNtNtBa_6traits8iterator8Iterator5chainB3_ECsjJXvCMGntp8_6syntax"}
!237 = distinct !{!237, !236, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEENtNtNtBa_6traits8iterator8Iterator5chainB3_ECsjJXvCMGntp8_6syntax: argument 1"}
!238 = distinct !{!238, !236, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEENtNtNtBa_6traits8iterator8Iterator5chainB3_ECsjJXvCMGntp8_6syntax: argument 2"}
!239 = distinct !{!239, !236, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEENtNtNtBa_6traits8iterator8Iterator5chainB3_ECsjJXvCMGntp8_6syntax: argument 0"}
!240 = distinct !{!240, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjJXvCMGntp8_6syntax"}
!241 = distinct !{!241, !240, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjJXvCMGntp8_6syntax: argument 0"}
!242 = distinct !{!242, !"_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjJXvCMGntp8_6syntax"}
!243 = distinct !{!243, !242, !"_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjJXvCMGntp8_6syntax: argument 0"}
!244 = distinct !{!244, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB4_3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEENtNtNtB8_6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax"}
!245 = distinct !{!245, !244, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB4_3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEENtNtNtB8_6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax: argument 0"}
!246 = distinct !{!246, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsjJXvCMGntp8_6syntax"}
!247 = distinct !{!247, !246, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsjJXvCMGntp8_6syntax: argument 0"}
!248 = distinct !{!248, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEB1d_EECsjJXvCMGntp8_6syntax"}
!249 = distinct !{!249, !248, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEB1d_EECsjJXvCMGntp8_6syntax: argument 0"}
!250 = distinct !{!250, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax"}
!251 = distinct !{!251, !250, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax: argument 0"}
!252 = distinct !{!252, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax"}
!253 = distinct !{!253, !252, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax: argument 0"}
!254 = distinct !{!254, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax"}
!255 = distinct !{!255, !254, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEEECsjJXvCMGntp8_6syntax: argument 0"}
!256 = distinct !{!256, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionjE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainINtNtB11_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEB1E_ENtNtNtB13_6traits8iterator8Iterator4next0ECsjJXvCMGntp8_6syntax"}
!257 = distinct !{!257, !256, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionjE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainINtNtB11_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEB1E_ENtNtNtB13_6traits8iterator8Iterator4next0ECsjJXvCMGntp8_6syntax: argument 0"}
!258 = distinct !{!258, !"_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainINtNtB8_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEB11_ENtNtNtBa_6traits8iterator8Iterator4next0CsjJXvCMGntp8_6syntax"}
!259 = distinct !{!259, !258, !"_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainINtNtB8_3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEEB11_ENtNtNtBa_6traits8iterator8Iterator4next0CsjJXvCMGntp8_6syntax: argument 0"}
!260 = distinct !{!260, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB4_3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEENtNtNtB8_6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax"}
!261 = distinct !{!261, !260, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB4_3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterjEENtNtNtB8_6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax: argument 0"}
!262 = distinct !{!262, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsjJXvCMGntp8_6syntax"}
!263 = distinct !{!263, !262, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsjJXvCMGntp8_6syntax: argument 0"}
!264 = !{!231}
!265 = !{!233, !232}
!266 = !{!233, !232, !231}
!267 = !{!233}
!268 = !{!232, !231}
!269 = !{!235}
!270 = !{!237}
!271 = !{!238}
!272 = !{!239, !237}
!273 = !{!239, !238}
!274 = !{!241}
!275 = !{!247, !245, !243, !241}
!276 = !{!251, !249}
!277 = !{!253, !249}
!278 = !{!255, !249}
!279 = !{!259, !257}
!280 = !{!263, !261, !259, !257}
!281 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!282 = distinct !{!282, !"_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1x_13syntax_editor7mapping12MappingEntryNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_"}
!283 = distinct !{!283, !282, !"_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1x_13syntax_editor7mapping12MappingEntryNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_: argument 0"}
!284 = distinct !{!284, !282, !"_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1x_13syntax_editor7mapping12MappingEntryNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_: argument 1"}
!285 = distinct !{!285, !"_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB2i_"}
!286 = distinct !{!286, !285, !"_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEB2i_: argument 0"}
!287 = distinct !{!287, !"_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1o_"}
!288 = distinct !{!288, !287, !"_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1o_: argument 0"}
!289 = distinct !{!289, !"_RINvXsn_NtCs9GitHPCrz2Q_5rowan3apiINtB6_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEBS_"}
!290 = distinct !{!290, !289, !"_RINvXsn_NtCs9GitHPCrz2Q_5rowan3apiINtB6_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEBS_: argument 0"}
!291 = distinct !{!291, !"_RINvXs9_NtCs9GitHPCrz2Q_5rowan6cursorNtB6_10SyntaxNodeNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsjJXvCMGntp8_6syntax"}
!292 = distinct !{!292, !291, !"_RINvXs9_NtCs9GitHPCrz2Q_5rowan6cursorNtB6_10SyntaxNodeNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsjJXvCMGntp8_6syntax: argument 0"}
!293 = distinct !{!293, !"_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1z_13syntax_editor7mapping12MappingEntryEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2m_E0EB1z_"}
!294 = distinct !{!294, !293, !"_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1z_13syntax_editor7mapping12MappingEntryEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2m_E0EB1z_: argument 0"}
!295 = distinct !{!295, !"_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!296 = distinct !{!296, !295, !"_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!297 = distinct !{!297, !293, !"_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1z_13syntax_editor7mapping12MappingEntryEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2m_E0EB1z_: argument 1"}
!298 = distinct !{!298, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!299 = distinct !{!299, !298, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!300 = distinct !{!300, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1B_13syntax_editor7mapping12MappingEntryEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2o_E0E0B1B_"}
!301 = distinct !{!301, !300, !"_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1B_13syntax_editor7mapping12MappingEntryEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2o_E0E0B1B_: argument 0"}
!302 = !{!283}
!303 = !{!284}
!304 = !{!286}
!305 = !{!286, !284}
!306 = !{!288, !283}
!307 = !{!292, !290, !288, !286, !283, !284}
!308 = !{!294}
!309 = !{!296}
!310 = !{!296, !294, !283}
!311 = !{!297, !284}
!312 = !{!299, !296, !294, !283}
!313 = !{!301, !296, !294, !283}
!314 = distinct !{!314, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsjJXvCMGntp8_6syntax"}
!315 = distinct !{!315, !314, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsjJXvCMGntp8_6syntax: argument 0"}
!316 = distinct !{!316, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE15append_elementsB1n_"}
!317 = distinct !{!317, !316, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEE15append_elementsB1n_: argument 0"}
!318 = !{!315}
!319 = !{!317}
!320 = distinct !{!320, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEE8push_mutB1p_"}
!321 = distinct !{!321, !320, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEE8push_mutB1p_: argument 0"}
!322 = !{!321}
!323 = distinct !{!323, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7RetTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!324 = distinct !{!324, !323, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7RetTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!325 = !{!324}
!326 = distinct !{!326, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast4prec14check_ancestry0B7_"}
!327 = distinct !{!327, !326, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast4prec14check_ancestry0B7_: argument 0"}
!328 = distinct !{!328, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1a_B18_6parentENtNtNtB6_6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax"}
!329 = distinct !{!329, !328, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1a_B18_6parentENtNtNtB6_6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax: argument 0"}
!330 = distinct !{!330, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast4prec14check_ancestry0B7_"}
!331 = distinct !{!331, !330, !"_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast4prec14check_ancestry0B7_: argument 0"}
!332 = !{!327}
!333 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!334 = !{!329}
!335 = !{!331}
!336 = distinct !{!336, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_EBX_"}
!337 = distinct !{!337, !336, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_EBX_: argument 1"}
!338 = distinct !{!338, !336, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_EBX_: argument 0"}
!339 = !{!337}
!340 = !{!338, !337}
!341 = distinct !{!341, !343}
!342 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!343 = !{!"llvm.loop.unroll.disable"}
!344 = distinct !{!344, !"_RNCNvNvMs_NtNtCsjJXvCMGntp8_6syntax3ast4precNtNtNtBa_9generated5nodes4Expr28contains_exterior_struct_lit34contains_exterior_struct_lit_inner0Bc_"}
!345 = distinct !{!345, !344, !"_RNCNvNvMs_NtNtCsjJXvCMGntp8_6syntax3ast4precNtNtNtBa_9generated5nodes4Expr28contains_exterior_struct_lit34contains_exterior_struct_lit_inner0Bc_: argument 0"}
!346 = distinct !{null, null}
!347 = !{!345}
!348 = distinct !{!348, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7ArgListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!349 = distinct !{!349, !348, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7ArgListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!350 = distinct !{!350, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9ParamListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!351 = distinct !{!351, !350, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9ParamListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!352 = !{!349}
!353 = !{!351}
!354 = !{i64 4}
!355 = distinct !{!355, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB18_9generated5nodes3PatEENtNtNtB8_6traits8iterator8Iterator9size_hintB1a_"}
!356 = distinct !{!356, !355, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB18_9generated5nodes3PatEENtNtNtB8_6traits8iterator8Iterator9size_hintB1a_: argument 0"}
!357 = !{i64 -2, i64 18}
!358 = !{!356}
!359 = distinct !{!359, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!360 = distinct !{!360, !359, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes10GenericArgNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!361 = !{!360}
!362 = distinct !{!362, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!363 = distinct !{!363, !362, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes12GenericParamNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!364 = !{!363}
!365 = distinct !{!365, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!366 = distinct !{!366, !365, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes3PatNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!367 = !{!366}
!368 = distinct !{!368, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4AttrNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!369 = distinct !{!369, !368, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4AttrNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!370 = !{!369}
!371 = distinct !{!371, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!372 = distinct !{!372, !371, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4MetaNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!373 = !{!372}
!374 = distinct !{!374, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!375 = distinct !{!375, !374, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes4TypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!376 = !{!375}
!377 = distinct !{!377, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7ForTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!378 = distinct !{!378, !377, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7ForTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!379 = !{!378}
!380 = distinct !{!380, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7UseTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!381 = distinct !{!381, !380, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7UseTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!382 = !{!381}
!383 = distinct !{!383, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7VariantNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!384 = distinct !{!384, !383, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7VariantNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!385 = !{!384}
!386 = distinct !{!386, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes8PathTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!387 = distinct !{!387, !386, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes8PathTypeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!388 = !{!387}
!389 = distinct !{!389, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!390 = distinct !{!390, !389, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9AssocItemNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!391 = !{!390}
!392 = distinct !{!392, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9BlockExprNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!393 = distinct !{!393, !392, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9BlockExprNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!394 = !{!393}
!395 = distinct !{!395, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TokenTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!396 = distinct !{!396, !395, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TokenTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!397 = !{!396}
!398 = distinct !{!398, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TypeBoundNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!399 = distinct !{!399, !398, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TypeBoundNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!400 = !{!399}
!401 = distinct !{!401, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9WherePredNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_"}
!402 = distinct !{!402, !401, !"_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9WherePredNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_: argument 0"}
!403 = !{!402}
end_hunk_1
