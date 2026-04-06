begin_hunk_0
inline.NumInlined: 4027
inline.NumDeleted: 716
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
$_ZN6hermes6ESTree24ComponentDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_b = comdat any

$_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev = comdat any

$_ZN6hermes6ESTree19HookDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_b = comdat any

end_hunk_1
begin_hunk_2_@_ZN6hermes6parser6detail12JSParserImpl27parseComponentParameterFlowENS1_5ParamE:bb.a

bb.s:                                             ; preds = %bb.r
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.0.0.copyload.i.i76 = load ptr, ptr %i.ff, align 8, !tbaa !58 ; 3 uses
  %i.fg = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.df, i32 noundef 3) #10
  store ptr %i.fg, ptr %i.a, align 8, !tbaa !7
  %5 = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 188
  %7 = load i32, ptr %6, align 4, !tbaa !302
  %.not.i = icmp eq i32 %7, 0
  br i1 %.not.i, label %46, label %8

8:                                                ; preds = %bb.s
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1236 ; 3 uses
  %10 = load i8, ptr %9, align 4, !tbaa !177, !range !123, !noundef !60
  store i8 1, ptr %9, align 4, !tbaa !177
  %11 = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl34parseConditionalTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %12 = extractvalue { i64, i8 } %11, 0
  %13 = extractvalue { i64, i8 } %11, 1
  %14 = trunc nuw i8 %13 to i1
  br i1 %14, label %15, label %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit.i

15:                                               ; preds = %8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %16, align 8, !tbaa !58
  %17 = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 24
  %19 = load ptr, ptr %18, align 8, !tbaa !181    ; 2 uses
  %20 = load i32, ptr %19, align 8, !tbaa !182
  %21 = zext i32 %20 to i64
  %22 = load ptr, ptr %17, align 8, !tbaa !188
  %23 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !189
  %25 = ptrtoint ptr %24 to i64                   ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %27 = load i64, ptr %26, align 8, !tbaa !191
  %28 = add i64 %27, 7                            ; 2 uses
  %29 = add i64 %28, %25
  %30 = and i64 %29, 7
  %31 = sub i64 %28, %30                          ; 3 uses
  store i64 %31, ptr %26, align 8, !tbaa !191
  %32 = add i64 %31, 56                           ; 2 uses
  %33 = icmp ugt i64 %32, 262144
  br i1 %33, label %.critedge.i.i.i.i.i, label %35, !prof !148

.critedge.i.i.i.i.i:                              ; preds = %15
  %34 = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %17, i64 noundef 56, i64 noundef 8) #10
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i.i

35:                                               ; preds = %15
  %36 = add i64 %31, %25
  %37 = inttoptr i64 %36 to ptr
  store i64 %32, ptr %26, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i.i

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i.i: ; preds = %35, %.critedge.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %34, %.critedge.i.i.i.i.i ], [ %37, %35 ] ; 8 uses
  %38 = inttoptr i64 %12 to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i.i.i, i8 0, i64 16, i1 false)
  %39 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store i32 193, ptr %39, align 8, !tbaa !156
  %40 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 20
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 48
  store ptr %38, ptr %41, align 8, !tbaa !249
  %42 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i76, ptr %42, align 8, !tbaa !58
  %43 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %43, align 8, !tbaa !58
  %44 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i76, ptr %44, align 8, !tbaa !58
  %45 = ptrtoint ptr %.0.i.i.i.i.i to i64
  br label %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit.i

_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit.i: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i.i, %8
  %.sroa.05.0.i.i = phi i64 [ %45, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i.i ], [ undef, %8 ]
  %.sroa.3.0.i.i = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i.i ], [ 0, %8 ]
  store i8 %10, ptr %9, align 4, !tbaa !177
  %.fca.0.insert.i.i81 = insertvalue { i64, i8 } poison, i64 %.sroa.05.0.i.i, 0
  %.fca.1.insert.i.i82 = insertvalue { i64, i8 } %.fca.0.insert.i.i81, i8 %.sroa.3.0.i.i, 1
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

46:                                               ; preds = %bb.s
  %47 = ptrtoint ptr %.sroa.0.0.copyload.i.i76 to i64
  %48 = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTypeAnnotationTSEN4llvh8OptionalINS3_5SMLocEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %47, i8 1) #10
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit: ; preds = %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit.i, %46
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i82, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit.i ], [ %48, %46 ] ; 2 uses
  %49 = extractvalue { i64, i8 } %.pn.i, 1
  %50 = trunc nuw i8 %49 to i1
  br i1 %50, label %.thread, label %bb.z

.thread:                                          ; preds = %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit
  %i.fh = extractvalue { i64, i8 } %.pn.i, 0
  %i.fi = inttoptr i64 %i.fh to ptr
  br label %bb.t

end_hunk_2
begin_hunk_3_@_ZN6hermes6parser6detail12JSParserImpl27parseComponentParameterFlowENS1_5ParamE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit70, %bb.k, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit53, %bb.e, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit88, %bb.y, %bb.d
  %.sroa.0106.2 = phi i64 [ undef, %bb.y ], [ undef, %bb.d ], [ undef, %bb.e ], [ %i.hx, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit88 ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ undef, %bb.k ], [ %i.bz, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit53 ], [ %i.es, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit70 ], [ undef, %bb.v ]
  %.sroa.4107.5 = phi i8 [ 0, %bb.y ], [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit88 ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ 0, %bb.k ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit53 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit70 ], [ 0, %bb.v ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0106.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.4107.5, 1
  ret { i64, i8 } %.fca.1.insert
end_hunk_3
begin_hunk_4_@_ZN6hermes6parser6detail12JSParserImpl19parseBindingElementENS1_5ParamE
declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseBindingElementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824), i32) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl25validateBindingIdentifierENS1_5ParamEN4llvh7SMRangeEPNS_12UniqueStringENS0_9TokenKindE(ptr noundef nonnull align 8 dereferenceable(2824), i32, ptr, ptr, ptr noundef, i32 noundef) local_unnamed_addr #3

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseBindingInitializerENS1_5ParamEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824), i32, ptr noundef) local_unnamed_addr #3

end_hunk_4
