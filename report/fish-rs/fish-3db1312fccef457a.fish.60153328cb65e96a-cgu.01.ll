Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.01?download=true
inline.NumInlined: 2770
inline.NumDeleted: 706
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 19
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command:bb.a
    i8 75, label %bb.qu
    i8 61, label %bb.bq
    i8 62, label %bb.bp
    i8 54, label %bb.qu
    i8 44, label %bb.qu
    i8 87, label %bb.qt
    i8 90, label %bb.sd
    i8 104, label %bb.dj
    i8 103, label %bb.df
    i8 69, label %.preheader1916
    i8 70, label %.preheader1917
    i8 71, label %bb.br
    i8 72, label %bb.br
    i8 56, label %bb.jx
    i8 55, label %bb.jx
    i8 14, label %bb.se
    i8 74, label %bb.ot
    i8 86, label %bb.qi
    i8 78, label %bb.bv
    i8 81, label %bb.qh
    i8 80, label %bb.bz
    i8 73, label %bb.ou
    i8 82, label %bb.cd
    i8 83, label %bb.cf
    i8 84, label %bb.bv
    i8 3, label %bb.se
    i8 51, label %bb.jw
    i8 2, label %bb.se
    i8 88, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit
    i8 89, label %bb.cg
    i8 105, label %bb.ch
    i8 91, label %bb.ch
    i8 92, label %bb.bl
    i8 93, label %bb.bl
    i8 94, label %bb.cl
    i8 95, label %bb.cp
    i8 96, label %bb.ct
    i8 97, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit
    i8 98, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit
    i8 99, label %bb.cu
    i8 100, label %bb.cv
    i8 101, label %bb.cw
    i8 102, label %bb.da
    i8 59, label %bb.md
    i8 60, label %bb.md
    i8 63, label %bb.ma
    i8 64, label %bb.ma
    i8 65, label %bb.mb
    i8 66, label %bb.mb
    i8 67, label %bb.mc
    i8 68, label %bb.mc
  ], !prof !1947

.preheader1917:                                   ; preds = %bb.a
  %.val587 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val587, i64 416
  %.old1.i1339 = getelementptr inbounds nuw i8, ptr %.val587, i64 689 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val587, i64 1248
  %i.cd = getelementptr inbounds nuw i8, ptr %.val587, i64 432
  br label %bb.nv

.preheader1916:                                   ; preds = %bb.a
  %.val589 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 11 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val589, i64 416 ; 2 uses
  %.old1.i1323 = getelementptr inbounds nuw i8, ptr %.val589, i64 689 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val589, i64 1248 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val589, i64 432 ; 2 uses
  br label %bb.nh

.preheader:                                       ; preds = %bb.a
  %.val679 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val679, i64 416
  %.old1.i1036 = getelementptr inbounds nuw i8, ptr %.val679, i64 689 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val679, i64 1248
  %i.cj = getelementptr inbounds nuw i8, ptr %.val679, i64 432
  br label %bb.x

default.unreachable2041:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.val746 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 3 uses
  %i.ck = tail call fastcc noundef zeroext i1 @_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader30is_at_line_with_autosuggestion(ptr nonnull %.val746) ; 2 uses
  br i1 %i.ck, label %bb.dq, label %bb.dp

_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit: ; preds = %bb.hp, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1259, %bb.hu, %bb.fb, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1042, %bb.il, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1284, %bb.ba, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1078, %bb.wu, %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread1845, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1531, %bb.vx, %.split263, %bb.vw, %.split265, %bb.uv, %bb.vl, %bb.de, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1155, %bb.sc, %bb.sb, %bb.qs, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1410, %bb.nd, %bb.nf, %bb.ng, %.split1795, %bb.ja, %bb.iz, %bb.io, %bb.im, %bb.hi, %.split259, %bb.hh, %.split261, %bb.gw, %.split, %bb.gv, %.split257, %bb.et, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit.thread, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1025, %.thread, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017, %bb.du, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017.thread, %bb.ds, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1230, %bb.rm, %bb.rq, %bb.rp, %bb.rt, %bb.rs, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1440, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1440, %bb.cf, %bb.lr, %bb.jk, %bb.o, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData7rls_mut.exit1621, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1182, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1537, %bb.uj, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1494, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1172, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1486, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1147, %bb.cv, %bb.rw, %bb.rz, %bb.sa, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1401, %bb.qe, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1381, %bb.po, %bb.pk, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1365, %bb.ls, %bb.lv, %bb.ly, %bb.lz, %bb.lt, %bb.kl, %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader9is_at_end.exit, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1321, %bb.ju, %bb.jj, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1302, %bb.jl, %bb.jh, %bb.jb, %bb.jc, %_RNvMs7_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData27jump_and_remember_last_jump.exit, %bb.bn, %bb.ih, %bb.ii, %bb.bi, %bb.id, %bb.hk, %bb.hj, %bb.hc, %_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch12go_to_oldest.exit, %bb.ha, %bb.hb, %bb.gy, %bb.gx, %bb.gz, %bb.gu, %bb.gr, %bb.aq, %bb.fh, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1238, %bb.dr, %bb.dt, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1605, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1550, %bb.vr, %bb.vo, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1459, %bb.su, %bb.ss, %bb.sq, %bb.sn, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1452, %bb.sf, %bb.ry, %bb.rx, %bb.qy, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1399, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1363, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1354, %bb.oo, %bb.od, %bb.nt, %bb.ln, %bb.kt, %bb.ks, %bb.gk, %bb.fi, %bb.ez, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1228, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1204, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1186, %bb.dp, %bb.cu, %bb.ct, %bb.bj, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_mut.exit1086, %bb.bd, %bb.ap, %bb.v, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_mut.exit, %bb.p, %bb.j
  ret void

bb.c:                                             ; preds = %bb.a
  %.val686 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val686, i64 416 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !range !28, !alias.scope !1948, !noundef !14
  %.not.i = icmp ne i64 %i.cm, 0                  ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cn = getelementptr inbounds nuw i8, ptr %.val686, i64 1248
  %i.co = load i64, ptr %i.cn, align 8, !range !28, !alias.scope !1948, !noundef !14 ; 2 uses
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %.val686, i64 689
  %i.cr = load i8, ptr %i.cq, align 1, !range !20, !alias.scope !1948
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond.i = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit

bb.e:                                             ; preds = %bb.c
  %.old1.i = getelementptr inbounds nuw i8, ptr %.val686, i64 689
  %.old2.i = load i8, ptr %.old1.i, align 1, !range !20, !alias.scope !1948, !noundef !14
  %.old3.i = trunc nuw i8 %.old2.i to i1
  br i1 %.old3.i, label %._crit_edge1984, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread

._crit_edge1984:                                  ; preds = %bb.e
  %.phi.trans.insert1982.phi.trans.insert = getelementptr i8, ptr %.val686, i64 1248
  %.val916.pre.pre = load i64, ptr %.phi.trans.insert1982.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge1984, %bb.d
  %.val916.pre = phi i64 [ %.val916.pre.pre, %._crit_edge1984 ], [ 1, %bb.d ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.val686, i64 432
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit: ; preds = %bb.d, %bb.f
  %.val916 = phi i64 [ %.val916.pre, %bb.f ], [ %i.co, %bb.d ]
  %.sroa.04.0.i = phi ptr [ %i.ct, %bb.f ], [ %.val686, %bb.d ]
  %.sroa.0.0.i = phi i1 [ true, %bb.f ], [ false, %bb.d ]
  %i.cu = trunc nuw i64 %.val916 to i1
  %.sroa.0.0.i1009 = select i1 %.not.i, i1 true, i1 %i.cu
  br i1 %.sroa.0.0.i1009, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread, label %bb.dr

bb.g:                                             ; preds = %bb.a
  %.val684 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val684, i64 416
  %i.cw = load i64, ptr %i.cv, align 8, !range !28, !alias.scope !1949, !noundef !14
  %.not.i1010 = icmp ne i64 %i.cw, 0              ; 2 uses
  br i1 %.not.i1010, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %.val684, i64 1248
  %i.cy = load i64, ptr %i.cx, align 8, !range !28, !alias.scope !1949, !noundef !14
  %i.cz = icmp ne i64 %i.cy, 0
  %i.da = getelementptr inbounds nuw i8, ptr %.val684, i64 689
  %i.db = load i8, ptr %i.da, align 1, !range !20, !alias.scope !1949
  %i.dc = trunc nuw i8 %i.db to i1
  %or.cond.i1016 = select i1 %i.cz, i1 %i.dc, i1 false
  br i1 %or.cond.i1016, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017.thread, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017

bb.i:                                             ; preds = %bb.g
  %.old1.i1011 = getelementptr inbounds nuw i8, ptr %.val684, i64 689
  %.old2.i1012 = load i8, ptr %.old1.i1011, align 1, !range !20, !alias.scope !1949, !noundef !14
  %.old3.i1013 = trunc nuw i8 %.old2.i1012 to i1
  br i1 %.old3.i1013, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017.thread, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017: ; preds = %bb.h, %bb.i
  %i.dd = getelementptr i8, ptr %.val684, i64 120
  %.val886 = load i64, ptr %i.dd, align 8, !noundef !14 ; 2 uses
  %i.de = icmp eq i64 %.val886, 0
  br i1 %i.de, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.du

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017.thread: ; preds = %bb.h, %bb.i
  %i.df = getelementptr i8, ptr %.val684, i64 552
  %.val8861764 = load i64, ptr %i.df, align 8, !noundef !14 ; 2 uses
  %i.dg = icmp eq i64 %.val8861764, 0
  br i1 %i.dg, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %.thread

bb.j:                                             ; preds = %bb.a
  %.val546 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14
  tail call fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11delete_char(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val546, i1 noundef zeroext true)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.k:                                             ; preds = %bb.a
  %.val683 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 11 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val683, i64 416
  %i.di = load i64, ptr %i.dh, align 8, !range !28, !alias.scope !1950, !noundef !14
  %.not.i1018 = icmp eq i64 %i.di, 0
  br i1 %.not.i1018, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dj = getelementptr inbounds nuw i8, ptr %.val683, i64 1248
  %i.dk = load i64, ptr %i.dj, align 8, !range !28, !alias.scope !1950, !noundef !14
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.val683, i64 689
  %i.dn = load i8, ptr %i.dm, align 1, !range !20, !alias.scope !1950
  %i.do = trunc nuw i8 %i.dn to i1
  %or.cond.i1024 = select i1 %i.dl, i1 %i.do, i1 false
  br i1 %or.cond.i1024, label %bb.n, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1025

bb.m:                                             ; preds = %bb.k
  %.old1.i1019 = getelementptr inbounds nuw i8, ptr %.val683, i64 689
  %.old2.i1020 = load i8, ptr %.old1.i1019, align 1, !range !20, !alias.scope !1950, !noundef !14
  %.old3.i1021 = trunc nuw i8 %.old2.i1020 to i1
  br i1 %.old3.i1021, label %bb.n, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1025

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %.val683, i64 432
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1025

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1025: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.04.0.i1022 = phi ptr [ %i.dp, %bb.n ], [ %.val683, %bb.m ], [ %.val683, %bb.l ] ; 3 uses
  %.sroa.0.0.i1023 = phi i1 [ true, %bb.n ], [ false, %bb.m ], [ false, %bb.l ] ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.04.0.i1022, i64 120
  %.val885 = load i64, ptr %i.dq, align 8, !noundef !14 ; 8 uses
  %i.dr = icmp eq i64 %.val885, 0
  br i1 %i.dr, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.dv

bb.o:                                             ; preds = %bb.a
  %.val922 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 14 uses
  %i.ds = tail call fastcc { i64, i64 } @_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader14backward_token(ptr nonnull %.val922) ; 2 uses
  %i.dt = extractvalue { i64, i64 } %i.ds, 0
  %i.du = extractvalue { i64, i64 } %i.ds, 1
  %i.dv = trunc nuw i64 %i.dt to i1
  br i1 %i.dv, label %bb.eg, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.p:                                             ; preds = %bb.a
  %.val921 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 6 uses
  %i.dw = tail call fastcc { i64, i64 } @_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader14backward_token(ptr nonnull %.val921) ; 2 uses
  %i.dx = extractvalue { i64, i64 } %i.dw, 0
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.ev, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.q:                                             ; preds = %bb.a
  %.val682 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 6 uses
  %i.dz = getelementptr i8, ptr %.val682, i64 120
  %.val884 = load i64, ptr %i.dz, align 8, !noundef !14 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val682, i64 2289
  %.val924 = load i8, ptr %i.ea, align 1, !range !20, !noundef !14
  %. = zext nneg i8 %.val924 to i64
  %i.eb = add i64 %.val884, %.                    ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %.val884
  br i1 %i.ec, label %bb.fa, label %bb.ez

bb.r:                                             ; preds = %bb.a
  %.val545 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val545, i64 416
  %i.ee = load i64, ptr %i.ed, align 8, !range !28, !alias.scope !1951, !noundef !14
  %.not.i1026 = icmp eq i64 %i.ee, 0
  br i1 %.not.i1026, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %.val545, i64 1248
  %i.eg = load i64, ptr %i.ef, align 8, !range !28, !alias.scope !1951, !noundef !14
  %i.eh = icmp ne i64 %i.eg, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %.val545, i64 689
  %i.ej = load i8, ptr %i.ei, align 1, !range !20, !alias.scope !1951
  %i.ek = trunc nuw i8 %i.ej to i1
  %or.cond.i1032 = select i1 %i.eh, i1 %i.ek, i1 false
  br i1 %or.cond.i1032, label %bb.u, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_mut.exit

bb.t:                                             ; preds = %bb.r
  %.old1.i1027 = getelementptr inbounds nuw i8, ptr %.val545, i64 689
  %.old2.i1028 = load i8, ptr %.old1.i1027, align 1, !range !20, !alias.scope !1951, !noundef !14
  %.old3.i1029 = trunc nuw i8 %.old2.i1028 to i1
  br i1 %.old3.i1029, label %bb.u, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_mut.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %.val545, i64 432
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_mut.exit

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_mut.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.04.0.i1030 = phi ptr [ %i.el, %bb.u ], [ %.val545, %bb.t ], [ %.val545, %bb.s ]
  tail call fastcc void @_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine16begin_edit_group(ptr noalias nofree noundef align 8 dereferenceable(136) %.sroa.04.0.i1030)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.v:                                             ; preds = %bb.a
  %i.em = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14
  %i.en = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef align 8 dereferenceable(2304) %i.em, i1 noundef zeroext false, i64 noundef 1, i64 0) ; 0 uses
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.w:                                             ; preds = %bb.a, %bb.a
  %i.eo = icmp eq i8 %1, 21                       ; 2 uses
  %.val680 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 9 uses
  %i.ep = getelementptr i8, ptr %.val680, i64 416 ; 3 uses
  %.val913 = load i64, ptr %i.ep, align 8, !range !28, !noundef !14
  %i.eq = getelementptr i8, ptr %.val680, i64 1248
  %.val914 = load i64, ptr %i.eq, align 8
  %.not.i1033 = icmp ne i64 %.val913, 0
  %i.er = trunc nuw i64 %.val914 to i1
  %.sroa.0.0.i1034 = select i1 %.not.i1033, i1 true, i1 %i.er
  br i1 %.sroa.0.0.i1034, label %bb.hd, label %bb.hc

bb.x:                                             ; preds = %.preheader, %bb.fc
  %i.es = load i64, ptr %i.ch, align 8, !range !28, !alias.scope !1952, !noundef !14
  %.not.i1035 = icmp eq i64 %i.es, 0
  br i1 %.not.i1035, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.et = load i64, ptr %i.ci, align 8, !range !28, !alias.scope !1952, !noundef !14
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = load i8, ptr %.old1.i1036, align 1, !range !20, !alias.scope !1952
  %i.ew = trunc nuw i8 %i.ev to i1
  %or.cond.i1041 = select i1 %i.eu, i1 %i.ew, i1 false
  br i1 %or.cond.i1041, label %bb.aa, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1042

bb.z:                                             ; preds = %bb.x
  %.old2.i1037 = load i8, ptr %.old1.i1036, align 1, !range !20, !alias.scope !1952, !noundef !14
  %.old3.i1038 = trunc nuw i8 %.old2.i1037 to i1
  br i1 %.old3.i1038, label %bb.aa, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1042

bb.aa:                                            ; preds = %bb.z, %bb.y
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1042

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1042: ; preds = %bb.y, %bb.z, %bb.aa
  %.sroa.04.0.i1039 = phi ptr [ %i.cj, %bb.aa ], [ %.val679, %bb.z ], [ %.val679, %bb.y ] ; 3 uses
  %.sroa.0.0.i1040 = phi i1 [ true, %bb.aa ], [ false, %bb.z ], [ false, %bb.y ]
  %i.ex = getelementptr i8, ptr %.sroa.04.0.i1039, i64 120
  %.val883 = load i64, ptr %i.ex, align 8, !noundef !14 ; 2 uses
  %i.ey = icmp eq i64 %.val883, 0
  br i1 %i.ey, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.fb

bb.ab:                                            ; preds = %bb.a
  %.val678 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  %i.ez = getelementptr inbounds nuw i8, ptr %.val678, i64 2258
  %i.fa = load i8, ptr %i.ez, align 2, !range !13, !alias.scope !1953, !noundef !14
  %.not.i1043 = icmp eq i8 %i.fa, 2
  br i1 %.not.i1043, label %bb.ac, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit, !prof !22

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !1953
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit: ; preds = %bb.ab
  %i.fb = getelementptr inbounds nuw i8, ptr %.val678, i64 2257
  %i.fc = load i8, ptr %i.fb, align 1, !range !13, !noundef !14
  %cond = icmp eq i8 %i.fc, 1
  br i1 %cond, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1230, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.ad:                                            ; preds = %bb.a, %bb.a
  %.val677 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 9 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val677, i64 1618
  %i.fe = load i8, ptr %i.fd, align 2, !range !20, !noundef !14
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.fi, label %bb.fh

bb.ae:                                            ; preds = %bb.a, %bb.a, %bb.a
  %.val676 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 22 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val676, i64 416 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !range !28, !alias.scope !1954, !noundef !14 ; 2 uses
  %.not.i1044 = icmp eq i64 %i.fh, 0
  br i1 %.not.i1044, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fi = getelementptr inbounds nuw i8, ptr %.val676, i64 1248
  %i.fj = load i64, ptr %i.fi, align 8, !range !28, !alias.scope !1954, !noundef !14
  %i.fk = icmp ne i64 %i.fj, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %.val676, i64 689
  %i.fm = load i8, ptr %i.fl, align 1, !range !20, !alias.scope !1954
  %i.fn = trunc nuw i8 %i.fm to i1
  %or.cond.i1050 = select i1 %i.fk, i1 %i.fn, i1 false
  br i1 %or.cond.i1050, label %bb.ah, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1051.thread

bb.ag:                                            ; preds = %bb.ae
  %.old1.i1045 = getelementptr inbounds nuw i8, ptr %.val676, i64 689
  %.old2.i1046 = load i8, ptr %.old1.i1045, align 1, !range !20, !alias.scope !1954, !noundef !14
  %.old3.i1047 = trunc nuw i8 %.old2.i1046 to i1
  br i1 %.old3.i1047, label %bb.ah, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1051.thread

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1051.thread: ; preds = %bb.ag, %bb.af
  %i.fo = getelementptr i8, ptr %.val676, i64 120
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fp = getelementptr i8, ptr %.val676, i64 552
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1955)
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1051.thread, %bb.ah
  %.val8821752.in = phi ptr [ %i.fp, %bb.ah ], [ %i.fo, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1051.thread ]
  %.sroa.0.0.i10491751 = phi i1 [ true, %bb.ah ], [ false, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1051.thread ]
  %i.fq = phi i64 [ 432, %bb.ah ], [ 0, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1051.thread ]
  %.val8821752 = load i64, ptr %.val8821752.in, align 8, !noundef !14 ; 2 uses
  %.sroa.04.0.i1052 = getelementptr inbounds nuw i8, ptr %.val676, i64 %i.fq ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i1052, i64 48
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !1955, !noundef !14 ; 5 uses
  %i.ft = icmp ult i64 %i.fs, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i1052, i64 120
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !1955, !noundef !14 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, %i.fs
  br i1 %i.fw, label %_RNvMs7_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData9move_word.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1955
  store i8 1, ptr %i.i, align 1, !noalias !1955
  %i.fx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 0, ptr %i.fx, align 1, !noalias !1955
  %i.fy = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 12, ptr %i.fy, align 1, !noalias !1955
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i1052, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !1955, !nonnull !14, !noundef !14
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i, %bb.al
  %.sroa.014.063.us.i = phi i64 [ %i.gd, %bb.al ], [ %i.fv, %.lr.ph.i ] ; 4 uses
  %i.gb = call noundef zeroext i1 @_RNvMNtNtCs8frGy5WneL6_4fish6reader11word_motionNtB2_20MoveWordStateMachine12consume_char(ptr noalias nofree noundef nonnull dereferenceable(3) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ga, i64 noundef %i.fs, i64 noundef %.sroa.014.063.us.i), !noalias !1955
  br i1 %i.gb, label %bb.ak, label %.loopexit1913

bb.ak:                                            ; preds = %bb.aj
  %i.gc = icmp eq i64 %.sroa.014.063.us.i, -1
  br i1 %i.gc, label %.split73.us.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
end_hunk_0
begin_hunk_1_@_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command:bb.a
  tail call void @llvm.assume(i1 %i.nv)
  %.not361 = icmp eq i64 %.val876, %.val766
  br i1 %.not361, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.sz

bb.da:                                            ; preds = %bb.a
  %.val652 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 13 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.val652, i64 416
  %i.nx = load i64, ptr %i.nw, align 8, !range !28, !alias.scope !1972, !noundef !14
  %.not.i1148 = icmp eq i64 %i.nx, 0
  br i1 %.not.i1148, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ny = getelementptr inbounds nuw i8, ptr %.val652, i64 1248
  %i.nz = load i64, ptr %i.ny, align 8, !range !28, !alias.scope !1972, !noundef !14
  %i.oa = icmp ne i64 %i.nz, 0
  %i.ob = getelementptr inbounds nuw i8, ptr %.val652, i64 689
  %i.oc = load i8, ptr %i.ob, align 1, !range !20, !alias.scope !1972
  %i.od = trunc nuw i8 %i.oc to i1
  %or.cond.i1154 = select i1 %i.oa, i1 %i.od, i1 false
  br i1 %or.cond.i1154, label %bb.dd, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1155

bb.dc:                                            ; preds = %bb.da
  %.old1.i1149 = getelementptr inbounds nuw i8, ptr %.val652, i64 689
  %.old2.i1150 = load i8, ptr %.old1.i1149, align 1, !range !20, !alias.scope !1972, !noundef !14
  %.old3.i1151 = trunc nuw i8 %.old2.i1150 to i1
  br i1 %.old3.i1151, label %bb.dd, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1155

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.oe = getelementptr inbounds nuw i8, ptr %.val652, i64 432
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1155

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1155: ; preds = %bb.db, %bb.dc, %bb.dd
  %.sroa.04.0.i1152 = phi ptr [ %i.oe, %bb.dd ], [ %.val652, %bb.dc ], [ %.val652, %bb.db ] ; 3 uses
  %.sroa.0.0.i1153 = phi i1 [ true, %bb.dd ], [ false, %bb.dc ], [ false, %bb.db ] ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.val652, i64 1272
  %.sroa.01.0.copyload.i1156 = load i64, ptr %i.of, align 8, !alias.scope !1973
  %i.og = trunc nuw i64 %.sroa.01.0.copyload.i1156 to i1
  br i1 %i.og, label %bb.de, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.de:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1155
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i1158 = getelementptr inbounds nuw i8, ptr %.val652, i64 1296
  %.sroa.5.sroa.6.0.copyload.i1159 = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i1158, align 8, !alias.scope !1973
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i1160 = getelementptr inbounds nuw i8, ptr %.val652, i64 1288
  %.sroa.5.sroa.5.0.copyload.i1161 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i1160, align 8, !alias.scope !1973 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.val652, i64 48
  %i.oi = load i64, ptr %i.oh, align 8, !alias.scope !1973, !noundef !14 ; 3 uses
  %i.oj = icmp ult i64 %i.oi, 2305843009213693952
  tail call void @llvm.assume(i1 %i.oj)
  %..i.i1162 = tail call noundef i64 @llvm.umin.i64(i64 %i.oi, i64 %.sroa.5.sroa.5.0.copyload.i1161) ; 3 uses
  %..i6.i1163 = tail call noundef i64 @llvm.umin.i64(i64 %i.oi, i64 %.sroa.5.sroa.6.0.copyload.i1159) ; 4 uses
  %i.ok = icmp eq i64 %..i.i1162, %..i6.i1163
  br i1 %i.ok, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.tg

bb.df:                                            ; preds = %bb.a
  %.val650 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 15 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.val650, i64 416 ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8, !range !28, !alias.scope !1974, !noundef !14 ; 2 uses
  %.not.i1165 = icmp eq i64 %i.om, 0
  br i1 %.not.i1165, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.on = getelementptr inbounds nuw i8, ptr %.val650, i64 1248
  %i.oo = load i64, ptr %i.on, align 8, !range !28, !alias.scope !1974, !noundef !14
  %i.op = icmp ne i64 %i.oo, 0
  %i.oq = getelementptr inbounds nuw i8, ptr %.val650, i64 689
  %i.or = load i8, ptr %i.oq, align 1, !range !20, !alias.scope !1974
  %i.os = trunc nuw i8 %i.or to i1
  %or.cond.i1171 = select i1 %i.op, i1 %i.os, i1 false
  br i1 %or.cond.i1171, label %bb.di, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1172

bb.dh:                                            ; preds = %bb.df
  %.old1.i1166 = getelementptr inbounds nuw i8, ptr %.val650, i64 689
  %.old2.i1167 = load i8, ptr %.old1.i1166, align 1, !range !20, !alias.scope !1974, !noundef !14
  %.old3.i1168 = trunc nuw i8 %.old2.i1167 to i1
  br i1 %.old3.i1168, label %bb.di, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1172

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ot = getelementptr inbounds nuw i8, ptr %.val650, i64 432
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1172

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1172: ; preds = %bb.dg, %bb.dh, %bb.di
  %.sroa.04.0.i1169 = phi ptr [ %i.ot, %bb.di ], [ %.val650, %bb.dh ], [ %.val650, %bb.dg ] ; 2 uses
  %.sroa.0.0.i1170 = phi i1 [ true, %bb.di ], [ false, %bb.dh ], [ false, %bb.dg ]
  %i.ou = getelementptr i8, ptr %.sroa.04.0.i1169, i64 48
  %.val765 = load i64, ptr %i.ou, align 8, !noundef !14 ; 4 uses
  %i.ov = icmp ult i64 %.val765, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ov)
  %i.ow = icmp samesign ult i64 %.val765, 2
  br i1 %i.ow, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.tu

bb.dj:                                            ; preds = %bb.a
  %.val649 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 15 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.val649, i64 416 ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !range !28, !alias.scope !1975, !noundef !14
  %.not.i1173 = icmp eq i64 %i.oy, 0
  br i1 %.not.i1173, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.oz = getelementptr inbounds nuw i8, ptr %.val649, i64 1248
  %i.pa = load i64, ptr %i.oz, align 8, !range !28, !alias.scope !1975, !noundef !14
  %i.pb = icmp ne i64 %i.pa, 0
  %i.pc = getelementptr inbounds nuw i8, ptr %.val649, i64 689
  %i.pd = load i8, ptr %i.pc, align 1, !range !20, !alias.scope !1975
  %i.pe = trunc nuw i8 %i.pd to i1
  %or.cond.i1179 = select i1 %i.pb, i1 %i.pe, i1 false
  br i1 %or.cond.i1179, label %bb.dm, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1180

bb.dl:                                            ; preds = %bb.dj
  %.old1.i1174 = getelementptr inbounds nuw i8, ptr %.val649, i64 689
  %.old2.i1175 = load i8, ptr %.old1.i1174, align 1, !range !20, !alias.scope !1975, !noundef !14
  %.old3.i1176 = trunc nuw i8 %.old2.i1175 to i1
  br i1 %.old3.i1176, label %bb.dm, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1180

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.pf = getelementptr inbounds nuw i8, ptr %.val649, i64 432
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1180

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1180: ; preds = %bb.dk, %bb.dl, %bb.dm
  %.sroa.04.0.i1177 = phi ptr [ %i.pf, %bb.dm ], [ %.val649, %bb.dl ], [ %.val649, %bb.dk ] ; 3 uses
  %.sroa.0.0.i1178 = phi i1 [ true, %bb.dm ], [ false, %bb.dl ], [ false, %bb.dk ]
  %i.pg = getelementptr i8, ptr %.sroa.04.0.i1177, i64 120
  %.val875 = load i64, ptr %i.pg, align 8, !noundef !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.ph = getelementptr i8, ptr %.sroa.04.0.i1177, i64 48
  %.val740 = load i64, ptr %i.ph, align 8, !noundef !14 ; 2 uses
  %i.pi = icmp ult i64 %.val740, %.val875
  br i1 %i.pi, label %bb.un, label %bb.uo, !prof !22

bb.dn:                                            ; preds = %bb.a
  %.val647 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %i.pj = getelementptr inbounds nuw i8, ptr %.val647, i64 2258 ; 3 uses
  %i.pk = load i8, ptr %i.pj, align 2, !range !13, !alias.scope !1976, !noundef !14
  %.not.i1181 = icmp eq i8 %i.pk, 2
  br i1 %.not.i1181, label %bb.do, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1182, !prof !22

bb.do:                                            ; preds = %bb.dn
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !1976
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1182: ; preds = %bb.dn
  %i.pl = getelementptr inbounds nuw i8, ptr %.val647, i64 2240 ; 3 uses
  %i.pm = load i64, ptr %i.pl, align 8, !noundef !14
  %i.pn = icmp eq i64 %i.pm, 0
  br i1 %i.pn, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.ym

bb.dp:                                            ; preds = %bb.dq, %bb.b
  %i.po = getelementptr inbounds nuw i8, ptr %.val746, i64 1540
  %i.pp = zext i1 %i.ck to i8
  store i8 %i.pp, ptr %i.po, align 4, !alias.scope !1977
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.dq:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 -1, ptr %i.pq, align 8
  store i8 0, ptr %i.aw, align 8
  call fastcc void @_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader21accept_autosuggestion(ptr nonnull %.val746, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.dp

bb.dr:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit
  %i.pr = getelementptr i8, ptr %.sroa.04.0.i, i64 120
  %.val873 = load i64, ptr %i.pr, align 8, !noundef !14 ; 2 uses
  %i.ps = icmp eq i64 %.val873, 0
  br i1 %i.ps, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.dt

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread: ; preds = %bb.e, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit
  %i.pt = getelementptr inbounds nuw i8, ptr %.val686, i64 696
  %i.pu = tail call noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager35select_next_completion_in_direction(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.cl, i8 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.pt)
  br i1 %i.pu, label %bb.ds, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.ds:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread
  tail call fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData23pager_selection_changed(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val686)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.dt:                                            ; preds = %bb.dr
  %i.pv = add i64 %.val873, -1
  %i.pw = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val686, i1 noundef zeroext %.sroa.0.0.i, i64 noundef 1, i64 %i.pv) ; 0 uses
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.du:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017
  %i.px = getelementptr i8, ptr %.val684, i64 1248
  %.val908 = load i64, ptr %i.px, align 8
  %i.py = trunc nuw i64 %.val908 to i1
  %.sroa.0.0.i1184 = select i1 %.not.i1010, i1 true, i1 %i.py
  br i1 %.sroa.0.0.i1184, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %.thread

.thread:                                          ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017.thread, %bb.du
  %.sroa.0.0.i101517651770 = phi i1 [ false, %bb.du ], [ true, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017.thread ]
  %.val88617661769 = phi i64 [ %.val886, %bb.du ], [ %.val8861764, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017.thread ]
  %i.pz = add i64 %.val88617661769, -1
  %i.qa = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.val684, i1 noundef zeroext %.sroa.0.0.i101517651770, i64 noundef 1, i64 %i.pz) ; 0 uses
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.dv:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1025
  %i.qb = getelementptr i8, ptr %.sroa.04.0.i1022, i64 40
  %.val737 = load ptr, ptr %i.qb, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.qc = getelementptr i8, ptr %.sroa.04.0.i1022, i64 48
  %.val738 = load i64, ptr %i.qc, align 8, !noundef !14 ; 4 uses
  %i.qd = add i64 %.val885, -1                    ; 3 uses
  %.first_iter = icmp ult i64 %i.qd, %.val738
  br i1 %.first_iter, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %.sroa.014.0 = add i64 %.val885, -1             ; 2 uses
  %i.qe = icmp eq i64 %.sroa.014.0, 0
  br i1 %i.qe, label %.split1966.us, label %._crit_edge2085

.lr.ph2084.a:                                     ; preds = %._crit_edge2085
  %.sroa.014.0.us = add i64 %.sroa.014.0.us2083, -1 ; 2 uses
  %2 = icmp eq i64 %.sroa.014.0.us, 0
  br i1 %2, label %.split1966.us, label %._crit_edge2085

._crit_edge2085:                                  ; preds = %bb.dw, %.lr.ph2084.a
  %.sroa.014.0.us2083 = phi i64 [ %.sroa.014.0.us, %.lr.ph2084.a ], [ %.sroa.014.0, %bb.dw ] ; 4 uses
  %.sroa.014.0.in.us2082 = phi i64 [ %.sroa.014.0.us2083, %.lr.ph2084.a ], [ %.val885, %bb.dw ]
  %3 = getelementptr inbounds nuw [4 x i8], ptr %.val737, i64 %.sroa.014.0.us2083
  %4 = load i32, ptr %3, align 4, !range !31, !noundef !14
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %.split1966.us, label %.lr.ph2084.a

bb.dx:                                            ; preds = %bb.dv
  %i.qf = icmp eq i64 %i.qd, 0
  br i1 %i.qf, label %.split1966.us, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.qd, i64 noundef %.val738, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #40
  unreachable

.split1966.us:                                    ; preds = %._crit_edge2085, %.lr.ph2084.a, %bb.dw, %bb.dx
  %.us-phi = phi i64 [ 1, %bb.dx ], [ 1, %bb.dw ], [ 1, %.lr.ph2084.a ], [ %.sroa.014.0.in.us2082, %._crit_edge2085 ]
  %.us-phi1967 = phi i64 [ 0, %bb.dx ], [ 0, %bb.dw ], [ 0, %.lr.ph2084.a ], [ %.sroa.014.0.us2083, %._crit_edge2085 ] ; 4 uses
  %6 = icmp ult i64 %.us-phi1967, %.val738
  br i1 %6, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.split1966.us
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %.val737, i64 %.us-phi1967
  %i.qh = load i32, ptr %i.qg, align 4, !range !31, !noundef !14
  %i.qi = icmp eq i32 %i.qh, 10
  %.sroa.014.1 = select i1 %i.qi, i64 %.us-phi, i64 %.us-phi1967 ; 2 uses
  %.not403 = icmp ult i64 %.val885, %.sroa.014.1
  br i1 %.not403, label %bb.eb, label %bb.ec, !prof !22

bb.ea:                                            ; preds = %.split1966.us
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi1967, i64 noundef %.val738, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #40
  unreachable

bb.eb:                                            ; preds = %bb.dz
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #40
  unreachable

bb.ec:                                            ; preds = %bb.dz
  %i.qj = sub nuw i64 %.val885, %.sroa.014.1
  %..i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.qj, i64 1)
  br i1 %.sroa.0.0.i1023, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.qk = getelementptr inbounds nuw i8, ptr %.val683, i64 2284
  store i8 1, ptr %i.qk, align 4
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ec, %bb.ed
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  %i.ql = getelementptr inbounds nuw i8, ptr %.val683, i64 2258
  %i.qm = load i8, ptr %i.ql, align 2, !range !13, !alias.scope !1978, !noundef !14
  %.not.i1185 = icmp eq i8 %i.qm, 2
  br i1 %.not.i1185, label %bb.ef, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1186, !prof !22

bb.ef:                                            ; preds = %bb.ee
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !1978
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1186: ; preds = %bb.ee
  %i.qn = sub i64 %.val885, %..i
  %i.qo = getelementptr inbounds nuw i8, ptr %.val683, i64 2256
  %i.qp = load i8, ptr %i.qo, align 8, !range !44, !noundef !14
  %i.qq = icmp ne i8 %i.qp, 10
  tail call fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4kill(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val683, i1 noundef zeroext %.sroa.0.0.i1023, i64 noundef %i.qn, i64 noundef %.val885, i1 noundef zeroext true, i1 noundef zeroext %i.qq)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.eg:                                            ; preds = %bb.o
  %i.qr = getelementptr inbounds nuw i8, ptr %.val922, i64 416
  %i.qs = load i64, ptr %i.qr, align 8, !range !28, !alias.scope !1979, !noundef !14
  %.not.i1187 = icmp eq i64 %i.qs, 0
  br i1 %.not.i1187, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.qt = getelementptr inbounds nuw i8, ptr %.val922, i64 1248
  %i.qu = load i64, ptr %i.qt, align 8, !range !28, !alias.scope !1979, !noundef !14
  %i.qv = icmp ne i64 %i.qu, 0
  %i.qw = getelementptr inbounds nuw i8, ptr %.val922, i64 689
  %i.qx = load i8, ptr %i.qw, align 1, !range !20, !alias.scope !1979 ; 2 uses
  %i.qy = trunc nuw i8 %i.qx to i1
  %or.cond.i1193 = select i1 %i.qv, i1 %i.qy, i1 false
  br i1 %or.cond.i1193, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1194.thread, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1194.thread2043

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1194.thread2043: ; preds = %bb.eh
  %i.qz = getelementptr inbounds nuw i8, ptr %.val922, i64 2284
  store i8 1, ptr %i.qz, align 4
  %i.ra = trunc nuw i8 %i.qx to i1
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1194.thread

bb.ei:                                            ; preds = %bb.eg
  %.old1.i1188 = getelementptr inbounds nuw i8, ptr %.val922, i64 689
  %.old2.i1189 = load i8, ptr %.old1.i1188, align 1, !range !20, !alias.scope !1979, !noundef !14
  %.old3.i1190 = trunc nuw i8 %.old2.i1189 to i1
  br i1 %.old3.i1190, label %.thread2045, label %bb.ej

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1194.thread: ; preds = %bb.eh, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1194.thread2043
  %i.rb = phi i1 [ %i.ra, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1194.thread2043 ], [ true, %bb.eh ]
  %i.rc = getelementptr inbounds nuw i8, ptr %.val922, i64 1248
  %i.rd = load i64, ptr %i.rc, align 8, !range !28, !alias.scope !1980, !noundef !14
  %i.re = icmp ne i64 %i.rd, 0
  %or.cond.i1201 = select i1 %i.re, i1 %i.rb, i1 false
  br i1 %or.cond.i1201, label %.thread2045, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1202

bb.ej:                                            ; preds = %bb.ei
  %i.rf = getelementptr inbounds nuw i8, ptr %.val922, i64 2284
  store i8 1, ptr %i.rf, align 4
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1202

.thread2045:                                      ; preds = %bb.ei, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1194.thread
  %i.rg = getelementptr inbounds nuw i8, ptr %.val922, i64 432
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1202

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1202: ; preds = %bb.ej, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1194.thread, %.thread2045
  %.sroa.04.0.i1199 = phi ptr [ %i.rg, %.thread2045 ], [ %.val922, %bb.ej ], [ %.val922, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1194.thread ]
  %.sroa.0.0.i1200 = phi i1 [ true, %.thread2045 ], [ false, %bb.ej ], [ false, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1194.thread ]
  %i.rh = getelementptr i8, ptr %.sroa.04.0.i1199, i64 120
  %.val870 = load i64, ptr %i.rh, align 8, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  %i.ri = getelementptr inbounds nuw i8, ptr %.val922, i64 2258
  %i.rj = load i8, ptr %i.ri, align 2, !range !13, !alias.scope !1981, !noundef !14
  %.not.i1203 = icmp eq i8 %i.rj, 2
  br i1 %.not.i1203, label %bb.ek, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1204, !prof !22

bb.ek:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1202
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !1981
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1204: ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1202
  %i.rk = getelementptr inbounds nuw i8, ptr %.val922, i64 2256
  %i.rl = load i8, ptr %i.rk, align 8, !range !44, !noundef !14
  %i.rm = icmp ne i8 %i.rl, 12
  tail call fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4kill(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val922, i1 noundef zeroext %.sroa.0.0.i1200, i64 noundef %i.du, i64 noundef %.val870, i1 noundef zeroext true, i1 noundef zeroext %i.rm)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.el:                                            ; preds = %bb.a
  br label %bb.en

bb.em:                                            ; preds = %bb.a
  br label %bb.en

bb.en:                                            ; preds = %bb.a, %bb.em, %bb.el
  %.sroa.071.0 = phi i8 [ 0, %bb.em ], [ 8, %bb.el ], [ 16, %bb.a ] ; 2 uses
  %.val641 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  %i.rn = getelementptr inbounds nuw i8, ptr %.val641, i64 2258
  %i.ro = load i8, ptr %i.rn, align 2, !range !13, !alias.scope !1982, !noundef !14
  %.not.i1205 = icmp eq i8 %i.ro, 2
  br i1 %.not.i1205, label %bb.eo, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1206, !prof !22

bb.eo:                                            ; preds = %bb.en
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40, !noalias !1982
  unreachable

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1206: ; preds = %bb.en
  %i.rp = getelementptr inbounds nuw i8, ptr %.val641, i64 2256
  %i.rq = load i8, ptr %i.rp, align 8, !range !44, !noundef !14
  %i.rr = add nsw i8 %i.rq, -9
  %switch.and = and i8 %i.rr, -5
  %switch.selectcmp424 = icmp ne i8 %switch.and, 0
  %i.rs = getelementptr inbounds nuw i8, ptr %.val641, i64 416
  %i.rt = load i64, ptr %i.rs, align 8, !range !28, !alias.scope !1983, !noundef !14
  %.not.i1207 = icmp eq i64 %i.rt, 0
  br i1 %.not.i1207, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1206
  %i.ru = getelementptr inbounds nuw i8, ptr %.val641, i64 1248
  %i.rv = load i64, ptr %i.ru, align 8, !range !28, !alias.scope !1983, !noundef !14
  %i.rw = icmp ne i64 %i.rv, 0
  %i.rx = getelementptr inbounds nuw i8, ptr %.val641, i64 689
  %i.ry = load i8, ptr %i.rx, align 1, !range !20, !alias.scope !1983
  %i.rz = trunc nuw i8 %i.ry to i1
  %or.cond.i1212 = select i1 %i.rw, i1 %i.rz, i1 false
  br i1 %or.cond.i1212, label %bb.er, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit.thread

bb.eq:                                            ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1206
  %.old1.i1208 = getelementptr inbounds nuw i8, ptr %.val641, i64 689
  %.old2.i1209 = load i8, ptr %.old1.i1208, align 1, !range !20, !alias.scope !1983, !noundef !14
  %.old3.i1210 = trunc nuw i8 %.old2.i1209 to i1
  br i1 %.old3.i1210, label %bb.er, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit.thread

bb.er:                                            ; preds = %bb.eq, %bb.ep
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit.thread

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit.thread: ; preds = %bb.ep, %bb.eq, %bb.er
  %.sroa.0.0.i12111774 = phi i1 [ true, %bb.er ], [ false, %bb.eq ], [ false, %bb.ep ] ; 2 uses
  %i.sa = phi i64 [ 432, %bb.er ], [ 0, %bb.eq ], [ 0, %bb.ep ]
  %.sroa.04.0.i1214 = getelementptr inbounds nuw i8, ptr %.val641, i64 %i.sa ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i1214, i64 120
  %i.sc = load i64, ptr %i.sb, align 8, !alias.scope !1984, !noundef !14 ; 3 uses
  %i.sd = icmp eq i64 %i.sc, 0
  br i1 %i.sd, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %switch.lookup

switch.lookup:                                    ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1984
  %switch.shiftamt = zext nneg i8 %.sroa.071.0 to i24
  %switch.downshift = lshr i24 787724, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.shiftamt2091 = zext nneg i8 %.sroa.071.0 to i24
  %switch.downshift2092 = lshr i24 196864, %switch.shiftamt2091
  %switch.masked2093 = trunc i24 %switch.downshift2092 to i8
  store i8 0, ptr %i.h, align 1, !noalias !1984
  %i.se = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %switch.masked2093, ptr %i.se, align 1, !noalias !1984
  %i.sf = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 %switch.masked, ptr %i.sf, align 1, !noalias !1984
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i1214, i64 48
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i1214, i64 40
  %i.si = load i64, ptr %i.sg, align 8, !alias.scope !1984, !noundef !14 ; 2 uses
  %i.sj = icmp ult i64 %i.si, 2305843009213693952
  tail call void @llvm.assume(i1 %i.sj)
  %i.sk = load ptr, ptr %i.sh, align 8, !alias.scope !1984, !nonnull !14, !noundef !14
  br label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %bb.es, %switch.lookup
  %.sroa.014.063.i = phi i64 [ %spec.select56.i, %bb.es ], [ %i.sc, %switch.lookup ] ; 3 uses
  %spec.select56.i = add i64 %.sroa.014.063.i, -1 ; 3 uses
  %i.sl = call noundef zeroext i1 @_RNvMNtNtCs8frGy5WneL6_4fish6reader11word_motionNtB2_20MoveWordStateMachine12consume_char(ptr noalias nofree noundef nonnull dereferenceable(3) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.sk, i64 noundef %i.si, i64 noundef %spec.select56.i), !noalias !1984
  br i1 %i.sl, label %bb.es, label %._crit_edge.i1217

._crit_edge.i1217:                                ; preds = %.lr.ph.split.split.split.i
  %i.sm = icmp eq i64 %.sroa.014.063.i, -1
  %spec.select1885 = select i1 %i.sm, i64 0, i64 %.sroa.014.063.i
  br label %._crit_edge.i1217.thread

._crit_edge.i1217.thread:                         ; preds = %bb.es, %._crit_edge.i1217
  %i.sn = phi i64 [ %spec.select1885, %._crit_edge.i1217 ], [ 0, %bb.es ]
  br i1 %.sroa.0.0.i12111774, label %bb.et, label %bb.eu

bb.es:                                            ; preds = %.lr.ph.split.split.split.i
  %.not49.i = icmp eq i64 %spec.select56.i, 0
  br i1 %.not49.i, label %._crit_edge.i1217.thread, label %.lr.ph.split.split.split.i
end_hunk_1
