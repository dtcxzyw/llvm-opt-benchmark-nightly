Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMs1_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB6_13AccessControl14load_from_fileRNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust:bb.a
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.42.0..sroa_idx.i172 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.422.0..sroa_idx.i.i173 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.523.0..sroa_idx.i.i174 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.428.0..sroa_idx.i.i175 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.529.0..sroa_idx.i.i176 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.434.0..sroa_idx.i.i177 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.535.0..sroa_idx.i.i178 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.dq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.422.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.523.0..sroa_idx.i207 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.428.0..sroa_idx.i208 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.529.0..sroa_idx.i209 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.434.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.535.0..sroa_idx.i211 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %.sroa.45.0..sroa_idx.i196 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.422.0..sroa_idx.i.i197 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.523.0..sroa_idx.i.i198 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.428.0..sroa_idx.i.i199 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.529.0..sroa_idx.i.i200 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.434.0..sroa_idx.i.i201 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.535.0..sroa_idx.i.i202 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.42.0..sroa_idx.i189 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.422.0..sroa_idx.i.i190 = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.523.0..sroa_idx.i.i191 = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.428.0..sroa_idx.i.i192 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.529.0..sroa_idx.i.i193 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.434.0..sroa_idx.i.i194 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.535.0..sroa_idx.i.i195 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.h
  %.sroa.027.0.ph = phi ptr [ %i.bc, %bb.h ], [ %.sroa.027.1, %.outer.backedge ] ; 16 uses
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.backedge, %.outer
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !798
  store i64 0, ptr %i.s, align 8, !noalias !798
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !798
  store i64 0, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !798
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  br label %.outer.i.i.i.i.i

.outer.i.i.i.i.i:                                 ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.fn = phi ptr [ %i.hn, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ inttoptr (i64 1 to ptr), %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 6 uses
  %i.fo = phi i64 [ %i.hs, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 9 uses
  %.sroa.01.0.ph.i.i.i.i.i = phi i64 [ %i.hv, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit ]
  br label %bb.i

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
  %i.gn = icmp ult i64 %.sroa.8.025.i.i.i.i.i, 188978561024
  call void @llvm.assume(i1 %i.gn)
  %.mask.i.i.i.i.i = and i64 %.sroa.8.025.i.i.i.i.i, 270582939648
  %i.go = icmp eq i64 %.mask.i.i.i.i.i, 150323855360
  br i1 %i.go, label %bb.o, label %_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

.loopexit64.i.i.i.i.i:                            ; preds = %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread57.i.i.i.i.i
  %i.gp = phi i64 [ %i.fu, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread57.i.i.i.i.i ], [ %i.fq, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %i.gq = phi i64 [ %i.fu, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread57.i.i.i.i.i ], [ %i.fx, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 7 uses
  %i.gr = phi i64 [ 0, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.thread57.i.i.i.i.i ], [ %i.fp, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 %i.gr ; 3 uses
  %i.gt = icmp samesign ult i64 %i.gq, 16
  br i1 %i.gt, label %.preheader.i.i.i.i.i.i, label %bb.l

.preheader.i.i.i.i.i.i:                           ; preds = %.loopexit64.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %i.gu = icmp sgt i64 %i.fo, -1
  call void @llvm.assume(i1 %i.gu)
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.l:                                             ; preds = %.loopexit64.i.i.i.i.i
  %i.gv = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gs, i64 noundef range(i64 0, -9223372036854775808) %i.gq) #30, !noalias !811 ; 2 uses
  %i.gw = extractvalue { i64, i64 } %i.gv, 0
  %i.gx = extractvalue { i64, i64 } %i.gv, 1
  %i.gy = trunc nuw i64 %i.gw to i1
  br i1 %i.gy, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.m
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.hc, %bb.m ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.ha = load i8, ptr %i.gz, align 1, !alias.scope !812, !noalias !811, !noundef !14
  %i.hb = icmp eq i8 %i.ha, 10
  br i1 %i.hb, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.hc = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.hc, %i.gq
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.l
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.gx, %bb.l ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.hd = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.gq
  call void @llvm.assume(i1 %i.hd)
  %i.he = add nuw nsw i64 %.sroa.5.0.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i: ; preds = %bb.m, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %bb.l
  %i.hf = phi i1 [ true, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ false, %bb.l ], [ false, %bb.m ]
  %.sroa.6.0.i.i.i.i.i = phi i64 [ %i.he, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ %i.gq, %bb.l ], [ %i.gq, %bb.m ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.hg = load i64, ptr %i.s, align 8, !range !16, !alias.scope !814, !noalias !815, !noundef !14
  %i.hh = sub i64 %i.hg, %i.fo
  %i.hi = icmp ugt i64 %.sroa.6.0.i.i.i.i.i, %i.hh
  br i1 %i.hi, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !816

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.fo, i64 noundef %.sroa.6.0.i.i.i.i.i, i64 noundef 1, i64 noundef 1) #30, !noalias !817
  %i.hj = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !818, !noalias !815, !noundef !14
  %.pre.i = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !818, !noalias !815
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i
  %i.hk = phi ptr [ %.pre.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i ], [ %i.fn, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i ] ; 2 uses
  %.sink78.i.i.i.i.i = phi i64 [ %i.hj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i ], [ %i.fo, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.hl = icmp sgt i64 %.sink78.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.sink78.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hm, ptr nonnull readonly align 1 %i.gs, i64 %.sroa.6.0.i.i.i.i.i, i1 false), !noalias !819
  %.pre.i.i.i.i = load i64, ptr %.sroa.3234.0..sroa_idx, align 8, !alias.scope !820, !noalias !811
  %.pre27.i.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !820, !noalias !811
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i
  %i.hn = phi ptr [ %i.hk, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ %i.fn, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ] ; 2 uses
  %i.ho = phi i64 [ %.pre27.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ %i.gp, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ]
  %i.hp = phi i64 [ %.pre.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ %i.gr, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ]
  %.sroa.6.060.i.i.i.i.i = phi i64 [ %.sroa.6.0.i.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ] ; 4 uses
  %i.hq = phi i1 [ %i.hf, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ false, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ]
  %i.hr = phi i64 [ %.sink78.i.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ %i.fo, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.thread.i.i.i.i.i ]
  %i.hs = add i64 %i.hr, %.sroa.6.060.i.i.i.i.i   ; 3 uses
  store i64 %i.hs, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !818, !noalias !815
  %i.ht = add i64 %.sroa.6.060.i.i.i.i.i, %i.hp
  %i.hu = call i64 @llvm.umin.i64(i64 %i.ht, i64 %i.ho)
  store i64 %i.hu, ptr %.sroa.3234.0..sroa_idx, align 8, !alias.scope !820, !noalias !811
  %i.hv = add i64 %.sroa.6.060.i.i.i.i.i, %.sroa.01.0.ph.i.i.i.i.i ; 2 uses
  %i.hw = icmp eq i64 %.sroa.6.060.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %i.hq, %i.hw
  br i1 %or.cond.i.i.i.i.i, label %bb.n, label %.outer.i.i.i.i.i

bb.n:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i
  %i.hx = inttoptr i64 %i.hv to ptr
  br label %_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.split28.i.i.i.i.i, %.split.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !821
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.o:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !821
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.p:                                             ; preds = %.split27.i.i.i.i.i
  %i.hy = getelementptr i8, ptr %i.fz, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !821
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  store ptr %i.hy, ptr %i.cu, align 8, !alias.scope !822, !noalias !821
  store i8 3, ptr %i.p, align 8, !alias.scope !822, !noalias !821
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cu) #30, !noalias !823
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o, %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !821
  br label %bb.i

_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i, %.split27.i.i.i.i.i, %.split28.i.i.i.i.i, %.split.i.i.i.i.i, %bb.n
  %i.hz = phi ptr [ %i.hn, %bb.n ], [ %i.fn, %.split.i.i.i.i.i ], [ %i.fn, %.split28.i.i.i.i.i ], [ %i.fn, %.split27.i.i.i.i.i ], [ %i.fn, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i ] ; 4 uses
  %i.ia = phi i64 [ %i.hs, %bb.n ], [ %i.fo, %.split.i.i.i.i.i ], [ %i.fo, %.split28.i.i.i.i.i ], [ %i.fo, %.split27.i.i.i.i.i ], [ %i.fo, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.3.0.i.i.i.i.i = phi ptr [ %i.hx, %bb.n ], [ %i.fz, %.split.i.i.i.i.i ], [ %i.fz, %.split28.i.i.i.i.i ], [ %i.fz, %.split27.i.i.i.i.i ], [ %i.fz, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi i1 [ false, %bb.n ], [ true, %.split.i.i.i.i.i ], [ true, %.split28.i.i.i.i.i ], [ true, %.split27.i.i.i.i.i ], [ true, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !824
  call void @_RNvMNtCsf3Ta7LF998c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %i.ia) #30, !noalias !825
  %i.ib = load i64, ptr %i.r, align 8, !range !31, !noalias !824, !noundef !14
  %.not.i.i.i = icmp eq i64 %i.ib, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !824
  br i1 %.not.i.i.i, label %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i: ; preds = %_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %..i.i.i = select i1 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.3.0.i.i.i.i.i, ptr @136
  store i64 0, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !826, !noalias !827
  br label %bb.s

_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNCNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtBb_8buf_read7BufRead9read_line0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %i.ic = icmp sgt i64 %i.ia, -1
  call void @llvm.assume(i1 %i.ic)
  store i64 %i.ia, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !826, !noalias !827
  br i1 %.sroa.0.0.i.i.i.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.id = icmp eq ptr %.sroa.3.0.i.i.i.i.i, null
  br i1 %i.id, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.r
  %i.ie = getelementptr i8, ptr %i.hz, i64 %i.ia
  %i.if = getelementptr i8, ptr %i.ie, i64 -1
  %rhsc.i = load i8, ptr %i.if, align 1, !noalias !817
  %i.ig = icmp eq i8 %rhsc.i, 10
  br i1 %i.ig, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

bb.s:                                             ; preds = %bb.q, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.sroa.0238.0 = phi i64 [ -1, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ], [ -1, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ -2, %bb.q ] ; 2 uses
  %.sroa.9239.0 = phi ptr [ %..i.i.i, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i ], [ %.sroa.3.0.i.i.i.i.i, %_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ undef, %bb.q ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %.val.i.i.i = load i64, ptr %i.s, align 8, !range !16, !alias.scope !830, !noalias !798, !noundef !14 ; 2 uses
  %i.ih = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ih, label %_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hz, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !831
  br label %_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.ii = add nsw i64 %i.ia, -1                   ; 4 uses
  store i64 %i.ii, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !832, !noalias !798
  %.not.i9.i = icmp eq i64 %i.ii, 0
  br i1 %.not.i9.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit12.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit12.i: ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit.i
  %i.ij = getelementptr i8, ptr %i.hz, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 -1
  %rhsc33.i = load i8, ptr %i.ik, align 1, !noalias !817
  %i.il = icmp eq i8 %rhsc33.i, 13
  %i.im = add nsw i64 %i.ia, -2
  %spec.select = select i1 %i.il, i64 %i.im, i64 %i.ii
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit12.i, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.r
  %.sroa.11.0.copyload = phi i64 [ 0, %bb.r ], [ %spec.select, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit12.i ], [ 0, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit.i ], [ %i.ia, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCsat9HgdBb3qc_16shadowsocks_rust.exit.i ]
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
  %i.in = icmp eq i64 %.val1.i.i, 0
  br i1 %i.in, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.u
  %.val.i.i = load ptr, ptr %i.az, align 8, !alias.scope !835, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #30, !noalias !835
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.u, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %.val.i.i.i150 = load i32, ptr %.sroa.5236.0..sroa_idx, align 8, !range !15, !alias.scope !837, !noundef !14
  %i.io = call noundef i32 @close(i32 noundef %.val.i.i.i150) #30, !noalias !837 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.036.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.af, ptr noundef nonnull align 8 dereferenceable(184) %i.be, i64 184, i1 false)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules10into_rules(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.af) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ip = load i64, ptr %i.ag, align 8, !range !32, !noundef !14 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 2                    ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.is = load ptr, ptr %i.ir, align 8            ; 2 uses
  br i1 %i.iq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.is, ptr %i.it, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ad

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc2io4util5LinesINtNtNtBG_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5111.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i64 %i.ip, ptr %i.ah, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.is, ptr %.sroa.444.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ac, ptr noundef nonnull align 8 dereferenceable(184) %i.bd, i64 184, i1 false)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules10into_rules(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.ac) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.iu = load i64, ptr %i.ad, align 8, !range !32, !noundef !14 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 2
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8            ; 2 uses
  br i1 %i.iv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ix, ptr %i.iy, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl5RulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(176) %i.ah) #30
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.555.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5114.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.iu, ptr %i.ae, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ix, ptr %.sroa.454.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.z, ptr noundef nonnull align 8 dereferenceable(184) %i.bc, i64 184, i1 false)
  call void @_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules10into_rules(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.z) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.iz = load i64, ptr %i.aa, align 8, !range !32, !noundef !14 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8            ; 2 uses
  br i1 %i.ja, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jc, ptr %i.jd, align 8
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
end_hunk_0
begin_hunk_1_@_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtBb_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_:bb.a
  %i.fe = or i32 %i.ez, %i.fd
  %i.ff = icmp ne i32 %i.fe, 0
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4

bb.j:                                             ; preds = %bb.g
  %i.fi = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.fj = xor i32 %i.fi, 1953067639
  %i.fk = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 3
  %i.fl = load i32, ptr %i.fk, align 1
  %i.fm = xor i32 %i.fl, 1936876916
  %i.fn = or i32 %i.fj, %i.fm
  %i.fo = icmp ne i32 %i.fn, 0
  %i.fp = zext i1 %i.fo to i32
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4

bb.k:                                             ; preds = %bb.g
  %i.fr = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.fs = xor i64 %i.fr, 8097304357423181667
  %i.ft = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 3
  %i.fu = load i64, ptr %i.ft, align 1
  %i.fv = xor i64 %i.fu, 7526748012507785574
  %i.fw = or i64 %i.fs, %i.fv
  %i.fx = icmp ne i64 %i.fw, 0
  %i.fy = zext i1 %i.fx to i32
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3: ; preds = %bb.k
  %i.ga = icmp eq i64 %i.em, 0
  br i1 %i.ga, label %.thread152, label %bb.l

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0: ; preds = %bb.h
  %i.gb = icmp eq i64 %i.em, 0
  br i1 %i.gb, label %.thread139, label %bb.m

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1: ; preds = %bb.i
  %i.gc = icmp eq i64 %i.em, 0
  br i1 %i.gc, label %.thread144, label %bb.n

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %i.gd = icmp eq i64 %i.em, 0
  br i1 %i.gd, label %.thread156, label %bb.o

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2: ; preds = %bb.j
  %i.ge = icmp eq i64 %i.em, 0
  br i1 %i.ge, label %.thread148, label %bb.p

bb.l:                                             ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4720
  br label %.thread152

bb.m:                                             ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4720
  br label %.thread139

bb.n:                                             ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4720
  br label %.thread144

bb.o:                                             ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4720
  br label %.thread156

bb.p:                                             ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4720
  br label %.thread148

bb.q:                                             ; preds = %bb.f
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i, label %.thread156 [
    i64 5, label %bb.r
    i64 6, label %bb.s
    i64 7, label %bb.t
    i64 11, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.gf = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.gg = xor i32 %i.gf, 1702258028
  %i.gh = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 4
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = zext i8 %i.gi to i32
  %i.gk = xor i32 %i.gj, 108
  %i.gl = or i32 %i.gg, %i.gk
  %i.gm = icmp ne i32 %i.gl, 0
  %i.gn = zext i1 %i.gm to i32
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %.thread139, label %.thread156

bb.s:                                             ; preds = %bb.q
  %i.gp = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.gq = xor i32 %i.gp, 1836216166
  %i.gr = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 4
  %i.gs = load i16, ptr %i.gr, align 1
  %i.gt = zext i16 %i.gs to i32
  %i.gu = xor i32 %i.gt, 29793
  %i.gv = or i32 %i.gq, %i.gu
  %i.gw = icmp ne i32 %i.gv, 0
  %i.gx = zext i1 %i.gw to i32
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %.thread144, label %.thread156

bb.t:                                             ; preds = %bb.q
  %i.gz = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.ha = xor i32 %i.gz, 1953067639
  %i.hb = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 3
  %i.hc = load i32, ptr %i.hb, align 1
  %i.hd = xor i32 %i.hc, 1936876916
  %i.he = or i32 %i.ha, %i.hd
  %i.hf = icmp ne i32 %i.he, 0
  %i.hg = zext i1 %i.hf to i32
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %.thread148, label %.thread156

bb.u:                                             ; preds = %bb.q
  %i.hi = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.hj = xor i64 %i.hi, 8097304357423181667
  %i.hk = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 3
  %i.hl = load i64, ptr %i.hk, align 1
  %i.hm = xor i64 %i.hl, 7526748012507785574
  %i.hn = or i64 %i.hj, %i.hm
  %i.ho = icmp ne i64 %i.hn, 0
  %i.hp = zext i1 %i.ho to i32
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %.thread152, label %.thread156

bb.v:                                             ; preds = %bb.d
  %i.hr = extractvalue { i64, ptr } %i.ej, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

bb.w:                                             ; preds = %bb.d
  %i.hs = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4717 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.hs, null
  br i1 %.not22.i.i, label %bb.x, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

bb.x:                                             ; preds = %bb.w
  %i.ht = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4717
  %i.hu = extractvalue { i64, i32 } %i.ht, 1
  %i.hv = icmp eq i32 %i.hu, 125
  br i1 %i.hv, label %.thread, label %bb.e

bb.y:                                             ; preds = %bb.e
  %i.hw = load ptr, ptr %i.cv, align 8, !noalias !4718, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !4718
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit: ; preds = %bb.w, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit, %bb.a, %bb.y, %bb.v
  %.sroa.10.03258.a = phi ptr [ %.sroa.10.03648, %bb.v ], [ %.sroa.10.03648, %bb.y ], [ undef, %bb.a ], [ %.sroa.10.03648, %bb.w ], [ %.sroa.10.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ]
  %.sroa.0103.03095 = phi i64 [ %.sroa.0103.03649, %bb.v ], [ %.sroa.0103.03649, %bb.y ], [ -2, %bb.a ], [ %.sroa.0103.03649, %bb.w ], [ %.sroa.0103.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ]
  %.sroa.9107.0 = phi ptr [ %i.hr, %bb.v ], [ %i.hw, %bb.y ], [ %i.da, %bb.a ], [ %i.hs, %bb.w ], [ %i.iv, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9107.0) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

.thread:                                          ; preds = %bb.x, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.experimental.noalias.scope.decl(metadata !4721)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !4721
  %i.hx = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !4721 ; 5 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.z, label %_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB4_9LogConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit, !prof !17

bb.z:                                             ; preds = %.thread
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #34, !noalias !4721
  unreachable

_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB4_9LogConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit: ; preds = %.thread
  store i64 2, ptr %i.hx, align 8, !noalias !4721
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i32 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4721
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store i8 2, ptr %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i, align 8, !noalias !4721
  %i.hz = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  store i32 0, ptr %i.hz, align 8, !alias.scope !4721
  %i.ia = getelementptr inbounds nuw i8, ptr %i.cx, i64 52
  store i8 0, ptr %i.ia, align 4, !alias.scope !4721
  store i64 1, ptr %i.cx, align 8, !alias.scope !4721
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.hx, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4721
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4721
  %i.ib = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 -1, ptr %i.ib, align 8, !alias.scope !4721
  %i.ic = trunc nuw i32 %.sroa.04.03653 to i1
  %.sroa.045.0 = select i1 %i.ic, i32 %.sroa.4.03652, i32 0 ; 2 uses
  %.not64 = icmp eq i8 %.sroa.09.03651, 2
  %.sroa.047.0 = select i1 %.not64, i8 0, i8 %.sroa.09.03651 ; 2 uses
  %.not65.not = icmp eq i64 %i.ef, -1             ; 3 uses
  %. = select i1 %.not65.not, ptr %i.cx, ptr %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %., i64 24, i1 false)
  %.not66 = icmp eq i64 %.sroa.0103.03649, -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  %.sroa.049.sroa.8.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not66, label %bb.ns, label %bb.nr

default.unreachable:                              ; preds = %bb.ky, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mg
  unreachable

.thread139:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0, %bb.m, %bb.r
  %i.id = icmp eq i32 %.sroa.04.03653, 0
  br i1 %i.id, label %bb.ad, label %bb.ag, !prof !20

.thread144:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1, %bb.n, %bb.s
  %.not70 = icmp eq i8 %.sroa.09.03651, 2
  br i1 %.not70, label %bb.ai, label %bb.by, !prof !20

.thread148:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2, %bb.p, %bb.t
  %.not69 = icmp eq i64 %i.ef, -1
  br i1 %.not69, label %bb.bz, label %bb.mu, !prof !20

.thread152:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3, %bb.l, %bb.u
  %.not68 = icmp eq i64 %.sroa.0103.03649, -2
  br i1 %.not68, label %bb.mx, label %bb.no, !prof !20

.thread156:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4, %bb.o, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.ie = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !inline_history !0 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i81, label %bb.aa, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.aa:                                            ; preds = %.thread156
  %i.if = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !inline_history !0 ; 2 uses
  %i.ig = extractvalue { i64, ptr } %i.if, 0
  %i.ih = trunc nuw i64 %i.ig to i1
  br i1 %i.ih, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ii = extractvalue { i64, ptr } %i.if, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ij = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.ab, %bb.ac
  %.sroa.0.0.i.i = phi ptr [ %i.ij, %bb.ac ], [ %i.ii, %bb.ab ] ; 2 uses
  %.not67 = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not67, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.ad:                                            ; preds = %.thread139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.experimental.noalias.scope.decl(metadata !4722)
  call void @llvm.experimental.noalias.scope.decl(metadata !4723)
  %i.ik = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4724 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i82, label %bb.ae, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.il = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4724 ; 2 uses
  %i.im = extractvalue { i64, ptr } %i.il, 0
  %i.in = trunc nuw i64 %i.im to i1
  br i1 %i.in, label %bb.af, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.af:                                            ; preds = %bb.ae
  %i.io = extractvalue { i64, ptr } %i.il, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.ae
  call fastcc void @_RINvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtB9_11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.cy, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
  %.pre = load i32, ptr %i.cy, align 8, !range !13
  %i.ip = trunc nuw i32 %.pre to i1
  br i1 %i.ip, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %bb.ah

bb.ag:                                            ; preds = %.thread139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store ptr @153, ptr %i.cu, align 8, !noalias !4725
  %i.iq = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 5, ptr %i.iq, align 8, !noalias !4725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !4725
  store ptr %i.cu, ptr %i.ct, align 8, !noalias !4725
  %.sroa.42.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i83, align 8, !noalias !4725
  %i.ir = call fastcc noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @897, ptr noundef nonnull %i.ct) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !4725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split: ; preds = %bb.ad, %bb.af
  %.sink = phi ptr [ %i.io, %bb.af ], [ %i.ik, %bb.ad ]
  store ptr %.sink, ptr %i.ed, align 8, !alias.scope !4724
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split
  %i.is = load ptr, ptr %i.ed, align 8, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.ah:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.it = load i32, ptr %i.ee, align 4, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit: ; preds = %bb.nl, %bb.ni, %bb.ng, %bb.ne, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit, %bb.ah
  %i.iu = phi i64 [ %i.ef, %bb.ah ], [ %i.ef, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.0.0.copyload.i3278.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %i.ef, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %i.ef, %bb.nl ], [ %i.ef, %bb.ne ], [ %i.ef, %bb.ng ], [ %i.ef, %bb.ni ]
  %.sroa.13.1 = phi i64 [ %.sroa.13.03647, %bb.ah ], [ %.sroa.13.03647, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.13.03647, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.13.03647, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.nl ], [ undef, %bb.ne ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.ng ], [ 0, %bb.ni ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.03648, %bb.ah ], [ %.sroa.10.03648, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.10.03648, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.10.03648, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %i.atj, %bb.nl ], [ undef, %bb.ne ], [ %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.ng ], [ inttoptr (i64 1 to ptr), %bb.ni ] ; 2 uses
  %.sroa.0103.1 = phi i64 [ %.sroa.0103.03649, %bb.ah ], [ %.sroa.0103.03649, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.0103.03649, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.0103.03649, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.nl ], [ -1, %bb.ne ], [ %i.atg, %bb.ng ], [ 0, %bb.ni ] ; 2 uses
  %.sroa.09.1 = phi i8 [ %.sroa.09.03651, %bb.ah ], [ %.sroa.09.03651, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.09.03651, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.3.0.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.09.03651, %bb.nl ], [ %.sroa.09.03651, %bb.ne ], [ %.sroa.09.03651, %bb.ng ], [ %.sroa.09.03651, %bb.ni ]
  %.sroa.4.1 = phi i32 [ %i.it, %bb.ah ], [ %.sroa.4.03652, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.4.03652, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.4.03652, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.4.03652, %bb.nl ], [ %.sroa.4.03652, %bb.ne ], [ %.sroa.4.03652, %bb.ng ], [ %.sroa.4.03652, %bb.ni ]
  %.sroa.04.1 = phi i32 [ 1, %bb.ah ], [ %.sroa.04.03653, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.04.03653, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.04.03653, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.04.03653, %bb.nl ], [ %.sroa.04.03653, %bb.ne ], [ %.sroa.04.03653, %bb.ng ], [ %.sroa.04.03653, %bb.ni ]
  %i.iv = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4717 ; 2 uses
  %.not.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i, label %bb.b, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

bb.ai:                                            ; preds = %.thread144
  %i.iw = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4726 ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i84, label %bb.aj, label %.loopexit190.a

bb.aj:                                            ; preds = %bb.ai
  %i.ix = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4726 ; 2 uses
  %i.iy = extractvalue { i64, ptr } %i.ix, 0
  %i.iz = trunc nuw i64 %i.iy to i1
  br i1 %i.iz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ja = extractvalue { i64, ptr } %i.ix, 1
  br label %.loopexit190.a

bb.al:                                            ; preds = %bb.aj
  %i.jb = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4727 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %.loopexit190.a

bb.am:                                            ; preds = %bb.al
  %i.jc = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 123, i8 noundef 7, i8 noundef 19) #30, !noalias !4727 ; 3 uses
  %i.jd = extractvalue { i64, ptr } %i.jc, 0
  %i.je = trunc nuw i64 %i.jd to i1
  br i1 %i.je, label %.loopexit190.split.loop.exit3619, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jf = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4728 ; 2 uses
  %.not.i.i58.i.i.i.i.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i58.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.an
  %i.jg = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4728
  %i.jh = extractvalue { i64, i32 } %i.jg, 1
  %i.ji = icmp eq i32 %i.jh, 125
  br i1 %i.ji, label %.thread.thread.i.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !4729
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4730
  %i.jj = load i64, ptr %i.eb, align 8, !range !51, !noalias !4729, !noundef !14 ; 4 uses
  %i.jk = icmp eq i64 %i.jj, -2
  br i1 %i.jk, label %.loopexit78.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4729, !nonnull !14, !noundef !14 ; 5 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !4729
  %.not.i.i.i.i.i.peel.i.i.i.i.i.i.i = icmp eq i64 %i.jj, -1
  %i.jl = icmp eq i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, 12 ; 2 uses
  br i1 %.not.i.i.i.i.i.peel.i.i.i.i.i.i.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.jl, label %bb.ar, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.jm = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, align 1
  %i.jn = xor i64 %i.jm, 6878251652255869303
  %i.jo = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, i64 8
  %i.jp = load i32, ptr %i.jo, align 1
  %i.jq = zext i32 %i.jp to i64
  %i.jr = xor i64 %i.jq, 1701669236
  %i.js = or i64 %i.jn, %i.jr
  %i.jt = icmp ne i64 %i.js, 0                    ; 2 uses
  %i.ju = zext i1 %i.jt to i32                    ; 0 uses
  %spec.select.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i = zext i1 %i.jt to i8
  br label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.sink.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.ar ], [ 1, %bb.aq ] ; 2 uses
  %i.jv = icmp eq i64 %i.jj, 0
  br i1 %i.jv, label %bb.av, label %bb.as

bb.as:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4731
  br label %bb.av

bb.at:                                            ; preds = %bb.ap
  br i1 %i.jl, label %bb.au, label %.thread33.peel.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.jw = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, align 1
  %i.jx = xor i64 %i.jw, 6878251652255869303
  %i.jy = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, i64 8
  %i.jz = load i32, ptr %i.jy, align 1
  %i.ka = zext i32 %i.jz to i64
  %i.kb = xor i64 %i.ka, 1701669236
  %i.kc = or i64 %i.jx, %i.kb
  %i.kd = icmp ne i64 %i.kc, 0                    ; 2 uses
  %i.ke = zext i1 %i.kd to i32                    ; 0 uses
  %spec.select.i.i8.i.i.i.i.i.peel.i.i.i.i.i.i.i = zext i1 %i.kd to i8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i
  %.sroa.5.0.ph.peel.i.i.i.i.i.i.i = phi i8 [ %.sink.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.as ], [ %.sink.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i ], [ %spec.select.i.i8.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.au ]
  %cond.peel.i.i.i.i.i.i.i = icmp eq i8 %.sroa.5.0.ph.peel.i.i.i.i.i.i.i, 0
  br i1 %cond.peel.i.i.i.i.i.i.i, label %bb.az, label %.thread33.peel.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !5659, !noundef !14
  %.not.i3 = icmp ult i64 %i.bi, %i.bk
  br i1 %.not.i3, label %bb.p, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !5659, !nonnull !14, !noundef !14
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bi ; 3 uses
  %i.bo = lshr i64 %1, 51                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5660)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !5661, !noundef !14 ; 2 uses
  %i.br = icmp ult i64 %i.bi, %i.bq
  br i1 %i.br, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 34) %i.bi, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37, !noalias !5661
  unreachable

_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.p
  %i.bs = load ptr, ptr %0, align 8, !alias.scope !5661, !nonnull !14, !noundef !14
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !5659, !noundef !14
  %i.bw = sub i64 %i.be, %i.bv                    ; 3 uses
  %i.bx = load ptr, ptr %i.bn, align 8, !noalias !5662, !align !27, !noundef !14 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i5, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.r

bb.r:                                             ; preds = %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !5662, !noundef !14
  %i.ca = icmp ult i64 %i.bw, %i.bz
  br i1 %i.ca, label %bb.s, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw [96 x i8], ptr %i.bx, i64 %i.bw ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 2 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8, !noalias !5662 ; 2 uses
  %i.ce = lshr i64 %i.cd, 51
  %i.cf = icmp eq i64 %i.bo, %i.ce
  br i1 %i.cf, label %.lr.ph20.i.i.i.i, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

.lr.ph20.i.i.i.i:                                 ; preds = %bb.s
  %.cmp.i.i.i.i6 = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i.i7 = select i1 %.cmp.i.i.i.i6, i64 1, i64 -8190
  %i.cg = add nsw i64 %.v.i.i.i.i7, %i.bo
  %i.ch = shl nuw i64 %i.cg, 51
  br label %bb.t

bb.t:                                             ; preds = %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10, %.lr.ph20.i.i.i.i
  %.sroa.02.017.i.i.i.i = phi i1 [ false, %.lr.ph20.i.i.i.i ], [ %.sroa.02.1.i.i.i.i13, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10 ]
  %.sroa.06.016.i.i.i.i = phi i64 [ %i.cd, %.lr.ph20.i.i.i.i ], [ %.sroa.06.1.i.i.i.i12, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10 ] ; 4 uses
  %.sroa.0.015.i.i.i.i = phi i64 [ 0, %.lr.ph20.i.i.i.i ], [ %.sroa.0.1.i.i.i.i11, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10 ] ; 4 uses
  %i.ci = and i64 %.sroa.06.016.i.i.i.i, 2251799813685247
  %i.cj = or disjoint i64 %i.ci, %i.ch
  %i.ck = cmpxchg ptr %i.cc, i64 %.sroa.06.016.i.i.i.i, i64 %i.cj acq_rel acquire, align 8, !noalias !5662 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i8 = extractvalue { i64, i1 } %i.ck, 1
  %.sroa.01.0.i.i.i.i.i9 = extractvalue { i64, i1 } %i.ck, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i.i8, label %bb.u, label %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10

bb.u:                                             ; preds = %bb.t
  %i.cl = and i64 %.sroa.01.0.i.i.i.i.i9, 2251799813685244
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvXs6_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCsfl4DFYTbOu6_12sharded_slab5clear5Clear5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %i.cb) #30, !noalias !5662
  %i.cn = load i64, ptr %i.bt, align 8, !noalias !5662, !noundef !14
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  store i64 %i.cn, ptr %i.co, align 8, !noalias !5662
  store i64 %i.bw, ptr %i.bt, align 8, !noalias !5662
  br label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.w:                                             ; preds = %bb.u
  %i.cp = trunc i64 %.sroa.0.015.i.i.i.i to i32
  %i.cq = and i32 %i.cp, 31                       ; 2 uses
  %.not.i.i.i.i15 = icmp eq i32 %i.cq, 31
  br i1 %.not.i.i.i.i15, label %._crit_edge.i.i.i.i19, label %.lr.ph.preheader.i.i.i.i16

.lr.ph.preheader.i.i.i.i16:                       ; preds = %bb.w
  %i.cr = shl nuw nsw i32 1, %i.cq
  %i.cs = freeze i32 %i.cr                        ; 3 uses
  %i.ct = add i32 %i.cs, -1
  %xtraiter42 = and i32 %i.cs, 7                  ; 3 uses
  %i.cu = icmp ult i32 %i.ct, 7
  br i1 %i.cu, label %.lr.ph.i.i.i.i17.epil.preheader, label %.lr.ph.preheader.i.i.i.i16.new

.lr.ph.preheader.i.i.i.i16.new:                   ; preds = %.lr.ph.preheader.i.i.i.i16
  %unroll_iter46 = and i32 %i.cs, -8
  br label %.lr.ph.i.i.i.i17

._crit_edge.i.i.i.i19.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i17
  %lcmp.mod44.not = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod44.not, label %._crit_edge.i.i.i.i19, label %.lr.ph.i.i.i.i17.epil.preheader

.lr.ph.i.i.i.i17.epil.preheader:                  ; preds = %._crit_edge.i.i.i.i19.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i16
  %lcmp.mod45 = icmp ne i32 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.i.i.i.i17.epil

.lr.ph.i.i.i.i17.epil:                            ; preds = %.lr.ph.i.i.i.i17.epil, %.lr.ph.i.i.i.i17.epil.preheader
  %epil.iter43 = phi i32 [ 0, %.lr.ph.i.i.i.i17.epil.preheader ], [ %epil.iter43.next, %.lr.ph.i.i.i.i17.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  %epil.iter43.next = add i32 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i32 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %._crit_edge.i.i.i.i19, label %.lr.ph.i.i.i.i17.epil, !llvm.loop !5655

._crit_edge.i.i.i.i19:                            ; preds = %._crit_edge.i.i.i.i19.loopexit.unr-lcssa, %.lr.ph.i.i.i.i17.epil, %bb.w
  %i.cv = icmp ugt i64 %.sroa.0.015.i.i.i.i, 7
  br i1 %i.cv, label %bb.y, label %bb.x

.lr.ph.i.i.i.i17:                                 ; preds = %.lr.ph.i.i.i.i17, %.lr.ph.preheader.i.i.i.i16.new
  %niter47 = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i16.new ], [ %niter47.next.7, %.lr.ph.i.i.i.i17 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  %niter47.next.7 = add i32 %niter47, 8           ; 2 uses
  %niter47.ncmp.7 = icmp eq i32 %niter47.next.7, %unroll_iter46
  br i1 %niter47.ncmp.7, label %._crit_edge.i.i.i.i19.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i17

bb.x:                                             ; preds = %._crit_edge.i.i.i.i19
  %i.cw = add nuw nsw i64 %.sroa.0.015.i.i.i.i, 1
  br label %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10

bb.y:                                             ; preds = %._crit_edge.i.i.i.i19
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now() #30, !noalias !5663
  br label %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10

_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10: ; preds = %bb.y, %bb.x, %bb.t
  %.sroa.0.1.i.i.i.i11 = phi i64 [ 0, %bb.t ], [ %.sroa.0.015.i.i.i.i, %bb.y ], [ %i.cw, %bb.x ]
  %.sroa.06.1.i.i.i.i12 = phi i64 [ %.sroa.01.0.i.i.i.i.i9, %bb.t ], [ %.sroa.06.016.i.i.i.i, %bb.y ], [ %.sroa.06.016.i.i.i.i, %bb.x ] ; 2 uses
  %.sroa.02.1.i.i.i.i13 = phi i1 [ %.sroa.02.017.i.i.i.i, %bb.t ], [ true, %bb.y ], [ true, %bb.x ] ; 2 uses
  %i.cx = lshr i64 %.sroa.06.1.i.i.i.i12, 51
  %i.cy = icmp eq i64 %i.bo, %i.cx
  %or.cond.not.i.i.i.i14 = or i1 %.sroa.02.1.i.i.i.i13, %i.cy
  br i1 %or.cond.not.i.i.i.i14, label %bb.t, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i, %bb.k, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10, %bb.v, %bb.s, %bb.r, %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.o, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBP_3AnyNtNtBR_6marker4SendNtB26_4SyncEL_EINtNtBR_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE6insertCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !5679, !noalias !5680 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5681, !noundef !14
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0EB48_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noundef nonnull %i.e, i1 noundef zeroext true) #36 ; 0 uses
  br label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !5682, !nonnull !14, !noundef !14 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.g, align 8, !alias.scope !5682, !noundef !14 ; 4 uses
  %i.h = lshr i64 %.val.i.i, 57
  %i.i = trunc nuw nsw i64 %i.h to i8             ; 3 uses
  %i.j = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i = load i128, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.pn.i.i = phi i64 [ %.val.i.i, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.aj, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.l = phi i64 [ 0, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.ai, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !5683 ; 3 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.k
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.o, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.y, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.0.017.i.i, %i.q
  %i.s = and i64 %i.r, %.val5.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  %.val2.i.i = load i128, ptr %i.v, align 8, !noalias !5684
  %i.w = icmp eq i128 %.val.i.i.i, %.val2.i.i
  br i1 %i.w, label %bb.j, label %bb.d, !prof !20

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 0
  br i1 %.not12.i.i, label %bb.e, label %.thread.i.i, !prof !20

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.x = add i16 %.sroa.01.029.i.i, -1
  %i.y = and i16 %i.x, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.z = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !23

.thread24.i.i:                                    ; preds = %bb.e
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aa, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.0.017.i.i, %i.ac
  %i.ae = and i64 %i.ad, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ae, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ai = add i64 %i.l, 16                        ; 2 uses
  %i.aj = add i64 %i.ai, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.al = load i8, ptr %i.ak, align 1, !noundef !14 ; 2 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.an = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ao, 0
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ao, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aq
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !5685
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ar = phi i8 [ %.pre, %bb.h ], [ %i.al, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.aq, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5686)
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.at = and i8 %i.ar, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = add i64 %.sroa.3.0.i.ph.i, -16
  %i.aw = and i64 %i.av, %.val5.i
  store i8 %i.i, ptr %i.as, align 1, !noalias !5685
  %i.ax = getelementptr i8, ptr %.val.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store i8 %i.i, ptr %i.ay, align 1, !noalias !5685
  %i.az = load <2 x i64>, ptr %i.b, align 8, !alias.scope !5686, !noalias !5687
  %i.ba = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.au, i64 0
  %i.bb = sub <2 x i64> %i.az, %i.ba
  store <2 x i64> %i.bb, ptr %i.b, align 8, !alias.scope !5686, !noalias !5687
  %i.bc = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bd = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !5686
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bd, i64 -16
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5686
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bd, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5686
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !14, !noundef !14
  %i.bh = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !14, !align !27, !noundef !14
  store ptr %2, ptr %i.bf, align 8
  store ptr %3, ptr %i.bh, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.34.0 = phi ptr [ undef, %bb.i ], [ %i.bi, %bb.j ]
  %.sroa.03.0 = phi ptr [ null, %bb.i ], [ %i.bg, %bb.j ]
  %i.bj = insertvalue { ptr, ptr } poison, ptr %.sroa.03.0, 0
  %i.bk = insertvalue { ptr, ptr } %i.bj, ptr %.sroa.34.0, 1
  ret { ptr, ptr } %i.bk
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i32 } @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime3now() #30 ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0) #30
  %i.g = load i64, ptr %i.a, align 8, !range !31, !noundef !14
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !14 ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !56, !noundef !14 ; 3 uses
  %i.m = urem i64 %i.j, 60                        ; 4 uses
  %i.n = udiv i64 %i.j, 60
  %i.o = urem i64 %i.n, 60                        ; 4 uses
  br i1 %i.h, label %bb.b, label %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.p = sub nsw i64 0, %i.o
  %i.q = udiv i64 %i.j, 3600
  %i.r = urem i64 %i.q, 24                        ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread.i.i, label %.thread.i.i.thread, !prof !20

.thread.i.i.thread:                               ; preds = %bb.b
  %i.s = sub nuw nsw i32 1000000000, %i.l
  %i.t = xor i64 %i.m, -1
  br label %.thread43.i.i.thread

.thread.i.i:                                      ; preds = %bb.b
  %i.u = sub nsw i64 0, %i.m
  %.not63 = icmp eq i64 %i.m, 0
  br i1 %.not63, label %.thread43.i.i, label %.thread43.i.i.thread, !prof !57

.thread43.i.i.thread:                             ; preds = %.thread.i.i, %.thread.i.i.thread
  %.sroa.04.040.i.i28 = phi i32 [ %i.s, %.thread.i.i.thread ], [ 0, %.thread.i.i ]
  %.sroa.09.041.i.i26 = phi i64 [ %i.t, %.thread.i.i.thread ], [ %i.u, %.thread.i.i ]
  %i.v = add nsw i64 %.sroa.09.041.i.i26, 60
  %i.w = xor i64 %i.o, -1
  br label %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread

.thread43.i.i:                                    ; preds = %.thread.i.i
  %.not64 = icmp eq i64 %i.o, 0
  br i1 %.not64, label %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i, label %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread, !prof !57

_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread: ; preds = %.thread43.i.i, %.thread43.i.i.thread
  %.sroa.09.150.i.i36 = phi i64 [ %i.v, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %.sroa.016.051.i.i34 = phi i64 [ %i.w, %.thread43.i.i.thread ], [ %i.p, %.thread43.i.i ]
  %.sroa.04.040.i.i2733 = phi i32 [ %.sroa.04.040.i.i28, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %i.x = add nsw i64 %.sroa.016.051.i.i34, 60
  %i.y = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.y, label %bb.p, label %bb.h

_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i: ; preds = %.thread43.i.i
  %.not65 = icmp eq i64 %i.r, 0
  %i.z = icmp ugt i64 %i.j, 185542587187199       ; 2 uses
  br i1 %.not65, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i
  br i1 %i.z, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp samesign ult i64 %i.j, 86400
  br i1 %i.aa, label %_RNvXsf_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp samesign ugt i64 %i.j, 377705203199
  br i1 %i.ab, label %bb.l, label %bb.f, !prof !54

bb.f:                                             ; preds = %bb.e
  %i.ac = udiv i64 %i.j, 86400
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 869850581, %i.ad        ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = mul nuw nsw i64 %i.af, 3853261555       ; 2 uses
  %i.ah = lshr i64 %i.ag, 15
  %i.ai = lshr i64 %i.ag, 47
  %i.aj = trunc nuw nsw i64 %i.ai to i32          ; 3 uses
  %i.ak = trunc i64 %i.ah to i32
  %i.al = icmp ugt i32 %i.ak, 42920275
  %i.am = and i32 %i.aj, 3
  %i.an = icmp eq i32 %i.am, 0
  %.sroa.0.0.i.i.i.i = or i1 %i.al, %i.an         ; 2 uses
  %i.ao = lshr i32 %i.aj, 2
  %i.ap = add nuw nsw i32 %i.ae, %i.aj
  %i.aq = sub nuw nsw i32 %i.ap, %i.ao
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 3010298776       ; 2 uses
  %i.at = lshr i64 %i.as, 8
  %i.au = lshr i64 %i.as, 40
  %i.av = trunc nuw nsw i64 %i.au to i32          ; 2 uses
  %i.aw = and i64 %i.at, 4294967295
  %i.ax = mul nuw nsw i64 %i.aw, 1461
  %i.ay = lshr i64 %i.ax, 34
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = zext i1 %.sroa.0.0.i.i.i.i to i32
end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filtersINtB5_8FilteredINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtB9_5layer5LayerNtNtNtB9_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core6marker4SendNtB2O_4SyncEL_ENtNtB7_3env9EnvFilterB2c_EIB1T_B2c_E11on_new_spanCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  %.sink.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1216
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f, !prof !20

bb.f:                                             ; preds = %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i.i.i.i.i
  %i.w = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !11520
  %i.x = and i64 %i.w, 9223372036854775807
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.ai, label %bb.ah

bb.g:                                             ; preds = %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11520
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !11523, !noalias !11521, !nonnull !14, !align !27, !noundef !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !noalias !11521
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !11521, !nonnull !14, !noundef !14
  store <2 x ptr> %i.ac, ptr %i.e, align 16, !noalias !11520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11524)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !11524, !noalias !11525, !noundef !14
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !11524, !noalias !11525, !noundef !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !11524, !noalias !11525, !noundef !14
  %i.aj = call fastcc noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierECsat9HgdBb3qc_16shadowsocks_rust(i64 %.val.i.i.i.i.i.i.i.i, i64 %.val5.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #30, !noalias !11526 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11528)
  %i.ak = lshr i64 %i.aj, 57
  %i.al = trunc nuw nsw i64 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !11529, !noalias !11530, !noundef !14 ; 2 uses
  %i.ao = load ptr, ptr %.sink.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !11529, !noalias !11530, !nonnull !14, !noundef !14 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.al, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.bh, %bb.k ]
  %.pn.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.h ], [ %i.bi, %bb.k ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i, %i.an ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ar, align 1, !noalias !11531 ; 2 uses
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i, %i.aq
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i, %bb.j
  %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bg, %bb.j ], [ %i.at, %bb.i ] ; 3 uses
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, %i.av
  %i.ax = and i64 %i.aw, %i.an
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [488 x i8], ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -488
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !noalias !11532, !nonnull !14, !noundef !14
  %i.bb = icmp eq ptr %i.ad, %.val2.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bb, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, label %bb.j, !prof !20

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.j, %bb.i
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %i.be = icmp eq i16 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i, !prof !23

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bf = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i, -1
  %i.bg = and i16 %i.bf, %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bh = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.bi = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, %i.bh
  br label %bb.i

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds i8, ptr %i.az, i64 -472
  call void @_RNvMs8_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveINtB5_8MatchSetNtNtB7_5field13CallsiteMatchE13to_span_match(ptr noalias nofree noundef nonnull sret([536 x i8]) align 8 captures(none) dereferenceable(536) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #30, !noalias !11521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11520
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11533)
  %i.bl = cmpxchg weak ptr %i.bk, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !11534
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %bb.m, label %bb.l, !prof !20

bb.l:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %i.bk) #30, !noalias !11535
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  %i.bn = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !11534
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2o_5field9SpanMatchEEE5writeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.bq = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !11535
  %i.br = xor i1 %i.bq, true
  %i.bs = zext i1 %i.br to i8
  br label %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2o_5field9SpanMatchEEE5writeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i

_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2o_5field9SpanMatchEEE5writeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bs, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.bu = load atomic i8, ptr %i.bt monotonic, align 8, !noalias !11534
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.bu, 0   ; 2 uses
  %spec.select.i.i10.i.i.i.i.i.i.i = zext i1 %.not.i.i.i.i.i.i.i.i.i to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bk, ptr %i.bv, align 8, !alias.scope !11536, !noalias !11520
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %.sroa.01.0.i.i.i.i.i.i.i.i.i, ptr %i.bw, align 8, !alias.scope !11536, !noalias !11520
  store i64 %spec.select.i.i10.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !11536, !noalias !11520
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.q, !prof !23

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3p_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, %bb.g
  %i.bx = atomicrmw sub ptr %i.p, i32 1 release, align 4, !noalias !11520
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  %i.bz = and i32 %i.by, -1073741825
  %or.cond.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bz, -2147483648
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3e_5field13CallsiteMatchEEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, !prof !37

bb.o:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.p, i32 noundef %i.by) #30, !noalias !11521
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3e_5field13CallsiteMatchEEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3e_5field13CallsiteMatchEEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11520
  br label %_RNCNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filtersINtB7_8FilteredINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtBb_5layer5LayerNtNtNtBb_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core6marker4SendNtB2Q_4SyncEL_ENtNtB9_3env9EnvFilterB2e_EIB1V_B2e_E11on_new_span0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

bb.p:                                             ; preds = %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2o_5field9SpanMatchEEE5writeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  %i.ca = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !11520
  %i.cb = and i64 %i.ca, 9223372036854775807
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.ae, label %bb.ad

bb.q:                                             ; preds = %_RNvMs9_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2o_5field9SpanMatchEEE5writeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.ce = load i64, ptr %2, align 8, !range !55, !alias.scope !11537, !noalias !11538, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11539)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11520
  store i64 %i.ce, ptr %i.a, align 8, !noalias !11540
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %.val.i12.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !11539, !noalias !11541, !noundef !14
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %.val5.i13.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !11539, !noalias !11541, !noundef !14
  %i.ch = call fastcc noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs1kwRxRulhfk_12tracing_core4span2IdECsat9HgdBb3qc_16shadowsocks_rust(i64 %.val.i12.i.i.i.i.i.i.i, i64 %.val5.i13.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #30, !noalias !11542 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !11543, !noalias !11541, !noundef !14
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.r, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i, !prof !23

bb.r:                                             ; preds = %bb.q
  %i.cl = tail call { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cd, i64 noundef 1, ptr noundef nonnull align 8 %i.cf, i1 noundef zeroext true) #36, !noalias !11544 ; 0 uses
  br label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i

_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !11545, !noalias !11541, !nonnull !14, !noundef !14 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %.val5.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !11545, !noalias !11541, !noundef !14 ; 4 uses
  %i.cn = lshr i64 %i.ch, 57
  %i.co = trunc nuw nsw i64 %i.cn to i8           ; 3 uses
  %i.cp = insertelement <16 x i8> poison, i8 %i.co, i64 0
  %i.cq = shufflevector <16 x i8> %i.cp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ch, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i ], [ %i.dp, %bb.v ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.120.i.i.i.i.i.i.i.i.i.i, %bb.v ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.122.i.i.i.i.i.i.i.i.i.i, %bb.v ]
  %i.cr = phi i64 [ 0, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i.i ], [ %i.do, %bb.v ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cs, align 1, !noalias !11546 ; 3 uses
  %i.ct = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i, %i.cq
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cu, 0
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.s, %bb.t
  %.sroa.01.029.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.de, %bb.t ], [ %i.cu, %bb.s ] ; 3 uses
  %i.cv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  %i.cx = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i, %i.cw
  %i.cy = and i64 %i.cx, %.val5.i.i.i.i.i.i.i.i.i
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr inbounds [544 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -544
  %.val2.i.i.i14.i.i.i.i.i.i.i = load i64, ptr %i.db, align 8, !range !55, !noalias !11547, !noundef !14
  %i.dc = icmp eq i64 %i.ce, %.val2.i.i.i14.i.i.i.i.i.i.i
  br i1 %i.dc, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, label %bb.t, !prof !20

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.t, %bb.s
  %.not12.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %.thread.i.i.i.i.i.i.i.i.i.i, !prof !20

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.dd = add i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i, -1
  %i.de = and i16 %i.dd, %.sroa.01.029.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.de, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.df = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.v, label %.thread24.i.i.i.i.i.i.i.i.i.i, !prof !23

.thread24.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.u
  %i.dh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dg, i1 true)
  %i.di = zext nneg i16 %i.dh to i64
  %i.dj = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i, %i.di
  %i.dk = and i64 %i.dj, %.val5.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.thread24.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dk, %.thread24.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dl = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dm = bitcast <16 x i1> %i.dl to i16
  %i.dn = icmp eq i16 %i.dm, 0
  br i1 %i.dn, label %bb.v, label %bb.w, !prof !23

bb.v:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i, %bb.u
  %.sroa.04.122.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.u ]
  %.sroa.4.120.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.u ]
  %i.do = add i64 %i.cr, 16                       ; 2 uses
  %i.dp = add i64 %i.do, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i
  br label %bb.s

bb.w:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i.i.i
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !11544, !noundef !14 ; 2 uses
  %i.ds = icmp sgt i8 %i.dr, -1
  br i1 %i.ds, label %bb.x, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i, !prof !23

bb.x:                                             ; preds = %bb.w
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i, align 16, !noalias !11544
  %i.dt = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %.not.i23.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.du, 0
  %i.dv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.du, i1 true)
  %i.dw = zext nneg i16 %i.dv to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i.i.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.dw
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 1, !noalias !11548
  br label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %i.dx = phi i8 [ %.pre.i.i.i.i.i.i.i.i, %bb.x ], [ %i.dr, %bb.w ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dw, %bb.x ], [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i, %bb.w ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11549)
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i
  %i.dz = and i8 %i.dx, 1
  %i.ea = zext nneg i8 %i.dz to i64
  %i.eb = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i, -16
  %i.ec = and i64 %i.eb, %.val5.i.i.i.i.i.i.i.i.i
  store i8 %i.co, ptr %i.dy, align 1, !noalias !11548
  %i.ed = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  store i8 %i.co, ptr %i.ee, align 1, !noalias !11548
  %i.ef = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !11550, !noalias !11551
  %i.eg = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ea, i64 0
  %i.eh = sub <2 x i64> %i.ef, %i.eg
  store <2 x i64> %i.eh, ptr %i.ci, align 8, !alias.scope !11550, !noalias !11551
  %i.ei = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i
  %i.ej = getelementptr inbounds [544 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -544
  store i64 %i.ce, ptr %i.ek, align 8, !noalias !11552
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ej, i64 -536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(536) %i.b, i64 536, i1 false), !noalias !11521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11520
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.el = getelementptr inbounds i8, ptr %i.da, i64 -536 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(536) %i.el, i64 536, i1 false), !noalias !11553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.el, ptr noundef nonnull align 8 dereferenceable(536) %i.b, i64 536, i1 false), !noalias !11521
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !11554, !noalias !11520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11520
  %i.em = icmp eq i64 %.pr.i.i.i.i.i.i.i, 2
  br i1 %i.em, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtBG_5field9SpanMatchEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(536) %i.d) #30, !noalias !11521
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %bb.y, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i
  %i.en = trunc nuw i8 %.sroa.01.0.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.en, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  %i.eo = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !11520
  %i.ep = and i64 %i.eo, 9223372036854775807
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.aa, !prof !20

bb.aa:                                            ; preds = %bb.z
  %i.er = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !11521
  br i1 %i.er, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store atomic i8 1, ptr %i.bt monotonic, align 8, !noalias !11520
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  %i.es = atomicrmw sub ptr %i.bk, i32 1073741823 release, align 4, !noalias !11520
  %i.et = add i32 %i.es, -1073741823              ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.et, 1073741824
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3p_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, label %bb.ac, !prof !44

bb.ac:                                            ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.bk, i32 noundef %i.et) #30, !noalias !11521
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3p_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3p_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %bb.ac, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11520
  br label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.p
  %i.eu = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !11521
  br i1 %i.eu, label %bb.ae, label %bb.af, !prof !23

bb.ae:                                            ; preds = %bb.ad, %bb.p
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #37, !noalias !11521
  unreachable

bb.af:                                            ; preds = %bb.ad
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core4span2IdINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3p_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #30, !noalias !11521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11520
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtBG_5field9SpanMatchEECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(536) %i.b) #30, !noalias !11521
  %i.ev = atomicrmw sub ptr %i.p, i32 1 release, align 4, !noalias !11520
  %i.ew = add i32 %i.ev, -1                       ; 2 uses
  %i.ex = and i32 %i.ew, -1073741825
  %or.cond.i.i16.i.i.i.i.i.i.i = icmp eq i32 %i.ex, -2147483648
  br i1 %or.cond.i.i16.i.i.i.i.i.i.i, label %bb.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3e_5field13CallsiteMatchEEEECsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i.i, !prof !37

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.p, i32 noundef %i.ew) #30, !noalias !11521
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3e_5field13CallsiteMatchEEEECsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3e_5field13CallsiteMatchEEEECsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11520
  br label %_RNCNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filtersINtB7_8FilteredINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtBb_5layer5LayerNtNtNtBb_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core6marker4SendNtB2Q_4SyncEL_ENtNtB9_3env9EnvFilterB2e_EIB1V_B2e_E11on_new_span0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.f
  %i.ey = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !11521
  br i1 %i.ey, label %bb.ai, label %bb.aj, !prof !23

bb.ai:                                            ; preds = %bb.ah, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #37, !noalias !11521
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ez = atomicrmw sub ptr %i.p, i32 1 release, align 4, !noalias !11520
  %i.fa = add i32 %i.ez, -1                       ; 2 uses
  %i.fb = and i32 %i.fa, -1073741825
  %or.cond.i.i.i18.i.i.i.i.i.i.i = icmp eq i32 %i.fb, -2147483648
  br i1 %or.cond.i.i.i18.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3e_5field13CallsiteMatchEEEECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split.i19.i.i.i.i.i.i.i, label %_RNCNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filtersINtB7_8FilteredINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtBb_5layer5LayerNtNtNtBb_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core6marker4SendNtB2Q_4SyncEL_ENtNtB9_3env9EnvFilterB2e_EIB1V_B2e_E11on_new_span0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, !prof !37

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3e_5field13CallsiteMatchEEEECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split.i19.i.i.i.i.i.i.i: ; preds = %bb.aj
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.p, i32 noundef %i.fa) #30, !noalias !11521
  br label %_RNCNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filtersINtB7_8FilteredINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtBb_5layer5LayerNtNtNtBb_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core6marker4SendNtB2Q_4SyncEL_ENtNtB9_3env9EnvFilterB2e_EIB1V_B2e_E11on_new_span0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

_RNCNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filtersINtB7_8FilteredINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtBb_5layer5LayerNtNtNtBb_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core6marker4SendNtB2Q_4SyncEL_ENtNtB9_3env9EnvFilterB2e_EIB1V_B2e_E11on_new_span0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3e_5field13CallsiteMatchEEEECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split.i19.i.i.i.i.i.i.i, %bb.aj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3e_5field13CallsiteMatchEEEECsat9HgdBb3qc_16shadowsocks_rust.exit17.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs1kwRxRulhfk_12tracing_core8callsite10IdentifierINtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3e_5field13CallsiteMatchEEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  %i.fc = icmp eq i64 %4, -1
  %i.fd = select i1 %i.fc, i64 0, i64 %4
  %spec.select.i.i.i.i.i = or i64 %i.h, %i.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11519
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %.val.i.i.i.i.i = load ptr, ptr %i.fe, align 8, !noalias !11555, !nonnull !14, !noundef !14
  %i.ff = getelementptr i8, ptr %0, i64 1792
  %.val5.i.i.i.i.i = load ptr, ptr %i.ff, align 8, !noalias !11555, !nonnull !14, !align !27, !noundef !14
  %i.fg = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8, !invariant.load !14, !noalias !11556, !nonnull !14
  tail call void %i.fh(ptr noundef nonnull %.val.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef align 8 %3, i64 noundef %spec.select.i.i.i.i.i) #35, !noalias !11555, !inline_history !11512
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filters11FilterStateE4withNCINvMs3_BW_INtBW_8FilteredINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtB10_5layer5LayerNtNtNtB10_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core6marker4SendNtB4c_4SyncEL_ENtNtBY_3env9EnvFilterB3z_E10did_enableNCNvXs4_BW_B2p_IB3f_B3z_E11on_new_span0E0uECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filters11FilterStateE4withNCINvMs3_BW_INtBW_8FilteredINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtB10_5layer5LayerNtNtNtB10_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core6marker4SendNtB4c_4SyncEL_ENtNtBY_3env9EnvFilterB3z_E10did_enableNCNvXs4_BW_B2p_IB3f_B3z_E11on_new_span0E0uECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.b, %_RNCNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filtersINtB7_8FilteredINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtBb_5layer5LayerNtNtNtBb_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core6marker4SendNtB2Q_4SyncEL_ENtNtB9_3env9EnvFilterB2e_EIB1V_B2e_E11on_new_span0Csat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filtersINtB5_8FilteredINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtB9_5layer5LayerNtNtNtB9_8registry7sharded8RegistryENtNtCsf3Ta7LF998c_4core6marker4SendNtB2O_4SyncEL_ENtNtB7_3env9EnvFilterB2c_EIB1T_B2c_E12downcast_rawCsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !14
  switch i128 %i.a, label %bb.e [
    i128 -70125990660565722356945491584241528542, label %bb.b
    i128 -165229782530510351526623090986668608290, label %bb.c
    i128 -81706554373270895900359104722530453866, label %bb.d
    i128 -97285951706724263834051861166804556827, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
end_hunk_3
