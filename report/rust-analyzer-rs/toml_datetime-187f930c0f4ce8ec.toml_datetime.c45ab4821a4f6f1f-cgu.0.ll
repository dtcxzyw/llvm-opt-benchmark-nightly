Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/toml_datetime-187f930c0f4ce8ec.toml_datetime.c45ab4821a4f6f1f-cgu.0?download=true
inline.NumInlined: 189
inline.NumDeleted: 68
begin_hunk_0_@_RNvXs7_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_8DatetimeNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str:bb.a

_RNvMs8_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5Token2is.exit916: ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXsa_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5LexerNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 8, !range !59, !noundef !4
  %.not849 = icmp eq i8 %i.gi, -1
  br i1 %.not849, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_RNvMs8_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5Token2is.exit916
  %.sroa.52147.0.copyload = load ptr, ptr %i.gh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gj = ptrtoint ptr %.sroa.52147.0.copyload to i64
  %i.gk = and i64 %i.gj, 255
  %i.gl = icmp eq i64 %i.gk, 2
  br i1 %i.gl, label %_RNvMs8_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5Token2is.exit919, label %bb.cy

bb.cx:                                            ; preds = %_RNvMs8_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5Token2is.exit916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.62163.17.extract.shift = lshr i64 ptrtoint (ptr @7 to i64), 8
  %.sroa.62163.17.extract.trunc = trunc nuw i64 %.sroa.62163.17.extract.shift to i56
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.gm, align 8
  %.sroa.42166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.42166.0..sroa_idx, align 8
  %.sroa.52167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 ptrtoint (ptr @7 to i8), ptr %.sroa.52167.0..sroa_idx, align 8
  %.sroa.62168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i56 %.sroa.62163.17.extract.trunc, ptr %.sroa.62168.0..sroa_idx, align 1
  %.sroa.72169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 11, ptr %.sroa.72169.0..sroa_idx, align 8
  br label %bb.do

bb.cy:                                            ; preds = %bb.cw
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.gn, align 8
  %.sroa.42195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.42195.0..sroa_idx, align 8
  %.sroa.52196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @7, ptr %.sroa.52196.0..sroa_idx, align 8
  %.sroa.62197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 11, ptr %.sroa.62197.0..sroa_idx, align 8
  br label %bb.do

_RNvMs8_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5Token2is.exit919: ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsa_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5LexerNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 8, !range !59, !noundef !4
  %.not850 = icmp eq i8 %i.gp, -1
  br i1 %.not850, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_RNvMs8_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5Token2is.exit919
  %.sroa.0805.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.4806.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4806.0.copyload = load i64, ptr %.sroa.4806.0..sroa_idx, align 8
  %.sroa.5807.0.copyload = load i64, ptr %i.go, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gq = and i64 %.sroa.5807.0.copyload, 255
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %_RNvMs8_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5Token2is.exit922, label %bb.db

bb.da:                                            ; preds = %_RNvMs8_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5Token2is.exit919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.gs, align 8
  %.sroa.4817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.4817.0..sroa_idx, align 8
  %.sroa.5818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 ptrtoint (ptr @8 to i64), ptr %.sroa.5818.0..sroa_idx, align 8
  %.sroa.6819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 6, ptr %.sroa.6819.0..sroa_idx, align 8
  br label %bb.do

bb.db:                                            ; preds = %bb.cz
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.gt, align 8
  %.sroa.42223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.42223.0..sroa_idx, align 8
  %.sroa.52224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @8, ptr %.sroa.52224.0..sroa_idx, align 8
  %.sroa.62225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 6, ptr %.sroa.62225.0..sroa_idx, align 8
  br label %bb.do

_RNvMs8_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5Token2is.exit922: ; preds = %bb.cz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0775.0.copyload) ]
  %i.gu = icmp eq i64 %.sroa.4776.0.copyload, 2
  br i1 %i.gu, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_RNvMs8_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5Token2is.exit922
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0805.0.copyload) ]
  %i.gv = icmp eq i64 %.sroa.4806.0.copyload, 2
  br i1 %i.gv, label %bb.de, label %bb.df

bb.dd:                                            ; preds = %_RNvMs8_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5Token2is.exit922
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.gw, align 8
  %.sroa.01511.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.01511.sroa.4.0..sroa_idx, align 8
  %.sroa.41512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @50, ptr %.sroa.41512.0..sroa_idx, align 8
  %.sroa.51513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 21, ptr %.sroa.51513.0..sroa_idx, align 8
  br label %bb.do

bb.de:                                            ; preds = %bb.dc
  %i.gx = tail call fastcc { i1, i8 } @_RNvMsx_NtCshzWfHUSfYae_4core3numh27from_ascii_bytes_radix_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0775.0.copyload, i64 noundef 2) #14 ; 2 uses
  %i.gy = extractvalue { i1, i8 } %i.gx, 0
  %i.gz = extractvalue { i1, i8 } %i.gx, 1        ; 2 uses
  br i1 %i.gy, label %bb.dg, label %bb.dh

bb.df:                                            ; preds = %bb.dc
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.ha, align 8
  %.sroa.01525.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.01525.sroa.4.0..sroa_idx, align 8
  %.sroa.41526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @49, ptr %.sroa.41526.0..sroa_idx, align 8
  %.sroa.51527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 23, ptr %.sroa.51527.0..sroa_idx, align 8
  br label %bb.do

bb.dg:                                            ; preds = %bb.de
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.hb, align 8
  %.sroa.52244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.52244.0..sroa_idx, align 8
  br label %bb.do

bb.dh:                                            ; preds = %bb.de
  %i.hc = tail call fastcc { i1, i8 } @_RNvMsx_NtCshzWfHUSfYae_4core3numh27from_ascii_bytes_radix_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0805.0.copyload, i64 noundef 2) #14 ; 2 uses
  %i.hd = extractvalue { i1, i8 } %i.hc, 0
  %i.he = extractvalue { i1, i8 } %i.hc, 1        ; 2 uses
  br i1 %i.hd, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.hf, align 8
  %.sroa.52264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.52264.0..sroa_idx, align 8
  br label %bb.do

bb.dj:                                            ; preds = %bb.dh
  %i.hg = icmp ugt i8 %i.gz, 23
  br i1 %i.hg, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.hh = icmp ugt i8 %i.he, 59
  br i1 %i.hh, label %bb.dn, label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.hi, align 8
  %.sroa.01539.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.01539.sroa.4.0..sroa_idx, align 8
  %.sroa.41540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @48, ptr %.sroa.41540.0..sroa_idx, align 8
  %.sroa.51541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 23, ptr %.sroa.51541.0..sroa_idx, align 8
  br label %bb.do

bb.dm:                                            ; preds = %bb.dk
  %i.hj = zext nneg i8 %i.gz to i16
  %i.hk = mul nuw nsw i16 %i.hj, 60
  %i.hl = zext nneg i8 %i.he to i16
  %i.hm = add nuw nsw i16 %i.hk, %i.hl            ; 2 uses
  %i.hn = sub nsw i16 0, %i.hm
  %i.ho = select i1 %i.ga, i16 %i.hm, i16 %i.hn
  br label %bb.cq

bb.dn:                                            ; preds = %bb.dk
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.hp, align 8
  %.sroa.01553.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.01553.sroa.4.0..sroa_idx, align 8
  %.sroa.41554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @47, ptr %.sroa.41554.0..sroa_idx, align 8
  %.sroa.51555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 25, ptr %.sroa.51555.0..sroa_idx, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.cu, %bb.cv, %bb.cy, %bb.cx, %bb.dg, %bb.dn, %bb.dl, %bb.di, %bb.df, %bb.dd, %bb.db, %bb.da, %bb.cr
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.dr

bb.dp:                                            ; preds = %bb.aq
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.sroa.0.0, ptr %i.hq, align 4
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.sroa.3.0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %.sroa.9.02280, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i32 %.sroa.15.sroa.0.02277, ptr %.sroa.15.0..sroa_idx, align 2
  br label %.sink.split

bb.dq:                                            ; preds = %bb.aq
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.hr, align 8
  %.sroa.41589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.41589.0..sroa_idx, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.dq, %bb.dp
  %.sink = phi i32 [ 0, %bb.dp ], [ 1, %bb.dq ]
  store i32 %.sink, ptr %0, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %.sink.split, %bb.c, %bb.d, %bb.g, %bb.f, %bb.do, %bb.ar, %bb.k, %bb.j, %bb.n, %bb.m, %bb.ad, %bb.am, %bb.y, %bb.u, %bb.s, %bb.q, %bb.p, %bb.z, %bb.ab, %_RNvMsz_NtCshzWfHUSfYae_4core3numt27from_ascii_bytes_radix_impl.exit.thread, %bb.av, %bb.au, %bb.ay, %bb.ax, %bb.ch, %bb.cj, %bb.ck, %bb.co, %bb.bw, %bb.bt, %bb.br, %bb.bb, %bb.ba, %bb.bf, %bb.be, %bb.bi, %bb.bh, %bb.bm, %bb.bl, %bb.bp, %bb.bo, %bb.bz, %bb.cd, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsgRbK8lkcR4h_13toml_datetime3serNtB4_15SerializerErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load i64, ptr %0, align 8, !range !65, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 30, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsc_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_18DatetimeParseErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !66, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !68
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !66, !noundef !4
  store ptr %i.i, ptr %i.d, align 8, !noalias !68, !captures !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.k, ptr %i.l, align 8, !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !68
  store ptr %i.d, ptr %i.c, align 8, !noalias !68
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsgRbK8lkcR4h_13toml_datetime, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !68
  %i.m = load ptr, ptr %1, align 8, !alias.scope !67, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !67, !nonnull !4, !align !10, !noundef !4
  %i.p = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noundef nonnull @60, ptr noundef nonnull %i.c), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !68
  br i1 %i.p, label %_RNvXsc_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_18DatetimeParseErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 16, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !66
  br i1 %i.q, label %_RNvXsc_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_18DatetimeParseErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !66, !noundef !4 ; 2 uses
  %.not33.i = icmp eq ptr %i.s, null
  br i1 %.not33.i, label %_RNvXsc_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_18DatetimeParseErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !66, !noundef !4
  store ptr %i.s, ptr %i.b, align 8, !noalias !68, !captures !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.u, ptr %i.v, align 8, !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  store ptr %i.b, ptr %i.a, align 8, !noalias !68
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsgRbK8lkcR4h_13toml_datetime, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !68
  %i.w = load ptr, ptr %1, align 8, !alias.scope !67, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !67, !nonnull !4, !align !10, !noundef !4
  %i.z = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noundef nonnull @62, ptr noundef nonnull %i.a), !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  br label %_RNvXsc_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_18DatetimeParseErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit

_RNvXsc_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_18DatetimeParseErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ false, %bb.f ], [ %i.z, %bb.g ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_5LexerNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 10 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !noundef !4  ; 2 uses
  %i.e = add i8 %i.d, -48
  %or.cond = icmp ult i8 %i.e, 10
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit
  %.sroa.08.013.sink = phi i8 [ %.sroa.08.013, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit ], [ -1, %bb.a ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.08.013.sink, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  switch i8 %i.d, label %.split.i [
    i8 45, label %.thread
    i8 58, label %bb.h
    i8 84, label %bb.i
    i8 116, label %bb.i
    i8 32, label %bb.j
    i8 90, label %bb.k
    i8 122, label %bb.k
    i8 43, label %bb.l
    i8 46, label %bb.m
  ]

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.02.07.i = phi i64 [ %i.j, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.g = phi ptr [ %i.i, %bb.f ], [ %i.a, %bb.e ] ; 2 uses
  %.val.i = load i8, ptr %i.g, align 1, !noalias !73, !noundef !4
  %i.h = add i8 %.val.i, -58
  %.sroa.0.0.i.i = icmp ult i8 %i.h, -10
  br i1 %.sroa.0.0.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.j = add nuw i64 %.sroa.02.07.i, 1
  %i.k = icmp eq ptr %i.i, %i.f
  br i1 %i.k, label %.loopexit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.l = icmp ult i64 %.sroa.02.07.i, %i.c
  tail call void @llvm.assume(i1 %i.l)
  br label %.loopexit

bb.h:                                             ; preds = %bb.d
  br label %.thread

bb.i:                                             ; preds = %bb.d, %bb.d
  br label %.thread

bb.j:                                             ; preds = %bb.d
  br label %.thread

bb.k:                                             ; preds = %bb.d, %bb.d
  br label %.thread

bb.l:                                             ; preds = %bb.d
  br label %.thread

bb.m:                                             ; preds = %bb.d
  br label %.thread

.loopexit:                                        ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi i64 [ %.sroa.02.07.i, %bb.g ], [ %i.c, %bb.f ] ; 2 uses
  %i.m = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.m, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.m, %.loopexit
  %.sroa.04.018 = phi i64 [ %.sroa.0.0.i, %.loopexit ], [ 1, %bb.d ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.m ] ; 6 uses
  %.sroa.08.015 = phi i8 [ 0, %.loopexit ], [ 1, %bb.d ], [ 7, %bb.l ], [ 6, %bb.k ], [ 5, %bb.j ], [ 4, %bb.i ], [ 2, %bb.h ], [ 3, %bb.m ] ; 2 uses
  %.not.i = icmp ult i64 %.sroa.04.018, %i.c
  br i1 %.not.i, label %bb.n, label %.split3.i

.split3.i:                                        ; preds = %.thread
  %i.n = icmp eq i64 %.sroa.04.018, %i.c
  br i1 %i.n, label %.split.i, label %bb.o

bb.n:                                             ; preds = %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.04.018
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !74, !noundef !4
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.d, %bb.n, %.split3.i
  %.sroa.08.01535 = phi i8 [ %.sroa.08.015, %bb.n ], [ %.sroa.08.015, %.split3.i ], [ 8, %bb.d ]
  %.sroa.04.01832 = phi i64 [ %.sroa.04.018, %bb.n ], [ %.sroa.04.018, %.split3.i ], [ %i.c, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.04.01832
  %i.s = sub i64 %i.c, %.sroa.04.01832
  br label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit: ; preds = %.split.i, %.loopexit
  %.sroa.04.016 = phi i64 [ 0, %.loopexit ], [ %.sroa.04.01832, %.split.i ]
  %.sroa.08.013 = phi i8 [ 0, %.loopexit ], [ %.sroa.08.01535, %.split.i ]
  %.sroa.9.0 = phi i64 [ %i.c, %.loopexit ], [ %i.s, %.split.i ]
  %.sroa.7.0 = phi ptr [ %i.a, %.loopexit ], [ %i.r, %.split.i ]
  store ptr %.sroa.7.0, ptr %1, align 8, !captures !11
  store i64 %.sroa.9.0, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.04.016, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.c

bb.o:                                             ; preds = %bb.n, %.split3.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, i64 noundef 0, i64 noundef %.sroa.04.018, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #12
  unreachable
}

end_hunk_0
