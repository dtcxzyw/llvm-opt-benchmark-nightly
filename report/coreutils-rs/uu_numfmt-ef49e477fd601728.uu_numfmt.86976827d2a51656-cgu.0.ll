Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_numfmt-ef49e477fd601728.uu_numfmt.86976827d2a51656-cgu.0?download=true
inline.NumInlined: 1038
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format11escape_line:bb.a
  br i1 %i.cd, label %._crit_edge69, label %.split

._crit_edge69:                                    ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit, %._crit_edge
  %i.ce = phi ptr [ %i.bi, %._crit_edge ], [ %i.bz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit ]
  %i.cf = phi i64 [ %i.bj, %._crit_edge ], [ %i.cb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #26
  %i.cg = load ptr, ptr %i.g, align 8, !noundef !18 ; 2 uses
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %._crit_edge73, label %bb.b

bb.f:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  %i.ch = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.ch)
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ci = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.cj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %..i = select i1 %i.ck, i64 3, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.sroa.0.1.ph5363 = phi ptr [ %.sroa.0.1.ph, %bb.g ], [ %.sroa.0.1.ph, %bb.h ], [ %.sroa.0.1.ph54, %bb.f ]
  %.sroa.4.0.i.ph5661 = phi i32 [ %.sroa.4.0.i.ph, %bb.g ], [ %.sroa.4.0.i.ph, %bb.h ], [ %.sroa.4.0.i.ph55, %bb.f ] ; 7 uses
  %i.cl = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ true, %bb.f ]
  %.sroa.0.0.i28 = phi i64 [ 2, %bb.g ], [ %..i, %bb.h ], [ 1, %bb.f ] ; 3 uses
  %i.cm = load i64, ptr %i.i, align 8, !range !55, !alias.scope !1887, !noundef !18
  %i.cn = sub nsw i64 %i.cm, %i.x
  %i.co = icmp ugt i64 %.sroa.0.0.i28, %i.cn
  br i1 %i.co, label %bb.j, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i29, !prof !221

bb.j:                                             ; preds = %bb.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.x, i64 noundef %.sroa.0.0.i28, i64 noundef 1, i64 noundef 1) #26
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i29

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i29: ; preds = %bb.j, %bb.i
  %i.cp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1884, !nonnull !18, !noundef !18 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.x ; 10 uses
  br i1 %i.cl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i29
  %i.cr = icmp samesign ult i32 %.sroa.4.0.i.ph5661, 2048
  %i.cs = trunc i32 %.sroa.4.0.i.ph5661 to i8
  %i.ct = and i8 %i.cs, 63
  %i.cu = or disjoint i8 %i.ct, -128              ; 3 uses
  %i.cv = lshr i32 %.sroa.4.0.i.ph5661, 6
  %i.cw = trunc i32 %i.cv to i8                   ; 2 uses
  %i.cx = and i8 %i.cw, 63
  %i.cy = or disjoint i8 %i.cx, -128              ; 2 uses
  %i.cz = lshr i32 %.sroa.4.0.i.ph5661, 12
  %i.da = trunc i32 %i.cz to i8                   ; 2 uses
  %i.db = and i8 %i.da, 63
  %i.dc = or disjoint i8 %i.db, -128
  %i.dd = lshr i32 %.sroa.4.0.i.ph5661, 18
  %i.de = trunc nuw nsw i32 %i.dd to i8
  %i.df = or disjoint i8 %i.de, -16
  br i1 %i.cr, label %bb.m, label %bb.n

bb.l:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i29
  %i.dg = trunc nuw nsw i32 %.sroa.4.0.i.ph5661 to i8
  store i8 %i.dg, ptr %i.cq, align 1, !noalias !1884
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.m:                                             ; preds = %bb.k
  %i.dh = or disjoint i8 %i.cw, -64
  store i8 %i.dh, ptr %i.cq, align 1, !noalias !1884
  %i.di = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store i8 %i.cu, ptr %i.di, align 1, !noalias !1884
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.n:                                             ; preds = %bb.k
  %i.dj = icmp samesign ult i32 %.sroa.4.0.i.ph5661, 65536
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dk = or disjoint i8 %i.da, -32
  store i8 %i.dk, ptr %i.cq, align 1, !noalias !1884
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store i8 %i.cy, ptr %i.dl, align 1, !noalias !1884
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i8 %i.cu, ptr %i.dm, align 1, !noalias !1884
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.p:                                             ; preds = %bb.n
  store i8 %i.df, ptr %i.cq, align 1, !noalias !1884
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store i8 %i.dc, ptr %i.dn, align 1, !noalias !1884
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i8 %i.cy, ptr %i.do, align 1, !noalias !1884
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  store i8 %i.cu, ptr %i.dp, align 1, !noalias !1884
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.l, %bb.m, %bb.o, %bb.p
  %i.dq = add nuw i64 %.sroa.0.0.i28, %i.x        ; 2 uses
  store i64 %i.dq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1884
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit36

bb.q:                                             ; preds = %.thread, %bb.c
  %.sroa.4.0.i.ph55 = phi i32 [ %i.al, %.thread ], [ %.sroa.4.0.i.ph, %bb.c ] ; 5 uses
  %.sroa.0.1.ph54 = phi ptr [ %i.y, %.thread ], [ %.sroa.0.1.ph, %bb.c ] ; 3 uses
  %i.dr = icmp samesign ugt i32 %.sroa.4.0.i.ph55, 32
  %i.ds = icmp ne i32 %.sroa.4.0.i.ph55, 127
  %or.cond = and i1 %i.dr, %i.ds
  br i1 %or.cond, label %bb.f, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i32 %.sroa.4.0.i.ph55, label %.split22 [
    i32 9, label %bb.f
    i32 10, label %bb.f
    i32 12, label %bb.f
    i32 13, label %bb.f
    i32 32, label %bb.f
  ]

.split22:                                         ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dt = trunc nuw nsw i32 %.sroa.4.0.i.ph55 to i8
  store i8 %i.dt, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  store ptr @_RNvXsc_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Octal3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @110, ptr noundef nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.037.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx38, align 8, !nonnull !18, !noundef !18 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %i.du = load i64, ptr %i.i, align 8, !range !55, !alias.scope !1893, !noundef !18
  %i.dv = sub i64 %i.du, %i.x
  %i.dw = icmp ugt i64 %.sroa.6.0.copyload, %i.dv
  br i1 %i.dw, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.thread.i32, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i30, !prof !221

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.thread.i32: ; preds = %.split22
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.x, i64 noundef %.sroa.6.0.copyload, i64 noundef 1, i64 noundef 1) #26
  %i.dx = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1890, !noundef !18 ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, -1
  call void @llvm.assume(i1 %i.dy)
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1890
  br label %bb.s

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i30: ; preds = %.split22
  %i.dz = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.dz)
  %.not.i31 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not.i31, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsbyqtxyC5WYI_9uu_numfmt.exit33, label %bb.s

bb.s:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i30, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.thread.i32
  %i.ea = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.thread.i32 ], [ %i.w, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i30 ] ; 2 uses
  %i.eb = phi i64 [ %i.dx, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.thread.i32 ], [ %i.x, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i30 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull readonly align 1 %.sroa.4.0.copyload, i64 %.sroa.6.0.copyload, i1 false), !noalias !1890
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsbyqtxyC5WYI_9uu_numfmt.exit33

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsbyqtxyC5WYI_9uu_numfmt.exit33: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i30, %bb.s
  %i.ed = phi ptr [ %i.ea, %bb.s ], [ %i.w, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i30 ] ; 2 uses
  %i.ee = phi i64 [ %i.eb, %bb.s ], [ %i.x, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsbyqtxyC5WYI_9uu_numfmt.exit.i30 ]
  %i.ef = add i64 %i.ee, %.sroa.6.0.copyload      ; 3 uses
  store i64 %i.ef, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1890
  %i.eg = icmp eq i64 %.sroa.037.0.copyload, 0
  br i1 %i.eg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit36, label %bb.t

bb.t:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsbyqtxyC5WYI_9uu_numfmt.exit33
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.037.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1896
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit36

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit36: ; preds = %bb.t, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsbyqtxyC5WYI_9uu_numfmt.exit33, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit
  %i.eh = phi ptr [ %i.cp, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit ], [ %i.ed, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsbyqtxyC5WYI_9uu_numfmt.exit33 ], [ %i.ed, %bb.t ] ; 2 uses
  %i.ei = phi i64 [ %i.dq, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit ], [ %i.ef, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsbyqtxyC5WYI_9uu_numfmt.exit33 ], [ %i.ef, %bb.t ] ; 2 uses
  %.sroa.0.1.ph52 = phi ptr [ %.sroa.0.1.ph5363, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit ], [ %.sroa.0.1.ph54, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsbyqtxyC5WYI_9uu_numfmt.exit33 ], [ %.sroa.0.1.ph54, %bb.t ] ; 2 uses
  %i.ej = icmp eq ptr %.sroa.0.1.ph52, %i.u
  br i1 %i.ej, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format13format_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %3, i64 noundef range(i64 0, 2) %4, i64 %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 18 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.2.i.i = alloca i64, align 8              ; 5 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 5 uses
  %.sroa.12.i.i = alloca i64, align 8             ; 5 uses
  %.sroa.17.i.i = alloca i64, align 8             ; 5 uses
  %.sroa.22.i.i = alloca i64, align 8             ; 5 uses
  %.sroa.27.i.i = alloca i64, align 8             ; 5 uses
  %.sroa.32.i.i = alloca i64, align 8             ; 5 uses
  %.sroa.37.i.i = alloca i64, align 8             ; 5 uses
  %.sroa.42.i.i = alloca i64, align 8             ; 5 uses
  %.sroa.47.i.i = alloca i64, align 8             ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 14 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [16 x i8], align 16              ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 8 uses
  %i.ac = alloca [32 x i8], align 8               ; 17 uses
  %i.ad = alloca [48 x i8], align 8               ; 9 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 14 uses
  %i.ag = alloca [48 x i8], align 8               ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [48 x i8], align 8               ; 9 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [64 x i8], align 8               ; 11 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 9 uses
  %i.ax = alloca [8 x i8], align 8                ; 8 uses
  %i.ay = alloca [32 x i8], align 8               ; 17 uses
  %i.az = alloca [16 x i8], align 8               ; 9 uses
  %i.ba = alloca [104 x i8], align 8              ; 5 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [48 x i8], align 8               ; 9 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 13 uses
  %i.bi = alloca [32 x i8], align 8               ; 7 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 18 uses
  %i.bm = alloca [32 x i8], align 16              ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !range !252, !noundef !18
  %.not = icmp eq i64 %i.bo, -1                   ; 3 uses
  br i1 %.not, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !18 ; 4 uses
  %.not.i = icmp samesign ult i64 %2, %i.bq
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit: ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !18, !noundef !18
  %i.bt = sub nuw nsw i64 %2, %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.bs, ptr nonnull readonly %i.bu, i64 range(i64 0, -9223372036854775808) %i.bq), !alias.scope !1899
  %bcmp.i.i.fr = freeze i32 %bcmp.i.i
  %i.bv = icmp eq i32 %bcmp.i.i.fr, 0
  %i.bw = select i1 %i.bv, i64 %i.bq, i64 0
  %spec.select = sub nuw i64 %2, %i.bw
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit.thread

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit.thread: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit, %bb.b, %bb.a
  %.sroa.7.0 = phi i64 [ %2, %bb.a ], [ %2, %bb.b ], [ %spec.select, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit ] ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !217, !noundef !18
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !18
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format24parse_implicit_precision.exit

bb.d:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 201
  %i.cd = load i8, ptr %i.cc, align 1, !range !545, !noundef !18 ; 2 uses
  %i.ce = icmp ne i8 %i.cd, 4
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp eq i8 %i.cd, 5
  br i1 %i.cf, label %bb.e, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format24parse_implicit_precision.exit

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format24parse_implicit_precision.exit: ; preds = %_RNCINvNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENvMNtNtBg_4char7methodsc14is_ascii_digitNCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0CsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i, %bb.p, %bb.n, %_RINvMNtCs6JMX4GRUq9U_4core3stre10split_onceReECsbyqtxyC5WYI_9uu_numfmt.exit.thread.i, %bb.l, %bb.j, %bb.d, %bb.c
  %.sroa.021.0 = phi i64 [ %i.cb, %bb.c ], [ 0, %bb.l ], [ 0, %bb.d ], [ 0, %bb.j ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core3stre10split_onceReECsbyqtxyC5WYI_9uu_numfmt.exit.thread.i ], [ 0, %bb.n ], [ %.sroa.01.019.i.i.i.i, %bb.p ], [ %i.fr, %_RNCINvNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENvMNtNtBg_4char7methodsc14is_ascii_digitNCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0CsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i ] ; 20 uses
  %.sroa.020.0 = phi i1 [ true, %bb.c ], [ false, %bb.l ], [ false, %bb.d ], [ false, %bb.j ], [ true, %_RINvMNtCs6JMX4GRUq9U_4core3stre10split_onceReECsbyqtxyC5WYI_9uu_numfmt.exit.thread.i ], [ true, %bb.n ], [ true, %bb.p ], [ true, %_RNCINvNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENvMNtNtBg_4char7methodsc14is_ascii_digitNCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0CsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 184
  call fastcc void @_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format14transform_from(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %.sroa.7.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %3) #26
  %i.ch = load i64, ptr %i.bm, align 16, !range !141, !noundef !18 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0224.0.copyload = load double, ptr %i.cj, align 8 ; 3 uses
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.4225.0.copyload = load i128, ptr %.sroa.4225.0..sroa_idx, align 16 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br i1 %i.ci, label %bb.q, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.7.0 ; 8 uses
  %i.cl = icmp samesign eq i64 %.sroa.7.0, 0
  br i1 %i.cl, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !noalias !1903, !noundef !18 ; 3 uses
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.g, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit17.i

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit17.i: ; preds = %bb.f
  %i.cp = icmp ne i64 %.sroa.7.0, 1
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds i8, ptr %i.ck, i64 -2
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !1903, !noundef !18 ; 3 uses
  %i.cs = and i8 %i.cr, 31
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = icmp slt i8 %i.cr, -64
  br i1 %i.cu, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit19.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cv = zext nneg i8 %i.cn to i32
  br label %bb.j

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit19.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit17.i
  %i.cw = icmp ne i64 %.sroa.7.0, 2
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !1903, !noundef !18 ; 3 uses
  %i.cz = and i8 %i.cy, 15
  %i.da = zext nneg i8 %i.cz to i32
  %i.db = icmp slt i8 %i.cy, -64
  br i1 %i.db, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit21.i, label %bb.i

bb.h:                                             ; preds = %bb.i, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit17.i
  %.sroa.010.0.i = phi i32 [ %i.ds, %bb.i ], [ %i.ct, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit17.i ]
  %i.dc = shl nuw nsw i32 %.sroa.010.0.i, 6
  %i.dd = and i8 %i.cn, 63
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = or disjoint i32 %i.dc, %i.de
  br label %bb.j

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit21.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit19.i
  %i.dg = icmp ne i64 %.sroa.7.0, 3
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.di = load i8, ptr %i.dh, align 1, !noalias !1903, !noundef !18
  %i.dj = and i8 %i.di, 7
  %i.dk = zext nneg i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 6
  %i.dm = and i8 %i.cy, 63
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = or disjoint i32 %i.dl, %i.dn
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit21.i, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit19.i
  %.sroa.010.1.i = phi i32 [ %i.do, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit21.i ], [ %i.da, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbyqtxyC5WYI_9uu_numfmt.exit19.i ]
  %i.dp = shl nuw nsw i32 %.sroa.010.1.i, 6
  %i.dq = and i8 %i.cr, 63
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = or disjoint i32 %i.dp, %i.dr
  br label %bb.h

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.1.i.ph = phi i32 [ %i.cv, %bb.g ], [ %i.df, %bb.h ] ; 4 uses
  %i.dt = icmp samesign ult i32 %.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = and i32 %.sroa.4.1.i.ph, 2097119
  %i.dv = add nsw i32 %i.du, -65
  %or.cond117 = icmp ult i32 %i.dv, 26
  br i1 %or.cond117, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format24parse_implicit_precision.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = icmp samesign ult i32 %.sroa.4.1.i.ph, 170
  br i1 %i.dw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = tail call noundef zeroext i1 @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef %.sroa.4.1.i.ph) #25
  br i1 %i.dx, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format24parse_implicit_precision.exit, label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.k, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  %i.dy = tail call { ptr, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7decimal24locale_decimal_separator() #26, !noalias !1906 ; 2 uses
  %i.dz = extractvalue { ptr, i64 } %i.dy, 0
  %i.ea = extractvalue { ptr, i64 } %i.dy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1909
  call void @_RNvMsu_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %.sroa.7.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef %i.ea) #26, !noalias !1914
end_hunk_0
