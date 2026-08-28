Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.01?download=true
inline.NumInlined: 2770
inline.NumDeleted: 706
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader23handle_readline_command:bb.a
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [12 x i8], align 4               ; 8 uses
  %i.af = alloca [12 x i8], align 4               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 11 uses
  %i.ah = alloca [24 x i8], align 8               ; 3 uses
  %i.ai = alloca [96 x i8], align 8               ; 7 uses
  %i.aj = alloca [96 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 11 uses
  %i.am = alloca [24 x i8], align 8               ; 3 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 11 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 8 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 6 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [16 x i8], align 8               ; 6 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 10 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [32 x i8], align 8               ; 5 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [32 x i8], align 8               ; 4 uses
  %i.bl = alloca [32 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 7 uses
  %i.bo = alloca [24 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [104 x i8], align 8              ; 13 uses
  %i.bu = alloca [18 x i8], align 4               ; 8 uses
  %i.bv = alloca [18 x i8], align 1               ; 5 uses
  %i.bw = alloca [24 x i8], align 8               ; 8 uses
  %i.bx = alloca [24 x i8], align 8               ; 5 uses
  %i.by = alloca [32 x i8], align 8               ; 4 uses
  %i.bz = alloca [16 x i8], align 8               ; 5 uses
  %i.ca = alloca [16 x i8], align 8               ; 4 uses
  switch i8 %1, label %default.unreachable2040 [
    i8 0, label %bb.b
    i8 1, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit
    i8 79, label %bb.oz
    i8 77, label %bb.pa
    i8 4, label %bb.c
    i8 5, label %bb.g
    i8 6, label %bb.j
    i8 110, label %bb.dn
    i8 109, label %bb.ya
    i8 50, label %bb.iq
    i8 10, label %bb.k
    i8 49, label %bb.iq
    i8 12, label %bb.o
    i8 8, label %bb.ir
    i8 76, label %bb.qj
    i8 15, label %bb.p
    i8 46, label %bb.jy
    i8 45, label %bb.jy
    i8 18, label %bb.q
    i8 19, label %bb.r
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %.preheader
    i8 23, label %bb.ab
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %bb.ad
    i8 27, label %bb.ap
    i8 28, label %bb.aq
    i8 29, label %bb.aq
    i8 30, label %bb.ar
    i8 31, label %bb.ar
    i8 32, label %bb.av
    i8 33, label %bb.aw
    i8 34, label %bb.ae
    i8 35, label %bb.bb
    i8 36, label %bb.w
    i8 37, label %bb.bc
    i8 38, label %bb.bd
    i8 39, label %bb.be
    i8 40, label %bb.bi
    i8 41, label %bb.bj
    i8 42, label %bb.bk
    i8 43, label %bb.bl
    i8 17, label %bb.se
    i8 13, label %bb.em
    i8 11, label %bb.el
    i8 47, label %bb.bm
    i8 48, label %bb.bn
    i8 108, label %bb.ae
    i8 107, label %bb.aw
    i8 9, label %bb.en
    i8 52, label %bb.bm
    i8 53, label %bb.bo
    i8 16, label %bb.se
    i8 7, label %bb.ir
    i8 106, label %bb.av
    i8 57, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit
    i8 58, label %bb.bp
    i8 85, label %bb.qu
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
  ], !prof !1713

.preheader1917:                                   ; preds = %bb.a
  %.val587 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val587, i64 416
  %.old1.i1339 = getelementptr inbounds nuw i8, ptr %.val587, i64 689 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val587, i64 1248
  %i.cd = getelementptr inbounds nuw i8, ptr %.val587, i64 432
  br label %bb.nv

.preheader1916:                                   ; preds = %bb.a
  %.val589 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 11 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val589, i64 416 ; 2 uses
  %.old1.i1323 = getelementptr inbounds nuw i8, ptr %.val589, i64 689 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val589, i64 1248 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val589, i64 432 ; 2 uses
  br label %bb.nh

.preheader:                                       ; preds = %bb.a
  %.val679 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val679, i64 416
  %.old1.i1036 = getelementptr inbounds nuw i8, ptr %.val679, i64 689 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val679, i64 1248
  %i.cj = getelementptr inbounds nuw i8, ptr %.val679, i64 432
  br label %bb.x

default.unreachable2040:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.val746 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 3 uses
  %i.ck = tail call fastcc noundef zeroext i1 @_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader30is_at_line_with_autosuggestion(ptr nonnull %.val746) ; 2 uses
  br i1 %i.ck, label %bb.dq, label %bb.dp

_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit: ; preds = %bb.hp, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1259, %bb.hu, %bb.fb, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1042, %bb.il, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1284, %bb.ba, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1078, %bb.wu, %_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData19selection_is_at_top.exit.thread1845, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1531, %bb.vx, %.split263, %bb.vw, %.split265, %bb.uv, %bb.vl, %bb.de, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1155, %bb.sc, %bb.sb, %bb.qs, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1410, %bb.nd, %bb.nf, %bb.ng, %.split1795, %bb.ja, %bb.iz, %bb.io, %bb.im, %bb.hi, %.split259, %bb.hh, %.split261, %bb.gw, %.split, %bb.gv, %.split257, %bb.et, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit.thread, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1025, %.thread, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017, %bb.du, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017.thread, %bb.ds, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1230, %bb.rm, %bb.rq, %bb.rp, %bb.rt, %bb.rs, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1440, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1440, %bb.cf, %bb.lr, %bb.jk, %bb.o, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData7rls_mut.exit1621, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1182, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1537, %bb.uj, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1494, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1172, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1486, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1147, %bb.cv, %bb.rw, %bb.rz, %bb.sa, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1401, %bb.qe, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1381, %bb.po, %bb.pk, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1365, %bb.ls, %bb.lv, %bb.ly, %bb.lz, %bb.lt, %bb.kl, %_RNvMsi_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader9is_at_end.exit, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1321, %bb.ju, %bb.jj, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1302, %bb.jl, %bb.jh, %bb.jb, %bb.jc, %_RNvMs7_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData27jump_and_remember_last_jump.exit, %bb.bn, %bb.ih, %bb.ii, %bb.bi, %bb.id, %bb.hk, %bb.hj, %bb.hc, %_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch12go_to_oldest.exit, %bb.ha, %bb.hb, %bb.gy, %bb.gx, %bb.gz, %bb.gu, %bb.gr, %bb.aq, %bb.fh, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1238, %bb.dr, %bb.dt, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1605, %_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader15update_buff_pos.exit1550, %bb.vr, %bb.vo, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1459, %bb.su, %bb.ss, %bb.sq, %bb.sn, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_tag.exit1452, %bb.sf, %bb.ry, %bb.rx, %bb.qy, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1399, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1363, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1354, %bb.oo, %bb.od, %bb.nt, %bb.ln, %bb.kt, %bb.ks, %bb.gk, %bb.fi, %bb.ez, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1228, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1204, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData3rls.exit1186, %bb.dp, %bb.cu, %bb.ct, %bb.bj, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_mut.exit1086, %bb.bd, %bb.ap, %bb.v, %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_mut.exit, %bb.p, %bb.j
  ret void

bb.c:                                             ; preds = %bb.a
  %.val686 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val686, i64 416 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !range !942, !alias.scope !1714, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cn = getelementptr inbounds nuw i8, ptr %.val686, i64 1248
  %i.co = load i64, ptr %i.cn, align 8, !range !942, !alias.scope !1714, !noundef !8 ; 2 uses
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %.val686, i64 689
  %i.cr = load i8, ptr %i.cq, align 1, !range !349, !alias.scope !1714
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond.i = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit

bb.e:                                             ; preds = %bb.c
  %.old1.i = getelementptr inbounds nuw i8, ptr %.val686, i64 689
  %.old2.i = load i8, ptr %.old1.i, align 1, !range !349, !alias.scope !1714, !noundef !8
  %.old3.i = trunc nuw i8 %.old2.i to i1
  br i1 %.old3.i, label %._crit_edge1983, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread

._crit_edge1983:                                  ; preds = %bb.e
  %.phi.trans.insert1981.phi.trans.insert = getelementptr i8, ptr %.val686, i64 1248
  %.val916.pre.pre = load i64, ptr %.phi.trans.insert1981.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge1983, %bb.d
  %.val916.pre = phi i64 [ %.val916.pre.pre, %._crit_edge1983 ], [ 1, %bb.d ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.val686, i64 432
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit: ; preds = %bb.d, %bb.f
  %.val916 = phi i64 [ %.val916.pre, %bb.f ], [ %i.co, %bb.d ]
  %.sroa.04.0.i = phi ptr [ %i.ct, %bb.f ], [ %.val686, %bb.d ]
  %.sroa.0.0.i = phi i1 [ true, %bb.f ], [ false, %bb.d ]
  %.not.i1008 = icmp ne i64 %i.cm, 0
  %i.cu = trunc nuw i64 %.val916 to i1
  %.sroa.0.0.i1009 = select i1 %.not.i1008, i1 true, i1 %i.cu
  br i1 %.sroa.0.0.i1009, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit.thread, label %bb.dr

bb.g:                                             ; preds = %bb.a
  %.val684 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val684, i64 416
  %i.cw = load i64, ptr %i.cv, align 8, !range !942, !alias.scope !1717, !noundef !8 ; 2 uses
  %.not.i1010 = icmp eq i64 %i.cw, 0
  br i1 %.not.i1010, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %.val684, i64 1248
  %i.cy = load i64, ptr %i.cx, align 8, !range !942, !alias.scope !1717, !noundef !8
  %i.cz = icmp ne i64 %i.cy, 0
  %i.da = getelementptr inbounds nuw i8, ptr %.val684, i64 689
  %i.db = load i8, ptr %i.da, align 1, !range !349, !alias.scope !1717
  %i.dc = trunc nuw i8 %i.db to i1
  %or.cond.i1016 = select i1 %i.cz, i1 %i.dc, i1 false
  br i1 %or.cond.i1016, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017.thread, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017

bb.i:                                             ; preds = %bb.g
  %.old1.i1011 = getelementptr inbounds nuw i8, ptr %.val684, i64 689
  %.old2.i1012 = load i8, ptr %.old1.i1011, align 1, !range !349, !alias.scope !1717, !noundef !8
  %.old3.i1013 = trunc nuw i8 %.old2.i1012 to i1
  br i1 %.old3.i1013, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017.thread, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017: ; preds = %bb.h, %bb.i
  %i.dd = getelementptr i8, ptr %.val684, i64 120
  %.val886 = load i64, ptr %i.dd, align 8, !noundef !8 ; 2 uses
  %i.de = icmp eq i64 %.val886, 0
  br i1 %i.de, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.du

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1017.thread: ; preds = %bb.h, %bb.i
  %i.df = getelementptr i8, ptr %.val684, i64 552
  %.val8861764 = load i64, ptr %i.df, align 8, !noundef !8 ; 2 uses
  %i.dg = icmp eq i64 %.val8861764, 0
  br i1 %i.dg, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %.thread

bb.j:                                             ; preds = %bb.a
  %.val546 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8
  tail call fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11delete_char(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val546, i1 noundef zeroext true)
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.k:                                             ; preds = %bb.a
  %.val683 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 11 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val683, i64 416
  %i.di = load i64, ptr %i.dh, align 8, !range !942, !alias.scope !1720, !noundef !8
  %.not.i1018 = icmp eq i64 %i.di, 0
  br i1 %.not.i1018, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dj = getelementptr inbounds nuw i8, ptr %.val683, i64 1248
  %i.dk = load i64, ptr %i.dj, align 8, !range !942, !alias.scope !1720, !noundef !8
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.val683, i64 689
  %i.dn = load i8, ptr %i.dm, align 1, !range !349, !alias.scope !1720
  %i.do = trunc nuw i8 %i.dn to i1
  %or.cond.i1024 = select i1 %i.dl, i1 %i.do, i1 false
  br i1 %or.cond.i1024, label %bb.n, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1025

bb.m:                                             ; preds = %bb.k
  %.old1.i1019 = getelementptr inbounds nuw i8, ptr %.val683, i64 689
  %.old2.i1020 = load i8, ptr %.old1.i1019, align 1, !range !349, !alias.scope !1720, !noundef !8
  %.old3.i1021 = trunc nuw i8 %.old2.i1020 to i1
  br i1 %.old3.i1021, label %bb.n, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1025

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %.val683, i64 432
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1025

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData16active_edit_line.exit1025: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.04.0.i1022 = phi ptr [ %i.dp, %bb.n ], [ %.val683, %bb.m ], [ %.val683, %bb.l ] ; 3 uses
  %.sroa.0.0.i1023 = phi i1 [ true, %bb.n ], [ false, %bb.m ], [ false, %bb.l ] ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.04.0.i1022, i64 120
  %.val885 = load i64, ptr %i.dq, align 8, !noundef !8 ; 9 uses
  %i.dr = icmp eq i64 %.val885, 0
  br i1 %i.dr, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit, label %bb.dv

bb.o:                                             ; preds = %bb.a
  %.val922 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 14 uses
  %i.ds = tail call fastcc { i64, i64 } @_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader14backward_token(ptr nonnull %.val922) ; 2 uses
  %i.dt = extractvalue { i64, i64 } %i.ds, 0
  %i.du = extractvalue { i64, i64 } %i.ds, 1
  %i.dv = trunc nuw i64 %i.dt to i1
  br i1 %i.dv, label %bb.eg, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.p:                                             ; preds = %bb.a
  %.val921 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 6 uses
  %i.dw = tail call fastcc { i64, i64 } @_RNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader14backward_token(ptr nonnull %.val921) ; 2 uses
  %i.dx = extractvalue { i64, i64 } %i.dw, 0
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.ev, label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.q:                                             ; preds = %bb.a
  %.val682 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 6 uses
  %i.dz = getelementptr i8, ptr %.val682, i64 120
  %.val884 = load i64, ptr %i.dz, align 8, !noundef !8 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val682, i64 2289
  %.val924 = load i8, ptr %i.ea, align 1, !range !349, !noundef !8
  %. = zext nneg i8 %.val924 to i64
  %i.eb = add i64 %.val884, %.                    ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %.val884
  br i1 %i.ec, label %bb.fa, label %bb.ez

bb.r:                                             ; preds = %bb.a
  %.val545 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val545, i64 416
  %i.ee = load i64, ptr %i.ed, align 8, !range !942, !alias.scope !1723, !noundef !8
  %.not.i1026 = icmp eq i64 %i.ee, 0
  br i1 %.not.i1026, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %.val545, i64 1248
  %i.eg = load i64, ptr %i.ef, align 8, !range !942, !alias.scope !1723, !noundef !8
  %i.eh = icmp ne i64 %i.eg, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %.val545, i64 689
  %i.ej = load i8, ptr %i.ei, align 1, !range !349, !alias.scope !1723
  %i.ek = trunc nuw i8 %i.ej to i1
  %or.cond.i1032 = select i1 %i.eh, i1 %i.ek, i1 false
  br i1 %or.cond.i1032, label %bb.u, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20active_edit_line_mut.exit

bb.t:                                             ; preds = %bb.r
  %.old1.i1027 = getelementptr inbounds nuw i8, ptr %.val545, i64 689
  %.old2.i1028 = load i8, ptr %.old1.i1027, align 1, !range !349, !alias.scope !1723, !noundef !8
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
  %i.em = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8
  %i.en = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef align 8 dereferenceable(2304) %i.em, i1 noundef zeroext false, i64 noundef 1, i64 0) ; 0 uses
  br label %_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData30select_completion_in_direction.exit

bb.w:                                             ; preds = %bb.a, %bb.a
  %i.eo = icmp eq i8 %1, 21                       ; 2 uses
  %.val680 = load ptr, ptr %0, align 8, !nonnull !8, !align !348, !noundef !8 ; 9 uses
  %i.ep = getelementptr i8, ptr %.val680, i64 416 ; 3 uses
  %.val913 = load i64, ptr %i.ep, align 8, !range !942, !noundef !8
  %i.eq = getelementptr i8, ptr %.val680, i64 1248
  %.val914 = load i64, ptr %i.eq, align 8
  %.not.i1033 = icmp ne i64 %.val913, 0
  %i.er = trunc nuw i64 %.val914 to i1
  %.sroa.0.0.i1034 = select i1 %.not.i1033, i1 true, i1 %i.er
  br i1 %.sroa.0.0.i1034, label %bb.hd, label %bb.hc

bb.x:                                             ; preds = %.preheader, %bb.fc
  %i.es = load i64, ptr %i.ch, align 8, !range !942, !alias.scope !1726, !noundef !8
  %.not.i1035 = icmp eq i64 %i.es, 0
  br i1 %.not.i1035, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
end_hunk_0
