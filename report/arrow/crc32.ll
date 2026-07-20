loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5arrow8internal5crc32EjPKvm:bb.a
  %i.lw = xor i32 %i.lr, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %.07187, i64 52
  %i.ly = load i32, ptr %i.im, align 4, !tbaa !3
  %i.lz = xor i32 %i.ly, %i.lw                    ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.07187, i64 56
  %i.mb = load i32, ptr %i.lx, align 4, !tbaa !3  ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.07187, i64 60
  %i.md = load i32, ptr %i.ma, align 4, !tbaa !3  ; 4 uses
  %i.me = load i32, ptr %i.mc, align 4, !tbaa !3  ; 4 uses
  %i.mf = lshr i32 %i.me, 24
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrow8internalL12crc32_lookupE, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !3
  %i.mj = lshr i32 %i.me, 16
  %i.mk = and i32 %i.mj, 255
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 1024), i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3
  %i.mo = xor i32 %i.mn, %i.mi
  %i.mp = lshr i32 %i.me, 8
  %i.mq = and i32 %i.mp, 255
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 2048), i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !3
  %i.mu = xor i32 %i.mo, %i.mt
  %i.mv = and i32 %i.me, 255
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 3072), i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !3
  %i.mz = xor i32 %i.mu, %i.my
  %i.na = lshr i32 %i.md, 24
  %i.nb = zext nneg i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 4096), i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !3
  %i.ne = xor i32 %i.mz, %i.nd
  %i.nf = lshr i32 %i.md, 16
  %i.ng = and i32 %i.nf, 255
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 5120), i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !3
  %i.nk = xor i32 %i.ne, %i.nj
  %i.nl = lshr i32 %i.md, 8
  %i.nm = and i32 %i.nl, 255
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 6144), i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !3
  %i.nq = xor i32 %i.nk, %i.np
  %i.nr = and i32 %i.md, 255
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 7168), i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !3
  %i.nv = xor i32 %i.nq, %i.nu
  %i.nw = lshr i32 %i.mb, 24
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 8192), i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !3
  %i.oa = xor i32 %i.nv, %i.nz
  %i.ob = lshr i32 %i.mb, 16
  %i.oc = and i32 %i.ob, 255
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 9216), i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !3
  %i.og = xor i32 %i.oa, %i.of
  %i.oh = lshr i32 %i.mb, 8
  %i.oi = and i32 %i.oh, 255
  %i.oj = zext nneg i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 10240), i64 %i.oj
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !3
  %i.om = xor i32 %i.og, %i.ol
  %i.on = and i32 %i.mb, 255
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 11264), i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !3
  %i.or = xor i32 %i.om, %i.oq
  %i.os = lshr i32 %i.lz, 24
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 12288), i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !3
  %i.ow = xor i32 %i.or, %i.ov
  %i.ox = lshr i32 %i.lz, 16
  %i.oy = and i32 %i.ox, 255
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 13312), i64 %i.oz
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !3
  %i.pc = xor i32 %i.ow, %i.pb
  %i.pd = lshr i32 %i.lz, 8
  %i.pe = and i32 %i.pd, 255
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 14336), i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !3
  %i.pi = xor i32 %i.pc, %i.ph
  %i.pj = and i32 %i.lz, 255
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 15360), i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !3
  %i.pn = xor i32 %i.pi, %i.pm                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.07187, i64 64 ; 2 uses
  %i.po = add i64 %.189, -64                      ; 3 uses
  %i.pp = icmp ugt i64 %i.po, 63
  br i1 %i.pp, label %.preheader76, label %.preheader, !llvm.loop !8

.preheader:                                       ; preds = %.preheader76, %.preheader77
  %.071.lcssa = phi ptr [ %.069.lcssa, %.preheader77 ], [ %scevgep, %.preheader76 ] ; 2 uses
  %.164.lcssa = phi i32 [ %.063.lcssa, %.preheader77 ], [ %i.pn, %.preheader76 ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader77 ], [ %i.po, %.preheader76 ] ; 3 uses
  %i.pq = icmp samesign ugt i64 %.1.lcssa, 7
  br i1 %i.pq, label %.lr.ph96, label %._crit_edge

.lr.ph96:                                         ; preds = %.preheader, %.lr.ph96
  %.295 = phi i64 [ %i.rn, %.lr.ph96 ], [ %.1.lcssa, %.preheader ]
  %.36694 = phi i32 [ %i.rm, %.lr.ph96 ], [ %.164.lcssa, %.preheader ]
  %.27393 = phi ptr [ %i.pu, %.lr.ph96 ], [ %.071.lcssa, %.preheader ] ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.27393, i64 4
  %i.ps = load i32, ptr %.27393, align 4, !tbaa !3
  %i.pt = xor i32 %i.ps, %.36694                  ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.27393, i64 8 ; 2 uses
  %i.pv = load i32, ptr %i.pr, align 4, !tbaa !3  ; 4 uses
  %i.pw = lshr i32 %i.pv, 24
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrow8internalL12crc32_lookupE, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !3
  %i.qa = lshr i32 %i.pv, 16
  %i.qb = and i32 %i.qa, 255
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 1024), i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !3
  %i.qf = xor i32 %i.qe, %i.pz
  %i.qg = lshr i32 %i.pv, 8
  %i.qh = and i32 %i.qg, 255
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 2048), i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !3
  %i.ql = xor i32 %i.qf, %i.qk
  %i.qm = and i32 %i.pv, 255
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 3072), i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !3
  %i.qq = xor i32 %i.ql, %i.qp
  %i.qr = lshr i32 %i.pt, 24
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 4096), i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !3
  %i.qv = xor i32 %i.qq, %i.qu
  %i.qw = lshr i32 %i.pt, 16
  %i.qx = and i32 %i.qw, 255
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 5120), i64 %i.qy
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !3
  %i.rb = xor i32 %i.qv, %i.ra
  %i.rc = lshr i32 %i.pt, 8
  %i.rd = and i32 %i.rc, 255
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 6144), i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !3
  %i.rh = xor i32 %i.rb, %i.rg
  %i.ri = and i32 %i.pt, 255
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 7168), i64 %i.rj
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !3
  %i.rm = xor i32 %i.rh, %i.rl                    ; 2 uses
  %i.rn = add nsw i64 %.295, -8                   ; 3 uses
  %i.ro = icmp ugt i64 %i.rn, 7
  br i1 %i.ro, label %.lr.ph96, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph96, %.preheader
  %.273.lcssa = phi ptr [ %.071.lcssa, %.preheader ], [ %i.pu, %.lr.ph96 ] ; 3 uses
  %.366.lcssa = phi i32 [ %.164.lcssa, %.preheader ], [ %i.rm, %.lr.ph96 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader ], [ %i.rn, %.lr.ph96 ] ; 3 uses
  %i.rp = icmp samesign ugt i64 %.2.lcssa, 3
  br i1 %i.rp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.rq = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 4
  %i.rr = load i32, ptr %.273.lcssa, align 4, !tbaa !3
  %i.rs = xor i32 %i.rr, %.366.lcssa              ; 4 uses
  %i.rt = lshr i32 %i.rs, 24
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrow8internalL12crc32_lookupE, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !3
  %i.rx = lshr i32 %i.rs, 16
  %i.ry = and i32 %i.rx, 255
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 1024), i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !3
  %i.sc = xor i32 %i.sb, %i.rw
  %i.sd = lshr i32 %i.rs, 8
  %i.se = and i32 %i.sd, 255
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 2048), i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  %i.si = xor i32 %i.sc, %i.sh
  %i.sj = and i32 %i.rs, 255
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internalL12crc32_lookupE, i64 3072), i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !3
  %i.sn = xor i32 %i.si, %i.sm
  %i.so = add nsw i64 %.2.lcssa, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.374 = phi ptr [ %i.rq, %bb.b ], [ %.273.lcssa, %._crit_edge ] ; 2 uses
  %.467 = phi i32 [ %i.sn, %bb.b ], [ %.366.lcssa, %._crit_edge ] ; 3 uses
  %.3 = phi i64 [ %i.so, %bb.b ], [ %.2.lcssa, %._crit_edge ] ; 3 uses
  %.not100 = icmp eq i64 %.3, 0
  br i1 %.not100, label %._crit_edge106, label %.lr.ph105.prol

.lr.ph105.prol:                                   ; preds = %bb.c
  %i.sp = add i64 %.3, -1
  %i.sq = lshr i32 %.467, 8
  %i.sr = and i32 %.467, 255
  %i.ss = getelementptr inbounds nuw i8, ptr %.374, i64 1
  %i.st = load i8, ptr %.374, align 1, !tbaa !7
  %i.su = zext i8 %i.st to i32
  %i.sv = xor i32 %i.sr, %i.su
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrow8internalL12crc32_lookupE, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !3
  %i.sz = xor i32 %i.sy, %i.sq                    ; 2 uses
  %3 = icmp eq i64 %.3, 1
  br i1 %3, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.prol, %.lr.ph105
  %.4103 = phi i64 [ %i.tk, %.lr.ph105 ], [ %i.sp, %.lr.ph105.prol ]
  %.5102 = phi i32 [ %i.tu, %.lr.ph105 ], [ %i.sz, %.lr.ph105.prol ] ; 2 uses
  %.170101 = phi ptr [ %i.tn, %.lr.ph105 ], [ %i.ss, %.lr.ph105.prol ] ; 3 uses
  %i.ta = lshr i32 %.5102, 8
  %i.tb = and i32 %.5102, 255
  %i.tc = getelementptr inbounds nuw i8, ptr %.170101, i64 1
  %i.td = load i8, ptr %.170101, align 1, !tbaa !7
  %i.te = zext i8 %i.td to i32
  %i.tf = xor i32 %i.tb, %i.te
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrow8internalL12crc32_lookupE, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !3
  %i.tj = xor i32 %i.ti, %i.ta                    ; 2 uses
  %i.tk = add i64 %.4103, -2                      ; 2 uses
  %i.tl = lshr i32 %i.tj, 8
  %i.tm = and i32 %i.tj, 255
  %i.tn = getelementptr inbounds nuw i8, ptr %.170101, i64 2
  %i.to = load i8, ptr %i.tc, align 1, !tbaa !7
  %i.tp = zext i8 %i.to to i32
  %i.tq = xor i32 %i.tm, %i.tp
  %i.tr = zext nneg i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrow8internalL12crc32_lookupE, i64 %i.tr
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !3
  %i.tu = xor i32 %i.tt, %i.tl                    ; 2 uses
  %.not.1 = icmp eq i64 %i.tk, 0
  br i1 %.not.1, label %._crit_edge106, label %.lr.ph105, !llvm.loop !11

._crit_edge106:                                   ; preds = %.lr.ph105.prol, %.lr.ph105, %bb.c
  %.5.lcssa = phi i32 [ %.467, %bb.c ], [ %i.sz, %.lr.ph105.prol ], [ %i.tu, %.lr.ph105 ]
  %i.tv = xor i32 %.5.lcssa, -1
  ret i32 %i.tv
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
end_hunk_0
