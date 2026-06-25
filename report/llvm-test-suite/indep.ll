inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local ptr @sm_maximal_independent_set(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @solution_alloc() #4 ; 4 uses
  %i.b = tail call ptr (...) @sm_alloc() #4       ; 8 uses
  %.0.in72.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.073.i = load ptr, ptr %.0.in72.i, align 8, !tbaa !8 ; 2 uses
  %.not74.i = icmp eq ptr %.073.i, null
  br i1 %.not74.i, label %build_intersection_matrix.exit, label %.lr.ph77.i

.lr.ph77.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

.loopexit.i:                                      ; preds = %._crit_edge67.i, %bb.b
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.075.i, i64 32
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %build_intersection_matrix.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph77.i
  %.075.i = phi ptr [ %.073.i, %.lr.ph77.i ], [ %.0.i, %.loopexit.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.075.i, i64 16
  %.04357.i = load ptr, ptr %i.f, align 8, !tbaa !11 ; 3 uses
  %.not4958.i = icmp eq ptr %.04357.i, null
  br i1 %.not4958.i, label %.loopexit.i, label %.lr.ph61.preheader.i

.lr.ph61.preheader.i:                             ; preds = %bb.b
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !13
  %.pre79.i = load ptr, ptr %i.d, align 8, !tbaa !20
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %._crit_edge.i, %.lr.ph61.preheader.i
  %.04359.i = phi ptr [ %.043.i, %._crit_edge.i ], [ %.04357.i, %.lr.ph61.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.04359.i, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21   ; 3 uses
  %i.i = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp slt i32 %i.h, %.pre.i
  tail call void @llvm.assume(i1 %i.j)
  %i.k = zext nneg i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.pre79.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.04254.i = load ptr, ptr %i.n, align 8, !tbaa !11 ; 2 uses
  %.not5355.i = icmp eq ptr %.04254.i, null
  br i1 %.not5355.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph61.i
  %i.o = load i32, ptr %i.e, align 8, !tbaa !24
  %i.p = load ptr, ptr %0, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.04256.i = phi ptr [ %.04254.i, %.lr.ph.i ], [ %.042.i, %bb.c ] ; 2 uses
  %i.q = load i32, ptr %.04256.i, align 8, !tbaa !26 ; 3 uses
  %i.r = icmp sgt i32 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp slt i32 %i.q, %i.o
  tail call void @llvm.assume(i1 %i.s)
  %i.t = zext nneg i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %.04256.i, i64 8
  %.042.i = load ptr, ptr %i.x, align 8, !tbaa !11 ; 2 uses
  %.not53.i = icmp eq ptr %.042.i, null
  br i1 %.not53.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph61.i
  %i.y = getelementptr inbounds nuw i8, ptr %.04359.i, i64 24
  %.043.i = load ptr, ptr %i.y, align 8, !tbaa !11 ; 2 uses
  %.not49.i = icmp eq ptr %.043.i, null
  br i1 %.not49.i, label %.lr.ph71.i, label %.lr.ph61.i

.lr.ph71.i:                                       ; preds = %._crit_edge.i, %._crit_edge67.i
  %.14470.i = phi ptr [ %.144.i, %._crit_edge67.i ], [ %.04357.i, %._crit_edge.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.14470.i, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !13
  %i.ad = icmp slt i32 %i.aa, %i.ac
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.af = zext nneg i32 %i.aa to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.162.i = load ptr, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %.not5163.i = icmp eq ptr %.162.i, null
  br i1 %.not5163.i, label %._crit_edge67.i, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %.lr.ph71.i, %bb.e
  %.164.i = phi ptr [ %.1.i, %bb.e ], [ %.162.i, %.lr.ph71.i ] ; 2 uses
  %i.aj = load i32, ptr %.164.i, align 8, !tbaa !26 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i32, ptr %i.e, align 8, !tbaa !24
  %i.am = icmp slt i32 %i.aj, %i.al
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load ptr, ptr %0, align 8, !tbaa !25
  %i.ao = zext nneg i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !27
  %.not52.i = icmp eq i32 %i.as, 0
  br i1 %.not52.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph66.i
  store i32 1, ptr %i.ar, align 8, !tbaa !27
  %i.at = load i32, ptr %.075.i, align 8, !tbaa !29
  %i.au = load i32, ptr %i.aq, align 8, !tbaa !29
  %i.av = tail call ptr (ptr, i32, i32, ...) @sm_insert(ptr noundef %i.b, i32 noundef %i.at, i32 noundef %i.au) #4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph66.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.164.i, i64 8
  %.1.i = load ptr, ptr %i.aw, align 8, !tbaa !11 ; 2 uses
  %.not51.i = icmp eq ptr %.1.i, null
  br i1 %.not51.i, label %._crit_edge67.i, label %.lr.ph66.i

._crit_edge67.i:                                  ; preds = %bb.e, %.lr.ph71.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.14470.i, i64 24
  %.144.i = load ptr, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %.not50.i = icmp eq ptr %.144.i, null
  br i1 %.not50.i, label %.loopexit.i, label %.lr.ph71.i

build_intersection_matrix.exit:                   ; preds = %.loopexit.i, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !30
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %build_intersection_matrix.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bc = icmp eq ptr %1, null
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br i1 %i.bc, label %.lr.ph70.split.us, label %.lr.ph70.split

.lr.ph70.split.us:                                ; preds = %.lr.ph70, %._crit_edge69.us
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !31 ; 3 uses
  %.039.in51.us = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %.03952.us = load ptr, ptr %.039.in51.us, align 8, !tbaa !32 ; 2 uses
  %.not53.us = icmp eq ptr %.03952.us, null
  br i1 %.not53.us, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph70.split.us, %.lr.ph.us
  %.03955.us = phi ptr [ %.039.us, %.lr.ph.us ], [ %.03952.us, %.lr.ph70.split.us ] ; 3 uses
  %.054.us.a = phi ptr [ %spec.select.us, %.lr.ph.us ], [ %i.bf, %.lr.ph70.split.us ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.03955.us, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %.054.us.a, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !33
  %i.bi = icmp slt i32 %3, %i.bh
  %spec.select.us = select i1 %i.bi, ptr %.03955.us, ptr %.054.us.a ; 2 uses
  %.039.in.us = getelementptr inbounds nuw i8, ptr %.03955.us, i64 32
  %.039.us = load ptr, ptr %.039.in.us, align 8, !tbaa !32 ; 2 uses
  %.not.us = icmp eq ptr %.039.us, null
  br i1 %.not.us, label %._crit_edge.us, label %.lr.ph.us

._crit_edge.us:                                   ; preds = %.lr.ph.us, %.lr.ph70.split.us
  %.0.lcssa.us = phi ptr [ %i.bf, %.lr.ph70.split.us ], [ %spec.select.us, %.lr.ph.us ] ; 2 uses
  %i.bj = load i32, ptr %i.be, align 8, !tbaa !34
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.be, align 8, !tbaa !34
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.bm = load i32, ptr %.0.lcssa.us, align 8, !tbaa !29
  %i.bn = tail call ptr (ptr, i32, ...) @sm_row_insert(ptr noundef %i.bl, i32 noundef %i.bm) #4 ; 0 uses
  %i.bo = tail call ptr (ptr, ...) @sm_row_dup(ptr noundef nonnull %.0.lcssa.us) #4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.14164.us = load ptr, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  %.not4865.us = icmp eq ptr %.14164.us, null
  br i1 %.not4865.us, label %._crit_edge69.us, label %.lr.ph68.us

.lr.ph68.us:                                      ; preds = %._crit_edge.us, %.lr.ph68.us
  %.14166.us = phi ptr [ %.141.us, %.lr.ph68.us ], [ %.14164.us, %._crit_edge.us ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.14166.us, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !21
  tail call void (ptr, i32, ...) @sm_delrow(ptr noundef %i.b, i32 noundef %i.br) #4
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !21
  tail call void (ptr, i32, ...) @sm_delcol(ptr noundef %i.b, i32 noundef %i.bs) #4
  %i.bt = getelementptr inbounds nuw i8, ptr %.14166.us, i64 24
  %.141.us = load ptr, ptr %i.bt, align 8, !tbaa !11 ; 2 uses
  %.not48.us = icmp eq ptr %.141.us, null
  br i1 %.not48.us, label %._crit_edge69.us, label %.lr.ph68.us

._crit_edge69.us:                                 ; preds = %.lr.ph68.us, %._crit_edge.us
  tail call void (ptr, ...) @sm_row_free(ptr noundef nonnull %i.bo) #4
  %i.bu = load i32, ptr %i.ay, align 8, !tbaa !30
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph70.split.us, label %._crit_edge71

.lr.ph70.split:                                   ; preds = %.lr.ph70, %._crit_edge69
  %i.bw = load ptr, ptr %i.bb, align 8, !tbaa !31 ; 3 uses
  %.039.in51 = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %.03952 = load ptr, ptr %.039.in51, align 8, !tbaa !32 ; 2 uses
  %.not53 = icmp eq ptr %.03952, null
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph70.split, %.lr.ph
  %.03955 = phi ptr [ %.039, %.lr.ph ], [ %.03952, %.lr.ph70.split ] ; 3 uses
  %.054.a = phi ptr [ %spec.select, %.lr.ph ], [ %i.bw, %.lr.ph70.split ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.03955, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %.054.a, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !33
  %i.bz = icmp slt i32 %5, %i.by
  %spec.select = select i1 %i.bz, ptr %.03955, ptr %.054.a ; 2 uses
  %.039.in = getelementptr inbounds nuw i8, ptr %.03955, i64 32
  %.039 = load ptr, ptr %.039.in, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %.039, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph70.split
  %.0.lcssa = phi ptr [ %i.bw, %.lr.ph70.split ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.ca = load i32, ptr %.0.lcssa, align 8, !tbaa !29 ; 4 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i32, ptr %i.bd, align 8, !tbaa !24
  %i.cd = icmp slt i32 %i.ca, %i.cc
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = load ptr, ptr %0, align 8, !tbaa !25
  %i.cf = zext nneg i32 %i.ca to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !37 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !21
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4  ; 2 uses
  %.040.in56 = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %.04057 = load ptr, ptr %.040.in56, align 8, !tbaa !38 ; 2 uses
  %.not4758 = icmp eq ptr %.04057, null
  br i1 %.not4758, label %.loopexit, label %.lr.ph62

.lr.ph62:                                         ; preds = %._crit_edge, %.lr.ph62
  %.04060 = phi ptr [ %.040, %.lr.ph62 ], [ %.04057, %._crit_edge ] ; 2 uses
  %.04259 = phi i32 [ %spec.select50, %.lr.ph62 ], [ %i.co, %._crit_edge ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.04060, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !21
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  %spec.select50 = tail call i32 @llvm.smin.i32(i32 %i.ct, i32 %.04259) ; 2 uses
  %.040.in = getelementptr inbounds nuw i8, ptr %.04060, i64 24
  %.040 = load ptr, ptr %.040.in, align 8, !tbaa !38 ; 2 uses
  %.not47 = icmp eq ptr %.040, null
  br i1 %.not47, label %.loopexit, label %.lr.ph62

.loopexit:                                        ; preds = %.lr.ph62, %._crit_edge
  %.042.lcssa = phi i32 [ %i.co, %._crit_edge ], [ %spec.select50, %.lr.ph62 ]
  %i.cu = load i32, ptr %i.be, align 8, !tbaa !34
  %i.cv = add nsw i32 %i.cu, %.042.lcssa
  store i32 %i.cv, ptr %i.be, align 8, !tbaa !34
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.cx = tail call ptr (ptr, i32, ...) @sm_row_insert(ptr noundef %i.cw, i32 noundef %i.ca) #4 ; 0 uses
  %i.cy = tail call ptr (ptr, ...) @sm_row_dup(ptr noundef nonnull %.0.lcssa) #4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.14164 = load ptr, ptr %i.cz, align 8, !tbaa !11 ; 2 uses
  %.not4865 = icmp eq ptr %.14164, null
  br i1 %.not4865, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %.loopexit, %.lr.ph68
  %.14166 = phi ptr [ %.141, %.lr.ph68 ], [ %.14164, %.loopexit ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.14166, i64 4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !21
  tail call void (ptr, i32, ...) @sm_delrow(ptr noundef %i.b, i32 noundef %i.db) #4
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !21
  tail call void (ptr, i32, ...) @sm_delcol(ptr noundef %i.b, i32 noundef %i.dc) #4
  %i.dd = getelementptr inbounds nuw i8, ptr %.14166, i64 24
  %.141 = load ptr, ptr %i.dd, align 8, !tbaa !11 ; 2 uses
  %.not48 = icmp eq ptr %.141, null
  br i1 %.not48, label %._crit_edge69, label %.lr.ph68

._crit_edge69:                                    ; preds = %.lr.ph68, %.loopexit
  tail call void (ptr, ...) @sm_row_free(ptr noundef nonnull %i.cy) #4
  %i.de = load i32, ptr %i.ay, align 8, !tbaa !30
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph70.split, label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge69, %._crit_edge69.us, %build_intersection_matrix.exit
  tail call void (ptr, ...) @sm_free(ptr noundef nonnull %i.b) #4
  ret ptr %i.a
}

declare ptr @solution_alloc(...) local_unnamed_addr #1

declare ptr @sm_row_insert(...) local_unnamed_addr #1

declare ptr @sm_row_dup(...) local_unnamed_addr #1

declare void @sm_delrow(...) local_unnamed_addr #1

declare void @sm_delcol(...) local_unnamed_addr #1

declare void @sm_row_free(...) local_unnamed_addr #1

declare void @sm_free(...) local_unnamed_addr #1

declare ptr @sm_alloc(...) local_unnamed_addr #1

declare ptr @sm_insert(...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS13sm_row_struct", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS17sm_element_struct", !10, i64 0}
!13 = !{!14, !5, i64 24}
!14 = !{!"sm_matrix_struct", !15, i64 0, !5, i64 8, !17, i64 16, !5, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !18, i64 56, !18, i64 64, !5, i64 72, !19, i64 80}
!15 = !{!"p2 _ZTS13sm_row_struct", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p2 _ZTS13sm_col_struct", !16, i64 0}
!18 = !{!"p1 _ZTS13sm_col_struct", !10, i64 0}
!19 = !{!"p1 omnipotent char", !10, i64 0}
!20 = !{!14, !17, i64 16}
!21 = !{!22, !5, i64 4}
!22 = !{!"sm_element_struct", !5, i64 0, !5, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !19, i64 40}
!23 = !{!18, !18, i64 0}
!24 = !{!14, !5, i64 8}
!25 = !{!14, !15, i64 0}
!26 = !{!22, !5, i64 0}
!27 = !{!28, !5, i64 8}
!28 = !{!"sm_row_struct", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 16, !12, i64 24, !9, i64 32, !9, i64 40, !19, i64 48}
!29 = !{!28, !5, i64 0}
!30 = !{!14, !5, i64 48}
!31 = !{!14, !9, i64 32}
!32 = !{!28, !9, i64 32}
!33 = !{!28, !5, i64 4}
!34 = !{!35, !5, i64 8}
!35 = !{!"solution_struct", !9, i64 0, !5, i64 8}
!36 = !{!35, !9, i64 0}
!37 = !{!28, !12, i64 16}
!38 = !{!22, !12, i64 24}
end_hunk_0
