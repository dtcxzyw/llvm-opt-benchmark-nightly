Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LzmaEnc?download=true
inline.NumInlined: 106
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 67
begin_hunk_0_@LenEnc_Encode2:bb.a
  %i.mz = lshr i32 %i.mr, 5
  %i.na = sub nsw i32 %i.mr, %i.mz
  br label %bb.bj

bb.bi:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.6.i
  %i.nb = sub nsw i32 2048, %i.mr
  %i.nc = lshr i32 %i.nb, 5
  %i.nd = add nuw nsw i32 %i.nc, %i.mr
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sink.i.i32.7.i = phi i32 [ %i.mt, %bb.bi ], [ %i.my, %bb.bh ] ; 3 uses
  %.0.i.i33.7.i = phi i32 [ %i.nd, %bb.bi ], [ %i.na, %bb.bh ]
  store i32 %.sink.i.i32.7.i, ptr %1, align 8, !tbaa !66
  %i.ne = trunc i32 %.0.i.i33.7.i to i16
  store i16 %i.ne, ptr %i.mp, align 2, !tbaa !23
  %i.nf = icmp ult i32 %.sink.i.i32.7.i, 16777216
  br i1 %i.nf, label %RcTree_Encode.exit.sink.split.i, label %LenEnc_Encode.exit

RcTree_Encode.exit.sink.split.i:                  ; preds = %bb.bj, %bb.ac, %bb.n
  %.sink.i.i32.7.sink.i = phi i32 [ %.sink.i.i24.2.i, %bb.ac ], [ %.sink.i.i.2.i, %bb.n ], [ %.sink.i.i32.7.i, %bb.bj ]
  %i.ng = shl nuw i32 %.sink.i.i32.7.sink.i, 8
  store i32 %i.ng, ptr %1, align 8, !tbaa !66
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  br label %LenEnc_Encode.exit

LenEnc_Encode.exit:                               ; preds = %bb.n, %bb.ac, %bb.bj, %RcTree_Encode.exit.sink.split.i
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %LenEnc_Encode.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 18440
  %i.ni = zext i32 %3 to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.ni ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !14
  %i.nl = add i32 %i.nk, -1                       ; 2 uses
  store i32 %i.nl, ptr %i.nj, align 4, !tbaa !14
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  tail call fastcc void @LenPriceEnc_UpdateTable(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %5)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %LenEnc_Encode.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @RangeEnc_ShiftLow(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = and i64 %i.b, -16777216
  %or.cond = icmp eq i64 %i.c, 4278190080
  br i1 %or.cond, label %._crit_edge, label %.peel.begin

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  %i.d = add i64 %.pre, 1
  br label %bb.j

.peel.begin:                                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %i.o = lshr i64 %i.b, 32
  %i.p = trunc i64 %i.o to i8
  %i.q = add i8 %i.f, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 5 uses
  store i8 %i.q, ptr %i.n, align 1, !tbaa !21
  store ptr %i.r, ptr %i.g, align 8, !tbaa !69
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.b, label %RangeEnc_FlushStream.exit.peel

bb.b:                                             ; preds = %.peel.begin
  %i.u = load i32, ptr %i.i, align 8, !tbaa !71
  %.not.i.peel = icmp eq i32 %i.u, 0
  br i1 %.not.i.peel, label %bb.c, label %RangeEnc_FlushStream.exit.peel

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !110  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !109
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull %i.z, ptr noundef %i.v, i64 noundef %i.y) #14, !inline_history !6
  %.not12.i.peel = icmp eq i64 %i.y, %i.ab
  br i1 %.not12.i.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 9, ptr %i.i, align 8, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !70
  %i.ad = add i64 %i.ac, %i.y
  store i64 %i.ad, ptr %i.l, align 8, !tbaa !70
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !64  ; 2 uses
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !69
  br label %RangeEnc_FlushStream.exit.peel

RangeEnc_FlushStream.exit.peel:                   ; preds = %bb.e, %bb.b, %.peel.begin
  %i.af = phi ptr [ %i.ae, %bb.e ], [ %i.r, %bb.b ], [ %i.r, %.peel.begin ]
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !67
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.m, align 8, !tbaa !67
  %.not18.peel = icmp eq i64 %i.ah, 0
  br i1 %.not18.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %RangeEnc_FlushStream.exit.peel, %RangeEnc_FlushStream.exit
  %i.ai = phi ptr [ %i.bb, %RangeEnc_FlushStream.exit ], [ %i.af, %RangeEnc_FlushStream.exit.peel ] ; 2 uses
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !65
  %i.ak = lshr i64 %i.aj, 32
  %i.al = trunc i64 %i.ak to i8
  %i.am = add i8 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 5 uses
  store i8 %i.am, ptr %i.ai, align 1, !tbaa !21
  store ptr %i.an, ptr %i.g, align 8, !tbaa !69
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %RangeEnc_FlushStream.exit

bb.f:                                             ; preds = %.peel.next
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !71
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.g, label %RangeEnc_FlushStream.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !64  ; 2 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !110 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !109
  %i.ax = tail call i64 %i.aw(ptr noundef nonnull %i.av, ptr noundef %i.ar, i64 noundef %i.au) #14, !inline_history !6
  %.not12.i = icmp eq i64 %i.au, %i.ax
  br i1 %.not12.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 9, ptr %i.i, align 8, !tbaa !71
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !70
  %i.az = add i64 %i.ay, %i.au
  store i64 %i.az, ptr %i.l, align 8, !tbaa !70
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !64  ; 2 uses
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !69
  br label %RangeEnc_FlushStream.exit

RangeEnc_FlushStream.exit:                        ; preds = %bb.i, %bb.f, %.peel.next
  %i.bb = phi ptr [ %i.ba, %bb.i ], [ %i.an, %bb.f ], [ %i.an, %.peel.next ]
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !67
  %i.bd = add i64 %i.bc, -1                       ; 2 uses
  store i64 %i.bd, ptr %i.m, align 8, !tbaa !67
  %.not18 = icmp eq i64 %i.bd, 0
  br i1 %.not18, label %.loopexit, label %.peel.next, !llvm.loop !203

.loopexit:                                        ; preds = %RangeEnc_FlushStream.exit, %RangeEnc_FlushStream.exit.peel
  %i.be = load i64, ptr %i.a, align 8, !tbaa !65  ; 2 uses
  %i.bf = lshr i64 %i.be, 24
  %i.bg = trunc i64 %i.bf to i8
  store i8 %i.bg, ptr %i.e, align 4, !tbaa !68
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %.loopexit
  %i.bh = phi i64 [ %i.b, %._crit_edge ], [ %i.be, %.loopexit ]
  %i.bi = phi i64 [ %i.d, %._crit_edge ], [ 1, %.loopexit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !67
  %i.bk = shl i64 %i.bh, 8
  %i.bl = and i64 %i.bk, 4294967040
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !65
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @LitEnc_GetPriceMatched(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 256) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = or disjoint i32 %1, 256
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.017 = phi i32 [ %2, %bb.a ], [ %i.b, %bb.b ]
  %.016 = phi i32 [ %i.a, %bb.a ], [ %i.o, %bb.b ] ; 4 uses
  %.015 = phi i32 [ 0, %bb.a ], [ %i.n, %bb.b ]
  %.0 = phi i32 [ 256, %bb.a ], [ %i.r, %bb.b ]   ; 3 uses
  %i.b = shl i32 %.017, 1                         ; 3 uses
  %i.c = and i32 %.0, %i.b
  %4 = lshr i32 %.016, 8
  %5 = add nuw nsw i32 %.0, %4
  %i.d = add nuw nsw i32 %5, %i.c
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !23
  %i.h = zext i16 %i.g to i64
  %.mask = and i32 %.016, 128
  %isneg.not = icmp eq i32 %.mask, 0
  %i.i = select i1 %isneg.not, i64 0, i64 2032
  %i.j = xor i64 %i.i, %i.h
  %i.k = lshr i64 %i.j, 4
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14
  %i.n = add i32 %i.m, %.015                      ; 2 uses
  %i.o = shl nuw nsw i32 %.016, 1                 ; 2 uses
  %i.p = xor i32 %i.b, %i.o
  %i.q = xor i32 %i.p, -1
  %i.r = and i32 %.0, %i.q
  %i.s = icmp samesign ult i32 %.016, 32768
  br i1 %i.s, label %bb.b, label %bb.c, !llvm.loop !4

bb.c:                                             ; preds = %bb.b
  ret i32 %i.n
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !59}
!1 = distinct !{!1, !59}
!2 = distinct !{!2, !59}
!3 = distinct !{!3, !59}
!4 = distinct !{!4, !59}
!5 = distinct !{!5, !59}
!6 = distinct !{null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_CLzmaEncProps", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44}
!16 = !{!15, !13, i64 0}
!17 = !{!15, !13, i64 36}
!18 = !{!15, !13, i64 4}
!19 = !{!15, !13, i64 44}
!20 = !{!15, !13, i64 40}
!21 = !{!12, !12, i64 0}
!22 = !{!"short", !12, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{i64 0, i64 2, !23, i64 2, i64 2, !23, i64 4, i64 256, !21, i64 260, i64 256, !21, i64 516, i64 512, !21, i64 1028, i64 17408, !21, i64 18436, i64 4, !14, i64 18440, i64 64, !21}
!25 = !{!"any pointer", !12, i64 0}
!26 = !{!"_IMatchFinder", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!27 = !{!"p1 omnipotent char", !25, i64 0}
!28 = !{!"p1 int", !25, i64 0}
!29 = !{!"long", !12, i64 0}
!30 = !{!"_CThread", !29, i64 0, !13, i64 8}
!31 = !{!"_CEvent", !13, i64 0, !13, i64 4, !13, i64 8, !12, i64 16, !12, i64 56}
!32 = !{!"_CSemaphore", !13, i64 0, !13, i64 4, !13, i64 8, !12, i64 16, !12, i64 56}
!33 = !{!"", !12, i64 0}
!34 = !{!"_CMtSync", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !30, i64 16, !31, i64 32, !31, i64 136, !31, i64 240, !32, i64 344, !32, i64 448, !13, i64 552, !13, i64 556, !33, i64 560, !13, i64 600}
!35 = !{!"p1 _ZTS13_CMatchFinder", !25, i64 0}
!36 = !{!"_CMatchFinderMt", !27, i64 0, !28, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !28, i64 32, !13, i64 40, !13, i64 44, !28, i64 48, !25, i64 56, !34, i64 64, !12, i64 672, !28, i64 800, !13, i64 808, !13, i64 812, !13, i64 816, !28, i64 824, !13, i64 832, !13, i64 836, !13, i64 840, !27, i64 848, !13, i64 856, !13, i64 860, !13, i64 864, !34, i64 872, !25, i64 1480, !35, i64 1488}
!37 = !{!"_CMatchFinder", !27, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !28, i64 40, !28, i64 48, !13, i64 56, !13, i64 60, !27, i64 64, !25, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !13, i64 100, !29, i64 104, !13, i64 112, !13, i64 116, !13, i64 120, !13, i64 124, !13, i64 128, !13, i64 132, !13, i64 136, !12, i64 140}
!38 = !{!"p1 short", !25, i64 0}
!39 = !{!"", !22, i64 0, !22, i64 2, !12, i64 4, !12, i64 260, !12, i64 516}
!40 = !{!"", !39, i64 0, !12, i64 1028, !13, i64 18436, !12, i64 18440}
!41 = !{!"long long", !12, i64 0}
!42 = !{!"", !13, i64 0, !12, i64 4, !41, i64 8, !41, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !25, i64 48, !41, i64 56, !13, i64 64}
!43 = !{!"", !38, i64 0, !12, i64 8, !12, i64 392, !12, i64 416, !12, i64 440, !12, i64 464, !12, i64 488, !12, i64 872, !12, i64 1384, !12, i64 1612, !40, i64 1644, !40, i64 20148, !12, i64 38652, !13, i64 38668}
!44 = !{!"", !26, i64 0, !25, i64 48, !13, i64 56, !36, i64 64, !37, i64 1560, !12, i64 2728, !13, i64 2856, !13, i64 2860, !13, i64 2864, !13, i64 2868, !13, i64 2872, !12, i64 2876, !12, i64 199484, !12, i64 207676, !12, i64 208188, !13, i64 210384, !13, i64 210388, !12, i64 210392, !13, i64 210408, !12, i64 210412, !12, i64 211436, !12, i64 213484, !13, i64 213548, !13, i64 213552, !13, i64 213556, !13, i64 213560, !13, i64 213564, !13, i64 213568, !13, i64 213572, !38, i64 213576, !12, i64 213584, !12, i64 213968, !12, i64 213992, !12, i64 214016, !12, i64 214040, !12, i64 214064, !12, i64 214448, !12, i64 214960, !12, i64 215188, !40, i64 215220, !40, i64 233724, !13, i64 252228, !13, i64 252232, !42, i64 252240, !13, i64 252312, !41, i64 252320, !13, i64 252328, !13, i64 252332, !13, i64 252336, !13, i64 252340, !13, i64 252344, !13, i64 252348, !13, i64 252352, !43, i64 252360}
!45 = !{!44, !13, i64 210408}
!46 = !{!43, !13, i64 38668}
!47 = !{!43, !38, i64 0}
!48 = !{!44, !38, i64 213576}
!49 = !{!44, !13, i64 252228}
!50 = !{!44, !13, i64 252344}
!51 = !{!44, !13, i64 210384}
!52 = !{!44, !13, i64 213556}
!53 = !{!44, !13, i64 213560}
!54 = !{!44, !13, i64 213564}
!55 = !{!44, !13, i64 252232}
!56 = !{!44, !13, i64 1672}
!57 = !{!44, !13, i64 252312}
!58 = !{!44, !13, i64 252336}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!44, !38, i64 252360}
!61 = !{!"", !25, i64 0, !25, i64 8}
!62 = !{!61, !25, i64 0}
!63 = !{!61, !25, i64 8}
!64 = !{!42, !27, i64 40}
!65 = !{!42, !41, i64 8}
!66 = !{!42, !13, i64 0}
!67 = !{!42, !41, i64 16}
!68 = !{!42, !12, i64 4}
!69 = !{!42, !27, i64 24}
!70 = !{!42, !41, i64 56}
!71 = !{!42, !13, i64 64}
!72 = !{!39, !22, i64 2}
!73 = !{!39, !22, i64 0}
!74 = !{!44, !13, i64 2856}
!75 = !{!44, !13, i64 2860}
!76 = !{!44, !13, i64 210388}
!77 = !{!44, !13, i64 213572}
!78 = !{!44, !13, i64 213568}
!79 = !{!44, !13, i64 213548}
!80 = !{!44, !13, i64 213552}
!81 = !{!44, !13, i64 252328}
!82 = !{!44, !25, i64 1632}
!83 = !{!44, !13, i64 252352}
!84 = !{!44, !13, i64 252332}
!85 = !{!44, !13, i64 252340}
!86 = !{!42, !27, i64 32}
!87 = !{!44, !13, i64 56}
!88 = !{!44, !25, i64 48}
!89 = !{!44, !41, i64 252320}
!90 = !{!44, !13, i64 1660}
!91 = !{!44, !27, i64 1624}
!92 = !{!44, !29, i64 1664}
!93 = !{!44, !25, i64 16}
!94 = !{!44, !25, i64 24}
!95 = !{!"", !25, i64 0}
!96 = !{!"", !95, i64 0, !27, i64 8, !29, i64 16, !13, i64 24}
!97 = !{!96, !25, i64 0}
!98 = !{!96, !27, i64 8}
!99 = !{!29, !29, i64 0}
!100 = !{!96, !29, i64 16}
!101 = !{!96, !13, i64 24}
!102 = !{!44, !25, i64 252288}
!103 = !{!44, !13, i64 252304}
!104 = !{!44, !13, i64 1696}
!105 = !{!44, !41, i64 252296}
!106 = !{!44, !27, i64 252264}
!107 = !{!44, !27, i64 252280}
!108 = !{!44, !41, i64 252256}
!109 = !{!95, !25, i64 0}
!110 = !{!42, !25, i64 48}
!111 = !{!15, !13, i64 8}
!112 = !{!15, !13, i64 12}
!113 = !{!15, !13, i64 16}
!114 = !{!15, !13, i64 20}
!115 = !{!15, !13, i64 24}
!116 = !{!15, !13, i64 28}
!117 = !{!15, !13, i64 32}
!118 = !{!44, !13, i64 252348}
!119 = !{!44, !13, i64 1656}
!120 = !{!44, !13, i64 1620}
!121 = !{!44, !35, i64 1552}
!122 = distinct !{null}
!123 = !{ptr @LzmaEnc_FreeLits}
!124 = distinct !{ptr @LzmaEnc_Destruct, null}
!125 = !{ptr @LzmaEnc_Destruct, ptr @LzmaEnc_FreeLits}
!126 = distinct !{!126, !59, !128, !129}
!127 = distinct !{!127, !59, !129, !128}
!128 = !{!"llvm.loop.isvectorized", i32 1}
!129 = !{!"llvm.loop.unroll.runtime.disable"}
!130 = distinct !{!130, !59}
!131 = !{!44, !13, i64 252160}
!132 = !{!44, !13, i64 233656}
!133 = distinct !{!133, !59}
!134 = distinct !{!134, !59}
!135 = distinct !{!135, !59}
!136 = distinct !{!136, !59}
!137 = distinct !{!137, !59}
!138 = distinct !{null, null}
end_hunk_0
