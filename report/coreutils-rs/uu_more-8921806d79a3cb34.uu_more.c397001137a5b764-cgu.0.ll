Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_more-8921806d79a3cb34.uu_more.c397001137a5b764-cgu.0?download=true
inline.NumInlined: 797
inline.NumDeleted: 452
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvCsgN7rS7e43TA_7uu_more4more:bb.a
  %i.gn = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cq) #26 ; 2 uses
  %.not36.i = icmp eq ptr %i.gn, null
  br i1 %.not36.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit55.i
  %i.go = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.gn) #26 ; 2 uses
  %i.gp = extractvalue { ptr, ptr } %i.go, 0
  br label %bb.bf

bb.bc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit55.i
  %.val40.i = load i64, ptr %i.cp, align 8, !range !16, !alias.scope !391, !noundef !6
  %i.gq = call fastcc { ptr, ptr } @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager18wait_for_enter_key(i64 %.val40.i) #26 ; 2 uses
  %i.gr = extractvalue { ptr, ptr } %i.gq, 0      ; 2 uses
  %.not37.i = icmp eq ptr %i.gr, null
  br i1 %.not37.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  store i64 0, ptr %i.ce, align 8, !alias.scope !391
  %i.gs = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.gs, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !404
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit.thread

bb.bf:                                            ; preds = %bb.bc, %bb.bb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit52.i
  %.sroa.0.0.i = phi ptr [ %i.gi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit52.i ], [ %i.gp, %bb.bb ], [ %i.gr, %bb.bc ]
  %.merged109 = phi { ptr, ptr } [ %i.gh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit52.i ], [ %i.go, %bb.bb ], [ %i.gq, %bb.bc ]
  %i.gt = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.gt, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !405
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit: ; preds = %bb.bf, %bb.bg
  %.not = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit.thread, label %bb.dq

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit.thread: ; preds = %bb.bd, %bb.q, %bb.be, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.gu = load i64, ptr %i.ch, align 8, !range !12, !alias.scope !406, !noundef !6
  %.not.i58 = icmp eq i64 %i.gu, -1
  br i1 %.not.i58, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager21handle_pattern_search.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !408
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch) #26
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.i, align 8, !noalias !408 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.49.0.copyload.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !408 ; 17 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !408
  %.sroa.5.0.copyload.fr.i.i = freeze i64 %.sroa.5.0.copyload.i.i ; 22 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !408
  %i.gv = load i64, ptr %i.ce, align 8, !alias.scope !408, !noundef !6 ; 12 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.gx = icmp ult i64 %.sroa.5.0.copyload.fr.i.i, 33
  %i.gy = add nsw i64 %.sroa.5.0.copyload.fr.i.i, -1
  %i.gz = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %.sroa.5.0.copyload.fr.i.i, i64 4)
  %i.ha = add nuw nsw i64 %.sroa.5.0.copyload.fr.i.i, 15 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.49.0.copyload.i.i, i64 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.he = add nuw nsw i64 %.sroa.5.0.copyload.fr.i.i, 63 ; 2 uses
  switch i64 %.sroa.5.0.copyload.fr.i.i, label %.split.split.i.preheader.i [
    i64 0, label %.split.us.i.i
    i64 1, label %.split.split.us.i.preheader.i
  ]

.split.split.us.i.preheader.i:                    ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !409
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.gv) #26
  %i.hf = load ptr, ptr %i.h, align 8, !noalias !409, !noundef !6 ; 2 uses
  %.not3.i.us27.i83.i = icmp eq ptr %i.hf, null
  %.val7.i.us28.i84.i = load ptr, ptr %i.gw, align 8, !noalias !409 ; 2 uses
  br i1 %.not3.i.us27.i83.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.i.i, label %.split.split.us.i._crit_edge.i

.split.split.i.preheader.i:                       ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !411
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.gv) #26
  %i.hg = load ptr, ptr %i.h, align 8, !noalias !411, !noundef !6 ; 2 uses
  %.not3.i.i88.i = icmp eq ptr %i.hg, null
  %.val7.i.i89.i = load ptr, ptr %i.gw, align 8, !noalias !411 ; 2 uses
  br i1 %.not3.i.i88.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i, label %.split.split.i._crit_edge.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i: ; preds = %.split.split.i.preheader.i
  %i.hh = ptrtoint ptr %.val7.i.i89.i to i64
  %i.hi = trunc i64 %i.hh to i8                   ; 2 uses
  %i.hj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !411, !nonnull !6 ; 2 uses
  br i1 %i.gx, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i
  %invariant.op = sub i64 -15, %.sroa.5.0.copyload.fr.i.i
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i
  %i.hk = phi i8 [ %i.ls, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %i.hi, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader ]
  %i.hl = phi ptr [ %i.lq, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %i.hj, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader ]
  %.sroa.01.0.i90.us.i = phi i64 [ %i.lo, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %i.gv, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.hm = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !413
  %i.hn = trunc nuw i8 %i.hk to i1
  %i.ho = icmp ult i64 %.sroa.01.0.i90.us.i, %i.hm
  %or.cond6.i.i.us.i = select i1 %i.hn, i1 %i.ho, i1 false ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !413
  br i1 %or.cond6.i.i.us.i, label %bb.bi, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

bb.bi:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %.sroa.01.0.i90.us.i ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !noundef !6 ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.hu = icmp ult i64 %.sroa.5.0.copyload.fr.i.i, %i.ht
  br i1 %i.hu, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hv = icmp eq i64 %.sroa.5.0.copyload.fr.i.i, %i.ht
  br i1 %i.hv, label %bb.bk, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i

bb.bk:                                            ; preds = %bb.bj
  %bcmp.i.i.us.i = call i32 @bcmp(ptr nonnull readonly %.sroa.49.0.copyload.i.i, ptr nonnull readonly %i.hr, i64 %.sroa.5.0.copyload.fr.i.i), !alias.scope !416
  %i.hw = icmp eq i32 %bcmp.i.i.us.i, 0
  %i.hx = zext i1 %i.hw to i8
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.hy = load i8, ptr %.sroa.49.0.copyload.i.i, align 1, !alias.scope !419, !noundef !6 ; 3 uses
  switch i64 %.sroa.5.0.copyload.fr.i.i, label %.lr.ph [
    i64 2, label %.thread.i.i.i.us.i
    i64 0, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i
  ]

.preheader.i.us.i:                                ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i
  %i.hz = icmp ult i64 %i.gz, %i.ib
  br i1 %i.hz, label %.lr.ph, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i

.lr.ph:                                           ; preds = %bb.bl, %.preheader.i.us.i
  %i.ia = phi i64 [ %i.ib, %.preheader.i.us.i ], [ %.sroa.5.0.copyload.fr.i.i, %bb.bl ]
  %i.ib = add nsw i64 %i.ia, -1                   ; 6 uses
  %i.ic = icmp ult i64 %i.ib, %.sroa.5.0.copyload.fr.i.i
  br i1 %i.ic, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i, label %.split98.us.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i: ; preds = %.lr.ph
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.49.0.copyload.i.i, i64 %i.ib
  %i.ie = load i8, ptr %i.id, align 1, !alias.scope !419, !noalias !420, !noundef !6 ; 2 uses
  %.not.i.not.i.i.i.i.us.i = icmp eq i8 %i.ie, %i.hy
  br i1 %.not.i.not.i.i.i.i.us.i, label %.preheader.i.us.i, label %bb.bm

bb.bm:                                            ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i
  %i.if = icmp ult i64 %i.ht, %i.ha
  br i1 %i.if, label %.lr.ph.split.us.i.i.i.i.us.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ig = insertelement <16 x i8> poison, i8 %i.hy, i64 0
  %i.ih = shufflevector <16 x i8> %i.ig, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bo

.thread.i.i.i.us.i:                               ; preds = %bb.bl
  %i.ii = icmp ult i64 %i.ht, 17
  br i1 %i.ii, label %.lr.ph.split.us.i.i.i.i.us.i, label %.thread92.i.i.i.us.i

.thread92.i.i.i.us.i:                             ; preds = %.thread.i.i.i.us.i
  %i.ij = insertelement <16 x i8> poison, i8 %i.hy, i64 0
  %i.ik = shufflevector <16 x i8> %i.ij, <16 x i8> poison, <16 x i32> zeroinitializer
  %.pre.i.i.i.us.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !alias.scope !419
  br label %bb.bo

bb.bo:                                            ; preds = %.thread92.i.i.i.us.i, %bb.bn
  %i.il = phi i8 [ %.pre.i.i.i.us.i, %.thread92.i.i.i.us.i ], [ %i.ie, %bb.bn ]
  %i.im = phi <16 x i8> [ %i.ik, %.thread92.i.i.i.us.i ], [ %i.ih, %bb.bn ] ; 6 uses
  %storemerge9194.i.i.i.us.i = phi i64 [ 1, %.thread92.i.i.i.us.i ], [ %i.ib, %bb.bn ] ; 6 uses
  %i.in = insertelement <16 x i8> poison, i8 %i.il, i64 0
  %i.io = shufflevector <16 x i8> %i.in, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !421
  store ptr %i.hr, ptr %i.e, align 8, !noalias !421
  store i64 %i.ht, ptr %i.hb, align 8, !noalias !421
  store ptr %.phi.trans.insert.i.i.i.i, ptr %i.hc, align 8, !noalias !421
  store i64 %i.gy, ptr %i.hd, align 8, !noalias !421
  %.not.i4.i.i.us.i = icmp ult i64 %i.he, %i.ht
  br i1 %.not.i4.i.i.us.i, label %.lr.ph.i7.i.i.us.i, label %.preheader.i5.i.i.us.i

.lr.ph.i7.i.i.us.i:                               ; preds = %bb.bo, %bb.bt
  %.sroa.06.0102.i.i.i.us.i = phi i64 [ %i.kf, %bb.bt ], [ 0, %bb.bo ] ; 6 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.sroa.06.0102.i.i.i.us.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.us.i = load <16 x i8>, ptr %i.ip, align 1, !alias.scope !422, !noalias !423
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.i.i.i.us.i = load <16 x i8>, ptr %i.iq, align 1, !alias.scope !422, !noalias !423
  %i.ir = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.us.i, %i.im
  %i.is = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i.us.i, %i.io
  %i.it = and <16 x i1> %i.ir, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i.us.i = load <16 x i8>, ptr %i.iu, align 1, !alias.scope !422, !noalias !423
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.1.i.i.i.us.i = load <16 x i8>, ptr %i.iv, align 1, !alias.scope !422, !noalias !423
  %i.iw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.us.i, %i.im
  %i.ix = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i.us.i, %i.io
  %i.iy = and <16 x i1> %i.iw, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i.us.i = load <16 x i8>, ptr %i.iz, align 1, !alias.scope !422, !noalias !423
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.2.i.i.i.us.i = load <16 x i8>, ptr %i.ja, align 1, !alias.scope !422, !noalias !423
  %i.jb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.us.i, %i.im
  %i.jc = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i.us.i, %i.io
  %i.jd = and <16 x i1> %i.jb, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.ip, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i.us.i = load <16 x i8>, ptr %i.je, align 1, !alias.scope !422, !noalias !423
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.3.i.i.i.us.i = load <16 x i8>, ptr %i.jf, align 1, !alias.scope !422, !noalias !423
  %i.jg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.us.i, %i.im
  %i.jh = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i.us.i, %i.io
  %i.ji = and <16 x i1> %i.jg, %i.jh
  %i.jj = bitcast <16 x i1> %i.it to i16          ; 2 uses
  %i.jk = icmp eq i16 %i.jj, 0
  br i1 %i.jk, label %.preheader95.1.i.i.i.us.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i7.i.i.us.i
  %i.jl = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.sroa.06.0102.i.i.i.us.i, i16 noundef %i.jj, i1 noundef zeroext false) #28
  %i.jm = zext i1 %i.jl to i8
  br label %.preheader95.1.i.i.i.us.i

.preheader95.1.i.i.i.us.i:                        ; preds = %bb.bp, %.lr.ph.i7.i.i.us.i
  %.sroa.014.2.i.i.i.us.i = phi i8 [ 0, %.lr.ph.i7.i.i.us.i ], [ %i.jm, %bb.bp ] ; 3 uses
  %7 = bitcast <16 x i1> %i.iy to i16             ; 2 uses
  %i.jn = icmp eq i16 %7, 0
  br i1 %i.jn, label %.preheader95.2.i.i.i.us.i, label %bb.bq

bb.bq:                                            ; preds = %.preheader95.1.i.i.i.us.i
  %i.jo = or disjoint i64 %.sroa.06.0102.i.i.i.us.i, 16
  %i.jp = trunc nuw i8 %.sroa.014.2.i.i.i.us.i to i1
  %i.jq = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.jo, i16 noundef %7, i1 noundef zeroext %i.jp) #28
  %i.jr = zext i1 %i.jq to i8
  %i.js = or i8 %.sroa.014.2.i.i.i.us.i, %i.jr
  br label %.preheader95.2.i.i.i.us.i

.preheader95.2.i.i.i.us.i:                        ; preds = %bb.bq, %.preheader95.1.i.i.i.us.i
  %.sroa.014.2.1.i.i.i.us.i = phi i8 [ %.sroa.014.2.i.i.i.us.i, %.preheader95.1.i.i.i.us.i ], [ %i.js, %bb.bq ] ; 3 uses
  %8 = bitcast <16 x i1> %i.jd to i16             ; 2 uses
  %i.jt = icmp eq i16 %8, 0
  br i1 %i.jt, label %.preheader95.3.i.i.i.us.i, label %bb.br

bb.br:                                            ; preds = %.preheader95.2.i.i.i.us.i
  %i.ju = or disjoint i64 %.sroa.06.0102.i.i.i.us.i, 32
  %i.jv = trunc nuw i8 %.sroa.014.2.1.i.i.i.us.i to i1
  %i.jw = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.ju, i16 noundef %8, i1 noundef zeroext %i.jv) #28
  %i.jx = zext i1 %i.jw to i8
  %i.jy = or i8 %.sroa.014.2.1.i.i.i.us.i, %i.jx
  br label %.preheader95.3.i.i.i.us.i

.preheader95.3.i.i.i.us.i:                        ; preds = %bb.br, %.preheader95.2.i.i.i.us.i
  %.sroa.014.2.2.i.i.i.us.i = phi i8 [ %.sroa.014.2.1.i.i.i.us.i, %.preheader95.2.i.i.i.us.i ], [ %i.jy, %bb.br ] ; 3 uses
  %9 = bitcast <16 x i1> %i.ji to i16             ; 2 uses
  %i.jz = icmp eq i16 %9, 0
  br i1 %i.jz, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.preheader95.3.i.i.i.us.i
  %i.ka = or disjoint i64 %.sroa.06.0102.i.i.i.us.i, 48
  %i.kb = trunc nuw i8 %.sroa.014.2.2.i.i.i.us.i to i1
  %i.kc = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.ka, i16 noundef %9, i1 noundef zeroext %i.kb) #28
  %i.kd = zext i1 %i.kc to i8
  %i.ke = or i8 %.sroa.014.2.2.i.i.i.us.i, %i.kd
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.preheader95.3.i.i.i.us.i
  %.sroa.014.2.3.i.i.i.us.i = phi i8 [ %.sroa.014.2.2.i.i.i.us.i, %.preheader95.3.i.i.i.us.i ], [ %i.ke, %bb.bs ] ; 2 uses
  %i.kf = add i64 %.sroa.06.0102.i.i.i.us.i, 64   ; 3 uses
  %i.kg = add i64 %i.kf, %i.he
  %i.kh = icmp uge i64 %i.kg, %i.ht
  %i.ki = trunc nuw i8 %.sroa.014.2.3.i.i.i.us.i to i1
  %or.cond.i.i.i.us.i = select i1 %i.kh, i1 true, i1 %i.ki
  br i1 %or.cond.i.i.i.us.i, label %.preheader.i5.i.i.us.i, label %.lr.ph.i7.i.i.us.i

.preheader.i5.i.i.us.i:                           ; preds = %bb.bt, %bb.bo
  %.sroa.014.0.lcssa.i.i.i.us.i = phi i8 [ 0, %bb.bo ], [ %.sroa.014.2.3.i.i.i.us.i, %bb.bt ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i.us.i = phi i64 [ 0, %bb.bo ], [ %i.kf, %bb.bt ] ; 2 uses
  %i.kj = add i64 %.sroa.06.0.lcssa.i.i.i.us.i, %i.ha
  %i.kk = icmp uge i64 %i.kj, %i.ht
  %i.kl = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.us.i to i1 ; 2 uses
  %or.cond3104.i.i.i.us.i = select i1 %i.kk, i1 true, i1 %i.kl
  br i1 %or.cond3104.i.i.i.us.i, label %._crit_edge.i6.i.i.us.i, label %.lr.ph106.i.i.i.us.i

.lr.ph106.i.i.i.us.i:                             ; preds = %.preheader.i5.i.i.us.i, %bb.bv
  %.sroa.06.1105.i.i.i.us.i = phi i64 [ %i.kv, %bb.bv ], [ %.sroa.06.0.lcssa.i.i.i.us.i, %.preheader.i5.i.i.us.i ] ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.sroa.06.1105.i.i.i.us.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i.i.us.i = load <16 x i8>, ptr %i.km, align 1, !alias.scope !422, !noalias !424
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i60.i.i.i.us.i = load <16 x i8>, ptr %i.kn, align 1, !alias.scope !422, !noalias !424
  %i.ko = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i.i.us.i, %i.im
  %i.kp = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i.i.us.i, %i.io
  %i.kq = and <16 x i1> %i.ko, %i.kp
  %i.kr = bitcast <16 x i1> %i.kq to i16          ; 2 uses
  %i.ks = icmp eq i16 %i.kr, 0
  br i1 %i.ks, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph106.i.i.i.us.i
  %i.kt = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.sroa.06.1105.i.i.i.us.i, i16 noundef %i.kr, i1 noundef zeroext false) #28
  %i.ku = zext i1 %i.kt to i8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph106.i.i.i.us.i
  %.sroa.014.4.i.i.i.us.i = phi i8 [ 0, %.lr.ph106.i.i.i.us.i ], [ %i.ku, %bb.bu ] ; 2 uses
  %i.kv = add i64 %.sroa.06.1105.i.i.i.us.i, 16   ; 2 uses
  %i.kw = add i64 %i.kv, %i.ha
  %i.kx = icmp uge i64 %i.kw, %i.ht
  %i.ky = trunc nuw i8 %.sroa.014.4.i.i.i.us.i to i1 ; 2 uses
  %or.cond3.i.i.i.us.i = or i1 %i.kx, %i.ky
  br i1 %or.cond3.i.i.i.us.i, label %._crit_edge.i6.i.i.us.i, label %.lr.ph106.i.i.i.us.i

._crit_edge.i6.i.i.us.i:                          ; preds = %bb.bv, %.preheader.i5.i.i.us.i
  %.sroa.014.3.lcssa.i.i.i.us.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.us.i, %.preheader.i5.i.i.us.i ], [ %.sroa.014.4.i.i.i.us.i, %bb.bv ] ; 2 uses
  %.lcssa.i.i.i.us.i = phi i1 [ %i.kl, %.preheader.i5.i.i.us.i ], [ %i.ky, %bb.bv ]
  %.reass.reass.i.reass.us.reass.i.reass.reass.reass = add i64 %i.ht, %invariant.op ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.reass.reass.i.reass.us.reass.i.reass.reass.reass ; 2 uses
  %.sroa.0.0.copyload.i57.i.i.i.us.i = load <16 x i8>, ptr %i.kz, align 1, !alias.scope !422, !noalias !425
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i58.i.i.i.us.i = load <16 x i8>, ptr %i.la, align 1, !alias.scope !422, !noalias !425
  %i.lb = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i.i.us.i, %i.im
  %i.lc = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i.i.us.i, %i.io
  %i.ld = and <16 x i1> %i.lb, %i.lc
  %i.le = bitcast <16 x i1> %i.ld to i16          ; 2 uses
  %i.lf = icmp eq i16 %i.le, 0
  br i1 %i.lf, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.i6.i.i.us.i
  %i.lg = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.reass.reass.i.reass.us.reass.i.reass.reass.reass, i16 noundef %i.le, i1 noundef zeroext %.lcssa.i.i.i.us.i) #28
  %i.lh = zext i1 %i.lg to i8
  %i.li = or i8 %.sroa.014.3.lcssa.i.i.i.us.i, %i.lh
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %._crit_edge.i6.i.i.us.i
  %.sroa.014.5.i.i.i.us.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.us.i, %._crit_edge.i6.i.i.us.i ], [ %i.li, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !421
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i

_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i, %bb.bx, %bb.bk
  %.sroa.0.0.i7.i.us.i = phi i8 [ %i.hx, %bb.bk ], [ %i.lu, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i ], [ %.sroa.014.5.i.i.i.us.i, %bb.bx ]
  %i.lj = trunc nuw i8 %.sroa.0.0.i7.i.us.i to i1
  br i1 %i.lj, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i

.lr.ph.split.us.i.i.i.i.us.i:                     ; preds = %.thread.i.i.i.us.i, %bb.bm
  %bcmp.i.i.us22.i.i.i.i.us.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.hr, ptr noundef nonnull readonly dereferenceable(1) %.sroa.49.0.copyload.i.i, i64 range(i64 2, 33) %.sroa.5.0.copyload.fr.i.i), !alias.scope !426, !noalias !427
  %i.lk = icmp eq i32 %bcmp.i.i.us22.i.i.i.i.us.i, 0
  br i1 %i.lk, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i: ; preds = %.lr.ph.split.us.i.i.i.i.us.i, %.split.us.i.i.i.i.us.i
  %.pn.i.i.i.us.i = phi ptr [ %i.lm, %.split.us.i.i.i.i.us.i ], [ %i.hr, %.lr.ph.split.us.i.i.i.i.us.i ]
  %.in.i.i.i.us.i = phi i64 [ %i.ll, %.split.us.i.i.i.i.us.i ], [ %i.ht, %.lr.ph.split.us.i.i.i.i.us.i ]
  %i.ll = add i64 %.in.i.i.i.us.i, -1             ; 2 uses
  %.not27.i.i.i.i.us.i = icmp ugt i64 %.sroa.5.0.copyload.fr.i.i, %i.ll
  br i1 %.not27.i.i.i.i.us.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i, label %.split.us.i.i.i.i.us.i

.split.us.i.i.i.i.us.i:                           ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.us.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.us.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lm, ptr noundef nonnull readonly dereferenceable(1) %.sroa.49.0.copyload.i.i, i64 range(i64 2, 33) %.sroa.5.0.copyload.fr.i.i), !alias.scope !426, !noalias !427
  %i.ln = icmp eq i32 %bcmp.i.i.us.i.i.i.i.us.i, 0
  br i1 %i.ln, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i

_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i, %bb.bj
  %i.lo = add nuw i64 %.sroa.01.0.i90.us.i, 1     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !429
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.lo) #26
  %i.lp = load ptr, ptr %i.h, align 8, !noalias !429, !noundef !6 ; 2 uses
  %.not3.i.i.us.i = icmp eq ptr %i.lp, null
  %i.lq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !429, !nonnull !6
  %.val7.i.i.us.i = load ptr, ptr %i.gw, align 8, !noalias !429 ; 2 uses
  %i.lr = ptrtoint ptr %.val7.i.i.us.i to i64
  %i.ls = trunc i64 %i.lr to i8
  br i1 %.not3.i.i.us.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i, label %.split.split.i._crit_edge.i

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i: ; preds = %.preheader.i.us.i, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !430
  call void @_RNvMsu_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hr, i64 noundef %i.ht, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.49.0.copyload.i.i, i64 noundef %.sroa.5.0.copyload.fr.i.i) #26
  call fastcc void @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 dereferenceable(104) %i.f) #28
  %i.lt = load i64, ptr %i.g, align 8, !range !16, !noalias !430, !noundef !6
  %i.lu = trunc nuw nsw i64 %i.lt to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !430
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i

.split.us.i.i:                                    ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !413
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.gv) #26
  %i.lv = load ptr, ptr %i.h, align 8, !noalias !413, !noundef !6 ; 3 uses
  %.not3.i.us.i.i = icmp eq ptr %i.lv, null
  %.val7.i.us.i.i = load ptr, ptr %i.gw, align 8, !noalias !413 ; 5 uses
  br i1 %.not3.i.us.i.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.i.i, label %bb.by

bb.by:                                            ; preds = %.split.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.us.i.i) ]
  %i.lw = load ptr, ptr %.val7.i.us.i.i, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i.us.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.us.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void %i.lw(ptr noundef nonnull %i.lv) #28, !inline_history !348
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.lx = getelementptr inbounds nuw i8, ptr %.val7.i.us.i.i, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !range !7, !invariant.load !6 ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.thread.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us.i.i: ; preds = %bb.ca
  %i.ma = getelementptr inbounds nuw i8, ptr %.val7.i.us.i.i, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !range !9, !invariant.load !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lv, i64 noundef %i.ly, i64 noundef range(i64 1, -9223372036854775807) %i.mb) #26
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.thread.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !413
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.i.i: ; preds = %.split.us.i.i
  %i.mc = ptrtoint ptr %.val7.i.us.i.i to i64
  %i.md = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !413
  %i.me = trunc i64 %i.mc to i1
  %i.mf = icmp ult i64 %i.gv, %i.md
  %or.cond6.i.us.i.i = select i1 %i.me, i1 %i.mf, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !413
  br i1 %or.cond6.i.us.i.i, label %bb.cb, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

bb.cb:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

.split.split.us.i._crit_edge.i:                   ; preds = %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i, %.split.split.us.i.preheader.i
  %.sroa.01.0.us26.i.lcssa.i = phi i64 [ %i.gv, %.split.split.us.i.preheader.i ], [ %i.nh, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ]
  %.lcssa78.i = phi ptr [ %i.hf, %.split.split.us.i.preheader.i ], [ %i.ni, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ] ; 2 uses
  %.val7.i.us28.i.lcssa.i = phi ptr [ %.val7.i.us28.i84.i, %.split.split.us.i.preheader.i ], [ %.val7.i.us28.i.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.us28.i.lcssa.i) ]
  %i.mg = load ptr, ptr %.val7.i.us28.i.lcssa.i, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i.us29.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i.us29.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.split.split.us.i._crit_edge.i
  call void %i.mg(ptr noundef nonnull %.lcssa78.i) #28, !inline_history !348
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.split.split.us.i._crit_edge.i
  %i.mh = getelementptr inbounds nuw i8, ptr %.val7.i.us28.i.lcssa.i, i64 8
  %i.mi = load i64, ptr %i.mh, align 8, !range !7, !invariant.load !6 ; 2 uses
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.thread.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us30.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us30.i.i: ; preds = %bb.cd
  %i.mk = getelementptr inbounds nuw i8, ptr %.val7.i.us28.i.lcssa.i, i64 16
  %i.ml = load i64, ptr %i.mk, align 8, !range !9, !invariant.load !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa78.i, i64 noundef %i.mi, i64 noundef range(i64 1, -9223372036854775807) %i.ml) #26
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.thread.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us30.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !413
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i
end_hunk_0
