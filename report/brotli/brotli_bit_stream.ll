Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/brotli_bit_stream?download=true
inline.NumInlined: 36
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@BrotliStoreMetaBlockFast:bb.a
  %i.dp = and i32 %.sroa.4.0.copyload.i, 33554431 ; 2 uses
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = add i64 %.1.lcssa.i, %i.dq
  %i.ds = icmp ne i32 %i.dp, 0
  %i.dt = icmp ugt i16 %.sroa.621.0.copyload.i, 127
  %or.cond.i = and i1 %i.ds, %i.dt
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.du = and i16 %.sroa.8.0.copyload.i, 1023
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !14
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !14
  %i.dz = add i64 %i.ca, 1                        ; 2 uses
  store i64 %i.dz, ptr %i.by, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.ea = phi i64 [ %i.dz, %bb.d ], [ %i.ca, %._crit_edge.i ]
  %exitcond.not.i = icmp eq i64 %i.ch, %8
  br i1 %exitcond.not.i, label %BuildHistograms.exit, label %bb.c, !llvm.loop !2

BuildHistograms.exit:                             ; preds = %bb.e
  %i.eb = add i32 %i.d, -1
  %i.ec = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eb, i1 true)
  %i.ed = sub nuw nsw i32 32, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 9364 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 6064 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 6320 ; 2 uses
  tail call void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.b, i64 noundef %i.do, i64 noundef 8, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.eg, ptr noundef nonnull %9, ptr noundef %10)
  %i.eh = load i64, ptr %i.bv, align 8, !tbaa !677
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 6832 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 7536 ; 2 uses
  tail call void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.bu, i64 noundef %i.eh, i64 noundef 10, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, ptr noundef nonnull %9, ptr noundef %10)
  %i.ek = load i64, ptr %i.by, align 8, !tbaa !678
  %i.el = zext nneg i32 %i.ed to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 8944 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 9084 ; 2 uses
  tail call void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.bx, i64 noundef %i.ek, i64 noundef %i.el, ptr noundef nonnull %i.em, ptr noundef nonnull %i.en, ptr noundef nonnull %9, ptr noundef %10)
  tail call fastcc void @StoreDataWithHuffmanCodes(ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.em, ptr noundef nonnull %i.en, ptr noundef nonnull %9, ptr noundef %10)
  br label %bb.f

bb.f:                                             ; preds = %BuildHistograms.exit, %._crit_edge107
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.b) #11
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eo = load i64, ptr %9, align 8, !tbaa !12
  %i.ep = add i64 %i.eo, 7
  %i.eq = and i64 %i.ep, 4294967288               ; 2 uses
  store i64 %i.eq, ptr %9, align 8, !tbaa !12
  %i.er = lshr exact i64 %i.eq, 3
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 %i.er
  store i8 0, ptr %i.es, align 1, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @BrotliStoreUncompressedMetaBlock(i32 noundef %0, ptr noalias nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef captures(none) %5, ptr noalias nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %3, %2                           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.b = load i64, ptr %5, align 8, !tbaa !12, !alias.scope !696, !noalias !697 ; 3 uses
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13, !alias.scope !697, !noalias !696
  %i.f = zext i8 %i.e to i64
  store i64 %i.f, ptr %i.d, align 1, !noalias !696
  %i.g = add i64 %i.b, 1                          ; 2 uses
  %i.h = icmp eq i64 %4, 1
  br i1 %i.h, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %4 to i32
  %i.j = add i32 %i.i, -1                         ; 2 uses
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.j, i1 true)
  %i.l = icmp ult i32 %i.j, 32768
  %narrow.i.i = sub nuw nsw i32 35, %i.k
  %i.m = lshr i32 %narrow.i.i, 2
  %i.n = zext nneg i32 %i.m to i64
  br i1 %i.l, label %.thread.i.i, label %BrotliStoreUncompressedMetaBlockHeader.exit

.thread.i.i:                                      ; preds = %bb.b, %bb.a
  br label %BrotliStoreUncompressedMetaBlockHeader.exit

BrotliStoreUncompressedMetaBlockHeader.exit:      ; preds = %bb.b, %.thread.i.i
  %i.o = phi i64 [ 4, %.thread.i.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.p = add nsw i64 %i.o, -4
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = add i64 %4, -1
  %i.s = lshr i64 %i.g, 3
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13, !alias.scope !698, !noalias !699
  %i.v = zext i8 %i.u to i64
  %i.w = and i64 %i.g, 7
  %i.x = shl nsw i64 %i.p, %i.w
  %i.y = or i64 %i.x, %i.v
  store i64 %i.y, ptr %i.t, align 1, !noalias !699
  %i.z = add i64 %i.b, 3                          ; 3 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13, !alias.scope !700, !noalias !701
  %i.ad = zext i8 %i.ac to i64
  %i.ae = and i64 %i.z, 7
  %i.af = shl i64 %i.r, %i.ae
  %i.ag = or i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ab, align 1, !noalias !701
  %i.ah = add i64 %i.q, %i.z                      ; 3 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13, !alias.scope !702, !noalias !703
  %i.al = zext i8 %i.ak to i64
  %i.am = and i64 %i.ah, 7
  %i.an = shl nuw nsw i64 1, %i.am
  %i.ao = or i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.aj, align 1, !noalias !703
  %i.ap = add i64 %i.ah, 8
  %i.aq = and i64 %i.ap, 4294967288               ; 3 uses
  %i.ar = lshr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 %i.ar ; 2 uses
  store i8 0, ptr %i.as, align 1, !tbaa !13
  %i.at = add i64 %i.a, %4
  %i.au = add i64 %3, 1                           ; 2 uses
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %BrotliStoreUncompressedMetaBlockHeader.exit
  %i.aw = sub i64 %i.au, %i.a                     ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %i.ax, i64 %i.aw, i1 false)
  %i.ay = shl i64 %i.aw, 3
  %i.az = add i64 %i.aq, %i.ay                    ; 2 uses
  %i.ba = sub i64 %4, %i.aw
  %.pre = lshr exact i64 %i.az, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %BrotliStoreUncompressedMetaBlockHeader.exit
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.ar, %BrotliStoreUncompressedMetaBlockHeader.exit ]
  %i.bb = phi i64 [ %i.az, %bb.c ], [ %i.aq, %BrotliStoreUncompressedMetaBlockHeader.exit ] ; 2 uses
  %.036 = phi i64 [ 0, %bb.c ], [ %i.a, %BrotliStoreUncompressedMetaBlockHeader.exit ]
  %.0 = phi i64 [ %i.ba, %bb.c ], [ %4, %BrotliStoreUncompressedMetaBlockHeader.exit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 %.pre-phi
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %.036
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bd, i64 %.0, i1 false)
  %i.be = shl i64 %.0, 3
  %i.bf = add i64 %i.bb, %i.be                    ; 4 uses
  store i64 %i.bf, ptr %5, align 8, !tbaa !12
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 %i.bg ; 2 uses
  store i8 0, ptr %i.bh, align 1, !tbaa !13
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = and i64 %i.bb, 7
  %i.bj = shl nuw nsw i64 1, %i.bi
  store i64 %i.bj, ptr %i.bh, align 1, !noalias !704
  %i.bk = add i64 %i.bf, 1                        ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13, !alias.scope !705, !noalias !706
  %i.bo = zext i8 %i.bn to i64
  %i.bp = and i64 %i.bk, 7
  %i.bq = shl nuw nsw i64 1, %i.bp
  %i.br = or i64 %i.bq, %i.bo
  store i64 %i.br, ptr %i.bm, align 1, !noalias !706
  %i.bs = add i64 %i.bf, 9
  %i.bt = and i64 %i.bs, 4294967288               ; 2 uses
  store i64 %i.bt, ptr %5, align 8, !tbaa !12
  %i.bu = lshr exact i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 %i.bu
  store i8 0, ptr %i.bv, align 1, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"short", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{}
!19 = !{!"BrotliHasherParams", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!20 = !{!"BrotliDistanceParams", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!21 = !{!"CompoundDictionary", !11, i64 0, !11, i64 8, !7, i64 16, !7, i64 144, !7, i64 272, !11, i64 400, !7, i64 408}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"p1 _ZTS16BrotliDictionary", !22, i64 0}
!24 = !{!"p1 short", !22, i64 0}
!25 = !{!"p1 omnipotent char", !22, i64 0}
!26 = !{!"p1 _ZTS8DictWord", !22, i64 0}
!27 = !{!"p1 _ZTS14BrotliTrieNode", !22, i64 0}
!28 = !{!"BrotliTrieNode", !7, i64 0, !7, i64 1, !7, i64 2, !8, i64 4, !8, i64 8}
!29 = !{!"BrotliTrie", !27, i64 0, !11, i64 8, !11, i64 16, !28, i64 24}
!30 = !{!"p1 _ZTS27ContextualEncoderDictionary", !22, i64 0}
!31 = !{!"BrotliEncoderDictionary", !23, i64 0, !8, i64 8, !8, i64 12, !11, i64 16, !24, i64 24, !25, i64 32, !24, i64 40, !26, i64 48, !29, i64 56, !8, i64 96, !30, i64 104, !24, i64 112, !25, i64 120, !11, i64 128, !24, i64 136, !11, i64 144, !26, i64 152, !23, i64 160}
!32 = !{!"p1 _ZTS23BrotliEncoderDictionary", !22, i64 0}
!33 = !{!"ContextualEncoderDictionary", !8, i64 0, !7, i64 4, !7, i64 5, !7, i64 72, !11, i64 584, !31, i64 592, !32, i64 760}
!34 = !{!"SharedEncoderDictionary", !8, i64 0, !21, i64 8, !33, i64 544, !8, i64 1312}
!35 = !{!"BrotliEncoderParams", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !19, i64 40, !20, i64 56, !34, i64 80}
!36 = !{!35, !8, i64 64}
!37 = !{!"p1 int", !22, i64 0}
!38 = !{!"BlockTypeCodeCalculator", !11, i64 0, !11, i64 8}
!39 = !{!"BlockSplitCode", !38, i64 0, !7, i64 16, !7, i64 274, !7, i64 790, !7, i64 816}
!40 = !{!"BlockEncoder", !11, i64 0, !11, i64 8, !25, i64 16, !37, i64 24, !11, i64 32, !39, i64 40, !11, i64 912, !11, i64 920, !11, i64 928, !25, i64 936, !24, i64 944}
!41 = !{!40, !11, i64 0}
!42 = !{!40, !11, i64 8}
!43 = !{!40, !11, i64 32}
!44 = !{!38, !11, i64 0}
!45 = !{!38, !11, i64 8}
!46 = !{!40, !11, i64 912}
!47 = !{!40, !11, i64 920}
!48 = !{!40, !25, i64 936}
!49 = !{!40, !24, i64 944}
!50 = !{!40, !37, i64 24}
!51 = !{!40, !25, i64 16}
!52 = !{!40, !11, i64 928}
!53 = !{!"", !16, i64 0, !7, i64 2}
!54 = !{!53, !16, i64 0}
!55 = !{!53, !7, i64 2}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"double", !7, i64 0}
!59 = !{!"HistogramLiteral", !7, i64 0, !11, i64 1024, !58, i64 1032}
!60 = !{!59, !58, i64 1032}
!61 = !{!"HistogramCommand", !7, i64 0, !11, i64 2816, !58, i64 2824}
!62 = !{!61, !58, i64 2824}
!63 = !{!"HistogramDistance", !7, i64 0, !11, i64 2176, !58, i64 2184}
!64 = !{!63, !58, i64 2184}
!65 = !{!61, !11, i64 2816}
!66 = !{!59, !11, i64 1024}
!67 = !{!63, !11, i64 2176}
!68 = distinct !{!68, !86}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !"BrotliWriteBits"}
!71 = distinct !{!71, !70, !"BrotliWriteBits: argument 0"}
!72 = distinct !{!72, !70, !"BrotliWriteBits: argument 1"}
!73 = distinct !{!73, !"BrotliWriteBits"}
!74 = distinct !{!74, !73, !"BrotliWriteBits: argument 0"}
!75 = distinct !{!75, !73, !"BrotliWriteBits: argument 1"}
!76 = distinct !{!76, !73, !"BrotliWriteBits: argument 1:It1"}
!77 = distinct !{!77, !73, !"BrotliWriteBits: argument 0:It1"}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !"BrotliStoreHuffmanTreeToBitMask"}
!80 = distinct !{!80, !79, !"BrotliStoreHuffmanTreeToBitMask: argument 0"}
!81 = distinct !{!81, !79, !"BrotliStoreHuffmanTreeToBitMask: argument 1"}
!82 = distinct !{!82, !"BrotliWriteBits"}
!83 = distinct !{!83, !82, !"BrotliWriteBits: argument 1"}
!84 = distinct !{!84, !82, !"BrotliWriteBits: argument 0"}
!85 = distinct !{!85, !15}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!71}
!88 = !{!72}
!89 = !{!74}
!90 = !{!75}
!91 = !{!76}
!92 = !{!77}
!93 = !{!80}
!94 = !{!81}
!95 = !{!80, !81}
!96 = !{!83, !81}
!97 = !{!84, !80}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !"BrotliWriteBits"}
!100 = distinct !{!100, !99, !"BrotliWriteBits: argument 0"}
!101 = distinct !{!101, !99, !"BrotliWriteBits: argument 1"}
!102 = distinct !{!102, !"BrotliWriteBits"}
!103 = distinct !{!103, !102, !"BrotliWriteBits: argument 0"}
!104 = distinct !{!104, !102, !"BrotliWriteBits: argument 1"}
!105 = distinct !{!105, !15}
!106 = distinct !{!106, !15}
!107 = distinct !{!107, !15}
!108 = distinct !{!108, !15}
!109 = distinct !{!109, !15}
!110 = distinct !{!110, !15}
!111 = distinct !{!111, !15}
!112 = distinct !{!112, !"BrotliWriteBits"}
!113 = distinct !{!113, !112, !"BrotliWriteBits: argument 0"}
!114 = distinct !{!114, !112, !"BrotliWriteBits: argument 1"}
!115 = distinct !{!115, !"BrotliWriteBits"}
!116 = distinct !{!116, !115, !"BrotliWriteBits: argument 0"}
!117 = distinct !{!117, !115, !"BrotliWriteBits: argument 1"}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !"BrotliWriteBits"}
!120 = distinct !{!120, !119, !"BrotliWriteBits: argument 0"}
!121 = distinct !{!121, !119, !"BrotliWriteBits: argument 1"}
!122 = distinct !{!122, !"BrotliWriteBits"}
!123 = distinct !{!123, !122, !"BrotliWriteBits: argument 0"}
!124 = distinct !{!124, !122, !"BrotliWriteBits: argument 1"}
!125 = distinct !{!125, !"BrotliWriteBits"}
!126 = distinct !{!126, !125, !"BrotliWriteBits: argument 0"}
!127 = distinct !{!127, !125, !"BrotliWriteBits: argument 1"}
!128 = distinct !{!128, !"BrotliWriteBits"}
!129 = distinct !{!129, !128, !"BrotliWriteBits: argument 0"}
!130 = distinct !{!130, !128, !"BrotliWriteBits: argument 1"}
!131 = distinct !{!131, !"BrotliWriteBits"}
!132 = distinct !{!132, !131, !"BrotliWriteBits: argument 0"}
!133 = distinct !{!133, !131, !"BrotliWriteBits: argument 1"}
!134 = distinct !{!134, !"BrotliWriteBits"}
!135 = distinct !{!135, !134, !"BrotliWriteBits: argument 0"}
!136 = distinct !{!136, !134, !"BrotliWriteBits: argument 1"}
!137 = distinct !{!137, !"BrotliWriteBits"}
!138 = distinct !{!138, !137, !"BrotliWriteBits: argument 0"}
!139 = distinct !{!139, !137, !"BrotliWriteBits: argument 1"}
!140 = distinct !{!140, !"BrotliWriteBits"}
!141 = distinct !{!141, !140, !"BrotliWriteBits: argument 0"}
!142 = distinct !{!142, !140, !"BrotliWriteBits: argument 1"}
!143 = distinct !{!143, !"BrotliWriteBits"}
!144 = distinct !{!144, !143, !"BrotliWriteBits: argument 0"}
!145 = distinct !{!145, !143, !"BrotliWriteBits: argument 1"}
!146 = distinct !{!146, !"BrotliWriteBits"}
!147 = distinct !{!147, !146, !"BrotliWriteBits: argument 0"}
!148 = distinct !{!148, !146, !"BrotliWriteBits: argument 1"}
!149 = distinct !{!149, !"BrotliWriteBits"}
!150 = distinct !{!150, !149, !"BrotliWriteBits: argument 0"}
!151 = distinct !{!151, !149, !"BrotliWriteBits: argument 1"}
!152 = distinct !{!152, !15}
!153 = distinct !{!153, !"BrotliWriteBits"}
!154 = distinct !{!154, !153, !"BrotliWriteBits: argument 1"}
!155 = distinct !{!155, !153, !"BrotliWriteBits: argument 0"}
!156 = distinct !{!156, !"BrotliWriteBits"}
!157 = distinct !{!157, !156, !"BrotliWriteBits: argument 0"}
!158 = distinct !{!158, !156, !"BrotliWriteBits: argument 1"}
!159 = distinct !{!159, !"BrotliWriteBits"}
!160 = distinct !{!160, !159, !"BrotliWriteBits: argument 1"}
!161 = distinct !{!161, !159, !"BrotliWriteBits: argument 0"}
!162 = distinct !{!162, !"BrotliWriteBits"}
!163 = distinct !{!163, !162, !"BrotliWriteBits: argument 1"}
!164 = distinct !{!164, !162, !"BrotliWriteBits: argument 0"}
!165 = distinct !{!165, !15}
!166 = !{!100}
!167 = !{!101}
!168 = !{!103}
!169 = !{!104}
!170 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!171 = !{!"HuffmanTree", !8, i64 0, !16, i64 4, !16, i64 6}
!172 = !{!171, !8, i64 0}
!173 = !{!171, !16, i64 4}
end_hunk_0
