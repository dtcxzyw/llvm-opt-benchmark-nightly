Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/toml_datetime-7147e88b265175dd.toml_datetime.a6fb852624937ec9-cgu.0?download=true
inline.NumInlined: 168
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs7_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_8DatetimeNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.af, align 8
  %.sroa.5563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 ptrtoint (ptr @36 to i8), ptr %.sroa.5563.0..sroa_idx, align 8
  %.sroa.6564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i56 %.sroa.5945.17.extract.trunc, ptr %.sroa.6564.0..sroa_idx, align 1
  %.sroa.7565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 28, ptr %.sroa.7565.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ag, align 8
  %.sroa.51100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @36, ptr %.sroa.51100.0..sroa_idx, align 8
  %.sroa.61101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 28, ptr %.sroa.61101.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.h:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0510.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvXsa_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5LexerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !61, !noundef !5
  %.not830 = icmp eq i8 %i.ai, -1
  br i1 %.not830, label %bb.j, label %bb.i

.thread:                                          ; preds = %bb.e
  store ptr %1, ptr %i.w, align 8
  store i64 %2, ptr %i.x, align 8
  br label %bb.ar

bb.i:                                             ; preds = %bb.h
  %.sroa.0581.0.copyload = load ptr, ptr %i.t, align 8 ; 2 uses
  %.sroa.4582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4582.0.copyload = load i64, ptr %.sroa.4582.0..sroa_idx, align 8
  %.sroa.5583.0.copyload = load i64, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.aj = and i64 %.sroa.5583.0.copyload, 255
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit886, label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.al, align 8
  %.sroa.4593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.4593.0..sroa_idx, align 8
  %.sroa.5594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 ptrtoint (ptr @2 to i64), ptr %.sroa.5594.0..sroa_idx, align 8
  %.sroa.6595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5, ptr %.sroa.6595.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.am, align 8
  %.sroa.41650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.41650.0..sroa_idx, align 8
  %.sroa.51651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @2, ptr %.sroa.51651.0..sroa_idx, align 8
  %.sroa.61652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5, ptr %.sroa.61652.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit886: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXsa_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5LexerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !range !61, !noundef !5
  %.not831 = icmp eq i8 %i.ao, -1
  br i1 %.not831, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit886
  %.sroa.51655.0.copyload = load ptr, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ap = ptrtoint ptr %.sroa.51655.0.copyload to i64
  %i.aq = and i64 %i.ap, 255
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit889, label %bb.n

bb.m:                                             ; preds = %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.61671.17.extract.shift = lshr i64 ptrtoint (ptr @3 to i64), 8
  %.sroa.61671.17.extract.trunc = trunc nuw i64 %.sroa.61671.17.extract.shift to i56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.as, align 8
  %.sroa.41674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.41674.0..sroa_idx, align 8
  %.sroa.51675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 ptrtoint (ptr @3 to i8), ptr %.sroa.51675.0..sroa_idx, align 8
  %.sroa.61676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i56 %.sroa.61671.17.extract.trunc, ptr %.sroa.61676.0..sroa_idx, align 1
  %.sroa.71677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 11, ptr %.sroa.71677.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.n:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.at, align 8
  %.sroa.41703.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.41703.0..sroa_idx, align 8
  %.sroa.51704.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @3, ptr %.sroa.51704.0..sroa_idx, align 8
  %.sroa.61705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 11, ptr %.sroa.61705.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit889: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvXsa_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5LexerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !range !61, !noundef !5
  %.not832 = icmp eq i8 %i.av, -1
  br i1 %.not832, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit889
  %.sroa.0611.0.copyload = load ptr, ptr %i.r, align 8 ; 2 uses
  %.sroa.4612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4612.0.copyload = load i64, ptr %.sroa.4612.0..sroa_idx, align 8
  %.sroa.5613.0.copyload = load i64, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.aw = and i64 %.sroa.5613.0.copyload, 255
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit892, label %bb.q

bb.p:                                             ; preds = %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.ay, align 8
  %.sroa.4623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.4623.0..sroa_idx, align 8
  %.sroa.5624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 ptrtoint (ptr @4 to i64), ptr %.sroa.5624.0..sroa_idx, align 8
  %.sroa.6625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 3, ptr %.sroa.6625.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.az, align 8
  %.sroa.41731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.41731.0..sroa_idx, align 8
  %.sroa.51732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @4, ptr %.sroa.51732.0..sroa_idx, align 8
  %.sroa.61733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 3, ptr %.sroa.61733.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit892: ; preds = %bb.o
  %i.ba = icmp eq i64 %.sroa.4511.0.copyload, 4
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit892
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0581.0.copyload) ]
  %i.bb = icmp eq i64 %.sroa.4582.0.copyload, 2
  br i1 %i.bb, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit892
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.bc, align 8
  %.sroa.01031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.01031.sroa.4.0..sroa_idx, align 8
  %.sroa.41032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @44, ptr %.sroa.41032.0..sroa_idx, align 8
  %.sroa.51033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 24, ptr %.sroa.51033.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.t:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0611.0.copyload) ]
  %i.bd = icmp eq i64 %.sroa.4612.0.copyload, 2
  br i1 %i.bd, label %bb.v, label %bb.y

bb.u:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.be, align 8
  %.sroa.01045.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.01045.sroa.4.0..sroa_idx, align 8
  %.sroa.41046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @43, ptr %.sroa.41046.0..sroa_idx, align 8
  %.sroa.51047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 22, ptr %.sroa.51047.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.v:                                             ; preds = %bb.t
  %i.bf = load i8, ptr %.sroa.0510.0.copyload, align 1, !alias.scope !62, !noundef !5
  %cond.i = icmp eq i8 %i.bf, 43                  ; 2 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0510.0.copyload, i64 %.sroa.0.0.idx.i ; 4 uses
  %3 = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !62, !noundef !5
  %4 = zext i8 %3 to i32
  %5 = add nsw i32 %4, -48                        ; 2 uses
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %bb.w, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread

bb.w:                                             ; preds = %bb.v
  %7 = trunc nuw nsw i32 %5 to i16
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.bg = load i8, ptr %8, align 1, !alias.scope !62, !noundef !5
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 10
  br i1 %i.bj, label %bb.x, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bk = mul nuw nsw i16 %7, 10
  %9 = trunc nuw nsw i32 %i.bi to i16
  %10 = add nuw nsw i16 %i.bk, %9
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %11 = load i8, ptr %i.bl, align 1, !alias.scope !62, !noundef !5
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, -48                      ; 2 uses
  %14 = icmp ult i32 %13, 10
  br i1 %14, label %15, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread

15:                                               ; preds = %bb.x
  %16 = mul nuw i16 %10, 10
  %17 = trunc nuw nsw i32 %13 to i16
  %18 = add nuw nsw i16 %16, %17                  ; 2 uses
  br i1 %cond.i, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %21 = load i8, ptr %20, align 1, !alias.scope !62, !noundef !5
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, -48                      ; 2 uses
  %24 = icmp ult i32 %23, 10
  br i1 %24, label %25, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread

25:                                               ; preds = %19
  %26 = mul i16 %18, 10
  %27 = trunc nuw nsw i32 %23 to i16
  %28 = add i16 %26, %27
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit: ; preds = %25, %15
  %.lcssa = phi i16 [ %28, %25 ], [ %18, %15 ]    ; 4 uses
  %i.bm = zext i16 %.lcssa to i32
  %i.bn = tail call fastcc { i1, i8 } @_RNvMsx_NtCs4NRVxsYgnAr_4core3numh16from_ascii_radix(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0581.0.copyload, i64 noundef 2) ; 2 uses
  %i.bo = extractvalue { i1, i8 } %i.bn, 0
  %i.bp = extractvalue { i1, i8 } %i.bn, 1        ; 5 uses
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.bq, align 8
  %.sroa.01059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.01059.sroa.4.0..sroa_idx, align 8
  %.sroa.41060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @42, ptr %.sroa.41060.0..sroa_idx, align 8
  %.sroa.51061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 20, ptr %.sroa.51061.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread: ; preds = %19, %bb.x, %bb.w, %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.br, align 8
  %.sroa.51752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.51752.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.z:                                             ; preds = %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bs, align 8
  %.sroa.51772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.51772.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.aa:                                            ; preds = %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
  %i.bt = tail call fastcc { i1, i8 } @_RNvMsx_NtCs4NRVxsYgnAr_4core3numh16from_ascii_radix(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0611.0.copyload, i64 noundef 2) ; 2 uses
  %i.bu = extractvalue { i1, i8 } %i.bt, 0
  %i.bv = extractvalue { i1, i8 } %i.bt, 1        ; 2 uses
  br i1 %i.bu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bw, align 8
  %.sroa.51792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.51792.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.ac:                                            ; preds = %bb.aa
  %i.bx = add i8 %i.bp, -13
  %or.cond = icmp ult i8 %i.bx, -12
  br i1 %or.cond, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.by, align 8
  %.sroa.01073.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.01073.sroa.4.0..sroa_idx, align 8
  %.sroa.41074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @41, ptr %.sroa.41074.0..sroa_idx, align 8
  %.sroa.51075.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 23, ptr %.sroa.51075.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.ae:                                            ; preds = %bb.ac
  %i.bz = and i16 %.lcssa, 3
  %i.ca = icmp eq i16 %i.bz, 0
  br i1 %i.ca, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cb = urem i16 %.lcssa, 100
  %i.cc = icmp eq i16 %i.cb, 0
  br i1 %i.cc, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %switch.tableidx = add nsw i8 %i.bp, -2         ; 3 uses
  %i.cd = icmp ult i8 %switch.tableidx, 10
  br i1 %i.cd, label %switch.lookup, label %bb.al

bb.ah:                                            ; preds = %bb.af
  switch i8 %i.bp, label %bb.al [
    i8 2, label %bb.aj
    i8 4, label %bb.ak
    i8 6, label %bb.ak
    i8 9, label %bb.ak
    i8 11, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.af
  %switch.tableidx2317 = add nsw i8 %i.bp, -2     ; 3 uses
  %i.ce = icmp ult i8 %switch.tableidx2317, 10
  br i1 %i.ce, label %switch.lookup2318, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.cf = urem i16 %.lcssa, 400
  %i.cg = icmp eq i16 %i.cf, 0                    ; 2 uses
  %. = select i1 %i.cg, i8 29, i8 28
  %.2323 = select i1 %i.cg, ptr @37, ptr @38
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah
  br label %bb.al

switch.lookup:                                    ; preds = %bb.ag
  %i.ch = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs7_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_8DatetimeNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str, i64 %i.ch
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ci = zext nneg i8 %switch.tableidx to i64
  %switch.gep2315 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs7_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_8DatetimeNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str.16, i64 %i.ci
  %switch.load2316 = load ptr, ptr %switch.gep2315, align 8
  br label %bb.al

switch.lookup2318:                                ; preds = %bb.ai
  %i.cj = zext nneg i8 %switch.tableidx2317 to i64
  %switch.gep2319 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs7_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_8DatetimeNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str.17, i64 %i.cj
  %switch.load2320 = load i8, ptr %switch.gep2319, align 1
  %i.ck = zext nneg i8 %switch.tableidx2317 to i64
  %switch.gep2321 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs7_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_8DatetimeNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str.18, i64 %i.ck
  %switch.load2322 = load ptr, ptr %switch.gep2321, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %switch.lookup2318, %bb.ai, %switch.lookup, %bb.ag, %bb.ah, %bb.ak
  %.sroa.0820.0 = phi i8 [ 30, %bb.ak ], [ %switch.load2320, %switch.lookup2318 ], [ %., %bb.aj ], [ 31, %bb.ai ], [ 31, %bb.ah ], [ 31, %bb.ag ], [ %switch.load, %switch.lookup ]
  %.sroa.0821.0 = phi ptr [ @39, %bb.ak ], [ %switch.load2322, %switch.lookup2318 ], [ %.2323, %bb.aj ], [ @40, %bb.ai ], [ @40, %bb.ah ], [ @40, %bb.ag ], [ %switch.load2316, %switch.lookup ]
  %i.cl = add i8 %i.bv, -1
  %or.cond2.not = icmp ult i8 %i.cl, %.sroa.0820.0
  br i1 %or.cond2.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1, ptr %i.cm, align 8
  %.sroa.01087.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.01087.sroa.4.0..sroa_idx, align 8
  %.sroa.41088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0821.0, ptr %.sroa.41088.0..sroa_idx, align 8
  %.sroa.51089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 21, ptr %.sroa.51089.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.an:                                            ; preds = %bb.al
  %.sroa.4174.4.insert.ext = zext nneg i8 %i.bp to i32
  %.sroa.4174.4.insert.shift = shl nuw nsw i32 %.sroa.4174.4.insert.ext, 16
  %.sroa.4174.5.insert.ext = zext nneg i8 %i.bv to i32
  %.sroa.4174.5.insert.shift = shl nuw nsw i32 %.sroa.4174.5.insert.ext, 24
  %i.cn = or disjoint i32 %.sroa.4174.5.insert.shift, %.sroa.4174.4.insert.shift
  %.sroa.4174.5.insert.insert = or disjoint i32 %i.cn, %i.bm ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvXsa_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5LexerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.cp = load i8, ptr %i.co, align 8, !range !61, !noundef !5
  switch i8 %i.cp, label %bb.ap [
    i8 -1, label %bb.ao
    i8 4, label %bb.aq
    i8 5, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @45, ptr %i.cq, align 8
  %.sroa.01109.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 9, ptr %.sroa.01109.sroa.4.0..sroa_idx, align 8
  %.sroa.41110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @46, ptr %.sroa.41110.0..sroa_idx, align 8
  %.sroa.51111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 25, ptr %.sroa.51111.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.dr

bb.aq:                                            ; preds = %bb.an, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ar

bb.ar:                                            ; preds = %.thread, %bb.aq
  %.sroa.9.02281 = phi i16 [ 0, %.thread ], [ 1, %bb.aq ] ; 2 uses
  %.not8332279 = phi i1 [ true, %.thread ], [ false, %bb.aq ]
  %.sroa.15.sroa.0.02278 = phi i32 [ undef, %.thread ], [ %.sroa.4174.5.insert.insert, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXsa_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5LexerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 8, !range !61, !noundef !5
  %.not835 = icmp eq i8 %i.cs, -1
  br i1 %.not835, label %bb.au, label %bb.at

bb.as:                                            ; preds = %bb.ao, %bb.cq, %.thread2295
  %.sroa.9.02280 = phi i16 [ %.sroa.9.02281, %bb.cq ], [ %.sroa.9.02281, %.thread2295 ], [ 1, %bb.ao ]
  %.sroa.15.sroa.0.02277 = phi i32 [ %.sroa.15.sroa.0.02278, %bb.cq ], [ %.sroa.15.sroa.0.02278, %.thread2295 ], [ %.sroa.4174.5.insert.insert, %bb.ao ]
  %.sroa.0.sroa.3.0 = phi i64 [ %.sroa.4397.11.insert.insert, %bb.cq ], [ %.sroa.4397.11.insert.insert, %.thread2295 ], [ undef, %bb.ao ]
  %.sroa.0.sroa.0.0 = phi i32 [ %.sroa.0332.02300, %bb.cq ], [ %.sroa.0332.02300, %.thread2295 ], [ 2, %bb.ao ]
  %.sroa.6.0 = phi i16 [ %.sroa.6.1, %bb.cq ], [ undef, %.thread2295 ], [ undef, %bb.ao ]
  %.sroa.3.0 = phi i16 [ %.sroa.3.1, %bb.cq ], [ 2, %.thread2295 ], [ 2, %bb.ao ]
  %i.ct = load i64, ptr %i.x, align 8, !alias.scope !63, !noundef !5
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.dq, label %bb.dp

bb.at:                                            ; preds = %bb.ar
  %.sroa.0641.0.copyload = load ptr, ptr %i.p, align 8 ; 2 uses
  %.sroa.4642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4642.0.copyload = load i64, ptr %.sroa.4642.0..sroa_idx, align 8
  %.sroa.5643.0.copyload = load i64, ptr %i.cr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.cv = and i64 %.sroa.5643.0.copyload, 255
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit895, label %bb.av

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @5, ptr %i.cx, align 8
  %.sroa.4653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.4653.0..sroa_idx, align 8
  %.sroa.5654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 ptrtoint (ptr @6 to i64), ptr %.sroa.5654.0..sroa_idx, align 8
  %.sroa.6655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 4, ptr %.sroa.6655.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.av:                                            ; preds = %bb.at
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @5, ptr %i.cy, align 8
  %.sroa.41823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.41823.0..sroa_idx, align 8
  %.sroa.51824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @6, ptr %.sroa.51824.0..sroa_idx, align 8
  %.sroa.61825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 4, ptr %.sroa.61825.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit895: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXsa_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5LexerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !range !61, !noundef !5
  %.not836 = icmp eq i8 %i.da, -1
  br i1 %.not836, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit895
  %.sroa.51828.0.copyload = load ptr, ptr %i.cz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.db = ptrtoint ptr %.sroa.51828.0.copyload to i64
  %i.dc = and i64 %i.db, 255
  %i.dd = icmp eq i64 %i.dc, 2
  br i1 %i.dd, label %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit898, label %bb.ay

bb.ax:                                            ; preds = %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.61844.17.extract.shift = lshr i64 ptrtoint (ptr @7 to i64), 8
  %.sroa.61844.17.extract.trunc = trunc nuw i64 %.sroa.61844.17.extract.shift to i56
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @5, ptr %i.de, align 8
  %.sroa.41847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.41847.0..sroa_idx, align 8
  %.sroa.51848.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 ptrtoint (ptr @7 to i8), ptr %.sroa.51848.0..sroa_idx, align 8
  %.sroa.61849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i56 %.sroa.61844.17.extract.trunc, ptr %.sroa.61849.0..sroa_idx, align 1
  %.sroa.71850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 11, ptr %.sroa.71850.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

bb.ay:                                            ; preds = %bb.aw
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @5, ptr %i.df, align 8
  %.sroa.41876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.41876.0..sroa_idx, align 8
  %.sroa.51877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @7, ptr %.sroa.51877.0..sroa_idx, align 8
  %.sroa.61878.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 11, ptr %.sroa.61878.0..sroa_idx, align 8
  store i32 1, ptr %0, align 8
  br label %bb.dr

_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit898: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvXsa_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5LexerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 8, !range !61, !noundef !5
  %.not837 = icmp eq i8 %i.dh, -1
  br i1 %.not837, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_RNvMs8_NtCsekQk4x1rPVl_13toml_datetime8datetimeNtB5_5Token2is.exit898
  %.sroa.0671.0.copyload = load ptr, ptr %i.n, align 8 ; 2 uses
  %.sroa.4672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4672.0.copyload = load i64, ptr %.sroa.4672.0..sroa_idx, align 8
  %.sroa.5673.0.copyload = load i64, ptr %i.dg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.di = and i64 %.sroa.5673.0.copyload, 255
end_hunk_0
