inline.NumInlined: 15
inline.NumDeleted: 13
begin_hunk_0_@_update_sinfo:bb.a
bb.q:                                             ; preds = %bb.p
  store i32 %i.eh, ptr %i.ed, align 8
  %.pre208 = load i16, ptr %i.ef, align 8
  %.pre219 = zext i16 %.pre208 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi220 = phi i32 [ %.pre219, %bb.q ], [ %i.eh, %bb.p ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = icmp ult i32 %i.ek, %.pre-phi220
  br i1 %i.el, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %.pre-phi220, ptr %i.ej, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 388 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4            ; 3 uses
  %i.eq = icmp ugt i32 %i.en, %i.ep
  br i1 %i.eq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.ep, ptr %i.em, align 8
  %.pre209 = load i32, ptr %i.eo, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.er = phi i32 [ %.pre209, %bb.u ], [ %i.ep, %bb.t ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = icmp ult i32 %i.et, %i.er
  br i1 %i.eu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.er, ptr %i.es, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8            ; 3 uses
  %i.ez = icmp ugt i64 %i.ew, %i.ey
  br i1 %i.ez, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i64 %i.ey, ptr %i.ev, align 8
  %.pre210 = load i64, ptr %i.ex, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fa = phi i64 [ %.pre210, %bb.y ], [ %i.ey, %bb.x ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = icmp ult i64 %i.fc, %i.fa
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i64 %i.fa, ptr %i.fb, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8            ; 3 uses
  %i.fi = icmp ugt i32 %i.ff, %i.fh
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.fh, ptr %i.fe, align 8
  %.pre211 = load i32, ptr %i.fg, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fj = phi i32 [ %.pre211, %bb.ac ], [ %i.fh, %bb.ab ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = icmp ult i32 %i.fl, %i.fj
  br i1 %i.fm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.fj, ptr %i.fk, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8            ; 3 uses
  %i.fr = icmp ugt i32 %i.fo, %i.fq
  br i1 %i.fr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %i.fq, ptr %i.fn, align 8
  %.pre212 = load i32, ptr %i.fp, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fs = phi i32 [ %.pre212, %bb.ag ], [ %i.fq, %bb.af ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = icmp ult i32 %i.fu, %i.fs
  br i1 %i.fv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.fs, ptr %i.ft, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8            ; 3 uses
  %i.ga = icmp ugt i64 %i.fx, %i.fz
  br i1 %i.ga, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i64 %i.fz, ptr %i.fw, align 8
  %.pre213 = load i64, ptr %i.fy, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gb = phi i64 [ %.pre213, %bb.ak ], [ %i.fz, %bb.aj ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = icmp ult i64 %i.gd, %i.gb
  br i1 %i.ge, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i64 %i.gb, ptr %i.gc, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.b
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = tail call i32 @hostlist_find(ptr noundef %i.gg, ptr noundef %i.gi) #12
  %i.gk = icmp eq i32 %i.gj, -1
  br i1 %i.gk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gl = load ptr, ptr %i.gf, align 8
  %i.gm = load ptr, ptr %i.gh, align 8
  %i.gn = tail call i32 @hostlist_push_host(ptr noundef %i.gl, ptr noundef %i.gm) #12 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.go = load i64, ptr getelementptr inbounds nuw (i8, ptr @params, i64 48), align 8
  %i.gp = and i64 %i.go, 1048576
  %.not203 = icmp eq i64 %i.gp, 0
  br i1 %.not203, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = tail call i32 @hostlist_find(ptr noundef %i.gr, ptr noundef %i.gt) #12
  %i.gv = icmp eq i32 %i.gu, -1
  br i1 %i.gv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gw = load ptr, ptr %i.gq, align 8
  %i.gx = load ptr, ptr %i.gs, align 8
  %i.gy = tail call i32 @hostlist_push_host(ptr noundef %i.gw, ptr noundef %i.gx) #12 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.gz = load i64, ptr getelementptr inbounds nuw (i8, ptr @params, i64 48), align 8
  %i.ha = and i64 %i.gz, 32768
  %.not204 = icmp eq i64 %i.ha, 0
  br i1 %.not204, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = tail call i32 @hostlist_find(ptr noundef %i.hc, ptr noundef %i.he) #12
  %i.hg = icmp eq i32 %i.hf, -1
  br i1 %i.hg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hh = load ptr, ptr %i.hb, align 8
  %i.hi = load ptr, ptr %i.hd, align 8
  %i.hj = tail call i32 @hostlist_push_host(ptr noundef %i.hh, ptr noundef %i.hi) #12 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.hl = load i16, ptr %i.hk, align 8
  %i.hm = zext i16 %i.hl to i32                   ; 2 uses
  %i.hn = load i16, ptr %1, align 8
  switch i32 %i.c, label %bb.aw [
    i32 5, label %2
    i32 3, label %2
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ho = load i32, ptr %i.a, align 8
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = and i64 %i.hp, 1024
  %.not205 = icmp eq i64 %i.hq, 0
  br i1 %.not205, label %bb.ax, label %2

2:                                                ; preds = %bb.av, %bb.av, %bb.aw
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 8
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hr = and i64 %i.hp, 512
  %i.hs = icmp ne i64 %i.hr, 0
  %i.ht = icmp eq i32 %i.c, 1
  %or.cond3 = select i1 %i.hs, i1 true, i1 %i.ht
  br i1 %or.cond3, label %6, label %10

6:                                                ; preds = %bb.ax
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8
  br label %bb.ay

10:                                               ; preds = %bb.ax
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %6, %10, %2
  %i.hu = load i32, ptr %i.d, align 4
  %i.hv = add i32 %i.hu, 1
  store i32 %i.hv, ptr %i.d, align 4
  %i.hw = zext i16 %i.hn to i32                   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 8
  %i.hz = add i32 %i.hy, %i.hw
  store i32 %i.hz, ptr %i.hx, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = add i32 %i.ib, %i.hm
  store i32 %i.ic, ptr %i.ia, align 4
  %i.id = sub nsw i32 %i.hm, %i.hw                ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.if = load i64, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.if, ptr %i.ig, align 8
  %i.ih = load i32, ptr %i.a, align 8
  %i.ii = and i32 %i.ih, 512
  %i.ij = icmp ne i32 %i.ii, 0
  %i.ik = icmp eq i32 %i.c, 1
  %or.cond5 = select i1 %i.ij, i1 true, i1 %i.ik
  br i1 %or.cond5, label %14, label %18

14:                                               ; preds = %bb.ay
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, %i.id
  store i32 %17, ptr %15, align 8
  br label %bb.az

18:                                               ; preds = %bb.ay
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %i.id
  store i32 %21, ptr %19, align 4
  br label %bb.az

bb.az:                                            ; preds = %14, %18, %bb.c
  ret void
}

declare i32 @hostlist_push_host(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hostlist_sort(ptr noundef) local_unnamed_addr #2

declare i32 @slurm_load_partitions(i64 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @slurm_load_node_single(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @slurm_load_node(i64 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

declare ptr @node_state_string(i32 noundef) local_unnamed_addr #2

declare ptr @node_state_string_complete(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
end_hunk_0
