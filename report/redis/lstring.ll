inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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
  %.not41 = icmp eq i64 %2, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = trunc i64 %2 to i32                      ; 4 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.b = shl i32 %i.a, 5
  %i.c = lshr i32 %i.a, 2
  %i.d = add i32 %i.b, %i.c
  %i.e = add nsw i64 %2, -1                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !32
  %i.h = zext i8 %i.g to i32
  %i.i = add i32 %i.d, %i.h
  %i.j = xor i32 %i.i, %i.a                       ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.03243.unr = phi i64 [ %2, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.03442.unr = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03243 = phi i64 [ %i.x, %.lr.ph ], [ %.03243.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.03442 = phi i32 [ %i.ac, %.lr.ph ], [ %.03442.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.l = shl i32 %.03442, 5
  %i.m = lshr i32 %.03442, 2
  %i.n = add i32 %i.l, %i.m
  %i.o = getelementptr i8, ptr %1, i64 %.03243
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !32
  %i.r = zext i8 %i.q to i32
  %i.s = add i32 %i.n, %i.r
  %i.t = xor i32 %i.s, %.03442                    ; 3 uses
  %i.u = shl i32 %i.t, 5
  %i.v = lshr i32 %i.t, 2
  %i.w = add i32 %i.u, %i.v
  %i.x = add i64 %.03243, -2                      ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !32
  %i.aa = zext i8 %i.z to i32
  %i.ab = add i32 %i.w, %i.aa
  %i.ac = xor i32 %i.ab, %i.t                     ; 2 uses
  %.not.1 = icmp eq i64 %i.x, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.034.lcssa = phi i32 [ 0, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = and i32 %i.ai, %.034.lcssa
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %.03344 = load ptr, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  %.not3645 = icmp eq ptr %.03344, null
  br i1 %.not3645, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %._crit_edge, %bb.e
  %.03346 = phi ptr [ %.033, %bb.e ], [ %.03344, %._crit_edge ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03346, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = icmp eq i64 %i.an, %2
  br i1 %i.ao, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph48
  %i.ap = getelementptr inbounds nuw i8, ptr %.03346, i64 24
  %bcmp = tail call i32 @bcmp(ptr %1, ptr nonnull %i.ap, i64 %2)
  %i.aq = icmp eq i32 %bcmp, 0
  br i1 %i.aq, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %.03346, i64 9 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.au = load i8, ptr %i.at, align 8, !tbaa !39
  %i.av = xor i8 %i.au, -1
  %i.aw = and i8 %i.as, 3
  %i.ax = and i8 %i.aw, %i.av
  %.not37 = icmp eq i8 %i.ax, 0
  br i1 %.not37, label %newlstr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = xor i8 %i.as, 3
  store i8 %i.ay, ptr %i.ar, align 1, !tbaa !32
  br label %newlstr.exit

bb.e:                                             ; preds = %.lr.ph48, %bb.b
  %.033 = load ptr, ptr %.03346, align 8, !tbaa !32 ; 2 uses
  %.not36 = icmp eq ptr %.033, null
  br i1 %.not36, label %._crit_edge49, label %.lr.ph48, !llvm.loop !40

._crit_edge49:                                    ; preds = %bb.e, %._crit_edge
  %i.az = add i64 %2, 27
  %i.ba = icmp ult i64 %i.az, 26
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge49
  %i.bb = tail call ptr @luaM_toobig(ptr noundef %0) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge49
  %i.bc = add i64 %2, 25
  %i.bd = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef %i.bc) #5 ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %2, ptr %i.be, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 %.034.lcssa, ptr %i.bf, align 4, !tbaa !32
  %i.bg = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !39
  %i.bj = and i8 %i.bi, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i8 4, ptr %i.bl, align 8, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  store i8 0, ptr %i.bm, align 2, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %2
  store i8 0, ptr %i.bo, align 1, !tbaa !32
  %i.bp = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !30
  %i.bs = add nsw i32 %i.br, -1
  %i.bt = and i32 %i.bs, %.034.lcssa
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.bv = zext i32 %i.bt to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !29
  store ptr %i.bx, ptr %i.bd, align 8, !tbaa !32
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bv
  store ptr %i.bd, ptr %i.bz, align 8, !tbaa !29
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !41
  %i.cc = add i32 %i.cb, 1                        ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !41
  %i.cd = load i32, ptr %i.bq, align 4, !tbaa !30 ; 3 uses
  %i.ce = icmp ugt i32 %i.cc, %i.cd
  %i.cf = icmp slt i32 %i.cd, 1073741823
  %or.cond.i = and i1 %i.ce, %i.cf
  br i1 %or.cond.i, label %bb.h, label %newlstr.exit

bb.h:                                             ; preds = %bb.g
  %i.cg = shl nsw i32 %i.cd, 1
  tail call void @luaS_resize(ptr noundef nonnull %0, i32 noundef %i.cg)
  br label %newlstr.exit

newlstr.exit:                                     ; preds = %bb.d, %bb.c, %bb.h, %bb.g
  %.2 = phi ptr [ %i.bd, %bb.h ], [ %i.bd, %bb.g ], [ %.03346, %bb.c ], [ %.03346, %bb.d ]
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
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
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
end_hunk_0
