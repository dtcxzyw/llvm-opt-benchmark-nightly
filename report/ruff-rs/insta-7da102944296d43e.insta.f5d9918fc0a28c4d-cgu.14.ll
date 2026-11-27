Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.14?download=true
inline.NumInlined: 409
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCsl6EuCK7xub1_5insta6outputNtB2_15SnapshotPrinter10print_info:bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i: ; preds = %bb.x
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !139
  br label %_RNvNtCsl6EuCK7xub1_5insta6output10print_info.exit

bb.aa:                                            ; preds = %bb.n, %bb.d
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RNvNtCsl6EuCK7xub1_5insta6output10print_info.exit: ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsl6EuCK7xub1_5insta6outputNtB2_15SnapshotPrinter5print(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !242 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [40 x i8], align 8                ; 12 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [40 x i8], align 8               ; 12 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [40 x i8], align 8               ; 12 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [48 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [40 x i8], align 8               ; 12 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [40 x i8], align 8               ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [48 x i8], align 16              ; 8 uses
  %i.as = alloca [32 x i8], align 8               ; 8 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [64 x i8], align 8               ; 12 uses
  %i.av = alloca [64 x i8], align 8               ; 6 uses
  %i.aw = alloca [32 x i8], align 16              ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 11 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [32 x i8], align 8               ; 8 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [80 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 13 uses
  %i.bi = alloca [32 x i8], align 8               ; 12 uses
  %i.bj = alloca [24 x i8], align 8               ; 20 uses
  %i.bk = alloca [24 x i8], align 8               ; 18 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.9.sroa.0.i.i = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.9.sroa.9.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 4 uses
  %i.bq = alloca [24 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 9 uses
  %i.bs = alloca [24 x i8], align 8               ; 8 uses
  %i.bt = alloca [32 x i8], align 8               ; 8 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [32 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 5 uses
  %i.bx = alloca [24 x i8], align 8               ; 9 uses
  %i.by = alloca [24 x i8], align 8               ; 8 uses
  %i.bz = alloca [32 x i8], align 8               ; 8 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [4 x i8], align 4                ; 4 uses
  %i.ce = alloca [4 x i8], align 4                ; 4 uses
  %i.cf = alloca [24 x i8], align 8               ; 8 uses
  %i.cg = alloca [24 x i8], align 8               ; 8 uses
  %i.ch = alloca [32 x i8], align 8               ; 7 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [24 x i8], align 8               ; 4 uses
  %i.ck = alloca [24 x i8], align 8               ; 5 uses
  %i.cl = alloca [24 x i8], align 8               ; 9 uses
  %i.cm = alloca [24 x i8], align 8               ; 8 uses
  %i.cn = alloca [32 x i8], align 8               ; 7 uses
  %i.co = alloca [32 x i8], align 8               ; 7 uses
  %i.cp = alloca [24 x i8], align 8               ; 7 uses
  %i.cq = alloca [16 x i8], align 8               ; 5 uses
  %i.cr = alloca [32 x i8], align 8               ; 7 uses
  %i.cs = alloca [24 x i8], align 8               ; 9 uses
  %i.ct = alloca [32 x i8], align 8               ; 7 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.07 = alloca [24 x i8], align 8           ; 4 uses
  %i.cv = alloca [40 x i8], align 8               ; 11 uses
  %i.cw = alloca [16 x i8], align 8               ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.cy, null
  br i1 %.not, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.da = load i64, ptr %i.cz, align 8, !noundef !4
  store ptr %i.cy, ptr %i.cw, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.da, ptr %i.db, align 8
  %i.dc = tail call noundef i64 @_RNvNtCsl6EuCK7xub1_5insta5utils10term_width() ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store ptr %i.cw, ptr %i.cu, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.07, ptr noundef nonnull @44, ptr noundef nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07, i64 24, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i64 1095216660735, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store i16 1, ptr %.sroa.710.0..sroa_idx, align 8
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 34
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.813.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  %i.dd = icmp ugt i64 %i.dc, 65535
  br i1 %i.dd, label %bb.ip, label %bb.io, !prof !7

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscsnLevczSXa_7console5utils12StyledObjectNtNtCscdodAO9FK5_5alloc6string6StringEECsl6EuCK7xub1_5insta.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !245, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !245, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !245, !nonnull !4, !align !246, !noundef !4 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !245, !noundef !4 ; 8 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !245 ; 5 uses
  %i.do = load i32, ptr %0, align 8, !range !14, !alias.scope !245, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !alias.scope !245
  call void @_RNvNtCsl6EuCK7xub1_5insta6output22print_snapshot_summary(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef %i.dh, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %i.dj, ptr noalias noundef readonly captures(address, read_provenance) %i.dl, i64 %i.dn, i32 noundef %i.do, i32 %i.dq), !noalias !245
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.ds = load i8, ptr %i.dr, align 1, !range !15, !alias.scope !243, !noundef !4
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.du = call noundef i64 @_RNvNtCsl6EuCK7xub1_5insta5utils10term_width(), !noalias !247 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !248
  %i.dv = icmp ugt i64 %i.du, 65535
  br i1 %i.dv, label %bb.d, label %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit.i.i, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #13, !noalias !247
  unreachable

_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit.i.i: ; preds = %bb.c
  %i.dw = trunc nuw i64 %i.du to i16
  store ptr @9, ptr %i.ch, align 8, !noalias !248
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !248
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr null, ptr %i.dx, align 8, !noalias !248
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i16 %i.dw, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !248
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @50, ptr noundef nonnull %i.ch), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !248
  %i.dy = call noundef i64 @_RNvNtCsl6EuCK7xub1_5insta5utils10term_width(), !noalias !247 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ea = load i8, ptr %i.dz, align 8, !range !15, !alias.scope !248, !noundef !4
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.e, label %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit._crit_edge.i.i

_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit._crit_edge.i.i: ; preds = %bb.e, %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit.i.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 39 to ptr)), !noalias !247
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 192 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 16, !range !8, !noalias !247, !noundef !4
  %i.ee = icmp eq i64 %i.ed, -1
  br i1 %i.ee, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit.i.i
  call fastcc void @_RNvMNtCsl6EuCK7xub1_5insta6outputNtB2_15SnapshotPrinter10print_info(ptr nonnull %i.dj), !noalias !247
  br label %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit._crit_edge.i.i

bb.f:                                             ; preds = %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !248
  %.not164.i.i = icmp eq ptr %i.dl, null
  br i1 %.not164.i.i, label %bb.ac, label %bb.ab, !prof !7

bb.g:                                             ; preds = %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !249
  store i64 0, ptr %i.cg, align 8, !noalias !249
  %.sroa.42.0..sroa_idx.i168.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i168.i.i, align 8, !noalias !249
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !249
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 1610612768, ptr %i.ef, align 8, !noalias !249
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !249
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 2, !noalias !249
  store ptr %i.cg, ptr %i.cf, align 8, !noalias !249
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr @80, ptr %i.eg, align 8, !noalias !249
  %i.eh = invoke noundef zeroext i1 @_RNvXs4_NtCsl6EuCK7xub1_5insta8snapshotNtB5_20TextSnapshotContentsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ec, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %bb.i unwind label %bb.h, !noalias !250

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg) #14
          to label %common.resume unwind label %bb.k, !noalias !250

bb.i:                                             ; preds = %bb.g
  br i1 %i.eh, label %bb.j, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsl6EuCK7xub1_5insta8snapshot20TextSnapshotContentsNtB5_12SpecToString14spec_to_stringBB_.exit.i.i, !prof !7

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #13
          to label %.noexc.i.i.i unwind label %bb.h, !noalias !250

.noexc.i.i.i:                                     ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !250
  unreachable

common.resume:                                    ; preds = %bb.iq, %bb.is, %bb.h, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w, %.body.i.i, %bb.am, %.body.i12.i, %bb.bg, %.body1237.i.i, %bb.bw, %bb.ci, %.body1257.i.i, %.body1244.i.i, %bb.ct, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsl6EuCK7xub1_5insta.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i1288.i.i, %bb.eb, %bb.fu
  %common.resume.op = phi { ptr, i32 } [ %i.wk, %bb.is ], [ %i.rf, %bb.fu ], [ %i.gs, %bb.am ], [ %lpad.loopexit.split-lp473, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ei, %bb.h ], [ %i.gc, %bb.w ], [ %.pn.i.i, %.body.i.i ], [ %i.li, %bb.eb ], [ %i.hw, %bb.bg ], [ %.pn1211.pn.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsl6EuCK7xub1_5insta.exit.i.i ], [ %i.io, %bb.bw ], [ %i.jf, %bb.ci ], [ %i.jp, %bb.ct ], [ %.pn.i13.i, %.body.i12.i ], [ %i.ja, %.body1244.i.i ], [ %i.jk, %.body1257.i.i ], [ %.pn1190.i.i, %.body1237.i.i ], [ %.pn1211.pn.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i1288.i.i ], [ %i.wj, %bb.iq ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsl6EuCK7xub1_5insta8snapshot20TextSnapshotContentsNtB5_12SpecToString14spec_to_stringBB_.exit.i.i: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !248
  %i.ek = icmp ugt i64 %i.dy, 65542
  br i1 %i.ek, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsl6EuCK7xub1_5insta8snapshot20TextSnapshotContentsNtB5_12SpecToString14spec_to_stringBB_.exit.i.i
  %1 = call i64 @llvm.usub.sat.i64(i64 %i.dy, i64 7)
  %i.el = trunc nuw i64 %1 to i16                 ; 2 uses
  store ptr @9, ptr %i.cr, align 8, !noalias !248
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !248
  %i.em = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr null, ptr %i.em, align 8, !noalias !248
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i16 %i.el, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !248
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @10, ptr noundef nonnull %i.cr)
          to label %.lr.ph.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !247

bb.m:                                             ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsl6EuCK7xub1_5insta8snapshot20TextSnapshotContentsNtB5_12SpecToString14spec_to_stringBB_.exit.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !247

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.u, %bb.t, %select.unfold.i.i.i.i.i, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i, %bb.m, %bb.l
  %lpad.loopexit.split-lp473 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs) #14
          to label %common.resume unwind label %bb.aa, !noalias !247

.lr.ph.i.i:                                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !248
  %i.en = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !248, !nonnull !4, !noundef !4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !248, !noundef !4 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.22.sroa.8.0..sroa.22.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.22.sroa.9.0..sroa.22.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 18
  %.sroa.4140.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.4144.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  br label %bb.n

bb.n:                                             ; preds = %bb.z, %.lr.ph.i.i
  %.lcssa196212.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.lcssa196210.i.i, %bb.z ] ; 3 uses
  %.pre.i2.i.i.i.i.i198203.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.pre.i2.i.i.i.i.i197.i.i, %bb.z ] ; 4 uses
  %i.et = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ga, %bb.z ]
  %i.eu = icmp ult i64 %i.eq, %.lcssa196212.i.i
  br i1 %i.eu, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl6EuCK7xub1_5insta.exit.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %bb.n, %bb.r
  %i.ev = phi i64 [ %i.fk, %bb.r ], [ %.lcssa196212.i.i, %bb.n ] ; 4 uses
  %i.ew = sub nuw i64 %i.eq, %i.ev                ; 5 uses
  %i.ex = getelementptr i8, ptr %i.eo, i64 %i.ev  ; 3 uses
  %i.ey = icmp samesign ult i64 %i.ew, 16
  br i1 %i.ey, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.o

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %i.ez = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ex, i64 noundef range(i64 0, -9223372036854775808) %i.ew)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !252

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ew, %bb.p ], [ %.sroa.01.05.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i ], [ 0, %bb.p ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.fa = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i, 0
  %i.fb = insertvalue { i64, i64 } %i.fa, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.p
  %.sroa.01.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ff, %bb.p ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !253, !noalias !252, !noundef !4
  %i.fe = icmp eq i8 %i.fd, 10
  br i1 %i.fe, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ff = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ff, %i.ew
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.o
  %.merged.i.i.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.fb, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.ez, %bb.o ] ; 2 uses
  %i.fg = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i.i, 0
  %i.fh = trunc nuw i64 %i.fg to i1
  br i1 %i.fh, label %bb.q, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl6EuCK7xub1_5insta.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i
  %i.fi = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.fj = add i64 %i.ev, 1
  %i.fk = add i64 %i.fj, %i.fi                    ; 6 uses
  %.not13.i.i.i.i.i.i.i.i = icmp ugt i64 %i.fk, %i.eq
  %i.fl = add i64 %i.fi, %i.ev
  %or.cond.i.i.i.i.i.i.not.i.i = icmp ult i64 %i.fl, %i.eq
  br i1 %or.cond.i.i.i.i.i.i.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl6EuCK7xub1_5insta.exit.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.fm = getelementptr i8, ptr %i.ex, i64 %i.fi
  %lhsc.i.i = load i8, ptr %i.fm, align 1, !noalias !247
  %i.fn = icmp eq i8 %lhsc.i.i, 10
  br i1 %i.fn, label %select.unfold.i.i.i.i.i, label %bb.r

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl6EuCK7xub1_5insta.exit.i.i.i.i.i.i.i: ; preds = %bb.r, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i, %bb.n
  %.lcssa196211.i.i = phi i64 [ %.lcssa196212.i.i, %bb.n ], [ %i.eq, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i ], [ %i.fk, %bb.r ]
  %.not.i3.i.i.i.i.i.not.i.i = icmp eq i64 %i.eq, %.pre.i2.i.i.i.i.i198203.i.i
  br i1 %.not.i3.i.i.i.i.i.not.i.i, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i, label %select.unfold.i.i.i.i.i

select.unfold.i.i.i.i.i:                          ; preds = %bb.s, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl6EuCK7xub1_5insta.exit.i.i.i.i.i.i.i
  %.lcssa196210.i.i = phi i64 [ %.lcssa196211.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl6EuCK7xub1_5insta.exit.i.i.i.i.i.i.i ], [ %i.fk, %bb.s ]
  %.pre.i2.i.i.i.i.i197.i.i = phi i64 [ %.pre.i2.i.i.i.i.i198203.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl6EuCK7xub1_5insta.exit.i.i.i.i.i.i.i ], [ %i.fk, %bb.s ]
  %i.fo = phi i1 [ true, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl6EuCK7xub1_5insta.exit.i.i.i.i.i.i.i ], [ false, %bb.s ]
  %.pn215.i.i = phi i64 [ %i.eq, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl6EuCK7xub1_5insta.exit.i.i.i.i.i.i.i ], [ %i.fk, %bb.s ]
  %.sroa.4.1.i.i.i.i.i.i.i = sub nuw i64 %.pn215.i.i, %.pre.i2.i.i.i.i.i198203.i.i ; 4 uses
  %.sroa.0.1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.pre.i2.i.i.i.i.i198203.i.i ; 4 uses
  %i.fp = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.fq = insertvalue { ptr, i64 } %i.fp, i64 %.sroa.4.1.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !254
  store i32 10, ptr %i.ce, align 4, !noalias !254
  %i.fr = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef 1)
          to label %.noexc170.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !255

.noexc170.i.i:                                    ; preds = %select.unfold.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !254
  br i1 %i.fr, label %bb.t, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i

bb.t:                                             ; preds = %.noexc170.i.i
  %i.fs = add i64 %.sroa.4.1.i.i.i.i.i.i.i, -1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !254
  store i32 13, ptr %i.cd, align 4, !noalias !254
  %i.ft = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.i, i64 noundef %i.fs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef 1)
          to label %.noexc171.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !255 ; 2 uses

.noexc171.i.i:                                    ; preds = %bb.t
  %i.fu = insertvalue { ptr, i64 } %i.fq, i64 %i.fs, 1
  %i.fv = add i64 %.sroa.4.1.i.i.i.i.i.i.i, -2
  %.sroa.0.0.i15.i.i.i.i.i.i.i = select i1 %i.ft, ptr %.sroa.0.1.i.i.i.i.i.i.i, ptr null
  %i.fw = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i.i.i.i.i, 0
  %i.fx = insertvalue { ptr, i64 } %i.fw, i64 %i.fv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !254
  %..i.i.i.i.i.i.i = select i1 %i.ft, { ptr, i64 } %i.fx, { ptr, i64 } %i.fu
  br label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i

_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %.noexc171.i.i, %.noexc170.i.i
  %.merged.i.i.i.i.i.i.i = phi { ptr, i64 } [ %..i.i.i.i.i.i.i, %.noexc171.i.i ], [ %i.fq, %.noexc170.i.i ] ; 2 uses
  %i.fy = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i.i, 0 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i, label %bb.u

bb.u:                                             ; preds = %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.fz = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.ga = add i64 %i.et, 1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !248
  store ptr %i.fy, ptr %i.cq, align 8, !noalias !248
  store i64 %i.fz, ptr %i.er, align 8, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !248
  store i64 %i.ga, ptr %i.cp, align 8, !noalias !248
  store i64 1095216660486, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !noalias !248
  store i16 3, ptr %.sroa.22.sroa.8.0..sroa.22.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !248
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.22.sroa.9.0..sroa.22.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !248
  store ptr %i.cp, ptr %i.co, align 8, !noalias !248
  store ptr @_RNvXsK_NtCscsnLevczSXa_7console5utilsINtB5_12StyledObjectjENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.4140.0..sroa_idx.i.i, align 8, !noalias !248
  store ptr %i.cq, ptr %i.es, align 8, !noalias !248
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.4144.0..sroa_idx.i.i, align 8, !noalias !248
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @14, ptr noundef nonnull %i.co)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !247

_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i: ; preds = %bb.z, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl6EuCK7xub1_5insta.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !248
  store ptr @9, ptr %i.cn, align 8, !noalias !248
  %.sroa.4148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.4148.0..sroa_idx.i.i, align 8, !noalias !248
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr null, ptr %i.gb, align 8, !noalias !248
  %.sroa.4153.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store i16 %i.el, ptr %.sroa.4153.0..sroa_idx.i.i, align 8, !noalias !248
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @11, ptr noundef nonnull %i.cn)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !247

bb.v:                                             ; preds = %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !248
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i.i unwind label %bb.w, !noalias !247

bb.w:                                             ; preds = %bb.v
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %common.resume unwind label %bb.x, !noalias !247

bb.x:                                             ; preds = %bb.w
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !247
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i.i: ; preds = %bb.v
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !248
  br label %_RNvMNtCsl6EuCK7xub1_5insta6outputNtB2_15SnapshotPrinter19print_snapshot_diff.exit

end_hunk_0
begin_hunk_1_@_RNvMNtCsl6EuCK7xub1_5insta6outputNtB2_15SnapshotPrinter5print:bb.a
  br i1 %i.ns, label %bb.en, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i31.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i31.i.i.i: ; preds = %.lr.ph.i25.i.i.i
  %i.nt = and i8 %i.nr, 31
  %i.nu = zext nneg i8 %i.nt to i32               ; 3 uses
  %i.nv = icmp ne ptr %i.nq, %i.no
  call void @llvm.assume(i1 %i.nv)
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i30.i.i.i, i64 2 ; 3 uses
  %i.nx = load i8, ptr %i.nq, align 1, !alias.scope !285, !noalias !286, !noundef !4
  %i.ny = shl nuw nsw i32 %i.nu, 6
  %i.nz = and i8 %i.nx, 63
  %i.oa = zext nneg i8 %i.nz to i32               ; 2 uses
  %i.ob = or disjoint i32 %i.ny, %i.oa
  %i.oc = icmp samesign ugt i8 %i.nr, -33
  br i1 %i.oc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i46.i.i.i, label %bb.eo

bb.en:                                            ; preds = %.lr.ph.i25.i.i.i
  %i.od = zext nneg i8 %i.nr to i32
  br label %bb.eo

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i46.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i31.i.i.i
  %i.oe = icmp ne ptr %i.nw, %i.no
  call void @llvm.assume(i1 %i.oe)
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i30.i.i.i, i64 3 ; 3 uses
  %i.og = load i8, ptr %i.nw, align 1, !alias.scope !285, !noalias !286, !noundef !4
  %i.oh = shl nuw nsw i32 %i.oa, 6
  %i.oi = and i8 %i.og, 63
  %i.oj = zext nneg i8 %i.oi to i32
  %i.ok = or disjoint i32 %i.oh, %i.oj            ; 2 uses
  %i.ol = shl nuw nsw i32 %i.nu, 12
  %i.om = or disjoint i32 %i.ok, %i.ol
  %i.on = icmp samesign ugt i8 %i.nr, -17
  br i1 %i.on, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i47.i.i.i, label %bb.eo

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i47.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i46.i.i.i
  %i.oo = icmp ne ptr %i.of, %i.no
  call void @llvm.assume(i1 %i.oo)
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i30.i.i.i, i64 4
  %i.oq = load i8, ptr %i.of, align 1, !alias.scope !285, !noalias !286, !noundef !4
  %i.or = shl nuw nsw i32 %i.nu, 18
  %i.os = and i32 %i.or, 1835008
  %i.ot = shl nuw nsw i32 %i.ok, 6
  %i.ou = and i8 %i.oq, 63
  %i.ov = zext nneg i8 %i.ou to i32
  %i.ow = or disjoint i32 %i.ot, %i.ov
  %i.ox = or disjoint i32 %i.ow, %i.os
  br label %bb.eo

bb.eo:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i47.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i46.i.i.i, %bb.en, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i31.i.i.i
  %.sroa.0.1.ph.i32.i.i.i = phi ptr [ %i.nw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i31.i.i.i ], [ %i.of, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i46.i.i.i ], [ %i.op, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i47.i.i.i ], [ %i.nq, %bb.en ] ; 2 uses
  %.sroa.4.0.i.ph.i33.i.i.i = phi i32 [ %i.ob, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i31.i.i.i ], [ %i.om, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i46.i.i.i ], [ %i.ox, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i47.i.i.i ], [ %i.od, %bb.en ]
  %.sroa.4.0.i.ph.fr.i34.i.i.i = freeze i32 %.sroa.4.0.i.ph.i33.i.i.i ; 4 uses
  %i.oy = icmp samesign ult i32 %.sroa.4.0.i.ph.fr.i34.i.i.i, 1114112
  call void @llvm.assume(i1 %i.oy)
  %i.oz = icmp eq i32 %.sroa.4.0.i.ph.fr.i34.i.i.i, 10 ; 3 uses
  %i.pa = icmp ne i32 %.sroa.012.029.i26.i.i.i, 13 ; 3 uses
  %i.pb = and i1 %i.pa, %i.oz
  %.sroa.08.1.i35.i.i.i = select i1 %i.pb, i8 1, i8 %.sroa.08.026.i29.i.i.i ; 2 uses
  %i.pc = or i1 %i.pa, %i.oz
  %.sroa.07.2.i36.i.i.i = select i1 %i.pc, i8 %.sroa.07.027.i28.i.i.i, i8 1 ; 2 uses
  %i.pd = xor i1 %i.pa, true
  %i.pe = and i1 %i.oz, %i.pd
  %.sroa.06.1.i37.i.i.i = select i1 %i.pe, i8 1, i8 %.sroa.06.028.i27.i.i.i ; 2 uses
  %i.pf = icmp eq ptr %.sroa.0.1.ph.i32.i.i.i, %i.no
  br i1 %i.pf, label %._crit_edge.i38.i.i.i, label %.lr.ph.i25.i.i.i

._crit_edge.i38.i.i.i:                            ; preds = %bb.eo
  %i.pg = icmp eq i32 %.sroa.4.0.i.ph.fr.i34.i.i.i, 13
  %.sroa.3.0.insert.ext.i39.i.i.i = zext nneg i8 %.sroa.08.1.i35.i.i.i to i24
  %.sroa.3.0.insert.shift.i40.i.i.i = shl nuw nsw i24 %.sroa.3.0.insert.ext.i39.i.i.i, 16
  %.sroa.2.0.insert.ext.i41.i.i.i = zext nneg i8 %.sroa.06.1.i37.i.i.i to i24
  %.sroa.2.0.insert.shift.i42.i.i.i = shl nuw nsw i24 %.sroa.2.0.insert.ext.i41.i.i.i, 8
  %.sroa.2.0.insert.insert.i43.i.i.i = or disjoint i24 %.sroa.2.0.insert.shift.i42.i.i.i, %.sroa.3.0.insert.shift.i40.i.i.i
  %i.ph = zext nneg i8 %.sroa.07.2.i36.i.i.i to i24
  %spec.select.i44.i.i.i = select i1 %i.pg, i24 1, i24 %i.ph
  %i.pi = or disjoint i24 %.sroa.2.0.insert.insert.i43.i.i.i, %spec.select.i44.i.i.i
  br label %_RNvNtCsl6EuCK7xub1_5insta6output15detect_newlines.exit48.i.i.i

_RNvNtCsl6EuCK7xub1_5insta6output15detect_newlines.exit48.i.i.i: ; preds = %._crit_edge.i38.i.i.i, %_RNvNtCsl6EuCK7xub1_5insta6output15detect_newlines.exit.i.i.i
  %.sroa.0.0.insert.insert.i45.i.i.i = phi i24 [ 0, %_RNvNtCsl6EuCK7xub1_5insta6output15detect_newlines.exit.i.i.i ], [ %i.pi, %._crit_edge.i38.i.i.i ] ; 3 uses
  %.sroa.012.2.extract.trunc.i.i.i = icmp samesign ugt i24 %.sroa.0.0.insert.insert.i45.i.i.i, 65535
  %i.pj = and i24 %.sroa.0.0.insert.insert.i45.i.i.i, 256
  %.not16.i.i.i = icmp ne i24 %i.pj, 0            ; 2 uses
  %spec.select17.i.i.i = select i1 %.not15.i.i.i, i1 true, i1 %.sroa.012.2.extract.trunc.i.i.i ; 3 uses
  %i.pk = trunc i24 %.sroa.0.0.insert.insert.i45.i.i.i to i1
  %i.pl = select i1 %i.nm, i1 true, i1 %i.pk      ; 2 uses
  br i1 %.not14.i.i.i, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %_RNvNtCsl6EuCK7xub1_5insta6output15detect_newlines.exit48.i.i.i
  br i1 %i.pl, label %bb.es, label %bb.er

bb.eq:                                            ; preds = %_RNvNtCsl6EuCK7xub1_5insta6output15detect_newlines.exit48.i.i.i
  br i1 %i.pl, label %bb.et, label %_RNvNtCsl6EuCK7xub1_5insta6output15newlines_matter.exit.i.i

bb.er:                                            ; preds = %bb.ep
  %spec.select19.i.i.i = select i1 %.not16.i.i.i, i1 %spec.select17.i.i.i, i1 false
  br label %_RNvNtCsl6EuCK7xub1_5insta6output15newlines_matter.exit.i.i

bb.es:                                            ; preds = %bb.ep
  br i1 %.not16.i.i.i, label %bb.et, label %_RNvNtCsl6EuCK7xub1_5insta6output15newlines_matter.exit.i.i

bb.et:                                            ; preds = %bb.es, %bb.eq
  br label %_RNvNtCsl6EuCK7xub1_5insta6output15newlines_matter.exit.i.i

_RNvNtCsl6EuCK7xub1_5insta6output15newlines_matter.exit.i.i: ; preds = %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ej, %_RNvNtCsl6EuCK7xub1_5insta6output16trailing_newline.exit24.i.i.i
  %.sroa.0.0.i.i.i = phi i1 [ true, %bb.ej ], [ true, %_RNvNtCsl6EuCK7xub1_5insta6output16trailing_newline.exit24.i.i.i ], [ true, %bb.et ], [ %spec.select19.i.i.i, %bb.er ], [ %spec.select17.i.i.i, %bb.es ], [ %spec.select17.i.i.i, %bb.eq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !259
  %i.pm = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.pn = getelementptr inbounds nuw i8, ptr %i.bf, i64 25
  store i8 2, ptr %i.pn, align 1, !noalias !259
  %.sroa.4237.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i8 1, ptr %i.pm, align 8, !noalias !259
  store i64 1, ptr %i.bf, align 8, !noalias !259
  store i64 0, ptr %.sroa.4237.0..sroa_idx.i.i, align 8, !noalias !259
  %.sroa.5244.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 500000000, ptr %.sroa.5244.0..sroa_idx.i.i, align 8, !noalias !259
  invoke void @_RINvMs_NtCshFZddwsEKsN_7similar4textNtB5_14TextDiffConfig10diff_lineseECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.045.0.i.i, i64 noundef %.sroa.548.0.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.053.0.i.i, i64 noundef %.sroa.556.0.i.i)
          to label %bb.eu unwind label %bb.dc

bb.eu:                                            ; preds = %_RNvNtCsl6EuCK7xub1_5insta6output15newlines_matter.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !259
  %i.po = load i64, ptr %i.bk, align 8, !range !8, !noalias !259, !noundef !4
  %.not1197.i.i = icmp eq i64 %i.po, -1
  br i1 %.not1197.i.i, label %bb.ey, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !259
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !259
  store ptr %i.pp, ptr %i.bd, align 8, !noalias !259
  %.sroa.4249.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.4249.0..sroa_idx.i.i, align 8, !noalias !259
  store ptr @28, ptr %i.be, align 8, !noalias !259
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !259
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 1095216660481, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !noalias !259
  %.sroa.563.sroa.6.0..sroa.563.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i16 0, ptr %.sroa.563.sroa.6.0..sroa.563.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !259
  %.sroa.563.sroa.7.0..sroa.563.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 26
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.563.sroa.7.0..sroa.563.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !259
  store ptr %i.be, ptr %i.bc, align 8, !noalias !259
  %.sroa.4297.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXsK_NtCscsnLevczSXa_7console5utilsINtB5_12StyledObjectNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsENtBV_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.4297.0..sroa_idx.i.i, align 8, !noalias !259
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @19, ptr noundef nonnull %i.bc)
          to label %bb.ex unwind label %bb.ew

.body1308.i.i:                                    ; preds = %bb.fi, %bb.ff, %bb.ew
  %.pn1211.i.i = phi { ptr, i32 } [ %.pn1209.i.i, %bb.ff ], [ %i.pq, %bb.ew ], [ %i.qu, %bb.fi ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCshFZddwsEKsN_7similar4text8TextDiffeEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(80) %i.bg) #14
          to label %bb.cy unwind label %bb.bi

bb.ew:                                            ; preds = %bb.fm, %bb.fl, %bb.fj, %bb.fc, %bb.fb, %bb.ez, %bb.ev
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %.body1308.i.i

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !259
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eu
  %i.pr = load i64, ptr %i.bj, align 8, !range !8, !noalias !259, !noundef !4
  %.not1198.i.i = icmp eq i64 %i.pr, -1
  br i1 %.not1198.i.i, label %bb.fb, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !259
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !259
  store ptr %i.ps, ptr %i.ba, align 8, !noalias !259
  %.sroa.4301.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.4301.0..sroa_idx.i.i, align 8, !noalias !259
  store ptr @29, ptr %i.bb, align 8, !noalias !259
  %.sroa.466.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ba, ptr %.sroa.466.0..sroa_idx.i.i, align 8, !noalias !259
  %.sroa.567.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 1095216660482, ptr %.sroa.567.0..sroa_idx.i.i, align 8, !noalias !259
  %.sroa.567.sroa.6.0..sroa.567.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i16 0, ptr %.sroa.567.sroa.6.0..sroa.567.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !259
  %.sroa.567.sroa.7.0..sroa.567.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 26
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.567.sroa.7.0..sroa.567.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !259
  store ptr %i.bb, ptr %i.az, align 8, !noalias !259
  %.sroa.4349.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @_RNvXsK_NtCscsnLevczSXa_7console5utilsINtB5_12StyledObjectNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsENtBV_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.4349.0..sroa_idx.i.i, align 8, !noalias !259
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @19, ptr noundef nonnull %i.az)
          to label %bb.fa unwind label %bb.ew

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !259
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !259
  %2 = call i64 @llvm.usub.sat.i64(i64 %i.gu, i64 13)
  %i.pt = trunc nuw i64 %2 to i16                 ; 3 uses
  store ptr @9, ptr %i.ay, align 8, !noalias !259
  %.sroa.4353.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.4353.0..sroa_idx.i.i, align 8, !noalias !259
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr null, ptr %i.pu, align 8, !noalias !259
  %.sroa.4358.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i16 %i.pt, ptr %.sroa.4358.0..sroa_idx.i.i, align 8, !noalias !259
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @30, ptr noundef nonnull %i.ay)
          to label %bb.fc unwind label %bb.ew

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !259
  %i.pv = load i64, ptr %i.bk, align 8, !range !8, !noalias !259, !noundef !4
  %i.pw = load i64, ptr %i.bj, align 8, !range !8, !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !259
  invoke void @_RNvMs1_NtCshFZddwsEKsN_7similar4textINtB5_8TextDiffeE11grouped_opsCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bg, i64 noundef 4)
          to label %bb.fd unwind label %bb.ew

bb.fd:                                            ; preds = %bb.fc
  %.not1199.i.i = icmp eq i64 %i.pv, -1
  %.not1200.i.i = icmp eq i64 %i.pw, -1
  %narrow.i.i = select i1 %.not1199.i.i, i1 true, i1 %.not1200.i.i ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !noalias !259, !nonnull !4, !noundef !4 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !noalias !259, !noundef !4 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.qa, 24
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 %.idx.i.i
  %i.qc = icmp eq i64 %i.qa, 0
  br i1 %i.qc, label %._crit_edge.i.i, label %.lr.ph1525.i.i

.lr.ph1525.i.i:                                   ; preds = %bb.fd
  %i.qd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.4368.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.qe = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.qf = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %.sroa.278.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.278.sroa.8.0..sroa.278.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.278.sroa.9.0..sroa.278.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 18
  %.sroa.483.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.584.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.584.sroa.6.0..sroa.584.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.584.sroa.7.0..sroa.584.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 26
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.4597.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.4601.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.qj = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 4 uses
  %.sroa.4521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.7523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.sroa.8526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 34
  %.sroa.4630.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.2481.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.7485.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.8492.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 34
  %.sroa.4620.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %.sroa.291.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.291.sroa.6.0..sroa.291.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.291.sroa.7.0..sroa.291.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 18
  %.sroa.497.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.598.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.598.sroa.6.0..sroa.598.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.598.sroa.7.0..sroa.598.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 26
  %.sroa.4826.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.4830.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.qm = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.4834.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.4762.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.7764.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.8767.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 34
  %.sroa.4863.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.2721.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.7725.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.8732.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 34
  %.sroa.4853.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.2105.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2105.sroa.6.0..sroa.2105.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.2105.sroa.7.0..sroa.2105.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 18
  %.sroa.2111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.2111.sroa.8.0..sroa.2111.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.2111.sroa.9.0..sroa.2111.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 18
  %.sroa.41061.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.41065.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.4986.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.7988.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.8991.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 34
  %.sroa.41078.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 6 uses
  br label %bb.fh

.loopexit1397.i.i:                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtNtCshFZddwsEKsN_7similar4text6inline12InlineChangeeEEL_EECsl6EuCK7xub1_5insta.exit1327.i.i, %bb.fw
  %.sroa.069.2.lcssa.i.i = phi i1 [ %.sroa.069.11524.i.i, %bb.fw ], [ %.sroa.069.3.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtNtCshFZddwsEKsN_7similar4text6inline12InlineChangeeEEL_EECsl6EuCK7xub1_5insta.exit1327.i.i ] ; 2 uses
  %i.qp = icmp eq ptr %i.qs, %i.qb
  br i1 %i.qp, label %._crit_edge.i.i, label %bb.fh

.body1325.i.i:                                    ; preds = %.loopexit.split-lp1399.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gp, %bb.go, %bb.ge, %bb.gd
  %.pn1209.i.i = phi { ptr, i32 } [ %.pn1207.i.i, %bb.ge ], [ %i.sr, %bb.go ], [ %.pn1207.i.i, %bb.gd ], [ %i.sr, %bb.gp ], [ %lpad.loopexit.split-lp410, %.loopexit.split-lp1399.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtCshFZddwsEKsN_7similar5types6DiffOpEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.ff unwind label %bb.fe

bb.fe:                                            ; preds = %.body1325.i.i
  %i.qq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body1266.i.i unwind label %bb.fg

bb.ff:                                            ; preds = %.body1325.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body1308.i.i unwind label %bb.bi

bb.fg:                                            ; preds = %bb.fe
  %i.qr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

.loopexit.split-lp1399.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fz, %.lr.ph1521.i.i, %bb.fx
  %lpad.loopexit.split-lp410 = landingpad { ptr, i32 }
          cleanup
  br label %.body1325.i.i

bb.fh:                                            ; preds = %.loopexit1397.i.i, %.lr.ph1525.i.i
  %.sroa.069.11524.i.i = phi i1 [ %narrow.i.i, %.lr.ph1525.i.i ], [ %.sroa.069.2.lcssa.i.i, %.loopexit1397.i.i ] ; 2 uses
  %.sroa.01372.01523.i.i = phi ptr [ %i.py, %.lr.ph1525.i.i ], [ %i.qs, %.loopexit1397.i.i ] ; 3 uses
  %.sroa.71373.01522.i.i = phi i64 [ 0, %.lr.ph1525.i.i ], [ %i.qt, %.loopexit1397.i.i ] ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.01372.01523.i.i, i64 24 ; 2 uses
  %i.qt = add nuw nsw i64 %.sroa.71373.01522.i.i, 1
  %.not1202.i.i = icmp eq i64 %.sroa.71373.01522.i.i, 0
  br i1 %.not1202.i.i, label %bb.fw, label %bb.fx

._crit_edge.i.i:                                  ; preds = %.loopexit1397.i.i, %bb.fd
  %.sroa.069.1.lcssa.i.i = phi i1 [ %narrow.i.i, %bb.fd ], [ %.sroa.069.2.lcssa.i.i, %.loopexit1397.i.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtCshFZddwsEKsN_7similar5types6DiffOpEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.fj unwind label %bb.fi

bb.fi:                                            ; preds = %._crit_edge.i.i
  %i.qu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body1308.i.i unwind label %bb.fk

bb.fj:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtCshFZddwsEKsN_7similar5types6DiffOpEEECsl6EuCK7xub1_5insta.exit1310.i.i unwind label %bb.ew

bb.fk:                                            ; preds = %bb.fi
  %i.qv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtCshFZddwsEKsN_7similar5types6DiffOpEEECsl6EuCK7xub1_5insta.exit1310.i.i: ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !259
  br i1 %.sroa.069.1.lcssa.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtCshFZddwsEKsN_7similar5types6DiffOpEEECsl6EuCK7xub1_5insta.exit1310.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !259
  store ptr @31, ptr %i.x, align 8, !noalias !259
  %.sroa.4120.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %.sroa.4120.0..sroa_idx.i.i, align 8, !noalias !259
  %.sroa.5121.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 1095216660735, ptr %.sroa.5121.0..sroa_idx.i.i, align 8, !noalias !259
  %.sroa.5121.sroa.6.0..sroa.5121.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i16 2, ptr %.sroa.5121.sroa.6.0..sroa.5121.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !259
  %.sroa.5121.sroa.7.0..sroa.5121.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 26
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.5121.sroa.7.0..sroa.5121.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !259
  store ptr @32, ptr %i.w, align 8, !noalias !259
  %.sroa.4124.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 23, ptr %.sroa.4124.0..sroa_idx.i.i, align 8, !noalias !259
  %.sroa.5125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1095216660486, ptr %.sroa.5125.0..sroa_idx.i.i, align 8, !noalias !259
  %.sroa.5125.sroa.6.0..sroa.5125.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i16 0, ptr %.sroa.5125.sroa.6.0..sroa.5125.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !259
  %.sroa.5125.sroa.7.0..sroa.5125.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 26
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.5125.sroa.7.0..sroa.5125.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !259
  store ptr @9, ptr %i.v, align 8, !noalias !259
  %.sroa.41160.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.41160.0..sroa_idx.i.i, align 8, !noalias !259
  %i.qw = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.x, ptr %i.qw, align 8, !noalias !259
  %.sroa.41164.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsK_NtCscsnLevczSXa_7console5utilsINtB5_12StyledObjectReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.41164.0..sroa_idx.i.i, align 8, !noalias !259
  %i.qx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.qx, align 8, !noalias !259
  %.sroa.41168.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr @_RNvXsK_NtCscsnLevczSXa_7console5utilsINtB5_12StyledObjectReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.41168.0..sroa_idx.i.i, align 8, !noalias !259
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @33, ptr noundef nonnull %i.v)
          to label %bb.fn unwind label %bb.ew

bb.fm:                                            ; preds = %bb.fn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtCshFZddwsEKsN_7similar5types6DiffOpEEECsl6EuCK7xub1_5insta.exit1310.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !259
  store ptr @9, ptr %i.u, align 8, !noalias !259
  %.sroa.41172.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
end_hunk_1
