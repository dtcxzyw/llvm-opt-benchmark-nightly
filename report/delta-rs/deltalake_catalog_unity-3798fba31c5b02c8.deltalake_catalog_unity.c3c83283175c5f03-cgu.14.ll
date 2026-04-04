begin_hunk_0
bb.yp:                                            ; preds = %bb.yn
  %i.cge = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.cgf = load ptr, ptr %i.cge, align 8, !noalias !1096, !nonnull !8, !align !12, !noundef !8 ; 6 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgf, i64 144 ; 9 uses
  %i.cgh = getelementptr i8, ptr %i.cgf, i64 160
  %.val36.i332 = load i64, ptr %i.cgh, align 8, !noundef !8
  %i.cgi = icmp eq i64 %.val36.i332, 0
end_hunk_0
begin_hunk_1
  br i1 %.not102.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, label %bb.yu

bb.yu:                                            ; preds = %bb.yt
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgf, i64 152 ; 10 uses
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgf, i64 168 ; 2 uses
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cfr, i64 200 ; 2 uses
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.cgw = load i64, ptr %i.cgg, align 8, !range !14, !noalias !8, !noundef !8
  %.not.i.i.peel.i = icmp eq i64 %i.cgw, 0
  br i1 %.not.i.i.peel.i, label %bb.yw, label %bb.yv

end_hunk_1
begin_hunk_2
bb.yw:                                            ; preds = %bb.yu
  %i.cgy = load ptr, ptr %i.cgs, align 8, !noalias !1102, !noundef !8 ; 3 uses
  %.not4.i.i.peel.i = icmp eq ptr %i.cgy, null
  br i1 %.not4.i.i.peel.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i, label %.thread7.i.i.peel.i

.thread7.i.i.peel.i:                              ; preds = %bb.yw
  store ptr %i.cgy, ptr %i.cgr, align 8, !noalias !1102
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread76.peel.i

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread76.peel.i: ; preds = %.thread7.i.i.peel.i, %bb.yv
end_hunk_2
begin_hunk_3

.peel.next.i:                                     ; preds = %bb.ze, %bb.zn
  %.sroa.02.096.i = phi i32 [ %.sroa.02.1.i, %bb.zn ], [ %.sroa.02.1.peel.i, %bb.ze ] ; 5 uses
  %i.cht = load i64, ptr %i.cgg, align 8, !range !14, !noalias !8, !noundef !8
  %.not.i.i.i339 = icmp eq i64 %i.cht, 0
  br i1 %.not.i.i.i339, label %bb.zf, label %bb.zg

bb.zf:                                            ; preds = %.peel.next.i
  %i.chu = load ptr, ptr %i.cgs, align 8, !noalias !1117, !noundef !8 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.chu, null
  br i1 %.not4.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i, label %.loopexit.i345

.loopexit.i345:                                   ; preds = %bb.zf
  store ptr %i.chu, ptr %i.cgr, align 8, !noalias !1117
  br label %bb.zk

bb.zg:                                            ; preds = %.peel.next.i
  %.pr.i.i.i = load ptr, ptr %i.cgr, align 8, !noalias !1117 ; 2 uses
  store i64 0, ptr %i.cgg, align 8, !noalias !1117
  %i.chv = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.chv, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i, label %bb.zk

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i: ; preds = %bb.zn, %bb.ze, %bb.yt
  %.sroa.02.094.ph.i = phi i32 [ 0, %bb.yt ], [ 1, %bb.ze ], [ %.sroa.02.1.i, %bb.zn ] ; 3 uses
end_hunk_3
begin_hunk_4
  %.not.i.i.i.i.i = icmp eq i64 %.pr.i335, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i, label %bb.zi

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i: ; preds = %bb.zf, %bb.zg, %bb.yv, %bb.yw, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i
  %2 = phi ptr [ %i.chw, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i ], [ %i.cgr, %bb.yw ], [ %i.cgr, %bb.yv ], [ %i.cgr, %bb.zg ], [ %i.cgr, %bb.zf ] ; 2 uses
  %.sroa.02.0.lcssa143.i = phi i32 [ %.sroa.02.094.ph.i, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i ], [ 0, %bb.yw ], [ 0, %bb.yv ], [ %.sroa.02.096.i, %bb.zg ], [ %.sroa.02.096.i, %bb.zf ] ; 2 uses
  %i.chx = getelementptr inbounds nuw i8, ptr %i.cgf, i64 168
  %i.chy = load ptr, ptr %i.chx, align 8, !noalias !1119, !noundef !8 ; 3 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.chy, null
  br i1 %.not4.i.i.i.i.i, label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %bb.zh

bb.zh:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i
  store ptr %i.chy, ptr %2, align 8, !noalias !1119
  br label %bb.zj

bb.zi:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.chw, align 8, !noalias !1119 ; 2 uses
end_hunk_4
begin_hunk_5
  %i.chz = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %i.chz, label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %bb.zj

bb.zj:                                            ; preds = %bb.zi, %bb.zh
  %i.cia = phi ptr [ %2, %bb.zh ], [ %i.chw, %bb.zi ]
  %.sroa.02.094153.i = phi i32 [ %.sroa.02.0.lcssa143.i, %bb.zh ], [ %.sroa.02.094.ph.i, %bb.zi ]
  %i.cib = phi ptr [ %i.chy, %bb.zh ], [ %.pr.i.i.i.i.i, %bb.zi ]
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cib, i64 8
  %i.cid = load ptr, ptr %i.cic, align 8, !noalias !1119, !noundef !8
  store i64 1, ptr %i.cgg, align 8, !noalias !1119
  store ptr %i.cid, ptr %i.cia, align 8, !noalias !1119
  br label %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

bb.zk:                                            ; preds = %bb.zg, %.loopexit.i345
  %3 = phi ptr [ %i.chu, %.loopexit.i345 ], [ %.pr.i.i.i, %bb.zg ] ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8, !noalias !1117, !noundef !8
  store i64 1, ptr %i.cgg, align 8, !noalias !1117
  store ptr %5, ptr %i.cgr, align 8, !noalias !1117
  %6 = invoke noundef zeroext i1 @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringE8is_dirtyCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
          to label %bb.zl unwind label %.loopexit110.i.a

.loopexit110.i.a:                                 ; preds = %bb.zk
  %lpad.loopexit.i340 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aaa
end_hunk_5
begin_hunk_6
          cleanup
  br label %bb.aaa

bb.zl:                                            ; preds = %bb.zk
  br i1 %6, label %bb.zn, label %bb.zm

bb.zm:                                            ; preds = %bb.zl
  %i.cie = invoke { i64, i64 } @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringE13last_modifiedCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
          to label %bb.zo unwind label %.loopexit111.i ; 2 uses

bb.zn:                                            ; preds = %bb.zv, %bb.zo, %bb.zl
end_hunk_6
begin_hunk_7
  br i1 %i.cii, label %bb.zp, label %bb.zn

bb.zp:                                            ; preds = %bb.zo
  %.val35.i341 = load ptr, ptr %3, align 8, !nonnull !8, !noundef !8
  %i.cij = getelementptr inbounds nuw i8, ptr %.val35.i341, i64 8 ; 2 uses
  %.val.i342 = load ptr, ptr %i.cij, align 8, !nonnull !8, !noundef !8
  %i.cik = getelementptr inbounds nuw i8, ptr %.val.i342, i64 16
end_hunk_7
begin_hunk_8
  %i.cix = add nuw i32 %.sroa.02.096.i, 1
  br label %bb.zn

_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.zj, %bb.zi, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i
  %.sroa.02.0.lcssa142.i = phi i32 [ %.sroa.02.0.lcssa143.i, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i ], [ %.sroa.02.094.ph.i, %bb.zi ], [ %.sroa.02.094153.i, %bb.zj ] ; 2 uses
  %.sroa.0.02.i.i.i.i.i = phi i1 [ false, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB4_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1b_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.thread.i ], [ false, %bb.zi ], [ true, %bb.zj ]
  %i.ciy = icmp eq i32 %.sroa.02.0.lcssa142.i, 0
  br i1 %i.ciy, label %bb.zw, label %.thread156.i

bb.zw:                                            ; preds = %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
end_hunk_8
begin_hunk_9
  br label %bb.afd

.thread156.i:                                     ; preds = %_RNCNvMs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters8peekableINtB7_8PeekableQINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1e_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4peek0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.cjb = icmp eq i32 %.sroa.02.0.lcssa142.i, %i.cfy
  %spec.select.i336 = and i1 %i.cjb, %.sroa.0.02.i.i.i.i.i
  %i.cjc = load ptr, ptr %i.cfs, align 8, !noalias !1096, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  store i8 0, ptr %i.cfp, align 4, !noalias !1096
end_hunk_9
