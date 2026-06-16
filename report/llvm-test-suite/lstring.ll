inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @luaS_resize(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, -2
  br i1 %i.f, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.g = tail call ptr @luaM_toobig(ptr noundef nonnull %0) #5
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %1 to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call ptr @luaM_realloc_(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i64 noundef %i.j) #5 ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = zext nneg i32 %1 to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.o, i1 false), !tbaa !29
  br label %.preheader

.preheader:                                       ; preds = %.thread, %.lr.ph.preheader, %bb.c
  %i.p = phi ptr [ %i.h, %.thread ], [ %i.l, %.lr.ph.preheader ], [ %i.l, %bb.c ] ; 4 uses
  %i.q = phi ptr [ %i.g, %.thread ], [ %i.k, %.lr.ph.preheader ], [ %i.k, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph43, label %.preheader.._crit_edge44_crit_edge

.preheader.._crit_edge44_crit_edge:               ; preds = %.preheader
  %.pre48 = sext i32 %i.s to i64
  br label %._crit_edge44

.lr.ph43:                                         ; preds = %.preheader
  %i.u = add nsw i32 %1, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph43, %._crit_edge
  %i.v = phi i32 [ %i.s, %.lr.ph43 ], [ %i.ag, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %.not39 = icmp eq ptr %i.y, null
  br i1 %.not39, label %._crit_edge, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.d, %.lr.ph41
  %.03440 = phi ptr [ %i.z, %.lr.ph41 ], [ %i.y, %bb.d ] ; 4 uses
  %i.z = load ptr, ptr %.03440, align 8, !tbaa !32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.03440, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = and i32 %i.ab, %i.u
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29
  store ptr %i.af, ptr %.03440, align 8, !tbaa !32
  store ptr %.03440, ptr %i.ae, align 8, !tbaa !29
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph41, !llvm.loop !33

._crit_edge.loopexit:                             ; preds = %.lr.ph41
  %.pre = load i32, ptr %i.r, align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.ag = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.v, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.d, label %._crit_edge44, !llvm.loop !35

._crit_edge44:                                    ; preds = %._crit_edge, %.preheader.._crit_edge44_crit_edge
  %.pre-phi = phi i64 [ %.pre48, %.preheader.._crit_edge44_crit_edge ], [ %i.ah, %._crit_edge ]
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.ak = shl nsw i64 %.pre-phi, 3
  %i.al = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef %i.aj, i64 noundef %i.ak, i64 noundef 0) #5 ; 0 uses
  store i32 %1, ptr %i.r, align 4, !tbaa !30
  store ptr %i.q, ptr %i.p, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge44
  ret void
}

declare hidden ptr @luaM_realloc_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare hidden ptr @luaM_toobig(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @luaS_newlstr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = trunc i64 %2 to i32                        ; 2 uses
  %i.a = lshr i64 %2, 5
  %4 = add nuw nsw i64 %i.a, 1                    ; 3 uses
  %.not43 = icmp ult i64 %2, %4
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03344 = phi i64 [ %5, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.03543 = phi i32 [ %i.j, %.lr.ph ], [ %3, %bb.a ] ; 3 uses
  %i.b = shl i32 %.03543, 5
  %i.c = lshr i32 %.03543, 2
  %i.d = add i32 %i.b, %i.c
  %i.e = getelementptr i8, ptr %1, i64 %.03344
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !32
  %i.h = zext i8 %i.g to i32
  %i.i = add i32 %i.d, %i.h
  %i.j = xor i32 %i.i, %.03543                    ; 2 uses
  %5 = sub nuw i64 %.03344, %4                    ; 2 uses
  %.not = icmp ult i64 %5, %4
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.035.lcssa = phi i32 [ %3, %bb.a ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !38
  %i.p = add nsw i32 %i.o, -1
  %i.q = and i32 %i.p, %.035.lcssa
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.r
  %.03445 = load ptr, ptr %i.s, align 8, !tbaa !32 ; 2 uses
  %.not46 = icmp eq ptr %.03445, null
  br i1 %.not46, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %._crit_edge, %bb.e
  %.03447 = phi ptr [ %.034, %bb.e ], [ %.03445, %._crit_edge ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.03447, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32
  %i.v = icmp eq i64 %i.u, %2
  br i1 %i.v, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph49
  %i.w = getelementptr inbounds nuw i8, ptr %.03447, i64 24
  %bcmp = tail call i32 @bcmp(ptr %1, ptr nonnull %i.w, i64 %2)
  %i.x = icmp eq i32 %bcmp, 0
  br i1 %i.x, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.03447, i64 9 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !32    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !39
  %i.ac = xor i8 %i.ab, -1
  %i.ad = and i8 %i.z, 3
  %i.ae = and i8 %i.ad, %i.ac
  %.not38.a = icmp eq i8 %i.ae, 0
  br i1 %.not38.a, label %newlstr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = xor i8 %i.z, 3
  store i8 %i.af, ptr %i.y, align 1, !tbaa !32
  br label %newlstr.exit

bb.e:                                             ; preds = %.lr.ph49, %bb.b
  %.034 = load ptr, ptr %.03447, align 8, !tbaa !32 ; 2 uses
  %.not.a = icmp eq ptr %.034, null
  br i1 %.not.a, label %._crit_edge50, label %.lr.ph49, !llvm.loop !40

._crit_edge50:                                    ; preds = %bb.e, %._crit_edge
  %i.ag = add i64 %2, 27
  %i.ah = icmp ult i64 %i.ag, 26
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge50
  %i.ai = tail call ptr @luaM_toobig(ptr noundef %0) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge50
  %i.aj = add i64 %2, 25
  %i.ak = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef %i.aj) #5 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %2, ptr %i.al, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 %.035.lcssa, ptr %i.am, align 4, !tbaa !32
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !39
  %i.aq = and i8 %i.ap, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i8 4, ptr %i.as, align 8, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  store i8 0, ptr %i.at, align 2, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %2
  store i8 0, ptr %i.av, align 1, !tbaa !32
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !8   ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !30
  %i.az = add nsw i32 %i.ay, -1
  %i.ba = and i32 %i.az, %.035.lcssa
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.bc = zext i32 %i.ba to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !29
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !32
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bc
  store ptr %i.ak, ptr %i.bg, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !41
  %i.bj = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !41
  %i.bk = load i32, ptr %i.ax, align 4, !tbaa !30 ; 3 uses
  %i.bl = icmp ugt i32 %i.bj, %i.bk
  %i.bm = icmp slt i32 %i.bk, 1073741823
  %or.cond.i = and i1 %i.bl, %i.bm
  br i1 %or.cond.i, label %bb.h, label %newlstr.exit

bb.h:                                             ; preds = %bb.g
  %i.bn = shl nsw i32 %i.bk, 1
  tail call void @luaS_resize(ptr noundef nonnull %0, i32 noundef %i.bn)
  br label %newlstr.exit

newlstr.exit:                                     ; preds = %bb.d, %bb.c, %bb.h, %bb.g
  %.2 = phi ptr [ %i.ak, %bb.h ], [ %i.ak, %bb.g ], [ %.03447, %bb.c ], [ %.03447, %bb.d ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @luaS_newudata(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, -43
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @luaM_toobig(ptr noundef %0) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = add i64 %1, 40
  %i.d = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef %i.c) #5 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !39
  %i.i = and i8 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 %i.i, ptr %i.j, align 1, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 7, ptr %i.k, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %1, ptr %i.l, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.m, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %2, ptr %i.n, align 8, !tbaa !32
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  store ptr %i.r, ptr %i.d, align 8, !tbaa !32
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  store ptr %i.d, ptr %i.u, align 8, !tbaa !43
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!8 = !{!9, !13, i64 32}
!9 = !{!"lua_State", !10, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !12, i64 16, !12, i64 24, !13, i64 32, !14, i64 40, !15, i64 48, !12, i64 56, !12, i64 64, !14, i64 72, !14, i64 80, !5, i64 88, !5, i64 92, !16, i64 96, !16, i64 98, !6, i64 100, !6, i64 101, !5, i64 104, !5, i64 108, !11, i64 112, !17, i64 120, !17, i64 136, !10, i64 152, !10, i64 160, !18, i64 168, !19, i64 176}
!10 = !{!"p1 _ZTS8GCObject", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS10lua_TValue", !11, i64 0}
!13 = !{!"p1 _ZTS12global_State", !11, i64 0}
!14 = !{!"p1 _ZTS8CallInfo", !11, i64 0}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!"short", !6, i64 0}
!17 = !{!"lua_TValue", !6, i64 0, !5, i64 8}
!18 = !{!"p1 _ZTS11lua_longjmp", !11, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!21, !6, i64 33}
!21 = !{!"global_State", !22, i64 0, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 33, !5, i64 36, !10, i64 40, !23, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !25, i64 88, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !5, i64 144, !5, i64 148, !11, i64 152, !17, i64 160, !27, i64 176, !28, i64 184, !6, i64 224, !6, i64 296}
!22 = !{!"stringtable", !23, i64 0, !5, i64 8, !5, i64 12}
!23 = !{!"p2 _ZTS8GCObject", !24, i64 0}
!24 = !{!"any p2 pointer", !11, i64 0}
!25 = !{!"Mbuffer", !26, i64 0, !19, i64 8, !19, i64 16}
!26 = !{!"p1 omnipotent char", !11, i64 0}
!27 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!28 = !{!"UpVal", !10, i64 0, !6, i64 8, !6, i64 9, !12, i64 16, !6, i64 24}
!29 = !{!10, !10, i64 0}
end_hunk_0
