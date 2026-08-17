loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@rgb_ycc_convert:bb.a
  %i.mo = and i16 %i.mn, 4095
  %i.mp = getelementptr inbounds nuw i8, ptr %.045.i5877, i64 6
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !53
  %i.mr = and i16 %i.mq, 4095
  %i.ms = getelementptr inbounds nuw i8, ptr %.045.i5877, i64 8
  %i.mt = zext nneg i16 %i.ml to i64
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.mt ; 3 uses
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !62
  %i.mw = zext nneg i16 %i.mo to i64
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.mw ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 32768
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !62
  %i.na = add nsw i64 %i.mz, %i.mv
  %i.nb = zext nneg i16 %i.mr to i64
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.nb ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 65536
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !62
  %i.nf = add nsw i64 %i.na, %i.ne
  %i.ng = lshr i64 %i.nf, 16
  %i.nh = trunc i64 %i.ng to i16
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.me, i64 %indvars.iv
  store i16 %i.nh, ptr %i.ni, align 2, !tbaa !53
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mu, i64 98304
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !62
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mx, i64 131072
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !62
  %i.nn = add nsw i64 %i.nm, %i.nk
  %i.no = getelementptr inbounds nuw i8, ptr %i.nc, i64 163840
  %i.np = load i64, ptr %i.no, align 8, !tbaa !62
  %i.nq = add nsw i64 %i.nn, %i.np
  %i.nr = lshr i64 %i.nq, 16
  %i.ns = trunc i64 %i.nr to i16
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.mg, i64 %indvars.iv
  store i16 %i.ns, ptr %i.nt, align 2, !tbaa !53
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mu, i64 163840
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !62
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mx, i64 196608
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !62
  %i.ny = add nsw i64 %i.nx, %i.nv
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nc, i64 229376
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !62
  %i.ob = add nsw i64 %i.ny, %i.oa
  %i.oc = lshr i64 %i.ob, 16
  %i.od = trunc i64 %i.oc to i16
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %indvars.iv
  store i16 %i.od, ptr %i.oe, align 2, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit75_crit_edge, label %bb.m, !llvm.loop !224

bb.n:                                             ; preds = %bb.a
  br i1 %i.i, label %.lr.ph117, label %extrgb_ycc_convert_internal.exit

.lr.ph117:                                        ; preds = %bb.n
  %i.of = load ptr, ptr %2, align 8, !tbaa !51
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !51
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !51
  %.not128 = icmp eq i32 %i.h, 0
  br i1 %.not128, label %extrgb_ycc_convert_internal.exit, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %.lr.ph117
  %wide.trip.count165 = zext i32 %i.h to i64
  br label %.lr.ph114

..loopexit_crit_edge:                             ; preds = %bb.o
  %i.ok = add nsw i32 %.in129, -1
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.i62116, i64 8
  %i.om = add i32 %.043.i61115, 1
  %i.on = icmp sgt i32 %.in129, 1
  br i1 %i.on, label %.lr.ph114, label %extrgb_ycc_convert_internal.exit, !llvm.loop !225

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %..loopexit_crit_edge
  %.in129 = phi i32 [ %i.ok, %..loopexit_crit_edge ], [ %4, %.lr.ph114.preheader ] ; 2 uses
  %.0.i62116 = phi ptr [ %i.ol, %..loopexit_crit_edge ], [ %1, %.lr.ph114.preheader ] ; 2 uses
  %.043.i61115 = phi i32 [ %i.om, %..loopexit_crit_edge ], [ %3, %.lr.ph114.preheader ] ; 2 uses
  %i.oo = load ptr, ptr %.0.i62116, align 8, !tbaa !58
  %i.op = zext i32 %.043.i61115 to i64            ; 3 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.op
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !58
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.op
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !58
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.op
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !58
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph114, %bb.o
  %indvars.iv162 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next163, %bb.o ] ; 4 uses
  %.045.i63112 = phi ptr [ %i.oo, %.lr.ph114 ], [ %i.pe, %bb.o ] ; 4 uses
  %i.ow = load i16, ptr %.045.i63112, align 2, !tbaa !53
  %i.ox = and i16 %i.ow, 4095
  %i.oy = getelementptr inbounds nuw i8, ptr %.045.i63112, i64 2
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !53
  %i.pa = and i16 %i.oz, 4095
  %i.pb = getelementptr inbounds nuw i8, ptr %.045.i63112, i64 4
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !53
  %i.pd = and i16 %i.pc, 4095
  %i.pe = getelementptr inbounds nuw i8, ptr %.045.i63112, i64 6
  %i.pf = zext nneg i16 %i.ox to i64
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.pf ; 3 uses
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !62
  %i.pi = zext nneg i16 %i.pa to i64
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.pi ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 32768
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !62
  %i.pm = add nsw i64 %i.pl, %i.ph
  %i.pn = zext nneg i16 %i.pd to i64
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.pn ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 65536
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !62
  %i.pr = add nsw i64 %i.pm, %i.pq
  %i.ps = lshr i64 %i.pr, 16
  %i.pt = trunc i64 %i.ps to i16
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.or, i64 %indvars.iv162
  store i16 %i.pt, ptr %i.pu, align 2, !tbaa !53
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pg, i64 98304
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !62
  %i.px = getelementptr inbounds nuw i8, ptr %i.pj, i64 131072
  %i.py = load i64, ptr %i.px, align 8, !tbaa !62
  %i.pz = add nsw i64 %i.py, %i.pw
  %i.qa = getelementptr inbounds nuw i8, ptr %i.po, i64 163840
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !62
  %i.qc = add nsw i64 %i.pz, %i.qb
  %i.qd = lshr i64 %i.qc, 16
  %i.qe = trunc i64 %i.qd to i16
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %i.ot, i64 %indvars.iv162
  store i16 %i.qe, ptr %i.qf, align 2, !tbaa !53
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pg, i64 163840
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !62
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pj, i64 196608
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !62
  %i.qk = add nsw i64 %i.qj, %i.qh
  %i.ql = getelementptr inbounds nuw i8, ptr %i.po, i64 229376
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !62
  %i.qn = add nsw i64 %i.qk, %i.qm
  %i.qo = lshr i64 %i.qn, 16
  %i.qp = trunc i64 %i.qo to i16
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %indvars.iv162
  store i16 %i.qp, ptr %i.qq, align 2, !tbaa !53
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %..loopexit_crit_edge, label %bb.o, !llvm.loop !226

extrgb_ycc_convert_internal.exit:                 ; preds = %..loopexit75_crit_edge, %..loopexit73_crit_edge, %..loopexit71_crit_edge, %..loopexit69_crit_edge, %..loopexit67_crit_edge, %..loopexit65_crit_edge, %..loopexit_crit_edge, %bb.l, %.lr.ph81, %bb.j, %.lr.ph87, %bb.h, %.lr.ph93, %bb.f, %.lr.ph99, %bb.d, %.lr.ph105, %bb.b, %.lr.ph111, %bb.n, %.lr.ph117
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cmyk_ycck_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp sgt i32 %4, 0
  br i1 %i.g, label %.lr.ph56, label %._crit_edge.split

.lr.ph56:                                         ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph56
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.b
  %i.o = add nsw i32 %.in, -1
  %i.p = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.q = add i32 %.04854, 1
  %i.r = icmp sgt i32 %.in, 1
  br i1 %i.r, label %.lr.ph, label %._crit_edge.split, !llvm.loop !227

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.o, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.055 = phi ptr [ %i.p, %..loopexit_crit_edge ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04854 = phi i32 [ %i.q, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.s = load ptr, ptr %.055, align 8, !tbaa !58
  %i.t = zext i32 %.04854 to i64                  ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.t
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.t
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.05052 = phi ptr [ %i.s, %.lr.ph ], [ %6, %bb.b ] ; 4 uses
  %i.ac = load i16, ptr %.05052, align 2, !tbaa !53
  %i.ad = and i16 %i.ac, 4095
  %i.ae = xor i16 %i.ad, 4095
  %i.af = getelementptr inbounds nuw i8, ptr %.05052, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.05052, i64 6
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !53
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  %6 = getelementptr inbounds nuw i8, ptr %.05052, i64 8
  %7 = zext nneg i16 %i.ae to i64
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %7 ; 3 uses
  %9 = load i64, ptr %8, align 8, !tbaa !62
  %10 = load <2 x i16>, ptr %i.af, align 2, !tbaa !53
  %11 = and <2 x i16> %10, splat (i16 4095)
  %12 = xor <2 x i16> %11, splat (i16 4095)       ; 2 uses
  store i16 %i.ah, ptr %5, align 2, !tbaa !53
  %13 = extractelement <2 x i16> %12, i64 0
  %i.ai = zext nneg i16 %13 to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32768
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !62
  %i.am = add nsw i64 %i.al, %9
  %14 = extractelement <2 x i16> %12, i64 1
  %i.an = zext nneg i16 %14 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 65536
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !62
  %i.ar = add nsw i64 %i.am, %i.aq
  %i.as = lshr i64 %i.ar, 16
  %i.at = trunc i64 %i.as to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv
  store i16 %i.at, ptr %i.au, align 2, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 98304
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 131072
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !62
  %i.az = add nsw i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 163840
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !62
  %i.bc = add nsw i64 %i.az, %i.bb
  %i.bd = lshr i64 %i.bc, 16
  %i.be = trunc i64 %i.bd to i16
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 163840
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 196608
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !62
  %i.bk = add nsw i64 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 229376
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !62
  %i.bn = add nsw i64 %i.bk, %i.bm
  %i.bo = lshr i64 %i.bn, 16
  %i.bp = trunc i64 %i.bo to i16
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.b, !llvm.loop !228

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph56, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !17, i64 496}
!8 = !{!"jpeg_compress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !14, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !10, i64 104, !5, i64 112, !5, i64 144, !5, i64 160, !5, i64 192, !5, i64 224, !5, i64 240, !5, i64 256, !4, i64 272, !10, i64 280, !4, i64 288, !4, i64 292, !4, i64 296, !4, i64 300, !4, i64 304, !4, i64 308, !4, i64 312, !4, i64 316, !4, i64 320, !4, i64 324, !5, i64 328, !5, i64 329, !5, i64 330, !15, i64 332, !15, i64 334, !4, i64 336, !4, i64 340, !4, i64 344, !4, i64 348, !4, i64 352, !4, i64 356, !4, i64 360, !4, i64 364, !4, i64 368, !5, i64 376, !4, i64 408, !4, i64 412, !4, i64 416, !5, i64 420, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !16, i64 480, !4, i64 488, !17, i64 496, !18, i64 504, !19, i64 512, !20, i64 520, !21, i64 528, !22, i64 536, !23, i64 544, !24, i64 552, !25, i64 560, !10, i64 568, !4, i64 576}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS20jpeg_destination_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!"p1 int", !10, i64 0}
!17 = !{!"p1 _ZTS16jpeg_comp_master", !10, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_main_controller", !10, i64 0}
!19 = !{!"p1 _ZTS22jpeg_c_prep_controller", !10, i64 0}
!20 = !{!"p1 _ZTS22jpeg_c_coef_controller", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_marker_writer", !10, i64 0}
!22 = !{!"p1 _ZTS20jpeg_color_converter", !10, i64 0}
!23 = !{!"p1 _ZTS16jpeg_downsampler", !10, i64 0}
!24 = !{!"p1 _ZTS16jpeg_forward_dct", !10, i64 0}
!25 = !{!"p1 _ZTS20jpeg_entropy_encoder", !10, i64 0}
!26 = !{!27, !4, i64 32}
!27 = !{!"jpeg_comp_master", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!28 = !{!8, !4, i64 88}
!29 = !{!8, !9, i64 0}
!30 = !{!31, !4, i64 40}
!31 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !32, i64 128, !33, i64 136, !4, i64 144, !33, i64 152, !4, i64 160, !4, i64 164}
!32 = !{!"long", !5, i64 0}
!33 = !{!"p2 omnipotent char", !34, i64 0}
!34 = !{!"any p2 pointer", !10, i64 0}
!35 = !{!5, !5, i64 0}
!36 = !{!31, !10, i64 0}
!37 = !{!8, !11, i64 8}
!38 = !{!39, !10, i64 0}
!39 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !32, i64 88, !32, i64 96}
!40 = !{!8, !22, i64 536}
!41 = !{!42, !10, i64 0}
!42 = !{!"", !43, i64 0, !44, i64 32}
!43 = !{!"jpeg_color_converter", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!44 = !{!"p1 long", !10, i64 0}
!45 = !{!8, !4, i64 60}
!46 = !{!8, !4, i64 56}
!47 = !{!8, !4, i64 96}
!48 = !{!8, !4, i64 92}
!49 = !{!42, !10, i64 16}
!50 = !{!8, !4, i64 48}
!51 = !{!52, !52, i64 0}
!52 = !{!"p2 short", !34, i64 0}
!53 = !{!15, !15, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 short", !10, i64 0}
!60 = distinct !{!60, !57}
!61 = !{!42, !44, i64 32}
!62 = !{!32, !32, i64 0}
!63 = distinct !{!63, !57}
!64 = distinct !{!64, !57}
!65 = distinct !{!65, !57}
!66 = distinct !{!66, !57}
!67 = distinct !{!67, !57}
!68 = distinct !{!68, !57}
!69 = distinct !{!69, !57}
!70 = distinct !{!70, !57}
!71 = distinct !{!71, !57}
!72 = distinct !{!72, !57}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, !57}
!75 = distinct !{!75, !57}
!76 = distinct !{!76, !57}
!77 = distinct !{!77, !57}
!78 = distinct !{!78, !57}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = !{!85, !86, !80}
!85 = distinct !{!85, !81}
!86 = distinct !{!86, !81}
!87 = !{!85}
!88 = !{!86, !80}
!89 = !{!86}
!90 = distinct !{!90, !57, !91, !92}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = distinct !{!93, !57, !91}
!94 = distinct !{!94, !57}
!95 = !{!96}
!96 = distinct !{!96, !97}
!97 = distinct !{!97, !"LVerDomain"}
!98 = !{!99}
!99 = distinct !{!99, !97}
!100 = !{!101, !102, !103, !96}
!101 = distinct !{!101, !97}
!102 = distinct !{!102, !97}
!103 = distinct !{!103, !97}
!104 = !{!101}
!105 = !{!102, !103, !96}
!106 = !{!102}
!107 = !{!103, !96}
!108 = !{!103}
!109 = distinct !{!109, !57, !91, !92}
!110 = distinct !{!110, !57, !91}
!111 = distinct !{!111, !57}
!112 = distinct !{!112, !55}
!113 = distinct !{!113, !57}
!114 = distinct !{!114, !57}
!115 = distinct !{!115, !57}
!116 = !{!117}
!117 = distinct !{!117, !118}
!118 = distinct !{!118, !"LVerDomain"}
!119 = !{!120}
!120 = distinct !{!120, !118}
!121 = !{!122, !123, !117}
!122 = distinct !{!122, !118}
!123 = distinct !{!123, !118}
!124 = !{!122}
!125 = !{!123, !117}
!126 = !{!123}
!127 = distinct !{!127, !57, !91, !92}
!128 = distinct !{!128, !57, !91}
!129 = distinct !{!129, !57}
!130 = !{!131}
!131 = distinct !{!131, !132}
!132 = distinct !{!132, !"LVerDomain"}
!133 = !{!134}
!134 = distinct !{!134, !132}
!135 = !{!136, !137, !131}
!136 = distinct !{!136, !132}
!137 = distinct !{!137, !132}
!138 = !{!136}
!139 = !{!137, !131}
!140 = !{!137}
!141 = distinct !{!141, !57, !91, !92}
!142 = distinct !{!142, !57, !91}
!143 = distinct !{!143, !57}
!144 = !{!145}
!145 = distinct !{!145, !146}
!146 = distinct !{!146, !"LVerDomain"}
!147 = !{!148}
!148 = distinct !{!148, !146}
!149 = !{!150, !151, !145}
!150 = distinct !{!150, !146}
!151 = distinct !{!151, !146}
!152 = !{!150}
!153 = !{!151, !145}
!154 = !{!151}
!155 = distinct !{!155, !57, !91, !92}
!156 = distinct !{!156, !57, !91}
!157 = distinct !{!157, !57}
!158 = !{!159}
!159 = distinct !{!159, !160}
!160 = distinct !{!160, !"LVerDomain"}
!161 = !{!162}
!162 = distinct !{!162, !160}
!163 = !{!164, !165, !159}
!164 = distinct !{!164, !160}
!165 = distinct !{!165, !160}
!166 = !{!164}
!167 = !{!165, !159}
end_hunk_0
