inline.NumInlined: 24
inline.NumDeleted: 2
begin_hunk_0_@bitopCommand:bb.a
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !20
  %i.kb = xor i64 %i.ka, -1
  %i.kc = getelementptr inbounds nuw i8, ptr %.6635, i64 16 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !20
  %i.ke = and i64 %i.kd, %i.kb
  store i64 %i.ke, ptr %i.kc, align 8, !tbaa !20
  %i.kf = getelementptr inbounds nuw i8, ptr %.1636, i64 24
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !20
  %i.kh = xor i64 %i.kg, -1
  %i.ki = getelementptr inbounds nuw i8, ptr %.6635, i64 24 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !20
  %i.kk = and i64 %i.kj, %i.kh
  store i64 %i.kk, ptr %i.ki, align 8, !tbaa !20
  %i.kl = getelementptr inbounds nuw i8, ptr %.6635, i64 32
  %i.km = getelementptr inbounds nuw i8, ptr %.1636, i64 32
  %i.kn = add nuw i64 %.5443634, 32               ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %.6458.lcssa
  br i1 %i.ko, label %.lr.ph637, label %.loopexit570, !llvm.loop !150

.lr.ph633:                                        ; preds = %.preheader583, %.lr.ph633
  %.2632 = phi ptr [ %i.li, %.lr.ph633 ], [ %i.io, %.preheader583 ] ; 5 uses
  %.7631 = phi ptr [ %i.lh, %.lr.ph633 ], [ %i.cz, %.preheader583 ] ; 6 uses
  %.6444630 = phi i64 [ %i.lj, %.lr.ph633 ], [ 0, %.preheader583 ]
  %i.kp = load i64, ptr %.2632, align 8, !tbaa !20
  %i.kq = load i64, ptr %.7631, align 8, !tbaa !20
  %i.kr = and i64 %i.kq, %i.kp
  store i64 %i.kr, ptr %.7631, align 8, !tbaa !20
  %i.ks = getelementptr inbounds nuw i8, ptr %.2632, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !20
  %i.ku = getelementptr inbounds nuw i8, ptr %.7631, i64 8 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !20
  %i.kw = and i64 %i.kv, %i.kt
  store i64 %i.kw, ptr %i.ku, align 8, !tbaa !20
  %i.kx = getelementptr inbounds nuw i8, ptr %.2632, i64 16
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !20
  %i.kz = getelementptr inbounds nuw i8, ptr %.7631, i64 16 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !20
  %i.lb = and i64 %i.la, %i.ky
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !20
  %i.lc = getelementptr inbounds nuw i8, ptr %.2632, i64 24
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !20
  %i.le = getelementptr inbounds nuw i8, ptr %.7631, i64 24 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !20
  %i.lg = and i64 %i.lf, %i.ld
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !20
  %i.lh = getelementptr inbounds nuw i8, ptr %.7631, i64 32
  %i.li = getelementptr inbounds nuw i8, ptr %.2632, i64 32
  %i.lj = add nuw i64 %.6444630, 32               ; 2 uses
  %i.lk = icmp ult i64 %i.lj, %.6458.lcssa
  br i1 %i.lk, label %.lr.ph633, label %.loopexit570, !llvm.loop !151

bb.be:                                            ; preds = %bb.bc
  br i1 %i.af, label %.preheader587.lr.ph, label %.loopexit570

.preheader587.lr.ph:                              ; preds = %bb.be
  %.not824 = icmp eq i32 %i.ai, 1
  %umax745 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 2)
  br label %.preheader587

.preheader587:                                    ; preds = %.preheader587.lr.ph, %._crit_edge603
  %.4613 = phi i64 [ 0, %.preheader587.lr.ph ], [ %i.nh, %._crit_edge603 ] ; 2 uses
  %.8612 = phi ptr [ %i.cz, %.preheader587.lr.ph ], [ %i.ni, %._crit_edge603 ] ; 12 uses
  %.7459611 = phi i64 [ 0, %.preheader587.lr.ph ], [ %i.nj, %._crit_edge603 ]
  %.9478610 = phi i64 [ %.0469.lcssa, %.preheader587.lr.ph ], [ %i.nk, %._crit_edge603 ]
  %.pre = load i64, ptr %.8612, align 8, !tbaa !20 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.8612, i64 8 ; 3 uses
  br i1 %.not824, label %.preheader587.._crit_edge603_crit_edge, label %.lr.ph602

.preheader587.._crit_edge603_crit_edge:           ; preds = %.preheader587
  %.pre763 = load i64, ptr %i.ll, align 8, !tbaa !20
  %.phi.trans.insert764 = getelementptr inbounds nuw i8, ptr %.8612, i64 16
  %.pre765 = load i64, ptr %.phi.trans.insert764, align 8, !tbaa !20
  %.phi.trans.insert766 = getelementptr inbounds nuw i8, ptr %.8612, i64 24
  %.pre767 = load i64, ptr %.phi.trans.insert766, align 8, !tbaa !20
  br label %._crit_edge603

.lr.ph602:                                        ; preds = %.preheader587
  %i.lm = getelementptr inbounds nuw i8, ptr %.8612, i64 16 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.8612, i64 24 ; 2 uses
  %.promoted = load i64, ptr %i.ll, align 8, !tbaa !20
  %.promoted608 = load i64, ptr %i.lm, align 8, !tbaa !20
  %.promoted609 = load i64, ptr %i.ln, align 8, !tbaa !20
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph602, %bb.bf
  %i.lo = phi i64 [ %.promoted609, %.lr.ph602 ], [ %i.mq, %bb.bf ] ; 2 uses
  %i.lp = phi i64 [ %.promoted608, %.lr.ph602 ], [ %i.mo, %bb.bf ] ; 2 uses
  %i.lq = phi i64 [ %.promoted, %.lr.ph602 ], [ %i.mm, %bb.bf ] ; 2 uses
  %i.lr = phi i64 [ %.pre, %.lr.ph602 ], [ %i.mk, %bb.bf ] ; 2 uses
  %.sroa.12.0601 = phi i64 [ 0, %.lr.ph602 ], [ %i.mj, %bb.bf ]
  %.sroa.9.0600 = phi i64 [ 0, %.lr.ph602 ], [ %i.mf, %bb.bf ]
  %.sroa.6.0599 = phi i64 [ 0, %.lr.ph602 ], [ %i.mb, %bb.bf ]
  %.sroa.0.0598 = phi i64 [ 0, %.lr.ph602 ], [ %i.lx, %bb.bf ]
  %.7445597 = phi i64 [ 1, %.lr.ph602 ], [ %i.mr, %bb.bf ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.7445597
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !138
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.4613 ; 4 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !20 ; 2 uses
  %i.lw = and i64 %i.lv, %i.lr
  %i.lx = or i64 %i.lw, %.sroa.0.0598             ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !20
  %i.ma = and i64 %i.lz, %i.lq
  %i.mb = or i64 %i.ma, %.sroa.6.0599             ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !20
  %i.me = and i64 %i.md, %i.lp
  %i.mf = or i64 %i.me, %.sroa.9.0600             ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lu, i64 24 ; 2 uses
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !20
  %i.mi = and i64 %i.mh, %i.lo
  %i.mj = or i64 %i.mi, %.sroa.12.0601            ; 2 uses
  %i.mk = xor i64 %i.lv, %i.lr                    ; 3 uses
  store i64 %i.mk, ptr %.8612, align 8, !tbaa !20
  %i.ml = load i64, ptr %i.ly, align 8, !tbaa !20
  %i.mm = xor i64 %i.ml, %i.lq                    ; 3 uses
  store i64 %i.mm, ptr %i.ll, align 8, !tbaa !20
  %i.mn = load i64, ptr %i.mc, align 8, !tbaa !20
  %i.mo = xor i64 %i.mn, %i.lp                    ; 3 uses
  store i64 %i.mo, ptr %i.lm, align 8, !tbaa !20
  %i.mp = load i64, ptr %i.mg, align 8, !tbaa !20
  %i.mq = xor i64 %i.mp, %i.lo                    ; 3 uses
  store i64 %i.mq, ptr %i.ln, align 8, !tbaa !20
  %i.mr = add nuw i64 %.7445597, 1                ; 2 uses
  %exitcond746.not = icmp eq i64 %i.mr, %umax745
  br i1 %exitcond746.not, label %._crit_edge603.loopexit, label %bb.bf, !llvm.loop !152

._crit_edge603.loopexit:                          ; preds = %bb.bf
  %i.ms = xor i64 %i.lx, -1
  %i.mt = and i64 %i.mk, %i.ms
  %i.mu = xor i64 %i.mb, -1
  %i.mv = and i64 %i.mm, %i.mu
  %i.mw = xor i64 %i.mf, -1
  %i.mx = and i64 %i.mo, %i.mw
  %i.my = xor i64 %i.mj, -1
  %i.mz = and i64 %i.mq, %i.my
  br label %._crit_edge603

._crit_edge603:                                   ; preds = %.preheader587.._crit_edge603_crit_edge, %._crit_edge603.loopexit
  %i.na = phi i64 [ %.pre767, %.preheader587.._crit_edge603_crit_edge ], [ %i.mz, %._crit_edge603.loopexit ]
  %i.nb = phi i64 [ %.pre765, %.preheader587.._crit_edge603_crit_edge ], [ %i.mx, %._crit_edge603.loopexit ]
  %i.nc = phi i64 [ %.pre763, %.preheader587.._crit_edge603_crit_edge ], [ %i.mv, %._crit_edge603.loopexit ]
  %i.nd = phi i64 [ %.pre, %.preheader587.._crit_edge603_crit_edge ], [ %i.mt, %._crit_edge603.loopexit ]
  store i64 %i.nd, ptr %.8612, align 8, !tbaa !20
  %i.ne = getelementptr inbounds nuw i8, ptr %.8612, i64 8
  store i64 %i.nc, ptr %i.ne, align 8, !tbaa !20
  %i.nf = getelementptr inbounds nuw i8, ptr %.8612, i64 16
  store i64 %i.nb, ptr %i.nf, align 8, !tbaa !20
  %i.ng = getelementptr inbounds nuw i8, ptr %.8612, i64 24
  store i64 %i.na, ptr %i.ng, align 8, !tbaa !20
  %i.nh = add nuw nsw i64 %.4613, 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.8612, i64 32
  %i.nj = add nuw i64 %.7459611, 32               ; 2 uses
  %i.nk = add i64 %.9478610, -32                  ; 2 uses
  %i.nl = icmp ugt i64 %i.nk, 31
  br i1 %i.nl, label %.preheader587, label %.loopexit570, !llvm.loop !153

.loopexit570:                                     ; preds = %._crit_edge603, %.lr.ph633, %.lr.ph637, %.lr.ph641, %.lr.ph645, %._crit_edge649.us, %._crit_edge661.us, %._crit_edge673.us, %.preheader574.preheader, %.preheader571.preheader, %.preheader568.preheader, %.preheader583, %.preheader581, %.preheader579, %.thread, %bb.be, %._crit_edge626, %bb.ar
  %.9 = phi i64 [ 0, %bb.ar ], [ %i.dc, %.thread ], [ 0, %.preheader583 ], [ %i.hf, %.lr.ph645 ], [ %i.fq, %._crit_edge661.us ], [ 0, %bb.be ], [ %.6458.lcssa, %._crit_edge626 ], [ 0, %.preheader579 ], [ %i.fx, %.preheader574.preheader ], [ %i.gw, %._crit_edge649.us ], [ 0, %.preheader581 ], [ %i.ek, %._crit_edge673.us ], [ %.6458.lcssa, %.lr.ph633 ], [ %.6458.lcssa, %.lr.ph637 ], [ %i.dl, %.preheader568.preheader ], [ %.6458.lcssa, %.lr.ph641 ], [ %i.er, %.preheader571.preheader ], [ %i.nj, %._crit_edge603 ] ; 2 uses
  %i.nm = icmp ult i64 %.9, %.0466.lcssa
  br i1 %i.nm, label %.lr.ph702, label %.loopexit

.lr.ph702:                                        ; preds = %.loopexit570
  %i.nn = sext i1 %i.ab to i8                     ; 2 uses
  %.not829 = icmp eq i32 %i.ai, 1
  %umax758 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 2)
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph702, %.thread563
  %.10698 = phi i64 [ %.9, %.lr.ph702 ], [ %i.oq, %.thread563 ] ; 6 uses
  %i.no = load i64, ptr %i.am, align 8, !tbaa !20
  %.not510 = icmp ugt i64 %i.no, %.10698
  br i1 %.not510, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.np = load ptr, ptr %i.al, align 8, !tbaa !113
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %.10698
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !13
  %i.ns = xor i8 %i.nr, %i.nn
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %spec.select514 = phi i8 [ %i.ns, %bb.bh ], [ %i.nn, %bb.bg ] ; 2 uses
  br i1 %.not829, label %._crit_edge689, label %.lr.ph688

.lr.ph688:                                        ; preds = %bb.bi, %.thread554
  %.8446686 = phi i64 [ %i.oj, %.thread554 ], [ 1, %bb.bi ] ; 3 uses
  %.0447685 = phi i8 [ %.1448561, %.thread554 ], [ 0, %bb.bi ] ; 6 uses
  %.0449684 = phi i8 [ %.1450560, %.thread554 ], [ 0, %bb.bi ] ; 6 uses
  %.1462683 = phi i8 [ %.2463559, %.thread554 ], [ %spec.select514, %bb.bi ] ; 8 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.8446686
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !20
  %.not511 = icmp ugt i64 %i.nu, %.10698
  br i1 %.not511, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph688
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.8446686
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !113
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.10698
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !13
  %1 = zext i8 %i.ny to i32
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph688, %bb.bj
  %2 = phi i32 [ %1, %bb.bj ], [ 0, %.lr.ph688 ]  ; 6 uses
  switch i64 %.0436523528, label %default.unreachable [
    i64 0, label %bb.bp
    i64 1, label %bb.bl
    i64 2, label %bb.bm
    i64 4, label %bb.bn
    i64 5, label %bb.bn
    i64 6, label %bb.bn
    i64 7, label %bb.bo
    i64 3, label %.thread554
  ]

bb.bl:                                            ; preds = %bb.bk
  %3 = trunc nuw i32 %2 to i8
  %i.nz = or i8 %.1462683, %3                     ; 2 uses
  %i.oa = icmp eq i8 %i.nz, -1
  br i1 %i.oa, label %.thread563, label %.thread554

bb.bm:                                            ; preds = %bb.bk
  %4 = trunc nuw i32 %2 to i8
  %i.ob = xor i8 %.1462683, %4
  br label %.thread554

bb.bn:                                            ; preds = %bb.bk, %bb.bk, %bb.bk
  %5 = trunc nuw i32 %2 to i8
  %i.oc = or i8 %.0449684, %5                     ; 2 uses
  %i.od = icmp eq i8 %i.oc, -1
  br i1 %i.od, label %._crit_edge689, label %.thread554

bb.bo:                                            ; preds = %bb.bk
  %6 = trunc nuw i32 %2 to i8
  %i.oe = and i8 %.1462683, %6
  %i.of = or i8 %i.oe, %.0447685                  ; 3 uses
  %7 = zext i8 %i.of to i32
  %8 = xor i32 %7, -1
  %9 = zext i8 %.1462683 to i32
  %10 = xor i32 %2, %9
  %11 = and i32 %10, %8
  %12 = trunc nuw i32 %11 to i8                   ; 2 uses
  %i.og = icmp eq i8 %i.of, -1
  br i1 %i.og, label %.thread563, label %.thread554

default.unreachable:                              ; preds = %bb.bk
  unreachable

bb.bp:                                            ; preds = %bb.bk
  %13 = trunc nuw i32 %2 to i8
  %i.oh = and i8 %.1462683, %13                   ; 2 uses
  %i.oi = icmp eq i8 %i.oh, 0
  br i1 %i.oi, label %.thread563, label %.thread554

.thread554:                                       ; preds = %bb.bm, %bb.bk, %bb.bl, %bb.bo, %bb.bn, %bb.bp
  %.1448561 = phi i8 [ %.0447685, %bb.bl ], [ %.0447685, %bb.bp ], [ %.0447685, %bb.bn ], [ %i.of, %bb.bo ], [ %.0447685, %bb.bk ], [ %.0447685, %bb.bm ]
  %.1450560 = phi i8 [ %.0449684, %bb.bl ], [ %.0449684, %bb.bp ], [ %i.oc, %bb.bn ], [ %.0449684, %bb.bo ], [ %.0449684, %bb.bk ], [ %.0449684, %bb.bm ] ; 2 uses
  %.2463559 = phi i8 [ %i.nz, %bb.bl ], [ %i.oh, %bb.bp ], [ %.1462683, %bb.bn ], [ %12, %bb.bo ], [ %.1462683, %bb.bk ], [ %i.ob, %bb.bm ] ; 2 uses
  %i.oj = add nuw i64 %.8446686, 1                ; 2 uses
  %exitcond759.not = icmp eq i64 %i.oj, %umax758
  br i1 %exitcond759.not, label %._crit_edge689, label %.lr.ph688, !llvm.loop !154

._crit_edge689:                                   ; preds = %.thread554, %bb.bn, %bb.bi
  %.3464 = phi i8 [ %spec.select514, %bb.bi ], [ %.1462683, %bb.bn ], [ %.2463559, %.thread554 ] ; 4 uses
  %.2451 = phi i8 [ 0, %bb.bi ], [ -1, %bb.bn ], [ %.1450560, %.thread554 ] ; 3 uses
  switch i64 %.0436523528, label %.thread563 [
    i64 4, label %bb.bq
    i64 5, label %bb.br
    i64 6, label %bb.bs
  ]

bb.bq:                                            ; preds = %._crit_edge689
  %i.ok = xor i8 %.2451, -1
  %i.ol = and i8 %.3464, %i.ok
  br label %.thread563

bb.br:                                            ; preds = %._crit_edge689
  %i.om = xor i8 %.3464, -1
  %i.on = and i8 %.2451, %i.om
  br label %.thread563

bb.bs:                                            ; preds = %._crit_edge689
  %i.oo = and i8 %.2451, %.3464
  br label %.thread563

.thread563:                                       ; preds = %bb.bl, %bb.bo, %bb.bp, %._crit_edge689, %bb.bq, %bb.br, %bb.bs
  %.sink = phi i8 [ %i.ol, %bb.bq ], [ %i.on, %bb.br ], [ %i.oo, %bb.bs ], [ %.3464, %._crit_edge689 ], [ 0, %bb.bp ], [ -1, %bb.bl ], [ %12, %bb.bo ]
  %i.op = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.10698
  store i8 %.sink, ptr %i.op, align 1, !tbaa !13
  %i.oq = add i64 %.10698, 1                      ; 2 uses
  %exitcond760.not = icmp eq i64 %i.oq, %.0466.lcssa
  br i1 %exitcond760.not, label %.loopexit, label %bb.bg, !llvm.loop !155

.loopexit:                                        ; preds = %.thread563, %.loopexit570, %._crit_edge
  %.0466.lcssa792 = phi i64 [ 0, %._crit_edge ], [ %.0466.lcssa, %.loopexit570 ], [ %.0466.lcssa, %.thread563 ]
  %.0481 = phi ptr [ null, %._crit_edge ], [ %i.cz, %.loopexit570 ], [ %i.cz, %.thread563 ]
  br label %.lr.ph705

.lr.ph705:                                        ; preds = %.loopexit, %bb.bu
  %.11703 = phi i64 [ %i.ot, %bb.bu ], [ 0, %.loopexit ] ; 2 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.11703
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !104 ; 2 uses
  %.not509 = icmp eq ptr %i.os, null
  br i1 %.not509, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph705
  tail call void @decrRefCount(ptr noundef nonnull %i.os) #23
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph705, %bb.bt
  %i.ot = add nuw i64 %.11703, 1                  ; 2 uses
  %exitcond762.not = icmp eq i64 %i.ot, %i.aj
  br i1 %exitcond762.not, label %._crit_edge706, label %.lr.ph705, !llvm.loop !156

._crit_edge706:                                   ; preds = %bb.bu, %.thread524
  %.0481801 = phi ptr [ null, %.thread524 ], [ %.0481, %bb.bu ]
  %.0466.lcssa792800 = phi i64 [ 0, %.thread524 ], [ %.0466.lcssa792, %bb.bu ]
  %.not504793799 = phi i1 [ true, %.thread524 ], [ %.not504, %bb.bu ]
  tail call void @zfree(ptr noundef %i.al) #23
  tail call void @zfree(ptr noundef %i.am) #23
  tail call void @zfree(ptr noundef %i.an) #23
  br i1 %.not504793799, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ou = tail call ptr @createObject(i32 noundef 0, ptr noundef %.0481801) #23
  store ptr %i.ou, ptr %i.a, align 8, !tbaa !104
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !105
  call void @setKey(ptr noundef %0, ptr noundef %i.ow, ptr noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 0) #23
  %i.ox = load ptr, ptr %i.ov, align 8, !tbaa !105
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 72
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !106
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.22, ptr noundef %i.i, i32 noundef %i.oz) #23
  %i.pa = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !109
  %i.pb = add nsw i64 %i.pa, 1
  store i64 %i.pb, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.by

bb.bw:                                            ; preds = %._crit_edge706
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !105
  %i.pe = tail call i32 @dbDelete(ptr noundef %i.pd, ptr noundef %i.i) #23
  %.not508 = icmp eq i32 %i.pe, 0
  br i1 %.not508, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pf = load ptr, ptr %i.pc, align 8, !tbaa !105
  tail call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.pf, ptr noundef %i.i, ptr noundef null, i32 noundef 1) #23
  %i.pg = load ptr, ptr %i.pc, align 8, !tbaa !105
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 72
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !106
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef %i.i, i32 noundef %i.pi) #23
  %i.pj = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !109
  %i.pk = add nsw i64 %i.pj, 1
  store i64 %i.pk, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !109
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx, %bb.bv
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0466.lcssa792800) #23
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge709, %bb.by, %bb.u, %bb.s, %bb.q
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @sdsnew(ptr noundef) local_unnamed_addr #8

declare void @sdstoupper(ptr noundef) local_unnamed_addr #8

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

declare void @sdsfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #17

declare ptr @lookupKeyRead(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @decrRefCount(ptr noundef) local_unnamed_addr #8

declare void @zfree(ptr noundef) local_unnamed_addr #8

declare ptr @getDecodedObject(ptr noundef) local_unnamed_addr #8

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #8

declare ptr @createObject(i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @setKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @dbDelete(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @bitcountCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca [21 x i8], align 16               ; 6 uses
  %i.d = alloca [2 x i8], align 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !134
  switch i32 %i.f, label %bb.al [
    i32 4, label %bb.b
    i32 5, label %bb.b
    i32 2, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.k = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef null) #23
  %.not72 = icmp eq i32 %i.k, 0
  br i1 %.not72, label %bb.c, label %bb.bb

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull %i.b, ptr noundef null) #23
  %.not73 = icmp eq i32 %i.o, 0
  br i1 %.not73, label %bb.d, label %bb.bb

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.e, align 8, !tbaa !134
  %i.q = icmp eq i32 %i.p, 5
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !89  ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %i.v = call i32 @strcasecmp(ptr noundef %i.u, ptr noundef nonnull @.str.24) #25
  %.not74 = icmp eq i32 %i.v, 0
  br i1 %.not74, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 @strcasecmp(ptr noundef %i.u, ptr noundef nonnull @.str.25) #25
  %.not75 = icmp eq i32 %i.w, 0
  br i1 %.not75, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !133
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.x) #23
  br label %bb.bb

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.not77 = phi i1 [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !104
  %i.ac = call ptr @lookupKeyRead(ptr noundef %i.z, ptr noundef %i.ab) #23 ; 6 uses
  %i.ad = call i32 @checkType(ptr noundef nonnull %0, ptr noundef %i.ac, i32 noundef 0) #23
  %.not76 = icmp eq i32 %i.ad, 0
  br i1 %.not76, label %bb.i, label %bb.bb

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %getObjectReadOnlyString.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.af = and i64 %i.ae, 15
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.critedge.i, label %bb.k, !prof !88

bb.k:                                             ; preds = %bb.j
  call void @_serverAssert(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, i32 noundef 823) #23
  call void @abort() #24
  unreachable

end_hunk_0
