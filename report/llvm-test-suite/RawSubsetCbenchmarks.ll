begin_hunk_0
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.trip.count = and i64 %i.z, 2147483647     ; 27 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 16
end_hunk_0
begin_hunk_1
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %1 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %2 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %3 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %4 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %5 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %6 = shl nuw nsw i64 %wide.trip.count, 3        ; 10 uses
  %7 = add nuw nsw i64 %6, 8                      ; 2 uses
  %8 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %9 = shl nuw nsw i64 %wide.trip.count, 3        ; 8 uses
  %10 = add nsw i64 %9, -8                        ; 3 uses
  %11 = add nsw i64 %wide.trip.count, -1          ; 4 uses
  %12 = shl nuw nsw i64 %wide.trip.count, 3       ; 8 uses
  %13 = add nsw i64 %12, -8                       ; 3 uses
  %14 = add nsw i64 %wide.trip.count, -1          ; 4 uses
  %15 = shl nuw nsw i64 %wide.trip.count, 3       ; 8 uses
  %16 = add nsw i64 %15, -8                       ; 3 uses
  %17 = add nsw i64 %wide.trip.count, -1          ; 4 uses
  %18 = shl nuw nsw i64 %wide.trip.count, 3       ; 8 uses
  %19 = add nsw i64 %18, -8                       ; 3 uses
  %i.cr = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.cs = shl nuw nsw i64 %wide.trip.count, 3     ; 8 uses
  %i.ct = add nsw i64 %i.cs, -8                   ; 3 uses
  %i.cu = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %min.iters.check1040 = icmp ult i64 %i.cu, 2
  %n.vec1043 = and i64 %i.cu, -2                  ; 2 uses
  %i.cv = or i64 %i.cu, 1
  %cmp.n1065 = icmp eq i64 %i.cu, %n.vec1043
  %min.iters.check931 = icmp ult i64 %i.cr, 2
  %n.vec934 = and i64 %i.cr, -2                   ; 2 uses
  %i.cw = or i64 %i.cr, 1
  %cmp.n956 = icmp eq i64 %i.cr, %n.vec934
  %min.iters.check822 = icmp ult i64 %17, 2
  %n.vec825 = and i64 %17, -2                     ; 2 uses
  %i.cx = or i64 %17, 1
  %cmp.n847 = icmp eq i64 %17, %n.vec825
  %min.iters.check713 = icmp ult i64 %14, 2
  %n.vec716 = and i64 %14, -2                     ; 2 uses
  %i.cy = or i64 %14, 1
  %cmp.n738 = icmp eq i64 %14, %n.vec716
  %min.iters.check604 = icmp ult i64 %11, 2
  %n.vec607 = and i64 %11, -2                     ; 2 uses
  %i.cz = or i64 %11, 1
  %cmp.n629 = icmp eq i64 %11, %n.vec607
  %min.iters.check491 = icmp ult i64 %8, 2
  %n.vec494 = and i64 %8, -2                      ; 2 uses
  %i.da = or i64 %8, 1
  %cmp.n520 = icmp eq i64 %8, %n.vec494
  %min.iters.check384 = icmp ult i64 %5, 2
  %n.vec387 = and i64 %5, -2                      ; 2 uses
  %i.db = or i64 %5, 1
  %cmp.n397 = icmp eq i64 %5, %n.vec387
  %i.dc = and i64 %i.z, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dc, 0
  %min.iters.check350 = icmp ult i64 %4, 2
  %n.vec353 = and i64 %4, -2                      ; 2 uses
  %i.dd = or i64 %4, 1
  %cmp.n363 = icmp eq i64 %4, %n.vec353
  %i.de = and i64 %i.z, 1
  %lcmp.mod1076.not.not = icmp eq i64 %i.de, 0
  %min.iters.check316 = icmp ult i64 %3, 2
  %n.vec319 = and i64 %3, -2                      ; 2 uses
  %i.df = or i64 %3, 1
  %cmp.n329 = icmp eq i64 %3, %n.vec319
  %i.dg = and i64 %i.z, 1
  %lcmp.mod1078.not.not = icmp eq i64 %i.dg, 0
  %min.iters.check282 = icmp ult i64 %2, 2
  %n.vec285 = and i64 %2, -2                      ; 2 uses
  %i.dh = or i64 %2, 1
  %cmp.n295 = icmp eq i64 %2, %n.vec285
  %i.di = and i64 %i.z, 1
  %lcmp.mod1080.not.not = icmp eq i64 %i.di, 0
  %min.iters.check = icmp ult i64 %1, 2
  %n.vec = and i64 %1, -2                         ; 2 uses
  %i.dj = or i64 %1, 1
  %cmp.n = icmp eq i64 %1, %n.vec
  %i.dk = and i64 %i.z, 1
  %lcmp.mod1082.not.not = icmp eq i64 %i.dk, 0
  br label %.preheader199
end_hunk_1
begin_hunk_2
  %scevgep960 = getelementptr i8, ptr %i.ds, i64 %i.cs ; 9 uses
  %scevgep961 = getelementptr i8, ptr %i.du, i64 8 ; 9 uses
  %scevgep962 = getelementptr i8, ptr %i.du, i64 %i.cs ; 9 uses
  %scevgep963 = getelementptr i8, ptr %i.dl, i64 %i.ct ; 2 uses
  %scevgep964 = getelementptr i8, ptr %i.dm, i64 %i.ct ; 2 uses
  %scevgep965 = getelementptr i8, ptr %i.dn, i64 %i.cs ; 2 uses
  %scevgep966 = getelementptr i8, ptr %i.do, i64 %i.cs ; 2 uses
  %scevgep967 = getelementptr i8, ptr %i.dp, i64 %i.cs ; 2 uses
  %scevgep968 = getelementptr i8, ptr %i.dq, i64 %i.cs ; 2 uses
  %scevgep969 = getelementptr i8, ptr %i.dr, i64 %i.ct ; 2 uses
  %scevgep970 = getelementptr i8, ptr %i.dt, i64 8 ; 2 uses
  %scevgep971 = getelementptr i8, ptr %i.dt, i64 %i.cs ; 2 uses
  %bound0972 = icmp ult ptr %scevgep959, %scevgep962
end_hunk_2
begin_hunk_3

vector.memcheck849:                               ; preds = %._crit_edge.us
  %scevgep850 = getelementptr nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %scevgep851 = getelementptr i8, ptr %i.gv, i64 %18 ; 2 uses
  %scevgep852 = getelementptr i8, ptr %i.gw, i64 8 ; 2 uses
  %scevgep853 = getelementptr i8, ptr %i.gw, i64 %18 ; 2 uses
  %scevgep854 = getelementptr i8, ptr %i.gr, i64 %19
  %scevgep855 = getelementptr i8, ptr %i.gs, i64 %19
  %scevgep856 = getelementptr i8, ptr %i.dl, i64 %18
  %scevgep857 = getelementptr i8, ptr %i.dm, i64 %18
  %scevgep858 = getelementptr i8, ptr %i.gt, i64 %18
  %scevgep859 = getelementptr i8, ptr %i.dr, i64 %18
  %scevgep860 = getelementptr i8, ptr %i.gu, i64 %19
  %scevgep861 = getelementptr i8, ptr %i.dp, i64 8
  %scevgep862 = getelementptr i8, ptr %i.dp, i64 %18
  %bound0863 = icmp ult ptr %scevgep850, %scevgep853
  %bound1864 = icmp ult ptr %scevgep852, %scevgep851
  %found.conflict865 = and i1 %bound0863, %bound1864
end_hunk_3
begin_hunk_4

vector.memcheck740:                               ; preds = %._crit_edge.us.1
  %scevgep741 = getelementptr nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %scevgep742 = getelementptr i8, ptr %i.ld, i64 %15 ; 2 uses
  %scevgep743 = getelementptr i8, ptr %i.le, i64 8 ; 2 uses
  %scevgep744 = getelementptr i8, ptr %i.le, i64 %15 ; 2 uses
  %scevgep745 = getelementptr i8, ptr %i.kz, i64 %16
  %scevgep746 = getelementptr i8, ptr %i.la, i64 %16
  %scevgep747 = getelementptr i8, ptr %i.gr, i64 %15
  %scevgep748 = getelementptr i8, ptr %i.gs, i64 %15
  %scevgep749 = getelementptr i8, ptr %i.lb, i64 %15
  %scevgep750 = getelementptr i8, ptr %i.gu, i64 %15
  %scevgep751 = getelementptr i8, ptr %i.lc, i64 %16
  %scevgep752 = getelementptr i8, ptr %i.gt, i64 8
  %scevgep753 = getelementptr i8, ptr %i.gt, i64 %15
  %bound0754 = icmp ult ptr %scevgep741, %scevgep744
  %bound1755 = icmp ult ptr %scevgep743, %scevgep742
  %found.conflict756 = and i1 %bound0754, %bound1755
end_hunk_4
begin_hunk_5

vector.memcheck631:                               ; preds = %._crit_edge.us.2
  %scevgep632 = getelementptr nuw i8, ptr %i.pl, i64 8 ; 2 uses
  %scevgep633 = getelementptr i8, ptr %i.pl, i64 %12 ; 2 uses
  %scevgep634 = getelementptr i8, ptr %i.pm, i64 8 ; 2 uses
  %scevgep635 = getelementptr i8, ptr %i.pm, i64 %12 ; 2 uses
  %scevgep636 = getelementptr i8, ptr %i.ph, i64 %13
  %scevgep637 = getelementptr i8, ptr %i.pi, i64 %13
  %scevgep638 = getelementptr i8, ptr %i.kz, i64 %12
  %scevgep639 = getelementptr i8, ptr %i.la, i64 %12
  %scevgep640 = getelementptr i8, ptr %i.pj, i64 %12
  %scevgep641 = getelementptr i8, ptr %i.lc, i64 %12
  %scevgep642 = getelementptr i8, ptr %i.pk, i64 %13
  %scevgep643 = getelementptr i8, ptr %i.lb, i64 8
  %scevgep644 = getelementptr i8, ptr %i.lb, i64 %12
  %bound0645 = icmp ult ptr %scevgep632, %scevgep635
  %bound1646 = icmp ult ptr %scevgep634, %scevgep633
  %found.conflict647 = and i1 %bound0645, %bound1646
end_hunk_5
begin_hunk_6

vector.memcheck522:                               ; preds = %._crit_edge.us.3
  %scevgep523 = getelementptr nuw i8, ptr %i.tt, i64 8 ; 2 uses
  %scevgep524 = getelementptr i8, ptr %i.tt, i64 %9 ; 2 uses
  %scevgep525 = getelementptr i8, ptr %i.tu, i64 8 ; 2 uses
  %scevgep526 = getelementptr i8, ptr %i.tu, i64 %9 ; 2 uses
  %scevgep527 = getelementptr i8, ptr %i.tp, i64 %10
  %scevgep528 = getelementptr i8, ptr %i.tq, i64 %10
  %scevgep529 = getelementptr i8, ptr %i.ph, i64 %9
  %scevgep530 = getelementptr i8, ptr %i.pi, i64 %9
  %scevgep531 = getelementptr i8, ptr %i.tr, i64 %9
  %scevgep532 = getelementptr i8, ptr %i.pk, i64 %9
  %scevgep533 = getelementptr i8, ptr %i.ts, i64 %10
  %scevgep534 = getelementptr i8, ptr %i.pj, i64 8
  %scevgep535 = getelementptr i8, ptr %i.pj, i64 %9
  %bound0536 = icmp ult ptr %scevgep523, %scevgep526
  %bound1537 = icmp ult ptr %scevgep525, %scevgep524
  %found.conflict538 = and i1 %bound0536, %bound1537
end_hunk_6
begin_hunk_7

vector.memcheck399:                               ; preds = %.preheader195.us
  %scevgep = getelementptr nuw i8, ptr %i.yk, i64 8 ; 10 uses
  %scevgep400 = getelementptr i8, ptr %i.yk, i64 %6 ; 10 uses
  %scevgep401 = getelementptr i8, ptr %i.yq, i64 8 ; 10 uses
  %scevgep402 = getelementptr i8, ptr %i.yq, i64 %6 ; 10 uses
  %scevgep403 = getelementptr i8, ptr %i.yb, i64 %6 ; 2 uses
  %scevgep404 = getelementptr i8, ptr %i.xz, i64 %7 ; 2 uses
  %scevgep405 = getelementptr nuw i8, ptr %i.xy, i64 8 ; 2 uses
  %scevgep406 = getelementptr i8, ptr %i.xy, i64 %6 ; 2 uses
  %scevgep407 = getelementptr nuw i8, ptr %i.ye, i64 8 ; 2 uses
  %scevgep408 = getelementptr i8, ptr %i.ye, i64 %6 ; 2 uses
  %scevgep409 = getelementptr nuw i8, ptr %i.yg, i64 8 ; 2 uses
  %scevgep410 = getelementptr i8, ptr %i.yg, i64 %6 ; 2 uses
  %scevgep411 = getelementptr nuw i8, ptr %i.yi, i64 8 ; 2 uses
  %scevgep412 = getelementptr i8, ptr %i.yi, i64 %6 ; 2 uses
  %scevgep413 = getelementptr i8, ptr %i.xx, i64 %7 ; 2 uses
  %scevgep414 = getelementptr i8, ptr %i.ym, i64 8 ; 2 uses
  %scevgep415 = getelementptr i8, ptr %i.ym, i64 %6 ; 2 uses
  %scevgep416 = getelementptr i8, ptr %i.yo, i64 8 ; 2 uses
  %scevgep417 = getelementptr i8, ptr %i.yo, i64 %6 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep402
  %bound1 = icmp ult ptr %scevgep401, %scevgep400
  %found.conflict = and i1 %bound0, %bound1
end_hunk_7
