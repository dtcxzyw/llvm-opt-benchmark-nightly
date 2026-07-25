inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ole2_get_next_block_number:bb.a
ole2_get_next_xbat_block.exit:                    ; preds = %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %._crit_edge.i, %bb.r, %bb.s, %bb.t, %bb.u, %ole2_read_block.exit27.i
  %.0.i = phi i32 [ -1, %bb.g ], [ -1, %bb.s ], [ %i.cu, %ole2_read_block.exit27.i ], [ -1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %._crit_edge.i ], [ -1, %bb.r ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.o ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %bb.l ], [ -1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.af

bb.w:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.cv = lshr i32 %2, 7                          ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !29
  %i.cy = icmp sgt i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #10
  br label %ole2_get_next_bat_block.exit

bb.y:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.da = zext nneg i32 %i.cv to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4  ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %ole2_get_next_bat_block.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 3 uses
  %i.df = load i16, ptr %i.de, align 2, !tbaa !21
  %i.dg = zext i16 %i.df to i32                   ; 2 uses
  %i.dh = shl i32 %i.dc, %i.dg
  %i.di = add nsw i32 %i.dh, 512
  %i.dj = sext i32 %i.di to i64                   ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !8  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dn = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.dj, i32 noundef 0) #10
  %.not.i.i11 = icmp eq i64 %i.dn, %i.dj
  br i1 %.not.i.i11, label %bb.ab, label %ole2_get_next_bat_block.exit

bb.ab:                                            ; preds = %bb.aa
  %i.do = load i16, ptr %i.de, align 2, !tbaa !21
  %i.dp = zext nneg i16 %i.do to i32
  %i.dq = shl nuw i32 1, %i.dp
  %i.dr = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.dq) #10
  %i.ds = load i16, ptr %i.de, align 2, !tbaa !21
  %i.dt = zext nneg i16 %i.ds to i32
  %i.du = shl nuw i32 1, %i.dt
  %.not23.i.i12 = icmp eq i32 %i.dr, %i.du
  br i1 %.not23.i.i12, label %ole2_read_block.exit.i9, label %ole2_get_next_bat_block.exit

bb.ac:                                            ; preds = %bb.z
  %i.dv = shl nuw i32 1, %i.dg
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = add nsw i64 %i.dj, %i.dw                ; 2 uses
  %i.dy = icmp slt i64 %i.dx, 1
  br i1 %i.dy, label %ole2_get_next_bat_block.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !18
  %i.eb = icmp sgt i64 %i.dx, %i.ea
  br i1 %i.eb, label %ole2_get_next_bat_block.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds i8, ptr %i.dl, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.ec, i64 %i.dw, i1 false)
  br label %ole2_read_block.exit.i9

ole2_read_block.exit.i9:                          ; preds = %bb.ae, %bb.ab
  %i.ed = and i32 %2, 127
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  br label %ole2_get_next_bat_block.exit

ole2_get_next_bat_block.exit:                     ; preds = %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %ole2_read_block.exit.i9
  %.0.i10 = phi i32 [ %i.eg, %ole2_read_block.exit.i9 ], [ -10, %bb.x ], [ -1, %bb.ab ], [ -1, %bb.y ], [ -1, %bb.aa ], [ -1, %bb.ad ], [ -1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %ole2_get_next_bat_block.exit, %ole2_get_next_xbat_block.exit
  %.0 = phi i32 [ %.0.i10, %ole2_get_next_bat_block.exit ], [ %.0.i, %ole2_get_next_xbat_block.exit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_ole2_property(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i16, ptr %i.a, align 1, !tbaa !46   ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = icmp ugt i16 %i.b, 64
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34, i32 noundef %i.c) #10
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @get_property_name(ptr noundef nonnull readonly %0, i32 noundef range(i32 0, 65) %i.c) ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %print_property_name.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.e) #10
  tail call void @free(ptr noundef nonnull %i.e) #10
  br label %print_property_name.exit

print_property_name.exit:                         ; preds = %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.g = load i8, ptr %i.f, align 1, !tbaa !40    ; 2 uses
  switch i8 %i.g, label %bb.h [
    i8 2, label %bb.e
    i8 1, label %bb.f
    i8 5, label %bb.g
  ]

bb.e:                                             ; preds = %print_property_name.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35) #10
  br label %bb.i

bb.f:                                             ; preds = %print_property_name.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.36) #10
  br label %bb.i

bb.g:                                             ; preds = %print_property_name.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.37) #10
  br label %bb.i

bb.h:                                             ; preds = %print_property_name.exit
  %i.h = zext i8 %i.g to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38, i32 noundef %i.h) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.j = load i8, ptr %i.i, align 1, !tbaa !52    ; 2 uses
  %switch.selectcmp = icmp eq i8 %i.j, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.40, ptr @.str.41
  %switch.selectcmp9 = icmp eq i8 %i.j, 0
  %switch.select10 = select i1 %switch.selectcmp9, ptr @.str.39, ptr %switch.select
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %switch.select10) #10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i32, ptr %i.k, align 1, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load i32, ptr %i.m, align 1, !tbaa !53
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.42, i32 noundef %i.l, i32 noundef %i.n) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

declare i32 @cli_bitset_test(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @cli_bitset_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_property_name(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 65) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !25
  %i.b = icmp eq i8 %i.a, 0
  %i.c = icmp eq i32 %1, 0
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw nsw i32 %1, 7
  %i.e = zext nneg i32 %i.d to i64
  %i.f = tail call ptr @cli_malloc(i64 noundef %i.e) #10 ; 8 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = icmp samesign ugt i32 %1, 2
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.h = add nsw i32 %1, -2
  %2 = zext nneg i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.05866 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2, %bb.f ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25    ; 5 uses
  %.not62 = icmp sgt i8 %i.j, -1
  br i1 %.not62, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.k = tail call ptr @__ctype_b_loc() #12
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = zext nneg i8 %i.j to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !56
  %i.p = and i16 %i.o, 16384
  %.not63 = icmp eq i16 %i.p, 0
  br i1 %.not63, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ult i8 %i.j, 10
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = sext i32 %.05866 to i64
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.r ; 2 uses
  store i8 95, ptr %i.s, align 1, !tbaa !25
  %i.t = load i8, ptr %i.i, align 1, !tbaa !25
  %i.u = add i8 %i.t, 48
  %i.v = add nsw i32 %.05866, 2
  %i.w = getelementptr i8, ptr %i.s, i64 1
  store i8 %i.u, ptr %i.w, align 1, !tbaa !25
  br label %bb.f

.thread:                                          ; preds = %.lr.ph, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !25    ; 3 uses
  %i.z = sext i32 %.05866 to i64
  %i.aa = getelementptr inbounds i8, ptr %i.f, i64 %i.z ; 6 uses
  store i8 95, ptr %i.aa, align 1, !tbaa !25
  %i.ab = and i8 %i.y, 15
  %i.ac = add nuw nsw i8 %i.ab, 97
  %i.ad = getelementptr i8, ptr %i.aa, i64 1
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !25
  %i.ae = lshr i8 %i.y, 4
  %i.af = add nuw nsw i8 %i.ae, 97
  %i.ag = getelementptr i8, ptr %i.aa, i64 2
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !25
  %i.ah = ashr i8 %i.y, 7
  %i.ai = or i8 %i.ah, %i.j
  %i.aj = and i8 %i.ai, 15
  %i.ak = add nuw nsw i8 %i.aj, 97
  %i.al = getelementptr i8, ptr %i.aa, i64 3
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !25
  %i.am = getelementptr i8, ptr %i.aa, i64 4
  store i8 97, ptr %i.am, align 1, !tbaa !25
  %i.an = add nsw i32 %.05866, 6
  %i.ao = getelementptr i8, ptr %i.aa, i64 5
  store i8 97, ptr %i.ao, align 1, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread, %bb.c
  %.05866.sink = phi i32 [ %.05866, %bb.c ], [ %i.v, %bb.e ], [ %i.an, %.thread ] ; 2 uses
  %.sink = phi i8 [ %i.j, %bb.c ], [ 95, %bb.e ], [ 95, %.thread ]
  %i.ap = sext i32 %.05866.sink to i64
  %i.aq = getelementptr inbounds i8, ptr %i.f, i64 %i.ap
  store i8 %.sink, ptr %i.aq, align 1, !tbaa !25
  %.2 = add nsw i32 %.05866.sink, 1               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %3 = icmp samesign ult i64 %indvars.iv.next, %2
  br i1 %3, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !57

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.ar = sext i32 %.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.058.lcssa = phi i64 [ 0, %.preheader ], [ %i.ar, %._crit_edge.loopexit ]
  %i.as = getelementptr inbounds i8, ptr %i.f, i64 %.058.lcssa
  store i8 0, ptr %i.as, align 1, !tbaa !25
  %char0 = load i8, ptr %i.f, align 1
  %i.at = icmp eq i8 %char0, 0
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.f) #10
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.b, %bb.a, %bb.g
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.g ], [ null, %bb.b ], [ %i.f, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

declare void @sanitiseName(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @cli_writen(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }

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
!8 = !{!9, !11, i64 520}
!9 = !{!"ole2_header_tag", !6, i64 0, !6, i64 8, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !5, i64 32, !6, i64 36, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !6, i64 76, !5, i64 512, !11, i64 520, !13, i64 528, !14, i64 536, !5, i64 544}
!10 = !{!"short", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS10bitset_tag", !12, i64 0}
!15 = !{!16, !13, i64 48}
!16 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !17, i64 72, !17, i64 88, !17, i64 104, !6, i64 120}
!17 = !{!"timespec", !13, i64 0, !13, i64 8}
!18 = !{!9, !13, i64 528}
!19 = !{!9, !5, i64 512}
!20 = !{!9, !14, i64 536}
!21 = !{!9, !10, i64 30}
!22 = !{!9, !5, i64 32}
!23 = !{!9, !5, i64 56}
!24 = !{!9, !5, i64 544}
!25 = !{!6, !6, i64 0}
!26 = !{!9, !10, i64 24}
!27 = !{!9, !10, i64 26}
!28 = !{!9, !10, i64 28}
!29 = !{!9, !5, i64 44}
!30 = !{!9, !5, i64 48}
!31 = !{!9, !5, i64 60}
!32 = !{!9, !5, i64 64}
!33 = !{!9, !5, i64 68}
!34 = !{!9, !5, i64 72}
!35 = !{!36, !5, i64 4}
!36 = !{!"cl_limits", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !10, i64 16, !13, i64 24}
!37 = !{!36, !5, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !6, i64 66}
!41 = !{!"property_tag", !6, i64 0, !10, i64 64, !6, i64 66, !6, i64 67, !5, i64 68, !5, i64 72, !5, i64 76, !6, i64 80, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !6, i64 124}
!42 = !{!41, !5, i64 116}
!43 = !{!41, !5, i64 68}
!44 = !{!41, !5, i64 72}
!45 = !{!41, !5, i64 76}
!46 = !{!41, !10, i64 64}
!47 = !{!41, !5, i64 120}
!48 = distinct !{!48, !39}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = !{!41, !6, i64 67}
!53 = !{!41, !5, i64 96}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 short", !12, i64 0}
!56 = !{!10, !10, i64 0}
!57 = distinct !{!57, !39}
end_hunk_0
