begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @lzf_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@lzf_compress:bb.a
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !13
  %.not243 = icmp eq i32 %.0202306, 0
  %.neg244 = sext i1 %.not243 to i64
  %i.az = getelementptr inbounds i8, ptr %.0217303, i64 %.neg244 ; 5 uses
  %i.ba = icmp ugt i64 %i.ap, 16
  br i1 %i.ba, label %bb.h, label %bb.x, !prof !19

end_hunk_1
begin_hunk_2_@lzf_compress:bb.a
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = or disjoint i64 %i.eh, %i.ej
  %i.el = trunc nuw i64 %i.ek to i8
  %4 = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.el, ptr %i.az, align 1, !tbaa !13
  br label %bb.ab

end_hunk_2
begin_hunk_3_@lzf_compress:bb.a
  store i8 %i.ep, ptr %i.az, align 1, !tbaa !13
  %i.er = trunc i32 %.2269 to i8
  %i.es = add i8 %i.er, -9
  %5 = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.et = phi ptr [ %i.ef, %bb.z ], [ %i.em, %bb.aa ]
  %.2270 = phi i32 [ %.2275, %bb.z ], [ %.2269, %bb.aa ]
  %.1218 = phi ptr [ %4, %bb.z ], [ %5, %bb.aa ]  ; 2 uses
  %i.eu = trunc i64 %i.ae to i8
  store i8 %i.eu, ptr %.1218, align 1, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %.1218, i64 2 ; 2 uses
end_hunk_3
begin_hunk_4_@lzf_compress:bb.a

.thread.thread297:                                ; preds = %.thread.thread297.loopexit, %bb.b
  %.4215319.pre-phi = phi i64 [ %.pre, %.thread.thread297.loopexit ], [ %i.a, %bb.b ] ; 2 uses
  %.5222 = phi ptr [ %.5222.ph, %.thread.thread297.loopexit ], [ %i.g, %bb.b ] ; 7 uses
  %.4215 = phi ptr [ %.4215.ph, %.thread.thread297.loopexit ], [ %0, %bb.b ] ; 5 uses
  %.4206 = phi i32 [ %.4206.ph, %.thread.thread297.loopexit ], [ 0, %bb.b ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.5222, i64 3
end_hunk_4
begin_hunk_5_@lzf_compress:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph316.prol.loopexit, label %.lr.ph316.prol

.lr.ph316.prol:                                   ; preds = %.lr.ph316.preheader
  %i.gn = add nsw i32 %.4206, 1                   ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.4215, i64 1 ; 2 uses
  %i.gp = load i8, ptr %.4215, align 1, !tbaa !13
  %6 = getelementptr inbounds nuw i8, ptr %.5222, i64 1 ; 2 uses
  store i8 %i.gp, ptr %.5222, align 1, !tbaa !13
  %i.gq = icmp eq i32 %i.gn, 32
  br i1 %i.gq, label %bb.ag, label %.lr.ph316.prol.loopexit, !prof !22

bb.ag:                                            ; preds = %.lr.ph316.prol
  %i.gr = trunc nuw nsw i32 %.4206 to i8
  %i.gs = getelementptr inbounds i8, ptr %.5222, i64 -32
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !13
  %7 = getelementptr inbounds nuw i8, ptr %.5222, i64 2 ; 2 uses
  br label %.lr.ph316.prol.loopexit

.lr.ph316.prol.loopexit:                          ; preds = %.lr.ph316.prol, %bb.ag, %.lr.ph316.preheader
  %.7.lcssa.unr = phi ptr [ poison, %.lr.ph316.preheader ], [ %7, %bb.ag ], [ %6, %.lr.ph316.prol ]
  %.6.lcssa.unr = phi i32 [ poison, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.gn, %.lr.ph316.prol ]
  %.5315.unr = phi i32 [ %.4206, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.gn, %.lr.ph316.prol ]
  %.5216314.unr = phi ptr [ %.4215, %.lr.ph316.preheader ], [ %i.go, %bb.ag ], [ %i.go, %.lr.ph316.prol ]
  %.6223313.unr = phi ptr [ %.5222, %.lr.ph316.preheader ], [ %7, %bb.ag ], [ %6, %.lr.ph316.prol ]
  %i.gt = icmp eq i64 %i.gl, %.neg343
  br i1 %i.gt, label %._crit_edge, label %.lr.ph316

.lr.ph316:                                        ; preds = %.lr.ph316.prol.loopexit, %bb.aj
  %.5315 = phi i32 [ %.6.1, %bb.aj ], [ %.5315.unr, %.lr.ph316.prol.loopexit ] ; 2 uses
  %.5216314 = phi ptr [ %i.hb, %bb.aj ], [ %.5216314.unr, %.lr.ph316.prol.loopexit ] ; 3 uses
  %.6223313 = phi ptr [ %.7.1, %bb.aj ], [ %.6223313.unr, %.lr.ph316.prol.loopexit ] ; 4 uses
  %i.gu = add nsw i32 %.5315, 1                   ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.5216314, i64 1
  %i.gw = load i8, ptr %.5216314, align 1, !tbaa !13
  %8 = getelementptr inbounds nuw i8, ptr %.6223313, i64 1
  store i8 %i.gw, ptr %.6223313, align 1, !tbaa !13
  %i.gx = icmp eq i32 %i.gu, 32
  br i1 %i.gx, label %bb.ah, label %.lr.ph316.1, !prof !22
end_hunk_5
begin_hunk_6_@lzf_compress:bb.a
  %i.gy = trunc nuw nsw i32 %.5315 to i8
  %i.gz = getelementptr inbounds i8, ptr %.6223313, i64 -32
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !13
  %9 = getelementptr inbounds nuw i8, ptr %.6223313, i64 2
  br label %.lr.ph316.1

.lr.ph316.1:                                      ; preds = %bb.ah, %.lr.ph316
  %.7 = phi ptr [ %9, %bb.ah ], [ %8, %.lr.ph316 ] ; 4 uses
  %.6 = phi i32 [ 0, %bb.ah ], [ %i.gu, %.lr.ph316 ] ; 2 uses
  %i.ha = add nsw i32 %.6, 1                      ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.5216314, i64 2 ; 2 uses
  %i.hc = load i8, ptr %i.gv, align 1, !tbaa !13
  %10 = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.hc, ptr %.7, align 1, !tbaa !13
  %i.hd = icmp eq i32 %i.ha, 32
  br i1 %i.hd, label %bb.ai, label %bb.aj, !prof !22
end_hunk_6
begin_hunk_7_@lzf_compress:bb.a
  %i.he = trunc nuw nsw i32 %.6 to i8
  %i.hf = getelementptr inbounds i8, ptr %.7, i64 -32
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !13
  %11 = getelementptr inbounds nuw i8, ptr %.7, i64 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph316.1
  %.7.1 = phi ptr [ %11, %bb.ai ], [ %10, %.lr.ph316.1 ] ; 2 uses
  %.6.1 = phi i32 [ 0, %bb.ai ], [ %i.ha, %.lr.ph316.1 ] ; 2 uses
  %exitcond.not.1 = icmp eq ptr %i.hb, %scevgep
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph316, !llvm.loop !23

end_hunk_7
begin_hunk_8_@llvm.lifetime.end.p0
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }
end_hunk_8
