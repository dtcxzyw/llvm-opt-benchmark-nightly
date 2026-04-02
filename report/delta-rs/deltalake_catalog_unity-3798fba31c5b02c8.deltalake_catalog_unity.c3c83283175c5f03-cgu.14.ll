begin_hunk_0
bb.yp:                                            ; preds = %bb.yn
  %i.cge = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.cgf = load ptr, ptr %i.cge, align 8, !noalias !1096, !nonnull !8, !align !12, !noundef !8 ; 6 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgf, i64 144 ; 14 uses
  %i.cgh = getelementptr i8, ptr %i.cgf, i64 160
  %.val36.i332 = load i64, ptr %i.cgh, align 8, !noundef !8
  %i.cgi = icmp eq i64 %.val36.i332, 0
end_hunk_0
begin_hunk_1
  br i1 %.not102.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, label %bb.yu

bb.yu:                                            ; preds = %bb.yt
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgf, i64 152 ; 9 uses
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgf, i64 168 ; 2 uses
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cfr, i64 200 ; 2 uses
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.cgw = load i64, ptr %i.cgg, align 8, !range !14, !noalias !1102, !noundef !8
  %.not.i.i.peel.i = icmp eq i64 %i.cgw, 0
  br i1 %.not.i.i.peel.i, label %bb.yw, label %bb.yv

end_hunk_1
begin_hunk_2
bb.yw:                                            ; preds = %bb.yu
  %i.cgy = load ptr, ptr %i.cgs, align 8, !noalias !1102, !noundef !8 ; 3 uses
  %.not4.i.i.peel.i = icmp eq ptr %i.cgy, null
  br i1 %.not4.i.i.peel.i, label %.loopexit.i345, label %.thread7.i.i.peel.i

.thread7.i.i.peel.i:                              ; preds = %bb.yw
  store ptr %i.cgy, ptr %i.cgr, align 8, !noalias !1102
  store i64 0, ptr %i.cgg, align 8, !noalias !1102
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread76.peel.i

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread76.peel.i: ; preds = %.thread7.i.i.peel.i, %bb.yv
end_hunk_2
begin_hunk_3

.peel.next.i:                                     ; preds = %bb.ze, %bb.zn
  %.sroa.02.096.i = phi i32 [ %.sroa.02.1.i, %bb.zn ], [ %.sroa.02.1.peel.i, %bb.ze ] ; 5 uses
  %i.cht = load i64, ptr %i.cgg, align 8, !range !14, !noalias !1117, !noundef !8
  %.not.i.i.i339 = icmp eq i64 %i.cht, 0
  br i1 %.not.i.i.i339, label %bb.zf, label %bb.zg

bb.zf:                                            ; preds = %.peel.next.i
  %i.chu = load ptr, ptr %i.cgs, align 8, !noalias !1117, !noundef !8 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.chu, null
  br i1 %.not4.i.i.i, label %.loopexit.i345, label %.thread7.i.i.i

.thread7.i.i.i:                                   ; preds = %bb.zf
  store ptr %i.chu, ptr %i.cgr, align 8, !noalias !1117
  store i64 0, ptr %i.cgg, align 8, !noalias !1117
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread76.i

.loopexit.i345:                                   ; preds = %bb.zf, %bb.yw
  %.sroa.02.096.lcssa104.i = phi i32 [ 0, %bb.yw ], [ %.sroa.02.096.i, %bb.zf ]
  store i64 0, ptr %i.cgg, align 8, !noalias !1117
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i

bb.zg:                                            ; preds = %.peel.next.i
  %.pr.i.i.i = load ptr, ptr %i.cgr, align 8, !noalias !1117 ; 2 uses
  store i64 0, ptr %i.cgg, align 8, !noalias !1117
  %i.chv = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.chv, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread76.i

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread76.i: ; preds = %bb.zg, %.thread7.i.i.i
  %2 = phi ptr [ %i.chu, %.thread7.i.i.i ], [ %.pr.i.i.i, %bb.zg ] ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = load ptr, ptr %3, align 8, !noalias !1117, !noundef !8
  store i64 1, ptr %i.cgg, align 8, !noalias !1117
  store ptr %4, ptr %i.cgr, align 8, !noalias !1117
  %5 = invoke noundef zeroext i1 @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringE8is_dirtyCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.zl unwind label %.loopexit110.i.a

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i: ; preds = %bb.zn, %bb.ze, %bb.yt
  %.sroa.02.094.ph.i = phi i32 [ 0, %bb.yt ], [ 1, %bb.ze ], [ %.sroa.02.1.i, %bb.zn ] ; 3 uses
end_hunk_3
begin_hunk_4
  %.not.i.i.i.i.i = icmp eq i64 %.pr.i335, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i, label %bb.zi

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i: ; preds = %bb.zg, %bb.yv, %.loopexit.i345, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i
  %6 = phi ptr [ %i.chw, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i ], [ %i.cgr, %bb.yv ], [ %i.cgr, %.loopexit.i345 ], [ %i.cgr, %bb.zg ] ; 2 uses
  %.sroa.02.094155.i = phi i32 [ %.sroa.02.094.ph.i, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i ], [ 0, %bb.yv ], [ %.sroa.02.096.lcssa104.i, %.loopexit.i345 ], [ %.sroa.02.096.i, %bb.zg ] ; 2 uses
  %i.chx = getelementptr inbounds nuw i8, ptr %i.cgf, i64 168
  %i.chy = load ptr, ptr %i.chx, align 8, !noalias !1119, !noundef !8 ; 3 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.chy, null
  br i1 %.not4.i.i.i.i.i, label %bb.zh, label %.thread7.i.i.i.i.i

.thread7.i.i.i.i.i:                               ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i
  store ptr %i.chy, ptr %6, align 8, !noalias !1119
  store i64 0, ptr %i.cgg, align 8, !noalias !1119
  br label %bb.zj

bb.zh:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i
  store i64 0, ptr %i.cgg, align 8, !noalias !1119
  br label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

bb.zi:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.chw, align 8, !noalias !1119 ; 2 uses
end_hunk_4
begin_hunk_5
  %i.chz = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %i.chz, label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %bb.zj

bb.zj:                                            ; preds = %bb.zi, %.thread7.i.i.i.i.i
  %i.cia = phi ptr [ %6, %.thread7.i.i.i.i.i ], [ %i.chw, %bb.zi ] ; 2 uses
  %.sroa.02.094153.i = phi i32 [ %.sroa.02.094155.i, %.thread7.i.i.i.i.i ], [ %.sroa.02.094.ph.i, %bb.zi ] ; 2 uses
  %i.cib = phi ptr [ %i.chy, %.thread7.i.i.i.i.i ], [ %.pr.i.i.i.i.i, %bb.zi ]
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cib, i64 8
  %i.cid = load ptr, ptr %i.cic, align 8, !noalias !1119, !noundef !8 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.cid, null
  store i64 1, ptr %i.cgg, align 8, !noalias !1119
  br i1 %.not5.i.i.i.i.i, label %bb.zk, label %7

7:                                                ; preds = %bb.zj
  store ptr %i.cid, ptr %i.cia, align 8, !noalias !1119
  br label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

bb.zk:                                            ; preds = %bb.zj
  store ptr null, ptr %i.cia, align 8, !noalias !1119
  br label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

.loopexit110.i.a:                                 ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread76.i
  %lpad.loopexit.i340 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aaa
end_hunk_5
begin_hunk_6
          cleanup
  br label %bb.aaa

bb.zl:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread76.i
  br i1 %5, label %bb.zn, label %bb.zm

bb.zm:                                            ; preds = %bb.zl
  %i.cie = invoke { i64, i64 } @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringE13last_modifiedCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.zo unwind label %.loopexit111.i ; 2 uses

bb.zn:                                            ; preds = %bb.zv, %bb.zo, %bb.zl
end_hunk_6
begin_hunk_7
  br i1 %i.cii, label %bb.zp, label %bb.zn

bb.zp:                                            ; preds = %bb.zo
  %.val35.i341 = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8
  %i.cij = getelementptr inbounds nuw i8, ptr %.val35.i341, i64 8 ; 2 uses
  %.val.i342 = load ptr, ptr %i.cij, align 8, !nonnull !8, !noundef !8
  %i.cik = getelementptr inbounds nuw i8, ptr %.val.i342, i64 16
end_hunk_7
begin_hunk_8
  %i.cix = add nuw i32 %.sroa.02.096.i, 1
  br label %bb.zn

_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.zk, %7, %bb.zi, %bb.zh
  %.sroa.02.094154.i = phi i32 [ %.sroa.02.094153.i, %7 ], [ %.sroa.02.094153.i, %bb.zk ], [ %.sroa.02.094155.i, %bb.zh ], [ %.sroa.02.094.ph.i, %bb.zi ] ; 2 uses
  %.sroa.0.02.i.i.i.i.i = phi i1 [ true, %7 ], [ true, %bb.zk ], [ false, %bb.zh ], [ false, %bb.zi ]
  %i.ciy = icmp eq i32 %.sroa.02.094154.i, 0
  br i1 %i.ciy, label %bb.zw, label %.thread156.i

bb.zw:                                            ; preds = %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
end_hunk_8
begin_hunk_9
  br label %bb.afd

.thread156.i:                                     ; preds = %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.cjb = icmp eq i32 %.sroa.02.094154.i, %i.cfy
  %spec.select.i336 = and i1 %i.cjb, %.sroa.0.02.i.i.i.i.i
  %i.cjc = load ptr, ptr %i.cfs, align 8, !noalias !1096, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  store i8 0, ptr %i.cfp, align 4, !noalias !1096
end_hunk_9
