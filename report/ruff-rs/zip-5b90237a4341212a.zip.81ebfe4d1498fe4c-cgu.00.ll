Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zip-5b90237a4341212a.zip.81ebfe4d1498fe4c-cgu.00?download=true
inline.NumInlined: 101
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData5block:bb.a
  br i1 %i.c, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.at = load i32, ptr %i.as, align 8, !noundef !4 ; 3 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = lshr i32 %i.at, 16                      ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ay = load i8, ptr %i.ax, align 8, !range !8, !noundef !4
  switch i8 %i.ay, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i [
    i8 0, label %bb.p
    i8 3, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.az = and i32 %i.at, 16
  %.not.i.i = icmp eq i32 %i.az, 0
  %..i.i = select i1 %.not.i.i, i32 33204, i32 16893
  br label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i

bb.q:                                             ; preds = %bb.o
  br label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i

_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.6.0.i.i = phi i32 [ undef, %bb.m ], [ %i.av, %bb.n ], [ %..i.i, %bb.p ], [ 0, %bb.q ], [ undef, %bb.o ]
  %.not8.i = phi i1 [ true, %bb.m ], [ false, %bb.n ], [ false, %bb.p ], [ false, %bb.q ], [ true, %bb.o ]
  %i.ba = and i32 %.sroa.6.0.i.i, 16384
  %.not5.i = icmp eq i32 %i.ba, 0
  %or.cond.i = or i1 %.not8.i, %.not5.i
  %spec.select.i = select i1 %or.cond.i, i16 10, i16 20
  br label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed.exit

_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed.exit: ; preds = %bb.l, %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i
  %.sroa.02.0.i = phi i16 [ 45, %bb.l ], [ %spec.select.i, %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i ]
  %switch.selectcmp6.i = icmp eq i16 %i.am, 0
  %switch.selectcmp.i = icmp eq i16 %i.am, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i16 20, i16 45
  %i.bb = tail call i16 @llvm.umax.i16(i16 %.sroa.01.0.i, i16 %switch.select.i)
  %.sroa.0.0.i10.i = select i1 %switch.selectcmp6.i, i16 %.sroa.01.0.i, i16 %i.bb
  %.sroa.0.0.i11.i = tail call noundef range(i16 10, 52) i16 @llvm.umax.i16(i16 %.sroa.02.0.i, i16 %.sroa.0.0.i10.i) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !4
  %i.be = zext i8 %i.bd to i16
  %.sroa.0.0.i161 = tail call noundef i16 @llvm.umax.i16(i16 %.sroa.0.0.i11.i, i16 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bg = load i8, ptr %i.bf, align 8, !range !8, !noundef !4
  %i.bh = zext i8 %i.bg to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = or disjoint i16 %i.bi, %.sroa.0.0.i161
  %i.bk = tail call fastcc noundef i16 @_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData5flags(ptr noundef nonnull align 8 %1)
  %i.bl = load i16, ptr %i.al, align 8, !range !6, !noundef !4 ; 2 uses
  switch i16 %i.bl, label %default.unreachable180 [
    i16 0, label %bb.u
    i16 1, label %bb.r
    i16 2, label %bb.s
    i16 3, label %bb.t
  ]

default.unreachable180:                           ; preds = %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed.exit
  unreachable

bb.r:                                             ; preds = %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed.exit
  br label %bb.u

bb.s:                                             ; preds = %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed.exit
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 202
  %i.bn = load i16, ptr %i.bm, align 2
  br label %bb.u

bb.u:                                             ; preds = %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed.exit, %bb.t, %bb.s, %bb.r
  %.sroa.057.0 = phi i16 [ %i.bn, %bb.t ], [ 8, %bb.r ], [ 93, %bb.s ], [ %i.bl, %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.br = load i64, ptr %i.bq, align 8, !noundef !4 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 65535
  br i1 %i.bs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = trunc nuw i64 %i.br to i16
  %i.bu = add i16 %i.ab, %i.r                     ; 2 uses
  %i.bv = icmp ult i16 %i.bu, %i.r
  br i1 %i.bv, label %bb.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip6result8ZipErrorEBF_.exit, !prof !9

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.bw = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 41) 1, i64 noundef range(i64 1, 9) 1) #16 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.x, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit162, !prof !9

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #18
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit162: ; preds = %bb.w
  store i8 2, ptr %i.bw, align 1
  %i.by = tail call noundef nonnull ptr @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.bz, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.by, ptr %.sroa.4122.0..sroa_idx, align 8
  br label %bb.ab

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip6result8ZipErrorEBF_.exit: ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !4 ; 2 uses
  %i.cc = icmp ugt i64 %i.cb, 65535
  br i1 %i.cc, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  %.sroa.6.2.extract.shift = lshr i64 ptrtoint (ptr @5 to i64), 16
  %.sroa.6.2.extract.trunc = trunc nuw i64 %.sroa.6.2.extract.shift to i48
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.cd, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 ptrtoint (ptr @5 to i16), ptr %.sroa.4142.0..sroa_idx, align 8
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i48 %.sroa.6.2.extract.trunc, ptr %.sroa.5143.0..sroa_idx, align 2
  %.sroa.5143.sroa.4.0..sroa.5143.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 53, ptr %.sroa.5143.sroa.4.0..sroa.5143.0..sroa_idx.sroa_idx, align 8
  br label %bb.ab

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip6result8ZipErrorEBF_.exit
  %i.ce = trunc nuw i64 %i.cb to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cg = load i32, ptr %i.cf, align 8, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i16 %i.bj, ptr %i.ch, align 1
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i16 %.sroa.0.0.i11.i, ptr %.sroa.555.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i16 %i.bk, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i16 %.sroa.057.0, ptr %.sroa.756.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store <2 x i16> %i.ak, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i32 %i.bp, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i32 %.sroa.08.0164, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i32 %.sroa.019.0, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i16 %i.bt, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i16 %i.bu, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i16 %i.ce, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i16 0, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i32 %i.cg, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i32 %i.l, ptr %.sroa.19.0..sroa_idx, align 1
  br label %bb.ab

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip6result8ZipErrorEBF_.exit
  %i.ci = tail call fastcc noundef nonnull ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 1, i64 noundef 1) ; 2 uses
  store i8 2, ptr %i.ci, align 1
  %i.cj = tail call noundef nonnull ptr @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ck, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cj, ptr %.sroa.4145.0..sroa_idx, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit162, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit160, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit159, %bb.z
  %.sink = phi i8 [ 1, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit162 ], [ 0, %bb.z ], [ 1, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit160 ], [ 1, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit159 ], [ 1, %bb.aa ], [ 1, %bb.y ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i16 0, 2058) i16 @_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData5flags(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !101 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %.val3 = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val3)
  %i.d = load i64, ptr %i.a, align 8, !range !102, !noundef !4
  %i.e = icmp eq i64 %i.d, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.e, label %bb.b, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = load i64, ptr %i.c, align 8, !noundef !4 ; 5 uses
  %i.h = icmp samesign ult i64 %i.g, 64
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.g, 9223372036854775744
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 3 uses
  %i.k = and i64 %i.g, 63                         ; 2 uses
  br label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 64 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.c
  %.sroa.01.028.i.i.i = phi ptr [ %i.l, %bb.d ], [ %i.f, %bb.c ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i.i, align 1, !alias.scope !103, !noalias !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i.i = load <2 x i64>, ptr %i.n, align 1, !alias.scope !103, !noalias !105
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i.i = load <2 x i64>, ptr %i.o, align 1, !alias.scope !103, !noalias !106
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i.i = load <2 x i64>, ptr %i.p, align 1, !alias.scope !103, !noalias !107
  %i.q = or <2 x i64> %.sroa.0.0.copyload.i9.i.i.i, %.sroa.0.0.copyload.i.i.i.i
  %i.r = or <2 x i64> %i.q, %.sroa.0.0.copyload.i10.i.i.i
  %i.s = or <2 x i64> %i.r, %.sroa.0.0.copyload.i11.i.i.i
  %i.t = bitcast <2 x i64> %i.s to <16 x i8>
  %i.u = icmp slt <16 x i8> %i.t, zeroinitializer
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.d, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

._crit_edge.i.i.i:                                ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.y = icmp samesign eq i64 %i.k, 0
  br i1 %i.y, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.x
  br i1 %i.aa, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i.i, %bb.e
  %i.ab = phi ptr [ %i.z, %bb.e ], [ %i.j, %._crit_edge.i.i.i ] ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.ab, align 1, !alias.scope !103, !noalias !108, !noundef !4
  %i.ac = icmp sgt i8 %.val.i.i.i.i, -1
  br i1 %i.ac, label %bb.e, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.f:                                             ; preds = %bb.b
  %i.ad = and i64 %i.g, 56                        ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ad ; 7 uses
  %i.af = and i64 %i.g, 7                         ; 7 uses
  %.not.i.i51 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i51, label %._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i.i

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i53, i64 8
  %1 = add nsw i64 %.sroa.6.0.i.i52, -8           ; 2 uses
  %.not.i.i.a = icmp eq i64 %1, 0
  br i1 %.not.i.i.a, label %._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i.i

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.ah = icmp samesign eq i64 %i.af, 0
  br i1 %i.ah, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph55

bb.h:                                             ; preds = %.lr.ph55
  %i.ai = icmp samesign eq i64 %i.af, 1
  br i1 %i.ai, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph55.1

.lr.ph55.1:                                       ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.val.i.i.i.1 = load i8, ptr %i.aj, align 1, !alias.scope !109, !noalias !110, !noundef !4
  %i.ak = icmp sgt i8 %.val.i.i.i.1, -1
  br i1 %i.ak, label %bb.i, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.i:                                             ; preds = %.lr.ph55.1
  %i.al = icmp samesign eq i64 %i.af, 2
  br i1 %i.al, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph55.2

.lr.ph55.2:                                       ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %.val.i.i.i.2 = load i8, ptr %i.am, align 1, !alias.scope !109, !noalias !110, !noundef !4
  %i.an = icmp sgt i8 %.val.i.i.i.2, -1
  br i1 %i.an, label %bb.j, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.j:                                             ; preds = %.lr.ph55.2
  %i.ao = icmp samesign eq i64 %i.af, 3
  br i1 %i.ao, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph55.3

.lr.ph55.3:                                       ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %.val.i.i.i.3 = load i8, ptr %i.ap, align 1, !alias.scope !109, !noalias !110, !noundef !4
  %i.aq = icmp sgt i8 %.val.i.i.i.3, -1
  br i1 %i.aq, label %bb.k, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.k:                                             ; preds = %.lr.ph55.3
  %i.ar = icmp samesign eq i64 %i.af, 4
  br i1 %i.ar, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph55.4

.lr.ph55.4:                                       ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.val.i.i.i.4 = load i8, ptr %i.as, align 1, !alias.scope !109, !noalias !110, !noundef !4
  %i.at = icmp sgt i8 %.val.i.i.i.4, -1
  br i1 %i.at, label %bb.l, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.l:                                             ; preds = %.lr.ph55.4
  %i.au = icmp samesign eq i64 %i.af, 5
  br i1 %i.au, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph55.5

.lr.ph55.5:                                       ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %.val.i.i.i.5 = load i8, ptr %i.av, align 1, !alias.scope !109, !noalias !110, !noundef !4
  %i.aw = icmp sgt i8 %.val.i.i.i.5, -1
  br i1 %i.aw, label %bb.m, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.m:                                             ; preds = %.lr.ph55.5
  %i.ax = icmp samesign eq i64 %i.af, 6
  br i1 %i.ax, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph55.6

.lr.ph55.6:                                       ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %.val.i.i.i.6 = load i8, ptr %i.ay, align 1, !alias.scope !109, !noalias !110, !noundef !4
  %i.az = icmp sgt i8 %.val.i.i.i.6, -1
  br i1 %i.az, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

.lr.ph55:                                         ; preds = %._crit_edge
  %.val.i.i.i = load i8, ptr %i.ae, align 1, !alias.scope !109, !noalias !110, !noundef !4
  %i.ba = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.ba, label %bb.h, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i.i: ; preds = %bb.f, %bb.g
  %.sroa.0.017.i.i53 = phi ptr [ %i.ag, %bb.g ], [ %i.f, %bb.f ] ; 2 uses
  %.sroa.6.0.i.i52 = phi i64 [ %1, %bb.g ], [ %i.ad, %bb.f ]
  %.sroa.012.0.copyload.i.i = load i64, ptr %.sroa.0.017.i.i53, align 1, !alias.scope !109
  %i.bb = and i64 %.sroa.012.0.copyload.i.i, -9187201950435737472
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i: ; preds = %bb.e, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %.lr.ph55.6, %._crit_edge.i.i.i, %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4 ; 5 uses
  %i.bh = icmp samesign ult i64 %i.bg, 64
  br i1 %i.bh, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i
  %i.bi = and i64 %i.bg, 9223372036854775744
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi ; 3 uses
  %i.bk = and i64 %i.bg, 63                       ; 2 uses
  br label %.lr.ph.i.i1.i

bb.o:                                             ; preds = %.lr.ph.i.i1.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i2.i, i64 64 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.bj
  br i1 %i.bm, label %._crit_edge.i.i8.i, label %.lr.ph.i.i1.i

.lr.ph.i.i1.i:                                    ; preds = %bb.o, %bb.n
  %.sroa.01.028.i.i2.i = phi ptr [ %i.bl, %bb.o ], [ %i.be, %bb.n ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i3.i = load <2 x i64>, ptr %.sroa.01.028.i.i2.i, align 1, !alias.scope !111, !noalias !112
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i2.i, i64 16
  %.sroa.0.0.copyload.i9.i.i4.i = load <2 x i64>, ptr %i.bn, align 1, !alias.scope !111, !noalias !113
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i2.i, i64 32
  %.sroa.0.0.copyload.i10.i.i5.i = load <2 x i64>, ptr %i.bo, align 1, !alias.scope !111, !noalias !114
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i2.i, i64 48
  %.sroa.0.0.copyload.i11.i.i6.i = load <2 x i64>, ptr %i.bp, align 1, !alias.scope !111, !noalias !115
  %i.bq = or <2 x i64> %.sroa.0.0.copyload.i9.i.i4.i, %.sroa.0.0.copyload.i.i.i3.i
  %i.br = or <2 x i64> %i.bq, %.sroa.0.0.copyload.i10.i.i5.i
  %i.bs = or <2 x i64> %i.br, %.sroa.0.0.copyload.i11.i.i6.i
  %i.bt = bitcast <2 x i64> %i.bs to <16 x i8>
  %i.bu = icmp slt <16 x i8> %i.bt, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = icmp eq i16 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

._crit_edge.i.i8.i:                               ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.by = icmp samesign eq i64 %i.bk, 0
  br i1 %i.by, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit, label %.lr.ph56

bb.p:                                             ; preds = %.lr.ph56
  %i.bz = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bx
  br i1 %i.ca, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit, label %.lr.ph56

.lr.ph56:                                         ; preds = %._crit_edge.i.i8.i, %bb.p
  %i.cb = phi ptr [ %i.bz, %bb.p ], [ %i.bj, %._crit_edge.i.i8.i ] ; 2 uses
  %.val.i.i.i9.i = load i8, ptr %i.cb, align 1, !alias.scope !111, !noalias !116, !noundef !4
  %i.cc = icmp sgt i8 %.val.i.i.i9.i, -1
  br i1 %i.cc, label %bb.p, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.q:                                             ; preds = %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit.i
  %i.cd = and i64 %i.bg, 56                       ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cd ; 7 uses
  %i.cf = and i64 %i.bg, 7                        ; 7 uses
  %.not.i12.i59 = icmp eq i64 %i.cd, 0
  br i1 %.not.i12.i59, label %._crit_edge62, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i13.i

bb.r:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i13.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i11.i61, i64 8
  %2 = add nsw i64 %.sroa.6.0.i10.i60, -8         ; 2 uses
  %.not.i12.i.a = icmp eq i64 %2, 0
  br i1 %.not.i12.i.a, label %._crit_edge62, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i13.i

._crit_edge62:                                    ; preds = %bb.r, %bb.q
  %i.ch = icmp samesign eq i64 %i.cf, 0
  br i1 %i.ch, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit, label %.lr.ph64

bb.s:                                             ; preds = %.lr.ph64
  %i.ci = icmp samesign eq i64 %i.cf, 1
  br i1 %i.ci, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit, label %.lr.ph64.1

.lr.ph64.1:                                       ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %.val.i.i15.i.1 = load i8, ptr %i.cj, align 1, !alias.scope !117, !noalias !118, !noundef !4
  %i.ck = icmp sgt i8 %.val.i.i15.i.1, -1
  br i1 %i.ck, label %bb.t, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.t:                                             ; preds = %.lr.ph64.1
  %i.cl = icmp samesign eq i64 %i.cf, 2
  br i1 %i.cl, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit, label %.lr.ph64.2

.lr.ph64.2:                                       ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %.val.i.i15.i.2 = load i8, ptr %i.cm, align 1, !alias.scope !117, !noalias !118, !noundef !4
  %i.cn = icmp sgt i8 %.val.i.i15.i.2, -1
  br i1 %i.cn, label %bb.u, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.u:                                             ; preds = %.lr.ph64.2
  %i.co = icmp samesign eq i64 %i.cf, 3
  br i1 %i.co, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit, label %.lr.ph64.3

.lr.ph64.3:                                       ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %.val.i.i15.i.3 = load i8, ptr %i.cp, align 1, !alias.scope !117, !noalias !118, !noundef !4
  %i.cq = icmp sgt i8 %.val.i.i15.i.3, -1
  br i1 %i.cq, label %bb.v, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.v:                                             ; preds = %.lr.ph64.3
  %i.cr = icmp samesign eq i64 %i.cf, 4
  br i1 %i.cr, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit, label %.lr.ph64.4

.lr.ph64.4:                                       ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.val.i.i15.i.4 = load i8, ptr %i.cs, align 1, !alias.scope !117, !noalias !118, !noundef !4
  %i.ct = icmp sgt i8 %.val.i.i15.i.4, -1
  br i1 %i.ct, label %bb.w, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.w:                                             ; preds = %.lr.ph64.4
  %i.cu = icmp samesign eq i64 %i.cf, 5
  br i1 %i.cu, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit, label %.lr.ph64.5

.lr.ph64.5:                                       ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 5
  %.val.i.i15.i.5 = load i8, ptr %i.cv, align 1, !alias.scope !117, !noalias !118, !noundef !4
  %i.cw = icmp sgt i8 %.val.i.i15.i.5, -1
  br i1 %i.cw, label %bb.x, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

bb.x:                                             ; preds = %.lr.ph64.5
  %i.cx = icmp samesign eq i64 %i.cf, 6
  br i1 %i.cx, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit, label %.lr.ph64.6

.lr.ph64.6:                                       ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  %.val.i.i15.i.6 = load i8, ptr %i.cy, align 1, !alias.scope !117, !noalias !118, !noundef !4
  %i.cz = icmp sgt i8 %.val.i.i15.i.6, -1
  %spec.select = select i1 %i.cz, i16 0, i16 2048
  br label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

.lr.ph64:                                         ; preds = %._crit_edge62
  %.val.i.i15.i = load i8, ptr %i.ce, align 1, !alias.scope !117, !noalias !118, !noundef !4
  %i.da = icmp sgt i8 %.val.i.i15.i, -1
  br i1 %i.da, label %bb.s, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i13.i: ; preds = %bb.q, %bb.r
  %.sroa.0.017.i11.i61 = phi ptr [ %i.cg, %bb.r ], [ %i.be, %bb.q ] ; 2 uses
  %.sroa.6.0.i10.i60 = phi i64 [ %2, %bb.r ], [ %i.cd, %bb.q ]
  %.sroa.012.0.copyload.i14.i = load i64, ptr %.sroa.0.017.i11.i61, align 1, !alias.scope !117
  %i.db = and i64 %.sroa.012.0.copyload.i14.i, -9187201950435737472
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.r, label %_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit

_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData8is_ascii.exit: ; preds = %.lr.ph64.6, %.lr.ph.i.i.i, %.lr.ph, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i.i, %.lr.ph55, %.lr.ph55.1, %.lr.ph55.2, %.lr.ph55.3, %.lr.ph55.4, %.lr.ph55.5, %.lr.ph55.6, %.lr.ph.i.i1.i, %bb.p, %.lr.ph56, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i13.i, %bb.s, %.lr.ph64, %.lr.ph64.1, %bb.t, %.lr.ph64.2, %bb.u, %.lr.ph64.3, %bb.v, %.lr.ph64.4, %bb.w, %.lr.ph64.5, %bb.x, %._crit_edge.i.i8.i, %._crit_edge62, %bb.a
  %.sroa.0.0 = phi i16 [ 0, %bb.a ], [ 2048, %.lr.ph55 ], [ 2048, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i13.i ], [ 2048, %.lr.ph ], [ 2048, %.lr.ph.i.i1.i ], [ 2048, %.lr.ph56 ], [ 0, %._crit_edge.i.i8.i ], [ 2048, %.lr.ph.i.i.i ], [ 2048, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsb9zoKkpXuBA_3zip.exit.i.i ], [ 0, %._crit_edge62 ], [ 0, %bb.s ], [ 2048, %.lr.ph64 ], [ 2048, %.lr.ph64.1 ], [ 0, %bb.t ], [ 2048, %.lr.ph64.2 ], [ 0, %bb.u ], [ 2048, %.lr.ph64.3 ], [ 0, %bb.v ], [ 2048, %.lr.ph64.4 ], [ 0, %bb.w ], [ 2048, %.lr.ph64.5 ], [ 0, %bb.x ], [ %spec.select, %.lr.ph64.6 ], [ 0, %bb.p ], [ 2048, %.lr.ph55.6 ], [ 2048, %.lr.ph55.5 ], [ 2048, %.lr.ph55.4 ], [ 2048, %.lr.ph55.3 ], [ 2048, %.lr.ph55.2 ], [ 2048, %.lr.ph55.1 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 222
  %i.de = load i8, ptr %i.dd, align 2, !range !5, !noundef !4
  %i.df = shl nuw nsw i8 %i.de, 3
  %i.dg = zext nneg i8 %i.df to i16
  %.sroa.01.0 = or disjoint i16 %.sroa.0.0, %i.dg
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.di = load i8, ptr %i.dh, align 4, !range !5, !noundef !4
  %i.dj = zext nneg i8 %i.di to i16
  %.sroa.02.0 = or disjoint i16 %.sroa.01.0, %i.dj
  ret i16 %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtCsb9zoKkpXuBA_3zip5writeINtNtB7_5types11FileOptionsNtB5_19ExtendedFileOptionsE16clear_extra_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !131 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !132
  %i.k = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 41) 40, i64 noundef range(i64 1, 9) 8) #16, !noalias !132 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.g, !prof !9

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #18
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtBG_3vec3VechEEECsb9zoKkpXuBA_3zip(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #19
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.f:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VechEEECsb9zoKkpXuBA_3zip.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.n, label %bb.j

.body:                                            ; preds = %bb.l, %bb.d, %bb.q, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.q ], [ %i.x, %bb.i ], [ %i.m, %bb.d ], [ %i.ac, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb9zoKkpXuBA_3zip5types11FileOptionsNtNtBG_5write19ExtendedFileOptionsEEBG_(ptr noalias noundef align 8 dereferenceable(88) %1) #19
          to label %bb.s unwind label %bb.r

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.u = load ptr, ptr %i.c, align 8, !alias.scope !135, !nonnull !4, !noundef !4
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !135
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VechEEECsb9zoKkpXuBA_3zip.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCsb9zoKkpXuBA_3zip(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VechEEECsb9zoKkpXuBA_3zip.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %i.c, align 8
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VechEEECsb9zoKkpXuBA_3zip.exit: ; preds = %bb.g, %bb.h
  store ptr %i.k, ptr %i.c, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.z, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !136
  %i.aa = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 41) 40, i64 noundef range(i64 1, 9) 8) #16, !noalias !136 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %bb.o, !prof !9

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #18
          to label %.noexc14 unwind label %bb.l

.noexc14:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtBG_3vec3VechEEECsb9zoKkpXuBA_3zip(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #19
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.n:                                             ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VechEEECsb9zoKkpXuBA_3zip.exit17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void

bb.o:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.ae = load ptr, ptr %i.o, align 8, !alias.scope !139, !nonnull !4, !noundef !4
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !noalias !139
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VechEEECsb9zoKkpXuBA_3zip.exit17

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCsb9zoKkpXuBA_3zip(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VechEEECsb9zoKkpXuBA_3zip.exit17 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aa, ptr %i.o, align 8
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VechEEECsb9zoKkpXuBA_3zip.exit17: ; preds = %bb.o, %bb.p
  store ptr %i.aa, ptr %i.o, align 8
  br label %bb.n

bb.r:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.s:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCsb9zoKkpXuBA_3zip5writeINtNtB7_5types11FileOptionsuE17into_full_options(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !146 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load <2 x i64>, ptr %1, align 8
  %i.d = load <4 x i16>, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load <2 x i32>, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.h = load i8, ptr %i.g, align 2, !range !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  %i.i = tail call noundef nonnull ptr @_RNvXsX_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCsb9zoKkpXuBA_3zip(), !noalias !147 ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !noalias !147
  %i.j = invoke noundef nonnull ptr @_RNvXsX_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCsb9zoKkpXuBA_3zip()
          to label %_RNvXso_NtCsb9zoKkpXuBA_3zip5writeNtB5_19ExtendedFileOptionsNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit unwind label %bb.b, !noalias !147

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !148
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VechEEECsb9zoKkpXuBA_3zip.exit.i

bb.c:                                             ; preds = %bb.b
end_hunk_0
