Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/matcher-bm?download=true
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cli_bm_scanbuff:bb.a
  %i.ck = zext i16 %i.cj to i32                   ; 3 uses
  %i.cl = add i32 %.1207336, %i.ck
  %i.cm = icmp ugt i32 %i.cl, %1
  br i1 %i.cm, label %.backedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %.0199349, i64 58 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !45 ; 3 uses
  %i.cp = zext i16 %i.co to i32                   ; 6 uses
  %i.cq = icmp ult i32 %.1207336, %i.cp
  br i1 %i.cq, label %.backedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not246, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %.0199349, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !35
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %.0199349, i64 40
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !52
  %i.cw = sub i32 %i.ce, %i.cp
  %.not255 = icmp eq i32 %i.cv, %i.cw
  br i1 %.not255, label %bb.af, label %.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.cx = load ptr, ptr %7, align 8, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %.0199349, i64 40
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !52
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !35 ; 2 uses
  %i.dd = icmp ne i32 %i.dc, -2
  %i.de = sub i32 %i.ce, %i.cp
  %.not254 = icmp eq i32 %i.dc, %i.de
  %or.cond369 = and i1 %i.dd, %.not254
  br i1 %or.cond369, label %bb.af, label %.backedge

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.df = call i32 @llvm.umin.i32(i32 %i.cf, i32 %i.ck)
  %i.dg = trunc nuw i32 %i.df to i16
  %i.dh = add i16 %i.dg, -1                       ; 3 uses
  %.not256 = icmp eq i16 %i.dh, 0
  br i1 %.not256, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = zext i16 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !42
  %i.dl = load ptr, ptr %.0199349, align 8, !tbaa !8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.di
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !42
  %.not257 = icmp eq i8 %i.dk, %i.dn
  br i1 %.not257, label %bb.ah, label %.backedge

bb.ah:                                            ; preds = %bb.ag
  %i.do = lshr i16 %i.dh, 1
  %i.dp = zext nneg i16 %i.do to i64              ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !42
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dp
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !42
  %.not258 = icmp eq i8 %i.dr, %i.dt
  br i1 %.not258, label %bb.ai, label %.backedge

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.not259 = icmp eq i16 %i.co, 0
  %i.du = sub i32 %.1207336, %i.cp                ; 3 uses
  %i.dv = zext i16 %i.co to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr inbounds i8, ptr %i.cd, i64 %i.dw
  %.0197.in.idx = select i1 %.not259, i64 0, i64 8
  %.0197.in = getelementptr inbounds nuw i8, ptr %.0199349, i64 %.0197.in.idx
  %.0197 = load ptr, ptr %.0197.in, align 8, !tbaa !64
  %i.dy = add nuw nsw i32 %i.cp, %i.ck            ; 3 uses
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = icmp ult i32 %i.du, %1
  %i.eb = and i1 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph343.preheader, label %.critedge281

.lr.ph343.preheader:                              ; preds = %bb.ai
  %i.ec = zext nneg i32 %i.dy to i64
  br label %.lr.ph343

.lr.ph343:                                        ; preds = %.lr.ph343.preheader, %bb.aj
  %indvars.iv402 = phi i64 [ 0, %.lr.ph343.preheader ], [ %indvars.iv.next403, %bb.aj ] ; 3 uses
  %.1204341 = phi i32 [ %i.du, %.lr.ph343.preheader ], [ %i.eh, %bb.aj ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv402
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !42
  %i.ef = getelementptr inbounds nuw i8, ptr %.0197, i64 %indvars.iv402
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !42
  %.not260 = icmp eq i8 %i.ee, %i.eg
  br i1 %.not260, label %bb.aj, label %.backedge

bb.aj:                                            ; preds = %.lr.ph343
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 3 uses
  %i.eh = add nuw i32 %.1204341, 1                ; 3 uses
  %i.ei = icmp samesign ult i64 %indvars.iv.next403, %i.ec
  %i.ej = icmp ult i32 %i.eh, %1
  %i.ek = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %i.ek, label %.lr.ph343, label %.critedge281.loopexit

.critedge281.loopexit:                            ; preds = %bb.aj
  %i.el = trunc nuw nsw i64 %indvars.iv.next403 to i32
  br label %.critedge281

.critedge281:                                     ; preds = %.critedge281.loopexit, %bb.ai
  %.0205.lcssa = phi i32 [ 0, %bb.ai ], [ %i.el, %.critedge281.loopexit ]
  %.1204.lcssa = phi i32 [ %i.du, %bb.ai ], [ %i.eh, %.critedge281.loopexit ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0199349, i64 64
  %i.en = load i32, ptr %i.em, align 8, !tbaa !65
  %i.eo = and i32 %i.en, 1
  %.not262 = icmp eq i32 %i.eo, 0
  %.not263 = icmp eq i32 %.1204.lcssa, %1
  %or.cond282 = select i1 %.not262, i1 true, i1 %.not263
  %i.ep = icmp eq i32 %i.dy, %.0205.lcssa
  %or.cond496 = select i1 %or.cond282, i1 %i.ep, i1 false
  br i1 %or.cond496, label %bb.ak, label %.backedge

bb.ak:                                            ; preds = %.critedge281
  br i1 %.not246, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  %i.eq = getelementptr inbounds nuw i8, ptr %.0199349, i64 40
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !52 ; 3 uses
  %.not264 = icmp eq i32 %i.er, -1
  br i1 %.not264, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.es = getelementptr inbounds nuw i8, ptr %.0199349, i64 24 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !35
  %.not265 = icmp eq i32 %i.et, 1
  br i1 %.not265, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not266, label %.backedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = load i32, ptr %4, align 8, !tbaa !16
  %i.ev = call i32 @cli_caloff(ptr noundef null, ptr noundef nonnull %6, i32 noundef %i.eu, ptr noundef nonnull %i.es, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 2 uses
  %.not267 = icmp eq i32 %i.ev, 0
  br i1 %.not267, label %._crit_edge, label %bb.ap

._crit_edge:                                      ; preds = %bb.ao
  %.pre411 = load i16, ptr %i.cn, align 2, !tbaa !45
  %.pre412 = load i32, ptr %i.a, align 4, !tbaa !35
  %.pre413 = load i32, ptr %i.b, align 4
  %.pre414 = zext i16 %.pre411 to i32
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ew = getelementptr inbounds nuw i8, ptr %.0199349, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !15
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.10, ptr noundef %i.ex) #9
  br label %.loopexit293

bb.aq:                                            ; preds = %bb.am
  store i32 %i.er, ptr %i.a, align 4, !tbaa !35
  %i.ey = getelementptr inbounds nuw i8, ptr %.0199349, i64 44
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !66 ; 2 uses
  store i32 %i.ez, ptr %i.b, align 4, !tbaa !35
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge, %bb.aq
  %.pre-phi = phi i32 [ %.pre414, %._crit_edge ], [ %i.cp, %bb.aq ]
  %i.fa = phi i32 [ %.pre413, %._crit_edge ], [ %i.ez, %bb.aq ]
  %i.fb = phi i32 [ %.pre412, %._crit_edge ], [ %i.er, %bb.aq ] ; 2 uses
  %i.fc = sub i32 %i.ce, %.pre-phi                ; 2 uses
  %i.fd = icmp eq i32 %i.fb, -2
  %i.fe = icmp ult i32 %i.fa, %i.fc
  %i.ff = icmp ugt i32 %i.fb, %i.fc
  %i.fg = or i1 %i.fe, %i.ff
  %or.cond287 = select i1 %i.fd, i1 true, i1 %i.fg
  br i1 %or.cond287, label %.backedge, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.al, %bb.ak
  %i.fh = add nsw i32 %.1352, 1                   ; 4 uses
  br i1 %.not268, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fi = getelementptr inbounds nuw i8, ptr %.0199349, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !15 ; 2 uses
  store ptr %i.fj, ptr %2, align 8, !tbaa !64
  br i1 %.not269, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fk = load ptr, ptr %i.ai, align 8, !tbaa !67
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !81
  %i.fm = and i32 %i.fl, 1
  %.not270 = icmp eq i32 %i.fm, 0
  br i1 %.not270, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fn = call i32 @cli_append_virus(ptr noundef nonnull %8, ptr noundef %i.fj) #9
  %i.fo = icmp eq i32 %i.fn, 0
  %i.fp = icmp sgt i32 %.1352, -1
  %or.cond = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond, label %9, label %bb.aw

9:                                                ; preds = %bb.av
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.au, %9, %bb.av, %bb.as
  %.2 = phi i32 [ %.1352, %9 ], [ %i.fh, %bb.av ], [ %i.fh, %bb.au ], [ %i.fh, %bb.at ], [ %i.fh, %bb.as ] ; 2 uses
  br i1 %.not271, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr %.0199349, ptr %3, align 8, !tbaa !43
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  br i1 %.not269, label %.backedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fq = load ptr, ptr %i.ai, align 8, !tbaa !67
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !81
  %i.fs = and i32 %i.fr, 1
  %.not273 = icmp eq i32 %i.fs, 0
  br i1 %.not273, label %.loopexit293, label %.backedge

.loopexit.loopexit370:                            ; preds = %bb.m
  %i.ft = zext i8 %i.bd to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.y, %.backedge, %.loopexit.loopexit370
  %.0200 = phi i32 [ %i.ft, %.loopexit.loopexit370 ], [ 1, %bb.y ], [ 1, %.backedge ], [ 1, %bb.n ]
  %.4 = phi i32 [ %.0.ph367, %.loopexit.loopexit370 ], [ %.1352, %bb.y ], [ %.1.be, %.backedge ], [ %.0.ph367, %bb.n ] ; 3 uses
  br i1 %.not246, label %.outer, label %bb.ba

bb.ba:                                            ; preds = %.loopexit
  %i.fu = add i32 %.1207336, %5                   ; 3 uses
  %i.fv = load i32, ptr %i.ah, align 8, !tbaa !55 ; 3 uses
  %.promoted358 = load i32, ptr %i.ag, align 4, !tbaa !53 ; 3 uses
  %i.fw = icmp ult i32 %.promoted358, %i.fv
  br i1 %i.fw, label %.lr.ph360, label %.critedge5

.lr.ph360:                                        ; preds = %bb.ba
  %i.fx = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.fy = zext i32 %.promoted358 to i64
  %wide.trip.count408 = zext i32 %i.fv to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph360, %bb.bc
  %indvars.iv405 = phi i64 [ %i.fy, %.lr.ph360 ], [ %indvars.iv.next406, %bb.bc ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv405
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !35
  %.not275 = icmp ult i32 %i.fu, %i.ga
  br i1 %.not275, label %.critedge5.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 3 uses
  %i.gb = trunc nuw i64 %indvars.iv.next406 to i32
  store i32 %i.gb, ptr %i.ag, align 4, !tbaa !53
  %exitcond409.not = icmp eq i64 %indvars.iv.next406, %wide.trip.count408
  br i1 %exitcond409.not, label %.critedge5.thread, label %bb.bb

.critedge5.loopexit:                              ; preds = %bb.bb
  %i.gc = trunc nuw i64 %indvars.iv405 to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge5.loopexit, %bb.ba
  %.lcssa321 = phi i32 [ %.promoted358, %bb.ba ], [ %i.gc, %.critedge5.loopexit ] ; 2 uses
  %i.gd = icmp eq i32 %.lcssa321, %i.fv
  br i1 %i.gd, label %.critedge5.thread, label %bb.bd

bb.bd:                                            ; preds = %.critedge5
  %i.ge = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.gf = zext i32 %.lcssa321 to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !35 ; 2 uses
  %.not276 = icmp ult i32 %i.fu, %i.gh
  br i1 %.not276, label %bb.be, label %.critedge5.thread

.critedge5.thread:                                ; preds = %bb.bd, %.critedge5, %bb.bc
  %i.gi = icmp sgt i32 %.4, 0
  %.288 = zext i1 %i.gi to i32
  br label %.loopexit293

bb.be:                                            ; preds = %bb.bd
  %i.gj = sub nuw i32 %i.gh, %i.fu
  br label %.outer

.outer:                                           ; preds = %.loopexit, %bb.be
  %.pn = phi i32 [ %i.gj, %bb.be ], [ %.0200, %.loopexit ]
  %.3209 = add i32 %.pn, %.1207336                ; 2 uses
  %i.gk = icmp ult i32 %.3209, %i.ac
  br i1 %i.gk, label %.lr.ph337, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %bb.w, %bb.l
  %.0.ph.lcssa325 = phi i32 [ %.0.ph367, %bb.w ], [ 0, %bb.l ], [ %.4, %.outer ]
  %i.gl = icmp sgt i32 %.0.ph.lcssa325, 0
  %.289 = zext i1 %i.gl to i32
  br label %.loopexit293

.loopexit293:                                     ; preds = %bb.az, %.outer._crit_edge, %.critedge5.thread, %.critedge2.thread, %bb.j, %bb.d, %bb.a, %bb.b, %bb.ap
  %.0210 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ %., %.critedge2.thread ], [ 0, %bb.j ], [ %.288, %.critedge5.thread ], [ %.289, %.outer._crit_edge ], [ 0, %bb.b ], [ %i.ev, %bb.ap ], [ 1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0210
}

declare i32 @cli_append_virus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"cli_bm_patt", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !5, i64 40, !5, i64 44, !12, i64 48, !13, i64 56, !13, i64 58, !13, i64 60, !6, i64 62, !5, i64 64, !5, i64 68}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS11cli_bm_patt", !11, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!9, !13, i64 56}
!15 = !{!9, !10, i64 16}
!16 = !{!17, !5, i64 0}
!17 = !{!"cli_matcher", !5, i64 0, !10, i64 8, !18, i64 16, !18, i64 24, !20, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !21, i64 64, !22, i64 160, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !23, i64 256, !24, i64 264, !25, i64 272, !26, i64 280, !27, i64 288, !27, i64 296, !5, i64 304, !5, i64 308, !6, i64 312, !6, i64 313, !28, i64 320, !13, i64 328, !6, i64 330, !5, i64 332, !29, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !30, i64 360, !11, i64 368, !5, i64 376, !31, i64 384, !33, i64 392, !33, i64 400, !34, i64 408}
!18 = !{!"p2 _ZTS11cli_bm_patt", !19, i64 0}
!19 = !{!"any p2 pointer", !11, i64 0}
!20 = !{!"p1 int", !11, i64 0}
!21 = !{!"cli_hash_patt", !6, i64 0}
!22 = !{!"cli_hash_wild", !6, i64 0}
!23 = !{!"p2 _ZTS11cli_ac_lsig", !19, i64 0}
!24 = !{!"p1 _ZTS11cli_ac_node", !11, i64 0}
!25 = !{!"p2 _ZTS11cli_ac_node", !19, i64 0}
!26 = !{!"p2 _ZTS11cli_ac_list", !19, i64 0}
!27 = !{!"p2 _ZTS11cli_ac_patt", !19, i64 0}
!28 = !{!"p1 _ZTS6filter", !11, i64 0}
!29 = !{!"p2 _ZTS13cli_pcre_meta", !19, i64 0}
!30 = !{!"p2 _ZTS14cli_bcomp_meta", !19, i64 0}
!31 = !{!"p3 _ZTS11cli_ac_node", !32, i64 0}
!32 = !{!"any p3 pointer", !19, i64 0}
!33 = !{!"long", !6, i64 0}
!34 = !{!"p1 _ZTS2MP", !11, i64 0}
!35 = !{!5, !5, i64 0}
!36 = !{!17, !5, i64 56}
!37 = !{!17, !5, i64 52}
!38 = !{!17, !28, i64 320}
!39 = !{!17, !5, i64 44}
!40 = !{!17, !34, i64 408}
!41 = !{!17, !18, i64 16}
!42 = !{!6, !6, i64 0}
!43 = !{!12, !12, i64 0}
!44 = !{!9, !10, i64 8}
!45 = !{!9, !13, i64 58}
!46 = !{!17, !10, i64 8}
!47 = !{!9, !6, i64 62}
!48 = !{!9, !12, i64 48}
!49 = !{!9, !13, i64 60}
!50 = !{!17, !5, i64 48}
!51 = !{!17, !18, i64 24}
!52 = !{!9, !5, i64 40}
!53 = !{!54, !5, i64 20}
!54 = !{!"cli_bm_off", !20, i64 0, !20, i64 8, !5, i64 16, !5, i64 20}
!55 = !{!54, !5, i64 16}
!56 = !{!54, !20, i64 8}
!57 = !{!54, !20, i64 0}
!58 = !{!59, !33, i64 0}
!59 = !{!"cli_target_info", !33, i64 0, !60, i64 8, !5, i64 384}
!60 = !{!"cli_exe_info", !61, i64 0, !5, i64 8, !5, i64 12, !13, i64 16, !5, i64 20, !5, i64 24, !62, i64 32, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !63, i64 108, !6, i64 136, !6, i64 248}
!61 = !{!"p1 _ZTS15cli_exe_section", !11, i64 0}
!62 = !{!"cli_hashset", !20, i64 0, !20, i64 8, !34, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!63 = !{!"pe_image_file_hdr", !5, i64 0, !13, i64 4, !13, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 20, !13, i64 22}
!64 = !{!10, !10, i64 0}
!65 = !{!9, !5, i64 64}
!66 = !{!9, !5, i64 44}
!67 = !{!68, !72, i64 48}
!68 = !{!"cli_ctx_tag", !10, i64 0, !10, i64 8, !69, i64 16, !70, i64 24, !71, i64 32, !33, i64 40, !72, i64 48, !5, i64 56, !5, i64 60, !73, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !74, i64 88, !33, i64 96, !75, i64 104, !76, i64 112, !11, i64 120, !77, i64 128, !78, i64 136, !78, i64 144, !79, i64 152, !80, i64 168, !80, i64 169}
!69 = !{!"p1 long", !11, i64 0}
!70 = !{!"p1 _ZTS11cli_matcher", !11, i64 0}
!71 = !{!"p1 _ZTS9cl_engine", !11, i64 0}
!72 = !{!"p1 _ZTS15cl_scan_options", !11, i64 0}
!73 = !{!"p1 _ZTS14cli_scan_layer", !11, i64 0}
!74 = !{!"p1 _ZTS7cl_fmap", !11, i64 0}
!75 = !{!"p1 _ZTS9cli_dconf", !11, i64 0}
!76 = !{!"p1 _ZTS10bitset_tag", !11, i64 0}
!77 = !{!"p1 _ZTS10cli_events", !11, i64 0}
end_hunk_0
