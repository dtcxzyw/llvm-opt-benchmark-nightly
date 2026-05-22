inline.NumInlined: 83
inline.NumDeleted: 15
begin_hunk_0_@_ZN11duckdb_zstdL29FSE_decompress_wksp_body_bmi2EPvmPKvmjS0_m:bb.a
_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35: ; preds = %bb.ba, %bb.az, %bb.bb
  %i.pq = phi ptr [ %i.og, %bb.ba ], [ %i.pa, %bb.az ], [ %i.pn, %bb.bb ]
  %i.pr = phi i32 [ %i.ol, %bb.ba ], [ %i.pb, %bb.az ], [ %i.pp, %bb.bb ]
  %.val.i.i152249 = phi i64 [ %.val.i.i152250, %bb.ba ], [ %.val.i.i152, %bb.az ], [ %.val.i153, %bb.bb ]
  %i.ps = icmp ugt ptr %i.ov, %i.kq
  br i1 %i.ps, label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit, label %.lr.ph258, !llvm.loop !42

bb.bc:                                            ; preds = %bb.ax
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.ni
  %.sroa.4.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.pt, i64 2
  %.sroa.4.0.copyload.i156 = load i8, ptr %.sroa.4.0..sroa_idx.i155, align 2, !tbaa !20
  %i.pu = getelementptr inbounds nuw i8, ptr %.139.i257, i64 3
  store i8 %.sroa.4.0.copyload.i156, ptr %i.ov, align 1, !tbaa !20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.av
  %.2.i = phi ptr [ %i.of, %bb.av ], [ %i.pu, %bb.bc ]
  %i.pv = ptrtoint ptr %.2.i to i64
  %i.pw = ptrtoint ptr %0 to i64
  %i.px = sub i64 %i.pv, %i.pw
  br label %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit

_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit: ; preds = %bb.aw, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35, %.preheader, %bb.ak, %bb.bd
  %.1.i = phi i64 [ %i.jg, %bb.ak ], [ %i.px, %bb.bd ], [ -70, %.preheader ], [ -70, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit35 ], [ -70, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %_ZN11duckdb_zstdL24FSE_decompress_wksp_bodyEPvmPKvmjS0_mi.exit

_ZN11duckdb_zstdL24FSE_decompress_wksp_bodyEPvmPKvmjS0_mi.exit: ; preds = %bb.c, %bb.b, %bb.a, %bb.d, %bb.e, %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit12, %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit
  %.3.i = phi i64 [ %.1.i, %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit ], [ -1, %bb.a ], [ -44, %bb.d ], [ %i.af, %bb.e ], [ %.1.i8, %_ZN11duckdb_zstdL34FSE_decompress_usingDTable_genericEPvmPKvmPKjj.exit12 ], [ -44, %bb.c ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.3.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare noundef i64 @_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i64 1, 0) i64 @_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm(ptr noundef nonnull writeonly captures(none) initializes((0, 12), (16, 40)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !34
  %i.e = icmp ugt i64 %2, 7
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !35
  %.val.i = load i64, ptr %i.g, align 1, !tbaa !13
  store i64 %.val.i, ptr %0, align 8, !tbaa !36
  %i.i = getelementptr i8, ptr %i.f, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20    ; 2 uses
  %.not50 = icmp eq i8 %i.j, 0
  br i1 %.not50, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.k = zext i8 %i.j to i32
  %i.l = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.k, i1 true)
  %i.m = xor i32 %i.l, 31
  %i.n = sub nuw nsw i32 8, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !37
  br label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !37
  br label %bb.p

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.q, align 8, !tbaa !35
  %i.r = load i8, ptr %1, align 1, !tbaa !20
  %i.s = zext i8 %i.r to i64                      ; 7 uses
  store i64 %i.s, ptr %0, align 8, !tbaa !36
  switch i64 %2, label %bb.m [
    i64 7, label %bb.g
    i64 6, label %bb.h
    i64 5, label %bb.i
    i64 4, label %bb.j
    i64 3, label %bb.k
    i64 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 48
  %i.x = or disjoint i64 %i.w, %i.s               ; 2 uses
  store i64 %i.x, ptr %0, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i64 [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = add nuw nsw i64 %i.ac, %i.y             ; 2 uses
  store i64 %i.ad, ptr %0, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ %i.s, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 32
  %i.aj = add nuw nsw i64 %i.ai, %i.ae            ; 2 uses
  store i64 %i.aj, ptr %0, align 8, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ak = phi i64 [ %i.aj, %bb.i ], [ %i.s, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 24
  %i.ap = add nuw nsw i64 %i.ao, %i.ak            ; 2 uses
  store i64 %i.ap, ptr %0, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.aq = phi i64 [ %i.ap, %bb.j ], [ %i.s, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !20
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 16
  %i.av = add nuw nsw i64 %i.au, %i.aq            ; 2 uses
  store i64 %i.av, ptr %0, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.aw = phi i64 [ %i.av, %bb.k ], [ %i.s, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = add nuw nsw i64 %i.ba, %i.aw
  store i64 %i.bb, ptr %0, align 8, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l
  %i.bc = getelementptr i8, ptr %1, i64 %2
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !20  ; 2 uses
  %.not = icmp eq i8 %i.be, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bf, align 8, !tbaa !37
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bg = zext i8 %i.be to i32
  %i.bh = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.bg, i1 true)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = trunc nuw nsw i64 %2 to i32
  %i.bk = shl nuw nsw i32 %i.bj, 3
  %i.bl = sub nsw i32 %i.bh, %i.bk
  %i.bm = add nsw i32 %i.bl, 41
  store i32 %i.bm, ptr %i.bi, align 8, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread, %bb.n, %bb.e, %bb.b
  %.2 = phi i64 [ -72, %bb.b ], [ -20, %bb.n ], [ -1, %bb.e ], [ %2, %.thread ], [ %2, %bb.o ]
  ret i64 %.2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN11duckdb_zstdL14FSE_initDStateEPNS_12FSE_DState_tEPNS_13BIT_DStream_tEPKj(ptr noundef nonnull writeonly captures(none) initializes((0, 16)) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = load i16, ptr %2, align 2, !tbaa !43     ; 2 uses
  %i.b = zext i16 %i.a to i32
  %i.c = load i64, ptr %1, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !37
  %i.f = add i32 %i.e, %i.b                       ; 7 uses
  %i.g = sub i32 0, %i.f
  %i.h = and i32 %i.g, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 %i.c, %i.i
  %i.k = zext nneg i16 %i.a to i64
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1
  %i.m = and i64 %i.j, %i.l
  store i32 %i.f, ptr %i.d, align 8, !tbaa !37
  store i64 %i.m, ptr %0, align 8, !tbaa !44
  %i.n = icmp ugt i32 %i.f, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.n, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.o, align 8, !tbaa !35
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %.not.i = icmp ult ptr %i.p, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = lshr i32 %i.f, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 %i.u ; 2 uses
  store ptr %i.v, ptr %i.o, align 8, !tbaa !35
  %i.w = and i32 %i.f, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 3 uses
  %i.z = icmp eq ptr %i.p, %i.y
  br i1 %i.z, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = lshr i32 %i.f, 3                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.p, i64 %i.ac
  %i.ae = icmp ult ptr %i.ad, %i.y
  %i.af = ptrtoint ptr %i.p to i64
  %i.ag = ptrtoint ptr %i.y to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  %.021.i = select i1 %i.ae, i32 %i.ai, i32 %i.aa ; 2 uses
  %i.aj = zext i32 %.021.i to i64
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.p, i64 %i.ak ; 2 uses
  store ptr %i.al, ptr %i.o, align 8, !tbaa !35
  %i.am = shl i32 %.021.i, 3
  %i.an = sub i32 %i.f, %i.am
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.sink.split

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.sink.split: ; preds = %bb.f, %bb.d
  %storemerge = phi i32 [ %i.w, %bb.d ], [ %i.an, %bb.f ]
  %.val.i.i.sink.in = phi ptr [ %i.v, %bb.d ], [ %i.al, %bb.f ]
  store i32 %storemerge, ptr %i.d, align 8, !tbaa !37
  %.val.i.i.sink = load i64, ptr %.val.i.i.sink.in, align 1, !tbaa !13
  store i64 %.val.i.i.sink, ptr %1, align 8, !tbaa !36
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.sink.split, %bb.e, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !46
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!10, !5, i64 2}
!10 = !{!"_ZTSN11duckdb_zstd12FSE_decode_tE", !8, i64 0, !5, i64 2, !5, i64 3}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = distinct !{!15, !12, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !12, !17, !16}
!19 = distinct !{!19, !12}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{!10, !5, i64 3}
!26 = !{!10, !8, i64 0}
!27 = distinct !{!27, !12}
!28 = !{!29, !8, i64 2}
!29 = !{!"_ZTSN11duckdb_zstd16FSE_DTableHeaderE", !8, i64 0, !8, i64 2}
!30 = !{!31, !32, i64 24}
!31 = !{!"_ZTSN11duckdb_zstd13BIT_DStream_tE", !14, i64 0, !4, i64 8, !32, i64 16, !32, i64 24, !32, i64 32}
!32 = !{!"p1 omnipotent char", !33, i64 0}
!33 = !{!"any pointer", !5, i64 0}
!34 = !{!31, !32, i64 32}
!35 = !{!31, !32, i64 16}
!36 = !{!31, !14, i64 0}
!37 = !{!31, !4, i64 8}
!38 = !{!"branch_weights", i32 1, i32 127}
!39 = !{!"branch_weights", i32 127, i32 255873}
!40 = distinct !{!40, !12}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = distinct !{!42, !12}
!43 = !{!29, !8, i64 0}
!44 = !{!45, !14, i64 0}
!45 = !{!"_ZTSN11duckdb_zstd12FSE_DState_tE", !14, i64 0, !33, i64 8}
!46 = !{!45, !33, i64 8}
end_hunk_0
