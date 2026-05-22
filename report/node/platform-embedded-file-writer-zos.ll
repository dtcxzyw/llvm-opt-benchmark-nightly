inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZN2v88internal30PlatformEmbeddedFileWriterBaseD2Ev = comdat any

$_ZN2v88internal29PlatformEmbeddedFileWriterZOSD0Ev = comdat any

$_ZN2v88internal30PlatformEmbeddedFileWriterBase23AlignToPageSizeIfNeededEv = comdat any

$_ZN2v88internal30PlatformEmbeddedFileWriterBase7NewlineEv = comdat any

$_ZN2v88internal30PlatformEmbeddedFileWriterBase19MaybeEmitUnwindDataEPKcS3_PKNS0_12EmbeddedDataEPKv = comdat any

@.str = private unnamed_addr constant [164 x i8] c"&suffix SETA &suffix+1\0ACEECWSA LOCTR\0AAL&suffix ALIAS C'%s'\0AC_WSA64 CATTR DEFLOAD,RMODE(64),PART(AL&suffix)\0AAL&suffix XATTR REF(DATA),LINKAGE(XPLINK),SCOPE(EXPORT)\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"C_WSA64 CATTR PART(PART1)\0ALBL&suffix DC AD(AL&suffix)\0A\00", align 1
@.str.2 = private unnamed_addr constant [228 x i8] c"&suffix SETA &suffix+1\0ACEECWSA LOCTR\0AAL&suffix ALIAS C'%s'\0AC_WSA64 CATTR DEFLOAD,RMODE(64),PART(AL&suffix)\0AAL&suffix XATTR REF(DATA),LINKAGE(XPLINK),SCOPE(EXPORT)\0A DC F'%d'\0AC_WSA64 CATTR PART(PART1)\0ALBL&suffix DC AD(AL&suffix)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"* Global Symbol %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"* %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"*--------------------------------------------\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"* Label %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s DS 0H\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"* line %d \22%s\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"* Builtin %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%.16lx\00", align 1
@.str.11 = private unnamed_addr constant [72 x i8] c"&C SETC 'embed'\0A SYSSTATE AMODE64=YES\0A&C csect\0A&C amode 64\0A&C rmode 64\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" end\0A\00", align 1
@_ZTVN2v88internal29PlatformEmbeddedFileWriterZOSE = hidden unnamed_addr constant { [27 x ptr] } { [27 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal30PlatformEmbeddedFileWriterBaseD2Ev, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOSD0Ev, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS11SectionTextEv, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS13SectionRoDataEv, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS20AlignToCodeAlignmentEv, ptr @_ZN2v88internal30PlatformEmbeddedFileWriterBase23AlignToPageSizeIfNeededEv, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS20AlignToDataAlignmentEv, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS13DeclareUint32EPKcj, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS19DeclareSymbolGlobalEPKc, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS12DeclareLabelEPKc, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS18DeclareLabelPrologEPKc, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS20DeclareLabelEpilogueEv, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS10SourceInfoEiPKci, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS20DeclareFunctionBeginEPKcj, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS18DeclareFunctionEndEPKc, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS10HexLiteralEm, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS7CommentEPKc, ptr @_ZN2v88internal30PlatformEmbeddedFileWriterBase7NewlineEv, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS12FilePrologueEv, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS23DeclareExternalFilenameEiPKc, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS12FileEpilogueEv, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS21IndentedDataDirectiveENS0_13DataDirectiveE, ptr @_ZNK2v88internal29PlatformEmbeddedFileWriterZOS22ByteChunkDataDirectiveEv, ptr @_ZN2v88internal29PlatformEmbeddedFileWriterZOS14WriteByteChunkEPKh, ptr @_ZN2v88internal30PlatformEmbeddedFileWriterBase19MaybeEmitUnwindDataEPKcS3_PKNS0_12EmbeddedDataEPKv] }, align 8
@_ZZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKczE6indent = internal global [15 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS18DeclareLabelPrologEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef %1) #10 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS20DeclareLabelEpilogueEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.1, i64 54, i64 1, ptr %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS13DeclareUint32EPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.2, ptr noundef %1, i32 noundef %2) #10 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS19DeclareSymbolGlobalEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef %i.b, ptr noundef nonnull @.str.3, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ...) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 8 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef %1, ptr noundef nonnull %2) #10 ; 4 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = load i8, ptr @_ZZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKczE6indent, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) @_ZZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKczE6indent, i8 32, i64 15, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp sgt i32 %i.b, 71
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 71
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp ne i8 %i.f, 10
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 71, ptr noundef %0) ; 2 uses
  %i.i = call i64 @fwrite(ptr noundef nonnull @.str.13, i64 noundef 1, i64 noundef 2, ptr noundef %0) ; 0 uses
  %i.j = add nsw i32 %i.b, -71                    ; 2 uses
  %i.k = icmp samesign ugt i32 %i.b, 127
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0.in31 = phi i64 [ %i.p, %.lr.ph ], [ %i.h, %bb.d ]
  %.02730 = phi i32 [ %i.r, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  %i.l = call i64 @fwrite(ptr noundef nonnull @_ZZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKczE6indent, i64 noundef 1, i64 noundef 15, ptr noundef %0) ; 0 uses
  %sext29 = shl i64 %.0.in31, 32
  %i.m = ashr exact i64 %sext29, 32               ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 %i.m
  %i.o = call i64 @fwrite(ptr noundef nonnull %i.n, i64 noundef 1, i64 noundef 56, ptr noundef %0)
  %i.p = add i64 %i.o, %i.m                       ; 2 uses
  %i.q = call i64 @fwrite(ptr noundef nonnull @.str.13, i64 noundef 1, i64 noundef 2, ptr noundef %0) ; 0 uses
  %i.r = add nsw i32 %.02730, -56                 ; 2 uses
  %i.s = icmp samesign ugt i32 %.02730, 112
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.027.lcssa = phi i32 [ %i.j, %bb.d ], [ %i.r, %.lr.ph ]
  %.0.in.lcssa = phi i64 [ %i.h, %bb.d ], [ %i.p, %.lr.ph ]
  %i.t = call i64 @fwrite(ptr noundef nonnull @_ZZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKczE6indent, i64 noundef 1, i64 noundef 15, ptr noundef %0) ; 0 uses
  %sext = shl i64 %.0.in.lcssa, 32
  %i.u = ashr exact i64 %sext, 32
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.u
  %i.w = zext nneg i32 %.027.lcssa to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = sext i32 %i.b to i64
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.sink35 = phi i64 [ %i.w, %._crit_edge ], [ %i.x, %bb.e ]
  %.sink = phi ptr [ %i.v, %._crit_edge ], [ %i.a, %bb.e ]
  %3 = call i64 @fwrite(ptr noundef nonnull %.sink, i64 noundef 1, i64 noundef %.sink35, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS20AlignToCodeAlignmentEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS20AlignToDataAlignmentEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS7CommentEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef %i.b, ptr noundef nonnull @.str.4, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS12DeclareLabelEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef %i.b, ptr noundef nonnull @.str.5)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef %i.c, ptr noundef nonnull @.str.6, ptr noundef %1)
  %i.d = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef %i.d, ptr noundef nonnull @.str.5)
  %i.e = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef %i.e, ptr noundef nonnull @.str.7, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS10SourceInfoEiPKci(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef %i.b, ptr noundef nonnull @.str.8, i32 noundef %3, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS20DeclareFunctionBeginEPKcj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef %i.b, ptr noundef nonnull @.str.5)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef %i.c, ptr noundef nonnull @.str.9, ptr noundef %1)
  %i.d = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef %i.d, ptr noundef nonnull @.str.5)
  %i.e = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_ZN2v88internal12_GLOBAL__N_114hlasmPrintLineEP8_IO_FILEPKcz(ptr noundef %i.e, ptr noundef nonnull @.str.7, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS18DeclareFunctionEndEPKc(ptr nonnull readnone align 8 captures(none) %0, ptr readnone captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef i32 @_ZN2v88internal29PlatformEmbeddedFileWriterZOS10HexLiteralEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.10, i64 noundef %1) #10
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS12FilePrologueEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.11, i64 71, i64 1, ptr %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS23DeclareExternalFilenameEiPKc(ptr nonnull readnone align 8 captures(none) %0, i32 %1, ptr readnone captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS12FileEpilogueEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.12, i64 5, i64 1, ptr %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN2v88internal29PlatformEmbeddedFileWriterZOS21IndentedDataDirectiveENS0_13DataDirectiveE(ptr nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #3 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK2v88internal29PlatformEmbeddedFileWriterZOS22ByteChunkDataDirectiveEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal29PlatformEmbeddedFileWriterZOS14WriteByteChunkEPKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a) #10
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS11SectionTextEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOS13SectionRoDataEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal30PlatformEmbeddedFileWriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal29PlatformEmbeddedFileWriterZOSD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal30PlatformEmbeddedFileWriterBase23AlignToPageSizeIfNeededEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal30PlatformEmbeddedFileWriterBase7NewlineEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %fputc = tail call i32 @fputc(i32 10, ptr %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal30PlatformEmbeddedFileWriterBase19MaybeEmitUnwindDataEPKcS3_PKNS0_12EmbeddedDataEPKv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

end_hunk_0
