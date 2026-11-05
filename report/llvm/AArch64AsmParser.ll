Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64AsmParser?download=true
inline.NumInlined: 14329
inline.NumDeleted: 2073
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE:bb.a

bb.am:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %.val, i64 1 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 1
  %i.dd = xor i16 %i.dc, 27745
  %i.de = getelementptr i8, ptr %i.db, i64 2
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i16
  %i.dh = xor i16 %i.dg, 108
  %i.di = or i16 %i.dd, %i.dh
  %i.dj = icmp ne i16 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %.not12.i = icmp eq i32 %i.dk, 0
  br i1 %.not12.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit, label %bb.av

bb.an:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %.val, i64 1 ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 1
  %i.dn = xor i16 %i.dm, 25957
  %i.do = getelementptr i8, ptr %i.dl, i64 2
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i16
  %i.dr = xor i16 %i.dq, 112
  %i.ds = or i16 %i.dn, %i.dr
  %i.dt = icmp ne i16 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %.not10.i = icmp eq i32 %i.du, 0
  br i1 %.not10.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit, label %bb.av

bb.ao:                                            ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %.val, i64 1 ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 1
  %i.dx = xor i16 %i.dw, 29300
  %i.dy = getelementptr i8, ptr %i.dv, i64 2
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = zext i8 %i.dz to i16
  %i.eb = xor i16 %i.ea, 109
  %i.ec = or i16 %i.dx, %i.eb
  %i.ed = icmp ne i16 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %.not8.i = icmp eq i32 %i.ee, 0
  br i1 %.not8.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit, label %bb.av

bb.ap:                                            ; preds = %bb.ah
  %i.ef = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.eg = load i16, ptr %i.ef, align 1
  %i.eh = icmp ne i16 %i.eg, 30823
  %i.ei = zext i1 %i.eh to i32
  %.not6.i = icmp eq i32 %i.ei, 0
  br i1 %.not6.i, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.ej = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !100 ; 2 uses
  %switch.selectcmp42.i = icmp eq i8 %i.ek, 52
  %switch.select43.i = select i1 %switch.selectcmp42.i, i32 88, i32 0
  %switch.selectcmp44.i = icmp eq i8 %i.ek, 50
  %switch.select45.i = select i1 %switch.selectcmp44.i, i32 87, i32 %switch.select43.i
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

bb.ar:                                            ; preds = %bb.c
  %i.el = load i8, ptr %.val, align 1, !tbaa !100
  switch i8 %i.el, label %bb.av [
    i8 68, label %bb.as
    i8 99, label %bb.at
    i8 100, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.en = load i32, ptr %i.em, align 1
  %i.eo = icmp ne i32 %i.en, 1129208147
  %i.ep = zext i1 %i.eo to i32
  %.not4.i = icmp eq i32 %i.ep, 0
  br i1 %.not4.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit, label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.eq = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.er = load i32, ptr %i.eq, align 1
  %i.es = icmp ne i32 %i.er, 1668184435
  %i.et = zext i1 %i.es to i32
  %.not2.i = icmp eq i32 %i.et, 0
  br i1 %.not2.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit, label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.eu = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.ev = load i32, ptr %i.eu, align 1
  %i.ew = icmp ne i32 %i.ev, 1668184435
  %i.ex = zext i1 %i.ew to i32
  %.not.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i, label %_ZL16matchTokenStringN4llvm9StringRefE.exit, label %bb.av

bb.av:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.r, %bb.p, %bb.g, %bb.f, %bb.d, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.v, %bb.u, %bb.t, %bb.q, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.e, %bb.c
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

switch.lookup.i:                                  ; preds = %bb.q
  %narrow.i = add nsw i8 %i.an, -19
  %switch.offset.i = zext nneg i8 %narrow.i to i32
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

switch.lookup87.i:                                ; preds = %bb.ag
  %i.ey = or disjoint i8 %switch.tableidx86.i, 92
  %switch.offset89.i = zext nneg i8 %i.ey to i32
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

switch.lookup:                                    ; preds = %bb.d
  %i.ez = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE, i64 %i.ez
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

switch.lookup1771:                                ; preds = %bb.f
  %i.fa = zext nneg i8 %switch.tableidx1770 to i64
  %switch.gep1772 = getelementptr inbounds nuw i8, ptr @switch.table._ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.342, i64 %i.fa
  %switch.load1773 = load i8, ptr %switch.gep1772, align 1
  %switch.ext1774 = zext i8 %switch.load1773 to i32
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

switch.lookup1776:                                ; preds = %bb.g
  %i.fb = zext nneg i8 %switch.tableidx1775 to i64
  %switch.gep1777 = getelementptr inbounds nuw i8, ptr @switch.table._ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.343, i64 %i.fb
  %switch.load1778 = load i8, ptr %switch.gep1777, align 1
  %switch.ext1779 = zext i8 %switch.load1778 to i32
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

switch.lookup1781:                                ; preds = %bb.p
  %i.fc = zext nneg i8 %switch.tableidx1780 to i64
  %switch.gep1782 = getelementptr inbounds nuw i8, ptr @switch.table._ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.344, i64 %i.fc
  %switch.load1783 = load i8, ptr %switch.gep1782, align 1
  %switch.ext1784 = zext i8 %switch.load1783 to i32
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

switch.lookup1786:                                ; preds = %bb.r
  %i.fd = zext nneg i8 %switch.tableidx1785 to i64
  %switch.gep1787 = getelementptr inbounds nuw i8, ptr @switch.table._ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.345, i64 %i.fd
  %switch.load1788 = load i8, ptr %switch.gep1787, align 1
  %switch.ext1789 = zext i8 %switch.load1788 to i32
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

switch.lookup1791:                                ; preds = %bb.z
  %i.fe = zext nneg i8 %switch.tableidx1790 to i64
  %switch.gep1792 = getelementptr inbounds nuw i8, ptr @switch.table._ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.346, i64 %i.fe
  %switch.load1793 = load i8, ptr %switch.gep1792, align 1
  %switch.ext1794 = zext i8 %switch.load1793 to i32
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

switch.lookup1796:                                ; preds = %bb.aa
  %i.ff = zext nneg i8 %switch.tableidx1795 to i64
  %switch.gep1797 = getelementptr inbounds nuw i8, ptr @switch.table._ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.347, i64 %i.ff
  %switch.load1798 = load i8, ptr %switch.gep1797, align 1
  %switch.ext1799 = zext i8 %switch.load1798 to i32
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

switch.lookup1801:                                ; preds = %bb.ab
  %i.fg = zext nneg i8 %switch.tableidx1800 to i64
  %switch.gep1802 = getelementptr inbounds nuw i8, ptr @switch.table._ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE.348, i64 %i.fg
  %switch.load1803 = load i8, ptr %switch.gep1802, align 1
  %switch.ext1804 = zext i8 %switch.load1803 to i32
  br label %_ZL16matchTokenStringN4llvm9StringRefE.exit

_ZL16matchTokenStringN4llvm9StringRefE.exit:      ; preds = %switch.lookup1801, %switch.lookup1796, %switch.lookup1791, %switch.lookup1786, %switch.lookup1781, %switch.lookup1776, %switch.lookup1771, %switch.lookup, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.o, %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ac, %bb.ad, %bb.ae, %bb.ai, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.aq, %bb.as, %bb.at, %bb.au, %bb.av, %switch.lookup.i, %switch.lookup87.i
  %.0.i = phi i32 [ 0, %bb.av ], [ 74, %bb.at ], [ %switch.offset89.i, %switch.lookup87.i ], [ %switch.select41.i, %bb.ak ], [ 23, %bb.ai ], [ 82, %bb.ae ], [ 77, %bb.ad ], [ 21, %bb.ac ], [ %switch.ext1804, %switch.lookup1801 ], [ 89, %bb.k ], [ %switch.select33.i, %bb.o ], [ 91, %bb.l ], [ %switch.ext1799, %switch.lookup1796 ], [ %switch.ext, %switch.lookup ], [ 19, %bb.as ], [ 48, %bb.t ], [ %switch.select45.i, %bb.aq ], [ %switch.ext1789, %switch.lookup1786 ], [ %switch.ext1784, %switch.lookup1781 ], [ %switch.ext1794, %switch.lookup1791 ], [ 75, %bb.au ], [ %switch.ext1774, %switch.lookup1771 ], [ 80, %bb.an ], [ 76, %bb.am ], [ 20, %bb.al ], [ 86, %bb.ao ], [ %switch.offset.i, %switch.lookup.i ], [ %switch.select37.i, %bb.s ], [ 3, %bb.v ], [ 55, %bb.y ], [ 54, %bb.x ], [ 4, %bb.w ], [ %switch.ext1779, %switch.lookup1776 ], [ 79, %bb.h ], [ 83, %bb.i ], [ 85, %bb.j ] ; 2 uses
  %i.fh = icmp eq i32 %.0.i, %1
  br i1 %i.fh, label %_ZNK12_GLOBAL__N_114AArch64Operand13isExtendLSL64Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZL16matchTokenStringN4llvm9StringRefE.exit
  %i.fi = zext nneg i32 %.0.i to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = load i16, ptr %i.fk, align 4, !tbaa !393
  %i.fm = zext i16 %i.fl to i32
  %i.fn = sub nsw i32 %1, %i.fm                   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 6
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !394
  %i.fq = zext i16 %i.fp to i32
  %.not.i2201 = icmp ult i32 %i.fn, %i.fq
  br i1 %.not.i2201, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit: ; preds = %bb.aw
  %i.fr = load i32, ptr %i.fj, align 8, !tbaa !395
  %i.fs = add i32 %i.fr, %i.fn                    ; 2 uses
  %i.ft = lshr i32 %i.fs, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !100
  %i.fx = zext i8 %i.fw to i32
  %i.fy = and i32 %i.fs, 7
  %i.fz = lshr i32 %i.fx, %i.fy
  %.fr = freeze i32 %i.fz
  %i.ga = trunc i32 %.fr to i1
  br i1 %i.ga, label %_ZNK12_GLOBAL__N_114AArch64Operand13isExtendLSL64Ev.exit, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.ax:                                            ; preds = %bb.b
  %trunc = trunc nuw i32 %1 to i16                ; 3 uses
  switch i16 %trunc, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread [
    i16 629, label %bb.ay
    i16 630, label %bb.az
    i16 631, label %bb.ba
    i16 632, label %bb.bc
    i16 633, label %bb.be
    i16 634, label %bb.bf
    i16 635, label %bb.bg
    i16 636, label %bb.bi
    i16 637, label %bb.bk
    i16 638, label %bb.bl
    i16 639, label %bb.bm
    i16 640, label %bb.bp
    i16 641, label %bb.br
    i16 642, label %bb.bt
    i16 643, label %bb.bu
    i16 644, label %bb.bv
    i16 645, label %bb.bw
    i16 646, label %bb.bx
    i16 647, label %bb.by
    i16 648, label %bb.bz
    i16 649, label %bb.ca
    i16 650, label %bb.cb
    i16 651, label %bb.cc
    i16 652, label %bb.cd
    i16 653, label %bb.ce
    i16 654, label %bb.cf
    i16 655, label %bb.cg
    i16 656, label %bb.ch
    i16 657, label %bb.ci
    i16 658, label %bb.cj
    i16 659, label %bb.cl
    i16 660, label %bb.cn
    i16 661, label %bb.cp
    i16 662, label %bb.cr
    i16 663, label %bb.ct
    i16 664, label %bb.cv
    i16 665, label %bb.cx
    i16 666, label %bb.cz
    i16 667, label %bb.db
    i16 668, label %bb.dd
    i16 669, label %bb.df
    i16 670, label %bb.dh
    i16 671, label %bb.dj
    i16 672, label %bb.dl
    i16 673, label %bb.dn
    i16 674, label %bb.dp
    i16 675, label %bb.dq
    i16 676, label %bb.dr
    i16 677, label %bb.ds
    i16 678, label %bb.dt
    i16 679, label %bb.du
    i16 680, label %bb.dv
    i16 681, label %bb.dw
    i16 682, label %bb.dx
    i16 683, label %bb.dy
    i16 684, label %bb.dz
    i16 685, label %bb.ea
    i16 686, label %bb.eb
    i16 687, label %bb.ec
    i16 688, label %bb.ed
    i16 689, label %bb.ee
    i16 690, label %bb.ef
    i16 691, label %bb.eg
    i16 692, label %bb.eh
    i16 693, label %bb.ei
    i16 694, label %bb.ej
    i16 695, label %bb.ek
    i16 696, label %bb.em
    i16 697, label %bb.eo
    i16 698, label %bb.eq
    i16 699, label %bb.er
    i16 700, label %bb.es
    i16 701, label %bb.et
    i16 702, label %bb.eu
    i16 703, label %bb.ev
    i16 704, label %bb.ew
    i16 705, label %bb.ex
    i16 706, label %bb.ey
    i16 707, label %bb.ez
    i16 708, label %bb.fa
    i16 709, label %bb.fb
    i16 710, label %bb.fc
    i16 711, label %bb.fd
    i16 712, label %bb.fe
    i16 713, label %bb.ff
    i16 714, label %bb.fg
    i16 715, label %bb.fh
    i16 716, label %bb.fi
    i16 717, label %bb.fj
    i16 718, label %bb.fk
    i16 719, label %bb.fl
    i16 720, label %bb.fm
    i16 721, label %bb.fn
    i16 722, label %bb.fo
    i16 723, label %bb.fp
    i16 724, label %bb.fq
    i16 725, label %bb.fr
    i16 726, label %bb.fs
    i16 727, label %bb.ft
    i16 728, label %bb.fu
    i16 729, label %bb.fv
    i16 730, label %bb.fw
    i16 731, label %bb.fx
    i16 732, label %bb.fy
    i16 733, label %bb.fz
    i16 734, label %bb.ga
    i16 735, label %bb.gb
    i16 736, label %bb.gc
    i16 737, label %bb.gd
    i16 738, label %bb.ge
    i16 739, label %bb.gf
    i16 740, label %bb.gg
    i16 741, label %bb.gh
    i16 742, label %bb.gi
    i16 743, label %bb.gj
    i16 744, label %bb.gk
    i16 745, label %bb.gl
    i16 746, label %bb.gm
    i16 747, label %bb.gn
    i16 748, label %bb.go
    i16 749, label %bb.gq
    i16 750, label %bb.gr
    i16 751, label %bb.gt
    i16 752, label %bb.gv
    i16 753, label %bb.gx
    i16 754, label %bb.gz
    i16 755, label %bb.hb
    i16 756, label %bb.hd
    i16 757, label %bb.he
    i16 758, label %bb.hf
    i16 759, label %bb.hg
    i16 760, label %bb.hh
    i16 761, label %bb.hi
    i16 762, label %bb.hj
    i16 763, label %bb.hk
    i16 764, label %bb.hl
    i16 765, label %bb.hm
    i16 766, label %bb.hn
    i16 767, label %bb.ho
    i16 768, label %bb.hp
    i16 769, label %bb.hq
    i16 770, label %bb.hr
    i16 771, label %bb.ht
    i16 772, label %bb.hv
    i16 773, label %bb.hw
    i16 774, label %bb.hx
    i16 775, label %bb.hy
    i16 776, label %bb.hz
    i16 777, label %bb.ia
    i16 778, label %bb.ib
    i16 779, label %bb.ic
    i16 780, label %bb.id
    i16 781, label %bb.ie
    i16 782, label %bb.if
    i16 783, label %bb.ig
    i16 784, label %bb.ih
    i16 785, label %bb.ii
    i16 786, label %bb.ij
    i16 787, label %bb.ik
    i16 788, label %bb.il
    i16 789, label %bb.im
    i16 790, label %bb.io
    i16 791, label %bb.iq
    i16 792, label %bb.is
    i16 793, label %bb.it
    i16 794, label %bb.iu
    i16 795, label %bb.iv
    i16 796, label %bb.iw
    i16 797, label %bb.ix
    i16 798, label %bb.iy
    i16 799, label %bb.iz
    i16 800, label %bb.ja
    i16 801, label %bb.jb
    i16 802, label %bb.jc
    i16 803, label %bb.jd
    i16 804, label %bb.je
    i16 805, label %bb.jf
    i16 806, label %bb.jg
    i16 807, label %bb.jh
    i16 808, label %bb.ji
    i16 809, label %bb.jj
    i16 810, label %bb.jk
    i16 811, label %bb.jl
    i16 812, label %bb.jm
    i16 813, label %bb.jn
    i16 814, label %bb.jo
    i16 815, label %bb.jp
    i16 816, label %bb.jq
    i16 817, label %bb.jr
    i16 818, label %bb.js
    i16 819, label %bb.jt
    i16 820, label %bb.ju
    i16 821, label %bb.jv
    i16 822, label %bb.jw
    i16 823, label %bb.jx
    i16 824, label %bb.jy
    i16 825, label %bb.jz
    i16 826, label %bb.ka
    i16 827, label %bb.kb
    i16 828, label %bb.kc
    i16 829, label %bb.kd
    i16 830, label %bb.ke
    i16 831, label %bb.kf
    i16 832, label %bb.kg
    i16 833, label %bb.kh
end_hunk_0
begin_hunk_1_@_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE:bb.a
    i16 891, label %bb.mt
    i16 892, label %bb.mu
    i16 893, label %bb.mv
    i16 894, label %bb.mw
    i16 895, label %bb.mx
    i16 896, label %bb.my
    i16 897, label %bb.mz
    i16 898, label %bb.na
    i16 899, label %bb.nb
    i16 900, label %bb.nc
    i16 901, label %bb.nd
    i16 902, label %bb.ne
    i16 903, label %bb.nf
    i16 904, label %bb.ng
    i16 905, label %bb.nh
    i16 906, label %bb.ni
    i16 907, label %bb.nj
    i16 908, label %bb.nk
    i16 909, label %bb.nl
    i16 910, label %bb.nm
    i16 911, label %bb.nn
    i16 912, label %bb.no
    i16 913, label %bb.np
    i16 914, label %bb.nq
    i16 915, label %bb.nr
    i16 916, label %bb.ns
    i16 917, label %bb.nt
    i16 918, label %bb.nu
    i16 919, label %bb.nv
    i16 920, label %bb.nw
    i16 921, label %bb.nx
    i16 922, label %bb.ny
    i16 923, label %bb.nz
    i16 924, label %bb.oa
    i16 925, label %bb.ob
    i16 926, label %bb.oc
    i16 927, label %bb.od
    i16 928, label %bb.oe
    i16 929, label %bb.of
    i16 930, label %bb.og
    i16 931, label %bb.oh
    i16 932, label %bb.oi
    i16 933, label %bb.oj
    i16 934, label %bb.ok
    i16 935, label %bb.ol
    i16 936, label %bb.om
    i16 937, label %bb.on
    i16 938, label %bb.oo
    i16 939, label %bb.op
    i16 940, label %bb.oq
    i16 941, label %bb.or
    i16 942, label %bb.os
    i16 943, label %bb.ot
    i16 944, label %bb.ou
    i16 945, label %bb.ov
    i16 946, label %bb.ow
    i16 947, label %bb.ox
    i16 948, label %bb.oy
    i16 949, label %bb.oz
    i16 950, label %bb.pa
    i16 951, label %bb.pb
    i16 952, label %bb.pc
    i16 953, label %bb.pd
    i16 954, label %bb.pe
    i16 955, label %bb.pf
    i16 956, label %bb.pg
    i16 957, label %bb.ph
    i16 958, label %bb.pi
    i16 959, label %bb.pj
    i16 960, label %bb.pk
    i16 961, label %bb.pl
    i16 962, label %bb.pm
    i16 963, label %bb.pn
    i16 964, label %bb.po
    i16 965, label %bb.pp
    i16 966, label %bb.pq
    i16 967, label %bb.pr
    i16 968, label %bb.ps
    i16 969, label %bb.pt
    i16 970, label %bb.pu
    i16 971, label %bb.pv
    i16 972, label %bb.pw
    i16 973, label %bb.px
    i16 974, label %bb.py
    i16 975, label %bb.pz
    i16 976, label %bb.qa
    i16 977, label %bb.qb
    i16 978, label %bb.qc
    i16 979, label %bb.qd
    i16 980, label %bb.qe
    i16 981, label %bb.qf
    i16 982, label %bb.qg
    i16 983, label %bb.qh
    i16 984, label %bb.qi
    i16 985, label %bb.qj
    i16 986, label %bb.qk
    i16 987, label %bb.ql
    i16 988, label %bb.qm
    i16 989, label %bb.qn
    i16 990, label %bb.qo
    i16 991, label %bb.qp
    i16 992, label %bb.qq
    i16 993, label %bb.qr
    i16 994, label %bb.qs
    i16 995, label %bb.qt
    i16 996, label %bb.qu
    i16 997, label %bb.qv
    i16 998, label %bb.qw
    i16 999, label %bb.qx
    i16 1000, label %bb.qy
    i16 1001, label %bb.qz
    i16 1002, label %bb.ra
    i16 1003, label %bb.rb
    i16 1004, label %bb.rc
    i16 1005, label %bb.rd
    i16 1006, label %bb.re
    i16 1007, label %bb.rf
    i16 1008, label %bb.rh
    i16 1009, label %bb.rj
    i16 1010, label %bb.rl
    i16 1011, label %bb.rm
    i16 1012, label %bb.rn
    i16 1013, label %bb.ro
    i16 1014, label %bb.rp
    i16 1015, label %bb.rq
    i16 1016, label %bb.rr
    i16 1017, label %bb.rs
    i16 1018, label %bb.rt
    i16 1019, label %bb.ru
    i16 1020, label %bb.rv
    i16 1021, label %bb.rw
    i16 1022, label %bb.rx
    i16 1023, label %bb.rz
    i16 1024, label %bb.sc
    i16 1025, label %bb.se
    i16 1026, label %bb.sh
    i16 1027, label %bb.sk
    i16 1028, label %bb.sn
    i16 1029, label %bb.so
    i16 1030, label %bb.sp
    i16 1031, label %bb.sq
    i16 1032, label %bb.sr
    i16 1033, label %bb.ss
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.gb = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand14isAddSubImmNegEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %spec.select = select i1 %i.gb, i32 4, i32 12
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.az:                                            ; preds = %bb.ax
  %i.gc = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand11isAddSubImmEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %spec.select1375 = select i1 %i.gc, i32 4, i32 12
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.ba:                                            ; preds = %bb.ax
  %i.gd = load ptr, ptr %0, align 8, !tbaa !46
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = tail call noundef zeroext i1 %i.gf(ptr noundef nonnull align 8 dereferenceable(112) %0) #23, !inline_history !1895
  br i1 %i.gg, label %bb.bb, label %_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi9EEEbv.exit.thread770

bb.bb:                                            ; preds = %bb.ba
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !100 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !132
  %.not.i2204 = icmp eq i8 %i.gj, 1
  br i1 %.not.i2204, label %_ZNK12_GLOBAL__N_114AArch64Operand10isAdrLabelEv.exit, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZNK12_GLOBAL__N_114AArch64Operand10isAdrLabelEv.exit: ; preds = %bb.bb
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !312
  %i.gm = add i64 %i.gl, 1048576
  %i.gn = icmp ult i64 %i.gm, 2097152
  br i1 %i.gn, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi9EEEbv.exit.thread770

bb.bc:                                            ; preds = %bb.ax
  %i.go = load ptr, ptr %0, align 8, !tbaa !46
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = tail call noundef zeroext i1 %i.gq(ptr noundef nonnull align 8 dereferenceable(112) %0) #23, !inline_history !1896
  br i1 %i.gr, label %bb.bd, label %_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi9EEEbv.exit.thread770

bb.bd:                                            ; preds = %bb.bc
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !100 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !132
  %.not.i2207 = icmp eq i8 %i.gu, 1
  br i1 %.not.i2207, label %_ZNK12_GLOBAL__N_114AArch64Operand11isAdrpLabelEv.exit, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZNK12_GLOBAL__N_114AArch64Operand11isAdrpLabelEv.exit: ; preds = %bb.bd
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !312 ; 2 uses
  %i.gx = and i64 %i.gw, 4095
  %i.gy = icmp eq i64 %i.gx, 0
  %i.gz = add i64 %i.gw, 4294967296
  %i.ha = icmp ult i64 %i.gz, 8589930497
  %spec.select12.i = and i1 %i.gy, %i.ha
  br i1 %spec.select12.i, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi9EEEbv.exit.thread770

bb.be:                                            ; preds = %bb.ax
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2156 = load i32, ptr %2, align 8, !tbaa !141
  %i.hb = getelementptr i8, ptr %0, i64 88
  %.val2157 = load i8, ptr %i.hb, align 8
  %3 = icmp ne i32 %.val2156, 16
  %i.hc = trunc nuw i8 %.val2157 to i1
  %.not1592 = select i1 %3, i1 true, i1 %i.hc
  br i1 %.not1592, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.bf:                                            ; preds = %bb.ax
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2158 = load i32, ptr %i.hd, align 8, !tbaa !141
  %i.he = getelementptr i8, ptr %0, i64 88
  %.val2159 = load i8, ptr %i.he, align 8
  %i.hf = icmp eq i32 %.val2158, 16
  %i.hg = trunc nuw i8 %.val2159 to i1
  %spec.select.i = select i1 %i.hf, i1 %i.hg, i1 false
  br i1 %spec.select.i, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.bg:                                            ; preds = %bb.ax
  %i.hh = load ptr, ptr %0, align 8, !tbaa !46
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = tail call noundef zeroext i1 %i.hj(ptr noundef nonnull align 8 dereferenceable(112) %0) #23, !inline_history !1897
  br i1 %i.hk, label %bb.bh, label %_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi9EEEbv.exit.thread770

bb.bh:                                            ; preds = %bb.bg
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.hl, align 8, !tbaa !100 ; 2 uses
  %i.hm = load i8, ptr %.val.i, align 8, !tbaa !132
  %.not.i2211 = icmp eq i8 %i.hm, 1
  br i1 %.not.i2211, label %_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi14EEEbv.exit, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi14EEEbv.exit: ; preds = %bb.bh
  %i.hn = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !312 ; 2 uses
  %i.hp = and i64 %i.ho, 3
  %.not7.i = icmp eq i64 %i.hp, 0
  %i.hq = add i64 %i.ho, 32768
  %i.hr = icmp ult i64 %i.hq, 65533
  %.0.i2212 = and i1 %.not7.i, %i.hr
  br i1 %.0.i2212, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi9EEEbv.exit.thread770

bb.bi:                                            ; preds = %bb.ax
  %i.hs = load ptr, ptr %0, align 8, !tbaa !46
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = tail call noundef zeroext i1 %i.hu(ptr noundef nonnull align 8 dereferenceable(112) %0) #23, !inline_history !1898
  br i1 %i.hv, label %bb.bj, label %_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi9EEEbv.exit.thread770

bb.bj:                                            ; preds = %bb.bi
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i2215 = load ptr, ptr %i.hw, align 8, !tbaa !100 ; 2 uses
  %i.hx = load i8, ptr %.val.i2215, align 8, !tbaa !132
  %.not.i2216 = icmp eq i8 %i.hx, 1
  br i1 %.not.i2216, label %_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi26EEEbv.exit, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi26EEEbv.exit: ; preds = %bb.bj
  %i.hy = getelementptr inbounds nuw i8, ptr %.val.i2215, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !312 ; 2 uses
  %i.ia = and i64 %i.hz, 3
  %.not7.i2217 = icmp eq i64 %i.ia, 0
  %i.ib = add i64 %i.hz, 134217728
  %i.ic = icmp ult i64 %i.ib, 268435453
  %.0.i2218 = and i1 %.not7.i2217, %i.ic
  br i1 %.0.i2218, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand14isBranchTargetILi9EEEbv.exit.thread770

bb.bk:                                            ; preds = %bb.ax
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2160 = load i32, ptr %i.id, align 8, !tbaa !141
  %i.ie = icmp eq i32 %.val2160, 3
  %spec.select1376 = select i1 %i.ie, i32 4, i32 15
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.bl:                                            ; preds = %bb.ax
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i2221 = load i32, ptr %i.if, align 8, !tbaa !141
  %i.ig = icmp eq i32 %.val.i2221, 14
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.0.i.i = load i32, ptr %i.ih, align 8
  %i.ii = icmp eq i32 %.0.i.i, 0
  %or.cond.i = select i1 %i.ig, i1 %i.ii, i1 false
  br i1 %or.cond.i, label %_ZNK12_GLOBAL__N_114AArch64Operand14isLSLImm3ShiftEv.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand14isLSLImm3ShiftEv.exit.thread

_ZNK12_GLOBAL__N_114AArch64Operand14isLSLImm3ShiftEv.exit: ; preds = %bb.bl
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.0.i3.i = load i32, ptr %i.ij, align 4, !tbaa !100
  %i.ik = icmp ult i32 %.0.i3.i, 8
  br i1 %i.ik, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand14isLSLImm3ShiftEv.exit.thread

_ZNK12_GLOBAL__N_114AArch64Operand14isLSLImm3ShiftEv.exit.thread: ; preds = %bb.bl, %_ZNK12_GLOBAL__N_114AArch64Operand14isLSLImm3ShiftEv.exit
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.bm:                                            ; preds = %bb.ax
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i = load i32, ptr %i.il, align 8, !tbaa !141
  %i.im = icmp eq i32 %.val.i.i, 14
  br i1 %i.im, label %bb.bn, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.bn:                                            ; preds = %bb.bm
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.0.i.i.i = load i32, ptr %i.in, align 8, !tbaa !100 ; 2 uses
  switch i32 %.0.i.i.i, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit [
    i32 12, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i
    i32 11, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i
    i32 10, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i
    i32 9, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i
    i32 8, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i
    i32 7, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i
    i32 6, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i
    i32 5, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i
    i32 0, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i
  ]

_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i: ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.0.i26.i.i = load i32, ptr %i.io, align 4, !tbaa !100
  %i.ip = icmp ult i32 %.0.i26.i.i, 5
  br i1 %i.ip, label %bb.bo, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.bo:                                            ; preds = %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i
  %switch.tableidx1805 = add i32 %.0.i.i.i, -5    ; 2 uses
  %i.iq = icmp ult i32 %switch.tableidx1805, 7
  br i1 %i.iq, label %switch.lookup1806, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.bp:                                            ; preds = %bb.ax
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i2226 = load i32, ptr %i.ir, align 8, !tbaa !141
  %i.is = icmp eq i32 %.val.i.i2226, 14
  br i1 %i.is, label %bb.bq, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.bq:                                            ; preds = %bb.bp
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.0.i.i.i2228 = load i32, ptr %i.it, align 8, !tbaa !100 ; 3 uses
  switch i32 %.0.i.i.i2228, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit [
    i32 12, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i2229
    i32 11, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i2229
    i32 10, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i2229
    i32 9, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i2229
    i32 8, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i2229
    i32 7, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i2229
    i32 6, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i2229
    i32 5, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i2229
    i32 0, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i2229
  ]

_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.i2229: ; preds = %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.0.i26.i.i2230 = load i32, ptr %i.iu, align 4, !tbaa !100
  %i.iv = icmp ult i32 %.0.i26.i.i2230, 5
  %i.iw = icmp ult i32 %.0.i.i.i2228, 13
  %or.cond1814 = and i1 %i.iv, %i.iw
  br i1 %or.cond1814, label %switch.lookup1810, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZNK12_GLOBAL__N_114AArch64Operand13isExtendLSL64Ev.exit: ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit, %_ZL16matchTokenStringN4llvm9StringRefE.exit
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.br:                                            ; preds = %bb.ax
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i2232 = load i32, ptr %i.ix, align 8, !tbaa !141
  %i.iy = icmp eq i32 %.val.i2232, 14
  br i1 %i.iy, label %bb.bs, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.0.i.i2234 = load i32, ptr %i.iz, align 8, !tbaa !100
  switch i32 %.0.i.i2234, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.thread [
    i32 12, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit
    i32 11, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit
    i32 10, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit
    i32 9, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit
    i32 8, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit
    i32 7, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit
    i32 6, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit
    i32 5, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit
    i32 0, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit
  ]

_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit: ; preds = %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.0.i26.i = load i32, ptr %i.ja, align 4, !tbaa !100
  %i.jb = icmp ult i32 %.0.i26.i, 5
  br i1 %i.jb, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.thread

_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit.thread: ; preds = %bb.bs, %bb.br, %_ZNK12_GLOBAL__N_114AArch64Operand8isExtendEv.exit
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.bt:                                            ; preds = %bb.ax
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2161 = load i32, ptr %i.jc, align 8, !tbaa !141
  %i.jd = getelementptr i8, ptr %0, i64 72
  %.val2162 = load i64, ptr %i.jd, align 8
  %i.je = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand7isFPImmEv(i32 %.val2161, i64 %.val2162)
  %spec.select1377 = select i1 %i.je, i32 4, i32 16
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.bu:                                            ; preds = %bb.ax
  %i.jf = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand11isGPR32as64Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br i1 %i.jf, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.bv:                                            ; preds = %bb.ax
  %i.jg = tail call fastcc i32 @_ZNK12_GLOBAL__N_114AArch64Operand22isGPR64WithShiftExtendILj58ELi128EEEN4llvm19DiagnosticPredicateEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  switch i32 %i.jg, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread [
    i32 0, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit
    i32 1, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split
  ]

bb.bw:                                            ; preds = %bb.ax
end_hunk_1
begin_hunk_2_@_ZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoE:bb.a

bb.rq:                                            ; preds = %bb.ax
  %i.aqu = tail call fastcc i32 @_ZNK12_GLOBAL__N_114AArch64Operand24isSVEPreferredLogicalImmIlEEN4llvm19DiagnosticPredicateEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.aqv = icmp eq i32 %i.aqu, 0
  br i1 %i.aqv, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.rr:                                            ; preds = %bb.ax
  %i.aqw = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand12isLogicalImmIaEEbv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %spec.select1416 = select i1 %i.aqw, i32 4, i32 238
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.rs:                                            ; preds = %bb.ax
  %i.aqx = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand12isLogicalImmIsEEbv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %spec.select1417 = select i1 %i.aqx, i32 4, i32 238
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.rt:                                            ; preds = %bb.ax
  %i.aqy = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand12isLogicalImmIiEEbv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %spec.select1418 = select i1 %i.aqy, i32 4, i32 238
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.ru:                                            ; preds = %bb.ax
  %i.aqz = tail call fastcc i32 @_ZNK12_GLOBAL__N_114AArch64Operand12isExactFPImmILj1ELj2EEEN4llvm19DiagnosticPredicateEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  switch i32 %i.aqz, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread [
    i32 0, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit
    i32 1, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1756.a
  ]

bb.rv:                                            ; preds = %bb.ax
  %i.ara = tail call fastcc i32 @_ZNK12_GLOBAL__N_114AArch64Operand12isExactFPImmILj1ELj3EEEN4llvm19DiagnosticPredicateEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  switch i32 %i.ara, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread [
    i32 0, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit
    i32 1, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1757.a
  ]

bb.rw:                                            ; preds = %bb.ax
  %i.arb = tail call fastcc i32 @_ZNK12_GLOBAL__N_114AArch64Operand12isExactFPImmILj0ELj2EEEN4llvm19DiagnosticPredicateEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  switch i32 %i.arb, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread [
    i32 0, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit
    i32 1, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1758
  ]

bb.rx:                                            ; preds = %bb.ax
  %i.arc = load ptr, ptr %0, align 8, !tbaa !46
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 40
  %i.are = load ptr, ptr %i.ard, align 8
  %i.arf = tail call noundef zeroext i1 %i.are(ptr noundef nonnull align 8 dereferenceable(112) %0) #23, !inline_history !1925
  br i1 %i.arf, label %bb.ry, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.ry:                                            ; preds = %bb.rx
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i2669 = load ptr, ptr %i.arg, align 8, !tbaa !100 ; 2 uses
  %i.arh = load i8, ptr %.val.i2669, align 8, !tbaa !132
  %.not.i2670 = icmp eq i8 %i.arh, 1
  br i1 %.not.i2670, label %_ZNK12_GLOBAL__N_114AArch64Operand14isMOVZMovAliasILi32ELi0EEEbv.exit, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZNK12_GLOBAL__N_114AArch64Operand14isMOVZMovAliasILi32ELi0EEEbv.exit: ; preds = %bb.ry
  %i.ari = getelementptr inbounds nuw i8, ptr %.val.i2669, i64 16
  %i.arj = load i64, ptr %i.ari, align 8, !tbaa !312
  %i.ark = and i64 %i.arj, 4294901760
  %i.arl = icmp eq i64 %i.ark, 0
  br i1 %i.arl, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.rz:                                            ; preds = %bb.ax
  %i.arm = load ptr, ptr %0, align 8, !tbaa !46
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 40
  %i.aro = load ptr, ptr %i.arn, align 8
  %i.arp = tail call noundef zeroext i1 %i.aro(ptr noundef nonnull align 8 dereferenceable(112) %0) #23, !inline_history !1926
  br i1 %i.arp, label %bb.sa, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sa:                                            ; preds = %bb.rz
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i2673 = load ptr, ptr %i.arq, align 8, !tbaa !100 ; 2 uses
  %i.arr = load i8, ptr %.val.i2673, align 8, !tbaa !132
  %.not.i2674 = icmp eq i8 %i.arr, 1
  br i1 %.not.i2674, label %bb.sb, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sb:                                            ; preds = %bb.sa
  %i.ars = getelementptr inbounds nuw i8, ptr %.val.i2673, i64 16
  %i.art = load i64, ptr %i.ars, align 8, !tbaa !312 ; 2 uses
  %i.aru = and i64 %i.art, 4294967295
  %i.arv = icmp ne i64 %i.aru, 0
  %i.arw = and i64 %i.art, 65535
  %i.arx = icmp eq i64 %i.arw, 0
  %or.cond1760 = and i1 %i.arv, %i.arx
  br i1 %or.cond1760, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sc:                                            ; preds = %bb.ax
  %i.ary = load ptr, ptr %0, align 8, !tbaa !46
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 40
  %i.asa = load ptr, ptr %i.arz, align 8
  %i.asb = tail call noundef zeroext i1 %i.asa(ptr noundef nonnull align 8 dereferenceable(112) %0) #23, !inline_history !1927
  br i1 %i.asb, label %bb.sd, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sd:                                            ; preds = %bb.sc
  %i.asc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i2677 = load ptr, ptr %i.asc, align 8, !tbaa !100 ; 2 uses
  %i.asd = load i8, ptr %.val.i2677, align 8, !tbaa !132
  %.not.i2678 = icmp eq i8 %i.asd, 1
  br i1 %.not.i2678, label %_ZNK12_GLOBAL__N_114AArch64Operand14isMOVZMovAliasILi64ELi0EEEbv.exit, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZNK12_GLOBAL__N_114AArch64Operand14isMOVZMovAliasILi64ELi0EEEbv.exit: ; preds = %bb.sd
  %i.ase = getelementptr inbounds nuw i8, ptr %.val.i2677, i64 16
  %i.asf = load i64, ptr %i.ase, align 8, !tbaa !312
  %i.asg = icmp ult i64 %i.asf, 65536
  br i1 %i.asg, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.se:                                            ; preds = %bb.ax
  %i.ash = load ptr, ptr %0, align 8, !tbaa !46
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 40
  %i.asj = load ptr, ptr %i.asi, align 8
  %i.ask = tail call noundef zeroext i1 %i.asj(ptr noundef nonnull align 8 dereferenceable(112) %0) #23, !inline_history !1928
  br i1 %i.ask, label %bb.sf, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sf:                                            ; preds = %bb.se
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i2681 = load ptr, ptr %i.asl, align 8, !tbaa !100 ; 2 uses
  %i.asm = load i8, ptr %.val.i2681, align 8, !tbaa !132
  %.not.i2682 = icmp eq i8 %i.asm, 1
  br i1 %.not.i2682, label %bb.sg, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sg:                                            ; preds = %bb.sf
  %i.asn = getelementptr inbounds nuw i8, ptr %.val.i2681, i64 16
  %i.aso = load i64, ptr %i.asn, align 8, !tbaa !312 ; 2 uses
  %i.asp = icmp ne i64 %i.aso, 0
  %i.asq = and i64 %i.aso, -4294901761
  %i.asr = icmp eq i64 %i.asq, 0
  %or.cond1762 = and i1 %i.asp, %i.asr
  br i1 %or.cond1762, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sh:                                            ; preds = %bb.ax
  %i.ass = load ptr, ptr %0, align 8, !tbaa !46
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 40
  %i.asu = load ptr, ptr %i.ast, align 8
  %i.asv = tail call noundef zeroext i1 %i.asu(ptr noundef nonnull align 8 dereferenceable(112) %0) #23, !inline_history !1929
  br i1 %i.asv, label %bb.si, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.si:                                            ; preds = %bb.sh
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i2685 = load ptr, ptr %i.asw, align 8, !tbaa !100 ; 2 uses
  %i.asx = load i8, ptr %.val.i2685, align 8, !tbaa !132
  %.not.i2686 = icmp eq i8 %i.asx, 1
  br i1 %.not.i2686, label %bb.sj, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sj:                                            ; preds = %bb.si
  %i.asy = getelementptr inbounds nuw i8, ptr %.val.i2685, i64 16
  %i.asz = load i64, ptr %i.asy, align 8, !tbaa !312 ; 2 uses
  %i.ata = icmp ne i64 %i.asz, 0
  %i.atb = and i64 %i.asz, -281470681743361
  %i.atc = icmp eq i64 %i.atb, 0
  %or.cond1764 = and i1 %i.ata, %i.atc
  br i1 %or.cond1764, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sk:                                            ; preds = %bb.ax
  %i.atd = load ptr, ptr %0, align 8, !tbaa !46
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 40
  %i.atf = load ptr, ptr %i.ate, align 8
  %i.atg = tail call noundef zeroext i1 %i.atf(ptr noundef nonnull align 8 dereferenceable(112) %0) #23, !inline_history !1930
  br i1 %i.atg, label %bb.sl, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sl:                                            ; preds = %bb.sk
  %i.ath = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i2689 = load ptr, ptr %i.ath, align 8, !tbaa !100 ; 2 uses
  %i.ati = load i8, ptr %.val.i2689, align 8, !tbaa !132
  %.not.i2690 = icmp eq i8 %i.ati, 1
  br i1 %.not.i2690, label %bb.sm, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sm:                                            ; preds = %bb.sl
  %i.atj = getelementptr inbounds nuw i8, ptr %.val.i2689, i64 16
  %i.atk = load i64, ptr %i.atj, align 8, !tbaa !312 ; 2 uses
  %i.atl = icmp ne i64 %i.atk, 0
  %i.atm = and i64 %i.atk, 281474976710655
  %i.atn = icmp eq i64 %i.atm, 0
  %or.cond1766 = and i1 %i.atl, %i.atn
  br i1 %or.cond1766, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sn:                                            ; preds = %bb.ax
  %i.ato = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand14isMOVNMovAliasILi32ELi0EEEbv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br i1 %i.ato, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.so:                                            ; preds = %bb.ax
  %i.atp = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand14isMOVNMovAliasILi32ELi16EEEbv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br i1 %i.atp, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sp:                                            ; preds = %bb.ax
  %i.atq = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand14isMOVNMovAliasILi64ELi0EEEbv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br i1 %i.atq, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sq:                                            ; preds = %bb.ax
  %i.atr = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand14isMOVNMovAliasILi64ELi16EEEbv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br i1 %i.atr, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.sr:                                            ; preds = %bb.ax
  %i.ats = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand14isMOVNMovAliasILi64ELi32EEEbv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br i1 %i.ats, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

bb.ss:                                            ; preds = %bb.ax
  %i.att = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_114AArch64Operand14isMOVNMovAliasILi64ELi48EEEbv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br i1 %i.att, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread

_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread: ; preds = %bb.rw, %bb.rv, %bb.ru, %bb.re, %bb.rc, %bb.rb, %bb.ra, %bb.qz, %bb.qy, %bb.qx, %bb.qw, %bb.qv, %bb.qu, %bb.qt, %bb.qs, %bb.qr, %bb.qq, %bb.qp, %bb.qo, %bb.qn, %bb.qm, %bb.ql, %bb.qk, %bb.qj, %bb.qi, %bb.qh, %bb.qg, %bb.qf, %bb.qe, %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pw, %bb.pv, %bb.pu, %bb.pt, %bb.ps, %bb.pr, %bb.pq, %bb.pp, %bb.po, %bb.pn, %bb.pm, %bb.pl, %bb.pk, %bb.pj, %bb.oi, %bb.oh, %bb.og, %bb.of, %bb.oe, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.nh, %bb.ng, %bb.nf, %bb.ne, %bb.nd, %bb.nc, %bb.nb, %bb.na, %bb.mz, %bb.my, %bb.mx, %bb.mw, %bb.mv, %bb.mu, %bb.mt, %bb.ms, %bb.mr, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj, %bb.mi, %bb.mh, %bb.mg, %bb.mf, %bb.me, %bb.md, %bb.mc, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.hx, %bb.hw, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %_ZNK12_GLOBAL__N_114AArch64Operand16isMoveVecShifterEv.exit, %bb.sm, %bb.sl, %bb.sk, %bb.sj, %bb.si, %bb.sh, %bb.sg, %bb.sf, %bb.se, %bb.sc, %bb.sb, %bb.sa, %bb.rz, %bb.rx, %bb.la, %bb.kx, %bb.kq, %bb.kl, %bb.ki, %bb.kb, %bb.jw, %bb.jt, %bb.jm, %bb.jh, %bb.je, %bb.ix, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.hl, %bb.hi, %bb.hd, %bb.rk, %bb.rj, %bb.ri, %bb.rh, %bb.gs, %bb.gr, %bb.gp, %bb.go, %bb.ax, %bb.be, %bb.bf, %bb.bu, %bb.ca, %bb.cg, %bb.ch, %bb.dp, %bb.eg, %bb.eh, %bb.ei, %bb.ej, %bb.fi, %bb.fj, %bb.fk, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.gd, %bb.gq, %bb.gu, %bb.gw, %bb.gy, %bb.ha, %bb.hc, %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit, %_ZNK12_GLOBAL__N_114AArch64Operand19isLogicalVecShifterEv.exit, %bb.hm, %bb.hn, %bb.ho, %_ZNK12_GLOBAL__N_114AArch64Operand30isSystemPStateFieldWithImm0_15Ev.exit, %_ZNK12_GLOBAL__N_114AArch64Operand29isSystemPStateFieldWithImm0_1Ev.exit, %_ZNK12_GLOBAL__N_114AArch64Operand12isImmInRangeILi0ELi31EEEbv.exit2467, %bb.hv, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj4ELb0EEEbv.exit, %bb.iy, %bb.iz, %bb.ja, %bb.jb, %bb.jc, %bb.jd, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj4ELb0EEEbv.exit2504, %bb.jf, %bb.jg, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj4ELb1EEEbv.exit, %bb.ji, %bb.jj, %bb.jk, %bb.jl, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj1ELb0EEEbv.exit, %bb.jn, %bb.jo, %bb.jp, %bb.jq, %bb.jr, %bb.js, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj1ELb0EEEbv.exit2526, %bb.ju, %bb.jv, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj1ELb1EEEbv.exit, %bb.jx, %bb.jy, %bb.jz, %bb.ka, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj3ELb0EEEbv.exit, %bb.kc, %bb.kd, %bb.ke, %bb.kf, %bb.kg, %bb.kh, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj3ELb0EEEbv.exit2549, %bb.kj, %bb.kk, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj3ELb1EEEbv.exit, %bb.km, %bb.kn, %bb.ko, %bb.kp, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj2ELb0EEEbv.exit, %bb.kr, %bb.ks, %bb.kt, %bb.ku, %bb.kv, %bb.kw, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj2ELb0EEEbv.exit2572, %bb.ky, %bb.kz, %_ZNK12_GLOBAL__N_114AArch64Operand27isImplicitlyTypedVectorListILNS_7RegKindE1ELj2ELb1EEEbv.exit, %bb.lb, %bb.lc, %bb.ld, %bb.le, %bb.lg, %bb.li, %bb.lk, %bb.lm, %bb.lo, %bb.lq, %bb.lr, %bb.ls, %bb.lt, %bb.lu, %bb.lv, %bb.lw, %bb.nu, %bb.nv, %bb.nw, %bb.nx, %bb.ny, %bb.nz, %bb.oa, %bb.ob, %bb.oc, %bb.od, %bb.oj, %bb.ok, %bb.ol, %bb.om, %bb.on, %bb.oo, %bb.op, %bb.oq, %bb.or, %bb.os, %bb.ot, %bb.ou, %bb.ov, %bb.ow, %bb.ox, %bb.oy, %bb.oz, %bb.pa, %bb.pb, %bb.pc, %bb.pd, %bb.pe, %bb.pf, %bb.pg, %bb.ph, %bb.pi, %bb.rd, %bb.ro, %bb.rp, %bb.rq, %_ZNK12_GLOBAL__N_114AArch64Operand14isMOVZMovAliasILi32ELi0EEEbv.exit, %_ZNK12_GLOBAL__N_114AArch64Operand14isMOVZMovAliasILi64ELi0EEEbv.exit, %bb.sn, %bb.so, %bb.sp, %bb.sq, %bb.sr, %bb.ss
  %i.atu = load ptr, ptr %0, align 8, !tbaa !46
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 48
  %i.atw = load ptr, ptr %i.atv, align 8
  %i.atx = call noundef zeroext i1 %i.atw(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  br i1 %i.atx, label %bb.st, label %bb.sx

bb.st:                                            ; preds = %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread
  %i.aty = load ptr, ptr %0, align 8, !tbaa !46
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 56
  %i.aua = load ptr, ptr %i.atz, align 8
  %i.aub = call i32 %i.aua(ptr noundef nonnull align 8 dereferenceable(112) %0) #23 ; 2 uses
  %i.auc = add i32 %i.aub, -1
  %i.aud = icmp ult i32 %i.auc, 1073741823
  br i1 %i.aud, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %bb.st
  %i.aue = zext nneg i32 %i.aub to i64
  %i.auf = getelementptr inbounds nuw [2 x i8], ptr @_ZZL20validateOperandClassRN4llvm18MCParsedAsmOperandEN12_GLOBAL__N_114MatchClassKindERKNS_15MCSubtargetInfoEE5Table, i64 %i.aue
  %i.aug = load i16, ptr %i.auf, align 2, !tbaa !299
  %i.auh = zext i16 %i.aug to i32
  br label %bb.sv

bb.sv:                                            ; preds = %bb.st, %bb.su
  %i.aui = phi i32 [ %i.auh, %bb.su ], [ 0, %bb.st ] ; 2 uses
  %i.auj = icmp eq i32 %i.aui, %1
  br i1 %i.auj, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  %i.auk = zext nneg i32 %i.aui to i64
  %i.aul = getelementptr inbounds nuw [8 x i8], ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E5Table, i64 %i.auk ; 3 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 4
  %i.aun = load i16, ptr %i.aum, align 4, !tbaa !393
  %i.auo = zext i16 %i.aun to i32
  %i.aup = sub nsw i32 %1, %i.auo                 ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aul, i64 6
  %i.aur = load i16, ptr %i.auq, align 2, !tbaa !394
  %i.aus = zext i16 %i.aur to i32
  %.not.i2698 = icmp ult i32 %i.aup, %i.aus
  br i1 %.not.i2698, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit2700, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit2700.thread1373

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit2700: ; preds = %bb.sw
  %i.aut = load i32, ptr %i.aul, align 8, !tbaa !395
  %i.auu = add i32 %i.aut, %i.aup                 ; 2 uses
  %i.auv = lshr i32 %i.auu, 3
  %i.auw = zext nneg i32 %i.auv to i64
  %i.aux = getelementptr inbounds nuw i8, ptr @_ZZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_E4Data, i64 %i.auw
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !100
  %i.auz = zext i8 %i.auy to i32
  %i.ava = and i32 %i.auu, 7
  %i.avb = lshr i32 %i.auz, %i.ava
  %i.avc = trunc i32 %i.avb to i1
  br i1 %i.avc, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit, label %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit2700.thread1373

_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit2700.thread1373: ; preds = %bb.sw, %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit2700
  switch i16 %trunc, label %bb.tb [
    i16 146, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit
    i16 320, label %bb.sz
    i16 321, label %bb.ta
  ]

bb.sx:                                            ; preds = %_ZNK12_GLOBAL__N_114AArch64Operand27isLogicalVecHalfWordShifterEv.exit.thread
  %i.avd = add nsw i32 %1, -98
  %or.cond407 = icmp ult i32 %i.avd, 531
  br i1 %or.cond407, label %bb.sy, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.sy:                                            ; preds = %bb.sx
  switch i16 %trunc, label %bb.tb [
    i16 146, label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit
    i16 320, label %bb.sz
    i16 321, label %bb.ta
  ]

bb.sz:                                            ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit2700.thread1373, %bb.sy
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.ta:                                            ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit2700.thread1373, %bb.sy
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

bb.tb:                                            ; preds = %_ZL10isSubclassN12_GLOBAL__N_114MatchClassKindES0_.exit2700.thread1373, %bb.sy
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split: ; preds = %bb.bv
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1593.a: ; preds = %bb.bw
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1594.a: ; preds = %bb.bx
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1595.a: ; preds = %bb.by
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1596.a: ; preds = %bb.bz
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1597.a: ; preds = %bb.cb
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1598.a: ; preds = %bb.cc
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1599.a: ; preds = %bb.cd
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1600.a: ; preds = %bb.ce
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1601.a: ; preds = %bb.cf
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1602.a: ; preds = %bb.eq
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1603.a: ; preds = %bb.er
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1604.a: ; preds = %bb.es
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1605.a: ; preds = %bb.et
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1606.a: ; preds = %bb.eu
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1607.a: ; preds = %bb.ev
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1608.a: ; preds = %bb.ew
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1609.a: ; preds = %bb.ex
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1610.a: ; preds = %bb.ey
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1611.a: ; preds = %bb.ez
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1612.a: ; preds = %bb.fa
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1613.a: ; preds = %bb.fb
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1614.a: ; preds = %bb.fc
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1615.a: ; preds = %bb.fd
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1616.a: ; preds = %bb.fe
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1617.a: ; preds = %bb.ff
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1618.a: ; preds = %bb.fg
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1619.a: ; preds = %bb.fh
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1620.a: ; preds = %bb.fl
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1621.a: ; preds = %bb.fm
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1622.a: ; preds = %bb.fn
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1623.a: ; preds = %bb.fo
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1624.a: ; preds = %bb.fp
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1625.a: ; preds = %bb.fq
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1626.a: ; preds = %bb.fr
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1627.a: ; preds = %bb.fu
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1628.a: ; preds = %bb.fv
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1629.a: ; preds = %bb.fw
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1630.a: ; preds = %bb.fx
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit

_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit.fold.split1631.a: ; preds = %bb.gg
  br label %_ZL28getDiagKindFromRegisterClassN12_GLOBAL__N_114MatchClassKindE.exit
end_hunk_2
