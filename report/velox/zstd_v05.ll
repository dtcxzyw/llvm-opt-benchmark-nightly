inline.NumInlined: 338
inline.NumDeleted: 52
begin_hunk_0_@ZBUFFv05_decompressContinue:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %.2173, i64 %i.bm ; 2 uses
  %.not212 = icmp eq i64 %i.bv, 0
  br i1 %.not212, label %.thread260.outer.backedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load i64, ptr %i.q, align 8, !tbaa !132
  %i.bz = add i64 %i.by, %i.bv
  store i64 %i.bz, ptr %i.r, align 8, !tbaa !131
  store i32 6, ptr %i.e, align 8, !tbaa !127
  br label %.thread260.outer.backedge

bb.t:                                             ; preds = %bb.p
  %i.ca = icmp eq ptr %.2173, %i.b
  br i1 %i.ca, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 5, ptr %i.e, align 8, !tbaa !127
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge316, %bb.u
  %i.cb = phi i64 [ %i.bm, %bb.u ], [ %.pre318, %._crit_edge316 ] ; 2 uses
  %.5176 = phi ptr [ %.2173, %bb.u ], [ %.0171314.ph, %._crit_edge316 ] ; 3 uses
  %i.cc = load i64, ptr %i.o, align 8, !tbaa !130 ; 4 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = load i64, ptr %i.k, align 8, !tbaa !136
  %i.cf = sub i64 %i.ce, %i.cc
  %i.cg = icmp ugt i64 %i.cd, %i.cf
  br i1 %i.cg, label %.thread238, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = ptrtoint ptr %.5176 to i64
  %i.ci = sub i64 %i.p, %i.ch                     ; 2 uses
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.ci) ; 4 uses
  %.not.i225 = icmp eq i64 %i.cj, 0
  br i1 %.not.i225, label %ZBUFFv05_limitCopy.exit226, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr readonly align 1 %.5176, i64 %i.cj, i1 false)
  %.pre319 = load i64, ptr %i.o, align 8, !tbaa !130
  br label %ZBUFFv05_limitCopy.exit226

ZBUFFv05_limitCopy.exit226:                       ; preds = %bb.w, %bb.x
  %i.cm = phi i64 [ %i.cc, %bb.w ], [ %.pre319, %bb.x ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.5176, i64 %i.cj ; 3 uses
  %i.co = add i64 %i.cm, %i.cj
  store i64 %i.co, ptr %i.o, align 8, !tbaa !130
  %i.cp = icmp ult i64 %i.ci, %i.cd
  br i1 %i.cp, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %ZBUFFv05_limitCopy.exit226
  %i.cq = load ptr, ptr %0, align 8, !tbaa !124
  %i.cr = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.cs = load i64, ptr %i.q, align 8, !tbaa !132 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.cu = load i64, ptr %i.m, align 8, !tbaa !137
  %i.cv = sub i64 %i.cu, %i.cs
  %i.cw = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.cx = tail call i64 @ZSTDv05_decompressContinue(ptr noundef %i.cq, ptr noundef %i.ct, i64 noundef %i.cv, ptr noundef %i.cw, i64 noundef %i.cb) ; 4 uses
  %i.cy = icmp ult i64 %i.cx, -119
  br i1 %i.cy, label %bb.z, label %.thread238

bb.z:                                             ; preds = %bb.y
  store i64 0, ptr %i.o, align 8, !tbaa !130
  %.not214 = icmp eq i64 %i.cx, 0
  br i1 %.not214, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 4, ptr %i.e, align 8, !tbaa !127
  br label %.thread260.outer.backedge

bb.ab:                                            ; preds = %bb.z
  %i.cz = load i64, ptr %i.q, align 8, !tbaa !132 ; 2 uses
  %i.da = add i64 %i.cz, %i.cx                    ; 2 uses
  store i64 %i.da, ptr %i.r, align 8, !tbaa !131
  store i32 6, ptr %i.e, align 8, !tbaa !127
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge320, %bb.ab
  %i.db = phi i64 [ %i.cz, %bb.ab ], [ %.pre322, %._crit_edge320 ] ; 3 uses
  %i.dc = phi i64 [ %i.da, %bb.ab ], [ %.pre321, %._crit_edge320 ]
  %.7178 = phi ptr [ %i.cn, %bb.ab ], [ %.0171314.ph, %._crit_edge320 ] ; 2 uses
  %i.dd = sub i64 %i.dc, %i.db                    ; 2 uses
  %i.de = ptrtoint ptr %.0180313.ph.ph to i64
  %i.df = sub i64 %i.s, %i.de                     ; 2 uses
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dd) ; 4 uses
  %.not.i227 = icmp eq i64 %i.dg, 0
  br i1 %.not.i227, label %ZBUFFv05_limitCopy.exit228, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0180313.ph.ph, ptr readonly align 1 %i.di, i64 %i.dg, i1 false)
  %.pre323 = load i64, ptr %i.q, align 8, !tbaa !132
  br label %ZBUFFv05_limitCopy.exit228

ZBUFFv05_limitCopy.exit228:                       ; preds = %bb.ac, %bb.ad
  %i.dj = phi i64 [ %i.db, %bb.ac ], [ %.pre323, %bb.ad ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0180313.ph.ph, i64 %i.dg ; 2 uses
  %i.dl = add i64 %i.dj, %i.dg                    ; 2 uses
  store i64 %i.dl, ptr %i.q, align 8, !tbaa !132
  %.not282 = icmp ugt i64 %i.dd, %i.df
  br i1 %.not282, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %ZBUFFv05_limitCopy.exit228
  store i32 4, ptr %i.e, align 8, !tbaa !127
  %i.dm = add i64 %i.dl, 131072
  %i.dn = load i64, ptr %i.m, align 8, !tbaa !137
  %i.do = icmp ugt i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.af, label %.thread260.outer.outer.backedge

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %.thread260.outer.outer.backedge

.thread260.outer.outer.backedge:                  ; preds = %bb.af, %bb.ae
  br label %.thread260.outer.outer, !llvm.loop !135

.loopexit:                                        ; preds = %bb.t, %ZBUFFv05_limitCopy.exit226, %ZBUFFv05_limitCopy.exit228, %bb.o
  %.1181.ph = phi ptr [ %.0180313.ph.ph, %bb.o ], [ %.0180313.ph.ph, %ZBUFFv05_limitCopy.exit226 ], [ %.0180313.ph.ph, %bb.t ], [ %i.dk, %ZBUFFv05_limitCopy.exit228 ]
  %.8179.ph = phi ptr [ %.2173, %bb.o ], [ %i.b, %bb.t ], [ %i.cn, %ZBUFFv05_limitCopy.exit226 ], [ %.7178, %ZBUFFv05_limitCopy.exit228 ]
  %i.dp = ptrtoint ptr %.8179.ph to i64
  %i.dq = ptrtoint ptr %3 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  store i64 %i.dr, ptr %4, align 8, !tbaa !28
  %i.ds = ptrtoint ptr %.1181.ph to i64
  %i.dt = ptrtoint ptr %1 to i64
  %i.du = sub i64 %i.ds, %i.dt
  store i64 %i.du, ptr %2, align 8, !tbaa !28
  %i.dv = load ptr, ptr %0, align 8, !tbaa !124
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 26672
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !95 ; 3 uses
  %i.dy = icmp ugt i64 %i.dx, 3
  %i.dz = add i64 %i.dx, 3
  %spec.select = select i1 %i.dy, i64 %i.dz, i64 %i.dx
  %i.ea = load i64, ptr %i.o, align 8, !tbaa !130
  %i.eb = sub i64 %spec.select, %i.ea
  br label %.thread238

.thread238.loopexit:                              ; preds = %.thread260
  br label %.thread238

.thread238:                                       ; preds = %bb.c, %ZSTDv05_getFrameParams.exit, %bb.g, %bb.i, %bb.k, %bb.q, %bb.v, %bb.y, %ZSTDv05_getFrameParams.exit224, %.thread260, %.thread238.loopexit, %.thread247, %.thread, %.loopexit
  %.13 = phi i64 [ -1, %.thread260 ], [ %i.eb, %.loopexit ], [ %i.at, %.thread247 ], [ %i.ag, %.thread ], [ -10, %bb.c ], [ -14, %ZSTDv05_getFrameParams.exit ], [ %i.cx, %bb.y ], [ -10, %bb.g ], [ -64, %bb.i ], [ -20, %bb.v ], [ -14, %ZSTDv05_getFrameParams.exit224 ], [ %i.bv, %bb.q ], [ -64, %bb.k ], [ -62, %.thread238.loopexit ]
  ret i64 %.13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ZBUFFv05_isError(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @ZBUFFv05_getErrorName(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i64 %0, -119
  %i.b = trunc nsw i64 %0 to i32
  %i.c = sub i32 0, %i.b
  %.0.i.i = select i1 %i.a, i32 0, i32 %i.c
  %i.d = tail call ptr @ERR_getErrorString(i32 noundef %.0.i.i) #27
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZBUFFv05_recommendedDInSize() local_unnamed_addr #7 {
bb.a:
  ret i64 131075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZBUFFv05_recommendedDOutSize() local_unnamed_addr #7 {
bb.a:
  ret i64 131072
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #21

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

attributes #0 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!10, !5, i64 2}
!10 = !{!"", !8, i64 0, !5, i64 2, !5, i64 3}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = !{!10, !5, i64 3}
!17 = !{!10, !8, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = !{!24, !8, i64 0}
!24 = !{!"", !8, i64 0, !8, i64 2}
!25 = !{!24, !8, i64 2}
!26 = distinct !{!26, !12}
!27 = !{!5, !5, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"long", !5, i64 0}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"branch_weights", i32 4, i32 12}
!36 = distinct !{!36, !12, !33, !34}
!37 = distinct !{!37, !12, !34, !33}
!38 = distinct !{!38, !12}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !12, !33, !34}
!45 = distinct !{!45, !12, !33, !34}
!46 = distinct !{!46, !12, !33}
!47 = distinct !{!47, !12}
!48 = !{!49, !50, i64 24}
!49 = !{!"", !29, i64 0, !4, i64 8, !50, i64 16, !50, i64 24}
!50 = !{!"p1 omnipotent char", !51, i64 0}
!51 = !{!"any pointer", !5, i64 0}
!52 = !{!49, !50, i64 16}
!53 = !{!49, !29, i64 0}
!54 = !{!49, !4, i64 8}
!55 = !{!56, !5, i64 0}
!56 = !{!"", !5, i64 0, !5, i64 1}
!57 = !{!56, !5, i64 1}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12, !33, !34}
!62 = distinct !{!62, !12, !33, !34}
!63 = distinct !{!63, !12, !34, !33}
!64 = distinct !{!64, !12}
!65 = !{!50, !50, i64 0}
!66 = distinct !{!66, !12, !33, !34}
!67 = distinct !{!67, !12, !33, !34}
!68 = distinct !{!68, !12, !34, !33}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12, !33, !34}
!76 = distinct !{!76, !72}
!77 = distinct !{!77, !12, !33}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12, !33, !34}
!80 = distinct !{!80, !12, !34, !33}
!81 = distinct !{!81, !12, !33, !34}
!82 = distinct !{!82, !12, !33}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12, !33, !34}
!85 = distinct !{!85, !12, !34, !33}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = !{!92, !4, i64 0}
!92 = !{!"", !4, i64 0, !4, i64 4}
!93 = !{!92, !4, i64 4}
!94 = !{!51, !51, i64 0}
!95 = !{!96, !29, i64 26672}
!96 = !{!"ZSTDv05_DCtx_s", !5, i64 0, !5, i64 4100, !5, i64 6152, !5, i64 10252, !51, i64 26640, !51, i64 26648, !51, i64 26656, !51, i64 26664, !29, i64 26672, !29, i64 26680, !97, i64 26688, !4, i64 26728, !4, i64 26732, !4, i64 26736, !50, i64 26744, !29, i64 26752, !5, i64 26760, !5, i64 157840}
!97 = !{!"", !29, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32}
!98 = !{!96, !4, i64 26732}
!99 = !{!96, !4, i64 26736}
!100 = !{!97, !4, i64 8}
!101 = !{!96, !51, i64 26640}
!102 = !{!96, !51, i64 26664}
!103 = !{!96, !51, i64 26648}
!104 = !{!96, !51, i64 26656}
!105 = !{!96, !50, i64 26744}
!106 = !{!96, !29, i64 26752}
!107 = distinct !{!107, !12, !33, !34}
!108 = distinct !{!108, !12, !33}
!109 = distinct !{!109, !12, !33, !34}
!110 = !{!"branch_weights", i32 4, i32 28}
!111 = distinct !{!111, !12, !33, !34}
!112 = distinct !{!112, !12, !33}
!113 = distinct !{!113, !12, !33, !34}
!114 = distinct !{!114, !12, !33}
!115 = distinct !{!115, !12, !33, !34}
!116 = distinct !{!116, !12, !33, !34}
!117 = distinct !{!117, !12, !33}
!118 = distinct !{!118, !12, !33, !34}
!119 = distinct !{!119, !12, !33}
!120 = !{!96, !29, i64 26680}
!121 = !{!122, !122, i64 0}
!122 = !{!"long long", !5, i64 0}
!123 = !{!96, !4, i64 26728}
!124 = !{!125, !126, i64 0}
!125 = !{!"ZBUFFv05_DCtx_s", !126, i64 0, !97, i64 8, !50, i64 48, !29, i64 56, !29, i64 64, !50, i64 72, !29, i64 80, !29, i64 88, !29, i64 96, !29, i64 104, !4, i64 112, !5, i64 116}
!126 = !{!"p1 _ZTS14ZSTDv05_DCtx_s", !51, i64 0}
!127 = !{!125, !4, i64 112}
!128 = !{!125, !50, i64 48}
!129 = !{!125, !50, i64 72}
!130 = !{!125, !29, i64 64}
!131 = !{!125, !29, i64 96}
!132 = !{!125, !29, i64 88}
!133 = !{!125, !4, i64 16}
!134 = !{!125, !29, i64 104}
!135 = distinct !{!135, !12}
!136 = !{!125, !29, i64 56}
!137 = !{!125, !29, i64 80}
end_hunk_0
