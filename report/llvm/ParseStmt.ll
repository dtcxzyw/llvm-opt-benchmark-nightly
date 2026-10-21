Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParseStmt?download=true
inline.NumInlined: 2908
inline.NumDeleted: 1134
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clang6Parser36ParseCompoundStatementLeadingPragmasEv:bb.a
  tail call void @_ZN5clang6Parser22HandlePragmaFEnvAccessEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #15
  br label %.critedge.backedge

bb.m:                                             ; preds = %.critedge
  tail call void @_ZN5clang6Parser21HandlePragmaFEnvRoundEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #15
  br label %.critedge.backedge

bb.n:                                             ; preds = %.critedge
  tail call void @_ZN5clang6Parser26HandlePragmaCXLimitedRangeEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #15
  br label %.critedge.backedge

bb.o:                                             ; preds = %.critedge
  tail call void @_ZN5clang6Parser24HandlePragmaFloatControlEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #15
  br label %.critedge.backedge

bb.p:                                             ; preds = %.critedge
  tail call void @_ZN5clang6Parser31HandlePragmaMSPointersToMembersEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #15
  br label %.critedge.backedge

bb.q:                                             ; preds = %.critedge
  tail call void @_ZN5clang6Parser20HandlePragmaMSPragmaEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #15
  br label %.critedge.backedge

bb.r:                                             ; preds = %.critedge
  tail call void @_ZN5clang6Parser22HandlePragmaMSVtorDispEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #15
  br label %.critedge.backedge

bb.s:                                             ; preds = %.critedge
  tail call void @_ZN5clang6Parser16HandlePragmaDumpEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #15
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.t
  br label %.critedge

bb.t:                                             ; preds = %.critedge
  tail call void @_ZN5clang6Parser18HandlePragmaExportEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #15
  br label %.critedge.backedge

bb.u:                                             ; preds = %.critedge
  ret void
}

declare void @_ZN5clang6Parser22HandlePragmaFPContractEv(ptr noundef nonnull align 8 dereferenceable(2960)) local_unnamed_addr #2

declare void @_ZN5clang6Parser14HandlePragmaFPEv(ptr noundef nonnull align 8 dereferenceable(2960)) local_unnamed_addr #2

declare void @_ZN5clang6Parser22HandlePragmaFEnvAccessEv(ptr noundef nonnull align 8 dereferenceable(2960)) local_unnamed_addr #2

declare void @_ZN5clang6Parser21HandlePragmaFEnvRoundEv(ptr noundef nonnull align 8 dereferenceable(2960)) local_unnamed_addr #2

declare void @_ZN5clang6Parser26HandlePragmaCXLimitedRangeEv(ptr noundef nonnull align 8 dereferenceable(2960)) local_unnamed_addr #2

declare void @_ZN5clang6Parser24HandlePragmaFloatControlEv(ptr noundef nonnull align 8 dereferenceable(2960)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6Parser15ConsumeNullStmtERN4llvm11SmallVectorIPNS_4StmtELj24EEE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 7 uses
  %3 = alloca %"class.clang::FixItHint", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !103
  %i.d = icmp eq i16 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !358  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i16, ptr %i.f, align 2, !tbaa !1064
  %i.j = and i16 %i.i, 16
  %.not27 = icmp eq i16 %i.j, 0
  br i1 %.not27, label %.lr.ph, label %.critedge

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit
  %i.k = load i16, ptr %i.f, align 2, !tbaa !1064
  %i.l = and i16 %i.k, 16
  %.not = icmp eq i16 %i.l, 0
  br i1 %.not, label %.lr.ph, label %.critedge, !llvm.loop !1385

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.013.01528 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %i.m = load i32, ptr %i.a, align 8, !tbaa !358  ; 4 uses
  %or.cond = icmp slt i32 %i.m, 1
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.n = tail call i64 @_ZN5clang6Parser27ParseStatementOrDeclarationERN4llvm11SmallVectorIPNS_4StmtELj24EEENS0_17ParsedStmtContextEPNS_14SourceLocationEPNS_9LabelDeclE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 0, ptr noundef null, ptr noundef null) ; 2 uses
  %spec.select.i = icmp ugt i64 %i.n, 1
  br i1 %spec.select.i, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.d
  %i.o = and i64 %i.n, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.r = load i32, ptr %i.h, align 4, !tbaa !16
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !342

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %1, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.g, align 8, !tbaa !15
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.g, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit: ; preds = %bb.g, %bb.f, %bb.d
  %.pr = load i16, ptr %i.b, align 8, !tbaa !103
  %i.x = icmp eq i16 %.pr, 64
  br i1 %i.x, label %bb.c, label %.critedge.thread, !llvm.loop !1385

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.013.015.lcssa = phi i32 [ 0, %bb.b ], [ %i.m, %bb.c ], [ %.sroa.013.01528, %.lr.ph ] ; 2 uses
  %.not16 = icmp eq i32 %.sroa.013.015.lcssa, 0
  br i1 %.not16, label %bb.i, label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, %.critedge
  %.sroa.013.0.lcssa24 = phi i32 [ %.sroa.013.015.lcssa, %.critedge ], [ %i.m, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN5clang6Parser4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %2, ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 %i.e, i32 noundef 2172) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %.sroa.2.0.insert.ext = zext nneg i32 %.sroa.013.0.lcssa24 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.e to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.y, i8 0, i64 9, i1 false), !alias.scope !1390
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !1088, !alias.scope !1390
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.ab, align 8, !tbaa !1089, !alias.scope !1390
  store i8 0, ptr %i.aa, align 8, !tbaa !1051, !alias.scope !1390
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.ac, align 8, !tbaa !1092, !alias.scope !1390
  store i64 %.sroa.0.0.insert.insert, ptr %3, align 8, !tbaa !336, !alias.scope !1390
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 1, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !1053, !alias.scope !1390
  %i.ad = icmp eq i32 %i.e, 0
  br i1 %i.ad, label %_ZN5clang9FixItHintD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.thread
  %i.ae = load ptr, ptr %2, align 8, !tbaa !340   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !341
  %i.ah = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ag) ; 2 uses
  store ptr %i.ah, ptr %2, align 8, !tbaa !340
  br label %_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_.exit: ; preds = %bb.h, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.ai = phi ptr [ %i.ah, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ae, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 528
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(57) %3)
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !1065 ; 2 uses
  %i.ak = icmp eq ptr %.pre, %i.aa
  br i1 %i.ak, label %_ZN5clang9FixItHintD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_.exit
  %i.al = load i64, ptr %i.aa, align 8, !tbaa !1051
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.am) #16
  br label %_ZN5clang9FixItHintD2Ev.exit

_ZN5clang9FixItHintD2Ev.exit:                     ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_.exit, %.critedge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang9FixItHintD2Ev.exit, %.critedge, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %_ZN5clang9FixItHintD2Ev.exit ]
  ret i1 %.1
}

declare i64 @_ZN5clang4Sema19ActOnStmtExprResultENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640), i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema13ActOnExprStmtENS_12ActionResultIPNS_4ExprELb1EEEb(ptr noundef nonnull align 8 dereferenceable(18640), i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang6Parser26ParseCompoundStatementBodyEb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %2 = alloca %"class.clang::PrettyStackTraceLoc", align 8 ; 8 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %4 = alloca %"class.clang::BalancedDelimiterTracker", align 8 ; 15 uses
  %5 = alloca %"class.llvm::SmallVector", align 8 ; 14 uses
  %6 = alloca %"class.llvm::SmallVector.452", align 8 ; 10 uses
  %7 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %8 = alloca %"class.clang::DeclSpec", align 8   ; 18 uses
  %9 = alloca %"class.clang::ParsedAttributes", align 8 ; 16 uses
  %10 = alloca %"class.clang::SourceLocation", align 4 ; 5 uses
  %11 = alloca %"class.clang::ParsedAttributes", align 8 ; 14 uses
  %12 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1165, !nonnull !105, !align !106
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !358
  call void @_ZN4llvm21PrettyStackTraceEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang19PrettyStackTraceLocE, i64 16), ptr %2, align 8, !tbaa !1036
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !1394
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.g, ptr %i.i, align 8, !tbaa !336
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @.str.21, ptr %i.j, align 8, !tbaa !1396
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !343, !nonnull !105, !align !106
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %i.l) #15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !1397, !range !335, !noundef !105
  store i8 0, ptr %i.m, align 8, !tbaa !1053
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 3 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !1063
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = load i8, ptr %i.o, align 8, !tbaa !1053, !range !335, !noundef !105
  store i8 %i.q, ptr %i.p, align 8, !tbaa !1094
  store i8 1, ptr %i.o, align 8, !tbaa !1053
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.r, align 8, !tbaa !1095
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 24, ptr %i.s, align 8, !tbaa !1097
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i16 64, ptr %i.t, align 4, !tbaa !1098
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !100
  %.repack6.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i16 25, ptr %i.x, align 2, !tbaa !1099
  store i64 ptrtoint (ptr @_ZN5clang6Parser12ConsumeBraceEv to i64), ptr %i.w, align 8, !tbaa !1100
  store i64 0, ptr %.repack6.i, align 8, !tbaa !1100
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.z = load i16, ptr %i.y, align 8, !tbaa !103
  %i.aa = icmp eq i16 %i.z, 24
  br i1 %i.aa, label %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread

_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i: ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !19 ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !334, !nonnull !105, !align !106
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = zext i16 %i.ac to i64
  %i.ak = icmp samesign ugt i64 %i.ai, %i.aj
  br i1 %i.ak, label %_ZN5clang6Parser12ConsumeBraceEv.exit, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit

_ZN5clang6Parser12ConsumeBraceEv.exit:            ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.al = add i16 %i.ac, 1
  store i16 %i.al, ptr %i.ab, align 4, !tbaa !99
  %i.am = load i32, ptr %i.f, align 8, !tbaa !358
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %i.am, ptr %i.an, align 8, !tbaa !336
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ad, ptr noundef nonnull align 8 dereferenceable(20) %i.f) #15
  %.sroa.01.0.copyload.i131 = load i32, ptr %i.an, align 8, !tbaa !336
  store i32 %.sroa.01.0.copyload.i131, ptr %i.u, align 8, !tbaa !336
  br label %bb.b

_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit: ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.ao = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker16diagnoseOverflowEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #15
  br i1 %i.ao, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5clang6Parser12ConsumeBraceEv.exit, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !343, !nonnull !105, !align !106 ; 2 uses
  call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ap, i1 noundef zeroext %1) #15
  call void @_ZN5clang6Parser36ParseCompoundStatementLeadingPragmasEv(ptr noundef nonnull align 8 dereferenceable(2960) %0)
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !343, !nonnull !105, !align !106
  call void @_ZN5clang4Sema41ActOnAfterCompoundStatementLeadingPragmasEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.aq) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i32 0, ptr %i.as, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 24, ptr %i.at, align 4, !tbaa !16
  %i.au = load i16, ptr %i.y, align 8, !tbaa !103
  %i.av = icmp eq i16 %i.au, 210
  br i1 %i.av, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 3 uses
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 92
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 296
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 140
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 128
  %16 = insertelement <2 x ptr> poison, ptr %i.bc, i64 0
  %17 = insertelement <2 x ptr> %16, ptr %14, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph109, %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit
  %i.bo = load i32, ptr %i.f, align 8, !tbaa !358
  store i32 %i.bo, ptr %i.aw, align 8, !tbaa !336
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.bp, ptr noundef nonnull align 8 dereferenceable(20) %i.f) #15
  %.sroa.01.0.copyload.i = load i32, ptr %i.aw, align 8, !tbaa !336 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %i.ax, ptr %6, align 8, !tbaa !14
  store i32 0, ptr %i.ay, align 8, !tbaa !15
  store i32 4, ptr %i.az, align 4, !tbaa !16
  %i.bq = load i16, ptr %i.y, align 8, !tbaa !103
  %.not106107 = icmp eq i16 %i.bq, 5
  br i1 %.not106107, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN5clang6Parser4DiagERKNS_5TokenEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.f, i32 noundef 14) #15
  %i.br = load ptr, ptr %7, align 8, !tbaa !340   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %._crit_edge
  %i.bs = load ptr, ptr %i.bb, align 8, !tbaa !341
  %i.bt = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.bs) ; 2 uses
  store ptr %i.bt, ptr %7, align 8, !tbaa !340
  br label %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit: ; preds = %._crit_edge, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.bu = phi ptr [ %i.bt, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.br, %._crit_edge ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bu, align 8, !tbaa !1050
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx
  store i8 4, ptr %i.by, align 1, !tbaa !1051
  %i.bz = load ptr, ptr %7, align 8, !tbaa !340   ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i8, ptr %i.bz, align 8, !tbaa !1050 ; 2 uses
  %i.cc = add i8 %i.cb, 1
  store i8 %i.cc, ptr %i.bz, align 8, !tbaa !1050
  %i.cd = zext i8 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd
  store i64 5, ptr %i.ce, align 8, !tbaa !1052
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.thread

.lr.ph:                                           ; preds = %bb.c, %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit
  %i.cf = load ptr, ptr %i.ba, align 8
  %i.cg = load i32, ptr %i.f, align 8, !tbaa !358
  store i32 %i.cg, ptr %i.aw, align 8, !tbaa !336
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ch, ptr noundef nonnull align 8 dereferenceable(20) %i.f) #15
  %.sroa.01.0.copyload.i53 = load i32, ptr %i.aw, align 8, !tbaa !336
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !343, !nonnull !105, !align !106
  %i.cj = call noundef ptr @_ZN5clang4Sema19LookupOrCreateLabelEPNS_14IdentifierInfoENS_14SourceLocationES3_b(ptr noundef nonnull align 8 dereferenceable(18640) %i.ci, ptr noundef %i.cf, i32 %.sroa.01.0.copyload.i53, i32 %.sroa.01.0.copyload.i, i1 noundef zeroext false) #15 ; 2 uses
  %i.ck = load i32, ptr %i.ay, align 8, !tbaa !15 ; 2 uses
  %i.cl = load i32, ptr %i.az, align 4, !tbaa !16
  %.not.i54 = icmp ult i32 %i.ck, %i.cl
  br i1 %.not.i54, label %bb.e, label %bb.d, !prof !342

bb.d:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.cj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.cm = zext i32 %i.ck to i64
  %i.cn = load ptr, ptr %6, align 8, !tbaa !14
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  store ptr %i.cj, ptr %i.co, align 1
  %i.cp = load i32, ptr %i.ay, align 8, !tbaa !15
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.ay, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.cr = load i16, ptr %i.y, align 8, !tbaa !103
  %.not.i55 = icmp eq i16 %i.cr, 67
  br i1 %.not.i55, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.thread

_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit
  %i.cs = load i32, ptr %i.f, align 8, !tbaa !358
  store i32 %i.cs, ptr %i.aw, align 8, !tbaa !336
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ct, ptr noundef nonnull align 8 dereferenceable(20) %i.f) #15
  %i.cu = load i16, ptr %i.y, align 8, !tbaa !103
  %.not106 = icmp eq i16 %i.cu, 5
  br i1 %.not106, label %.lr.ph, label %._crit_edge

_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.thread: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit, %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store i64 0, ptr %8, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !14
  store i32 0, ptr %i.bg, align 8, !tbaa !15
  store i32 2, ptr %i.bh, align 4, !tbaa !16
  store <2 x ptr> %17, ptr %i.bi, align 8, !tbaa !1032
  store i32 0, ptr %15, align 8, !tbaa !15
  store i32 2, ptr %i.bj, align 4, !tbaa !16
  store ptr null, ptr %i.bl, align 8, !tbaa !1161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(180) %i.bk, i8 0, i64 180, i1 false)
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !343, !nonnull !105, !align !106 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 680
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1030
  %i.cy = load ptr, ptr %6, align 8, !tbaa !14
  %i.cz = load i32, ptr %i.ay, align 8, !tbaa !15
  %i.da = zext i32 %i.cz to i64
  %i.db = call ptr @_ZN5clang4Sema23FinalizeDeclaratorGroupEPNS_5ScopeERKNS_8DeclSpecEN4llvm8ArrayRefIPNS_4DeclEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cv, ptr noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %i.cy, i64 %i.da) #15
  %i.dc = load ptr, ptr %i.k, align 8, !tbaa !343, !nonnull !105, !align !106
  %i.dd = load i32, ptr %i.f, align 8, !tbaa !358
  %i.de = call i64 @_ZN5clang4Sema13ActOnDeclStmtENS_9OpaquePtrINS_12DeclGroupRefEEENS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %i.dc, ptr %i.db, i32 %.sroa.01.0.copyload.i, i32 %i.dd) #15 ; 2 uses
  %i.df = call noundef zeroext i1 @_ZN5clang6Parser20ExpectAndConsumeSemiEjN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 1655, ptr nonnull @.str.17, i64 0) #15 ; 0 uses
  %spec.select.i = icmp ugt i64 %i.de, 1
  br i1 %spec.select.i, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit

bb.f:                                             ; preds = %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.thread
  %i.dg = and i64 %i.de, -2
  %i.dh = inttoptr i64 %i.dg to ptr               ; 2 uses
  %i.di = load i32, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.dj = load i32, ptr %i.at, align 4, !tbaa !16
  %.not.i56 = icmp ult i32 %i.di, %i.dj
  br i1 %.not.i56, label %bb.h, label %bb.g, !prof !342

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.dh)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit

bb.h:                                             ; preds = %bb.f
  %i.dk = zext i32 %i.di to i64
  %i.dl = load ptr, ptr %5, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  store ptr %i.dh, ptr %i.dm, align 1
  %i.dn = load i32, ptr %i.as, align 8, !tbaa !15
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.as, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit: ; preds = %bb.h, %bb.g, %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.thread
  %i.dp = load i32, ptr %i.bm, align 4, !tbaa !1163
  %.not.i.i.i57 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i57, label %_ZN5clang12CXXScopeSpecD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit
  %i.dq = load ptr, ptr %i.bn, align 8, !tbaa !1164
  call void @free(ptr noundef %i.dq) #15
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit.i

_ZN5clang12CXXScopeSpecD2Ev.exit.i:               ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit
  %i.dr = load ptr, ptr %i.bi, align 8, !tbaa !350, !nonnull !105, !align !106
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.dr, ptr noundef nonnull align 8 dereferenceable(40) %i.bi) #15
  %i.ds = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %14
  br i1 %i.dt, label %_ZN5clang13AttributePoolD2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit.i
  call void @free(ptr noundef %i.ds) #15
  br label %_ZN5clang13AttributePoolD2Ev.exit.i.i

_ZN5clang13AttributePoolD2Ev.exit.i.i:            ; preds = %bb.j, %_ZN5clang12CXXScopeSpecD2Ev.exit.i
  %i.du = load ptr, ptr %i.be, align 8, !tbaa !14 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bf
  br i1 %i.dv, label %_ZN5clang8DeclSpecD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i.i
  call void @free(ptr noundef %i.du) #15
  br label %_ZN5clang8DeclSpecD2Ev.exit

_ZN5clang8DeclSpecD2Ev.exit:                      ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.dw = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ax
  br i1 %i.dx, label %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5clang8DeclSpecD2Ev.exit
  call void @free(ptr noundef %i.dw) #15
  br label %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit: ; preds = %_ZN5clang8DeclSpecD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.dy = load i16, ptr %i.y, align 8, !tbaa !103
  %i.dz = icmp eq i16 %i.dy, 210
  br i1 %i.dz, label %bb.c, label %._crit_edge110, !llvm.loop !1391

._crit_edge110:                                   ; preds = %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit, %bb.b
  %i.ea = select i1 %1, i32 7, i32 3
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 60
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 60
  %22 = insertelement <2 x ptr> poison, ptr %i.ec, i64 0 ; 2 uses
  %23 = insertelement <2 x ptr> %22, ptr %i.et, i64 1
  %24 = insertelement <2 x ptr> %22, ptr %19, i64 1
  br label %.outer.outer

.outer.outer:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit71, %._crit_edge110
  %.050.ph.ph = phi i1 [ %i.hz, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit71 ], [ false, %._crit_edge110 ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %_ZN5clang16ParsedAttributesD2Ev.exit68
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.outer
  %i.eu = load i16, ptr %i.y, align 8, !tbaa !103 ; 2 uses
  %i.ev = add i16 %i.eu, -467
  %or.cond5.i = icmp ult i16 %i.ev, 3
  br i1 %or.cond5.i, label %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit, label %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit.thread

_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit: ; preds = %.backedge
  %i.ew = call noundef zeroext i1 @_ZN5clang6Parser26parseMisplacedModuleImportEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #15
  br i1 %i.ew, label %.critedge, label %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit._ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit.thread_crit_edge

_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit._ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit.thread_crit_edge: ; preds = %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit
  %.pre = load i16, ptr %i.y, align 8, !tbaa !103
  br label %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit.thread

_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit.thread: ; preds = %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit._ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit.thread_crit_edge, %.backedge
  %i.ex = phi i16 [ %.pre, %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit._ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit.thread_crit_edge ], [ %i.eu, %.backedge ]
  switch i16 %i.ex, label %bb.n [
    i16 25, label %.critedge
    i16 1, label %.critedge
    i16 436, label %bb.m
  ]

bb.m:                                             ; preds = %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit.thread
  call void @_ZN5clang6Parser18HandlePragmaUnusedEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #15
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.m, %bb.n
  br label %.backedge, !llvm.loop !1392

bb.n:                                             ; preds = %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit.thread
  %i.ey = call noundef zeroext i1 @_ZN5clang6Parser15ConsumeNullStmtERN4llvm11SmallVectorIPNS_4StmtELj24EEE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(208) %5)
  br i1 %i.ey, label %.backedge.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ez = load i16, ptr %i.y, align 8, !tbaa !103
  %.not103 = icmp eq i16 %i.ez, 205
  br i1 %.not103, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = call i64 @_ZN5clang6Parser27ParseStatementOrDeclarationERN4llvm11SmallVectorIPNS_4StmtELj24EEENS0_17ParsedStmtContextEPNS_14SourceLocationEPNS_9LabelDeclE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef %i.ea, ptr noundef null, ptr noundef null)
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.fb = load i32, ptr %i.f, align 8, !tbaa !358
  store i32 %i.fb, ptr %i.eb, align 8, !tbaa !336
  %i.fc = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.fc, ptr noundef nonnull align 8 dereferenceable(20) %i.f) #15
  %.sroa.01.0.copyload.i59 = load i32, ptr %i.eb, align 8, !tbaa !336
  %i.fd = load i16, ptr %i.y, align 8, !tbaa !103 ; 2 uses
  %i.fe = icmp eq i16 %i.fd, 205
  br i1 %i.fe, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %bb.q, %.lr.ph112
  %i.ff = load i32, ptr %i.f, align 8, !tbaa !358
  store i32 %i.ff, ptr %i.eb, align 8, !tbaa !336
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.fg, ptr noundef nonnull align 8 dereferenceable(20) %i.f) #15
  %i.fh = load i16, ptr %i.y, align 8, !tbaa !103 ; 2 uses
  %i.fi = icmp eq i16 %i.fh, 205
  br i1 %i.fi, label %.lr.ph112, label %._crit_edge113, !llvm.loop !1393

._crit_edge113:                                   ; preds = %.lr.ph112, %bb.q
  %i.fj = phi i16 [ %i.fd, %bb.q ], [ %i.fh, %.lr.ph112 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store i32 0, ptr %9, align 8, !tbaa !100
  store i32 0, ptr %i.ed, align 4, !tbaa !100
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !14
  store i32 0, ptr %i.eg, align 8, !tbaa !15
  store i32 2, ptr %i.eh, align 4, !tbaa !16
  store <2 x ptr> %24, ptr %i.ei, align 8, !tbaa !1032
  store i32 0, ptr %i.ej, align 8, !tbaa !15
  store i32 2, ptr %i.ek, align 4, !tbaa !16
  %i.fk = add i16 %i.fj, -416
  %spec.select.i.i.i.i = icmp ult i16 %i.fk, 9
  br i1 %spec.select.i.i.i.i, label %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.thread.i, label %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.i

_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.i: ; preds = %._crit_edge113
  %i.fl = call noundef i32 @_ZN5clang6Parser25isCXX11AttributeSpecifierEbb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i1 noundef zeroext false, i1 noundef zeroext true) #15
  %.not.i61 = icmp eq i32 %i.fl, 0
  br i1 %.not.i61, label %_ZN5clang6Parser25MaybeParseCXX11AttributesERNS_16ParsedAttributesEb.exit, label %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.thread.i

_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.thread.i: ; preds = %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.i, %._crit_edge113
  call void @_ZN5clang6Parser20ParseCXX11AttributesERNS_16ParsedAttributesE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(80) %9) #15
  br label %_ZN5clang6Parser25MaybeParseCXX11AttributesERNS_16ParsedAttributesEb.exit

_ZN5clang6Parser25MaybeParseCXX11AttributesERNS_16ParsedAttributesEb.exit: ; preds = %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.i, %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.thread.i
  %i.fm = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !334, !nonnull !105, !align !106
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = and i64 %i.fp, 4096
  %.not.i62 = icmp eq i64 %i.fq, 0
  br i1 %.not.i62, label %_ZN5clang6Parser22isDeclarationStatementEb.exit, label %.split

.split:                                           ; preds = %_ZN5clang6Parser25MaybeParseCXX11AttributesERNS_16ParsedAttributesEb.exit
  %i.fr = call noundef zeroext i1 @_ZN5clang6Parser25isCXXDeclarationStatementEb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i1 noundef zeroext false) #15
  br i1 %i.fr, label %bb.r, label %bb.u

_ZN5clang6Parser22isDeclarationStatementEb.exit:  ; preds = %_ZN5clang6Parser25MaybeParseCXX11AttributesERNS_16ParsedAttributesEb.exit
  %i.fs = call noundef zeroext i1 @_ZN5clang6Parser22isDeclarationSpecifierENS_23ImplicitTypenameContextEb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 0, i1 noundef zeroext true) #15
  br i1 %i.fs, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.split, %_ZN5clang6Parser22isDeclarationStatementEb.exit
  %i.ft = load ptr, ptr %i.el, align 8, !tbaa !1398, !nonnull !105, !align !106
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 4 uses
  %i.fv = load i8, ptr %i.fu, align 4, !tbaa !1399
  %i.fw = add i8 %i.fv, 1
  store i8 %i.fw, ptr %i.fu, align 4, !tbaa !1399
  %i.fx = load i32, ptr %i.f, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store i32 0, ptr %11, align 8, !tbaa !100
  store i32 0, ptr %i.em, align 4, !tbaa !100
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !14
  store i32 0, ptr %i.ep, align 8, !tbaa !15
  store i32 2, ptr %i.eq, align 4, !tbaa !16
  store <2 x ptr> %23, ptr %i.er, align 8, !tbaa !1032
  store i32 0, ptr %20, align 8, !tbaa !15
  store i32 2, ptr %21, align 4, !tbaa !16
  %i.fy = call ptr @_ZN5clang6Parser16ParseDeclarationENS_17DeclaratorContextERNS_14SourceLocationERNS_16ParsedAttributesES5_PS2_(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 8, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef null) #15
  %i.fz = load ptr, ptr %i.k, align 8, !tbaa !343, !nonnull !105, !align !106
  %.sroa.019.0.copyload = load i32, ptr %10, align 4, !tbaa !336
  %i.ga = call i64 @_ZN5clang4Sema13ActOnDeclStmtENS_9OpaquePtrINS_12DeclGroupRefEEENS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %i.fz, ptr %i.fy, i32 %i.fx, i32 %.sroa.019.0.copyload) #15
  %i.gb = load ptr, ptr %i.er, align 8, !tbaa !350, !nonnull !105, !align !106
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.gb, ptr noundef nonnull align 8 dereferenceable(40) %i.er) #15
  %i.gc = load ptr, ptr %i.es, align 8, !tbaa !14 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.et
  br i1 %i.gd, label %_ZN5clang13AttributePoolD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.gc) #15
  br label %_ZN5clang13AttributePoolD2Ev.exit.i

_ZN5clang13AttributePoolD2Ev.exit.i:              ; preds = %bb.s, %bb.r
  %i.ge = load ptr, ptr %i.en, align 8, !tbaa !14 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.eo
  br i1 %i.gf, label %_ZN5clang16ParsedAttributesD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i
  call void @free(ptr noundef %i.ge) #15
  br label %_ZN5clang16ParsedAttributesD2Ev.exit

_ZN5clang16ParsedAttributesD2Ev.exit:             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.gg = load i8, ptr %i.fu, align 4, !tbaa !1399
  %i.gh = add i8 %i.gg, -1
  store i8 %i.gh, ptr %i.fu, align 4, !tbaa !1399
  br label %.thread

bb.u:                                             ; preds = %.split, %_ZN5clang6Parser22isDeclarationStatementEb.exit
  %i.gi = call i64 @_ZN5clang6Parser35ParseExpressionWithLeadingExtensionENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 %.sroa.01.0.copyload.i59) #15 ; 4 uses
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gk = call noundef zeroext i1 @_ZN5clang6Parser20ExpectAndConsumeSemiEjN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 1648, ptr nonnull @.str.17, i64 0) #15 ; 0 uses
  %i.gl = load i16, ptr %i.y, align 8
  %i.gm = icmp eq i16 %i.gl, 25
  %or.cond.i65 = select i1 %1, i1 %i.gm, i1 false
  br i1 %or.cond.i65, label %bb.w, label %_ZN5clang6Parser14handleExprStmtENS_12ActionResultIPNS_4ExprELb1EEENS0_17ParsedStmtContextE.exit

bb.w:                                             ; preds = %bb.v
  %i.gn = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 2960
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !1031 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 2928
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !15
  %i.gs = zext i32 %i.gr to i64
  %i.gt = icmp ult i64 %i.gp, %i.gs
  br i1 %i.gt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 2920
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !14
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %i.gp
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gx = call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.gn, i32 noundef 1) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i.i.i = phi ptr [ %i.gw, %bb.x ], [ %i.gx, %bb.y ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.gz = load i16, ptr %i.gy, align 8, !tbaa !103
  %i.ha = icmp eq i16 %i.gz, 23
  br i1 %i.ha, label %bb.aa, label %_ZN5clang6Parser14handleExprStmtENS_12ActionResultIPNS_4ExprELb1EEENS0_17ParsedStmtContextE.exit

bb.aa:                                            ; preds = %bb.z
  %i.hb = load ptr, ptr %i.k, align 8, !tbaa !343, !nonnull !105, !align !106
  %i.hc = call i64 @_ZN5clang4Sema19ActOnStmtExprResultENS_12ActionResultIPNS_4ExprELb1EEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.hb, i64 %i.gi) #15
  br label %_ZN5clang6Parser14handleExprStmtENS_12ActionResultIPNS_4ExprELb1EEENS0_17ParsedStmtContextE.exit

_ZN5clang6Parser14handleExprStmtENS_12ActionResultIPNS_4ExprELb1EEENS0_17ParsedStmtContextE.exit: ; preds = %bb.v, %bb.z, %bb.aa
  %i.hd = phi i1 [ false, %bb.aa ], [ true, %bb.z ], [ true, %bb.v ]
  %.sroa.05.0.i = phi i64 [ %i.hc, %bb.aa ], [ %i.gi, %bb.z ], [ %i.gi, %bb.v ]
  %i.he = load ptr, ptr %i.k, align 8, !tbaa !343, !nonnull !105, !align !106
  %i.hf = call i64 @_ZN5clang4Sema13ActOnExprStmtENS_12ActionResultIPNS_4ExprELb1EEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.he, i64 %.sroa.05.0.i, i1 noundef zeroext %i.hd) #15 ; 3 uses
  %spec.select.i66 = icmp ugt i64 %i.hf, 1
  br i1 %spec.select.i66, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %_ZN5clang6Parser14handleExprStmtENS_12ActionResultIPNS_4ExprELb1EEENS0_17ParsedStmtContextE.exit
  %i.hg = load ptr, ptr %i.k, align 8, !tbaa !343, !nonnull !105, !align !106
  %i.hh = and i64 %i.hf, -2
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = call i64 @_ZN5clang4Sema19ActOnAttributedStmtERKNS_16ParsedAttributesEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640) %i.hg, ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef %i.hi) #15
  br label %.thread

bb.ac:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 64, ptr %i.a, align 2, !tbaa !1033
  %i.hk = call noundef zeroext i1 @_ZN5clang6Parser9SkipUntilEN4llvm8ArrayRefINS_3tok9TokenKindEEENS0_14SkipUntilFlagsE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr nonnull %i.a, i64 1, i32 noundef 0) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.ab, %_ZN5clang6Parser14handleExprStmtENS_12ActionResultIPNS_4ExprELb1EEENS0_17ParsedStmtContextE.exit, %_ZN5clang16ParsedAttributesD2Ev.exit, %bb.ac
  %.sroa.083.2 = phi i64 [ 0, %bb.ac ], [ %i.ga, %_ZN5clang16ParsedAttributesD2Ev.exit ], [ %i.hf, %_ZN5clang6Parser14handleExprStmtENS_12ActionResultIPNS_4ExprELb1EEENS0_17ParsedStmtContextE.exit ], [ %i.hj, %bb.ab ]
  %cond1 = phi i1 [ false, %bb.ac ], [ true, %_ZN5clang16ParsedAttributesD2Ev.exit ], [ true, %_ZN5clang6Parser14handleExprStmtENS_12ActionResultIPNS_4ExprELb1EEENS0_17ParsedStmtContextE.exit ], [ true, %bb.ab ]
  %i.hl = load ptr, ptr %i.ei, align 8, !tbaa !350, !nonnull !105, !align !106
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.hl, ptr noundef nonnull align 8 dereferenceable(40) %i.ei) #15
  %i.hm = load ptr, ptr %18, align 8, !tbaa !14   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %19
  br i1 %i.hn, label %_ZN5clang13AttributePoolD2Ev.exit.i67, label %bb.ad

bb.ad:                                            ; preds = %.thread
  call void @free(ptr noundef %i.hm) #15
  br label %_ZN5clang13AttributePoolD2Ev.exit.i67

_ZN5clang13AttributePoolD2Ev.exit.i67:            ; preds = %bb.ad, %.thread
  %i.ho = load ptr, ptr %i.ee, align 8, !tbaa !14 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.ef
  br i1 %i.hp, label %_ZN5clang16ParsedAttributesD2Ev.exit68, label %bb.ae

bb.ae:                                            ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i67
  call void @free(ptr noundef %i.ho) #15
  br label %_ZN5clang16ParsedAttributesD2Ev.exit68

_ZN5clang16ParsedAttributesD2Ev.exit68:           ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i67, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br i1 %cond1, label %.loopexit, label %.outer

.loopexit:                                        ; preds = %_ZN5clang16ParsedAttributesD2Ev.exit68, %bb.p
  %.sroa.083.3 = phi i64 [ %i.fa, %bb.p ], [ %.sroa.083.2, %_ZN5clang16ParsedAttributesD2Ev.exit68 ] ; 3 uses
  %spec.select.i69 = icmp ugt i64 %.sroa.083.3, 1
  br i1 %spec.select.i69, label %bb.af, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit71

bb.af:                                            ; preds = %.loopexit
  %i.hq = and i64 %.sroa.083.3, -2
  %i.hr = inttoptr i64 %i.hq to ptr               ; 2 uses
  %i.hs = load i32, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.ht = load i32, ptr %i.at, align 4, !tbaa !16
  %.not.i70 = icmp ult i32 %i.hs, %i.ht
  br i1 %.not.i70, label %bb.ah, label %bb.ag, !prof !342

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.hr)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit71

bb.ah:                                            ; preds = %bb.af
  %i.hu = zext i32 %i.hs to i64
  %i.hv = load ptr, ptr %5, align 8, !tbaa !14
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hu
  store ptr %i.hr, ptr %i.hw, align 1
  %i.hx = load i32, ptr %i.as, align 8, !tbaa !15
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr %i.as, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit71: ; preds = %bb.ah, %bb.ag, %.loopexit
  %i.hz = icmp eq i64 %.sroa.083.3, 1
  br label %.outer.outer

.critedge:                                        ; preds = %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit.thread, %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit.thread, %_ZN5clang6Parser29tryParseMisplacedModuleImportEv.exit
  %or.cond = and i1 %1, %.050.ph.ph
  %i.ia = load i32, ptr %i.as, align 8
  %.not.i72 = icmp ne i32 %i.ia, 0
  %or.cond102.not = select i1 %or.cond, i1 %.not.i72, i1 false
  br i1 %or.cond102.not, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %.critedge
  %i.ib = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 72
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !1400 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !1036
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 216
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = call noundef zeroext i1 %i.ig(ptr noundef nonnull align 8 dereferenceable(517) %i.id) #15
  br i1 %i.ih, label %.critedge4, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ii = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 548
  %.sroa.0.0.copyload.i = load i32, ptr %i.ij, align 4, !tbaa !336
  %.not104 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not104, label %bb.ak, label %.critedge6

bb.ak:                                            ; preds = %bb.aj
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 544
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !1401
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %.critedge6, label %.critedge4

.critedge6:                                       ; preds = %bb.aj, %bb.ak
  %i.in = load i32, ptr %i.f, align 8, !tbaa !358
  call void @_ZN5clang6Parser4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 %i.in, i32 noundef 2171) #15
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %12) #15
  br label %.critedge4

.critedge4:                                       ; preds = %bb.ai, %.critedge6, %bb.ak
  %i.io = load i32, ptr %i.f, align 8, !tbaa !358 ; 2 uses
  %i.ip = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker12consumeCloseEv(ptr noundef nonnull align 8 dereferenceable(56) %4)
  %.not = xor i1 %i.ip, true
  %or.cond8 = and i1 %1, %.not
  br i1 %or.cond8, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.critedge4
  %i.iq = load i16, ptr %i.y, align 8, !tbaa !103
  %i.ir = icmp eq i16 %i.iq, 23
  br i1 %i.ir, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @_ZN5clang6Parser18checkCompoundTokenENS_14SourceLocationENS_3tok9TokenKindENS0_13CompoundTokenE(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 %i.io, i16 noundef zeroext 25, i32 noundef 1) #15
  br label %bb.an

bb.an:                                            ; preds = %.critedge4, %bb.al, %bb.am
  %.sroa.0.0.copyload.i73 = load i32, ptr %i.v, align 4, !tbaa !336 ; 2 uses
  %.not105 = icmp eq i32 %.sroa.0.0.copyload.i73, 0
  %spec.select = select i1 %.not105, i32 %i.io, i32 %.sroa.0.0.copyload.i73
  %i.is = load ptr, ptr %i.k, align 8, !tbaa !343, !nonnull !105, !align !106
  %.sroa.0.0.copyload.i75 = load i32, ptr %i.u, align 8, !tbaa !336
  %i.it = load ptr, ptr %5, align 8, !tbaa !14
  %i.iu = load i32, ptr %i.as, align 8, !tbaa !15
  %i.iv = zext i32 %i.iu to i64
  %i.iw = call i64 @_ZN5clang4Sema17ActOnCompoundStmtENS_14SourceLocationES1_N4llvm8ArrayRefIPNS_4StmtEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.is, i32 %.sroa.0.0.copyload.i75, i32 %spec.select, ptr %i.it, i64 %i.iv, i1 noundef zeroext %1) #15
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge, %bb.an
  %.sroa.049.0 = phi i64 [ %i.iw, %bb.an ], [ 1, %.critedge ]
  %i.ix = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.ar
  br i1 %i.iy, label %_ZN4llvm11SmallVectorIPN5clang4StmtELj24EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef %i.ix) #15
  br label %_ZN4llvm11SmallVectorIPN5clang4StmtELj24EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4StmtELj24EED2Ev.exit: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN5clang4Sema25ActOnFinishOfCompoundStmtEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.ap) #15
  br label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread

_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit.thread: ; preds = %bb.a, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit, %_ZN4llvm11SmallVectorIPN5clang4StmtELj24EED2Ev.exit
  %.sroa.049.1 = phi i64 [ %.sroa.049.0, %_ZN4llvm11SmallVectorIPN5clang4StmtELj24EED2Ev.exit ], [ 1, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit ], [ 1, %bb.a ]
  %i.iz = load i8, ptr %i.p, align 8, !tbaa !1094, !range !335, !noundef !105
  %i.ja = load ptr, ptr %4, align 8, !tbaa !1148, !nonnull !105
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !1053
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  store i8 %i.n, ptr %i.m, align 8, !tbaa !1053
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @_ZN4llvm21PrettyStackTraceEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i64 %.sroa.049.1
}

declare void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #2

declare void @_ZN5clang4Sema41ActOnAfterCompoundStatementLeadingPragmasEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #2

declare ptr @_ZN5clang4Sema23FinalizeDeclaratorGroupEPNS_5ScopeERKNS_8DeclSpecEN4llvm8ArrayRefIPNS_4DeclEEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef nonnull align 8 dereferenceable(304), ptr, i64) local_unnamed_addr #2

declare void @_ZN5clang6Parser18HandlePragmaUnusedEv(ptr noundef nonnull align 8 dereferenceable(2960)) local_unnamed_addr #2

declare i64 @_ZN5clang6Parser35ParseExpressionWithLeadingExtensionENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(2960), i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker12consumeCloseEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %2 = alloca %"class.clang::FixItHint", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1406, !nonnull !105, !align !106 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !1099 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i16, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %i.g = icmp eq i16 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.unpack11 = load i64, ptr %i.h, align 8, !tbaa !1100 ; 3 uses
  %.elt12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.unpack13 = load i64, ptr %.elt12, align 8, !tbaa !1100
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %.unpack13 ; 2 uses
  %i.j = and i64 %.unpack11, 1
  %.not14 = icmp eq i64 %i.j, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !1036
  %i.l = getelementptr i8, ptr %i.k, i64 %.unpack11
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load ptr, ptr %i.m, align 8, !nosanitize !105
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = inttoptr i64 %.unpack11 to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ %i.o, %bb.d ]
  %i.q = tail call i32 %i.p(ptr noundef nonnull align 8 dereferenceable(2960) %i.i) #15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.q, ptr %i.r, align 4, !tbaa !336
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq i16 %i.f, 64
  br i1 %i.s, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104, !nonnull !105, !align !106 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2960
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1031 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2928
  %i.y = load i32, ptr %i.x, align 8, !tbaa !15
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp ult i64 %i.w, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i
end_hunk_0
