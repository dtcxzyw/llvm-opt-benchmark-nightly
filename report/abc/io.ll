Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/io?download=true
inline.NumInlined: 210
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Abc_Print:bb.a
bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

declare void @Abc_FrameUpdateGia(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Abc_FrameReadLibGen(...) local_unnamed_addr #1

declare ptr @Io_Read(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Abc_FrameReplaceCurrentNetwork(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Abc_FrameCopyLTLDataBase(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Abc_FrameClearVerifStatus(ptr noundef) local_unnamed_addr #1

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #1

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

declare ptr @Io_ReadBlifAsAig(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Io_ReadBlif(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Abc_NtkStartNameIds(ptr noundef) local_unnamed_addr #1

declare ptr @Abc_NtkToLogic(ptr noundef) local_unnamed_addr #1

declare void @Abc_NtkTransferNameIds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #14

declare i32 @Bmc_CexCareVerifyAnyPo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Abc_FrameReplaceCex(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Io_ReadDsd(ptr noundef) local_unnamed_addr #1

declare ptr @Abc_FrameReadNtk(ptr noundef) local_unnamed_addr #1

declare ptr @Io_ReadFins(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Abc_FrameReadOut(ptr noundef) local_unnamed_addr #1

declare ptr @Abc_FrameReadErr(ptr noundef) local_unnamed_addr #1

declare ptr @Extra_FileNameGenericAppend(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Abc_NtkDup(ptr noundef) local_unnamed_addr #1

declare void @Io_ReadBenchInit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Io_ReadPla(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Mop_ManTest(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Extra_FileReadContents(ptr noundef) local_unnamed_addr #1

declare ptr @Abc_SopFromTruthsHex(ptr noundef) local_unnamed_addr #1

declare ptr @Abc_SopFromTruthsBin(ptr noundef) local_unnamed_addr #1

declare ptr @Abc_NtkCreateWithNodes(ptr noundef) local_unnamed_addr #1

declare ptr @Io_FileReadCnf(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Abc_NtkReadLogFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Gia_ManReadGig(ptr noundef) local_unnamed_addr #1

declare ptr @Json_Read(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Abc_FrameSetJsonStrs(ptr noundef) local_unnamed_addr #1

declare void @Abc_FrameSetJsonObjs(ptr noundef) local_unnamed_addr #1

declare ptr @Jsonc_ReadNetwork(ptr noundef) local_unnamed_addr #1

declare void @Io_TransformSF2PLA(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #4

declare ptr @Extra_FileNameGeneric(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #15

declare void @Io_TransformROM2PLA(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Abc_NtkReadFromFile(ptr noundef) local_unnamed_addr #1

declare i32 @Abc_NtkToAig(ptr noundef) local_unnamed_addr #1

declare ptr @Abc_NtkAigToGia(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Io_Write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Io_WriteHie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Saig_ManDupIsoCanonical(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Abc_NtkFromAigPhase(ptr noundef) local_unnamed_addr #1

declare void @Io_WriteAiger(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Io_WriteAigerCex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Io_WriteBlifSpecial(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Abc_NtkToNetlist(ptr noundef) local_unnamed_addr #1

declare i32 @Io_WriteBenchLut(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Io_WriteCellNet(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Abc_NtkDarToCnf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Io_WriteCnf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Sdm_ManCanRead(...) local_unnamed_addr #1

declare void @Mf_ManDumpCnf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Jf_ManDumpCnf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Io_WriteEdgelist(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #16

declare void @Io_WriteHMetis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Io_WriteMoPlaM(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Abc_NtkStrash(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Io_WriteVerilogLut(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Io_WriteVerilog(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Abc_NtkWriteSorterCnf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Hop_ManConvertAigToTruth(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Extra_PrintHex2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Vec_WrdAlloc(i32 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 4 uses
  %i.b = add i32 %0, -1
  %or.cond = icmp ult i32 %i.b, 15
  %spec.store.select = select i1 %or.cond, i32 16, i32 %0 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !87
  store i32 %spec.store.select, ptr %i.a, align 8, !tbaa !88
  %.not = icmp eq i32 %spec.store.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %spec.store.select to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !89
  ret ptr %i.a
}

declare ptr @Gia_ObjComputeTruthTable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @IoCommandWriteTruthsPlaNames(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #17 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 72
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr i8, ptr %.val24, i64 4
  %.val24.val = load i32, ptr %i.b, align 4, !tbaa !83
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val = load i32, ptr %i.c, align 8, !tbaa !71
  %i.d = getelementptr i8, ptr %1, i64 64
  %.val23 = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.e = getelementptr i8, ptr %.val23, i64 4
  %.val23.val = load i32, ptr %i.e, align 4, !tbaa !83
  %i.f = sub nsw i32 %.val23.val, %.val
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ @.str.426, %bb.b ], [ @.str.427, %bb.c ] ; 2 uses
  %i.h = phi i32 [ %.val24.val, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.i = icmp sgt i32 %i.h, 100
  br i1 %i.i, label %.lr.ph.preheader.i, label %IoCommandWriteTruthsPlaDigits.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.j = add nsw i32 %i.h, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.07.i = phi i32 [ %i.k, %.lr.ph.i ], [ 2, %.lr.ph.preheader.i ]
  %.056.i = phi i32 [ %i.l, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ] ; 2 uses
  %i.k = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %i.l = udiv i32 %.056.i, 10
  %i.m = icmp ugt i32 %.056.i, 999
  br i1 %i.m, label %.lr.ph.i, label %IoCommandWriteTruthsPlaDigits.exit.thread, !llvm.loop !192

IoCommandWriteTruthsPlaDigits.exit.thread:        ; preds = %.lr.ph.i
  %fputs43 = tail call i32 @fputs(ptr nonnull %i.g, ptr nonnull %0) ; 0 uses
  br label %.lr.ph

IoCommandWriteTruthsPlaDigits.exit:               ; preds = %bb.d
  %fputs = tail call i32 @fputs(ptr nonnull %i.g, ptr nonnull %0) ; 0 uses
  %i.n = icmp sgt i32 %i.h, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %IoCommandWriteTruthsPlaDigits.exit.thread, %IoCommandWriteTruthsPlaDigits.exit
  %.0.lcssa.i44 = phi i32 [ %i.k, %IoCommandWriteTruthsPlaDigits.exit.thread ], [ 2, %IoCommandWriteTruthsPlaDigits.exit ] ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 648
  %i.p = getelementptr i8, ptr %1, i64 640
  %3 = select i1 %.not, ptr @.str.430, ptr @.str.429 ; 2 uses
  %wide.trip.count38 = zext nneg i32 %i.h to i64  ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.f ], [ 0, %.lr.ph ] ; 3 uses
  %.val26.us = load ptr, ptr %i.p, align 8, !tbaa !194 ; 2 uses
  %.not.i27.us = icmp eq ptr %.val26.us, null
  br i1 %.not.i27.us, label %Gia_ObjCoName.exit.thread.us, label %Gia_ObjCoName.exit.us

Gia_ObjCoName.exit.us:                            ; preds = %.lr.ph.split.us
  %i.q = getelementptr i8, ptr %.val26.us, i64 8
  %.val.i28.us = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val.i28.us, i64 %indvars.iv35
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %.not22.us = icmp eq ptr %i.s, null
  br i1 %.not22.us, label %Gia_ObjCoName.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %Gia_ObjCoName.exit.us
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.s) #22 ; 0 uses
  br label %bb.f

Gia_ObjCoName.exit.thread.us:                     ; preds = %Gia_ObjCoName.exit.us, %.lr.ph.split.us
  %i.u = trunc nuw nsw i64 %indvars.iv35 to i32
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.428, ptr noundef nonnull %3, i32 noundef %.0.lcssa.i44, i32 noundef %i.u) #22 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %Gia_ObjCoName.exit.thread.us, %bb.e
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !193

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %.val25 = load ptr, ptr %i.o, align 8, !tbaa !195 ; 2 uses
  %.not.i = icmp eq ptr %.val25, null
  br i1 %.not.i, label %Gia_ObjCoName.exit.thread, label %Gia_ObjCoName.exit

Gia_ObjCoName.exit:                               ; preds = %.lr.ph.split
  %i.w = getelementptr i8, ptr %.val25, i64 8
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56   ; 2 uses
  %.not22 = icmp eq ptr %i.y, null
  br i1 %.not22, label %Gia_ObjCoName.exit.thread, label %bb.g

bb.g:                                             ; preds = %Gia_ObjCoName.exit
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.y) #22 ; 0 uses
  br label %bb.h

Gia_ObjCoName.exit.thread:                        ; preds = %.lr.ph.split, %Gia_ObjCoName.exit
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.428, ptr noundef nonnull %3, i32 noundef %.0.lcssa.i44, i32 noundef %i.aa) #22 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %Gia_ObjCoName.exit.thread, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count38
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !193

._crit_edge:                                      ; preds = %bb.h, %bb.f, %IoCommandWriteTruthsPlaDigits.exit
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %0) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_WrdFree(ptr noundef captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare void @Extra_PrintHex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Abc_NtkWriteLogFile(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Abc_FrameReadJsonStrs(ptr noundef) local_unnamed_addr #1

declare ptr @Abc_FrameReadGlobalFrame(...) local_unnamed_addr #1

declare void @Json_Extract(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Abc_FrameReadJsonObjs(ptr noundef) local_unnamed_addr #1

declare void @Json_Write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Jsonc_WriteTest(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Gia_ManWriteResub(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Abc_NtkWriteToFile(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Abc_NtkFromCellMappedGia(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(0,1) }
attributes #26 = { nounwind allocsize(1) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !12}
!1 = distinct !{null}
!2 = distinct !{!2, !12}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTS9Nm_Man_t_", !13, i64 0}
!20 = !{!"p1 _ZTS10Vec_Ptr_t_", !13, i64 0}
!21 = !{!"p1 _ZTS10Abc_Ntk_t_", !13, i64 0}
!22 = !{!"p1 _ZTS10Abc_Des_t_", !13, i64 0}
!23 = !{!"double", !7, i64 0}
!24 = !{!"p1 int", !13, i64 0}
!25 = !{!"Vec_Int_t_", !8, i64 0, !8, i64 4, !24, i64 8}
!26 = !{!"p1 _ZTS12Mem_Fixed_t_", !13, i64 0}
!27 = !{!"p1 _ZTS11Mem_Step_t_", !13, i64 0}
!28 = !{!"p1 _ZTS14Abc_ManTime_t_", !13, i64 0}
!29 = !{!"float", !7, i64 0}
!30 = !{!"p1 _ZTS10Vec_Int_t_", !13, i64 0}
!31 = !{!"p1 _ZTS10Abc_Cex_t_", !13, i64 0}
!32 = !{!"p1 float", !13, i64 0}
!33 = !{!"Abc_Ntk_t_", !8, i64 0, !8, i64 4, !14, i64 8, !14, i64 16, !19, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !7, i64 96, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !21, i64 160, !8, i64 168, !22, i64 176, !21, i64 184, !8, i64 192, !8, i64 196, !8, i64 200, !23, i64 208, !8, i64 216, !25, i64 224, !26, i64 240, !27, i64 248, !13, i64 256, !28, i64 264, !13, i64 272, !29, i64 280, !8, i64 284, !30, i64 288, !20, i64 296, !24, i64 304, !31, i64 312, !20, i64 320, !21, i64 328, !13, i64 336, !13, i64 344, !21, i64 352, !13, i64 360, !13, i64 368, !30, i64 376, !30, i64 384, !14, i64 392, !32, i64 400, !20, i64 408, !30, i64 416, !30, i64 424, !20, i64 432, !30, i64 440, !30, i64 448, !30, i64 456}
!34 = !{!33, !20, i64 40}
!35 = !{!"any p2 pointer", !13, i64 0}
!36 = !{!"Vec_Ptr_t_", !8, i64 0, !8, i64 4, !35, i64 8}
!37 = !{!36, !8, i64 4}
!38 = !{!"p1 _ZTS9st__table", !13, i64 0}
!39 = !{!"p1 _ZTS10Gia_Man_t_", !13, i64 0}
!40 = !{!"p1 _ZTS10Abc_Nam_t_", !13, i64 0}
!41 = !{!"p1 _ZTS10Vec_Wec_t_", !13, i64 0}
!42 = !{!"p1 _ZTS13Hsh_VecMan_t_", !13, i64 0}
!43 = !{!"p1 _ZTS9DdManager", !13, i64 0}
!44 = !{!"Abc_Frame_t_", !14, i64 0, !14, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !20, i64 40, !8, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !21, i64 112, !29, i64 120, !29, i64 124, !8, i64 128, !8, i64 132, !17, i64 136, !17, i64 144, !17, i64 152, !23, i64 160, !23, i64 168, !20, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !7, i64 208, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !14, i64 296, !29, i64 304, !30, i64 312, !8, i64 320, !39, i64 328, !39, i64 336, !39, i64 344, !39, i64 352, !39, i64 360, !8, i64 368, !8, i64 372, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !31, i64 392, !31, i64 400, !20, i64 408, !20, i64 416, !30, i64 424, !30, i64 432, !8, i64 440, !8, i64 444, !20, i64 448, !20, i64 456, !20, i64 464, !14, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !13, i64 512, !13, i64 520, !13, i64 528, !13, i64 536, !13, i64 544, !30, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !13, i64 584, !40, i64 592, !41, i64 600, !42, i64 608, !43, i64 616, !39, i64 624, !39, i64 632, !30, i64 640, !30, i64 648, !30, i64 656, !30, i64 664, !24, i64 672, !24, i64 680, !13, i64 688, !24, i64 696, !13, i64 704}
!45 = !{!44, !17, i64 144}
!46 = !{!31, !31, i64 0}
!47 = !{!44, !21, i64 56}
!48 = !{!44, !17, i64 136}
!49 = !{!44, !8, i64 440}
!50 = !{!44, !31, i64 392}
!51 = !{!"Abc_Cex_t_", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !7, i64 20}
!52 = !{!51, !8, i64 0}
!53 = !{!25, !24, i64 8}
!54 = !{!33, !14, i64 16}
!55 = !{!36, !35, i64 8}
!56 = !{!13, !13, i64 0}
!57 = !{!33, !14, i64 8}
!58 = !{!33, !8, i64 0}
!59 = !{!44, !39, i64 328}
!60 = !{!"p1 _ZTS10Gia_Obj_t_", !13, i64 0}
!61 = !{!"p1 _ZTS10Gia_Rpr_t_", !13, i64 0}
!62 = !{!"p1 _ZTS10Vec_Str_t_", !13, i64 0}
!63 = !{!"p1 _ZTS10Gia_Plc_t_", !13, i64 0}
!64 = !{!"p1 _ZTS10Vec_Flt_t_", !13, i64 0}
!65 = !{!"p1 _ZTS10Vec_Vec_t_", !13, i64 0}
!66 = !{!"long", !7, i64 0}
!67 = !{!"p1 _ZTS10Vec_Wrd_t_", !13, i64 0}
!68 = !{!"p1 _ZTS10Vec_Bit_t_", !13, i64 0}
!69 = !{!"p1 _ZTS10Gia_Dat_t_", !13, i64 0}
!70 = !{!"Gia_Man_t_", !14, i64 0, !14, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !60, i64 32, !24, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !30, i64 64, !30, i64 72, !25, i64 80, !25, i64 96, !8, i64 112, !8, i64 116, !8, i64 120, !25, i64 128, !24, i64 144, !24, i64 152, !30, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !24, i64 184, !61, i64 192, !24, i64 200, !24, i64 208, !24, i64 216, !8, i64 224, !8, i64 228, !24, i64 232, !8, i64 240, !30, i64 248, !30, i64 256, !30, i64 264, !41, i64 272, !41, i64 280, !30, i64 288, !13, i64 296, !30, i64 304, !30, i64 312, !62, i64 320, !14, i64 328, !30, i64 336, !30, i64 344, !30, i64 352, !30, i64 360, !30, i64 368, !31, i64 376, !31, i64 384, !20, i64 392, !25, i64 400, !25, i64 416, !30, i64 432, !30, i64 440, !30, i64 448, !30, i64 456, !30, i64 464, !30, i64 472, !30, i64 480, !30, i64 488, !30, i64 496, !30, i64 504, !30, i64 512, !14, i64 520, !63, i64 528, !39, i64 536, !64, i64 544, !64, i64 552, !30, i64 560, !30, i64 568, !30, i64 576, !30, i64 584, !30, i64 592, !8, i64 600, !29, i64 604, !29, i64 608, !30, i64 616, !24, i64 624, !8, i64 632, !20, i64 640, !20, i64 648, !20, i64 656, !30, i64 664, !30, i64 672, !30, i64 680, !30, i64 688, !30, i64 696, !30, i64 704, !30, i64 712, !30, i64 720, !30, i64 728, !65, i64 736, !64, i64 744, !13, i64 752, !13, i64 760, !13, i64 768, !66, i64 776, !66, i64 784, !13, i64 792, !24, i64 800, !8, i64 808, !8, i64 812, !8, i64 816, !8, i64 820, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !67, i64 856, !67, i64 864, !67, i64 872, !67, i64 880, !30, i64 888, !30, i64 896, !30, i64 904, !68, i64 912, !8, i64 920, !8, i64 924, !8, i64 928, !30, i64 936, !8, i64 944, !8, i64 948, !30, i64 952, !30, i64 960, !20, i64 968, !67, i64 976, !30, i64 984, !30, i64 992, !8, i64 1000, !8, i64 1004, !67, i64 1008, !25, i64 1016, !25, i64 1032, !25, i64 1048, !69, i64 1064, !62, i64 1072, !62, i64 1080, !8, i64 1088, !8, i64 1092, !8, i64 1096, !8, i64 1100, !62, i64 1104, !30, i64 1112, !30, i64 1120, !30, i64 1128, !20, i64 1136}
!71 = !{!70, !8, i64 16}
!72 = !{!33, !20, i64 32}
!73 = !{!33, !20, i64 56}
!74 = !{!"p1 _ZTS10Abc_Obj_t_", !13, i64 0}
!75 = !{!"Abc_Obj_t_", !21, i64 0, !74, i64 8, !8, i64 16, !8, i64 20, !8, i64 20, !8, i64 20, !8, i64 20, !8, i64 20, !8, i64 21, !8, i64 21, !8, i64 21, !8, i64 21, !8, i64 21, !25, i64 24, !25, i64 40, !13, i64 56, !7, i64 64, !7, i64 72}
!76 = !{!33, !20, i64 64}
!77 = !{!75, !8, i64 28}
!78 = !{!75, !21, i64 0}
!79 = !{!75, !24, i64 32}
!80 = !{!33, !8, i64 4}
!81 = !{!33, !20, i64 48}
!82 = !{!70, !30, i64 64}
!83 = !{!25, !8, i64 4}
!84 = !{!70, !30, i64 72}
!85 = !{!"p1 long", !13, i64 0}
!86 = !{!"Vec_Wrd_t_", !8, i64 0, !8, i64 4, !85, i64 8}
!87 = !{!86, !8, i64 4}
!88 = !{!86, !8, i64 0}
!89 = !{!86, !85, i64 8}
!90 = !{!25, !8, i64 0}
!91 = !{!33, !20, i64 80}
!92 = !{!51, !8, i64 4}
!93 = !{!"p1 _ZTS10Aig_Obj_t_", !13, i64 0}
!94 = !{!"Aig_Obj_t_", !7, i64 0, !93, i64 8, !93, i64 16, !8, i64 24, !8, i64 24, !8, i64 24, !8, i64 24, !8, i64 24, !8, i64 28, !8, i64 31, !8, i64 32, !8, i64 36, !7, i64 40}
!95 = !{!"p2 _ZTS10Aig_Obj_t_", !35, i64 0}
end_hunk_0
