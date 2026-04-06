begin_hunk_0
inline.NumInlined: 4026
inline.NumDeleted: 715
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
$_ZN6hermes6ESTree24ComponentDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_b = comdat any

$_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev = comdat any

$_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE = comdat any

$_ZN6hermes6ESTree19HookDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_b = comdat any

end_hunk_1
begin_hunk_2_@_ZN6hermes6parser6detail12JSParserImpl27parseComponentParameterFlowENS1_5ParamE:bb.a

bb.s:                                             ; preds = %bb.r
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.0.0.copyload.i.i76 = load ptr, ptr %i.ff, align 8, !tbaa !58
  %i.fg = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.df, i32 noundef 3) #10
  store ptr %i.fg, ptr %i.a, align 8, !tbaa !7
  %5 = ptrtoint ptr %.sroa.0.0.copyload.i.i76 to i64
  %6 = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %5, i8 1, i32 noundef 1) ; 2 uses
  %7 = extractvalue { i64, i8 } %6, 1
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.s
  %i.fh = extractvalue { i64, i8 } %6, 0
  %i.fi = inttoptr i64 %i.fh to ptr
  br label %bb.t

end_hunk_2
begin_hunk_3_@_ZN6hermes6parser6detail12JSParserImpl27parseComponentParameterFlowENS1_5ParamE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.s, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit70, %bb.k, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit53, %bb.e, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit88, %bb.y, %bb.d
  %.sroa.0106.2 = phi i64 [ undef, %bb.y ], [ undef, %bb.d ], [ undef, %bb.e ], [ %i.hx, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit88 ], [ undef, %bb.s ], [ undef, %bb.k ], [ %i.bz, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit53 ], [ %i.es, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit70 ], [ undef, %bb.v ]
  %.sroa.4107.5 = phi i8 [ 0, %bb.y ], [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit88 ], [ 0, %bb.s ], [ 0, %bb.k ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit53 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit70 ], [ 0, %bb.v ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0106.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.4107.5, 1
  ret { i64, i8 } %.fca.1.insert
end_hunk_3
begin_hunk_4_@_ZN6hermes6parser6detail12JSParserImpl19parseBindingElementENS1_5ParamE
declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseBindingElementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824), i32) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl25validateBindingIdentifierENS1_5ParamEN4llvh7SMRangeEPNS_12UniqueStringENS0_9TokenKindE(ptr noundef nonnull align 8 dereferenceable(2824), i32, ptr, ptr, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %1, i8 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 188
  %7 = load i32, ptr %6, align 4, !tbaa !302
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %51, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1236 ; 3 uses
  %10 = icmp eq i32 %3, 1
  %11 = zext i1 %10 to i8
  %12 = load i8, ptr %9, align 4, !tbaa !177, !range !123, !noundef !60
  store i8 %11, ptr %9, align 4, !tbaa !177
  %13 = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl34parseConditionalTypeAnnotationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %14 = extractvalue { i64, i8 } %13, 0           ; 2 uses
  %15 = extractvalue { i64, i8 } %13, 1
  %16 = trunc nuw i8 %15 to i1
  br i1 %16, label %17, label %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

17:                                               ; preds = %8
  %18 = trunc nuw i8 %2 to i1
  br i1 %18, label %19, label %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

19:                                               ; preds = %17
  %20 = inttoptr i64 %1 to ptr                    ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %21, align 8, !tbaa !58
  %22 = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 24
  %24 = load ptr, ptr %23, align 8, !tbaa !181    ; 2 uses
  %25 = load i32, ptr %24, align 8, !tbaa !182
  %26 = zext i32 %25 to i64
  %27 = load ptr, ptr %22, align 8, !tbaa !188
  %28 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !189
  %30 = ptrtoint ptr %29 to i64                   ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %32 = load i64, ptr %31, align 8, !tbaa !191
  %33 = add i64 %32, 7                            ; 2 uses
  %34 = add i64 %33, %30
  %35 = and i64 %34, 7
  %36 = sub i64 %33, %35                          ; 3 uses
  store i64 %36, ptr %31, align 8, !tbaa !191
  %37 = add i64 %36, 56                           ; 2 uses
  %38 = icmp ugt i64 %37, 262144
  br i1 %38, label %.critedge.i.i.i.i, label %40, !prof !148

.critedge.i.i.i.i:                                ; preds = %19
  %39 = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %22, i64 noundef 56, i64 noundef 8) #10
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i

40:                                               ; preds = %19
  %41 = add i64 %36, %30
  %42 = inttoptr i64 %41 to ptr
  store i64 %37, ptr %31, align 8, !tbaa !191
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i:  ; preds = %40, %.critedge.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %39, %.critedge.i.i.i.i ], [ %42, %40 ] ; 8 uses
  %43 = inttoptr i64 %14 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i.i, i8 0, i64 16, i1 false)
  %44 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store i32 193, ptr %44, align 8, !tbaa !156
  %45 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 48
  store ptr %43, ptr %46, align 8, !tbaa !249
  %47 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  store ptr %20, ptr %47, align 8, !tbaa !58
  %48 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %48, align 8, !tbaa !58
  %49 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 40
  store ptr %20, ptr %49, align 8, !tbaa !58
  %50 = ptrtoint ptr %.0.i.i.i.i to i64
  br label %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit: ; preds = %8, %17, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i
  %.sroa.05.0.i = phi i64 [ %50, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i ], [ undef, %8 ], [ %14, %17 ]
  %.sroa.3.0.i = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i ], [ 0, %8 ], [ 1, %17 ]
  store i8 %12, ptr %9, align 4, !tbaa !177
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %.sroa.05.0.i, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 %.sroa.3.0.i, 1
  br label %53

51:                                               ; preds = %4
  %52 = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTypeAnnotationTSEN4llvh8OptionalINS3_5SMLocEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %1, i8 %2) #10
  br label %53

53:                                               ; preds = %51, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit
  %.pn = phi { i64, i8 } [ %.fca.1.insert.i, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ %52, %51 ]
  ret { i64, i8 } %.pn
}

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseBindingInitializerENS1_5ParamEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824), i32, ptr noundef) local_unnamed_addr #3

end_hunk_4
