inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Xzs_ReadBackward:bb.a
  %i.cw = icmp eq i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.x, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !24
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cx = lshr i64 %i.cu, 2
  %i.cy = add i64 %i.cu, 1
  %i.cz = add i64 %i.cy, %i.cx                    ; 2 uses
  %i.da = load ptr, ptr %4, align 8, !tbaa !45
  %i.db = mul i64 %i.cz, 40
  %i.dc = call ptr %i.da(ptr noundef nonnull %4, i64 noundef %i.db) #8 ; 4 uses
  %.not60 = icmp eq ptr %i.dc, null
  br i1 %.not60, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %i.cz, ptr %i.t, align 8, !tbaa !44
  %i.dd = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.de = load i64, ptr %0, align 8, !tbaa !22
  %i.df = mul i64 %i.de, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr align 8 %i.dd, i64 %i.df, i1 false)
  %i.dg = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.dh = load ptr, ptr %i.u, align 8, !tbaa !24
  call void %i.dg(ptr noundef nonnull %4, ptr noundef %i.dh) #8
  store ptr %i.dc, ptr %i.u, align 8, !tbaa !24
  %.pre110 = load i64, ptr %0, align 8, !tbaa !22
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.y
  %i.di = phi i64 [ %i.cu, %._crit_edge ], [ %.pre110, %bb.y ] ; 2 uses
  %i.dj = phi ptr [ %.pre, %._crit_edge ], [ %i.dc, %bb.y ]
  %i.dk = add i64 %i.di, 1
  store i64 %i.dk, ptr %0, align 8, !tbaa !22
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !46
  %i.dm = load i64, ptr %2, align 8, !tbaa !32
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.dp = call i32 %i.do(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #8 ; 2 uses
  %.not61 = icmp eq i32 %i.dp, 0
  br i1 %.not61, label %bb.ab, label %.sink.split

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not62, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = load ptr, ptr %3, align 8, !tbaa !49
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !32
  %i.ds = load i64, ptr %2, align 8, !tbaa !32
  %i.dt = sub nsw i64 %i.dr, %i.ds
  %i.du = call i32 %i.dq(ptr noundef nonnull %3, i64 noundef %i.dt, i64 noundef -1) #8
  %.not63 = icmp eq i32 %i.du, 0
  br i1 %.not63, label %bb.ad, label %.sink.split

.thread73.sink.split:                             ; preds = %bb.c, %bb.m, %bb.t, %bb.p, %bb.o, %bb.ad, %bb.d, %bb.n, %Xz_GetPackSize.exit.i, %bb.s, %.loopexit.i, %bb.b, %Xz_ReadBackward.exit.thread68
  %.6.ph.ph = phi i32 [ %.14.i.ph, %Xz_ReadBackward.exit.thread68 ], [ %.7.ph.i, %.loopexit.i ], [ 17, %bb.b ], [ 16, %bb.s ], [ %i.co, %bb.t ], [ %i.by, %bb.p ], [ %i.bw, %bb.o ], [ 17, %bb.ad ], [ %i.y, %bb.d ], [ 16, %bb.n ], [ 16, %Xz_GetPackSize.exit.i ], [ 4, %bb.m ], [ %i.x, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @Xz_Construct(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.dv = load i64, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.dw = and i64 %i.dv, 3
  %.not.i = icmp ne i64 %i.dw, 0
  %i.dx = icmp slt i64 %i.dv, 12
  %or.cond148.i = or i1 %i.dx, %.not.i
  br i1 %or.cond148.i, label %.thread73.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.z, %bb.x, %bb.ac, %bb.aa, %.thread73.sink.split
  %.7.ph = phi i32 [ %.6.ph.ph, %.thread73.sink.split ], [ %i.dp, %bb.aa ], [ 10, %bb.ac ], [ 2, %bb.x ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.a
  %.7 = phi i32 [ %i.g, %bb.a ], [ %.7.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  ret i32 %.7
}

declare void @Xz_Construct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @LookInStream_Read2(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CrcCalc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Xz_ReadIndex(ptr noundef nonnull %0, ptr noundef %1, i64 noundef range(i64 4, 17179869185) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp samesign ugt i64 %2, 2147483648
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !45
  %i.d = tail call ptr %i.c(ptr noundef nonnull %3, i64 noundef %2) #8 ; 13 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @LookInStream_Read2(ptr noundef %1, ptr noundef nonnull %i.d, i64 noundef %2, i32 noundef 4) #8 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Xz_ReadIndex2.exit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %2, 5
  br i1 %i.h, label %Xz_ReadIndex2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %i.d, align 1, !tbaa !8
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.f, label %Xz_ReadIndex2.exit

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i64 %2, -4                       ; 6 uses
  %i.k = tail call i32 @CrcCalc(ptr noundef nonnull %i.d, i64 noundef %i.j) #8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %.not84.i = icmp eq i32 %i.k, %i.m
  br i1 %.not84.i, label %bb.g, label %Xz_ReadIndex2.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.o = add nsw i64 %2, -5
  %i.p = call i32 @Xz_ReadVarInt(ptr noundef nonnull %i.n, i64 noundef %i.o, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not85.i = icmp eq i32 %i.p, 0
  %i.q = zext i32 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  br i1 %.not85.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.a, align 8, !tbaa !32   ; 6 uses
  %i.t = shl i64 %i.s, 1
  %i.u = icmp ugt i64 %i.t, %i.j
  br i1 %i.u, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @Xz_Free(ptr noundef nonnull %0, ptr noundef nonnull %3) #8
  %.not86.i = icmp eq i64 %i.s, 0
  br i1 %.not86.i, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.v, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.w, align 8, !tbaa !50
  %i.x = load ptr, ptr %3, align 8, !tbaa !45
  %i.y = shl i64 %i.s, 4
  %i.z = call ptr %i.x(ptr noundef nonnull %3, i64 noundef %i.y) #8, !inline_history !51 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !15
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %Xz_ReadIndex2.exit, label %.preheader.i

bb.k:                                             ; preds = %bb.m
  %i.ac = add nuw i64 %.06798.i, 1                ; 2 uses
  %i.ad = zext i32 %i.ap to i64
  %i.ae = add i64 %i.am, %i.ad                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.s
  br i1 %exitcond.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !52

.preheader.i:                                     ; preds = %bb.j, %bb.k
  %.06798.i = phi i64 [ %i.ac, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.17597.i = phi i64 [ %i.ae, %bb.k ], [ %i.r, %bb.j ] ; 3 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.06798.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %.17597.i
  %i.ai = sub i64 %i.j, %.17597.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = call i32 @Xz_ReadVarInt(ptr noundef nonnull %i.ah, i64 noundef %i.ai, ptr noundef nonnull %i.aj) #8 ; 2 uses
  %.not89.i = icmp eq i32 %i.ak, 0
  br i1 %.not89.i, label %Xz_ReadIndex2.exit, label %bb.l

bb.l:                                             ; preds = %.preheader.i
  %i.al = zext i32 %i.ak to i64
  %i.am = add i64 %.17597.i, %i.al                ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.am
  %i.ao = sub i64 %i.j, %i.am
  %i.ap = call i32 @Xz_ReadVarInt(ptr noundef nonnull %i.an, i64 noundef %i.ao, ptr noundef nonnull %i.ag) #8 ; 2 uses
  %.not90.i = icmp eq i32 %i.ap, 0
  br i1 %.not90.i, label %Xz_ReadIndex2.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !21
  %.not93.i = icmp eq i64 %i.aq, 0
  br i1 %.not93.i, label %Xz_ReadIndex2.exit, label %bb.k

.loopexit.i:                                      ; preds = %bb.k, %bb.i
  %.579.i = phi i64 [ %i.r, %bb.i ], [ %i.ae, %bb.k ] ; 7 uses
  %4 = sub i64 0, %.579.i
  %i.ar = and i64 %4, 3
  %5 = add i64 %i.ar, %.579.i
  %i.as = and i64 %.579.i, 3
  %.not87.i36 = icmp eq i64 %i.as, 0
  br i1 %.not87.i36, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.at = add i64 %.579.i, 1                      ; 2 uses
  %i.au = and i64 %i.at, 3
  %.not87.i = icmp eq i64 %i.au, 0
  br i1 %.not87.i, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %.not88.i.1 = icmp eq i8 %i.aw, 0
  br i1 %.not88.i.1, label %bb.o, label %Xz_ReadIndex2.exit, !llvm.loop !53

bb.o:                                             ; preds = %.lr.ph.1
  %i.ax = add i64 %.579.i, 2                      ; 2 uses
  %i.ay = and i64 %i.ax, 3
  %.not87.i.1 = icmp eq i64 %i.ay, 0
  br i1 %.not87.i.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8
  %.not88.i.2 = icmp eq i8 %i.ba, 0
  br i1 %.not88.i.2, label %bb.p, label %Xz_ReadIndex2.exit, !llvm.loop !53

bb.p:                                             ; preds = %.lr.ph.2
  %i.bb = add i64 %.579.i, 3                      ; 2 uses
  %i.bc = and i64 %i.bb, 3
  %.not87.i.2 = icmp eq i64 %i.bc, 0
  br i1 %.not87.i.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bb
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %.not88.i.3 = icmp eq i8 %i.be, 0
  br i1 %.not88.i.3, label %._crit_edge, label %Xz_ReadIndex2.exit, !llvm.loop !53

.lr.ph:                                           ; preds = %.loopexit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 %.579.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %.not88.i = icmp eq i8 %i.bg, 0
  br i1 %.not88.i, label %bb.n, label %Xz_ReadIndex2.exit, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.n, %bb.o, %bb.p, %.lr.ph.3, %.loopexit.i
  %i.bh = icmp eq i64 %5, %i.j
  %i.bi = select i1 %i.bh, i32 0, i32 16
  br label %Xz_ReadIndex2.exit

.critedge.i:                                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %Xz_ReadIndex2.exit

Xz_ReadIndex2.exit:                               ; preds = %bb.m, %bb.l, %.preheader.i, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.critedge.i, %._crit_edge, %bb.j, %bb.f, %bb.e, %bb.d, %bb.c
  %.020 = phi i32 [ %i.f, %bb.c ], [ 16, %.critedge.i ], [ 16, %bb.d ], [ 16, %bb.f ], [ 2, %bb.j ], [ 16, %.lr.ph ], [ %i.bi, %._crit_edge ], [ 16, %bb.e ], [ 16, %.lr.ph.3 ], [ 16, %.lr.ph.2 ], [ 16, %.lr.ph.1 ], [ 16, %.preheader.i ], [ 16, %bb.l ], [ 16, %bb.m ]
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !26
  call void %i.bk(ptr noundef nonnull %3, ptr noundef nonnull %i.d) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.a, %Xz_ReadIndex2.exit
  %.0 = phi i32 [ 4, %bb.a ], [ %.020, %Xz_ReadIndex2.exit ], [ 2, %bb.b ]
  ret i32 %.0
}

declare void @SecToRead_CreateVTable(ptr noundef) local_unnamed_addr #2

declare i32 @Xz_ReadVarInt(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !12, i64 8}
!10 = !{!"", !11, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !14, i64 32}
!11 = !{!"short", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long long", !6, i64 0}
!15 = !{!10, !13, i64 24}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !14, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 8}
!20 = distinct !{!20, !17}
!21 = !{!19, !14, i64 8}
!22 = !{!23, !12, i64 0}
!23 = !{!"", !12, i64 0, !12, i64 8, !13, i64 16}
!24 = !{!23, !13, i64 16}
!25 = distinct !{!25, !17}
!26 = !{!27, !13, i64 8}
!27 = !{!"", !13, i64 0, !13, i64 8}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !17}
!32 = !{!14, !14, i64 0}
!33 = !{!34, !13, i64 24}
!34 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!35 = distinct !{null, null}
!36 = distinct !{!36, !17}
!37 = distinct !{null}
!38 = !{!10, !11, i64 0}
!39 = !{!40, !13, i64 8}
!40 = !{!"", !41, i64 0, !13, i64 8}
!41 = !{!"", !13, i64 0}
!42 = !{!11, !11, i64 0}
!43 = !{!10, !14, i64 32}
!44 = !{!23, !12, i64 8}
!45 = !{!27, !13, i64 0}
!46 = !{i64 0, i64 2, !42, i64 8, i64 8, !47, i64 16, i64 8, !47, i64 24, i64 8, !48, i64 32, i64 8, !32}
!47 = !{!12, !12, i64 0}
!48 = !{!13, !13, i64 0}
!49 = !{!41, !13, i64 0}
!50 = !{!10, !12, i64 16}
!51 = distinct !{null}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
end_hunk_0
