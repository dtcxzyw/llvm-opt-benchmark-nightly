Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_mv-284af5adeefb2277.uu_mv.aa9a6e8a58e22077-cgu.0?download=true
inline.NumInlined: 1919
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvCseE7g6nXQLt3_5uu_mv18preserve_ownership:bb.a

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %.sroa.0.0.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !2148, !noalias !2147
  store i8 3, ptr %i.a, align 8, !alias.scope !2148, !noalias !2147
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #33, !noalias !2149
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringBX_EECseE7g6nXQLt3_5uu_mv.exit50

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringBX_EECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features5perms5chownRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.i, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.an, align 1
  br label %bb.n

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringBX_EECseE7g6nXQLt3_5uu_mv.exit50: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2147
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ao, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringBX_EECseE7g6nXQLt3_5uu_mv.exit50, %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringBX_EECseE7g6nXQLt3_5uu_mv.exit
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringBX_EECseE7g6nXQLt3_5uu_mv.exit ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringBX_EECseE7g6nXQLt3_5uu_mv.exit50 ], [ 1, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvCseE7g6nXQLt3_5uu_mv19move_files_into_dir(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 3 uses
  %i.w = alloca [8 x i8], align 8                 ; 3 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 13 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [64 x i8], align 8               ; 4 uses
  %i.az = alloca [64 x i8], align 8               ; 4 uses
  %i.ba = alloca [16 x i8], align 8               ; 4 uses
  %i.bb = alloca [16 x i8], align 8               ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 4 uses
  %i.bg = alloca [176 x i8], align 8              ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 7 uses
  %i.bj = alloca [16 x i8], align 8               ; 4 uses
  %i.bk = alloca [16 x i8], align 8               ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 4 uses
  %i.bm = alloca [16 x i8], align 8               ; 4 uses
  %i.bn = alloca [176 x i8], align 8              ; 9 uses
  %i.bo = alloca [24 x i8], align 8               ; 4 uses
  %i.bp = alloca [32 x i8], align 8               ; 7 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [32 x i8], align 8               ; 7 uses
  %i.bt = alloca [32 x i8], align 8               ; 7 uses
  %i.bu = alloca [8 x i8], align 8                ; 4 uses
  %i.bv = alloca [8 x i8], align 8                ; 6 uses
  %i.bw = alloca [8 x i8], align 4                ; 4 uses
  %i.bx = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.0401 = alloca [24 x i8], align 8         ; 4 uses
  %i.by = alloca [24 x i8], align 8               ; 3 uses
  %i.bz = alloca [24 x i8], align 8               ; 7 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [8 x i8], align 8                ; 4 uses
  %i.cd = alloca [8 x i8], align 8                ; 5 uses
  %i.ce = alloca [8 x i8], align 8                ; 5 uses
  %i.cf = alloca [8 x i8], align 8                ; 4 uses
  %i.cg = alloca [32 x i8], align 8               ; 7 uses
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = alloca [8 x i8], align 8                ; 4 uses
  %i.cj = alloca [8 x i8], align 8                ; 5 uses
  %i.ck = alloca [16 x i8], align 8               ; 6 uses
  %i.cl = alloca [32 x i8], align 8               ; 7 uses
  %i.cm = alloca [16 x i8], align 8               ; 5 uses
  %i.cn = alloca [8 x i8], align 8                ; 4 uses
  %i.co = alloca [8 x i8], align 8                ; 5 uses
  %i.cp = alloca [24 x i8], align 8               ; 8 uses
  %i.cq = alloca [24 x i8], align 8               ; 6 uses
  %i.cr = alloca [16 x i8], align 8               ; 6 uses
  %i.cs = alloca [32 x i8], align 8               ; 7 uses
  %i.ct = alloca [24 x i8], align 8               ; 6 uses
  %i.cu = alloca [16 x i8], align 8               ; 6 uses
  %i.cv = alloca [32 x i8], align 8               ; 7 uses
  %i.cw = alloca [24 x i8], align 8               ; 13 uses
  %i.cx = alloca [16 x i8], align 8               ; 6 uses
  %i.cy = alloca [32 x i8], align 8               ; 7 uses
  %i.cz = alloca [16 x i8], align 8               ; 5 uses
  %i.da = alloca [8 x i8], align 8                ; 4 uses
  %i.db = alloca [8 x i8], align 8                ; 5 uses
  %i.dc = alloca [32 x i8], align 8               ; 7 uses
  %i.dd = alloca [56 x i8], align 8               ; 6 uses
  %i.de = alloca [24 x i8], align 8               ; 9 uses
  %i.df = alloca [16 x i8], align 8               ; 5 uses
  %i.dg = alloca [24 x i8], align 8               ; 6 uses
  %i.dh = alloca [24 x i8], align 8               ; 2 uses
  %i.di = alloca [32 x i8], align 8               ; 7 uses
  %i.dj = alloca [16 x i8], align 8               ; 5 uses
  %i.dk = alloca [8 x i8], align 8                ; 4 uses
  %i.dl = alloca [8 x i8], align 8                ; 5 uses
  %i.dm = alloca [32 x i8], align 8               ; 7 uses
  %i.dn = alloca [56 x i8], align 8               ; 6 uses
  %i.do = alloca [16 x i8], align 8               ; 5 uses
  %i.dp = alloca [24 x i8], align 8               ; 6 uses
  %i.dq = alloca [24 x i8], align 8               ; 6 uses
  %i.dr = alloca [136 x i8], align 8              ; 7 uses
  %i.ds = alloca [136 x i8], align 8              ; 4 uses
  %i.dt = alloca [24 x i8], align 8               ; 4 uses
  %i.du = alloca [24 x i8], align 8               ; 4 uses
  %i.dv = alloca [24 x i8], align 8               ; 4 uses
  %i.dw = alloca [24 x i8], align 8               ; 13 uses
  %i.dx = alloca [8 x i8], align 8                ; 10 uses
  %i.dy = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %i.dz = alloca [64 x i8], align 8               ; 13 uses
  %i.ea = alloca [64 x i8], align 8               ; 7 uses
  %i.eb = alloca [32 x i8], align 8               ; 13 uses
  %i.ec = alloca [32 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call fastcc void @_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.ec, i64 noundef 24, i64 noundef range(i64 0, 384307168202282326) %1, i1 noundef zeroext true) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  %.sroa.014.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %.sroa.014.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %.sroa.014.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false)
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 56 ; 6 uses
  store i8 0, ptr %.sroa.315.0..sroa_idx, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.ee = load i8, ptr %i.ed, align 1, !range !17, !noundef !7
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.eh = load i8, ptr %i.eg, align 4, !range !17
  %.sroa.01.0 = select i1 %i.ef, i8 1, i8 %i.eh   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  %i.ei = mul nuw nsw i64 %1, 24                  ; 4 uses
  %i.ej = icmp eq i64 %1, 0                       ; 2 uses
  br i1 %i.ej, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECseE7g6nXQLt3_5uu_mv.exit.i.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECseE7g6nXQLt3_5uu_mv.exit.i.thread: ; preds = %bb.a
  store i64 %1, ptr %i.dz, align 8, !alias.scope !2539
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.014.sroa.2.0..sroa_idx, align 8, !alias.scope !2539
  store i64 %1, ptr %.sroa.014.sroa.3.0..sroa_idx, align 8, !alias.scope !2539
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %i.ei ; 2 uses
  %.pre.i = trunc nuw i8 %.sroa.01.0 to i1
  store i8 1, ptr %.sroa.315.0..sroa_idx, align 8, !alias.scope !2539
  br i1 %.pre.i, label %bb.aa, label %_RNvMs3_NtCseE7g6nXQLt3_5uu_mv8hardlinkNtB5_20HardlinkGroupScanner10scan_files.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2542
  %i.el = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ei, i64 noundef range(i64 1, 9) 8) #33, !noalias !2542 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.b, label %.lr.ph.preheader.i.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ei) #37, !noalias !2543
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %5 = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.034.i.i = phi ptr [ %i.en, %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ %0, %.lr.ph.preheader.i.i ] ; 4 uses
  %.sroa.7.033.i.i = phi i64 [ %i.eo, %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.032.i.i = phi i64 [ %6, %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ]
  %6 = add nsw i64 %.sroa.10.032.i.i, -1          ; 2 uses
  %7 = icmp eq ptr %.sroa.0.034.i.i, %5
  br i1 %7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECseE7g6nXQLt3_5uu_mv.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 24
  %i.eo = add nuw nsw i64 %.sroa.7.033.i.i, 1
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %.sroa.7.033.i.i ; 3 uses
  %i.eq = getelementptr i8, ptr %.sroa.0.034.i.i, i64 8
  %.val.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !2544, !nonnull !7, !noundef !7
  %i.er = getelementptr i8, ptr %.sroa.0.034.i.i, i64 16
  %.val13.i.i = load i64, ptr %i.er, align 8, !alias.scope !2544, !noundef !7 ; 6 uses
  %i.es = icmp eq i64 %.val13.i.i, 0
  br i1 %i.es, label %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2545
  %i.et = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val13.i.i, i64 noundef range(i64 1, 9) 1) #33, !noalias !2545 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val13.i.i) #37, !noalias !2546
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.et, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val13.i.i, i1 false), !noalias !2547
  br label %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i

_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.e, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ %i.et, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ]
  store i64 %.val13.i.i, ptr %i.ep, align 8, !noalias !2543
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !2543
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %.val13.i.i, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !2543
  %i.ev = icmp eq i64 %6, 0
  br i1 %i.ev, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECseE7g6nXQLt3_5uu_mv.exit.i, label %.lr.ph.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECseE7g6nXQLt3_5uu_mv.exit.i: ; preds = %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i, %.lr.ph.i.i
  store i64 %1, ptr %i.dz, align 8, !alias.scope !2539
  store ptr %i.el, ptr %.sroa.014.sroa.2.0..sroa_idx, align 8, !alias.scope !2539
  store i64 %1, ptr %.sroa.014.sroa.3.0..sroa_idx, align 8, !alias.scope !2539
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %i.ei ; 7 uses
  %.sroa.832.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dz, i64 40 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.fa = trunc nuw i8 %.sroa.01.0 to i1          ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  br label %.backedge452

.backedge452:                                     ; preds = %.backedge452.backedge, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECseE7g6nXQLt3_5uu_mv.exit.i
  %.sroa.0.015.i = phi ptr [ %0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECseE7g6nXQLt3_5uu_mv.exit.i ], [ %i.fg, %.backedge452.backedge ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 24 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !2540, !nonnull !7, !noundef !7 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !2540, !noundef !7 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %i.fl = call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef %i.fk) #33, !noalias !2549
  br i1 %i.fl, label %_RNvMs3_NtCseE7g6nXQLt3_5uu_mv8hardlinkNtB5_20HardlinkGroupScanner16scan_single_path.exit.i, label %bb.f

bb.f:                                             ; preds = %.backedge452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !2550
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef %i.fk) #33, !noalias !2551
  %i.fm = load i64, ptr %i.bn, align 8, !range !21, !noalias !2550, !noundef !7
  %i.fn = icmp eq i64 %i.fm, 2
  br i1 %i.fn, label %_RNvMs3_NtCseE7g6nXQLt3_5uu_mv8hardlinkNtB5_20HardlinkGroupScanner16scan_single_path.exit.thread7.i, label %bb.g

_RNvMs3_NtCseE7g6nXQLt3_5uu_mv8hardlinkNtB5_20HardlinkGroupScanner16scan_single_path.exit.thread7.i: ; preds = %bb.f
  %i.fo = load ptr, ptr %i.ez, align 8, !noalias !2550, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !2550
  br label %bb.q

bb.g:                                             ; preds = %bb.f
  %.sroa.832.0.copyload.i.i = load i64, ptr %.sroa.832.0..sroa_idx.i.i, align 8, !noalias !2552 ; 3 uses
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2552 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !2550
  %i.fp = icmp ugt i64 %.sroa.10.0.copyload.i.i, 1
  br i1 %i.fp, label %bb.h, label %_RNvMs3_NtCseE7g6nXQLt3_5uu_mv8hardlinkNtB5_20HardlinkGroupScanner16scan_single_path.exit.thread.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !2553)
  %i.fq = mul i64 %.sroa.832.0.copyload.i.i, -1065810590584100411
  %i.fr = add i64 %i.fq, %.sroa.9.0.copyload.i.i
  %i.fs = mul i64 %i.fr, -1065810590584100411     ; 2 uses
  %i.ft = call noundef i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 26) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  call void @llvm.experimental.noalias.scope.decl(metadata !2555)
  %i.fu = lshr i64 %i.ft, 57
  %i.fv = trunc nuw nsw i64 %i.fu to i8           ; 3 uses
  %i.fw = load i64, ptr %i.ex, align 8, !alias.scope !2556, !noundef !7 ; 3 uses
  %i.fx = load ptr, ptr %.sroa.014.sroa.4.0..sroa_idx, align 8, !alias.scope !2556, !nonnull !7, !noundef !7 ; 3 uses
  %i.fy = insertelement <16 x i8> poison, i8 %i.fv, i64 0
  %i.fz = shufflevector <16 x i8> %i.fy, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.gs, %bb.k ]
  %.pn.i.i.i.i = phi i64 [ %i.ft, %bb.h ], [ %i.gt, %bb.k ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.fw ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.ga, align 1, !noalias !2557 ; 2 uses
  %i.gb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.fz
  %i.gc = bitcast <16 x i1> %i.gb to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.gc, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i24.i

.lr.ph.i.i.i24.i:                                 ; preds = %bb.i, %bb.j
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.gr, %bb.j ], [ %i.gc, %bb.i ] ; 3 uses
  %i.gd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.ge = zext nneg i16 %i.gd to i64
  %i.gf = add i64 %.sroa.01.0.i.i.i.i.i, %i.ge
  %i.gg = and i64 %i.gf, %i.fw
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr inbounds [40 x i8], ptr %i.fx, i64 %i.gh ; 3 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -40
  %.val2.i.i.i.i.i = load i64, ptr %i.gj, align 8, !noalias !2558, !noundef !7
  %i.gk = getelementptr i8, ptr %i.gi, i64 -32
  %.val3.i.i.i.i.i = load i64, ptr %i.gk, align 8, !noalias !2558
  %i.gl = icmp eq i64 %.val2.i.i.i.i.i, %.sroa.832.0.copyload.i.i
  %i.gm = icmp eq i64 %.val3.i.i.i.i.i, %.sroa.9.0.copyload.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.gl, i1 %i.gm, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i, label %_RNvMs19_NtNtNtCs2vKOLqTMYjT_3std11collections4hash3mapINtB6_5EntryTyyEINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBc_4path7PathBufEE10or_defaultCseE7g6nXQLt3_5uu_mv.exit.i.i, label %bb.j, !prof !9

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %i.gn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.go = bitcast <16 x i1> %i.gn to i16
  %i.gp = icmp eq i16 %i.go, 0
  br i1 %i.gp, label %bb.k, label %bb.l, !prof !10

bb.j:                                             ; preds = %.lr.ph.i.i.i24.i
  %i.gq = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.gr = and i16 %i.gq, %.sroa.06.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.gr, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i24.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.gs = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.gt = add i64 %.sroa.01.0.i.i.i.i.i, %i.gs
  br label %bb.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.gu = load i64, ptr %i.ey, align 8, !alias.scope !2559, !noundef !7
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.gw = call { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTyyEINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BU_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.014.sroa.4.0..sroa_idx, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.315.0..sroa_idx, i1 noundef zeroext true) #34, !noalias !2560 ; 0 uses
  %.val.i.i.pre.i.i = load ptr, ptr %.sroa.014.sroa.4.0..sroa_idx, align 8, !alias.scope !2561, !noalias !2562
  %.val2.i.i.pre.i.i = load i64, ptr %i.ex, align 8, !alias.scope !2561, !noalias !2562
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.val2.i.i.i.i = phi i64 [ %.val2.i.i.pre.i.i, %bb.m ], [ %i.fw, %bb.l ] ; 4 uses
  %.val.i.i.i25.i = phi ptr [ %.val.i.i.pre.i.i, %bb.m ], [ %i.fx, %bb.l ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  %.sroa.0.07.i.i.i.i.i = and i64 %.val2.i.i.i.i, %i.ft ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.val.i.i.i25.i, i64 %.sroa.0.07.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i = load <16 x i8>, ptr %i.gx, align 1, !noalias !2564
  %i.gy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i, zeroinitializer
  %i.gz = bitcast <16 x i1> %i.gy to i16          ; 2 uses
  %.not.i9.i.i.i.i.i = icmp eq i16 %i.gz, 0
  br i1 %.not.i9.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !prof !11

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.n
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i, %bb.n ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i16 [ %i.gz, %bb.n ], [ %i.hq, %.lr.ph.i.i.i.i.i ]
  %i.ha = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.hb = zext nneg i16 %i.ha to i64
  %i.hc = add i64 %.sroa.0.0.lcssa.i.i.i.i.i, %i.hb
  %i.hd = and i64 %i.hc, %.val2.i.i.i.i           ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.val.i.i.i25.i, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !noalias !2565, !noundef !7 ; 2 uses
  %i.hg = icmp sgt i8 %i.hf, -1
  br i1 %i.hg, label %bb.o, label %_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTTyyEINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEEE14insert_no_growCseE7g6nXQLt3_5uu_mv.exit.i.i.i, !prof !10

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.val2.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i25.i, align 16, !noalias !2565
  %i.hh = icmp slt <16 x i8> %.val2.i.i.i.i.i.i, zeroinitializer
  %i.hi = bitcast <16 x i1> %i.hh to i16          ; 2 uses
  %.not.i6.i.i.i.i.i = icmp ne i16 %i.hi, 0
  %i.hj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hi, i1 true)
  %i.hk = zext nneg i16 %i.hj to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i25.i, i64 %i.hk
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !2565
  br label %_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTTyyEINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEEE14insert_no_growCseE7g6nXQLt3_5uu_mv.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %.lr.ph.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %bb.n ]
  %i.hl = phi i64 [ %i.hm, %.lr.ph.i.i.i.i.i ], [ 0, %bb.n ]
  %i.hm = add i64 %i.hl, 16                       ; 2 uses
  %i.hn = add i64 %i.hm, %.sroa.0.010.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = and i64 %i.hn, %.val2.i.i.i.i ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.val.i.i.i25.i, i64 %.sroa.0.0.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i = load <16 x i8>, ptr %i.ho, align 1, !noalias !2564
  %i.hp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i, zeroinitializer
  %i.hq = bitcast <16 x i1> %i.hp to i16          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.hq, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !prof !12

_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTTyyEINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEEE14insert_no_growCseE7g6nXQLt3_5uu_mv.exit.i.i.i: ; preds = %bb.o, %._crit_edge.i.i.i.i.i
  %i.hr = phi i8 [ %.pre.i.i.i.i, %bb.o ], [ %i.hf, %._crit_edge.i.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i.i = phi i64 [ %i.hk, %bb.o ], [ %i.hd, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.val.i.i.i25.i, i64 %.sroa.0.0.i5.i.i.i.i.i
  %i.ht = add i64 %.sroa.0.0.i5.i.i.i.i.i, -16
  %i.hu = and i64 %i.ht, %.val2.i.i.i.i
  store i8 %i.fv, ptr %i.hs, align 1, !noalias !2565
  %i.hv = getelementptr i8, ptr %.val.i.i.i25.i, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 16
  store i8 %i.fv, ptr %i.hw, align 1, !noalias !2565
  %i.hx = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i
  %i.hy = getelementptr inbounds [40 x i8], ptr %.val.i.i.i25.i, i64 %i.hx ; 6 uses
  %i.hz = and i8 %i.hr, 1
  %i.ia = zext nneg i8 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %i.hy, i64 -40
  store i64 %.sroa.832.0.copyload.i.i, ptr %i.ib, align 8, !noalias !2566
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.hy, i64 -32
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !2566
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.hy, i64 -24
  store i64 0, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !2566
  %.sroa.6.0..sroa_idx.i31.i.i = getelementptr inbounds i8, ptr %i.hy, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx.i31.i.i, align 8, !noalias !2566
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.hy, i64 -8
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !2566
  %i.ic = load <2 x i64>, ptr %i.ey, align 8, !alias.scope !2561, !noalias !2562
  %i.id = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ia, i64 0
end_hunk_0
