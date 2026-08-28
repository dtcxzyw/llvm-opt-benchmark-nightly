Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.07?download=true
inline.NumInlined: 190
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketNtNtBQ_5alloc6GlobalEEB2C_:bb.a
  %i.aa = icmp samesign ult i32 %i.z, 1000000000, !dbg !1561
  br i1 %i.aa, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit.i.i, !dbg !1561

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !1561
    #dbg_value(ptr %i.ab, !1570, !DIExpression(), !1578)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit.i.i unwind label %bb.d, !dbg !1580

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.ac = icmp eq i64 %i.x, %i.s, !dbg !1542
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBK_.exit.i, label %.lr.ph.i.i, !dbg !1542

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.x, %i.s, !dbg !1542
  br i1 %i.ae, label %common.resume.i, label %.lr.ph13.i.i, !dbg !1542

.lr.ph13.i.i:                                     ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i.i
  %.sroa.0.111.i.i = phi i64 [ %i.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw [176 x i8], ptr %i.r, i64 %.sroa.0.111.i.i, !dbg !1542 ; 2 uses
  %i.ag = add i64 %.sroa.0.111.i.i, 1, !dbg !1542 ; 2 uses
    #dbg_value(ptr %i.af, !1543, !DIExpression(), !1581)
    #dbg_value(ptr %i.af, !1551, !DIExpression(), !1583)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !1585
  %i.ai = load i32, ptr %i.ah, align 8, !dbg !1585, !range !1562, !alias.scope !1586, !noundef !14
  %i.aj = icmp samesign ult i32 %i.ai, 1000000000, !dbg !1585
  br i1 %i.aj, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i.i, !dbg !1585

bb.e:                                             ; preds = %.lr.ph13.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !1585
    #dbg_value(ptr %i.ak, !1570, !DIExpression(), !1591)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i.i unwind label %bb.f, !dbg !1593

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i.i: ; preds = %bb.e, %.lr.ph13.i.i
  %i.al = icmp eq i64 %i.ag, %i.s, !dbg !1542
  br i1 %i.al, label %common.resume.i, label %.lr.ph13.i.i, !dbg !1542

common.resume.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i24.i, %bb.h, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %i.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i24.i ], [ %i.av, %bb.h ], [ %i.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !1594

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !1542
  unreachable, !dbg !1542

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBK_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit.i.i, %bb.b
    #dbg_value(ptr %i.t, !1531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1597)
    #dbg_value(i64 %i.u, !1531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1597)
  %i.an = icmp eq i64 %i.o, %i.m, !dbg !1599
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBK_.exit26.i, label %.lr.ph.i19.i, !dbg !1599

.lr.ph.i19.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBK_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit.i21.i
  %.sroa.0.010.i20.i = phi i64 [ %i.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit.i21.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBK_.exit.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [176 x i8], ptr %i.t, i64 %.sroa.0.010.i20.i, !dbg !1599 ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.0.010.i20.i, 1, !dbg !1599 ; 4 uses
    #dbg_value(ptr %i.ao, !1543, !DIExpression(), !1600)
    #dbg_value(ptr %i.ao, !1551, !DIExpression(), !1602)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !1604
  %i.ar = load i32, ptr %i.aq, align 8, !dbg !1604, !range !1562, !alias.scope !1605, !noundef !14
  %i.as = icmp samesign ult i32 %i.ar, 1000000000, !dbg !1604
  br i1 %i.as, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit.i21.i, !dbg !1604

bb.g:                                             ; preds = %.lr.ph.i19.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 24, !dbg !1604
    #dbg_value(ptr %i.at, !1570, !DIExpression(), !1612)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit.i21.i unwind label %bb.h, !dbg !1614

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit.i21.i: ; preds = %bb.g, %.lr.ph.i19.i
  %i.au = icmp eq i64 %i.ap, %i.u, !dbg !1599
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBK_.exit26.i, label %.lr.ph.i19.i, !dbg !1599

bb.h:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = icmp eq i64 %i.ap, %i.u, !dbg !1599
  br i1 %i.aw, label %common.resume.i, label %.lr.ph13.i22.i, !dbg !1599

.lr.ph13.i22.i:                                   ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i24.i
  %.sroa.0.111.i23.i = phi i64 [ %i.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i24.i ], [ %i.ap, %bb.h ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [176 x i8], ptr %i.t, i64 %.sroa.0.111.i23.i, !dbg !1599 ; 2 uses
  %i.ay = add i64 %.sroa.0.111.i23.i, 1, !dbg !1599 ; 2 uses
    #dbg_value(ptr %i.ax, !1543, !DIExpression(), !1615)
    #dbg_value(ptr %i.ax, !1551, !DIExpression(), !1617)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !1619
  %i.ba = load i32, ptr %i.az, align 8, !dbg !1619, !range !1562, !alias.scope !1620, !noundef !14
  %i.bb = icmp samesign ult i32 %i.ba, 1000000000, !dbg !1619
  br i1 %i.bb, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i24.i, !dbg !1619

bb.i:                                             ; preds = %.lr.ph13.i22.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24, !dbg !1619
    #dbg_value(ptr %i.bc, !1570, !DIExpression(), !1625)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i24.i unwind label %bb.j, !dbg !1627

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit9.i24.i: ; preds = %bb.i, %.lr.ph13.i22.i
  %i.bd = icmp eq i64 %i.ay, %i.u, !dbg !1599
  br i1 %i.bd, label %common.resume.i, label %.lr.ph13.i22.i, !dbg !1599

bb.j:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !1599
  unreachable, !dbg !1599

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBK_.exit26.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBJ_.exit.i21.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBK_.exit.i, %bb.a
    #dbg_value(ptr %.0.val, !1628, !DIExpression(), !1635)
  %i.bf = load ptr, ptr %.0.val, align 8, !dbg !1637, !nonnull !14, !noundef !14 ; 5 uses
    #dbg_value(ptr %i.bf, !1323, !DIExpression(), !1638)
    #dbg_value(ptr %i.bf, !1378, !DIExpression(), !1639)
    #dbg_value(ptr %i.bf, !1369, !DIExpression(), !1640)
    #dbg_value(ptr %i.bf, !1362, !DIExpression(), !1641)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !1642
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !1642, !noundef !14 ; 2 uses
    #dbg_value(i64 %i.bh, !1326, !DIExpression(), !1643)
    #dbg_value(i64 %i.bh, !1379, !DIExpression(), !1639)
    #dbg_value(i64 %i.bh, !1371, !DIExpression(), !1640)
    #dbg_value(i64 %i.bh, !1644, !DIExpression(), !1652)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24, !dbg !1654 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !1654, !noundef !14 ; 4 uses
    #dbg_value(i64 %i.bj, !1328, !DIExpression(), !1655)
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !1656
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !1656, !noundef !14 ; 4 uses
    #dbg_value(i64 %i.bl, !1330, !DIExpression(), !1657)
  %i.bm = add i64 %i.bl, %i.bj, !dbg !1658        ; 2 uses
    #dbg_value(i64 %i.bm, !1332, !DIExpression(), !1659)
  %i.bn = icmp eq i64 %i.bj, 0, !dbg !1660
  %i.bo = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.bn, %i.bo, !dbg !1660
  br i1 %or.cond.i, label %bb.k, label %bb.l, !dbg !1660, !prof !1661

bb.k:                                             ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBK_.exit26.i
  %i.bp = icmp eq i64 %i.bm, 0, !dbg !1662
  br i1 %i.bp, label %bb.m, label %bb.n, !dbg !1662

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketEBK_.exit26.i
  tail call fastcc void @_RINvNvXNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketNtNtBh_5alloc6GlobalEB34_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bf, i64 noundef %i.bh, i64 noundef %i.bj, i64 noundef %i.bl), !dbg !1663
  br label %bb.k, !dbg !1663

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 16, !dbg !1664
  store i64 0, ptr %i.bq, align 8, !dbg !1664
  br label %_RNvXNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketNtNtBe_5alloc6GlobalEB1g_4dropB2m_.exit, !dbg !1665

bb.n:                                             ; preds = %bb.k
  %i.br = icmp ult i64 %i.bj, %i.bl, !dbg !1666
  br i1 %i.br, label %bb.o, label %_RNvXNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketNtNtBe_5alloc6GlobalEB1g_4dropB2m_.exit, !dbg !1666

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 16, !dbg !1667 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !1667, !noundef !14
    #dbg_value(i64 %i.bt, !1370, !DIExpression(), !1640)
    #dbg_value(i64 %i.bt, !1651, !DIExpression(), !1652)
  %i.bu = add i64 %i.bt, %i.bh, !dbg !1668        ; 2 uses
    #dbg_value(i64 %i.bu, !1669, !DIExpression(), !1675)
    #dbg_value(ptr %i.bf, !1353, !DIExpression(), !1677)
  %i.bv = load i64, ptr %i.bf, align 8, !dbg !1678, !range !1679, !noundef !14 ; 2 uses
    #dbg_value(i64 %i.bv, !1674, !DIExpression(), !1675)
  %.not.i = icmp ult i64 %i.bu, %i.bv, !dbg !1680
  %i.bw = select i1 %.not.i, i64 0, i64 %i.bv, !dbg !1680
  %.sroa.0.0.i = sub nuw i64 %i.bu, %i.bw, !dbg !1680
  store i64 %.sroa.0.0.i, ptr %i.bs, align 8, !dbg !1681
  br label %_RNvXNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketNtNtBe_5alloc6GlobalEB1g_4dropB2m_.exit, !dbg !1682

_RNvXNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion8recovery10SentPacketNtNtBe_5alloc6GlobalEB1g_4dropB2m_.exit: ; preds = %bb.m, %bb.n, %bb.o
  store i64 %i.bm, ptr %i.bi, align 8, !dbg !1683
  ret void, !dbg !1684
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1685 {
bb.a:
    #dbg_value(ptr %0, !1690, !DIExpression(), !1691)
  %i.a = load i64, ptr %0, align 8, !dbg !1692, !range !1693, !noundef !14 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !1692
  tail call void @llvm.assume(i1 %i.b), !dbg !1692
  %i.c = add nsw i64 %i.a, -2, !dbg !1692
  %.inv = icmp samesign ult i64 %i.a, 2, !dbg !1692
  %i.d = select i1 %.inv, i64 2, i64 %i.c, !dbg !1692
  switch i64 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit [
    i64 2, label %bb.b
    i64 5, label %bb.e
    i64 7, label %bb.g
    i64 8, label %bb.j
    i64 18, label %bb.l
    i64 22, label %bb.o
    i64 23, label %bb.r
    i64 25, label %bb.u
  ], !dbg !1692

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit: ; preds = %bb.k, %bb.j, %bb.f, %bb.e, %bb.d, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit, %bb.a
  ret void, !dbg !1692

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !1694, !DIExpression(), !1702)
  %1 = icmp eq i64 %i.a, 0, !dbg !1704
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1704 ; 2 uses
  br i1 %1, label %bb.c, label %bb.d, !dbg !1704

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.e, !1705, !DIExpression(), !1713)
    #dbg_value(ptr %i.e, !1715, !DIExpression(), !1723)
  tail call void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !dbg !1725
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit, !dbg !1704

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %i.e, !1726, !DIExpression(), !1734)
    #dbg_value(ptr %i.e, !1736, !DIExpression(), !1744)
  tail call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e), !dbg !1746
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit, !dbg !1704

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1692 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747), !dbg !1692
    #dbg_value(ptr %i.f, !1750, !DIExpression(), !1758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1760), !dbg !1763
    #dbg_value(ptr %i.f, !1764, !DIExpression(), !1772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774), !dbg !1777
    #dbg_value(ptr %i.f, !1778, !DIExpression(), !1786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788), !dbg !1791
    #dbg_value(ptr %i.f, !1792, !DIExpression(), !1797)
    #dbg_value(ptr %i.f, !1799, !DIExpression(), !1810)
    #dbg_value(i64 1, !1812, !DIExpression(), !1822)
    #dbg_value(i8 1, !1821, !DIExpression(), !1822)
    #dbg_value(i64 1, !1824, !DIExpression(), !1834)
    #dbg_value(i8 1, !1831, !DIExpression(), !1834)
  %i.g = load ptr, ptr %i.f, align 8, !dbg !1836, !alias.scope !1843, !nonnull !14, !noundef !14
    #dbg_value(ptr %i.g, !1820, !DIExpression(), !1844)
    #dbg_value(ptr %i.g, !1830, !DIExpression(), !1834)
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !1845, !noalias !1843
  %i.i = icmp eq i64 %i.h, 1, !dbg !1846
  br i1 %i.i, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit, !dbg !1846

bb.f:                                             ; preds = %bb.e
    #dbg_value(i8 2, !1847, !DIExpression(), !1852)
  fence acquire, !dbg !1854
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f) #21, !dbg !1855
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit, !dbg !1855

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1692 ; 3 uses
    #dbg_value(ptr %i.j, !1856, !DIExpression(), !1864)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit unwind label %bb.h, !dbg !1866

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.j, !1867, !DIExpression(), !1875)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.i, !dbg !1877

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !1866
  unreachable, !dbg !1866

common.resume:                                    ; preds = %bb.v, %bb.s, %bb.p, %bb.m, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.s ], [ %i.k, %bb.h ], [ %i.r, %bb.m ], [ %i.u, %bb.p ], [ %i.aa, %bb.v ]
  resume { ptr, i32 } %common.resume.op, !dbg !1878

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit: ; preds = %bb.g
    #dbg_value(ptr %i.j, !1867, !DIExpression(), !1879)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !dbg !1881
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit, !dbg !1692

bb.j:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1692 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1882), !dbg !1692
    #dbg_value(ptr %i.m, !1750, !DIExpression(), !1885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1887), !dbg !1890
    #dbg_value(ptr %i.m, !1764, !DIExpression(), !1891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1893), !dbg !1896
    #dbg_value(ptr %i.m, !1778, !DIExpression(), !1897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1899), !dbg !1902
    #dbg_value(ptr %i.m, !1792, !DIExpression(), !1903)
    #dbg_value(ptr %i.m, !1799, !DIExpression(), !1905)
    #dbg_value(i64 1, !1812, !DIExpression(), !1907)
    #dbg_value(i8 1, !1821, !DIExpression(), !1907)
    #dbg_value(i64 1, !1824, !DIExpression(), !1909)
    #dbg_value(i8 1, !1831, !DIExpression(), !1909)
  %i.n = load ptr, ptr %i.m, align 8, !dbg !1911, !alias.scope !1913, !nonnull !14, !noundef !14
    #dbg_value(ptr %i.n, !1820, !DIExpression(), !1914)
    #dbg_value(ptr %i.n, !1830, !DIExpression(), !1909)
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !dbg !1915, !noalias !1913
  %i.p = icmp eq i64 %i.o, 1, !dbg !1916
  br i1 %i.p, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit, !dbg !1916

bb.k:                                             ; preds = %bb.j
    #dbg_value(i8 2, !1847, !DIExpression(), !1917)
  fence acquire, !dbg !1919
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m) #21, !dbg !1920
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit, !dbg !1920

bb.l:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1692 ; 3 uses
    #dbg_value(ptr %i.q, !1856, !DIExpression(), !1921)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit3 unwind label %bb.m, !dbg !1923

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.q, !1867, !DIExpression(), !1924)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.n, !dbg !1926

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !1923
  unreachable, !dbg !1923

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit3: ; preds = %bb.l
    #dbg_value(ptr %i.q, !1867, !DIExpression(), !1927)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q), !dbg !1929
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit, !dbg !1692

bb.o:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1692 ; 3 uses
    #dbg_value(ptr %i.t, !1856, !DIExpression(), !1930)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit5 unwind label %bb.p, !dbg !1932

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.t, !1867, !DIExpression(), !1933)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.q, !dbg !1935

bb.q:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !1932
  unreachable, !dbg !1932

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit5: ; preds = %bb.o
    #dbg_value(ptr %i.t, !1867, !DIExpression(), !1936)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t), !dbg !1938
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit, !dbg !1692

bb.r:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1692 ; 3 uses
    #dbg_value(ptr %i.w, !1856, !DIExpression(), !1939)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit7 unwind label %bb.s, !dbg !1941

bb.s:                                             ; preds = %bb.r
  %i.x = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.w, !1867, !DIExpression(), !1942)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.t, !dbg !1944

bb.t:                                             ; preds = %bb.s
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !1941
  unreachable, !dbg !1941

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit7: ; preds = %bb.r
    #dbg_value(ptr %i.w, !1867, !DIExpression(), !1945)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w), !dbg !1947
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit, !dbg !1692

bb.u:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1692 ; 3 uses
    #dbg_value(ptr %i.z, !1856, !DIExpression(), !1948)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit9 unwind label %bb.v, !dbg !1950

bb.v:                                             ; preds = %bb.u
  %i.aa = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.z, !1867, !DIExpression(), !1951)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.w, !dbg !1953

bb.w:                                             ; preds = %bb.v
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !dbg !1950
  unreachable, !dbg !1950

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche.exit9: ; preds = %bb.u
    #dbg_value(ptr %i.z, !1867, !DIExpression(), !1954)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z), !dbg !1956
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetEBF_.exit, !dbg !1692
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs3f36owOmepS_6quiche8recovery10congestion8recovery13RecoveryEpochEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1957 {
bb.a:
    #dbg_value(ptr %0, !1962, !DIExpression(), !1965)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1966 ; 3 uses
    #dbg_value(ptr %i.a, !1967, !DIExpression(), !1975)
end_hunk_0
begin_hunk_1_@_RNvMNtCs3f36owOmepS_6quiche11flowcontrolNtB2_11FlowControl15autotune_window:bb.a
  %i.k = shl nuw nsw i32 %4, 1, !dbg !2401        ; 2 uses
    #dbg_value(i32 %i.k, !2337, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2373)
  %.cmp = icmp samesign ult i32 %4, 500000000, !dbg !2402
  %.urem = add nsw i32 %i.k, -1000000000, !dbg !2402
  %i.l = select i1 %.cmp, i32 %i.k, i32 %.urem, !dbg !2402
    #dbg_value(i32 %i.l, !2341, !DIExpression(), !2381)
    #dbg_value(i32 %i.l, !2226, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2262)
    #dbg_value(i64 %i.j, !2226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2262)
  %i.m = extractvalue { i64, i32 } %i.e, 0, !dbg !2304 ; 2 uses
    #dbg_value(ptr poison, !2300, !DIExpression(), !2403)
    #dbg_value(ptr poison, !2317, !DIExpression(), !2318)
    #dbg_value(ptr poison, !2326, !DIExpression(), !2329)
  %i.n = icmp eq i64 %i.m, %i.j, !dbg !2329
  %i.o = icmp ult i64 %i.m, %i.j, !dbg !2404
  %i.p = icmp samesign ult i32 %i.g, %i.l
  %spec.select = select i1 %i.n, i1 %i.p, i1 %i.o, !dbg !2329
    #dbg_value(i8 poison, !2287, !DIExpression(), !2423)
    #dbg_value(i8 poison, !2288, !DIExpression(), !2424)
    #dbg_value(i8 poison, !2408, !DIExpression(), !2425)
  br i1 %spec.select, label %bb.e, label %bb.c, !dbg !2304

select.unfold:                                    ; preds = %bb.b
    #dbg_value(i64 poison, !2226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2262)
    #dbg_value(i32 -1, !2226, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2262)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !dbg !2426
  unreachable, !dbg !2426

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2427 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !2427, !noundef !14
  %i.s = shl i64 %i.r, 1, !dbg !2427
    #dbg_value(ptr %0, !2428, !DIExpression(), !2435)
    #dbg_value(i64 %i.s, !2434, !DIExpression(), !2435)
    #dbg_value(i64 %i.s, !2437, !DIExpression(), !2443)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2445
  %i.u = load i64, ptr %i.t, align 8, !dbg !2445, !alias.scope !2446, !noundef !14
    #dbg_value(i64 %i.u, !2442, !DIExpression(), !2443)
    #dbg_value(ptr undef, !2449, !DIExpression(DW_OP_deref), !2456)
    #dbg_value(ptr undef, !2453, !DIExpression(DW_OP_deref), !2456)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %i.s), !dbg !2458
  store i64 %..i.i, ptr %i.q, align 8, !dbg !2459, !alias.scope !2446
  br label %bb.c, !dbg !2460
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCs3f36owOmepS_6quiche11flowcontrolNtB2_11FlowControl25ensure_window_lower_bound(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !2461 {
bb.a:
    #dbg_value(ptr %0, !2464, !DIExpression(), !2466)
    #dbg_value(i64 %1, !2465, !DIExpression(), !2466)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2467 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !2467, !noundef !14
  %i.c = icmp ugt i64 %1, %i.b, !dbg !2468
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !2468

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2428, !DIExpression(), !2469)
    #dbg_value(i64 %1, !2434, !DIExpression(), !2469)
    #dbg_value(i64 %1, !2437, !DIExpression(), !2471)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2473
  %i.e = load i64, ptr %i.d, align 8, !dbg !2473, !alias.scope !2474, !noundef !14
    #dbg_value(i64 %i.e, !2442, !DIExpression(), !2471)
    #dbg_value(i64 %1, !2449, !DIExpression(), !2477)
    #dbg_value(i64 %1, !2449, !DIExpression(), !2477)
    #dbg_value(i64 %i.e, !2453, !DIExpression(), !2477)
    #dbg_value(i64 %i.e, !2453, !DIExpression(), !2477)
    #dbg_value(ptr undef, !2449, !DIExpression(DW_OP_deref), !2477)
    #dbg_value(ptr undef, !2453, !DIExpression(DW_OP_deref), !2477)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %1), !dbg !2479
  store i64 %..i.i, ptr %i.a, align 8, !dbg !2480, !alias.scope !2474
  br label %bb.c, !dbg !2481

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !2482
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs3f36owOmepS_6quiche11flowcontrolNtB2_11FlowControl3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 32), (40, 44)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !2483 {
bb.a:
    #dbg_value(i64 %1, !2488, !DIExpression(), !2491)
    #dbg_value(i64 %2, !2489, !DIExpression(), !2491)
    #dbg_value(i64 %2, !2492, !DIExpression(), !2496)
    #dbg_value(i64 %3, !2490, !DIExpression(), !2491)
    #dbg_value(i64 %3, !2495, !DIExpression(), !2496)
    #dbg_value(i64 %2, !2449, !DIExpression(), !2498)
    #dbg_value(i64 %2, !2449, !DIExpression(), !2498)
    #dbg_value(i64 %3, !2453, !DIExpression(), !2498)
    #dbg_value(i64 %3, !2453, !DIExpression(), !2498)
    #dbg_value(ptr undef, !2449, !DIExpression(DW_OP_deref), !2498)
    #dbg_value(ptr undef, !2453, !DIExpression(DW_OP_deref), !2498)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %2), !dbg !2500
  store i64 0, ptr %0, align 8, !dbg !2501
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2501
  store i64 %1, ptr %i.a, align 8, !dbg !2501
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2501
  store i64 %..i, ptr %i.b, align 8, !dbg !2501
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2501
  store i64 %3, ptr %i.c, align 8, !dbg !2501
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2501
  store i32 -1, ptr %i.d, align 8, !dbg !2501
  ret void, !dbg !2502
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i32 } @_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration13from_secs_f64(double noundef %0) unnamed_addr #0 !dbg !2503 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
    #dbg_value(double %0, !2509, !DIExpression(), !2597)
    #dbg_declare(ptr %i.b, !2512, !DIExpression(), !2598)
    #dbg_value(double %0, !2599, !DIExpression(), !2684)
    #dbg_value(double %0, !2686, !DIExpression(), !2694)
    #dbg_value(i32 96, !2633, !DIExpression(), !2696)
    #dbg_value(i128 79228162514264337593543950335, !2640, !DIExpression(), !2697)
    #dbg_value(i128 39614081257132168796771975168, !2642, !DIExpression(), !2698)
    #dbg_value(i32 52, !2660, !DIExpression(), !2699)
    #dbg_value(i128 4503599627370495, !2666, !DIExpression(), !2700)
    #dbg_value(i128 2251799813685248, !2668, !DIExpression(), !2701)
  %i.c = fcmp olt double %0, 0.000000e+00, !dbg !2702
  br i1 %i.c, label %_RNvMsc_NtCskKLDkoKarTP_4core4timeNtB5_8Duration17try_from_secs_f64.exit, label %bb.b, !dbg !2702

bb.b:                                             ; preds = %bb.a
  %i.d = bitcast double %0 to i64, !dbg !2703     ; 3 uses
    #dbg_value(i64 %i.d, !2620, !DIExpression(), !2704)
  %i.e = and i64 %i.d, 4503599627370495, !dbg !2705
  %i.f = or disjoint i64 %i.e, 4503599627370496, !dbg !2705 ; 3 uses
    #dbg_value(i64 %i.d, !2622, !DIExpression(DW_OP_constu, 4503599627370495, DW_OP_and, DW_OP_constu, 4503599627370496, DW_OP_or, DW_OP_stack_value), !2706)
    #dbg_value(i64 %i.d, !2707, !DIExpression(DW_OP_constu, 4503599627370495, DW_OP_and, DW_OP_constu, 4503599627370496, DW_OP_or, DW_OP_stack_value), !2716)
  %i.g = lshr i64 %i.d, 52, !dbg !2718
  %i.h = trunc nuw nsw i64 %i.g to i16, !dbg !2719
  %i.i = and i16 %i.h, 2047, !dbg !2719           ; 8 uses
  %i.j = add nsw i16 %i.i, -1023, !dbg !2719
    #dbg_value(i16 %i.j, !2624, !DIExpression(), !2720)
  %i.k = icmp samesign ult i16 %i.i, 992, !dbg !2721
  br i1 %i.k, label %bb.m, label %bb.c, !dbg !2721

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i16 %i.i, 1023, !dbg !2722
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !2722

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i16 %i.i, 1075, !dbg !2723
  br i1 %i.m, label %bb.g, label %bb.f, !dbg !2723

bb.e:                                             ; preds = %bb.c
  %i.n = zext nneg i64 %i.f to i128, !dbg !2724
  %i.o = add nsw i16 %i.i, -979, !dbg !2725
  %i.p = zext nneg i16 %i.o to i128, !dbg !2726
  %i.q = shl nuw nsw i128 %i.n, %i.p, !dbg !2726
    #dbg_value(i128 %i.q, !2630, !DIExpression(), !2727)
  %i.r = mul nuw nsw i128 %i.q, 1000000000, !dbg !2728 ; 3 uses
    #dbg_value(i128 %i.r, !2636, !DIExpression(), !2729)
  %i.s = lshr i128 %i.r, 96, !dbg !2730           ; 2 uses
  %i.t = trunc nuw nsw i128 %i.s to i32, !dbg !2730
    #dbg_value(i32 %i.t, !2638, !DIExpression(), !2731)
    #dbg_value(i128 poison, !2644, !DIExpression(), !2732)
    #dbg_value(i1 poison, !2646, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2733)
    #dbg_value(i32 %i.t, !2648, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2734)
  %i.u = and i128 %i.r, 39614081257132168796771975168, !dbg !2735
  %i.v = icmp eq i128 %i.u, 0, !dbg !2735
    #dbg_value(i1 %i.v, !2650, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2736)
  br i1 %i.v, label %bb.l, label %bb.k, !dbg !2737

bb.f:                                             ; preds = %bb.d
  %i.w = icmp samesign ult i16 %i.i, 1087, !dbg !2738
  br i1 %i.w, label %bb.h, label %_RNvMsc_NtCskKLDkoKarTP_4core4timeNtB5_8Duration17try_from_secs_f64.exit, !dbg !2738

bb.g:                                             ; preds = %bb.d
  %i.x = sub nuw nsw i16 1075, %i.i, !dbg !2739
  %i.y = zext nneg i16 %i.x to i64, !dbg !2740
  %i.z = lshr i64 %i.f, %i.y, !dbg !2740
    #dbg_value(i64 %i.z, !2656, !DIExpression(), !2741)
  %i.aa = zext nneg i16 %i.j to i64, !dbg !2742
  %i.ab = shl i64 %i.d, %i.aa, !dbg !2742
  %i.ac = and i64 %i.ab, 4503599627370495, !dbg !2742
    #dbg_value(i64 %i.ac, !2707, !DIExpression(), !2743)
  %i.ad = zext nneg i64 %i.ac to i128, !dbg !2745
    #dbg_value(i128 %i.ad, !2658, !DIExpression(), !2746)
  %i.ae = mul nuw nsw i128 %i.ad, 1000000000, !dbg !2747 ; 3 uses
    #dbg_value(i128 %i.ae, !2662, !DIExpression(), !2748)
  %i.af = lshr i128 %i.ae, 52, !dbg !2749         ; 2 uses
  %i.ag = trunc nuw nsw i128 %i.af to i32, !dbg !2749
    #dbg_value(i32 %i.ag, !2664, !DIExpression(), !2750)
    #dbg_value(i128 poison, !2670, !DIExpression(), !2751)
    #dbg_value(i1 poison, !2672, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2752)
    #dbg_value(i32 %i.ag, !2674, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2753)
  %i.ah = and i128 %i.ae, 2251799813685248, !dbg !2754
  %i.ai = icmp eq i128 %i.ah, 0, !dbg !2754
    #dbg_value(i1 %i.ai, !2676, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2755)
  br i1 %i.ai, label %bb.j, label %bb.i, !dbg !2756

bb.h:                                             ; preds = %bb.f
  %i.aj = add nsw i16 %i.i, -1075, !dbg !2723
  %i.ak = zext nneg i16 %i.aj to i64, !dbg !2757
  %i.al = shl nuw i64 %i.f, %i.ak, !dbg !2757
    #dbg_value(i64 %i.al, !2656, !DIExpression(), !2741)
    #dbg_value(i32 0, !2654, !DIExpression(), !2758)
    #dbg_value(i32 0, !2680, !DIExpression(), !2759)
  br label %bb.m, !dbg !2760

bb.i:                                             ; preds = %bb.g
    #dbg_value(i32 %i.ag, !2674, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2753)
  %i.am = trunc i128 %i.af to i1, !dbg !2761
    #dbg_value(i1 %i.am, !2674, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2753)
  %i.an = and i128 %i.ae, 4503599627369984, !dbg !2762
    #dbg_value(i128 %i.an, !2670, !DIExpression(), !2751)
  %i.ao = icmp ne i128 %i.an, 2251799813685248, !dbg !2763
    #dbg_value(i1 %i.ao, !2672, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2752)
  %spec.select.not.i = or i1 %i.ao, %i.am, !dbg !2764
  %i.ap = zext i1 %spec.select.not.i to i32, !dbg !2765
  br label %bb.j, !dbg !2766

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.01.0.i = phi i32 [ 0, %bb.g ], [ %i.ap, %bb.i ], !dbg !2751
    #dbg_value(i8 poison, !2672, !DIExpression(), !2752)
    #dbg_value(i32 %.sroa.01.0.i, !2678, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2767)
  %i.aq = add nuw nsw i32 %.sroa.01.0.i, %i.ag, !dbg !2768 ; 2 uses
    #dbg_value(i32 %i.aq, !2654, !DIExpression(), !2758)
    #dbg_value(i32 %i.aq, !2680, !DIExpression(), !2759)
  %i.ar = icmp eq i32 %i.aq, 1000000000, !dbg !2769 ; 2 uses
  %i.as = zext i1 %i.ar to i64, !dbg !2769
  %spec.select37.i = add nuw nsw i64 %i.z, %i.as, !dbg !2769
  %spec.select38.i = select i1 %i.ar, i32 0, i32 %i.aq, !dbg !2769
  br label %bb.m, !dbg !2769

bb.k:                                             ; preds = %bb.e
    #dbg_value(i32 %i.t, !2648, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_lit0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2734)
  %i.at = trunc i128 %i.s to i1, !dbg !2770
    #dbg_value(i1 %i.at, !2648, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2734)
  %i.au = and i128 %i.r, 79228162514264337593543949824, !dbg !2771
    #dbg_value(i128 %i.au, !2644, !DIExpression(), !2732)
  %i.av = icmp ne i128 %i.au, 39614081257132168796771975168, !dbg !2772
    #dbg_value(i1 %i.av, !2646, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2733)
  %spec.select39.not.i = or i1 %i.av, %i.at, !dbg !2773
  %i.aw = zext i1 %spec.select39.not.i to i32, !dbg !2774
  br label %bb.l, !dbg !2775

bb.l:                                             ; preds = %bb.k, %bb.e
  %.sroa.0.0.i = phi i32 [ 0, %bb.e ], [ %i.aw, %bb.k ], !dbg !2732
    #dbg_value(i8 poison, !2646, !DIExpression(), !2733)
    #dbg_value(i32 %.sroa.0.0.i, !2652, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2776)
  %i.ax = add nuw nsw i32 %.sroa.0.0.i, %i.t, !dbg !2777 ; 2 uses
    #dbg_value(i32 %i.ax, !2654, !DIExpression(), !2758)
    #dbg_value(i32 %i.ax, !2680, !DIExpression(), !2759)
  %i.ay = icmp eq i32 %i.ax, 1000000000, !dbg !2778 ; 2 uses
  %..i = zext i1 %i.ay to i64, !dbg !2779
  %.40.i = select i1 %i.ay, i32 0, i32 %i.ax, !dbg !2779
  br label %bb.m, !dbg !2779

_RNvMsc_NtCskKLDkoKarTP_4core4timeNtB5_8Duration17try_from_secs_f64.exit: ; preds = %bb.a, %bb.f
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 1, %bb.f ], !dbg !2684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2780
  store i8 %.sroa.0.0, ptr %i.b, align 1, !dbg !2780
    #dbg_value(ptr %i.b, !2517, !DIExpression(), !2781)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2782
  store ptr %i.b, ptr %i.a, align 8, !dbg !2782
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2782
  store ptr @_RNvXsb_NtCskKLDkoKarTP_4core4timeNtB5_21TryFromFloatSecsErrorNtNtB7_3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !2782
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !dbg !2783
  unreachable, !dbg !2783

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.j, %bb.b
  %.sroa.0.0.ph = phi i64 [ 0, %bb.b ], [ %spec.select37.i, %bb.j ], [ %..i, %bb.l ], [ %i.al, %bb.h ]
  %.sroa.02.0.sink.i.ph = phi i32 [ 0, %bb.b ], [ %spec.select38.i, %bb.j ], [ %.40.i, %bb.l ], [ 0, %bb.h ]
  %i.az = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.ph, 0, !dbg !2784
  %i.ba = insertvalue { i64, i32 } %i.az, i32 %.sroa.02.0.sink.i.ph, 1, !dbg !2784
  ret { i64, i32 } %i.ba, !dbg !2784
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RNvMNtNtCs3f36owOmepS_6quiche8recovery15bytes_in_flightNtB2_13BytesInFlight12get_duration(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 !dbg !2785 {
bb.a:
    #dbg_declare(ptr poison, !2800, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2806)
    #dbg_value(ptr %0, !2799, !DIExpression(), !2816)
    #dbg_value(ptr @5, !2803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2817)
    #dbg_value(i64 30, !2803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2817)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2815
  %i.b = load i64, ptr %i.a, align 8, !dbg !2815, !noundef !14 ; 2 uses
    #dbg_value(i64 %i.b, !2813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2818)
    #dbg_value(i32 poison, !2813, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2818)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2819
  %i.d = load i64, ptr %i.c, align 8, !dbg !2819, !noundef !14
    #dbg_value(i64 %i.d, !2814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2818)
    #dbg_value(i32 poison, !2814, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2818)
    #dbg_value(i64 %i.b, !2820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2833)
    #dbg_value(i32 poison, !2820, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2833)
    #dbg_value(i64 %i.d, !2826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2833)
    #dbg_value(i32 poison, !2826, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2833)
    #dbg_value(i64 1, !2835, !DIExpression(), !2840)
    #dbg_value(i64 %i.b, !2838, !DIExpression(), !2842)
    #dbg_value(i64 %i.d, !2839, !DIExpression(), !2842)
  %i.e = add i64 %i.d, %i.b, !dbg !2844           ; 4 uses
  %i.f = icmp ult i64 %i.e, %i.b, !dbg !2844
    #dbg_value(i1 %i.f, !2845, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2848)
  br i1 %i.f, label %bb.f, label %bb.b, !dbg !2850, !prof !2394

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2819
  %i.h = load i32, ptr %i.g, align 8, !dbg !2819, !range !2851, !noundef !14
    #dbg_value(i32 %i.h, !2814, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2818)
    #dbg_value(i32 %i.h, !2826, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2833)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2815
  %i.j = load i32, ptr %i.i, align 8, !dbg !2815, !range !2851, !noundef !14
    #dbg_value(i32 %i.j, !2813, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2818)
    #dbg_value(i32 %i.j, !2820, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2833)
    #dbg_value(i64 %i.e, !2827, !DIExpression(), !2852)
    #dbg_value(i64 %i.e, !2838, !DIExpression(), !2840)
  %i.k = add nuw nsw i32 %i.j, %i.h, !dbg !2853   ; 3 uses
    #dbg_value(i32 %i.k, !2829, !DIExpression(), !2854)
  %i.l = icmp samesign ugt i32 %i.k, 999999999, !dbg !2855
  br i1 %i.l, label %bb.c, label %bb.e, !dbg !2855

bb.c:                                             ; preds = %bb.b
    #dbg_value(i32 %i.k, !2829, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !2854)
  %i.m = icmp eq i64 %i.e, -1, !dbg !2856
    #dbg_value(i1 %i.m, !2845, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2857)
  br i1 %i.m, label %bb.f, label %bb.d, !dbg !2860, !prof !2394

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.e, 1, !dbg !2856
  %i.o = add nsw i32 %i.k, -1000000000, !dbg !2861
    #dbg_value(i32 %i.o, !2829, !DIExpression(), !2854)
    #dbg_value(i64 %i.n, !2827, !DIExpression(), !2852)
    #dbg_value(i64 %i.n, !2838, !DIExpression(), !2840)
  br label %bb.e, !dbg !2862

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.i = phi i32 [ %i.o, %bb.d ], [ %i.k, %bb.b ], !dbg !2833
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.d ], [ %i.e, %bb.b ], !dbg !2833
  %i.p = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i, 0, !dbg !2863
  %i.q = insertvalue { i64, i32 } %i.p, i32 %.sroa.4.0.i, 1, !dbg !2863
    #dbg_value(i64 poison, !2800, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2817)
    #dbg_value(i32 %.sroa.4.0.i, !2800, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2817)
  ret { i64, i32 } %i.q, !dbg !2864

bb.f:                                             ; preds = %bb.c, %bb.a
    #dbg_value(i64 poison, !2800, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2817)
    #dbg_value(i32 -1, !2800, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2817)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22, !dbg !2865
  unreachable, !dbg !2865
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs3f36owOmepS_6quiche8recovery15bytes_in_flightNtB2_13BytesInFlight19saturating_subtract(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #1 !dbg !2866 {
bb.a:
    #dbg_value(ptr %0, !2872, !DIExpression(), !2875)
    #dbg_value(i64 %1, !2873, !DIExpression(), !2875)
    #dbg_value(i64 %1, !2876, !DIExpression(), !2880)
    #dbg_value(i64 %2, !2874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2875)
    #dbg_value(i32 %3, !2874, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2875)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2882 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !2882, !noundef !14 ; 2 uses
    #dbg_value(i64 %i.b, !2879, !DIExpression(), !2880)
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %1), !dbg !2883
  store i64 %i.c, ptr %i.a, align 8, !dbg !2884
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2885), !dbg !2888
    #dbg_declare(ptr poison, !2889, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2895)
    #dbg_value(ptr %0, !2917, !DIExpression(), !2921)
    #dbg_value(i64 %2, !2918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2921)
    #dbg_value(i32 %3, !2918, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2921)
    #dbg_value(ptr @5, !2892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2922)
    #dbg_value(i64 30, !2892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2922)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2923 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !dbg !2923, !range !2306, !alias.scope !2885, !noundef !14 ; 3 uses
  %.not.i = icmp eq i32 %i.e, -1, !dbg !2923
  br i1 %.not.i, label %_RNvMNtNtCs3f36owOmepS_6quiche8recovery15bytes_in_flightNtB2_13BytesInFlight25update_in_flight_duration.exit, label %bb.b, !dbg !2924

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !dbg !2925, !alias.scope !2885, !noundef !14 ; 2 uses
    #dbg_value(i64 %i.f, !2919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2926)
    #dbg_value(i32 %i.e, !2919, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2926)
  %.not = icmp ugt i64 %i.b, %1, !dbg !2927
  br i1 %.not, label %bb.g, label %bb.c, !dbg !2927

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2928
  store i64 0, ptr %i.g, align 8, !dbg !2928, !alias.scope !2885
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2928
  store i32 0, ptr %i.h, align 8, !dbg !2928, !alias.scope !2885
    #dbg_value(ptr %0, !2908, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2929)
  %i.i = tail call { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, i64 noundef %i.f, i32 noundef %i.e), !dbg !2930, !noalias !2885 ; 2 uses
  %i.j = extractvalue { i64, i32 } %i.i, 0, !dbg !2930
    #dbg_value(i64 %i.j, !2909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2931)
    #dbg_value(i64 %i.j, !2900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2932)
    #dbg_value(i32 poison, !2909, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2931)
    #dbg_value(i32 poison, !2900, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2932)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2933 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !2933, !alias.scope !2885, !noundef !14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2933 ; 2 uses
    #dbg_value(i64 %i.l, !2899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2932)
    #dbg_value(i32 poison, !2899, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2932)
    #dbg_value(i64 %i.l, !2820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2934)
    #dbg_value(i32 poison, !2820, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2934)
    #dbg_value(i64 %i.j, !2826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2934)
    #dbg_value(i32 poison, !2826, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2934)
    #dbg_value(i64 1, !2835, !DIExpression(), !2936)
    #dbg_value(i64 %i.l, !2838, !DIExpression(), !2938)
    #dbg_value(i64 %i.j, !2839, !DIExpression(), !2938)
  %i.n = add i64 %i.j, %i.l, !dbg !2940           ; 4 uses
  %i.o = icmp ult i64 %i.n, %i.l, !dbg !2940
    #dbg_value(i1 %i.o, !2845, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2941)
  br i1 %i.o, label %bb.i, label %bb.d, !dbg !2943, !prof !2394

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.m, align 8, !dbg !2933, !range !2851, !alias.scope !2885, !noundef !14
    #dbg_value(i32 %i.p, !2899, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2932)
    #dbg_value(i32 %i.p, !2820, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2934)
  %i.q = extractvalue { i64, i32 } %i.i, 1, !dbg !2930
    #dbg_value(i32 %i.q, !2909, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2931)
    #dbg_value(i32 %i.q, !2900, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2932)
    #dbg_value(i32 %i.q, !2826, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2934)
    #dbg_value(i64 %i.n, !2827, !DIExpression(), !2944)
    #dbg_value(i64 %i.n, !2838, !DIExpression(), !2936)
  %i.r = add nuw nsw i32 %i.p, %i.q, !dbg !2945   ; 3 uses
    #dbg_value(i32 %i.r, !2829, !DIExpression(), !2946)
  %i.s = icmp samesign ugt i32 %i.r, 999999999, !dbg !2947
  br i1 %i.s, label %bb.e, label %bb.h, !dbg !2947

bb.e:                                             ; preds = %bb.d
    #dbg_value(i32 %i.r, !2829, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !2946)
  %i.t = icmp eq i64 %i.n, -1, !dbg !2948
    #dbg_value(i1 %i.t, !2845, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2949)
  br i1 %i.t, label %bb.i, label %bb.f, !dbg !2951, !prof !2394

bb.f:                                             ; preds = %bb.e
  %i.u = add nuw i64 %i.n, 1, !dbg !2948
  %i.v = add nsw i32 %i.r, -1000000000, !dbg !2952
end_hunk_1
