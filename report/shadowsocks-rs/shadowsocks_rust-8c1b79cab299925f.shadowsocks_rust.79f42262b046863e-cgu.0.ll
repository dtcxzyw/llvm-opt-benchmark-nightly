Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMs1_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB6_13AccessControl14load_from_fileRNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust:bb.a

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %.outer.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.fp = load i64, ptr %.sroa.3234.0..sroa_idx, align 8, !alias.scope !807, !noalias !808, !noundef !14 ; 3 uses
  %i.fq = load i64, ptr %i.cp, align 8, !alias.scope !807, !noalias !808, !noundef !14 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.fp, %i.fq
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !807, !noalias !808 ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !809
  %i.fr = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !807, !noalias !808, !noundef !14
  store ptr %.pre.i.i.i.i.i.i.i, ptr %i.q, align 8, !noalias !809
  store i64 %i.fr, ptr %i.cq, align 8, !noalias !809
  store i64 0, ptr %i.cr, align 8, !noalias !809
  %i.fs = load i8, ptr %i.ct, align 8, !range !19, !alias.scope !807, !noalias !808, !noundef !14
  store i8 %i.fs, ptr %i.cs, align 8, !noalias !809
  %i.ft = call noundef ptr @_RNvXsa_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.sroa.5236.0..sroa_idx, ptr noundef nonnull %.pre.i.i.i.i.i.i.i, ptr noundef nonnull %i.q) #30, !noalias !810 ; 2 uses
  store i64 0, ptr %.sroa.3234.0..sroa_idx, align 8, !alias.scope !807, !noalias !808
  %i.fu = load i64, ptr %i.cr, align 8, !noalias !809, !noundef !14 ; 3 uses
  store i64 %i.fu, ptr %i.cp, align 8, !alias.scope !807, !noalias !808
  %i.fv = load i8, ptr %i.cs, align 8, !range !19, !noalias !809, !noundef !14
  store i8 %i.fv, ptr %i.ct, align 8, !alias.scope !807, !noalias !808
  %.not3.i.i.i.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not3.i.i.i.i.i.i.i, label %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread57.i.i.i.i.i, label %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i

_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i: ; preds = %bb.j
  %i.fw = ptrtoint ptr %i.ft to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !809
  br label %bb.k

_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread57.i.i.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !809
  br label %.loopexit64.i.i.i.i.i

_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.i
  %i.fx = sub nuw i64 %i.fq, %i.fp                ; 2 uses
  %i.fy = icmp eq ptr %.pre.i.i.i.i.i.i.i, null
  br i1 %i.fy, label %bb.k, label %.loopexit64.i.i.i.i.i

bb.k:                                             ; preds = %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i
  %.sroa.8.025.i.i.i.i.i = phi i64 [ %i.fw, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i ], [ %i.fx, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 5 uses
  %i.fz = inttoptr i64 %.sroa.8.025.i.i.i.i.i to ptr ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fz) ]
  %i.ga = and i64 %.sroa.8.025.i.i.i.i.i, 3
  switch i64 %i.ga, label %default.unreachable [
    i64 2, label %.split.i.i.i.i.i
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i
    i64 0, label %.split28.i.i.i.i.i
    i64 1, label %.split27.i.i.i.i.i
  ], !prof !29

default.unreachable:                              ; preds = %bb.k
  unreachable

.split.i.i.i.i.i:                                 ; preds = %bb.k
  %i.gb = lshr i64 %.sroa.8.025.i.i.i.i.i, 32
  %i.gc = trunc nuw i64 %i.gb to i32
  %i.gd = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #30, !noalias !811
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !811, !nonnull !14, !noundef !14
  %i.gg = call noundef zeroext i1 %i.gf(i32 noundef %i.gc) #30, !noalias !811, !inline_history !674
  br i1 %i.gg, label %.thread.i.i.i.i.i, label %_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

.split28.i.i.i.i.i:                               ; preds = %bb.k
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gi = load i8, ptr %i.gh, align 8, !range !30, !noalias !811, !noundef !14
  %i.gj = icmp eq i8 %i.gi, 35
  br i1 %i.gj, label %.thread.i.i.i.i.i, label %_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

.split27.i.i.i.i.i:                               ; preds = %bb.k
  %i.gk = getelementptr i8, ptr %i.fz, i64 31
  %i.gl = load i8, ptr %i.gk, align 8, !range !30, !noalias !811, !noundef !14
  %i.gm = icmp eq i8 %i.gl, 35
  br i1 %i.gm, label %bb.p, label %_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i: ; preds = %bb.k
  %i.gn = lshr i64 %.sroa.8.025.i.i.i.i.i, 32
  %i.go = icmp ult i64 %.sroa.8.025.i.i.i.i.i, 188978561024 ; 2 uses
  %switch.idx.cast.i.i.i.i.i.i.i.i = trunc i64 %i.gn to i8
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.go, i8 %switch.idx.cast.i.i.i.i.i.i.i.i, i8 -1 ; 2 uses
  %i.gp = icmp ne i8 %spec.select.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.gp)
  %i.gq = icmp eq i8 %spec.select.i.i.i.i.i.i.i.i, 35
  br i1 %i.gq, label %bb.o, label %_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

.loopexit64.i.i.i.i.i:                            ; preds = %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread57.i.i.i.i.i
  %i.gr = phi i64 [ %i.fu, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread57.i.i.i.i.i ], [ %i.fq, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %i.gs = phi i64 [ %i.fu, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread57.i.i.i.i.i ], [ %i.fx, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 7 uses
  %i.gt = phi i64 [ 0, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread57.i.i.i.i.i ], [ %i.fp, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 %i.gt ; 3 uses
  %i.gv = icmp samesign ult i64 %i.gs, 16
  br i1 %i.gv, label %.preheader.i.i.i.i.i.i, label %bb.l

.preheader.i.i.i.i.i.i:                           ; preds = %.loopexit64.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %i.gw = icmp sgt i64 %i.fo, -1
  call void @llvm.assume(i1 %i.gw)
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.l:                                             ; preds = %.loopexit64.i.i.i.i.i
  %i.gx = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gu, i64 noundef range(i64 0, -9223372036854775808) %i.gs) #30, !noalias !811 ; 2 uses
  %i.gy = extractvalue { i64, i64 } %i.gx, 0
  %i.gz = extractvalue { i64, i64 } %i.gx, 1
  %i.ha = trunc nuw i64 %i.gy to i1
  br i1 %i.ha, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.m
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.he, %bb.m ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !812, !noalias !811, !noundef !14
  %i.hd = icmp eq i8 %i.hc, 10
  br i1 %i.hd, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.he = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.he, %i.gs
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.l
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.gz, %bb.l ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.hf = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.gs
  call void @llvm.assume(i1 %i.hf)
  %i.hg = add nuw nsw i64 %.sroa.5.0.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i: ; preds = %bb.m, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %bb.l
  %i.hh = phi i1 [ true, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ false, %bb.l ], [ false, %bb.m ]
  %.sroa.6.0.i.i.i.i.i = phi i64 [ %i.hg, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ %i.gs, %bb.l ], [ %i.gs, %bb.m ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.hi = load i64, ptr %i.s, align 8, !range !16, !alias.scope !814, !noalias !815, !noundef !14
  %i.hj = sub i64 %i.hi, %i.fo
  %i.hk = icmp ugt i64 %.sroa.6.0.i.i.i.i.i, %i.hj
  br i1 %i.hk, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !816

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.fo, i64 noundef %.sroa.6.0.i.i.i.i.i, i64 noundef 1, i64 noundef 1) #30, !noalias !817
  %i.hl = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !818, !noalias !815, !noundef !14
  %.pre.i = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !818, !noalias !815
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i
  %i.hm = phi ptr [ %.pre.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i ], [ %i.fn, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i ] ; 2 uses
  %.sink78.i.i.i.i.i = phi i64 [ %i.hl, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i ], [ %i.fo, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.hn = icmp sgt i64 %.sink78.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.hn)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.sink78.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ho, ptr nonnull readonly align 1 %i.gu, i64 %.sroa.6.0.i.i.i.i.i, i1 false), !noalias !819
  %.pre.i.i.i.i = load i64, ptr %.sroa.3234.0..sroa_idx, align 8, !alias.scope !820, !noalias !811
  %.pre27.i.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !820, !noalias !811
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i
  %i.hp = phi ptr [ %i.hm, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ %i.fn, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ] ; 2 uses
  %i.hq = phi i64 [ %.pre27.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ %i.gr, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ]
  %i.hr = phi i64 [ %.pre.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ %i.gt, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ]
  %.sroa.6.060.i.i.i.i.i = phi i64 [ %.sroa.6.0.i.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ] ; 4 uses
  %i.hs = phi i1 [ %i.hh, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ false, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ]
  %i.ht = phi i64 [ %.sink78.i.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ %i.fo, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ]
  %i.hu = add i64 %i.ht, %.sroa.6.060.i.i.i.i.i   ; 3 uses
  store i64 %i.hu, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !818, !noalias !815
  %i.hv = add i64 %.sroa.6.060.i.i.i.i.i, %i.hr
  %i.hw = call i64 @llvm.umin.i64(i64 %i.hv, i64 %i.hq)
  store i64 %i.hw, ptr %.sroa.3234.0..sroa_idx, align 8, !alias.scope !820, !noalias !811
  %i.hx = add i64 %.sroa.6.060.i.i.i.i.i, %.sroa.01.0.ph.i.i.i.i.i ; 2 uses
  %i.hy = icmp eq i64 %.sroa.6.060.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %i.hs, %i.hy
  br i1 %or.cond.i.i.i.i.i, label %bb.n, label %.outer.i.i.i.i.i

bb.n:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i
  %i.hz = inttoptr i64 %i.hx to ptr
  br label %_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.split28.i.i.i.i.i, %.split.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !821
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.o:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !821
  call void @llvm.assume(i1 %i.go)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.p:                                             ; preds = %.split27.i.i.i.i.i
  %i.ia = getelementptr i8, ptr %i.fz, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !821
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ia) ]
  store ptr %i.ia, ptr %i.cu, align 8, !alias.scope !822, !noalias !821
  store i8 3, ptr %i.p, align 8, !alias.scope !822, !noalias !821
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cu) #30, !noalias !823
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o, %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !821
  br label %bb.i

_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i, %.split27.i.i.i.i.i, %.split28.i.i.i.i.i, %.split.i.i.i.i.i, %bb.n
  %i.ib = phi ptr [ %i.hp, %bb.n ], [ %i.fn, %.split.i.i.i.i.i ], [ %i.fn, %.split28.i.i.i.i.i ], [ %i.fn, %.split27.i.i.i.i.i ], [ %i.fn, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i ] ; 4 uses
  %i.ic = phi i64 [ %i.hu, %bb.n ], [ %i.fo, %.split.i.i.i.i.i ], [ %i.fo, %.split28.i.i.i.i.i ], [ %i.fo, %.split27.i.i.i.i.i ], [ %i.fo, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.3.0.i.i.i.i.i = phi ptr [ %i.hz, %bb.n ], [ %i.fz, %.split.i.i.i.i.i ], [ %i.fz, %.split28.i.i.i.i.i ], [ %i.fz, %.split27.i.i.i.i.i ], [ %i.fz, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi i1 [ false, %bb.n ], [ true, %.split.i.i.i.i.i ], [ true, %.split28.i.i.i.i.i ], [ true, %.split27.i.i.i.i.i ], [ true, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !824
  call void @_RNvMNtCsf3Ta7LF998c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ib, i64 noundef %i.ic) #30, !noalias !825
  %i.id = load i64, ptr %i.r, align 8, !range !31, !noalias !824, !noundef !14
  %.not.i.i.i = icmp eq i64 %i.id, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !824
  br i1 %.not.i.i.i, label %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i: ; preds = %_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %..i.i.i = select i1 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.3.0.i.i.i.i.i, ptr @136
  store i64 0, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !826, !noalias !827
  br label %bb.s

_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %i.ie = icmp sgt i64 %i.ic, -1
  call void @llvm.assume(i1 %i.ie)
  store i64 %i.ic, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !826, !noalias !827
  br i1 %.sroa.0.0.i.i.i.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.if = icmp eq ptr %.sroa.3.0.i.i.i.i.i, null
  br i1 %i.if, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i = icmp eq i64 %i.ic, 0
  br i1 %.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.r
  %i.ig = getelementptr i8, ptr %i.ib, i64 %i.ic
  %i.ih = getelementptr i8, ptr %i.ig, i64 -1
  %rhsc.i = load i8, ptr %i.ih, align 1, !noalias !817
  %i.ii = icmp eq i8 %rhsc.i, 10
  br i1 %i.ii, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

bb.s:                                             ; preds = %bb.q, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.sroa.0238.0 = phi i64 [ -1, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ], [ -1, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ -2, %bb.q ] ; 2 uses
  %.sroa.9239.0 = phi ptr [ %..i.i.i, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ], [ %.sroa.3.0.i.i.i.i.i, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ undef, %bb.q ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %.val.i.i.i = load i64, ptr %i.s, align 8, !range !16, !alias.scope !830, !noalias !798, !noundef !14 ; 2 uses
  %i.ij = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ij, label %_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ib, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !831
  br label %_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.ik = add nsw i64 %i.ic, -1                   ; 4 uses
  store i64 %i.ik, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !832, !noalias !798
  %.not.i9.i = icmp eq i64 %i.ik, 0
  br i1 %.not.i9.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit12.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit12.i: ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit.i
  %2 = getelementptr i8, ptr %i.ib, i64 %i.ik
  %i.il = getelementptr i8, ptr %2, i64 -1
  %rhsc33.i = load i8, ptr %i.il, align 1, !noalias !817
  %i.im = icmp eq i8 %rhsc33.i, 13
  %i.in = add nsw i64 %i.ic, -2
  %spec.select = select i1 %i.im, i64 %i.in, i64 %i.ik
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit12.i, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.r
  %.sroa.11.0.copyload = phi i64 [ 0, %bb.r ], [ %spec.select, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit12.i ], [ 0, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit.i ], [ %i.ic, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.i ]
  %.sroa.0238.0.copyload = load i64, ptr %i.s, align 8, !noalias !797
  %.sroa.9239.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !797
  br label %_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i
  %.sroa.0238.1 = phi i64 [ %.sroa.0238.0, %bb.s ], [ %.sroa.0238.0, %bb.t ], [ %.sroa.0238.0.copyload, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ] ; 7 uses
  %.sroa.9239.1 = phi ptr [ %.sroa.9239.0, %bb.s ], [ %.sroa.9239.0, %bb.t ], [ %.sroa.9239.0.copyload, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ] ; 11 uses
  %.sroa.11.0 = phi i64 [ undef, %bb.s ], [ undef, %bb.t ], [ %.sroa.11.0.copyload, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !798
  switch i64 %.sroa.0238.1, label %bb.af [
    i64 -2, label %bb.u
    i64 -1, label %bb.ae
  ]

bb.u:                                             ; preds = %_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %.val1.i.i = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !835, !noundef !14 ; 2 uses
  %i.io = icmp eq i64 %.val1.i.i, 0
  br i1 %i.io, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.u
  %.val.i.i = load ptr, ptr %i.az, align 8, !alias.scope !835, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #30, !noalias !835
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.u, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %.val.i.i.i150 = load i32, ptr %.sroa.5236.0..sroa_idx, align 8, !range !15, !alias.scope !837, !noundef !14
  %i.ip = call noundef i32 @close(i32 noundef %.val.i.i.i150) #30, !noalias !837 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.036.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.af, ptr noundef nonnull align 8 dereferenceable(184) %i.be, i64 184, i1 false)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules10into_rules(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.af) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.iq = load i64, ptr %i.ag, align 8, !range !32, !noundef !14 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 2                    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.it = load ptr, ptr %i.is, align 8            ; 2 uses
  br i1 %i.ir, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.it, ptr %i.iu, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ad

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5111.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i64 %i.iq, ptr %i.ah, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.it, ptr %.sroa.444.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ac, ptr noundef nonnull align 8 dereferenceable(184) %i.bd, i64 184, i1 false)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules10into_rules(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.ac) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.iv = load i64, ptr %i.ad, align 8, !range !32, !noundef !14 ; 2 uses
  %i.iw = icmp eq i64 %i.iv, 2
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8            ; 2 uses
  br i1 %i.iw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.iy, ptr %i.iz, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ah) #30
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.555.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5114.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.iv, ptr %i.ae, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.iy, ptr %.sroa.454.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.z, ptr noundef nonnull align 8 dereferenceable(184) %i.bc, i64 184, i1 false)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules10into_rules(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.z) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ja = load i64, ptr %i.aa, align 8, !range !32, !noundef !14 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 2
  %i.jc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8            ; 2 uses
  br i1 %i.jb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jd, ptr %i.je, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ae) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ah) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036.sroa.0)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.bb) #30
  br label %.thread265

bb.aa:                                            ; preds = %bb.y
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.564.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5117.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %i.ja, ptr %i.ab, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.jd, ptr %.sroa.463.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.x, ptr noundef nonnull align 8 dereferenceable(184) %i.bb, i64 184, i1 false)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules10into_rules(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.jf = load i64, ptr %i.y, align 8, !range !32, !noundef !14 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 2
  %i.jh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8            ; 2 uses
  br i1 %i.jg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ji, ptr %i.jj, align 8
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ab) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ae) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ah) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036.sroa.0)
  br label %.thread265

bb.ac:                                            ; preds = %bb.aa
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.036.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.036.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5120.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.jk = load i8, ptr %i.bg, align 1, !range !19, !noundef !14
  %i.jl = load i8, ptr %i.bf, align 1, !range !19, !noundef !14
  %.sroa.036.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.036.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.036.sroa.0, ptr noundef nonnull align 8 dereferenceable(176) %i.ah, i64 176, i1 false)
  %.sroa.036.sroa.0.176..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.036.sroa.0.176..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.ae, i64 176, i1 false)
  %.sroa.036.sroa.0.352..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.036.sroa.0.352..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.ab, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(528) %.sroa.036.sroa.0, i64 528, i1 false)
  %.sroa.036.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 %i.jf, ptr %.sroa.036.sroa.9.0..sroa_idx, align 8
  %.sroa.036.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %i.ji, ptr %.sroa.036.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i8 %i.jk, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 729
  store i8 %i.jl, ptr %.sroa.12.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.ds, %bb.dr, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  ret void

.thread265:                                       ; preds = %bb.z, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.dq

end_hunk_0
begin_hunk_1_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsk6HhtavqUX2_11serde_value5ValueECsat9HgdBb3qc_16shadowsocks_rust:bb.a

bb.j:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCsk6HhtavqUX2_11serde_value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.w = shl nuw i64 %.val.i2, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %common.ret119

_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCsk6HhtavqUX2_11serde_value5ValueB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  %.sroa.01.0.copyload.i = load ptr, ptr %i.x, align 8, !alias.scope !2426 ; 5 uses
  %.not.i = icmp ne ptr %.sroa.01.0.copyload.i, null ; 4 uses
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 5 uses
  %.sroa.17.0 = select i1 %.not.i, i64 %.sroa.4.0.copyload.i, i64 undef ; 2 uses
  %i.y = icmp ne i64 %.sroa.52.0.copyload.i, 0
  %.not61 = select i1 %.not.i, i1 %i.y, i1 false
  br i1 %.not61, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCsk6HhtavqUX2_11serde_value5ValueB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.z = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCsk6HhtavqUX2_11serde_value5ValueB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit
  br i1 %.not.i, label %bb.k, label %common.ret119

bb.k:                                             ; preds = %._crit_edge
  %i.aa = icmp eq i64 %.sroa.17.0, 0
  br i1 %i.aa, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.k
  %i.ab = add i64 %.sroa.4.0.copyload.i, -1
  %xtraiter = and i64 %.sroa.4.0.copyload.i, 7    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.022.025.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.prol ], [ %.sroa.01.0.copyload.i, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.020.024.i.i.i.i.prol = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.prol ], [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.i.i.prol, i64 720
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2427, !nonnull !14, !noundef !14 ; 3 uses
  %i.ae = add i64 %.sroa.020.024.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !2379

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa100.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.prol ]
  %.sroa.022.025.i.i.i.i.unr = phi ptr [ %.sroa.01.0.copyload.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.prol ]
  %.sroa.020.024.i.i.i.i.unr = phi i64 [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.prol ]
  %i.af = icmp ult i64 %i.ab, 7
  br i1 %i.af, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.022.025.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.sroa.022.025.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.020.024.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i ], [ %.sroa.020.024.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.i.i, i64 720
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 720
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 720
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 720
  %i.an = load ptr, ptr %i.am, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 720
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 720
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 720
  %i.at = load ptr, ptr %i.as, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 720
  %i.av = load ptr, ptr %i.au, align 8, !noalias !2427, !nonnull !14, !noundef !14 ; 2 uses
  %i.aw = add i64 %.sroa.020.024.i.i.i.i, -8      ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.k
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.01.0.copyload.i, %bb.k ], [ %.sroa.8.2, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.lcssa100.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.av, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 704
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !2428, !noundef !14 ; 2 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i4.i.i.i.i, label %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %.lr.ph.i2.i.i.i

.lr.ph.i2.i.i.i:                                  ; preds = %.loopexit.i.i.i, %.lr.ph.i2.i.i.i
  %i.ba = phi ptr [ %i.bd, %.lr.ph.i2.i.i.i ], [ %i.az, %.loopexit.i.i.i ] ; 3 uses
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i2.i.i.i ], [ %.sroa.0.0.ph.i.i.i, %.loopexit.i.i.i ]
  %.sroa.3.05.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i2.i.i.i ], [ 0, %.loopexit.i.i.i ] ; 2 uses
  %i.bb = add i64 %.sroa.3.05.i.i.i.i, 1          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.3.05.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 720, i64 816
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #30, !noalias !2429, !inline_history !2384
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 704
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !2428, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.loopexit, label %.lr.ph.i2.i.i.i

_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.loopexit: ; preds = %.lr.ph.i2.i.i.i
  %i.be = icmp eq i64 %i.bb, 0
  %i.bf = select i1 %i.be, i64 720, i64 816
  br label %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.loopexit, %.loopexit.i.i.i
  %.sroa.3.0.lcssa.i.i.i.i = phi i64 [ 720, %.loopexit.i.i.i ], [ %i.bf, %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %.loopexit.i.i.i ], [ %i.ba, %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.loopexit ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i.i, i64 noundef %.sroa.3.0.lcssa.i.i.i.i, i64 noundef 8) #30, !noalias !2429, !inline_history !2384
  br label %common.ret119

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.sroa.0.141 = phi i1 [ true, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.not.i, %.lr.ph.preheader ]
  %.sroa.8.140 = phi ptr [ %.sroa.8.2, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.12.139 = phi i64 [ 0, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %.sroa.17.138 = phi i64 [ %.sroa.17.2, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.17.0, %.lr.ph.preheader ] ; 6 uses
  %.sroa.27.137 = phi i64 [ %i.bg, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.52.0.copyload.i, %.lr.ph.preheader ]
  %i.bg = add i64 %.sroa.27.137, -1               ; 2 uses
  br i1 %.sroa.0.141, label %bb.l, label %.critedge.i.i.i

bb.l:                                             ; preds = %.lr.ph
  %.not.i.i1.i.i = icmp eq ptr %.sroa.8.140, null
  br i1 %.not.i.i1.i.i, label %bb.m, label %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bh = inttoptr i64 %.sroa.12.139 to ptr       ; 3 uses
  %i.bi = icmp eq i64 %.sroa.17.138, 0
  br i1 %i.bi, label %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %.lr.ph.i.i2.i.i.preheader

.lr.ph.i.i2.i.i.preheader:                        ; preds = %bb.m
  %xtraiter101 = and i64 %.sroa.17.138, 7         ; 2 uses
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.lr.ph.i.i2.i.i.prol.loopexit, label %.lr.ph.i.i2.i.i.prol

.lr.ph.i.i2.i.i.prol:                             ; preds = %.lr.ph.i.i2.i.i.preheader, %.lr.ph.i.i2.i.i.prol
  %.sroa.013.017.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.prol, %.lr.ph.i.i2.i.i.prol ], [ %i.bh, %.lr.ph.i.i2.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.prol = phi i64 [ %i.bk, %.lr.ph.i.i2.i.i.prol ], [ %.sroa.17.138, %.lr.ph.i.i2.i.i.preheader ]
  %prol.iter103 = phi i64 [ %prol.iter103.next, %.lr.ph.i.i2.i.i.prol ], [ 0, %.lr.ph.i.i2.i.i.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.prol, i64 720
  %i.bk = add i64 %.sroa.011.016.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.prol = load ptr, ptr %i.bj, align 8, !noalias !2430, !nonnull !14, !noundef !14 ; 3 uses
  %prol.iter103.next = add i64 %prol.iter103, 1   ; 2 uses
  %prol.iter103.cmp.not = icmp eq i64 %prol.iter103.next, %xtraiter101
  br i1 %prol.iter103.cmp.not, label %.lr.ph.i.i2.i.i.prol.loopexit, label %.lr.ph.i.i2.i.i.prol, !llvm.loop !2390

.lr.ph.i.i2.i.i.prol.loopexit:                    ; preds = %.lr.ph.i.i2.i.i.prol, %.lr.ph.i.i2.i.i.preheader
  %.sroa.013.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.prol, %.lr.ph.i.i2.i.i.prol ]
  %.sroa.013.017.i.i.i.i.unr = phi ptr [ %i.bh, %.lr.ph.i.i2.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.prol, %.lr.ph.i.i2.i.i.prol ]
  %.sroa.011.016.i.i.i.i.unr = phi i64 [ %.sroa.17.138, %.lr.ph.i.i2.i.i.preheader ], [ %i.bk, %.lr.ph.i.i2.i.i.prol ]
  %i.bl = icmp ult i64 %.sroa.17.138, 8
  br i1 %i.bl, label %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %.lr.ph.i.i2.i.i

.lr.ph.i.i2.i.i:                                  ; preds = %.lr.ph.i.i2.i.i.prol.loopexit, %.lr.ph.i.i2.i.i
  %.sroa.013.017.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.7, %.lr.ph.i.i2.i.i ], [ %.sroa.013.017.i.i.i.i.unr, %.lr.ph.i.i2.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i2.i.i ], [ %.sroa.011.016.i.i.i.i.unr, %.lr.ph.i.i2.i.i.prol.loopexit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i, i64 720
  %.sroa.013.0.i.i.i.i = load ptr, ptr %i.bm, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i, i64 720
  %.sroa.013.0.i.i.i.i.1 = load ptr, ptr %i.bn, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.1, i64 720
  %.sroa.013.0.i.i.i.i.2 = load ptr, ptr %i.bo, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.2, i64 720
  %.sroa.013.0.i.i.i.i.3 = load ptr, ptr %i.bp, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.3, i64 720
  %.sroa.013.0.i.i.i.i.4 = load ptr, ptr %i.bq, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.4, i64 720
  %.sroa.013.0.i.i.i.i.5 = load ptr, ptr %i.br, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.5, i64 720
  %.sroa.013.0.i.i.i.i.6 = load ptr, ptr %i.bs, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.6, i64 720
  %i.bu = add i64 %.sroa.011.016.i.i.i.i, -8      ; 2 uses
  %.sroa.013.0.i.i.i.i.7 = load ptr, ptr %i.bt, align 8, !noalias !2430, !nonnull !14, !noundef !14 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %.lr.ph.i.i2.i.i

_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %.lr.ph.i.i2.i.i.prol.loopexit, %.lr.ph.i.i2.i.i, %bb.m, %bb.l
  %.sroa.59.0.copyload.i.i.i.i = phi i64 [ %.sroa.17.138, %bb.l ], [ 0, %bb.m ], [ 0, %.lr.ph.i.i2.i.i ], [ 0, %.lr.ph.i.i2.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i = phi i64 [ %.sroa.12.139, %bb.l ], [ 0, %bb.m ], [ 0, %.lr.ph.i.i2.i.i ], [ 0, %.lr.ph.i.i2.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i = phi ptr [ %.sroa.8.140, %bb.l ], [ %i.bh, %bb.m ], [ %.sroa.013.0.i.i.i.i.lcssa.unr, %.lr.ph.i.i2.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.7, %.lr.ph.i.i2.i.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i, i64 714
  %i.bx = load i16, ptr %i.bw, align 2, !noalias !2431, !noundef !14
  %i.by = zext i16 %i.bx to i64
  %i.bz = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i, %i.by
  br i1 %i.bz, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %bb.o
  %.sroa.0.039.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.o ], [ %.sroa.07.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i.i.i = phi i64 [ %i.cq, %bb.o ], [ %.sroa.48.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i.i.i, i64 704
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !2432, !noundef !14 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.o
  %i.cc = zext i16 %i.cs to i64
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %.sroa.8.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ %i.cc, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.5.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ %i.cq, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ %i.cb, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 4 uses
  %i.cd = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i.i.i, 0
  br i1 %i.cd, label %1, label %bb.n

1:                                                ; preds = %._crit_edge.i.i.i.i.i.i
  %2 = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ce = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ce), !noalias !2426
  %3 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i, i64 728
  %4 = getelementptr [8 x i8], ptr %3, i64 %.sroa.8.0.lcssa.i.i.i.i.i.i ; 2 uses
  %xtraiter104 = and i64 %.sroa.5.0.lcssa.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.n, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.cf, %.prol.preheader ], [ %4, %bb.n ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i.i.i, %bb.n ]
  %prol.iter106 = phi i64 [ %prol.iter106.next, %.prol.preheader ], [ 0, %bb.n ]
  %.sroa.019.0.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.prol, align 8, !noalias !2433, !nonnull !14, !noundef !14 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.prol, i64 720 ; 2 uses
  %prol.iter106.next = add i64 %prol.iter106, 1   ; 2 uses
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2407

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.n
  %.sroa.017.0.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.n ], [ %.sroa.017.0.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.unr = phi ptr [ %4, %bb.n ], [ %i.cf, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i.i.i, %bb.n ], [ %.sroa.019.0.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.cg = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i.i.i, 8
  br i1 %i.cg, label %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i = phi ptr [ %i.cp, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ch, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.1, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ci, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.2, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cj, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.3, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ck, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.4, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cl, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.5, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.6 = load ptr, ptr %i.cm, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.6, i64 720
  %.sroa.019.0.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cn, align 8, !noalias !2433, !nonnull !14, !noundef !14 ; 2 uses
  %i.co = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.7, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.7, i64 720
  br i1 %i.co, label %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.new

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cq = add i64 %.sroa.5.038.i.i.i.i.i.i, 1     ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i.i.i, i64 712
  %i.cs = load i16, ptr %i.cr, align 8, !noalias !2432 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i.i.i, 0
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 720, i64 816
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i, i64 noundef 8) #30, !noalias !2434, !inline_history !2384
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 714
  %i.cu = load i16, ptr %i.ct, align 2, !noalias !2431, !noundef !14
  %i.cv = icmp ult i16 %i.cs, %i.cu
  br i1 %i.cv, label %._crit_edge.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i33.i.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i.i.i, 0
  %..i34.i.i.i.i.i.i = select i1 %.not.i33.i.i.i.i.i.i, i64 720, i64 816
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i.i.i, i64 noundef %..i34.i.i.i.i.i.i, i64 noundef 8) #30, !noalias !2434, !inline_history !2384
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #37, !noalias !2435, !inline_history !2384
  unreachable

.critedge.i.i.i:                                  ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #37, !noalias !2436, !inline_history !2384
  unreachable

_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %.prol.loopexit, %.new, %1
  %.sroa.17.2 = phi i64 [ %2, %1 ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.8.2 = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i.i.i, %1 ], [ %.sroa.017.0.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.7, %.new ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.lcssa.i.i.i.i.i.i, i64 %.sroa.8.0.lcssa.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i, i64 352
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %.sroa.8.0.lcssa.i.i.i.i.i.i
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsk6HhtavqUX2_11serde_value5ValueECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cw) #30, !noalias !2437, !inline_history !2410
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsk6HhtavqUX2_11serde_value5ValueECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cy) #30, !noalias !2438, !inline_history !2415
  %i.cz = icmp eq i64 %i.bg, 0
  br i1 %i.cz, label %.loopexit.i.i.i, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling5InnerECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  %.val.i = load i64, ptr %i.a, align 8, !range !16, !alias.scope !2464, !noundef !14 ; 2 uses
  %i.b = icmp eq i64 %.val.i, 0
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !2463, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2465
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  %i.e = load i64, ptr %i.d, align 8, !range !24, !alias.scope !2466, !noundef !14 ; 3 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2469, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2469
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  %i.j = load i64, ptr %i.i, align 8, !range !24, !alias.scope !2470, !noundef !14 ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit3, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i.i2 = load ptr, ptr %i.m, align 8, !alias.scope !2473, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2473
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit3

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit3: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  %i.o = load i64, ptr %i.n, align 8, !range !24, !alias.scope !2474, !noundef !14 ; 3 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit5, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1.i.i.i4 = load ptr, ptr %i.r, align 8, !alias.scope !2477, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i4, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2477
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit5

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit5: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit3, %bb.g, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i64, ptr %i.s, align 8, !range !16, !noundef !14 ; 2 uses
  %i.t = icmp eq i64 %.val, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCsbPuM0779rnk_4time18format_description20borrowed_format_item18BorrowedFormatItemEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1 = load ptr, ptr %i.u, align 8, !nonnull !14, !noundef !14
  %i.v = mul nuw i64 %.val, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCsbPuM0779rnk_4time18format_description20borrowed_format_item18BorrowedFormatItemEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCsbPuM0779rnk_4time18format_description20borrowed_format_item18BorrowedFormatItemEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit5, %bb.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs4FileECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %0, align 4, !range !15, !noundef !14
  %i.a = tail call noundef i32 @close(i32 noundef %.val) #30 ; 0 uses
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !16, !alias.scope !2482, !noundef !14 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2483
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !alias.scope !2530, !noundef !14
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs9YRaEePol5J_7iprange7IpRangeNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtCs9YRaEePol5J_7iprange10IpTrieNodeEEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.c) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs9YRaEePol5J_7iprange7IpRangeNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs9YRaEePol5J_7iprange7IpRangeNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !range !31, !alias.scope !2531, !noundef !14
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs9YRaEePol5J_7iprange7IpRangeNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv6NetEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs9YRaEePol5J_7iprange7IpRangeNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtCs9YRaEePol5J_7iprange10IpTrieNodeEEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.g) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs9YRaEePol5J_7iprange7IpRangeNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv6NetEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs9YRaEePol5J_7iprange7IpRangeNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv6NetEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs9YRaEePol5J_7iprange7IpRangeNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv4NetEECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2532)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !2532, !nonnull !14, !noundef !14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load i64, ptr %i.j, align 8, !alias.scope !2532, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2533)
  %i.k = icmp eq i64 %.val1.i, 0
  br i1 %i.k, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs9YRaEePol5J_7iprange7IpRangeNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv6NetEECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs9YRaEePol5J_7iprange7IpRangeNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv6NetEECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.03.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  %.val.i.i.i.i.i = load i64, ptr %i.l, align 8, !range !16, !alias.scope !2536, !noalias !2532, !noundef !14 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !2536, !noalias !2532, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2537
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.p = icmp eq i64 %i.m, %.val1.i
  br i1 %i.p, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs9YRaEePol5J_7iprange7IpRangeNtNtCsgF1LWsE3iOj_5ipnet5ipnet7Ipv6NetEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.val2.i = load i64, ptr %i.h, align 8, !range !16, !alias.scope !2532, !noundef !14 ; 2 uses
  %i.q = icmp eq i64 %.val2.i, 0
  br i1 %i.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.r = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !2532
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2543)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2544, !noundef !14 ; 4 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.f

end_hunk_1
begin_hunk_2_@_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E21reserve_one_uncheckedCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5819
  store i64 0, ptr %i.a, align 8, !noalias !5819
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !5819
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @260, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #37, !noalias !5819
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #30
  br label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.o:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i, %bb.j
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #34
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #37
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317) #37
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5830, !noalias !5831, !noundef !14 ; 5 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 3 uses
  br i1 %i.d, label %bb.c, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !5830, !noalias !5831, !noundef !14 ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.q, !prof !58

bb.b:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !5832, !noalias !5833, !nonnull !14, !noundef !14
  %.pre = load i64, ptr %i.i, align 8, !alias.scope !5834
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5834)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.pn = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  %.sink12.i41922 = phi i64 [ %i.f, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.o = phi i64 [ %.pre, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %.sink12.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.b ], [ 8, %bb.c ] ; 5 uses
  %i.p = sub nuw nsw i64 64, %.pn                 ; 2 uses
  %i.q = shl nuw i64 1, %i.p                      ; 3 uses
  %.not.i = icmp ult i64 %i.q, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @318, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #37, !noalias !5834
  unreachable

bb.e:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.r = icmp samesign ult i64 %.sink12.i41922, 8
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46.i = icmp eq i64 %i.q, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.d, label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = shl i64 80, %i.p                         ; 3 uses
  %or.cond.not.i = icmp samesign ugt i64 %.sink12.i41922, 72057594037927935
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !39

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.h
  br i1 %i.d, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %or.cond65.not.i = icmp ugt i64 %.sink.i.i, 115292150460684697
  br i1 %or.cond65.not.i, label %bb.p, label %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i, !prof !39

bb.j:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5834
  %i.t = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #30, !noalias !5834 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.l

_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i: ; preds = %bb.i
  %i.v = mul nuw nsw i64 %.sink.i.i, 80
  %i.w = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #30 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.l ], [ %i.w, %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !5834
  store i64 %i.o, ptr %i.n, align 8, !alias.scope !5834
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !5834
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !5834
  br label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.l:                                             ; preds = %bb.j
  %i.y = mul nuw nsw i64 %i.o, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !5834
  %i.z = mul nuw nsw i64 %i.o, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !5834
  %i.aa = mul i64 %.sink.i.i, 80                  ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %.sink.i.i, 115292150460684697
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !39

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5835
  store i64 0, ptr %i.a, align 8, !noalias !5835
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !5835
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @260, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #37, !noalias !5835
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #30
  br label %_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.o:                                             ; preds = %_RINvCsjcToxTEWQ5H_8smallvec12layout_arrayNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit48.i, %bb.j
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #34
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #37
  unreachable

_RINvCsjcToxTEWQ5H_8smallvec10infallibleuECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvCsjcToxTEWQ5H_8smallvec10deallocateNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317) #37
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE9next_backCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !19, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !19, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8
  %i.g = tail call fastcc { ptr, i64 } @_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE9next_backCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #35 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.l, label %bb.m

bb.d:                                             ; preds = %bb.l, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5839)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !5839, !noalias !5840, !noundef !14 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted.i = load i64, ptr %i.o, align 8, !alias.scope !5839, !noalias !5840 ; 2 uses
  %i.p = icmp ult i64 %.promoted.i, %i.n
  br i1 %i.p, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !5839, !noalias !5840 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 3 uses
  %1 = add nsw i64 %i.u, -1                       ; 3 uses
  %i.v = icmp ult i8 %i.t, 5
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %1
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i
  %i.x = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %bb.i ] ; 2 uses
  %i.y = sub nuw i64 %i.x, %i.n                   ; 2 uses
  %.not.i = icmp ugt i64 %i.x, %.val6
  br i1 %.not.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.v)
  %i.z = load i8, ptr %i.w, align 1, !alias.scope !5839, !noalias !5840, !noundef !14
  %i.aa = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr15memrchr_aligned(i8 noundef %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.y) #30, !noalias !5841 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.y
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add i64 %i.ad, %i.n                     ; 5 uses
  %.not15.i = icmp ult i64 %i.af, %1
  br i1 %.not15.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !5839, !noalias !5840
  br label %.loopexit

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.g
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !5839, !noalias !5840
  %i.ag = icmp ult i64 %i.af, %i.n
  br i1 %i.ag, label %.loopexit, label %bb.e

bb.j:                                             ; preds = %bb.g
  %i.ah = sub nuw i64 %i.af, %1                   ; 5 uses
  %i.ai = add i64 %i.ah, %i.u                     ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %.not16.i = icmp ugt i64 %i.ai, %.val6
  %or.cond.i = or i1 %i.aj, %.not16.i
  br i1 %or.cond.i, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.r, i64 %i.u), !noalias !5840
  %i.al = icmp eq i32 %bcmp.i, 0
  br i1 %i.al, label %bb.n, label %bb.i

bb.l:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.a, align 1, !range !19, !noundef !14
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.m, label %bb.d

bb.m:                                             ; preds = %bb.l, %bb.c, %bb.a, %bb.o
  %.sroa.8.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.8.1, %bb.o ], [ undef, %bb.a ], [ undef, %bb.l ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.1, %bb.o ], [ null, %bb.a ], [ null, %bb.l ]
  %i.ao = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ap = insertvalue { ptr, i64 } %i.ao, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.ap

bb.n:                                             ; preds = %bb.k
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !5839, !noalias !5840
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !14
  %i.as = sub nuw i64 %i.ar, %i.ai
  store i64 %i.ah, ptr %i.aq, align 8
  br label %bb.o

.loopexit:                                        ; preds = %bb.i, %bb.e, %bb.h, %bb.d
  store i8 1, ptr %i.a, align 1
  %i.at = load i64, ptr %0, align 8, !noundef !14 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !14
  %i.aw = sub nuw i64 %i.av, %i.at
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.as, %bb.n ], [ %i.aw, %.loopexit ]
  %.pn = phi i64 [ %i.ai, %bb.n ], [ %i.at, %.loopexit ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  br label %bb.m
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCslDQ48jUgq5Q_12clap_builder7builder10value_hint9ValueHintE9drop_slowCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCslDQ48jUgq5Q_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCslDQ48jUgq5Q_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCslDQ48jUgq5Q_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCslDQ48jUgq5Q_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef ptr @_RNvNtCsat9HgdBb3qc_16shadowsocks_rust3sys11run_as_user(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [32 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 11 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 11 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %1, ptr %i.u, align 8
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.v = load i8, ptr %0, align 1, !alias.scope !5860, !noundef !14 ; 2 uses
  switch i8 %i.v, label %bb.c [
    i8 43, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !5860
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.w = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.v, %bb.b ]
  %cond.i = icmp eq i8 %i.w, 43                   ; 2 uses
  %i.x = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %1, %i.x            ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.y = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.y, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i

.preheader60.i:                                   ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i147, i64 1
  %i.aa = add nsw i64 %.sroa.15.1.i146, -1        ; 2 uses
  %.not55.i = icmp eq i64 %i.aa, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.cp, %bb.m ], [ 0, %.preheader.i ], [ %i.ar, %bb.f ], [ %i.az, %bb.g ], [ %i.bg, %bb.h ], [ %i.bn, %bb.i ], [ %i.bu, %bb.j ], [ %i.cb, %bb.k ], [ %i.ci, %bb.l ], [ %i.ak, %.preheader60.i ]
  %i.ab = zext i32 %.sroa.045.1.i to i64
  %i.ac = shl nuw i64 %i.ab, 32
  br label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader60.i.preheader:                         ; preds = %bb.c, %.preheader60.i
  %.sroa.0.1.i147 = phi ptr [ %i.z, %.preheader60.i ], [ %.sroa.0.0.i, %bb.c ] ; 3 uses
  %.sroa.15.1.i146 = phi i64 [ %i.aa, %.preheader60.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.045.0.i145 = phi i32 [ %i.ak, %.preheader60.i ], [ 0, %bb.c ]
  %i.ad = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i145, i32 10) ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.e, label %bb.d, !prof !23

bb.d:                                             ; preds = %.preheader60.i.preheader
  %i.af = extractvalue { i32, i1 } %i.ad, 0       ; 2 uses
  %i.ag = load i8, ptr %.sroa.0.1.i147, align 1, !alias.scope !5860, !noundef !14
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -48                  ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, 9
  %i.ak = add i32 %i.ai, %i.af                    ; 3 uses
  %i.al = icmp ult i32 %i.ak, %i.af
  %or.cond = select i1 %i.aj, i1 true, i1 %i.al, !prof !39
  br i1 %or.cond, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader60.i, !prof !39

bb.e:                                             ; preds = %.preheader60.i.preheader
  %i.am = load i8, ptr %.sroa.0.1.i147, align 1, !alias.scope !5860, !noundef !14
  %i.an = add i8 %i.am, -48
  %i.ao = icmp ult i8 %i.an, 10
  %spec.select.i = select i1 %i.ao, i64 513, i64 257
  br label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ap = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !5860, !noundef !14
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 3 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.f, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.f:                                             ; preds = %.lr.ph.i
  %.not56.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !5860, !noundef !14
  %i.av = zext i8 %i.au to i32
  %i.aw = add nsw i32 %i.av, -48                  ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 10
  br i1 %i.ax, label %bb.g, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ay = mul nuw nsw i32 %i.ar, 10
  %i.az = add nuw nsw i32 %i.aw, %i.ay            ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !5860, !noundef !14
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nsw i32 %i.bc, -48                  ; 2 uses
  %i.be = icmp ult i32 %i.bd, 10
  br i1 %i.be, label %bb.h, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.bf = mul nuw nsw i32 %i.az, 10
  %i.bg = add nuw nsw i32 %i.bd, %i.bf            ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i, 3
end_hunk_2
begin_hunk_3_@_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6genkey4main:bb.a
  %i.cx = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.bj              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.bh              ; 2 uses
  %i.da = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 8)) ; 2 uses
  %i.de = add <4 x i32> %i.dd, %i.cy              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.da              ; 2 uses
  %i.dg = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dh = shufflevector <4 x i32> %i.bu, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.di = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dj = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.dk = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dl = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dm = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.dn = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.do = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dp = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.dq = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dr = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ds = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.dt = add <4 x i32> %i.bw, %i.dj              ; 2 uses
  %i.du = xor <4 x i32> %i.dt, %i.di              ; 2 uses
  %i.dv = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.du, <4 x i32> %i.du, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dw = add <4 x i32> %i.dv, %i.dh              ; 2 uses
  %i.dx = xor <4 x i32> %i.dw, %i.bw              ; 2 uses
  %i.dy = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dx, <4 x i32> %i.dx, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dz = add <4 x i32> %i.dy, %i.dt              ; 2 uses
  %i.ea = xor <4 x i32> %i.dz, %i.dv              ; 2 uses
  %i.eb = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ea, <4 x i32> %i.ea, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ec = add <4 x i32> %i.eb, %i.dw              ; 2 uses
  %i.ed = xor <4 x i32> %i.ec, %i.dy              ; 2 uses
  %i.ee = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ed, <4 x i32> %i.ed, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ef = add <4 x i32> %i.ci, %i.dm              ; 2 uses
  %i.eg = xor <4 x i32> %i.ef, %i.dl              ; 2 uses
  %i.eh = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.eg, <4 x i32> %i.eg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ei = add <4 x i32> %i.eh, %i.dk              ; 2 uses
  %i.ej = xor <4 x i32> %i.ei, %i.ci              ; 2 uses
  %i.ek = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ej, <4 x i32> %i.ej, <4 x i32> splat (i32 12)) ; 2 uses
  %i.el = add <4 x i32> %i.ek, %i.ef              ; 2 uses
  %i.em = xor <4 x i32> %i.el, %i.eh              ; 2 uses
  %i.en = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.em, <4 x i32> %i.em, <4 x i32> splat (i32 8)) ; 2 uses
  %i.eo = add <4 x i32> %i.en, %i.ei              ; 2 uses
  %i.ep = xor <4 x i32> %i.eo, %i.ek              ; 2 uses
  %i.eq = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ep, <4 x i32> %i.ep, <4 x i32> splat (i32 7)) ; 2 uses
  %i.er = add <4 x i32> %i.cu, %i.dp              ; 2 uses
  %i.es = xor <4 x i32> %i.er, %i.do              ; 2 uses
  %i.et = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.es, <4 x i32> %i.es, <4 x i32> splat (i32 16)) ; 2 uses
  %i.eu = add <4 x i32> %i.et, %i.dn              ; 2 uses
  %i.ev = xor <4 x i32> %i.eu, %i.cu              ; 2 uses
  %i.ew = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ev, <4 x i32> %i.ev, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ex = add <4 x i32> %i.ew, %i.er              ; 2 uses
  %i.ey = xor <4 x i32> %i.ex, %i.et              ; 2 uses
  %i.ez = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ey, <4 x i32> %i.ey, <4 x i32> splat (i32 8)) ; 2 uses
  %i.fa = add <4 x i32> %i.ez, %i.eu              ; 2 uses
  %i.fb = xor <4 x i32> %i.fa, %i.ew              ; 2 uses
  %i.fc = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fb, <4 x i32> %i.fb, <4 x i32> splat (i32 7)) ; 2 uses
  %i.fd = add <4 x i32> %i.dg, %i.ds              ; 2 uses
  %i.fe = xor <4 x i32> %i.fd, %i.dr              ; 2 uses
  %i.ff = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fe, <4 x i32> %i.fe, <4 x i32> splat (i32 16)) ; 2 uses
  %i.fg = add <4 x i32> %i.ff, %i.dq              ; 2 uses
  %i.fh = xor <4 x i32> %i.fg, %i.dg              ; 2 uses
  %i.fi = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fh, <4 x i32> %i.fh, <4 x i32> splat (i32 12)) ; 2 uses
  %i.fj = add <4 x i32> %i.fi, %i.fd              ; 2 uses
  %i.fk = xor <4 x i32> %i.fj, %i.ff              ; 2 uses
  %i.fl = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fk, <4 x i32> %i.fk, <4 x i32> splat (i32 8)) ; 2 uses
  %i.fm = add <4 x i32> %i.fl, %i.fg              ; 2 uses
  %i.fn = xor <4 x i32> %i.fm, %i.fi              ; 2 uses
  %i.fo = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fn, <4 x i32> %i.fn, <4 x i32> splat (i32 7)) ; 2 uses
  %i.fp = shufflevector <4 x i32> %i.ec, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.fq = shufflevector <4 x i32> %i.eb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fr = shufflevector <4 x i32> %i.dz, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.fs = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ft = shufflevector <4 x i32> %i.en, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fu = shufflevector <4 x i32> %i.el, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.fv = shufflevector <4 x i32> %i.fa, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.fw = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fx = shufflevector <4 x i32> %i.ex, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.fy = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.fz = shufflevector <4 x i32> %i.fl, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ga = shufflevector <4 x i32> %i.fj, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bk, 6
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.n

_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.n
  %i.gb = add <4 x i32> %i.fr, %.sroa.012.0.copyload24.i.i.i
  %i.gc = add <4 x i32> %i.ee, %.sroa.013.0.copyload25.i.i.i
  %i.gd = add <4 x i32> %i.fp, %.sroa.014.0.copyload26.i.i.i
  %i.ge = add <4 x i32> %i.fq, %i.an
  %i.gf = add <4 x i32> %i.fu, %.sroa.012.0.copyload24.i.i.i
  %i.gg = add <4 x i32> %i.eq, %.sroa.013.0.copyload25.i.i.i
  %i.gh = add <4 x i32> %i.fs, %.sroa.014.0.copyload26.i.i.i
  %i.gi = add <4 x i32> %i.ft, %i.ar
  %i.gj = add <4 x i32> %i.fx, %.sroa.012.0.copyload24.i.i.i
  %i.gk = add <4 x i32> %i.fc, %.sroa.013.0.copyload25.i.i.i
  %i.gl = add <4 x i32> %i.fv, %.sroa.014.0.copyload26.i.i.i
  %i.gm = add <4 x i32> %i.fw, %i.as
  %i.gn = add <4 x i32> %i.ga, %.sroa.012.0.copyload24.i.i.i
  %i.go = add <4 x i32> %i.fo, %.sroa.013.0.copyload25.i.i.i
  %i.gp = add <4 x i32> %i.fy, %.sroa.014.0.copyload26.i.i.i
  %i.gq = add <4 x i32> %i.fz, %i.at
  store <4 x i32> %i.gb, ptr %i.aa, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gc, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gd, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.ge, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gf, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gg, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gh, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gi, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gj, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gk, ptr %.sroa.12.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gl, ptr %.sroa.13.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gm, ptr %.sroa.14.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gn, ptr %.sroa.15.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.go, ptr %.sroa.16.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gp, ptr %.sroa.17.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  store <4 x i32> %i.gq, ptr %.sroa.18.0..sroa_idx.i.i.i, align 4, !alias.scope !8241, !noalias !8242
  %i.gr = add <2 x i64> %.sroa.015.0.copyload.i.i.i, <i64 4, i64 0> ; 2 uses
  %i.gs = bitcast <2 x i64> %i.gr to <4 x i32>
  %i.gt = extractelement <4 x i32> %i.gs, i64 0
  store i32 %i.gt, ptr %i.ae, align 4, !alias.scope !8239, !noalias !8240
  %i.gu = call fastcc noundef i32 @_RINvNtNtNtCsf3Ta7LF998c_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECsat9HgdBb3qc_16shadowsocks_rust(<2 x i64> %i.gr) #35
  store i32 %i.gu, ptr %i.af, align 4, !alias.scope !8239, !noalias !8240
  br label %_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.o:                                             ; preds = %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i
  call fastcc void @_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ad, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.aa) #35, !alias.scope !8243, !noalias !8231
  br label %_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.o, %_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %bb.j
  %.sroa.05.2.i = phi i64 [ %.sroa.05.062.i, %bb.j ], [ 0, %_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ], [ 0, %bb.o ] ; 4 uses
  %i.gv = sub nuw nsw i64 %i.w, %.sroa.0.063.i    ; 2 uses
  %i.gw = getelementptr i8, ptr %i.x, i64 %.sroa.0.063.i ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sroa.05.2.i, 2      ; 4 uses
  %i.gx = lshr i64 %i.gv, 2                       ; 2 uses
  %i.gy = sub nuw nsw i64 64, %.sroa.05.2.i
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 %i.gy) ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %scevgep.i = getelementptr i8, ptr %i.aa, i64 %.idx.i
  %i.ha = shl nuw nsw i64 %i.gz, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr align 4 %scevgep.i, i64 %i.ha, i1 false), !alias.scope !8244, !noalias !8245
  %xtraiter = and i64 %i.gz, 7                    ; 3 uses
  %i.hb = icmp samesign ult i64 %i.gz, 8
  br i1 %i.hb, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.preheader.i.new

.lr.ph.i.i.preheader.i.new:                       ; preds = %.lr.ph.i.i.preheader.i
  %unroll_iter = and i64 %i.gz, 120
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i.new
  %.sroa.0.036.idx.i = phi i64 [ %.idx.i, %.lr.ph.i.i.preheader.i.new ], [ %.sroa.0.036.add.i.7, %.lr.ph.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.hc = icmp ne i64 %.sroa.0.036.idx.i, 256
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp ne i64 %.sroa.0.036.idx.i, 252
  call void @llvm.assume(i1 %i.hd)
  %i.he = icmp ne i64 %.sroa.0.036.idx.i, 248
  call void @llvm.assume(i1 %i.he)
  %i.hf = icmp ne i64 %.sroa.0.036.idx.i, 244
  call void @llvm.assume(i1 %i.hf)
  %i.hg = icmp ne i64 %.sroa.0.036.idx.i, 240
  call void @llvm.assume(i1 %i.hg)
  %i.hh = icmp ne i64 %.sroa.0.036.idx.i, 236
  call void @llvm.assume(i1 %i.hh)
  %i.hi = icmp ne i64 %.sroa.0.036.idx.i, 232
  call void @llvm.assume(i1 %i.hi)
  %i.hj = icmp ne i64 %.sroa.0.036.idx.i, 228
  call void @llvm.assume(i1 %i.hj)
  %.sroa.0.036.add.i.7 = add nuw nsw i64 %.sroa.0.036.idx.i, 32 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.unr-lcssa, label %.lr.ph.i.i.i

_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.unr-lcssa, %.lr.ph.i.i.preheader.i
  %.sroa.0.036.idx.i.epil.init = phi i64 [ %.idx.i, %.lr.ph.i.i.preheader.i ], [ %.sroa.0.036.add.i.7, %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.unr-lcssa ]
  %lcmp.mod124 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod124)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.036.idx.i.epil = phi i64 [ %.sroa.0.036.add.i.epil, %.lr.ph.i.i.i.epil ], [ %.sroa.0.036.idx.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.hk = icmp ne i64 %.sroa.0.036.idx.i.epil, 256
  call void @llvm.assume(i1 %i.hk)
  %.sroa.0.036.add.i.epil = add nuw nsw i64 %.sroa.0.036.idx.i.epil, 4 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !8192

_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %.lr.ph.i.i.i.epil, %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.unr-lcssa
  %.sroa.0.036.add.i.lcssa = phi i64 [ %.sroa.0.036.add.i.7, %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.unr-lcssa ], [ %.sroa.0.036.add.i.epil, %.lr.ph.i.i.i.epil ] ; 2 uses
  %i.hl = add nuw nsw i64 %i.gz, %.sroa.05.2.i    ; 3 uses
  %i.hm = icmp samesign eq i64 %.sroa.0.036.add.i.lcssa, 256
  br i1 %i.hm, label %bb.q, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.hn = phi i64 [ %i.hl, %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.05.2.i, %_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 2 uses
  %.idx.pn91.i = phi i64 [ %.sroa.0.036.add.i.lcssa, %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.idx.i, %_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsat9HgdBb3qc_16shadowsocks_rust.exit.i ]
  %i.ho = and i64 %i.gv, 9223372036854775804
  %i.hp = and i64 %i.w, 3                         ; 2 uses
  %.not.i7 = icmp eq i64 %i.hp, 0
  br i1 %.not.i7, label %_RNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB5_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit.i
  %.sroa.0.1.le.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.pn91.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.hr = load i32, ptr %.sroa.0.1.le.i, align 4, !alias.scope !8230, !noalias !8231, !noundef !14
  store i32 %i.hr, ptr %.sroa.0.i, align 4, !noalias !8244
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hq, ptr nonnull readonly align 4 %.sroa.0.i, i64 range(i64 0, -9223372036854775808) %i.hp, i1 false), !alias.scope !8246, !noalias !8247
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.hs = add nuw nsw i64 %i.hn, 1
  br label %_RNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB5_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.q:                                             ; preds = %_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB3r_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.ht = add i64 %i.ha, %.sroa.0.063.i           ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.w
  br i1 %i.hu, label %bb.j, label %_RNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB5_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB5_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.q, %.loopexit.i, %bb.p
  %.sroa.05.1.i = phi i64 [ %i.hn, %.loopexit.i ], [ %i.hs, %bb.p ], [ %i.hl, %bb.q ]
  %.sroa.6.0.extract.trunc.i.i.i = trunc i64 %.sroa.05.1.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i, ptr %i.aa, align 4, !alias.scope !8230, !noalias !8231
  call void @llvm.experimental.noalias.scope.decl(metadata !8248)
  call void @llvm.experimental.noalias.scope.decl(metadata !8249)
  call void @llvm.experimental.noalias.scope.decl(metadata !8250)
  %i.hv = load ptr, ptr %i.g, align 8, !alias.scope !8251, !nonnull !14, !noundef !14 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !noalias !8251, !noundef !14
  %i.hx = add i64 %i.hw, -1                       ; 2 uses
  store i64 %i.hx, ptr %i.hv, align 8, !noalias !8251
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.r:                                             ; preds = %_RNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB5_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell10UnsafeCellINtNtCsfGqwKJg1jQb_9rand_core5block8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #36
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMs3_NtCsfGqwKJg1jQb_9rand_core5blockINtB5_8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !8252)
  %i.hz = udiv i64 %i.w, 3
  %i.ia = shl nuw i64 %i.hz, 2                    ; 2 uses
  %i.ib = urem i64 %i.w, 3
  %.not.i.i8 = icmp eq i64 %i.ib, 0
  %i.ic = add nuw i64 %i.ia, 4
  %.sroa.7.0.i.i = select i1 %.not.i.i8, i64 %i.ia, i64 %i.ic ; 15 uses
  %.not.i.i.i9 = icmp slt i64 %.sroa.7.0.i.i, 0
  br i1 %.not.i.i.i9, label %bb.v, label %bb.s, !prof !39

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.id = icmp eq i64 %.sroa.7.0.i.i, 0
  br i1 %i.id, label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !8253
  %i.ie = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %.sroa.7.0.i.i, i64 noundef range(i64 1, 9) 1) #30, !noalias !8253 ; 2 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ig = ptrtoint ptr %i.ie to i64
  br label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.v:                                             ; preds = %bb.t, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.t ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngECsat9HgdBb3qc_16shadowsocks_rust.exit ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.7.0.i.i) #34, !noalias !8254
  unreachable

_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.u, %bb.s
  %.sroa.10.0.i.i = phi i64 [ %i.ig, %bb.u ], [ 1, %bb.s ] ; 2 uses
  %i.ih = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 4 uses
  %i.ii = call noundef i64 @_RNvXs_NtNtCs8xUA7ZdjTE9_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(324) @610, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef range(i64 0, -9223372036854775808) %i.w, ptr noalias nofree noundef nonnull %i.ih, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i) #30, !noalias !8252 ; 6 uses
  %i.ij = icmp ugt i64 %i.ii, %.sroa.7.0.i.i
  br i1 %i.ij, label %bb.x, label %bb.w, !prof !23

bb.w:                                             ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.ik = sub nuw nsw i64 %.sroa.7.0.i.i, %i.ii   ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ii ; 3 uses
  %i.im = sub nsw i64 0, %i.ii
  %i.in = and i64 %i.im, 3                        ; 3 uses
  %.not.i2.i = icmp eq i64 %i.in, 0
  br i1 %.not.i2.i, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.lr.ph.i.i

bb.x:                                             ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #37, !noalias !8252
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.w
  %exitcond.not.i.i = icmp eq i64 %.sroa.7.0.i.i, %i.ii
  br i1 %exitcond.not.i.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i
  store i8 61, ptr %i.il, align 1, !alias.scope !8255, !noalias !8256
  %exitcond4.not.i.i = icmp eq i64 %i.in, 1
  br i1 %exitcond4.not.i.i, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.y
  %exitcond.not.i.i.1 = icmp eq i64 %i.ik, 1
  br i1 %exitcond.not.i.i.1, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.1
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  store i8 61, ptr %i.io, align 1, !alias.scope !8255, !noalias !8256
  %exitcond4.not.i.i.1 = icmp eq i64 %i.in, 2
  br i1 %exitcond4.not.i.i.1, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.z
  %exitcond.not.i.i.2 = icmp eq i64 %i.ik, 2
  br i1 %exitcond.not.i.i.2, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.2
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  store i8 61, ptr %i.ip, align 1, !alias.scope !8255, !noalias !8256
  br label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.ab:                                            ; preds = %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ik, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #37, !noalias !8252
  unreachable

_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.y, %bb.z, %bb.aa, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8257
  call void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ih, i64 noundef %.sroa.7.0.i.i) #30, !noalias !8258
  %i.iq = load i64, ptr %i.c, align 8, !range !31, !noalias !8257, !noundef !14
  %i.ir = trunc nuw i64 %i.iq to i1
  br i1 %i.ir, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit.i, label %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit.i: ; preds = %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.821.24.copyload.i = load i64, ptr %i.is, align 8, !noalias !8257
  %.sroa.1022.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.1022.24.copyload.i = load i64, ptr %.sroa.1022.24..sroa_idx.i, align 8, !noalias !8257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8257
  call void @llvm.experimental.noalias.scope.decl(metadata !8259)
  call void @llvm.experimental.noalias.scope.decl(metadata !8260)
  %i.it = inttoptr i64 %.sroa.7.0.i.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8261
  store i64 %.sroa.7.0.i.i, ptr %i.b, align 8, !noalias !8262
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.10.0.i.i, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !8262
  %.sroa.812.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.it, ptr %.sroa.812.0..sroa_idx13.i, align 8, !noalias !8262
  %.sroa.9.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.821.24.copyload.i, ptr %.sroa.9.0..sroa_idx15.i, align 8, !noalias !8262
  %.sroa.10.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.1022.24.copyload.i, ptr %.sroa.10.0..sroa_idx17.i, align 8, !noalias !8262
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @141, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @257, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #37, !noalias !8263
  unreachable

_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8257
  store i64 %.sroa.7.0.i.i, ptr %i.j, align 8, !alias.scope !8263, !noalias !8264
  %.sroa.812.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.ih, ptr %.sroa.812.8..sroa_idx.i, align 8, !alias.scope !8263, !noalias !8264
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.7.0.i.i, ptr %.sroa.9.8..sroa_idx.i, align 8, !alias.scope !8263, !noalias !8264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull @199, ptr noundef nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8265)
  call void @llvm.experimental.noalias.scope.decl(metadata !8266)
  %.val.i.i = load i64, ptr %i.j, align 8, !range !16, !alias.scope !8267, !noundef !14 ; 2 uses
  %i.iu = icmp eq i64 %.val.i.i, 0
  br i1 %i.iu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.ac

bb.ac:                                            ; preds = %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.val1.i.i = load ptr, ptr %.sroa.812.8..sroa_idx.i, align 8, !alias.scope !8267, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !8267
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !8268
  br label %bb.f
}

; Function Attrs: cold nounwind nonlazybind uwtable
define void @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server27define_command_line_options(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(712) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMs_NtNtCslDQ48jUgq5Q_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECsat9HgdBb3qc_16shadowsocks_rust.exit:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
end_hunk_3
begin_hunk_4_@_RNvXs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs1kwRxRulhfk_12tracing_core10subscriber10Subscriber8new_span:bb.a

bb.s:                                             ; preds = %bb.t, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultOINtNtNtNtCsfl4DFYTbOu6_12sharded_slab4sync5inner5alloc5TrackINtNtBR_5shard5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtBR_3cfg13DefaultConfigEEBH_E6expectCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.bj, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultOINtNtNtNtCsfl4DFYTbOu6_12sharded_slab4sync5inner5alloc5TrackINtNtBR_5shard5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtBR_3cfg13DefaultConfigEEBH_E6expectCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i ], [ %.sroa.01.0.i.i.i.i.i, %bb.t ] ; 2 uses
  %i.bk = icmp ult i64 %.sroa.02.0.i.i.i.i, %.sroa.0.0.i.i.i
  br i1 %i.bk, label %bb.t, label %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bl = cmpxchg ptr %i.bi, i64 %.sroa.02.0.i.i.i.i, i64 %.sroa.0.0.i.i.i acq_rel acquire, align 8, !noalias !10543 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.bl, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.bl, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.s

_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.t, %bb.s, %bb.k
  %.sroa.02.0.i.i.i = phi ptr [ %i.ae, %bb.k ], [ %i.az, %bb.s ], [ %i.az, %bb.t ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10543
  call void @llvm.experimental.noalias.scope.decl(metadata !10550)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !10550, !noalias !10551, !nonnull !14, !noundef !14 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !10550, !noalias !10551, !noundef !14 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.bp, 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !10550, !noalias !10551 ; 3 uses
  %i.bt = load ptr, ptr %.sroa.02.0.i.i.i, align 8, !alias.scope !10550, !noalias !10551, !nonnull !14 ; 2 uses
  %i.bu = icmp eq i64 %i.bp, 0
  br i1 %i.bu, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %.sroa.0.0.i545.i.i = phi ptr [ %i.bv, %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ %i.bn, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 8 uses
  %.sroa.8.0.i44.i.i = phi i64 [ %i.bw, %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ 0, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i545.i.i, i64 40 ; 2 uses
  %i.bw = add nuw nsw i64 %.sroa.8.0.i44.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.8.0.i44.i.i, %i.bs
  br i1 %exitcond.not.i.i.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.8.0.i44.i.i
  %.val.i.i.i.i = load i64, ptr %i.bx, align 8, !noalias !10552, !noundef !14 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i545.i.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !noalias !10552, !noundef !14
  %i.ca = icmp ult i64 %.val.i.i.i.i, %i.bz
  br i1 %i.ca, label %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i545.i.i, i64 16
  %i.cc = atomicrmw xchg ptr %i.cb, i64 274877906944 acquire, align 8, !noalias !10552 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cc, 274877906944
  br i1 %.not.i.i.i.i.i, label %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i

_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %bb.u
  %.not32.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 274877906944
  br i1 %.not32.i.i.i.i, label %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i

_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i: ; preds = %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %bb.v
  %.sroa.05.0.i25.i.i.i.i = phi i64 [ %.val.i.i.i.i, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i ], [ %i.cc, %bb.v ] ; 4 uses
  %i.cd = load ptr, ptr %.sroa.0.0.i545.i.i, align 8, !noalias !10552, !align !27, !noundef !14 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i, label %bb.w, label %.thread.i.i.i.i, !prof !23

bb.w:                                             ; preds = %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i
  call fastcc void @_RNvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE8allocateCsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull align 8 %.sroa.0.0.i545.i.i) #30, !noalias !10552
  %.pr.i.i.i.i = load ptr, ptr %.sroa.0.0.i545.i.i, align 8, !noalias !10553 ; 2 uses
  %.not.i4.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i4.i.i.i.i, label %bb.x, label %.thread.i.i.i.i, !prof !57

.thread.i.i.i.i:                                  ; preds = %bb.w, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i
  %i.ce = phi ptr [ %.pr.i.i.i.i, %bb.w ], [ %i.cd, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i545.i.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !10553, !noundef !14 ; 2 uses
  %i.ch = icmp ult i64 %.sroa.05.0.i25.i.i.i.i, %i.cg
  br i1 %i.ch, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #37, !noalias !10553
  unreachable

bb.y:                                             ; preds = %.thread.i.i.i.i
  %.pn.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i545.i.i, i64 32
  %.pn.i.i.i.i = load i64, ptr %.pn.in.i.i.i.i, align 8, !noalias !10552, !noundef !14
  %i.ci = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %.sroa.05.0.i25.i.i.i.i ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8, !noalias !10554 ; 4 uses
  %i.cl = and i64 %i.ck, 2251799813685244
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.ab, label %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

bb.z:                                             ; preds = %.thread.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.i25.i.i.i.i, i64 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #37, !noalias !10553
  unreachable

_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %bb.y, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %bb.v
  %i.cn = icmp eq ptr %i.bv, %i.bq
  br i1 %i.cn, label %.loopexit, label %.lr.ph.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37, !noalias !10555
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.8.0.i44.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 80 ; 2 uses
  %i.cq = add i64 %.pn.i.i.i.i, %.sroa.05.0.i25.i.i.i.i
  %i.cr = and i64 %i.ck, -2251799813685248        ; 2 uses
  %i.cs = and i64 %i.cq, 274877906943
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 88
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !10553, !noundef !14
  store i64 %i.cu, ptr %i.co, align 8, !noalias !10553
  %i.cv = shl i64 %.sroa.0.0.i.i.i, 38
  %i.cw = or disjoint i64 %i.cs, %i.cv
  %i.cx = or i64 %i.cw, %i.cr                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10556)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !10556, !nonnull !14, !align !27, !noundef !14
  store ptr %i.cz, ptr %i.ci, align 8, !alias.scope !10556, !captures !35
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.sroa.0.2, ptr %i.da, align 8, !alias.scope !10556
  %i.db = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filters9FILTERING0s_023___RUST_STD_INTERNAL_VAL)
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %.val.i.i.i3.i = load i64, ptr %i.dc, align 8, !noalias !10556, !noundef !14
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %.val.i.i.i3.i, ptr %i.dd, align 8, !alias.scope !10556
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 1, ptr %i.de, align 8, !alias.scope !10556
  %i.df = cmpxchg ptr %i.cp, i64 %i.ck, i64 %i.cr acq_rel acquire, align 8, !noalias !10557 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.df, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.ae, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab
  %i.dg = or i64 %i.ck, 3
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.pn19.i.i.i.i.i = phi { i64, i1 } [ %i.dj, %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ %i.df, %.preheader.i.i.i.i.i ]
  %.sroa.01.0.i.pn.i.i.i.i.i = extractvalue { i64, i1 } %.pn19.i.i.i.i.i, 0 ; 2 uses
  %i.dh = and i64 %.sroa.01.0.i.pn.i.i.i.i.i, 3
  %i.di = icmp eq i64 %i.dh, 2
  br i1 %i.di, label %bb.ad, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, !prof !10558

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10557
  store i64 2, ptr %i.b, align 8, !noalias !10557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10557
  store ptr %i.b, ptr %i.a, align 8, !noalias !10557
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10557
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !10557
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.dj = cmpxchg ptr %i.cp, i64 %.sroa.01.0.i.pn.i.i.i.i.i, i64 %i.dg acq_rel acquire, align 8, !noalias !10557 ; 2 uses
  %.sroa.18.0.in.i12.i.i.i.i.i = extractvalue { i64, i1 } %i.dj, 1
  br i1 %.sroa.18.0.in.i12.i.i.i.i.i, label %_RNvMst_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %bb.ac

_RNvMst_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i
  call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.02.0.i.i.i, i64 noundef %i.cx) #30, !noalias !10559
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMst_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %bb.ab
  %i.dk = add i64 %i.cx, 1
  %i.dl = call noundef i64 @_RNvMNtCs1kwRxRulhfk_12tracing_core4spanNtB2_2Id8from_u64(i64 noundef %i.dk) #30
  ret i64 %i.dl

.loopexit:                                        ; preds = %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @679, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @681) #37
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10600)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !10601, !noalias !10602
  %i.g = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.g, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.promoted27.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !10603, !noalias !10602
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !10601, !noalias !10602, !nonnull !14, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !10601, !noalias !10602, !noundef !14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !10604, !noalias !10605, !noundef !14 ; 7 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !10603, !noalias !10602 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !19, !alias.scope !10603, !noalias !10602
  %i.v = trunc nuw i8 %i.u to i1
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !10603, !noalias !10602 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.promoted31.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !10604, !noalias !10605
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.ab = phi i64 [ %.promoted31.i.i.i, %.lr.ph.i.i.i ], [ %i.ax, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ] ; 3 uses
  %.lcssa242930.i.i.i = phi i64 [ %.promoted27.i.i.i, %.lr.ph.i.i.i ], [ %.lcssa2428.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10606)
  call void @llvm.experimental.noalias.scope.decl(metadata !10607)
  call void @llvm.experimental.noalias.scope.decl(metadata !10608)
  %i.ac = icmp ult i64 %i.l, %i.ab
  %or.cond27.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %i.ac
  br i1 %or.cond27.i.i.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %bb.b
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !10604, !noalias !10605 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.ad = phi i64 [ %i.ar, %bb.e ], [ %i.ab, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.ae = sub nuw i64 %i.l, %i.ad                 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ad ; 2 uses
  %i.ag = icmp samesign ult i64 %i.ae, 16
  br i1 %i.ag, label %.preheader.i.i.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ah = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.ae) #30, !noalias !10609 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %.loopexit.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !10610, !noalias !10609, !noundef !14
  %i.an = icmp eq i8 %i.am, %.pre.i.i.i.i.i.i
  br i1 %i.an, label %.loopexit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ao = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ao, %i.ae
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ap = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.ae
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add i64 %i.ad, 1
  %i.ar = add i64 %i.aq, %.sroa.5.0.i.i.i.i.i.i.i ; 10 uses
  store i64 %i.ar, ptr %i.j, align 8, !alias.scope !10604, !noalias !10605
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.ar, %i.p
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.ar, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i.i.i.i:                          ; preds = %bb.c, %.preheader.i.i.i.i.i.i.i, %bb.d
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !10604, !noalias !10605
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i.i.i.i
  %i.as = icmp ult i64 %i.l, %i.ar
  br i1 %i.as, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.at = sub nuw i64 %i.ar, %i.p                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.at
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.au, ptr nonnull %i.m, i64 %i.p), !noalias !10605
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.av, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.e

_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.f
  store i64 %i.ar, ptr %i.e, align 8, !alias.scope !10601, !noalias !10602
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.e, %.loopexit15.i.i.i.i.i.i, %bb.b
  %i.aw = phi i64 [ %i.ab, %bb.b ], [ %i.l, %.loopexit15.i.i.i.i.i.i ], [ %i.ar, %bb.e ]
  store i8 1, ptr %i.f, align 1, !alias.scope !10611, !noalias !10602
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa242930.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.ax = phi i64 [ %i.ar, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.aw, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %.lcssa2428.i.i.i = phi i64 [ %i.ar, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa242930.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %i.ay = phi i1 [ false, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %.pn34.i.i.i = phi i64 [ %i.at, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.pn34.i.i.i, %.lcssa242930.i.i.i
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i.i
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn34.i.i.i, %.lcssa242930.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa242930.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10612
  store ptr %.sroa.0.1.i.i.i.i.i, ptr %i.d, align 8, !noalias !10613
  store i64 %.sroa.4.1.i.i.i.i.i, ptr %i.w, align 8, !noalias !10613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10613
  %i.az = load ptr, ptr %.val, align 8, !noalias !10614, !nonnull !14, !align !27, !noundef !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bb = load i8, ptr %i.ba, align 8, !range !19, !noalias !10615, !noundef !14
  %i.bc = trunc nuw i8 %i.bb to i1
  call void @_RNvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB2_9Directive5parse(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i, i1 noundef zeroext %i.bc) #30, !noalias !10615
  %i.bd = load i64, ptr %i.c, align 8, !range !18, !noalias !10613, !noundef !14 ; 2 uses
  %i.be = icmp eq i64 %i.bd, -2
  br i1 %i.be, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !10613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10613
  store ptr %i.d, ptr %i.a, align 8, !noalias !10613
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !10613
  store ptr %i.b, ptr %i.y, align 8, !noalias !10613
  store ptr @_RNvXsd_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveNtB5_10ParseErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !10613
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @198, ptr noundef nonnull %i.a) #30, !noalias !10615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10613
  call void @llvm.experimental.noalias.scope.decl(metadata !10616)
  call void @llvm.experimental.noalias.scope.decl(metadata !10617)
  %i.bf = load i64, ptr %i.b, align 8, !range !32, !alias.scope !10618, !noalias !10613, !noundef !14
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !10618, !noalias !10613 ; 4 uses
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !10618, !noalias !10613, !nonnull !14, !align !27, !noundef !14 ; 3 uses
  %i.bh = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !14, !noalias !10619 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  call void %i.bh(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i) #35, !noalias !10619, !inline_history !10596
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !16, !invariant.load !14, !noalias !10619 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !range !25, !invariant.load !14, !noalias !10619
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) %i.bm) #30, !noalias !10619
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10612
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i, %select.unfold.i.i.i
  br i1 %i.ay, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.b

bb.l:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i64 72, i1 false), !noalias !10598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10612
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, %bb.a, %bb.l
  %storemerge.i = phi i64 [ %i.bd, %bb.l ], [ -2, %bb.a ], [ -2, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ], [ -2, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !10597, !noalias !10598
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10660)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !10661, !noalias !10662
  %i.g = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.g, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.promoted27.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !10663, !noalias !10662
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !10661, !noalias !10662, !nonnull !14, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !10661, !noalias !10662, !noundef !14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !10664, !noalias !10665, !noundef !14 ; 7 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !10663, !noalias !10662 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !19, !alias.scope !10663, !noalias !10662
  %i.v = trunc nuw i8 %i.u to i1
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !10663, !noalias !10662 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.promoted31.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !10664, !noalias !10665
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.ab = phi i64 [ %.promoted31.i.i.i, %.lr.ph.i.i.i ], [ %i.ax, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ] ; 3 uses
  %.lcssa242930.i.i.i = phi i64 [ %.promoted27.i.i.i, %.lr.ph.i.i.i ], [ %.lcssa2428.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10666)
  call void @llvm.experimental.noalias.scope.decl(metadata !10667)
  call void @llvm.experimental.noalias.scope.decl(metadata !10668)
  %i.ac = icmp ult i64 %i.l, %i.ab
  %or.cond27.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %i.ac
  br i1 %or.cond27.i.i.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %bb.b
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !10664, !noalias !10665 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.ad = phi i64 [ %i.ar, %bb.e ], [ %i.ab, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.ae = sub nuw i64 %i.l, %i.ad                 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ad ; 2 uses
  %i.ag = icmp samesign ult i64 %i.ae, 16
  br i1 %i.ag, label %.preheader.i.i.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ah = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.ae) #30, !noalias !10669 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %.loopexit.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !10670, !noalias !10669, !noundef !14
  %i.an = icmp eq i8 %i.am, %.pre.i.i.i.i.i.i
  br i1 %i.an, label %.loopexit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ao = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ao, %i.ae
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ap = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.ae
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add i64 %i.ad, 1
  %i.ar = add i64 %i.aq, %.sroa.5.0.i.i.i.i.i.i.i ; 10 uses
  store i64 %i.ar, ptr %i.j, align 8, !alias.scope !10664, !noalias !10665
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.ar, %i.p
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.ar, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i.i.i.i:                          ; preds = %bb.c, %.preheader.i.i.i.i.i.i.i, %bb.d
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !10664, !noalias !10665
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i.i.i.i
  %i.as = icmp ult i64 %i.l, %i.ar
  br i1 %i.as, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.at = sub nuw i64 %i.ar, %i.p                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.at
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.au, ptr nonnull %i.m, i64 %i.p), !noalias !10665
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.av, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.e

_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.f
  store i64 %i.ar, ptr %i.e, align 8, !alias.scope !10661, !noalias !10662
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.e, %.loopexit15.i.i.i.i.i.i, %bb.b
  %i.aw = phi i64 [ %i.ab, %bb.b ], [ %i.l, %.loopexit15.i.i.i.i.i.i ], [ %i.ar, %bb.e ]
  store i8 1, ptr %i.f, align 1, !alias.scope !10671, !noalias !10662
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa242930.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.ax = phi i64 [ %i.ar, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.aw, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %.lcssa2428.i.i.i = phi i64 [ %i.ar, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa242930.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %i.ay = phi i1 [ false, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %.pn34.i.i.i = phi i64 [ %i.at, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.pn34.i.i.i, %.lcssa242930.i.i.i
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i.i
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn34.i.i.i, %.lcssa242930.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa242930.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10672
  store ptr %.sroa.0.1.i.i.i.i.i, ptr %i.d, align 8, !noalias !10673
  store i64 %.sroa.4.1.i.i.i.i.i, ptr %i.w, align 8, !noalias !10673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10673
  %i.az = load ptr, ptr %.val, align 8, !noalias !10674, !nonnull !14, !align !27, !noundef !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bb = load i8, ptr %i.ba, align 8, !range !19, !noalias !10675, !noundef !14
  %i.bc = trunc nuw i8 %i.bb to i1
  call void @_RNvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB2_9Directive5parse(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i, i1 noundef zeroext %i.bc) #30, !noalias !10675
  %i.bd = load i64, ptr %i.c, align 8, !range !18, !noalias !10673, !noundef !14 ; 2 uses
  %i.be = icmp eq i64 %i.bd, -2
  br i1 %i.be, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !10673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10673
  store ptr %i.d, ptr %i.a, align 8, !noalias !10673
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !10673
  store ptr %i.b, ptr %i.y, align 8, !noalias !10673
  store ptr @_RNvXsd_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveNtB5_10ParseErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !10673
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @198, ptr noundef nonnull %i.a) #30, !noalias !10675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10673
  call void @llvm.experimental.noalias.scope.decl(metadata !10676)
  call void @llvm.experimental.noalias.scope.decl(metadata !10677)
  %i.bf = load i64, ptr %i.b, align 8, !range !32, !alias.scope !10678, !noalias !10673, !noundef !14
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !10678, !noalias !10673 ; 4 uses
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !10678, !noalias !10673, !nonnull !14, !align !27, !noundef !14 ; 3 uses
  %i.bh = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !14, !noalias !10679 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  call void %i.bh(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i) #35, !noalias !10679, !inline_history !10656
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !16, !invariant.load !14, !noalias !10679 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !range !25, !invariant.load !14, !noalias !10679
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) %i.bm) #30, !noalias !10679
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10672
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i, %select.unfold.i.i.i
  br i1 %i.ay, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.b

bb.l:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i64 72, i1 false), !noalias !10658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10672
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, %bb.a, %bb.l
  %storemerge.i = phi i64 [ %i.bd, %bb.l ], [ -2, %bb.a ], [ -2, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ], [ -2, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !10657, !noalias !10658
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBa_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB16_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 13) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBa_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1j_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @683, i64 noundef 22) #30
  ret i1 %i.a
end_hunk_4
begin_hunk_5_@_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EEINtB5_11FormatEventNtNtNtB9_8registry7sharded8RegistryNtB5_13DefaultFieldsE12format_eventCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  br i1 %.not1.i.i.2, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.et, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.eu = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.3 = icmp eq ptr %i.eu, null
  br i1 %.not1.i.i.3, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ev, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.ew = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.4 = icmp eq ptr %i.ew, null
  br i1 %.not1.i.i.4, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %.lr.ph.i.i.4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ex, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.ey = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.5 = icmp eq ptr %i.ey, null
  br i1 %.not1.i.i.5, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %.lr.ph.i.i.5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ez, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.fa = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.6 = icmp eq ptr %i.fa, null
  br i1 %.not1.i.i.6, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.7

.lr.ph.i.i.7:                                     ; preds = %.lr.ph.i.i.6
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.fc = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.7 = icmp eq ptr %i.fc, null
  br i1 %.not1.i.i.7, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.8

.lr.ph.i.i.8:                                     ; preds = %.lr.ph.i.i.7
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fd, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.fe = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.8 = icmp eq ptr %i.fe, null
  br i1 %.not1.i.i.8, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.9

.lr.ph.i.i.9:                                     ; preds = %.lr.ph.i.i.8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.k, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ff, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.fg = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.9 = icmp eq ptr %i.fg, null
  br i1 %.not1.i.i.9, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.10

.lr.ph.i.i.10:                                    ; preds = %.lr.ph.i.i.9
  %i.fh = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fh, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.fi = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.10 = icmp eq ptr %i.fi, null
  br i1 %.not1.i.i.10, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.11

.lr.ph.i.i.11:                                    ; preds = %.lr.ph.i.i.10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.fk = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.11 = icmp eq ptr %i.fk, null
  br i1 %.not1.i.i.11, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.12

.lr.ph.i.i.12:                                    ; preds = %.lr.ph.i.i.11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.k, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.fm = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.12 = icmp eq ptr %i.fm, null
  br i1 %.not1.i.i.12, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.13

.lr.ph.i.i.13:                                    ; preds = %.lr.ph.i.i.12
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fn, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.fo = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.13 = icmp eq ptr %i.fo, null
  br i1 %.not1.i.i.13, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.14

.lr.ph.i.i.14:                                    ; preds = %.lr.ph.i.i.13
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fp, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.fq = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.14 = icmp eq ptr %i.fq, null
  br i1 %.not1.i.i.14, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.15

.lr.ph.i.i.15:                                    ; preds = %.lr.ph.i.i.14
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fr, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11103
  %i.fs = load ptr, ptr %i.i, align 8, !noalias !11103, !noundef !14
  %.not1.i.i.15 = icmp eq ptr %i.fs, null
  br i1 %.not1.i.i.15, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.15
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11110
  store i64 16, ptr %i.eb, align 8, !alias.scope !11105, !noalias !11110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !11103
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #30, !noalias !11103
  %i.fu = load ptr, ptr %i.g, align 8, !noalias !11103, !noundef !14
  %.not14.i.i = icmp eq ptr %i.fu, null
  br i1 %.not14.i.i, label %._crit_edge17.i.i, label %.lr.ph16.i.i

_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %.lr.ph.i.i.7, %.lr.ph.i.i.8, %.lr.ph.i.i.9, %.lr.ph.i.i.10, %.lr.ph.i.i.11, %.lr.ph.i.i.12, %.lr.ph.i.i.13, %.lr.ph.i.i.14, %.lr.ph.i.i.15, %._crit_edge17.i.i
  %.sroa.7557.0.copyload = phi i64 [ %.sroa.7557.0.copyload.pre, %._crit_edge17.i.i ], [ 0, %.lr.ph.i.i ], [ 1, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.2 ], [ 3, %.lr.ph.i.i.3 ], [ 4, %.lr.ph.i.i.4 ], [ 5, %.lr.ph.i.i.5 ], [ 6, %.lr.ph.i.i.6 ], [ 7, %.lr.ph.i.i.7 ], [ 8, %.lr.ph.i.i.8 ], [ 9, %.lr.ph.i.i.9 ], [ 10, %.lr.ph.i.i.10 ], [ 11, %.lr.ph.i.i.11 ], [ 12, %.lr.ph.i.i.12 ], [ 13, %.lr.ph.i.i.13 ], [ 14, %.lr.ph.i.i.14 ], [ 15, %.lr.ph.i.i.15 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11104
  %.sroa.0552.0.copyload = load i64, ptr %i.k, align 8, !noalias !11111
  %.sroa.5554.0.copyload = load i64, ptr %i.ec, align 8, !noalias !11111 ; 2 uses
  %.sroa.7556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0551.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %.sroa.0551.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(632) %.sroa.7556.0..sroa_idx, i64 632, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11104
  %i.fv = icmp ugt i64 %.sroa.7557.0.copyload, 16 ; 3 uses
  %.sink12.i7.i = select i1 %i.fv, i64 %.sroa.5554.0.copyload, i64 %.sroa.7557.0.copyload ; 3 uses
  %spec.select = select i1 %i.fv, i64 0, i64 %.sroa.5554.0.copyload
  %spec.select569 = select i1 %i.fv, i64 %.sroa.7557.0.copyload, i64 0
  store i64 %.sroa.0552.0.copyload, ptr %i.al, align 8
  %.sroa.0551.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store i64 %spec.select, ptr %.sroa.0551.sroa.2.0..sroa_idx, align 8
  %.sroa.0551.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 648 ; 2 uses
  store i64 %spec.select569, ptr %.sroa.0551.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 656 ; 2 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 664 ; 2 uses
  store i64 %.sink12.i7.i, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.fw = icmp eq i64 %.sink12.i7.i, 0
  br i1 %i.fw, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 49
  %.sroa.12195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 57
  %.sroa.13196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 61
  %.sroa.4351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %.sroa.5352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %.sroa.4364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 49
  %.sroa.12206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 57
  %.sroa.13207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 61
  %.sroa.4366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.sroa.5367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 49
  %.sroa.12217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 57
  %.sroa.13218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 61
  %.sroa.4369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.5370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %.sroa.4374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.4378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.4382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.4220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 49
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 50
  %.sroa.12228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 57
  %.sroa.13229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 61
  %.sroa.4384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %.sroa.5385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 3 uses
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.ad:                                            ; preds = %._crit_edge, %.critedge, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !range !19, !noundef !14
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.bk, label %bb.bj

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.gr = phi i64 [ %.sink12.i7.i, %.lr.ph ], [ %i.gs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %i.gs = add i64 %i.gr, -1                       ; 4 uses
  store i64 %i.gs, ptr %.sroa.3.0..sroa_idx, align 8
  %i.gt = load i64, ptr %.sroa.0551.sroa.4.0..sroa_idx, align 8, !alias.scope !11112, !noalias !11113, !noundef !14
  %i.gu = icmp ugt i64 %i.gt, 16
  %i.gv = load ptr, ptr %.sroa.0551.sroa.3.0..sroa_idx, align 8, !nonnull !14
  %.sink13.i = select i1 %i.gu, ptr %i.gv, ptr %.sroa.0551.sroa.2.0..sroa_idx
  %i.gw = getelementptr inbounds nuw [40 x i8], ptr %.sink13.i, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.gw, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %.val = load ptr, ptr %i.fx, align 8, !nonnull !14, !noundef !14
  %i.gx = load ptr, ptr %.val, align 8, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !nonnull !14, !noundef !14
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hb = load i64, ptr %i.ha, align 8, !noundef !14
  store i8 %i.ea, ptr %i.fy, align 8
  store i64 0, ptr %.sroa.4187.0..sroa_idx, align 1
  store i32 255, ptr %.sroa.12195.0..sroa_idx, align 1
  store i32 255, ptr %.sroa.13196.0..sroa_idx, align 1
  store i64 -1, ptr %i.ai, align 8
  store ptr %i.gz, ptr %.sroa.4351.0..sroa_idx, align 8
  store i64 %i.hb, ptr %.sroa.5352.0..sroa_idx, align 8
  store i64 -3, ptr %i.fz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.ai, ptr %i.ah, align 8
  store ptr @_RNvXs4_NtCsimqtg22L1SV_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4364.0..sroa_idx, align 8
  %i.hc = call noundef zeroext i1 @_RNvMs_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @306, ptr noundef nonnull %i.ah) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br i1 %i.hc, label %bb.ae, label %bb.ah

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry13ScopeFromRootNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(672) %i.al) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.hd = load ptr, ptr %2, align 8, !nonnull !14, !noundef !14
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !nonnull !14, !align !27, !noundef !14
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !invariant.load !14, !nonnull !14
  %i.hi = call noundef zeroext i1 %i.hh(ptr noundef nonnull %i.hd, i32 noundef 32) #35
  br i1 %i.hi, label %bb.bi, label %bb.ad

bb.ae:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !11114)
  %.val.i = load i64, ptr %i.ai, align 8, !range !24, !alias.scope !11114, !noundef !14 ; 2 uses
  %i.hj = icmp sgt i64 %.val.i, 0
  br i1 %i.hj, label %bb.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.af:                                            ; preds = %bb.ae
  %.val1.i = load ptr, ptr %.sroa.4351.0..sroa_idx, align 8, !alias.scope !11114, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !11115
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.af, %bb.ae
  %.val2.i = load i64, ptr %i.fz, align 8, !range !45, !alias.scope !11114, !noundef !14 ; 2 uses
  %i.hk = icmp sgt i64 %.val2.i, 0
  br i1 %i.hk, label %bb.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.ag:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.val3.i = load ptr, ptr %i.ga, align 8, !alias.scope !11114, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !11116
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions10ExtensionsECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.ah:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !11117)
  %.val.i455 = load i64, ptr %i.ai, align 8, !range !24, !alias.scope !11117, !noundef !14 ; 2 uses
  %i.hl = icmp sgt i64 %.val.i455, 0
  br i1 %i.hl, label %bb.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i456

bb.ai:                                            ; preds = %bb.ah
  %.val1.i459 = load ptr, ptr %.sroa.4351.0..sroa_idx, align 8, !alias.scope !11117, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i459, i64 noundef %.val.i455, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !11118
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i456

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i456: ; preds = %bb.ai, %bb.ah
  %.val2.i457 = load i64, ptr %i.fz, align 8, !range !45, !alias.scope !11117, !noundef !14 ; 2 uses
  %i.hm = icmp sgt i64 %.val2.i457, 0
  br i1 %i.hm, label %bb.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit460

bb.aj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i456
  %.val3.i458 = load ptr, ptr %i.ga, align 8, !alias.scope !11117, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i458, i64 noundef %.val2.i457, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !11119
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit460

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit460: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i456, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.hn = call { ptr, ptr } @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData10extensions(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fx) #30 ; 2 uses
  %i.ho = extractvalue { ptr, ptr } %i.hn, 0      ; 3 uses
  %i.hp = extractvalue { ptr, ptr } %i.hn, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !11120)
  call void @llvm.experimental.noalias.scope.decl(metadata !11121)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !11122, !noalias !11123, !noundef !14
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner3getINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1y_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit460
  call void @llvm.experimental.noalias.scope.decl(metadata !11124)
  call void @llvm.experimental.noalias.scope.decl(metadata !11125)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !11126, !noalias !11127, !noundef !14 ; 2 uses
  %i.hv = load ptr, ptr %i.ho, align 8, !alias.scope !11126, !noalias !11127, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.ak ], [ %i.im, %bb.an ]
  %.pn.i.i.i = phi i64 [ 4929995443823542074, %bb.ak ], [ %i.in, %bb.an ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.hu ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.hw, align 1, !noalias !11128 ; 2 uses
  %i.hx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 34)
  %i.hy = bitcast <16 x i1> %i.hx to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.hy, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.al, %bb.am
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.il, %bb.am ], [ %i.hy, %bb.al ] ; 3 uses
  %i.hz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.ia = zext nneg i16 %i.hz to i64
  %i.ib = add i64 %.sroa.01.0.i.i.i.i, %i.ia
  %i.ic = and i64 %i.ib, %i.hu
  %i.id = sub nsw i64 0, %i.ic
  %i.ie = getelementptr inbounds [32 x i8], ptr %i.hv, i64 %i.id ; 3 uses
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -32
  %.val2.i.i.i.i = load i128, ptr %i.if, align 8, !noalias !11129
  %i.ig = icmp eq i128 %.val2.i.i.i.i, 90942364236767015451608553362907401699
  br i1 %i.ig, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.am, !prof !20

._crit_edge.i.i.i:                                ; preds = %bb.am, %bb.al
  %i.ih = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ii = bitcast <16 x i1> %i.ih to i16
  %i.ij = icmp eq i16 %i.ii, 0
  br i1 %i.ij, label %bb.an, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner3getINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1y_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, !prof !23

bb.am:                                            ; preds = %.lr.ph.i.i.i
  %i.ik = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.il = and i16 %i.ik, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.il, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i
  %i.im = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.in = add i64 %.sroa.01.0.i.i.i.i, %i.im
  br label %bb.al

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %.lr.ph.i.i.i
  %i.io = getelementptr inbounds i8, ptr %i.ie, i64 -16
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !11120, !nonnull !14, !noundef !14 ; 3 uses
  %i.iq = getelementptr inbounds i8, ptr %i.ie, i64 -8
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !11120, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11120
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !invariant.load !14, !noalias !11120, !nonnull !14
  call void %i.it(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull %i.ip) #35, !noalias !11120, !inline_history !4
  %i.iu = load i128, ptr %i.f, align 16, !noalias !11120, !noundef !14
  %i.iv = icmp eq i128 %i.iu, 90942364236767015451608553362907401699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11120
  br i1 %i.iv, label %bb.ao, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner3getINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1y_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.ao:                                            ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  store ptr %i.ip, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ag, ptr %i.af, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !noundef !14 ; 2 uses
  %i.iy = icmp sgt i64 %i.ix, -1
  call void @llvm.assume(i1 %i.iy)
  %i.iz = icmp eq i64 %i.ix, 0
  br i1 %i.iz, label %bb.aq, label %bb.ap

_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner3getINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1y_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread: ; preds = %._crit_edge.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit460, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 0, ptr %i.gj, align 8
  store i8 %i.dl, ptr %.sroa.4220.0..sroa_idx, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %.sroa.5221.0..sroa_idx, i8 0, i64 7, i1 false)
  store i32 255, ptr %.sroa.12228.0..sroa_idx, align 1
  store i32 255, ptr %.sroa.13229.0..sroa_idx, align 1
  store i64 -1, ptr %i.ab, align 8
  store ptr @188, ptr %.sroa.4384.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.5385.0..sroa_idx, align 8
  store i64 -3, ptr %i.gk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ab, ptr %i.aa, align 8
  store ptr @_RNvXs4_NtCsimqtg22L1SV_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4389.0..sroa_idx, align 8
  %i.ja = call noundef zeroext i1 @_RNvMs_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @306, ptr noundef nonnull %i.aa) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br i1 %i.ja, label %bb.az, label %bb.bc

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 %i.ea, ptr %i.gb, align 8
  store i64 0, ptr %.sroa.4198.0..sroa_idx, align 1
  store i32 255, ptr %.sroa.12206.0..sroa_idx, align 1
  store i32 255, ptr %.sroa.13207.0..sroa_idx, align 1
  store i64 -1, ptr %i.ae, align 8
  store ptr @718, ptr %.sroa.4366.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.5367.0..sroa_idx, align 8
  store i64 -3, ptr %i.gc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 %i.ea, ptr %i.gd, align 8
end_hunk_5
begin_hunk_6_@_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FulluEINtB5_11FormatEventNtNtNtB9_8registry7sharded8RegistryNtB5_13DefaultFieldsE12format_eventCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  br i1 %.not1.i.i.2, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ee, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.ef = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.3 = icmp eq ptr %i.ef, null
  br i1 %.not1.i.i.3, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eg, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.eh = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.4 = icmp eq ptr %i.eh, null
  br i1 %.not1.i.i.4, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %.lr.ph.i.i.4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ei, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.ej = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.5 = icmp eq ptr %i.ej, null
  br i1 %.not1.i.i.5, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %.lr.ph.i.i.5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ek, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.el = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.6 = icmp eq ptr %i.el, null
  br i1 %.not1.i.i.6, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.7

.lr.ph.i.i.7:                                     ; preds = %.lr.ph.i.i.6
  %i.em = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.em, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.en = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.7 = icmp eq ptr %i.en, null
  br i1 %.not1.i.i.7, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.8

.lr.ph.i.i.8:                                     ; preds = %.lr.ph.i.i.7
  %i.eo = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eo, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.ep = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.8 = icmp eq ptr %i.ep, null
  br i1 %.not1.i.i.8, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.9

.lr.ph.i.i.9:                                     ; preds = %.lr.ph.i.i.8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eq, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.er = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.9 = icmp eq ptr %i.er, null
  br i1 %.not1.i.i.9, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.10

.lr.ph.i.i.10:                                    ; preds = %.lr.ph.i.i.9
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.es, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.et = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.10 = icmp eq ptr %i.et, null
  br i1 %.not1.i.i.10, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.11

.lr.ph.i.i.11:                                    ; preds = %.lr.ph.i.i.10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.ev = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.11 = icmp eq ptr %i.ev, null
  br i1 %.not1.i.i.11, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.12

.lr.ph.i.i.12:                                    ; preds = %.lr.ph.i.i.11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ew, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.ex = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.12 = icmp eq ptr %i.ex, null
  br i1 %.not1.i.i.12, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.13

.lr.ph.i.i.13:                                    ; preds = %.lr.ph.i.i.12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ey, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.ez = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.13 = icmp eq ptr %i.ez, null
  br i1 %.not1.i.i.13, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.14

.lr.ph.i.i.14:                                    ; preds = %.lr.ph.i.i.13
  %i.fa = getelementptr inbounds nuw i8, ptr %i.k, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fa, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.fb = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.14 = icmp eq ptr %i.fb, null
  br i1 %.not1.i.i.14, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.15

.lr.ph.i.i.15:                                    ; preds = %.lr.ph.i.i.14
  %i.fc = getelementptr inbounds nuw i8, ptr %i.k, i64 568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fc, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #30, !noalias !11386
  %i.fd = load ptr, ptr %i.i, align 8, !noalias !11386, !noundef !14
  %.not1.i.i.15 = icmp eq ptr %i.fd, null
  br i1 %.not1.i.i.15, label %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fe, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !11393
  store i64 16, ptr %i.dm, align 8, !alias.scope !11388, !noalias !11393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !11386
  call fastcc void @_RNvXNtCslHe4oyxs8Ro_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #30, !noalias !11386
  %i.ff = load ptr, ptr %i.g, align 8, !noalias !11386, !noundef !14
  %.not14.i.i = icmp eq ptr %i.ff, null
  br i1 %.not14.i.i, label %._crit_edge17.i.i, label %.lr.ph16.i.i

_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %.lr.ph.i.i.7, %.lr.ph.i.i.8, %.lr.ph.i.i.9, %.lr.ph.i.i.10, %.lr.ph.i.i.11, %.lr.ph.i.i.12, %.lr.ph.i.i.13, %.lr.ph.i.i.14, %.lr.ph.i.i.15, %._crit_edge17.i.i
  %.sroa.7556.0.copyload = phi i64 [ %.sroa.7556.0.copyload.pre, %._crit_edge17.i.i ], [ 0, %.lr.ph.i.i ], [ 1, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.2 ], [ 3, %.lr.ph.i.i.3 ], [ 4, %.lr.ph.i.i.4 ], [ 5, %.lr.ph.i.i.5 ], [ 6, %.lr.ph.i.i.6 ], [ 7, %.lr.ph.i.i.7 ], [ 8, %.lr.ph.i.i.8 ], [ 9, %.lr.ph.i.i.9 ], [ 10, %.lr.ph.i.i.10 ], [ 11, %.lr.ph.i.i.11 ], [ 12, %.lr.ph.i.i.12 ], [ 13, %.lr.ph.i.i.13 ], [ 14, %.lr.ph.i.i.14 ], [ 15, %.lr.ph.i.i.15 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11387
  %.sroa.0551.0.copyload = load i64, ptr %i.k, align 8, !noalias !11394
  %.sroa.5553.0.copyload = load i64, ptr %i.dn, align 8, !noalias !11394 ; 2 uses
  %.sroa.7555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0550.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %.sroa.0550.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(632) %.sroa.7555.0..sroa_idx, i64 632, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11387
  %i.fg = icmp ugt i64 %.sroa.7556.0.copyload, 16 ; 3 uses
  %.sink12.i7.i = select i1 %i.fg, i64 %.sroa.5553.0.copyload, i64 %.sroa.7556.0.copyload ; 3 uses
  %spec.select = select i1 %i.fg, i64 0, i64 %.sroa.5553.0.copyload
  %spec.select568 = select i1 %i.fg, i64 %.sroa.7556.0.copyload, i64 0
  store i64 %.sroa.0551.0.copyload, ptr %i.al, align 8
  %.sroa.0550.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store i64 %spec.select, ptr %.sroa.0550.sroa.2.0..sroa_idx, align 8
  %.sroa.0550.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 648 ; 2 uses
  store i64 %spec.select568, ptr %.sroa.0550.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 656 ; 2 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 664 ; 2 uses
  store i64 %.sink12.i7.i, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.fh = icmp eq i64 %.sink12.i7.i, 0
  br i1 %i.fh, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXss_CsjcToxTEWQ5H_8smallvecINtB6_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtBM_5ScopeB1D_EECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 49
  %.sroa.12195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 57
  %.sroa.13196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 61
  %.sroa.4351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %.sroa.5352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %.sroa.4364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 49
  %.sroa.12206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 57
  %.sroa.13207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 61
  %.sroa.4366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.sroa.5367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 49
  %.sroa.12217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 57
  %.sroa.13218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 61
  %.sroa.4369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.5370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %.sroa.4374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.4378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.4382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.4220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 49
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 50
  %.sroa.12228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 57
  %.sroa.13229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 61
  %.sroa.4384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %.sroa.5385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 3 uses
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.z:                                             ; preds = %._crit_edge, %.critedge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ga = load i8, ptr %i.fz, align 1, !range !19, !noundef !14
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.bg, label %bb.bf

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.gc = phi i64 [ %.sink12.i7.i, %.lr.ph ], [ %i.gd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %i.gd = add i64 %i.gc, -1                       ; 4 uses
  store i64 %i.gd, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ge = load i64, ptr %.sroa.0550.sroa.4.0..sroa_idx, align 8, !alias.scope !11395, !noalias !11396, !noundef !14
  %i.gf = icmp ugt i64 %i.ge, 16
  %i.gg = load ptr, ptr %.sroa.0550.sroa.3.0..sroa_idx, align 8, !nonnull !14
  %.sink13.i = select i1 %i.gf, ptr %i.gg, ptr %.sroa.0550.sroa.2.0..sroa_idx
  %i.gh = getelementptr inbounds nuw [40 x i8], ptr %.sink13.i, i64 %i.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.gh, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %.val = load ptr, ptr %i.fi, align 8, !nonnull !14, !noundef !14
  %i.gi = load ptr, ptr %.val, align 8, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !nonnull !14, !noundef !14
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gm = load i64, ptr %i.gl, align 8, !noundef !14
  store i8 %i.dl, ptr %i.fj, align 8
  store i64 0, ptr %.sroa.4187.0..sroa_idx, align 1
  store i32 255, ptr %.sroa.12195.0..sroa_idx, align 1
  store i32 255, ptr %.sroa.13196.0..sroa_idx, align 1
  store i64 -1, ptr %i.ai, align 8
  store ptr %i.gk, ptr %.sroa.4351.0..sroa_idx, align 8
  store i64 %i.gm, ptr %.sroa.5352.0..sroa_idx, align 8
  store i64 -3, ptr %i.fk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.ai, ptr %i.ah, align 8
  store ptr @_RNvXs4_NtCsimqtg22L1SV_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4364.0..sroa_idx, align 8
  %i.gn = call noundef zeroext i1 @_RNvMs_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @306, ptr noundef nonnull %i.ah) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br i1 %i.gn, label %bb.aa, label %bb.ad

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry13ScopeFromRootNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(672) %i.al) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.go = load ptr, ptr %2, align 8, !nonnull !14, !noundef !14
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !nonnull !14, !align !27, !noundef !14
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !invariant.load !14, !nonnull !14
  %i.gt = call noundef zeroext i1 %i.gs(ptr noundef nonnull %i.go, i32 noundef 32) #35
  br i1 %i.gt, label %bb.be, label %bb.z

bb.aa:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !11397)
  %.val.i = load i64, ptr %i.ai, align 8, !range !24, !alias.scope !11397, !noundef !14 ; 2 uses
  %i.gu = icmp sgt i64 %.val.i, 0
  br i1 %i.gu, label %bb.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.ab:                                            ; preds = %bb.aa
  %.val1.i = load ptr, ptr %.sroa.4351.0..sroa_idx, align 8, !alias.scope !11397, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !11398
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.ab, %bb.aa
  %.val2.i = load i64, ptr %i.fk, align 8, !range !45, !alias.scope !11397, !noundef !14 ; 2 uses
  %i.gv = icmp sgt i64 %.val2.i, 0
  br i1 %i.gv, label %bb.ac, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.val3.i = load ptr, ptr %i.fl, align 8, !alias.scope !11397, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !11399
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions10ExtensionsECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.ad:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !11400)
  %.val.i454 = load i64, ptr %i.ai, align 8, !range !24, !alias.scope !11400, !noundef !14 ; 2 uses
  %i.gw = icmp sgt i64 %.val.i454, 0
  br i1 %i.gw, label %bb.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i455

bb.ae:                                            ; preds = %bb.ad
  %.val1.i458 = load ptr, ptr %.sroa.4351.0..sroa_idx, align 8, !alias.scope !11400, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i458, i64 noundef %.val.i454, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !11401
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i455

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i455: ; preds = %bb.ae, %bb.ad
  %.val2.i456 = load i64, ptr %i.fk, align 8, !range !45, !alias.scope !11400, !noundef !14 ; 2 uses
  %i.gx = icmp sgt i64 %.val2.i456, 0
  br i1 %i.gx, label %bb.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit459

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i455
  %.val3.i457 = load ptr, ptr %i.fl, align 8, !alias.scope !11400, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i457, i64 noundef %.val2.i456, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !11402
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit459

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit459: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsat9HgdBb3qc_16shadowsocks_rust.exit.i455, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.gy = call { ptr, ptr } @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData10extensions(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi) #30 ; 2 uses
  %i.gz = extractvalue { ptr, ptr } %i.gy, 0      ; 3 uses
  %i.ha = extractvalue { ptr, ptr } %i.gy, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !11403)
  call void @llvm.experimental.noalias.scope.decl(metadata !11404)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !11405, !noalias !11406, !noundef !14
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner3getINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1y_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit459
  call void @llvm.experimental.noalias.scope.decl(metadata !11407)
  call void @llvm.experimental.noalias.scope.decl(metadata !11408)
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !11409, !noalias !11410, !noundef !14 ; 2 uses
  %i.hg = load ptr, ptr %i.gz, align 8, !alias.scope !11409, !noalias !11410, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.ag ], [ %i.hx, %bb.aj ]
  %.pn.i.i.i = phi i64 [ 4929995443823542074, %bb.ag ], [ %i.hy, %bb.aj ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.hf ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.hh, align 1, !noalias !11411 ; 2 uses
  %i.hi = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 34)
  %i.hj = bitcast <16 x i1> %i.hi to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.hj, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ah, %bb.ai
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.hw, %bb.ai ], [ %i.hj, %bb.ah ] ; 3 uses
  %i.hk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.hl = zext nneg i16 %i.hk to i64
  %i.hm = add i64 %.sroa.01.0.i.i.i.i, %i.hl
  %i.hn = and i64 %i.hm, %i.hf
  %i.ho = sub nsw i64 0, %i.hn
  %i.hp = getelementptr inbounds [32 x i8], ptr %i.hg, i64 %i.ho ; 3 uses
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -32
  %.val2.i.i.i.i = load i128, ptr %i.hq, align 8, !noalias !11412
  %i.hr = icmp eq i128 %.val2.i.i.i.i, 90942364236767015451608553362907401699
  br i1 %i.hr, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.ai, !prof !20

._crit_edge.i.i.i:                                ; preds = %bb.ai, %bb.ah
  %i.hs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ht = bitcast <16 x i1> %i.hs to i16
  %i.hu = icmp eq i16 %i.ht, 0
  br i1 %i.hu, label %bb.aj, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner3getINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1y_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, !prof !23

bb.ai:                                            ; preds = %.lr.ph.i.i.i
  %i.hv = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.hw = and i16 %i.hv, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.hw, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  %i.hx = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.hy = add i64 %.sroa.01.0.i.i.i.i, %i.hx
  br label %bb.ah

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %.lr.ph.i.i.i
  %i.hz = getelementptr inbounds i8, ptr %i.hp, i64 -16
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !11403, !nonnull !14, !noundef !14 ; 3 uses
  %i.ib = getelementptr inbounds i8, ptr %i.hp, i64 -8
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !11403, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11403
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8, !invariant.load !14, !noalias !11403, !nonnull !14
  call void %i.ie(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull %i.ia) #35, !noalias !11403, !inline_history !4
  %i.if = load i128, ptr %i.f, align 16, !noalias !11403, !noundef !14
  %i.ig = icmp eq i128 %i.if, 90942364236767015451608553362907401699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11403
  br i1 %i.ig, label %bb.ak, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner3getINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1y_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.ak:                                            ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  store ptr %i.ia, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ag, ptr %i.af, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !noundef !14 ; 2 uses
  %i.ij = icmp sgt i64 %i.ii, -1
  call void @llvm.assume(i1 %i.ij)
  %i.ik = icmp eq i64 %i.ii, 0
  br i1 %i.ik, label %bb.am, label %bb.al

_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner3getINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1y_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread: ; preds = %._crit_edge.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsimqtg22L1SV_12nu_ansi_term7display17AnsiGenericStringeEECsat9HgdBb3qc_16shadowsocks_rust.exit459, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 0, ptr %i.fu, align 8
  store i8 %i.cw, ptr %.sroa.4220.0..sroa_idx, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %.sroa.5221.0..sroa_idx, i8 0, i64 7, i1 false)
  store i32 255, ptr %.sroa.12228.0..sroa_idx, align 1
  store i32 255, ptr %.sroa.13229.0..sroa_idx, align 1
  store i64 -1, ptr %i.ab, align 8
  store ptr @188, ptr %.sroa.4384.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.5385.0..sroa_idx, align 8
  store i64 -3, ptr %i.fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ab, ptr %i.aa, align 8
  store ptr @_RNvXs4_NtCsimqtg22L1SV_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4389.0..sroa_idx, align 8
  %i.il = call noundef zeroext i1 @_RNvMs_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @306, ptr noundef nonnull %i.aa) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br i1 %i.il, label %bb.av, label %bb.ay

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 %i.dl, ptr %i.fm, align 8
  store i64 0, ptr %.sroa.4198.0..sroa_idx, align 1
  store i32 255, ptr %.sroa.12206.0..sroa_idx, align 1
  store i32 255, ptr %.sroa.13207.0..sroa_idx, align 1
  store i64 -1, ptr %i.ae, align 8
  store ptr @718, ptr %.sroa.4366.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.5367.0..sroa_idx, align 8
  store i64 -3, ptr %i.fn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 %i.dl, ptr %i.fo, align 8
end_hunk_6
begin_hunk_7_@_RNvXsu_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermENtB5_16TypedValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust:bb.a
bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #34, !noalias !15646
  unreachable

_RNCNvXsu_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsermENtB7_16TypedValueParser9parse_refs1_0Csat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.ab
  store i8 %.sroa.5.0.ph, ptr %i.db, align 1, !noalias !15646
  %i.dd = call fastcc noundef nonnull align 8 ptr @_RNvMNtCslDQ48jUgq5Q_12clap_builder5errorNtB2_5Error16value_validationCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @245) #30, !noalias !15646 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15646
  %i.de = call fastcc noundef nonnull align 8 ptr @_RNvMNtCslDQ48jUgq5Q_12clap_builder5errorNtB2_5Error8with_cmdCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias noundef nonnull align 8 %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2) #30, !noalias !15646 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bh

_RNvMsr_NtCsf3Ta7LF998c_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.j, %bb.k, %bb.o, %bb.p, %.preheader.i, %.preheader114.i
  %.sroa.1659.0 = phi i64 [ %i.cj, %bb.p ], [ %i.bm, %bb.k ], [ %i.ca, %bb.o ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.bd, %bb.j ] ; 8 uses
  store i64 %.sroa.1659.0, ptr %i.ab, align 8
  %i.df = load i64, ptr %1, align 8, !range !32, !alias.scope !15651, !noundef !14 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  switch i64 %i.df, label %default.unreachable [
    i64 0, label %.split.i
    i64 1, label %bb.ad
    i64 2, label %bb.ae
  ]

default.unreachable:                              ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %.split, %bb.ae, %_RNvMsr_NtCsf3Ta7LF998c_4core3numx27from_ascii_bytes_radix_impl.exit
  unreachable

.split.i:                                         ; preds = %_RNvMsr_NtCsf3Ta7LF998c_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !15652, !noalias !15653, !noundef !14
  %.not.i33 = icmp sgt i64 %i.dh, %.sroa.1659.0
  br i1 %.not.i33, label %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %bb.ae

bb.ad:                                            ; preds = %_RNvMsr_NtCsf3Ta7LF998c_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.di = load i64, ptr %i.dg, align 8, !alias.scope !15654, !noalias !15655, !noundef !14
  %i.dj = icmp slt i64 %i.di, %.sroa.1659.0
  br i1 %i.dj, label %bb.ae, label %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.ae:                                            ; preds = %bb.ad, %.split.i, %_RNvMsr_NtCsf3Ta7LF998c_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !range !32, !alias.scope !15656, !noundef !14
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  switch i64 %i.dl, label %default.unreachable [
    i64 0, label %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit
    i64 1, label %.split81
    i64 2, label %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit.thread79
  ]

.split81:                                         ; preds = %bb.ae
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !15657, !noalias !15658, !noundef !14
  %i.do = icmp slt i64 %.sroa.1659.0, %i.dn
  br i1 %i.do, label %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit.thread79, label %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.ae
  %i.dp = load i64, ptr %i.dm, align 8, !alias.scope !15659, !noalias !15660, !noundef !14
  %.not94 = icmp sgt i64 %.sroa.1659.0, %i.dp
  br i1 %.not94, label %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit.thread79

_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit.thread: ; preds = %.split.i, %bb.ad, %.split81, %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.ah, label %bb.af

_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit.thread79: ; preds = %bb.ae, %.split81, %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.dq = icmp slt i64 %.sroa.1659.0, 0
  %i.dr = icmp samesign ugt i64 %.sroa.1659.0, 4294967295
  %i.ds = shl nuw i64 %.sroa.1659.0, 32
  %spec.select.i = select i1 %i.dr, i64 513, i64 %i.ds
  %.sroa.4.0.insert.insert.i = select i1 %i.dq, i64 769, i64 %spec.select.i ; 3 uses
  %i.dt = trunc i64 %.sroa.4.0.insert.insert.i to i1
  br i1 %i.dt, label %bb.bi, label %bb.bw

bb.af:                                            ; preds = %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15661
  store i64 0, ptr %i.m, align 8, !noalias !15661
  %.sroa.4.0..sroa_idx.i.i34 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i34, align 8, !noalias !15661
  %.sroa.5.0..sroa_idx.i.i35 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i35, align 8, !noalias !15661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15661
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1610612768, ptr %i.du, align 8, !noalias !15661
  store ptr %i.m, ptr %i.l, align 8, !noalias !15661
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @748, ptr %i.dv, align 8, !noalias !15661
  %i.dw = call noundef zeroext i1 @_RNvXs9_NtNtCslDQ48jUgq5Q_12clap_builder7builder3argNtB5_3ArgNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #30, !noalias !15662
  br i1 %i.dw, label %bb.ag, label %_RNCNvXsu_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsermENtB7_16TypedValueParser9parse_ref0Csat9HgdBb3qc_16shadowsocks_rust.exit, !prof !23

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @749, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @266, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @751) #37, !noalias !15662
  unreachable

_RNCNvXsu_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsermENtB7_16TypedValueParser9parse_ref0Csat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15661
  br label %bb.aj

bb.ah:                                            ; preds = %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsat9HgdBb3qc_16shadowsocks_rust.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15663)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !15664
  %i.dx = tail call noundef dereferenceable_or_null(3) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 3, i64 noundef range(i64 1, 17) 1) #30, !noalias !15664 ; 3 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ai, label %_RNCNvXsu_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsermENtB7_16TypedValueParser9parse_refs_0Csat9HgdBb3qc_16shadowsocks_rust.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #34, !noalias !15663
  unreachable

_RNCNvXsu_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsermENtB7_16TypedValueParser9parse_refs_0Csat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dx, i8 46, i64 3, i1 false), !noalias !15663
  store i64 3, ptr %i.aa, align 8, !alias.scope !15663
  %.sroa.4.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.dx, ptr %.sroa.4.0..sroa_idx.i37, align 8, !alias.scope !15663
  %.sroa.6.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i38, align 8, !alias.scope !15663
  br label %bb.aj

bb.aj:                                            ; preds = %_RNCNvXsu_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsermENtB7_16TypedValueParser9parse_refs_0Csat9HgdBb3qc_16shadowsocks_rust.exit, %_RNCNvXsu_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParsermENtB7_16TypedValueParser9parse_ref0Csat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #30
  %i.dz = load i64, ptr %i.y, align 8, !range !24, !noundef !14
  %.not28 = icmp eq i64 %i.dz, -1
  br i1 %.not28, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  br label %.split

bb.al:                                            ; preds = %bb.aj
  %i.ea = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !14, !noundef !14
  %i.ec = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !14 ; 7 uses
  %.not.i39 = icmp slt i64 %i.ed, 0
  br i1 %.not.i39, label %bb.ao, label %bb.am, !prof !39

bb.am:                                            ; preds = %bb.al
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread87, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !15665
  %i.ef = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ed, i64 noundef range(i64 1, 17) 1) #30, !noalias !15665 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.al, %bb.an
  %.sroa.4.0.ph = phi i64 [ 1, %bb.an ], [ 0, %bb.al ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.ed) #34
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread87: ; preds = %bb.am, %bb.ap
  %i.eh = phi ptr [ %i.ef, %bb.ap ], [ inttoptr (i64 1 to ptr), %bb.am ]
  store i64 %i.ed, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.eh, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.ed, ptr %.sroa.611.0..sroa_idx, align 8
  br label %.split

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull align 1 %i.eb, i64 %i.ed, i1 false)
  br label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread87

.split:                                           ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread87, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !15666)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15667
  switch i64 %i.df, label %default.unreachable [
    i64 0, label %bb.aq
    i64 1, label %bb.ar
    i64 2, label %bb.as
  ]

bb.aq:                                            ; preds = %.split
  %i.ei = load i64, ptr %i.dg, align 8, !alias.scope !15666, !noalias !15668, !noundef !14
  br label %bb.as

bb.ar:                                            ; preds = %.split
  %i.ej = load i64, ptr %i.dg, align 8, !alias.scope !15666, !noalias !15668, !noundef !14
  %i.ek = call i64 @llvm.sadd.sat.i64(i64 %i.ej, i64 1)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.split
  %.sink.i41 = phi i64 [ %i.ei, %bb.aq ], [ %i.ek, %bb.ar ], [ -9223372036854775808, %.split ]
  call fastcc void @_RNvXs1M_NtCsgCecv3eZDcN_5alloc6stringxNtB6_12SpecToString14spec_to_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, i64 %.sink.i41) #35, !noalias !15667
  call void @llvm.experimental.noalias.scope.decl(metadata !15669)
  %i.el = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 10 uses
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !15670, !noalias !15667, !noundef !14 ; 3 uses
  %i.en = load i64, ptr %i.k, align 8, !range !16, !alias.scope !15670, !noalias !15667, !noundef !14
  %i.eo = sub i64 %i.en, %i.em
  %i.ep = icmp ult i64 %i.eo, 2
  br i1 %i.ep, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !23

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i: ; preds = %bb.as
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.em, i64 noundef 2, i64 noundef 1, i64 noundef 1) #30, !noalias !15667
  %i.eq = load i64, ptr %i.el, align 8, !alias.scope !15669, !noalias !15667, !noundef !14
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i, %bb.as
  %.sink39.i = phi i64 [ %i.eq, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i ], [ %i.em, %bb.as ] ; 4 uses
  %i.er = icmp sgt i64 %.sink39.i, -1
  call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !15669, !noalias !15667, !nonnull !14, !noundef !14 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %.sink39.i
  store i16 11822, ptr %i.eu, align 1, !noalias !15671
  %i.ev = add nuw i64 %.sink39.i, 2               ; 15 uses
  store i64 %i.ev, ptr %i.el, align 8, !alias.scope !15669, !noalias !15667
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !range !32, !alias.scope !15666, !noalias !15668, !noundef !14
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  switch i64 %i.ex, label %default.unreachable [
    i64 0, label %bb.at
    i64 1, label %bb.ax
    i64 2, label %bb.ba
  ]

bb.at:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !15666, !noalias !15668, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !15672)
  %i.fa = icmp sgt i64 %i.ev, -1
  call void @llvm.assume(i1 %i.fa)
  %i.fb = load i64, ptr %i.k, align 8, !range !16, !alias.scope !15673, !noalias !15667, !noundef !14 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, %i.ev
  br i1 %i.fc, label %bb.au, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit.i, !prof !23

bb.au:                                            ; preds = %bb.at
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ev, i64 noundef 1, i64 noundef 1, i64 noundef 1) #30, !noalias !15667
  %.pre28.i = load ptr, ptr %i.es, align 8, !alias.scope !15672, !noalias !15667
  %.pre29.i = load i64, ptr %i.k, align 8, !range !16, !alias.scope !15674, !noalias !15667
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit.i

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit.i: ; preds = %bb.au, %bb.at
  %i.fd = phi i64 [ %i.fb, %bb.at ], [ %.pre29.i, %bb.au ]
  %i.fe = phi ptr [ %i.et, %bb.at ], [ %.pre28.i, %bb.au ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ev
  store i8 61, ptr %i.ff, align 1, !noalias !15675
  %i.fg = add nuw i64 %.sink39.i, 3               ; 6 uses
  store i64 %i.fg, ptr %i.el, align 8, !alias.scope !15672, !noalias !15667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15667
  call fastcc void @_RNvXs1M_NtCsgCecv3eZDcN_5alloc6stringxNtB6_12SpecToString14spec_to_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, i64 %i.ez) #35, !noalias !15667
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !15667, !nonnull !14, !noundef !14 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !noalias !15667, !noundef !14 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15676)
  %i.fl = sub i64 %i.fd, %i.fg
  %i.fm = icmp ugt i64 %i.fk, %i.fl
  br i1 %i.fm, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i8.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i, !prof !23

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i8.i: ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit.i
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.fg, i64 noundef %i.fk, i64 noundef 1, i64 noundef 1) #30, !noalias !15667
  %i.fn = load i64, ptr %i.el, align 8, !alias.scope !15676, !noalias !15667, !noundef !14 ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, -1
  call void @llvm.assume(i1 %i.fo)
  %.pre30.i = load ptr, ptr %i.es, align 8, !alias.scope !15676, !noalias !15667
  br label %bb.av

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i: ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit.i
  %i.fp = icmp sgt i64 %i.fg, -1
  call void @llvm.assume(i1 %i.fp)
  %.not.i.i42 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i42, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit9.i, label %bb.av

bb.av:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i8.i
  %i.fq = phi ptr [ %.pre30.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i8.i ], [ %i.fe, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i ]
  %i.fr = phi i64 [ %i.fn, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i8.i ], [ %i.fg, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull readonly align 1 %i.fi, i64 %i.fk, i1 false), !noalias !15677
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit9.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit9.i: ; preds = %bb.av, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i
  %i.ft = phi i64 [ %i.fr, %bb.av ], [ %i.fg, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i7.i ]
  %i.fu = add i64 %i.ft, %i.fk
  store i64 %i.fu, ptr %i.el, align 8, !alias.scope !15676, !noalias !15667
  call void @llvm.experimental.noalias.scope.decl(metadata !15678)
  call void @llvm.experimental.noalias.scope.decl(metadata !15679)
  %.val.i.i.i = load i64, ptr %i.j, align 8, !range !16, !alias.scope !15680, !noalias !15667, !noundef !14 ; 2 uses
  %i.fv = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.fv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit9.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fi, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !15681
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.aw, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15667
  br label %_RNvMst_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermE13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.ax:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.fw = load i64, ptr %i.ey, align 8, !alias.scope !15666, !noalias !15668, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15667
  call fastcc void @_RNvXs1M_NtCsgCecv3eZDcN_5alloc6stringxNtB6_12SpecToString14spec_to_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, i64 %i.fw) #35, !noalias !15667
  %i.fx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !15667, !nonnull !14, !noundef !14 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !15667, !noundef !14 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15682)
  %i.gb = load i64, ptr %i.k, align 8, !range !16, !alias.scope !15683, !noalias !15667, !noundef !14
  %i.gc = sub i64 %i.gb, %i.ev
  %i.gd = icmp ugt i64 %i.ga, %i.gc
  br i1 %i.gd, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i12.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i10.i, !prof !23

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i12.i: ; preds = %bb.ax
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ev, i64 noundef %i.ga, i64 noundef 1, i64 noundef 1) #30, !noalias !15667
  %i.ge = load i64, ptr %i.el, align 8, !alias.scope !15682, !noalias !15667, !noundef !14 ; 2 uses
  %i.gf = icmp sgt i64 %i.ge, -1
  call void @llvm.assume(i1 %i.gf)
  %.pre27.i = load ptr, ptr %i.es, align 8, !alias.scope !15682, !noalias !15667
  br label %bb.ay

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i10.i: ; preds = %bb.ax
  %i.gg = icmp sgt i64 %i.ev, -1
  call void @llvm.assume(i1 %i.gg)
  %.not.i11.i = icmp eq i64 %i.ga, 0
  br i1 %.not.i11.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit13.i, label %bb.ay

bb.ay:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i10.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i12.i
  %i.gh = phi ptr [ %.pre27.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i12.i ], [ %i.et, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i10.i ]
  %i.gi = phi i64 [ %i.ge, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i12.i ], [ %i.ev, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i10.i ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr nonnull readonly align 1 %i.fy, i64 %i.ga, i1 false), !noalias !15684
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit13.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit13.i: ; preds = %bb.ay, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i10.i
  %i.gk = phi i64 [ %i.gi, %bb.ay ], [ %i.ev, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i10.i ]
  %i.gl = add i64 %i.gk, %i.ga
  store i64 %i.gl, ptr %i.el, align 8, !alias.scope !15682, !noalias !15667
  call void @llvm.experimental.noalias.scope.decl(metadata !15685)
  call void @llvm.experimental.noalias.scope.decl(metadata !15686)
  %.val.i.i14.i = load i64, ptr %i.i, align 8, !range !16, !alias.scope !15687, !noalias !15667, !noundef !14 ; 2 uses
  %i.gm = icmp eq i64 %.val.i.i14.i, 0
  br i1 %i.gm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit16.i, label %bb.az

bb.az:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit13.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fy, i64 noundef %.val.i.i14.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !15688
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit16.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit16.i: ; preds = %bb.az, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15667
  br label %_RNvMst_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermE13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.ba:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15689
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !15689
  %i.gn = call noundef dereferenceable_or_null(19) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 19, i64 noundef range(i64 1, 9) 1) #30, !noalias !15690 ; 4 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.bb, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 19) #34, !noalias !15689
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.ba
  store i64 19, ptr %i.b, align 8, !noalias !15689
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.gn, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !15689
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !15689
  %i.gp = call { ptr, i64 } @_RNvMsf_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impy4__fmt(i64 noundef 9223372036854775807, ptr noalias nofree noundef nonnull %i.c, i64 noundef 19) #30, !noalias !15689 ; 2 uses
  %i.gq = extractvalue { ptr, i64 } %i.gp, 0      ; 2 uses
  %i.gr = extractvalue { ptr, i64 } %i.gp, 1      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gq) ], !noalias !15667
  call void @llvm.experimental.noalias.scope.decl(metadata !15691), !noalias !15667
  %i.gs = icmp ugt i64 %i.gr, 19
  br i1 %i.gs, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i57, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, !prof !23

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i57: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.gr, i64 noundef 1, i64 noundef 1) #30, !noalias !15689
  %i.gt = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !15691, !noalias !15689, !noundef !14 ; 2 uses
  %i.gu = icmp sgt i64 %i.gt, -1
  call void @llvm.assume(i1 %i.gu), !noalias !15667
  %.pre.i58 = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !15691, !noalias !15689
  %.sroa.069.0.copyload.pre.pre = load i64, ptr %i.b, align 8, !noalias !15667
  br label %bb.bc

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.not.i.i55 = icmp eq i64 %i.gr, 0
  br i1 %.not.i.i55, label %_RNvXs1M_NtCsgCecv3eZDcN_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit, label %bb.bc

bb.bc:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i57
  %.sroa.069.0.copyload.pre = phi i64 [ %.sroa.069.0.copyload.pre.pre, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i57 ], [ 19, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ]
  %i.gv = phi ptr [ %.pre.i58, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i57 ], [ %i.gn, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 2 uses
  %i.gw = phi i64 [ %i.gt, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i57 ], [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr nonnull readonly align 1 %i.gq, i64 %i.gr, i1 false), !noalias !15692
  br label %_RNvXs1M_NtCsgCecv3eZDcN_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit

_RNvXs1M_NtCsgCecv3eZDcN_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %bb.bc
  %.sroa.470.0.copyload = phi ptr [ %i.gv, %bb.bc ], [ %i.gn, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 2 uses
  %.sroa.069.0.copyload = phi i64 [ %.sroa.069.0.copyload.pre, %bb.bc ], [ 19, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 2 uses
  %i.gy = phi i64 [ %i.gw, %bb.bc ], [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ]
  %i.gz = add i64 %i.gy, %i.gr                    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15689
  call void @llvm.experimental.noalias.scope.decl(metadata !15693)
  %i.ha = load i64, ptr %i.k, align 8, !range !16, !alias.scope !15694, !noalias !15667, !noundef !14
  %i.hb = sub i64 %i.ha, %i.ev
  %i.hc = icmp ugt i64 %i.gz, %i.hb
  br i1 %i.hc, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i19.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i17.i, !prof !23

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i19.i: ; preds = %_RNvXs1M_NtCsgCecv3eZDcN_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ev, i64 noundef %i.gz, i64 noundef 1, i64 noundef 1) #30, !noalias !15667
  %i.hd = load i64, ptr %i.el, align 8, !alias.scope !15693, !noalias !15667, !noundef !14 ; 2 uses
  %i.he = icmp sgt i64 %i.hd, -1
  call void @llvm.assume(i1 %i.he)
  %.pre.i = load ptr, ptr %i.es, align 8, !alias.scope !15693, !noalias !15667
  br label %bb.bd

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i17.i: ; preds = %_RNvXs1M_NtCsgCecv3eZDcN_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit
  %i.hf = icmp sgt i64 %i.ev, -1
  call void @llvm.assume(i1 %i.hf)
  %.not.i18.i = icmp eq i64 %i.gz, 0
  br i1 %.not.i18.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit20.i, label %bb.bd

bb.bd:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i17.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i19.i
  %i.hg = phi ptr [ %.pre.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i19.i ], [ %i.et, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i17.i ]
  %i.hh = phi i64 [ %i.hd, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i19.i ], [ %i.ev, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i17.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hi, ptr nonnull readonly align 1 %.sroa.470.0.copyload, i64 %i.gz, i1 false), !noalias !15695
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit20.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit20.i: ; preds = %bb.bd, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i17.i
  %i.hj = phi i64 [ %i.hh, %bb.bd ], [ %i.ev, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i17.i ]
  %i.hk = add i64 %i.hj, %i.gz
  store i64 %i.hk, ptr %i.el, align 8, !alias.scope !15693, !noalias !15667
  %i.hl = icmp eq i64 %.sroa.069.0.copyload, 0
  br i1 %i.hl, label %_RNvMst_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermE13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.be

bb.be:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit20.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.470.0.copyload, i64 noundef %.sroa.069.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !15696
  br label %_RNvMst_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermE13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMst_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsermE13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit20.i, %bb.be, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit16.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !15666
end_hunk_7
begin_hunk_8_@_RNvXsy_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_16TypedValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust:bb.a
_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.x
  %i.cj = load i64, ptr %i.cg, align 8, !alias.scope !15820, !noalias !15821, !noundef !14
  %.not69 = icmp ugt i64 %.sroa.1243.0, %i.cj
  br i1 %.not69, label %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread55

_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread: ; preds = %.split.i, %bb.w, %.split57, %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.aa, label %bb.y

_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread55: ; preds = %bb.x, %.split57, %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ck = inttoptr i64 %.sroa.1243.0 to ptr
  br label %bb.bs

bb.y:                                             ; preds = %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15822
  store i64 0, ptr %i.j, align 8, !noalias !15822
  %.sroa.4.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i33, align 8, !noalias !15822
  %.sroa.5.0..sroa_idx.i.i34 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i34, align 8, !noalias !15822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15822
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1610612768, ptr %i.cl, align 8, !noalias !15822
  store ptr %i.j, ptr %i.i, align 8, !noalias !15822
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @748, ptr %i.cm, align 8, !noalias !15822
  %i.cn = call noundef zeroext i1 @_RNvXs9_NtNtCslDQ48jUgq5Q_12clap_builder7builder3argNtB5_3ArgNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #30, !noalias !15823
  br i1 %i.cn, label %bb.z, label %_RNCNvXsy_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_ref0Csat9HgdBb3qc_16shadowsocks_rust.exit, !prof !23

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @749, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @266, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @751) #37, !noalias !15823
  unreachable

_RNCNvXsy_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_ref0Csat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15822
  br label %bb.ac

bb.aa:                                            ; preds = %_RINvYTINtNtNtCsf3Ta7LF998c_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15824)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !15825
  %i.co = tail call noundef dereferenceable_or_null(3) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 3, i64 noundef range(i64 1, 17) 1) #30, !noalias !15825 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ab, label %_RNCNvXsy_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_refs_0Csat9HgdBb3qc_16shadowsocks_rust.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #34, !noalias !15824
  unreachable

_RNCNvXsy_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_refs_0Csat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.co, i8 46, i64 3, i1 false), !noalias !15824
  store i64 3, ptr %i.x, align 8, !alias.scope !15824
  %.sroa.4.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.co, ptr %.sroa.4.0..sroa_idx.i36, align 8, !alias.scope !15824
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !15824
  br label %bb.ac

bb.ac:                                            ; preds = %_RNCNvXsy_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_refs_0Csat9HgdBb3qc_16shadowsocks_rust.exit, %_RNCNvXsy_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_ref0Csat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) #30
  %i.cq = load i64, ptr %i.v, align 8, !range !24, !noundef !14
  %.not27 = icmp eq i64 %i.cq, -1
  br i1 %.not27, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  br label %.split

bb.ae:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !14, !noundef !14
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !14 ; 7 uses
  %.not.i38 = icmp slt i64 %i.cu, 0
  br i1 %.not.i38, label %bb.ah, label %bb.af, !prof !39

bb.af:                                            ; preds = %bb.ae
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread63, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !15826
  %i.cw = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cu, i64 noundef range(i64 1, 17) 1) #30, !noalias !15826 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ae, %bb.ag
  %.sroa.4.0.ph = phi i64 [ 1, %bb.ag ], [ 0, %bb.ae ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.cu) #34
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread63: ; preds = %bb.af, %bb.ai
  %i.cy = phi ptr [ %i.cw, %bb.ai ], [ inttoptr (i64 1 to ptr), %bb.af ]
  store i64 %i.cu, ptr %i.w, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.cy, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.cu, ptr %.sroa.614.0..sroa_idx, align 8
  br label %.split

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr nonnull align 1 %i.cs, i64 %i.cu, i1 false)
  br label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread63

.split:                                           ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread63, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !15827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15828
  switch i64 %i.bz, label %default.unreachable [
    i64 0, label %bb.aj
    i64 1, label %bb.am
    i64 2, label %bb.ap
  ]

bb.aj:                                            ; preds = %.split
  %i.cz = load i64, ptr %i.ca, align 8, !alias.scope !15827, !noalias !15829, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15828
  %i.da = call { ptr, i64 } @_RNvMsf_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impy4__fmt(i64 noundef %i.cz, ptr noalias nofree noundef nonnull %i.f, i64 noundef 20) #30, !noalias !15828 ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.da, 0
  %i.dc = extractvalue { ptr, i64 } %i.da, 1      ; 8 uses
  %.not.i.i42 = icmp slt i64 %i.dc, 0
  br i1 %.not.i.i42, label %bb.as, label %bb.ak, !prof !39

bb.ak:                                            ; preds = %bb.aj
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread104.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !15830
  %i.de = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dc, i64 noundef range(i64 1, 17) 1) #30, !noalias !15830 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.as, label %bb.at

bb.am:                                            ; preds = %.split
  %i.dg = load i64, ptr %i.ca, align 8, !alias.scope !15827, !noalias !15829, !noundef !14
  %i.dh = call i64 @llvm.uadd.sat.i64(i64 %i.dg, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15828
  %i.di = call { ptr, i64 } @_RNvMsf_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impy4__fmt(i64 noundef %i.dh, ptr noalias nofree noundef nonnull %i.e, i64 noundef 20) #30, !noalias !15828 ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.di, 0
  %i.dk = extractvalue { ptr, i64 } %i.di, 1      ; 8 uses
  %.not.i26.i = icmp slt i64 %i.dk, 0
  br i1 %.not.i26.i, label %bb.au, label %bb.an, !prof !39

bb.an:                                            ; preds = %bb.am
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit28.thread110.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !15831
  %i.dm = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dk, i64 noundef range(i64 1, 17) 1) #30, !noalias !15831 ; 3 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.au, label %bb.av

bb.ap:                                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15828
  %i.do = call { ptr, i64 } @_RNvMsf_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impy4__fmt(i64 noundef 0, ptr noalias nofree noundef nonnull %i.g, i64 noundef 20) #30, !noalias !15828 ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.do, 0
  %i.dq = extractvalue { ptr, i64 } %i.do, 1      ; 8 uses
  %.not.i29.i = icmp slt i64 %i.dq, 0
  br i1 %.not.i29.i, label %bb.aw, label %bb.aq, !prof !39

bb.aq:                                            ; preds = %bb.ap
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit31.thread116.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !15832
  %i.ds = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dq, i64 noundef range(i64 1, 17) 1) #30, !noalias !15832 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.aw, label %bb.ax

bb.as:                                            ; preds = %bb.al, %bb.aj
  %.sroa.470.0.ph.i = phi i64 [ 1, %bb.al ], [ 0, %bb.aj ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.470.0.ph.i, i64 %i.dc) #34, !noalias !15828
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread104.i: ; preds = %bb.at, %bb.ak
  %i.du = phi ptr [ %i.de, %bb.at ], [ inttoptr (i64 1 to ptr), %bb.ak ]
  store i64 %i.dc, ptr %i.h, align 8, !noalias !15828
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.du, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !15828
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.dc, ptr %.sroa.63.0..sroa_idx.i, align 8, !noalias !15828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15828
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.at:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr align 1 %i.db, i64 %i.dc, i1 false), !noalias !15828
  br label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread104.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit31.thread116.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit28.thread110.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread104.i
  %i.dv = phi i64 [ %i.dq, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit31.thread116.i ], [ %i.dk, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit28.thread110.i ], [ %i.dc, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit.thread104.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15833)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 12 uses
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.dv, i64 noundef 2, i64 noundef 1, i64 noundef 1) #30, !noalias !15828
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !15833, !noalias !15828, !noundef !14 ; 4 uses
  %i.dy = icmp sgt i64 %i.dx, -1
  call void @llvm.assume(i1 %i.dy)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !15833, !noalias !15828 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.dx
  store i16 11822, ptr %i.dz, align 1, !noalias !15834
  %i.ea = add nuw i64 %i.dx, 2                    ; 15 uses
  store i64 %i.ea, ptr %i.dw, align 8, !alias.scope !15833, !noalias !15828
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !range !32, !alias.scope !15827, !noalias !15829, !noundef !14
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  switch i64 %i.ec, label %default.unreachable [
    i64 0, label %bb.ay
    i64 1, label %bb.bc
    i64 2, label %bb.bf
  ]

bb.au:                                            ; preds = %bb.ao, %bb.am
  %.sroa.474.0.ph.i = phi i64 [ 1, %bb.ao ], [ 0, %bb.am ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.474.0.ph.i, i64 %i.dk) #34, !noalias !15828
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit28.thread110.i: ; preds = %bb.av, %bb.an
  %i.ee = phi ptr [ %i.dm, %bb.av ], [ inttoptr (i64 1 to ptr), %bb.an ]
  store i64 %i.dk, ptr %i.h, align 8, !noalias !15828
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ee, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !15828
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.dk, ptr %.sroa.66.0..sroa_idx.i, align 8, !noalias !15828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15828
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.av:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr align 1 %i.dj, i64 %i.dk, i1 false), !noalias !15828
  br label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit28.thread110.i

bb.aw:                                            ; preds = %bb.ar, %bb.ap
  %.sroa.467.0.ph.i = phi i64 [ 1, %bb.ar ], [ 0, %bb.ap ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.467.0.ph.i, i64 %i.dq) #34, !noalias !15828
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit31.thread116.i: ; preds = %bb.ax, %bb.aq
  %i.ef = phi ptr [ %i.ds, %bb.ax ], [ inttoptr (i64 1 to ptr), %bb.aq ]
  store i64 %i.dq, ptr %i.h, align 8, !noalias !15828
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ef, ptr %.sroa.4.0..sroa_idx.i40, align 8, !noalias !15828
  %.sroa.6.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.dq, ptr %.sroa.6.0..sroa_idx.i41, align 8, !noalias !15828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15828
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.ax:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr align 1 %i.dp, i64 %i.dq, i1 false), !noalias !15828
  br label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsat9HgdBb3qc_16shadowsocks_rust.exit31.thread116.i

bb.ay:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.eg = load i64, ptr %i.ed, align 8, !alias.scope !15827, !noalias !15829, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !15835)
  %i.eh = icmp sgt i64 %i.ea, -1
  call void @llvm.assume(i1 %i.eh)
  %i.ei = load i64, ptr %i.h, align 8, !range !16, !alias.scope !15836, !noalias !15828, !noundef !14
  %i.ej = icmp eq i64 %i.ei, %i.ea
  br i1 %i.ej, label %bb.az, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit.i, !prof !23

bb.az:                                            ; preds = %bb.ay
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ea, i64 noundef 1, i64 noundef 1, i64 noundef 1) #30, !noalias !15828
  %.pre83 = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !15835, !noalias !15828
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit.i

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit.i: ; preds = %bb.az, %bb.ay
  %i.ek = phi ptr [ %.pre83, %bb.az ], [ %.pre.i, %bb.ay ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ea
  store i8 61, ptr %i.el, align 1, !noalias !15837
  %i.em = add nuw i64 %i.dx, 3                    ; 7 uses
  store i64 %i.em, ptr %i.dw, align 8, !alias.scope !15835, !noalias !15828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15828
  %i.en = call { ptr, i64 } @_RNvMsf_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impy4__fmt(i64 noundef %i.eg, ptr noalias nofree noundef nonnull %i.b, i64 noundef 20) #30, !noalias !15828 ; 2 uses
  %i.eo = extractvalue { ptr, i64 } %i.en, 0
  %i.ep = extractvalue { ptr, i64 } %i.en, 1      ; 10 uses
  %.not.i33.i = icmp slt i64 %i.ep, 0
  br i1 %.not.i33.i, label %bb.bi, label %bb.ba, !prof !39

bb.ba:                                            ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit.i
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit45.thread.i, label %bb.bb

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit45.thread.i: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15828
  %i.er = icmp sgt i64 %i.em, -1
  call void @llvm.assume(i1 %i.er)
  store i64 %i.em, ptr %i.dw, align 8, !alias.scope !15838, !noalias !15828
  br label %_RNvMsx_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParser13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !15839
  %i.es = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ep, i64 noundef range(i64 1, 17) 1) #30, !noalias !15839 ; 4 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.bi, label %bb.bj

bb.bc:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.eu = load i64, ptr %i.ed, align 8, !alias.scope !15827, !noalias !15829, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15828
  %i.ev = call { ptr, i64 } @_RNvMsf_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impy4__fmt(i64 noundef %i.eu, ptr noalias nofree noundef nonnull %i.c, i64 noundef 20) #30, !noalias !15828 ; 2 uses
  %i.ew = extractvalue { ptr, i64 } %i.ev, 0
  %i.ex = extractvalue { ptr, i64 } %i.ev, 1      ; 10 uses
  %.not.i36.i = icmp slt i64 %i.ex, 0
  br i1 %.not.i36.i, label %bb.bl, label %bb.bd, !prof !39

bb.bd:                                            ; preds = %bb.bc
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit49.thread.i, label %bb.be

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit49.thread.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15828
  %i.ez = icmp sgt i64 %i.ea, -1
  call void @llvm.assume(i1 %i.ez)
  store i64 %i.ea, ptr %i.dw, align 8, !alias.scope !15840, !noalias !15828
  br label %_RNvMsx_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParser13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.be:                                            ; preds = %bb.bd
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !15841
  %i.fa = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ex, i64 noundef range(i64 1, 17) 1) #30, !noalias !15841 ; 4 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.bl, label %bb.bm

bb.bf:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15828
  %i.fc = call { ptr, i64 } @_RNvMsf_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impy4__fmt(i64 noundef -1, ptr noalias nofree noundef nonnull %i.d, i64 noundef 20) #30, !noalias !15828 ; 2 uses
  %i.fd = extractvalue { ptr, i64 } %i.fc, 0
  %i.fe = extractvalue { ptr, i64 } %i.fc, 1      ; 10 uses
  %.not.i39.i = icmp slt i64 %i.fe, 0
  br i1 %.not.i39.i, label %bb.bn, label %bb.bg, !prof !39

bb.bg:                                            ; preds = %bb.bf
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit56.thread.i, label %bb.bh

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit56.thread.i: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15828
  %i.fg = icmp sgt i64 %i.ea, -1
  call void @llvm.assume(i1 %i.fg)
  store i64 %i.ea, ptr %i.dw, align 8, !alias.scope !15842, !noalias !15828
  br label %_RNvMsx_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParser13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !15843
  %i.fh = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fe, i64 noundef range(i64 1, 17) 1) #30, !noalias !15843 ; 4 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.bn, label %bb.bo

bb.bi:                                            ; preds = %bb.bb, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit.i
  %.sroa.486.0.ph.i = phi i64 [ 1, %bb.bb ], [ 0, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit.i ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.486.0.ph.i, i64 %i.ep) #34, !noalias !15828
  unreachable

bb.bj:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.es, ptr align 1 %i.eo, i64 %i.ep, i1 false), !noalias !15828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15828
  call void @llvm.experimental.noalias.scope.decl(metadata !15838)
  %i.fj = load i64, ptr %i.h, align 8, !range !16, !alias.scope !15844, !noalias !15828, !noundef !14
  %i.fk = sub i64 %i.fj, %i.em
  %i.fl = icmp ugt i64 %i.ep, %i.fk
  br i1 %i.fl, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i44.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i42.i, !prof !15845

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i44.i: ; preds = %bb.bj
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.em, i64 noundef %i.ep, i64 noundef 1, i64 noundef 1) #30, !noalias !15828
  %i.fm = load i64, ptr %i.dw, align 8, !alias.scope !15838, !noalias !15828, !noundef !14 ; 2 uses
  %i.fn = icmp sgt i64 %i.fm, -1
  call void @llvm.assume(i1 %i.fn)
  %.pre196.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !15838, !noalias !15828
  br label %bb.bk

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i42.i: ; preds = %bb.bj
  %i.fo = icmp sgt i64 %i.em, -1
  call void @llvm.assume(i1 %i.fo)
  br label %bb.bk

bb.bk:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i42.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i44.i
  %i.fp = phi ptr [ %.pre196.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i44.i ], [ %i.ek, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i42.i ]
  %i.fq = phi i64 [ %i.fm, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i44.i ], [ %i.em, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i42.i ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr nonnull readonly align 1 %i.es, i64 %i.ep, i1 false), !noalias !15846
  %i.fs = add nuw i64 %i.fq, %i.ep
  store i64 %i.fs, ptr %i.dw, align 8, !alias.scope !15838, !noalias !15828
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.es, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !15847
  br label %_RNvMsx_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParser13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.bl:                                            ; preds = %bb.be, %bb.bc
  %.sroa.482.0.ph.i = phi i64 [ 1, %bb.be ], [ 0, %bb.bc ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.482.0.ph.i, i64 %i.ex) #34, !noalias !15828
  unreachable

bb.bm:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr align 1 %i.ew, i64 %i.ex, i1 false), !noalias !15828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15828
  call void @llvm.experimental.noalias.scope.decl(metadata !15840)
  %i.ft = load i64, ptr %i.h, align 8, !range !16, !alias.scope !15848, !noalias !15828, !noundef !14
  %i.fu = sub i64 %i.ft, %i.ea
  %i.fv = icmp ugt i64 %i.ex, %i.fu
  br i1 %i.fv, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i48.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i46.i, !prof !15845

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i48.i: ; preds = %bb.bm
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ea, i64 noundef %i.ex, i64 noundef 1, i64 noundef 1) #30, !noalias !15828
  %i.fw = load i64, ptr %i.dw, align 8, !alias.scope !15840, !noalias !15828, !noundef !14
  %.pre82 = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !15840, !noalias !15828
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i46.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i46.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i48.i, %bb.bm
  %i.fx = phi ptr [ %.pre82, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i48.i ], [ %.pre.i, %bb.bm ]
  %.sink210.i = phi i64 [ %i.fw, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i48.i ], [ %i.ea, %bb.bm ] ; 3 uses
  %i.fy = icmp sgt i64 %.sink210.i, -1
  call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sink210.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fz, ptr nonnull readonly align 1 %i.fa, i64 %i.ex, i1 false), !noalias !15849
  %i.ga = add nuw i64 %.sink210.i, %i.ex
  store i64 %i.ga, ptr %i.dw, align 8, !alias.scope !15840, !noalias !15828
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fa, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !15850
  br label %_RNvMsx_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParser13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.bn:                                            ; preds = %bb.bh, %bb.bf
  %.sroa.478.0.ph.i = phi i64 [ 1, %bb.bh ], [ 0, %bb.bf ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.478.0.ph.i, i64 %i.fe) #34, !noalias !15828
  unreachable

bb.bo:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr align 1 %i.fd, i64 %i.fe, i1 false), !noalias !15828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15828
  call void @llvm.experimental.noalias.scope.decl(metadata !15842)
  %i.gb = load i64, ptr %i.h, align 8, !range !16, !alias.scope !15851, !noalias !15828, !noundef !14
  %i.gc = sub i64 %i.gb, %i.ea
  %i.gd = icmp ugt i64 %i.fe, %i.gc
  br i1 %i.gd, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i55.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i53.i, !prof !15845

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i55.i: ; preds = %bb.bo
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ea, i64 noundef %i.fe, i64 noundef 1, i64 noundef 1) #30, !noalias !15828
  %i.ge = load i64, ptr %i.dw, align 8, !alias.scope !15842, !noalias !15828, !noundef !14
  %.pre = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !15842, !noalias !15828
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i53.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i53.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i55.i, %bb.bo
  %i.gf = phi ptr [ %.pre, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i55.i ], [ %.pre.i, %bb.bo ]
  %.sink211.i = phi i64 [ %i.ge, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i55.i ], [ %i.ea, %bb.bo ] ; 3 uses
  %i.gg = icmp sgt i64 %.sink211.i, -1
  call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sink211.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gh, ptr nonnull readonly align 1 %i.fh, i64 %i.fe, i1 false), !noalias !15852
  %i.gi = add nuw i64 %.sink211.i, %i.fe
  store i64 %i.gi, ptr %i.dw, align 8, !alias.scope !15842, !noalias !15828
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fh, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !15853
  br label %_RNvMsx_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParser13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMsx_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParser13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit45.thread.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit49.thread.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit56.thread.i, %bb.bk, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i46.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i53.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !15827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.y, ptr %i.t, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.gj, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @879, ptr noundef nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !15854)
  call void @llvm.experimental.noalias.scope.decl(metadata !15855)
  %.val.i.i = load i64, ptr %i.u, align 8, !range !16, !alias.scope !15856, !noundef !14 ; 2 uses
  %i.gk = icmp eq i64 %.val.i.i, 0
  br i1 %i.gk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.bp

bb.bp:                                            ; preds = %_RNvMsx_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParser13format_boundsCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.u, i64 8
end_hunk_8
