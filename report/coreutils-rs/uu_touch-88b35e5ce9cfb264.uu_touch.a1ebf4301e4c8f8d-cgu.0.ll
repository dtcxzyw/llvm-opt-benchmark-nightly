Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_touch-88b35e5ce9cfb264.uu_touch.a1ebf4301e4c8f8d-cgu.0?download=true
inline.NumInlined: 849
inline.NumDeleted: 480
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvCsdTU8hOCbdCr_8uu_touch4stat:bb.a
bb.n:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.aj, align 8
  store i64 1, ptr %0, align 8
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %.sroa.8107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.8107.0.copyload = load i64, ptr %.sroa.8107.0..sroa_idx, align 8, !noalias !929
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !929
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !929
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %i.s, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit
    i64 3, label %bb.p
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit
    i64 1, label %bb.q
  ], !prof !189

bb.p:                                             ; preds = %bb.o
  %i.ak = icmp ult ptr %i.q, inttoptr (i64 188978561024 to ptr)
  %i.al = and i64 %i.r, 1095216660480
  %i.am = icmp ne i64 %i.al, 1095216660480
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.assume(i1 %i.am)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit

bb.q:                                             ; preds = %bb.o
  %i.an = getelementptr i8, ptr %i.q, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !alias.scope !930
  store i8 3, ptr %i.b, align 8, !alias.scope !930
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit: ; preds = %bb.o, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.r:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit101, %bb.n, %bb.d, %bb.f
  ret void

bb.s:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !924, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !924
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.s, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit101
    i64 3, label %bb.t
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit101
    i64 1, label %bb.u
  ], !prof !189

bb.t:                                             ; preds = %bb.s
  %i.as = icmp ult ptr %i.q, inttoptr (i64 188978561024 to ptr)
  %i.at = and i64 %i.r, 1095216660480
  %i.au = icmp ne i64 %i.at, 1095216660480
  call void @llvm.assume(i1 %i.as)
  call void @llvm.assume(i1 %i.au)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit101

bb.u:                                             ; preds = %bb.s
  %i.av = getelementptr i8, ptr %i.q, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !933
  store i8 3, ptr %i.a, align 8, !alias.scope !933
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit101

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit101: ; preds = %bb.s, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsdTU8hOCbdCr_8uu_touch5touch(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 16              ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 10 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 10 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [16 x i8], align 8               ; 6 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 10 uses
  %i.ay = alloca [24 x i8], align 8               ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [24 x i8], align 8               ; 10 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [256 x i8], align 1              ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 8 uses
  %i.bk = alloca [4 x i8], align 4                ; 7 uses
  %i.bl = alloca [4 x i8], align 4                ; 7 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [16 x i8], align 8               ; 4 uses
  %i.bo = alloca [32 x i8], align 8               ; 8 uses
  %i.bp = alloca [16 x i8], align 16              ; 5 uses
  %i.bq = alloca [16 x i8], align 8               ; 7 uses
  %i.br = alloca [4 x i8], align 4                ; 5 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 7 uses
  %i.bu = alloca [24 x i8], align 8               ; 8 uses
  %i.bv = alloca [24 x i8], align 8               ; 6 uses
  %i.bw = alloca [16 x i8], align 8               ; 6 uses
  %i.bx = alloca [32 x i8], align 8               ; 7 uses
  %i.by = alloca [24 x i8], align 8               ; 10 uses
  %i.bz = alloca [24 x i8], align 8               ; 6 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [24 x i8], align 8               ; 7 uses
  %i.cc = alloca [24 x i8], align 8               ; 8 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [16 x i8], align 8               ; 6 uses
  %i.cf = alloca [32 x i8], align 8               ; 7 uses
  %i.cg = alloca [24 x i8], align 8               ; 10 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [32 x i8], align 8               ; 7 uses
  %i.cj = alloca [40 x i8], align 8               ; 7 uses
  %i.ck = alloca [40 x i8], align 8               ; 8 uses
  %i.cl = alloca [176 x i8], align 8              ; 5 uses
  %i.cm = alloca [176 x i8], align 8              ; 5 uses
  %.sroa.091.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.089.i = alloca [24 x i8], align 8        ; 5 uses
  %i.cn = alloca [24 x i8], align 8               ; 7 uses
  %i.co = alloca [24 x i8], align 8               ; 7 uses
  %i.cp = alloca [32 x i8], align 8               ; 7 uses
  %i.cq = alloca [16 x i8], align 8               ; 5 uses
  %i.cr = alloca [8 x i8], align 8                ; 4 uses
  %i.cs = alloca [8 x i8], align 8                ; 5 uses
  %i.ct = alloca [8 x i8], align 8                ; 5 uses
  %i.cu = alloca [24 x i8], align 8               ; 4 uses
  %i.cv = alloca [16 x i8], align 8               ; 7 uses
  %i.cw = alloca [32 x i8], align 8               ; 7 uses
  %i.cx = alloca [16 x i8], align 8               ; 5 uses
  %i.cy = alloca [8 x i8], align 8                ; 4 uses
  %i.cz = alloca [8 x i8], align 8                ; 5 uses
  %i.da = alloca [16 x i8], align 8               ; 6 uses
  %i.db = alloca [24 x i8], align 8               ; 8 uses
  %i.dc = alloca [24 x i8], align 8               ; 6 uses
  %i.dd = alloca [16 x i8], align 8               ; 6 uses
  %i.de = alloca [32 x i8], align 8               ; 7 uses
  %i.df = alloca [24 x i8], align 8               ; 10 uses
  %i.dg = alloca [40 x i8], align 8               ; 4 uses
  %i.dh = alloca [48 x i8], align 8               ; 8 uses
  %i.di = alloca [48 x i8], align 8               ; 9 uses
  %i.dj = alloca [40 x i8], align 8               ; 4 uses
  %i.dk = alloca [48 x i8], align 8               ; 8 uses
  %i.dl = alloca [48 x i8], align 8               ; 9 uses
  %i.dm = alloca [40 x i8], align 8               ; 9 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !range !936, !noundef !4 ; 3 uses
  %i.dp = icmp slt i64 %i.do, 0
  %i.dq = add i64 %i.do, -9223372036854775807
  %i.dr = select i1 %i.dp, i64 %i.dq, i64 0
  switch i64 %i.dr, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !noundef !4 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 49
  %i.dx = load i8, ptr %i.dw, align 1, !range !644, !noundef !4
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = xor i1 %i.dy, true
  call fastcc void @_RNvCsdTU8hOCbdCr_8uu_touch4stat(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %i.dv, i1 noundef zeroext %i.dz) #27
  %i.ea = load i64, ptr %i.dm, align 8, !range !259, !noundef !4
  %i.eb = trunc nuw i64 %i.ea to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  br i1 %i.eb, label %bb.f, label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eg = load i32, ptr %i.ef, align 8, !noundef !4 ; 2 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.eh = load i64, ptr %3, align 8, !range !185, !noundef !4
  %.not = icmp eq i64 %i.eh, -1
  br i1 %.not, label %.thread, label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.ei = load ptr, ptr %i.ec, align 8, !nonnull !4, !noundef !4
  %i.ej = icmp eq i64 %i.dv, 0
  br i1 %i.ej, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsdTU8hOCbdCr_8uu_touch.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !937
  %i.ek = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dv, i64 noundef range(i64 1, 9) 1) #27, !noalias !937 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.dv) #29, !noalias !945
  unreachable

bb.h:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr nonnull readonly align 1 %i.dt, i64 range(i64 0, -9223372036854775808) %i.dv, i1 false), !noalias !946
  %i.em = ptrtoint ptr %i.ek to i64
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsdTU8hOCbdCr_8uu_touch.exit

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsdTU8hOCbdCr_8uu_touch.exit: ; preds = %bb.f, %bb.h
  %.sroa.5470.0 = phi i64 [ %i.em, %bb.h ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  %i.en = ptrtoint ptr %i.ei to i64
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dv, ptr %.sroa.4161.0..sroa_idx, align 8
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5470.0, ptr %.sroa.5162.0..sroa_idx, align 8
  %.sroa.7164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dv, ptr %.sroa.7164.0..sroa_idx, align 8
  %.sroa.8165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.en, ptr %.sroa.8165.0..sroa_idx, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %.sroa.0119.sroa.0.0.copyload = load i64, ptr %i.ec, align 8
  %.sroa.0119.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.0119.sroa.4.0.copyload = load i32, ptr %.sroa.0119.sroa.4.0..sroa_idx, align 8
  %.sroa.0119.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.sroa.0119.sroa.6.0.copyload = load i64, ptr %.sroa.0119.sroa.6.0..sroa_idx, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %.sroa.4120.0.copyload = load ptr, ptr %.sroa.4120.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  %i.eo = ptrtoint ptr %.sroa.4120.0.copyload to i64
  %.sroa.7125.24.extract.trunc = trunc i64 %i.eo to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i, %bb.d
  %.sroa.0325.0.ph = phi i64 [ %i.et, %bb.l ], [ %i.ee, %bb.d ], [ %.sroa.0119.sroa.0.0.copyload, %bb.i ] ; 3 uses
  %.sroa.4326.0.ph = phi i32 [ %i.eu, %bb.l ], [ %i.eg, %bb.d ], [ %.sroa.0119.sroa.4.0.copyload, %bb.i ] ; 3 uses
  %.sroa.0327.0.ph = phi i64 [ %i.et, %bb.l ], [ %i.ee, %bb.d ], [ %.sroa.0119.sroa.6.0.copyload, %bb.i ] ; 3 uses
  %.sroa.7330.0.ph = phi i32 [ %i.eu, %bb.l ], [ %i.eg, %bb.d ], [ %.sroa.7125.24.extract.trunc, %bb.i ] ; 3 uses
  %.pr = load i64, ptr %3, align 8
  %.not333 = icmp eq i64 %.pr, -1
  br i1 %.not333, label %.thread, label %bb.m

bb.k:                                             ; preds = %bb.s, %bb.t, %bb.o, %bb.p, %bb.ju, %._crit_edge, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsdTU8hOCbdCr_8uu_touch.exit
  ret void

bb.l:                                             ; preds = %bb.e
  %i.ep = tail call { i64, i32 } @_RNvMNtCs3JjgEOiFeOI_4jiff9timestampNtB2_9Timestamp3now() #27 ; 2 uses
  %i.eq = extractvalue { i64, i32 } %i.ep, 0
  %i.er = extractvalue { i64, i32 } %i.ep, 1
  %i.es = tail call fastcc { i64, i32 } @_RNvCsdTU8hOCbdCr_8uu_touch21timestamp_to_filetime(i64 noundef %i.eq, i32 noundef %i.er) #27 ; 2 uses
  %i.et = extractvalue { i64, i32 } %i.es, 0      ; 2 uses
  %i.eu = extractvalue { i64, i32 } %i.es, 1      ; 2 uses
  br label %bb.j

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call fastcc void @_RNvCsdTU8hOCbdCr_8uu_touch17filetime_to_zoned(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.dk, i64 %.sroa.0325.0.ph, i32 %.sroa.4326.0.ph) #27
  %i.ev = load i64, ptr %i.dk, align 8, !range !259, !noundef !4
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.0178.0.copyload = load i64, ptr %i.ex, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.4179.0.copyload = load i32, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %.sroa.637.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.637.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5180.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  store i64 %.sroa.0178.0.copyload, ptr %i.dj, align 8
  %.sroa.637.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 %.sroa.4179.0.copyload, ptr %.sroa.637.sroa.7.0..sroa_idx, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !4 ; 2 uses
  call fastcc void @_RNvCsdTU8hOCbdCr_8uu_touch10parse_date(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.dl, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.dj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ez, i64 noundef %i.fb) #27
  %i.fc = load i64, ptr %i.dl, align 8, !range !947, !noundef !4 ; 2 uses
  %.not334 = icmp eq i64 %i.fc, -1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.fe = load i64, ptr %i.fd, align 8            ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.fg = load i32, ptr %i.ff, align 8            ; 2 uses
  br i1 %.not334, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0325.0.ph, ptr %.sroa.4197.0..sroa_idx, align 8
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.4326.0.ph, ptr %.sroa.5198.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.k

bb.p:                                             ; preds = %bb.n
  %.sroa.6207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %.sroa.6211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6211.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6207.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  store i64 %i.fc, ptr %0, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fe, ptr %.sroa.4209.0..sroa_idx, align 8
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.fg, ptr %.sroa.5210.0..sroa_idx, align 8
  br label %bb.k

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call fastcc void @_RNvCsdTU8hOCbdCr_8uu_touch17filetime_to_zoned(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.dh, i64 %.sroa.0327.0.ph, i32 %.sroa.7330.0.ph) #27
  %i.fh = load i64, ptr %i.dh, align 8, !range !259, !noundef !4
  %i.fi = trunc nuw i64 %i.fh to i1
  br i1 %i.fi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.0222.0.copyload = load i64, ptr %i.fj, align 8
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.4223.0.copyload = load i32, ptr %.sroa.4223.0..sroa_idx, align 8
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %.sroa.662.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.662.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5224.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  store i64 %.sroa.0222.0.copyload, ptr %i.dg, align 8
  %.sroa.662.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 %.sroa.4223.0.copyload, ptr %.sroa.662.sroa.7.0..sroa_idx, align 8
  call fastcc void @_RNvCsdTU8hOCbdCr_8uu_touch10parse_date(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.di, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ez, i64 noundef %i.fb) #27
  %i.fk = load i64, ptr %i.di, align 8, !range !947, !noundef !4 ; 2 uses
  %.not335 = icmp eq i64 %i.fk, -1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.fm = load i64, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.fo = load i32, ptr %i.fn, align 8            ; 2 uses
  br i1 %.not335, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0327.0.ph, ptr %.sroa.4241.0..sroa_idx, align 8
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7330.0.ph, ptr %.sroa.5242.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %bb.k

bb.t:                                             ; preds = %bb.r
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %.sroa.6255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6255.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6251.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  store i64 %i.fk, ptr %0, align 8
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fm, ptr %.sroa.4253.0..sroa_idx, align 8
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.fo, ptr %.sroa.5254.0..sroa_idx, align 8
  br label %bb.k

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.j, %bb.u
  %.not333480 = phi i1 [ false, %bb.u ], [ true, %bb.j ], [ true, %bb.e ]
  %.sroa.375.0 = phi i32 [ %i.fo, %bb.u ], [ %.sroa.7330.0.ph, %bb.j ], [ 1073741823, %bb.e ] ; 4 uses
  %.sroa.074.0 = phi i64 [ %i.fm, %bb.u ], [ %.sroa.0327.0.ph, %bb.j ], [ 0, %bb.e ] ; 4 uses
  %.sroa.3.0 = phi i32 [ %i.fg, %bb.u ], [ %.sroa.4326.0.ph, %bb.j ], [ 1073741823, %bb.e ] ; 4 uses
  %.sroa.049.0 = phi i64 [ %i.fe, %bb.u ], [ %.sroa.0325.0.ph, %bb.j ], [ 0, %bb.e ] ; 4 uses
  %.idx = mul nuw nsw i64 %2, 24
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.fq = icmp eq i64 %2, 0
  br i1 %i.fq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 49
  %i.fs = load i8, ptr %i.fr, align 1, !range !644
  %i.ft = trunc nuw i8 %i.fs to i1                ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fx = load i8, ptr %i.fw, align 8, !range !644
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.ga = icmp eq i64 %i.do, -9223372036854775807
  %or.cond.i = and i1 %i.ga, %.not333480
  %i.gb = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 51
  %.val41.i = load i8, ptr %i.gc, align 1, !range !948
  %i.gd = xor i1 %i.ft, true                      ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.sroa.9.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %.sroa.11.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.4.0..sroa_idx.i.i.i88.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.5.0..sroa_idx.i.i.i89.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.4.0..sroa_idx.i.i93.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.5.0..sroa_idx.i.i94.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.42.0..sroa_idx.i.i95.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.53.0..sroa_idx.i.i96.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.4.0..sroa_idx.i.i.i97.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i98.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.5.0..sroa_idx5.i.i106.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.8.0..sroa_idx.i.i107.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %.sroa.4.0..sroa_idx.i.i140.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5.0..sroa_idx.i.i141.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.42.0..sroa_idx.i.i142.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.53.0..sroa_idx.i.i143.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.4.0..sroa_idx.i.i.i144.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i145.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5.0..sroa_idx5.i.i154.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.8.0..sroa_idx.i.i155.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.4.0..sroa_idx.i362 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.0..sroa_idx.i363 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.4.0..sroa_idx.i.i364 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i365 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i399 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i400 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.42.0..sroa_idx.i401 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.53.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.4.0..sroa_idx.i.i403 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i404 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx5.i411 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0..sroa_idx.i412 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 50
  %i.hr = load i8, ptr %i.hq, align 2, !range !644
  %i.hs = trunc nuw i8 %i.hr to i1                ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %.sroa.4.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i51.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.874.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.ig = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCsdTU8hOCbdCr_8uu_touch5touchs1_0EBF_.exit
  %.sroa.0446.0920 = phi ptr [ %1, %.lr.ph ], [ %i.ik, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCsdTU8hOCbdCr_8uu_touch5touchs1_0EBF_.exit ] ; 5 uses
  %.sroa.8.0919 = phi i64 [ 0, %.lr.ph ], [ %i.il, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCsdTU8hOCbdCr_8uu_touch5touchs1_0EBF_.exit ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0446.0920, i64 24 ; 2 uses
  %i.il = add nuw nsw i64 %.sroa.8.0919, 1
  %i.im = load i64, ptr %.sroa.0446.0920, align 8, !range !185, !noundef !4
  %.not533.not = icmp eq i64 %i.im, -1            ; 5 uses
  br i1 %.not533.not, label %bb.w, label %.then

._crit_edge:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCsdTU8hOCbdCr_8uu_touch5touchs1_0EBF_.exit, %.thread
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.w:                                             ; preds = %bb.v
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !949
  %i.in = call noundef dereferenceable_or_null(11) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 11, i64 noundef range(i64 1, 9) 1) #27, !noalias !949 ; 6 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.x, label %.cont454

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 11) #29, !noalias !954
  unreachable

.cont454:                                         ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.in, ptr noundef nonnull align 1 dereferenceable(11) @53, i64 11, i1 false), !noalias !954
  %.sroa.gep448 = getelementptr i8, ptr %i.in, i64 8
  %.sroa.gep = getelementptr i8, ptr %i.in, i64 16
  br label %.cont

.then:                                            ; preds = %bb.v
  %.sroa.gep448491 = getelementptr i8, ptr %.sroa.0446.0920, i64 8 ; 2 uses
  %.then.val456 = load ptr, ptr %.sroa.gep448491, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.gep507 = getelementptr i8, ptr %.sroa.0446.0920, i64 16 ; 2 uses
  %.then.val = load i64, ptr %.sroa.gep507, align 8, !noundef !4 ; 2 uses
  br label %.cont

.cont:                                            ; preds = %.cont454, %.then
  %.34.i.a = phi ptr [ %.then.val456, %.then ], [ @42, %.cont454 ] ; 3 uses
  %..i.a = phi i64 [ %.then.val, %.then ], [ 1, %.cont454 ] ; 3 uses
  %.sroa.gep519 = phi ptr [ %.sroa.gep507, %.then ], [ %.sroa.gep, %.cont454 ]
  %4 = phi ptr [ %.then.val456, %.then ], [ %i.in, %.cont454 ] ; 16 uses
  %.sroa.384.0494514 = phi ptr [ %.sroa.0446.0920, %.then ], [ %i.in, %.cont454 ] ; 2 uses
  %.sroa.082.0496512 = phi i64 [ -1, %.then ], [ 11, %.cont454 ] ; 2 uses
  %.sroa.gep448501508 = phi ptr [ %.sroa.gep448491, %.then ], [ %.sroa.gep448, %.cont454 ]
  %5 = phi i64 [ %.then.val, %.then ], [ 11, %.cont454 ] ; 20 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  br i1 %i.ft, label %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECsdTU8hOCbdCr_8uu_touch.exit.i, label %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsdTU8hOCbdCr_8uu_touch.exit.i

_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %.cont
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !958
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #27, !noalias !963
  %i.ip = load i64, ptr %i.cm, align 8, !range !286, !noalias !958, !noundef !4
  %i.iq = load ptr, ptr %i.fu, align 8, !noalias !964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !958
  br label %bb.y

_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %.cont
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !965
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.cl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #27, !noalias !969
  %i.ir = load i64, ptr %i.cl, align 8, !range !286, !noalias !965, !noundef !4
  %i.is = load ptr, ptr %i.fv, align 8, !noalias !964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !965
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECsdTU8hOCbdCr_8uu_touch.exit.i, %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsdTU8hOCbdCr_8uu_touch.exit.i
  %.sroa.8.0.i = phi ptr [ %i.is, %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECsdTU8hOCbdCr_8uu_touch.exit.i ], [ %i.iq, %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsdTU8hOCbdCr_8uu_touch.exit.i ] ; 10 uses
  %.sroa.0.093.i = phi i64 [ %i.ir, %_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECsdTU8hOCbdCr_8uu_touch.exit.i ], [ %i.ip, %_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECsdTU8hOCbdCr_8uu_touch.exit.i ]
  %i.it = icmp eq i64 %.sroa.0.093.i, 2
  br i1 %i.it, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i) ]
  %i.iu = ptrtoint ptr %.sroa.8.0.i to i64        ; 5 uses
  %i.iv = and i64 %i.iu, 3                        ; 3 uses
  switch i64 %i.iv, label %default.unreachable [
    i64 2, label %bb.aa
    i64 3, label %bb.ab
    i64 0, label %bb.ac
    i64 1, label %bb.ad
  ], !prof !189

default.unreachable:                              ; preds = %bb.ji, %bb.je, %bb.it, %bb.iq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsdTU8hOCbdCr_8uu_touch.exit.i.i, %bb.ig, %bb.ic, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.cf, %bb.ae, %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.iw = lshr i64 %i.iu, 32
  %i.ix = trunc nuw i64 %i.iw to i32
  %i.iy = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #27, !noalias !970
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !970, !nonnull !4, !noundef !4
  %i.jb = call noundef i8 %i.ja(i32 noundef %i.ix) #27, !noalias !970, !inline_history !971
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.jc = lshr i64 %i.iu, 32
  %i.jd = icmp ult ptr %.sroa.8.0.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.jc to i8 ; 2 uses
  %i.je = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.jd)
  call void @llvm.assume(i1 %i.je)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.ac:                                            ; preds = %bb.z
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 16
  %i.jg = load i8, ptr %i.jf, align 8, !range !922, !noalias !970, !noundef !4
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.ad:                                            ; preds = %bb.z
  %i.jh = getelementptr i8, ptr %.sroa.8.0.i, i64 31
  %i.ji = load i8, ptr %i.jh, align 8, !range !922, !noalias !970, !noundef !4
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sroa.0.0.i.i = phi i8 [ %i.jb, %bb.aa ], [ %switch.idx.cast.i.i.i.i, %bb.ab ], [ %i.jg, %bb.ac ], [ %i.ji, %bb.ad ]
  %.not.i = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %.not.i, label %bb.ew, label %bb.ex

bb.ae:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit, %bb.y
  switch i8 %.val41.i, label %default.unreachable [
    i8 0, label %bb.af
    i8 1, label %bb.ba
    i8 2, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %bb.ae
  br i1 %i.ft, label %bb.bz, label %bb.by

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !972
  call fastcc void @_RNvCsdTU8hOCbdCr_8uu_touch4stat(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ck, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i1 noundef zeroext %i.gd) #27, !noalias !970
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !972
  %i.jj = load i64, ptr %i.ck, align 8, !range !259, !alias.scope !978, !noalias !980, !noundef !4
  %i.jk = trunc nuw i64 %i.jj to i1
  br i1 %i.jk, label %bb.ag, label %.split.i.i

bb.ag:                                            ; preds = %bb.af
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !alias.scope !978, !noalias !980, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !982
  store i64 0, ptr %i.cg, align 8, !noalias !982
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !982
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !982
  store i64 1, ptr %i.cf, align 8, !noalias !982
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %4, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !982
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %5, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !982
  %i.jn = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store i8 1, ptr %i.jn, align 8, !noalias !982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !986
  store i64 0, ptr %i.cb, align 8, !noalias !986
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !986
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !986
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 1610612768, ptr %i.jo, align 8, !noalias !986
  store ptr %i.cb, ptr %i.ca, align 8, !noalias !986
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr @114, ptr %i.jp, align 8, !noalias !986
  %i.jq = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cf, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca) #27, !noalias !990
  br i1 %i.jq, label %bb.ah, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i, !prof !132

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !noalias !990
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i: ; preds = %bb.ag
  %.sroa.0.0.copyload4.i.i.i.i = load i64, ptr %i.cb, align 8, !noalias !991 ; 3 uses
  %.sroa.5.0.copyload7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !991, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.8.0.copyload10.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !991 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !982
  switch i64 %.sroa.8.0.copyload10.i.i.i.i, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %.loopexit.i.i.i.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i
  %i.jr = load i8, ptr %.sroa.5.0.copyload7.i.i.i.i, align 1, !alias.scope !992, !noalias !995, !noundef !4 ; 2 uses
  switch i8 %i.jr, label %bb.aj [
    i8 43, label %.loopexit.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i
  %.pr.i.i.i.i.i = load i8, ptr %.sroa.5.0.copyload7.i.i.i.i, align 1, !alias.scope !992, !noalias !995
  br label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split.i.i.i.i.i, %bb.ai
  %i.js = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.jr, %bb.ai ]
  switch i8 %i.js, label %bb.aq [
    i8 43, label %bb.ak
    i8 45, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i.i.i.i, i64 1
  %i.ju = add nsw i64 %.sroa.8.0.copyload10.i.i.i.i, -1
  br label %bb.aq

bb.al:                                            ; preds = %bb.aj
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i.i.i.i, i64 1 ; 2 uses
  %i.jw = add nsw i64 %.sroa.8.0.copyload10.i.i.i.i, -1 ; 3 uses
  %i.jx = icmp samesign ult i64 %.sroa.8.0.copyload10.i.i.i.i, 17
  br i1 %i.jx, label %.preheader114.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader114.i.i.i.i.i:                          ; preds = %bb.al
  %.not103137.i.i.i.i.i = icmp eq i64 %i.jw, 0
  br i1 %.not103137.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph141.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.al, %bb.ao
  %.sroa.0.1136.i.i.i.i.i = phi ptr [ %i.jy, %bb.ao ], [ %i.jv, %bb.al ] ; 2 uses
  %.sroa.26.1135.i.i.i.i.i = phi i64 [ %i.jz, %bb.ao ], [ %i.jw, %bb.al ]
  %.sroa.084.0134.i.i.i.i.i = phi i64 [ %i.kk, %bb.ao ], [ 0, %bb.al ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i.i.i, i64 1
  %i.jz = add nsw i64 %.sroa.26.1135.i.i.i.i.i, -1 ; 2 uses
  %i.ka = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i.i.i, i64 10) ; 2 uses
  %i.kb = extractvalue { i64, i1 } %i.ka, 0
  %i.kc = extractvalue { i64, i1 } %i.ka, 1
  br i1 %i.kc, label %.loopexit.i.i.i.i, label %bb.am, !prof !132

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.kd = load i8, ptr %.sroa.0.1136.i.i.i.i.i, align 1, !alias.scope !992, !noalias !995, !noundef !4
  %i.ke = zext i8 %i.kd to i32
  %i.kf = add nsw i32 %i.ke, -48                  ; 2 uses
  %i.kg = icmp ult i32 %i.kf, 10
  br i1 %i.kg, label %bb.an, label %.loopexit.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.kh = zext nneg i32 %i.kf to i64
  %i.ki = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.kb, i64 %i.kh) ; 2 uses
  %i.kj = extractvalue { i64, i1 } %i.ki, 1
  br i1 %i.kj, label %.loopexit.i.i.i.i, label %bb.ao, !prof !132

bb.ao:                                            ; preds = %bb.an
  %i.kk = extractvalue { i64, i1 } %i.ki, 0       ; 2 uses
  %.not102.i.i.i.i.i = icmp eq i64 %i.jz, 0
  br i1 %.not102.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvCsdTU8hOCbdCr_8uu_touch5touch:bb.a
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i.i148.i.i, i64 1
  %i.vn = add nsw i64 %.sroa.8.0.copyload10.i.i149.i.i, -1
  br label %bb.em

bb.eh:                                            ; preds = %bb.ef
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i.i148.i.i, i64 1 ; 2 uses
  %i.vp = add nsw i64 %.sroa.8.0.copyload10.i.i149.i.i, -1 ; 3 uses
  %i.vq = icmp samesign ult i64 %.sroa.8.0.copyload10.i.i149.i.i, 17
  br i1 %i.vq, label %.preheader114.i.i.i163.i.i, label %.lr.ph.i.i.i156.i.i

.preheader114.i.i.i163.i.i:                       ; preds = %bb.eh
  %.not103137.i.i.i164.i.i = icmp eq i64 %i.vp, 0
  br i1 %.not103137.i.i.i164.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i161.i.i, label %.lr.ph141.i.i.i165.i.i

.lr.ph.i.i.i156.i.i:                              ; preds = %bb.eh, %bb.ek
  %.sroa.0.1136.i.i.i157.i.i = phi ptr [ %i.vr, %bb.ek ], [ %i.vo, %bb.eh ] ; 2 uses
  %.sroa.26.1135.i.i.i158.i.i = phi i64 [ %i.vs, %bb.ek ], [ %i.vp, %bb.eh ]
  %.sroa.084.0134.i.i.i159.i.i = phi i64 [ %i.wd, %bb.ek ], [ 0, %bb.eh ]
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i157.i.i, i64 1
  %i.vs = add nsw i64 %.sroa.26.1135.i.i.i158.i.i, -1 ; 2 uses
  %i.vt = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i159.i.i, i64 10) ; 2 uses
  %i.vu = extractvalue { i64, i1 } %i.vt, 0
  %i.vv = extractvalue { i64, i1 } %i.vt, 1
  br i1 %i.vv, label %.loopexit.i.i150.i.i, label %bb.ei, !prof !132

bb.ei:                                            ; preds = %.lr.ph.i.i.i156.i.i
  %i.vw = load i8, ptr %.sroa.0.1136.i.i.i157.i.i, align 1, !alias.scope !1119, !noalias !1122, !noundef !4
  %i.vx = zext i8 %i.vw to i32
  %i.vy = add nsw i32 %i.vx, -48                  ; 2 uses
  %i.vz = icmp ult i32 %i.vy, 10
  br i1 %i.vz, label %bb.ej, label %.loopexit.i.i150.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.wa = zext nneg i32 %i.vy to i64
  %i.wb = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.vu, i64 %i.wa) ; 2 uses
  %i.wc = extractvalue { i64, i1 } %i.wb, 1
  br i1 %i.wc, label %.loopexit.i.i150.i.i, label %bb.ek, !prof !132

bb.ek:                                            ; preds = %bb.ej
  %i.wd = extractvalue { i64, i1 } %i.wb, 0       ; 2 uses
  %.not102.i.i.i160.i.i = icmp eq i64 %i.vs, 0
  br i1 %.not102.i.i.i160.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i161.i.i, label %.lr.ph.i.i.i156.i.i

.lr.ph141.i.i.i165.i.i:                           ; preds = %.preheader114.i.i.i163.i.i, %bb.el
  %.sroa.0.2140.i.i.i166.i.i = phi ptr [ %i.wk, %bb.el ], [ %i.vo, %.preheader114.i.i.i163.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i167.i.i = phi i64 [ %i.wj, %bb.el ], [ %i.vp, %.preheader114.i.i.i163.i.i ]
  %.sroa.084.2138.i.i.i168.i.i = phi i64 [ %i.wm, %bb.el ], [ 0, %.preheader114.i.i.i163.i.i ]
  %i.we = load i8, ptr %.sroa.0.2140.i.i.i166.i.i, align 1, !alias.scope !1119, !noalias !1122, !noundef !4
  %i.wf = zext i8 %i.we to i32
  %i.wg = add nsw i32 %i.wf, -48                  ; 2 uses
  %i.wh = icmp ult i32 %i.wg, 10
  br i1 %i.wh, label %bb.el, label %.loopexit.i.i150.i.i

bb.el:                                            ; preds = %.lr.ph141.i.i.i165.i.i
  %i.wi = mul i64 %.sroa.084.2138.i.i.i168.i.i, 10
  %i.wj = add nsw i64 %.sroa.26.2139.i.i.i167.i.i, -1 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i166.i.i, i64 1
  %i.wl = zext nneg i32 %i.wg to i64
  %i.wm = sub i64 %i.wi, %i.wl                    ; 2 uses
  %.not103.i.i.i169.i.i = icmp eq i64 %i.wj, 0
  br i1 %.not103.i.i.i169.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i161.i.i, label %.lr.ph141.i.i.i165.i.i

bb.em:                                            ; preds = %bb.eg, %bb.ef
  %.sroa.26.0.i.i.i170.i.i = phi i64 [ %i.vn, %bb.eg ], [ %.sroa.8.0.copyload10.i.i149.i.i, %bb.ef ] ; 4 uses
  %.sroa.0.0.i.i.i171.i.i = phi ptr [ %i.vm, %bb.eg ], [ %.sroa.5.0.copyload7.i.i148.i.i, %bb.ef ] ; 2 uses
  %i.wn = icmp samesign ult i64 %.sroa.26.0.i.i.i170.i.i, 16
  br i1 %i.wn, label %.preheader.i.i.i177.i.i, label %.preheader111.i.i.i172.i.i

.preheader.i.i.i177.i.i:                          ; preds = %bb.em
  %.not105146.i.i.i178.i.i = icmp eq i64 %.sroa.26.0.i.i.i170.i.i, 0
  br i1 %.not105146.i.i.i178.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i161.i.i, label %.lr.ph150.i.i.i179.i.i

.preheader111.i.i.i172.i.i:                       ; preds = %bb.em, %bb.ep
  %.sroa.0.3145.i.i.i173.i.i = phi ptr [ %i.wo, %bb.ep ], [ %.sroa.0.0.i.i.i171.i.i, %bb.em ] ; 2 uses
  %.sroa.26.3144.i.i.i174.i.i = phi i64 [ %i.wp, %bb.ep ], [ %.sroa.26.0.i.i.i170.i.i, %bb.em ]
  %.sroa.084.3143.i.i.i175.i.i = phi i64 [ %i.xa, %bb.ep ], [ 0, %bb.em ]
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i173.i.i, i64 1
  %i.wp = add nsw i64 %.sroa.26.3144.i.i.i174.i.i, -1 ; 2 uses
  %i.wq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i175.i.i, i64 10) ; 2 uses
  %i.wr = extractvalue { i64, i1 } %i.wq, 0
  %i.ws = extractvalue { i64, i1 } %i.wq, 1
  br i1 %i.ws, label %.loopexit.i.i150.i.i, label %bb.en, !prof !132

bb.en:                                            ; preds = %.preheader111.i.i.i172.i.i
  %i.wt = load i8, ptr %.sroa.0.3145.i.i.i173.i.i, align 1, !alias.scope !1119, !noalias !1122, !noundef !4
  %i.wu = zext i8 %i.wt to i32
  %i.wv = add nsw i32 %i.wu, -48                  ; 2 uses
  %i.ww = icmp ult i32 %i.wv, 10
  br i1 %i.ww, label %bb.eo, label %.loopexit.i.i150.i.i

bb.eo:                                            ; preds = %bb.en
  %i.wx = zext nneg i32 %i.wv to i64
  %i.wy = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.wr, i64 %i.wx) ; 2 uses
  %i.wz = extractvalue { i64, i1 } %i.wy, 1
  br i1 %i.wz, label %.loopexit.i.i150.i.i, label %bb.ep, !prof !132

bb.ep:                                            ; preds = %bb.eo
  %i.xa = extractvalue { i64, i1 } %i.wy, 0       ; 2 uses
  %.not104.i.i.i176.i.i = icmp eq i64 %i.wp, 0
  br i1 %.not104.i.i.i176.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i161.i.i, label %.preheader111.i.i.i172.i.i

.lr.ph150.i.i.i179.i.i:                           ; preds = %.preheader.i.i.i177.i.i, %bb.eq
  %.sroa.0.4149.i.i.i180.i.i = phi ptr [ %i.xh, %bb.eq ], [ %.sroa.0.0.i.i.i171.i.i, %.preheader.i.i.i177.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i181.i.i = phi i64 [ %i.xg, %bb.eq ], [ %.sroa.26.0.i.i.i170.i.i, %.preheader.i.i.i177.i.i ]
  %.sroa.084.4147.i.i.i182.i.i = phi i64 [ %i.xj, %bb.eq ], [ 0, %.preheader.i.i.i177.i.i ]
  %i.xb = load i8, ptr %.sroa.0.4149.i.i.i180.i.i, align 1, !alias.scope !1119, !noalias !1122, !noundef !4
  %i.xc = zext i8 %i.xb to i32
  %i.xd = add nsw i32 %i.xc, -48                  ; 2 uses
  %i.xe = icmp ult i32 %i.xd, 10
  br i1 %i.xe, label %bb.eq, label %.loopexit.i.i150.i.i

bb.eq:                                            ; preds = %.lr.ph150.i.i.i179.i.i
  %i.xf = mul i64 %.sroa.084.4147.i.i.i182.i.i, 10
  %i.xg = add nsw i64 %.sroa.26.4148.i.i.i181.i.i, -1 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i180.i.i, i64 1
  %i.xi = zext nneg i32 %i.xd to i64
  %i.xj = add i64 %i.xf, %i.xi                    ; 2 uses
  %.not105.i.i.i183.i.i = icmp eq i64 %i.xg, 0
  br i1 %.not105.i.i.i183.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i161.i.i, label %.lr.ph150.i.i.i179.i.i

.loopexit.i.i150.i.i:                             ; preds = %bb.ej, %bb.ei, %.lr.ph.i.i.i156.i.i, %.lr.ph141.i.i.i165.i.i, %bb.eo, %bb.en, %.preheader111.i.i.i172.i.i, %.lr.ph150.i.i.i179.i.i, %bb.ee, %bb.ee, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i.i146.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1107
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload7.i.i148.i.i, i64 noundef %.sroa.8.0.copyload10.i.i149.i.i) #26, !noalias !1124
  %i.xk = load i8, ptr %i.an, align 8, !range !644, !noalias !1107, !noundef !4
  %i.xl = trunc nuw i8 %i.xk to i1
  br i1 %i.xl, label %bb.et, label %bb.eu

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i161.i.i: ; preds = %bb.ek, %bb.el, %bb.ep, %bb.eq, %.preheader.i.i.i177.i.i, %.preheader114.i.i.i163.i.i
  %.sroa.1514.0.i.i162.i.i = phi i64 [ %i.xj, %bb.eq ], [ %i.wm, %bb.el ], [ %i.xa, %bb.ep ], [ 0, %.preheader.i.i.i177.i.i ], [ 0, %.preheader114.i.i.i163.i.i ], [ %i.wd, %bb.ek ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, i64 noundef %.sroa.1514.0.i.i162.i.i) #27, !noalias !1124
  br label %bb.er

bb.er:                                            ; preds = %bb.eu, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i161.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !1107
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al) #27, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1107
  %i.xm = icmp eq i64 %.sroa.0.0.copyload4.i.i147.i.i, 0
  br i1 %i.xm, label %_RNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0B3_.exit.i.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload7.i.i148.i.i, i64 noundef %.sroa.0.0.copyload4.i.i147.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1125
  br label %_RNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0B3_.exit.i.i.i

bb.et:                                            ; preds = %.loopexit.i.i150.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1107
  store i64 %.sroa.0.0.copyload4.i.i147.i.i, ptr %i.am, align 8, !noalias !1107
  store ptr %.sroa.5.0.copyload7.i.i148.i.i, ptr %.sroa.5.0..sroa_idx5.i.i154.i.i, align 8, !noalias !1107
  store i64 %.sroa.8.0.copyload10.i.i149.i.i, ptr %.sroa.8.0..sroa_idx.i.i155.i.i, align 8, !noalias !1107
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am) #27, !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !1107
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al) #27, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1107
  br label %_RNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0B3_.exit.i.i.i

bb.eu:                                            ; preds = %.loopexit.i.i150.i.i
  %i.xn = load double, ptr %i.hf, align 8, !noalias !1107, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, double noundef %i.xn) #27, !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1107
  br label %bb.er

_RNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0B3_.exit.i.i.i: ; preds = %bb.et, %bb.es, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1107
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1128
  %i.xo = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #27, !noalias !1128 ; 4 uses
  %i.xp = icmp eq ptr %i.xo, null
  br i1 %i.xp, label %bb.ev, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i151.i.i, !prof !132

bb.ev:                                            ; preds = %_RNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0B3_.exit.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #29, !noalias !1128
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i151.i.i: ; preds = %_RNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0B3_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xo, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !970
  %.sroa.4.0..sroa_idx.i152.i.i = getelementptr inbounds nuw i8, ptr %i.xo, i64 24
  store ptr %i.vi, ptr %.sroa.4.0..sroa_idx.i152.i.i, align 8, !noalias !970
  br label %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0EB3d_.exit.i.i

_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0EB3d_.exit.i.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i151.i.i, %.thread.i.i
  %.sroa.02.0.i153.i.i = phi ptr [ %i.xo, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i151.i.i ], [ null, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !972
  br label %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit

bb.ew:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i
  br i1 %i.fy, label %bb.iq, label %bb.fr

bb.ex:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1131
  store i64 0, ptr %i.ai, align 8, !noalias !1131
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1131
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1131
  store i64 1, ptr %i.ah, align 8, !noalias !1131
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.34.i.a, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1131
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %..i.a, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1131
  %i.xq = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i8 1, ptr %i.xq, align 8, !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1135
  store i64 0, ptr %i.ad, align 8, !noalias !1135
  %.sroa.4.0..sroa_idx.i.i49.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i49.i, align 8, !noalias !1135
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1135
  %i.xr = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 1610612768, ptr %i.xr, align 8, !noalias !1135
  store ptr %i.ad, ptr %i.ac, align 8, !noalias !1135
  %i.xs = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @114, ptr %i.xs, align 8, !noalias !1135
  %i.xt = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #27, !noalias !1139
  br i1 %i.xt, label %bb.ey, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i.i, !prof !132

bb.ey:                                            ; preds = %bb.ex
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !noalias !1139
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i.i: ; preds = %bb.ex
  %.sroa.0.0.copyload4.i.i = load i64, ptr %i.ad, align 8, !noalias !1140 ; 3 uses
  %.sroa.5.0.copyload7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i49.i, align 8, !noalias !1140, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.8.0.copyload10.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1140 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1131
  switch i64 %.sroa.8.0.copyload10.i.i, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.ez
  ]

bb.ez:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i.i
  %i.xu = load i8, ptr %.sroa.5.0.copyload7.i.i, align 1, !alias.scope !1141, !noalias !1144, !noundef !4 ; 2 uses
  switch i8 %i.xu, label %bb.fa [
    i8 43, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i.i
  %.pr.i.i.i = load i8, ptr %.sroa.5.0.copyload7.i.i, align 1, !alias.scope !1141, !noalias !1144
  br label %bb.fa

bb.fa:                                            ; preds = %thread-pre-split.i.i.i, %bb.ez
  %i.xv = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.xu, %bb.ez ]
  switch i8 %i.xv, label %bb.fh [
    i8 43, label %bb.fb
    i8 45, label %bb.fc
  ]

bb.fb:                                            ; preds = %bb.fa
  %i.xw = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i.i, i64 1
  %i.xx = add nsw i64 %.sroa.8.0.copyload10.i.i, -1
  br label %bb.fh

bb.fc:                                            ; preds = %bb.fa
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i.i, i64 1 ; 2 uses
  %i.xz = add nsw i64 %.sroa.8.0.copyload10.i.i, -1 ; 3 uses
  %i.ya = icmp samesign ult i64 %.sroa.8.0.copyload10.i.i, 17
  br i1 %i.ya, label %.preheader114.i.i.i, label %.lr.ph.i.i.i

.preheader114.i.i.i:                              ; preds = %bb.fc
  %.not103137.i.i.i = icmp eq i64 %i.xz, 0
  br i1 %.not103137.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph141.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fc, %bb.ff
  %.sroa.0.1136.i.i.i = phi ptr [ %i.yb, %bb.ff ], [ %i.xy, %bb.fc ] ; 2 uses
  %.sroa.26.1135.i.i.i = phi i64 [ %i.yc, %bb.ff ], [ %i.xz, %bb.fc ]
  %.sroa.084.0134.i.i.i = phi i64 [ %i.yn, %bb.ff ], [ 0, %bb.fc ]
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i, i64 1
  %i.yc = add nsw i64 %.sroa.26.1135.i.i.i, -1    ; 2 uses
  %i.yd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i, i64 10) ; 2 uses
  %i.ye = extractvalue { i64, i1 } %i.yd, 0
  %i.yf = extractvalue { i64, i1 } %i.yd, 1
  br i1 %i.yf, label %.loopexit.i.i, label %bb.fd, !prof !132

bb.fd:                                            ; preds = %.lr.ph.i.i.i
  %i.yg = load i8, ptr %.sroa.0.1136.i.i.i, align 1, !alias.scope !1141, !noalias !1144, !noundef !4
  %i.yh = zext i8 %i.yg to i32
  %i.yi = add nsw i32 %i.yh, -48                  ; 2 uses
  %i.yj = icmp ult i32 %i.yi, 10
  br i1 %i.yj, label %bb.fe, label %.loopexit.i.i

bb.fe:                                            ; preds = %bb.fd
  %i.yk = zext nneg i32 %i.yi to i64
  %i.yl = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ye, i64 %i.yk) ; 2 uses
  %i.ym = extractvalue { i64, i1 } %i.yl, 1
  br i1 %i.ym, label %.loopexit.i.i, label %bb.ff, !prof !132

bb.ff:                                            ; preds = %bb.fe
  %i.yn = extractvalue { i64, i1 } %i.yl, 0       ; 2 uses
  %.not102.i.i.i = icmp eq i64 %i.yc, 0
  br i1 %.not102.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.lr.ph141.i.i.i:                                  ; preds = %.preheader114.i.i.i, %bb.fg
  %.sroa.0.2140.i.i.i = phi ptr [ %i.yu, %bb.fg ], [ %i.xy, %.preheader114.i.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i = phi i64 [ %i.yt, %bb.fg ], [ %i.xz, %.preheader114.i.i.i ]
  %.sroa.084.2138.i.i.i = phi i64 [ %i.yw, %bb.fg ], [ 0, %.preheader114.i.i.i ]
  %i.yo = load i8, ptr %.sroa.0.2140.i.i.i, align 1, !alias.scope !1141, !noalias !1144, !noundef !4
  %i.yp = zext i8 %i.yo to i32
  %i.yq = add nsw i32 %i.yp, -48                  ; 2 uses
  %i.yr = icmp ult i32 %i.yq, 10
  br i1 %i.yr, label %bb.fg, label %.loopexit.i.i

bb.fg:                                            ; preds = %.lr.ph141.i.i.i
  %i.ys = mul i64 %.sroa.084.2138.i.i.i, 10
  %i.yt = add nsw i64 %.sroa.26.2139.i.i.i, -1    ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i, i64 1
  %i.yv = zext nneg i32 %i.yq to i64
  %i.yw = sub i64 %i.ys, %i.yv                    ; 2 uses
  %.not103.i.i.i = icmp eq i64 %i.yt, 0
  br i1 %.not103.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph141.i.i.i

bb.fh:                                            ; preds = %bb.fb, %bb.fa
  %.sroa.26.0.i.i.i = phi i64 [ %i.xx, %bb.fb ], [ %.sroa.8.0.copyload10.i.i, %bb.fa ] ; 4 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.xw, %bb.fb ], [ %.sroa.5.0.copyload7.i.i, %bb.fa ] ; 2 uses
  %i.yx = icmp samesign ult i64 %.sroa.26.0.i.i.i, 16
  br i1 %i.yx, label %.preheader.i.i.i, label %.preheader111.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.fh
  %.not105146.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 0
  br i1 %.not105146.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph150.i.i.i

.preheader111.i.i.i:                              ; preds = %bb.fh, %bb.fk
  %.sroa.0.3145.i.i.i = phi ptr [ %i.yy, %bb.fk ], [ %.sroa.0.0.i.i.i, %bb.fh ] ; 2 uses
  %.sroa.26.3144.i.i.i = phi i64 [ %i.yz, %bb.fk ], [ %.sroa.26.0.i.i.i, %bb.fh ]
  %.sroa.084.3143.i.i.i = phi i64 [ %i.zk, %bb.fk ], [ 0, %bb.fh ]
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i, i64 1
  %i.yz = add nsw i64 %.sroa.26.3144.i.i.i, -1    ; 2 uses
  %i.za = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i, i64 10) ; 2 uses
  %i.zb = extractvalue { i64, i1 } %i.za, 0
  %i.zc = extractvalue { i64, i1 } %i.za, 1
  br i1 %i.zc, label %.loopexit.i.i, label %bb.fi, !prof !132

bb.fi:                                            ; preds = %.preheader111.i.i.i
  %i.zd = load i8, ptr %.sroa.0.3145.i.i.i, align 1, !alias.scope !1141, !noalias !1144, !noundef !4
  %i.ze = zext i8 %i.zd to i32
  %i.zf = add nsw i32 %i.ze, -48                  ; 2 uses
  %i.zg = icmp ult i32 %i.zf, 10
  br i1 %i.zg, label %bb.fj, label %.loopexit.i.i

bb.fj:                                            ; preds = %bb.fi
  %i.zh = zext nneg i32 %i.zf to i64
  %i.zi = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.zb, i64 %i.zh) ; 2 uses
  %i.zj = extractvalue { i64, i1 } %i.zi, 1
  br i1 %i.zj, label %.loopexit.i.i, label %bb.fk, !prof !132

bb.fk:                                            ; preds = %bb.fj
  %i.zk = extractvalue { i64, i1 } %i.zi, 0       ; 2 uses
  %.not104.i.i.i = icmp eq i64 %i.yz, 0
  br i1 %.not104.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader111.i.i.i

.lr.ph150.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.fl
  %.sroa.0.4149.i.i.i = phi ptr [ %i.zr, %bb.fl ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i = phi i64 [ %i.zq, %bb.fl ], [ %.sroa.26.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.084.4147.i.i.i = phi i64 [ %i.zt, %bb.fl ], [ 0, %.preheader.i.i.i ]
  %i.zl = load i8, ptr %.sroa.0.4149.i.i.i, align 1, !alias.scope !1141, !noalias !1144, !noundef !4
  %i.zm = zext i8 %i.zl to i32
  %i.zn = add nsw i32 %i.zm, -48                  ; 2 uses
  %i.zo = icmp ult i32 %i.zn, 10
  br i1 %i.zo, label %bb.fl, label %.loopexit.i.i

bb.fl:                                            ; preds = %.lr.ph150.i.i.i
  %i.zp = mul i64 %.sroa.084.4147.i.i.i, 10
  %i.zq = add nsw i64 %.sroa.26.4148.i.i.i, -1    ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i, i64 1
  %i.zs = zext nneg i32 %i.zn to i64
  %i.zt = add i64 %i.zp, %i.zs                    ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.zq, 0
  br i1 %.not105.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph150.i.i.i

.loopexit.i.i:                                    ; preds = %bb.fe, %bb.fd, %.lr.ph.i.i.i, %.lr.ph141.i.i.i, %bb.fj, %bb.fi, %.preheader111.i.i.i, %.lr.ph150.i.i.i, %bb.ez, %bb.ez, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1131
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload7.i.i, i64 noundef %.sroa.8.0.copyload10.i.i) #26, !noalias !1146
  %i.zu = load i8, ptr %i.ag, align 8, !range !644, !noalias !1131, !noundef !4
  %i.zv = trunc nuw i8 %i.zu to i1
  br i1 %i.zv, label %bb.fo, label %bb.fp

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.ff, %bb.fg, %bb.fk, %bb.fl, %.preheader.i.i.i, %.preheader114.i.i.i
  %.sroa.1514.0.i.i = phi i64 [ %i.zt, %bb.fl ], [ %i.yw, %bb.fg ], [ %i.zk, %bb.fk ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader114.i.i.i ], [ %i.yn, %bb.ff ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, i64 noundef %.sroa.1514.0.i.i) #27, !noalias !1146
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fp, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !1131
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae) #27, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1131
  %i.zw = icmp eq i64 %.sroa.0.0.copyload4.i.i, 0
  br i1 %i.zw, label %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_file0B3_.exit.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload7.i.i, i64 noundef %.sroa.0.0.copyload4.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1147
  br label %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_file0B3_.exit.i

bb.fo:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1131
  store i64 %.sroa.0.0.copyload4.i.i, ptr %i.af, align 8, !noalias !1131
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.5.0.copyload7.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !noalias !1131
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.8.0.copyload10.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1131
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af) #27, !noalias !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !1131
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae) #27, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1131
  br label %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_file0B3_.exit.i

bb.fp:                                            ; preds = %.loopexit.i.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.zy = load double, ptr %i.zx, align 8, !noalias !1131, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, double noundef %i.zy) #27, !noalias !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1131
  br label %bb.fm

_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_file0B3_.exit.i: ; preds = %bb.fo, %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1131
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1150
  %i.zz = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #27, !noalias !1150 ; 4 uses
  %i.aaa = icmp eq ptr %i.zz, null
  br i1 %i.aaa, label %bb.fq, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !132

bb.fq:                                            ; preds = %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_file0B3_.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #29, !noalias !1150
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_file0B3_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zz, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !noalias !970
  %.sroa.4.0..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.zz, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.4.0..sroa_idx85.i, align 8, !noalias !970
  br label %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit.thread

bb.fr:                                            ; preds = %bb.ew
  br i1 %i.ft, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1153
  store i128 79228167236630822344384839680, ptr %i.ab, align 16, !noalias !1153
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cv, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #27, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1153
  %i.aab = load i32, ptr %i.cv, align 8, !range !308, !noalias !964, !noundef !4
  %i.aac = trunc nuw i32 %i.aab to i1
  br i1 %i.aac, label %bb.gi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !964
  store i64 0, ptr %i.df, align 8, !noalias !964
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !964
  store i64 0, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !964
  store i64 1, ptr %i.de, align 8, !noalias !964
  store ptr %.34.i.a, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !964
  store i64 %..i.a, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !964
  store i8 1, ptr %i.hz, align 8, !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1157
  store i64 0, ptr %i.aa, align 8, !noalias !1157
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i50.i, align 8, !noalias !1157
  store i64 0, ptr %.sroa.5.0..sroa_idx.i51.i, align 8, !noalias !1157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1157
  store i64 1610612768, ptr %i.ia, align 8, !noalias !1157
  store ptr %i.aa, ptr %i.z, align 8, !noalias !1157
  store ptr @114, ptr %i.ib, align 8, !noalias !1157
  %i.aad = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #27, !noalias !1161
  br i1 %i.aad, label %bb.fu, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i, !prof !132

bb.fu:                                            ; preds = %bb.ft
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !noalias !1161
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %bb.ft
  %.sroa.069.0.copyload70.i = load i64, ptr %i.aa, align 8, !noalias !1162 ; 3 uses
  %.sroa.5.0.copyload72.i = load ptr, ptr %.sroa.4.0..sroa_idx.i50.i, align 8, !noalias !1162, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.874.0.copyload76.i = load i64, ptr %.sroa.5.0..sroa_idx.i51.i, align 8, !noalias !1162 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !964
  switch i64 %.sroa.874.0.copyload76.i, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.i
    i64 1, label %bb.fv
  ]

bb.fv:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i
  %i.aae = load i8, ptr %.sroa.5.0.copyload72.i, align 1, !alias.scope !1163, !noalias !1166, !noundef !4 ; 2 uses
  switch i8 %i.aae, label %bb.fw [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i.i:                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i
  %.pr.i.i = load i8, ptr %.sroa.5.0.copyload72.i, align 1, !alias.scope !1163, !noalias !1166
  br label %bb.fw

bb.fw:                                            ; preds = %thread-pre-split.i.i, %bb.fv
  %i.aaf = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.aae, %bb.fv ]
  switch i8 %i.aaf, label %bb.gd [
    i8 43, label %bb.fx
    i8 45, label %bb.fy
  ]

bb.fx:                                            ; preds = %bb.fw
  %i.aag = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload72.i, i64 1
  %i.aah = add nsw i64 %.sroa.874.0.copyload76.i, -1
  br label %bb.gd

bb.fy:                                            ; preds = %bb.fw
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload72.i, i64 1 ; 2 uses
  %i.aaj = add nsw i64 %.sroa.874.0.copyload76.i, -1 ; 3 uses
  %i.aak = icmp samesign ult i64 %.sroa.874.0.copyload76.i, 17
  br i1 %i.aak, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.fy
  %.not103137.i.i = icmp eq i64 %i.aaj, 0
  br i1 %.not103137.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.fy, %bb.gb
  %.sroa.0.1136.i.i = phi ptr [ %i.aal, %bb.gb ], [ %i.aai, %bb.fy ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.aam, %bb.gb ], [ %i.aaj, %bb.fy ]
  %.sroa.084.0134.i.i = phi i64 [ %i.aax, %bb.gb ], [ 0, %bb.fy ]
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.aam = add nsw i64 %.sroa.26.1135.i.i, -1     ; 2 uses
  %i.aan = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.aao = extractvalue { i64, i1 } %i.aan, 0
  %i.aap = extractvalue { i64, i1 } %i.aan, 1
  br i1 %i.aap, label %.loopexit.i, label %bb.fz, !prof !132

bb.fz:                                            ; preds = %.lr.ph.i.i
  %i.aaq = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !1163, !noalias !1166, !noundef !4
  %i.aar = zext i8 %i.aaq to i32
  %i.aas = add nsw i32 %i.aar, -48                ; 2 uses
  %i.aat = icmp ult i32 %i.aas, 10
  br i1 %i.aat, label %bb.ga, label %.loopexit.i

bb.ga:                                            ; preds = %bb.fz
  %i.aau = zext nneg i32 %i.aas to i64
  %i.aav = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.aao, i64 %i.aau) ; 2 uses
  %i.aaw = extractvalue { i64, i1 } %i.aav, 1
  br i1 %i.aaw, label %.loopexit.i, label %bb.gb, !prof !132

bb.gb:                                            ; preds = %bb.ga
  %i.aax = extractvalue { i64, i1 } %i.aav, 0     ; 2 uses
  %.not102.i.i = icmp eq i64 %i.aam, 0
  br i1 %.not102.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.gc
  %.sroa.0.2140.i.i = phi ptr [ %i.abe, %bb.gc ], [ %i.aai, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.abd, %bb.gc ], [ %i.aaj, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.abg, %bb.gc ], [ 0, %.preheader114.i.i ]
  %i.aay = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !1163, !noalias !1166, !noundef !4
  %i.aaz = zext i8 %i.aay to i32
  %i.aba = add nsw i32 %i.aaz, -48                ; 2 uses
  %i.abb = icmp ult i32 %i.aba, 10
  br i1 %i.abb, label %bb.gc, label %.loopexit.i

bb.gc:                                            ; preds = %.lr.ph141.i.i
  %i.abc = mul i64 %.sroa.084.2138.i.i, 10
  %i.abd = add nsw i64 %.sroa.26.2139.i.i, -1     ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.abf = zext nneg i32 %i.aba to i64
  %i.abg = sub i64 %i.abc, %i.abf                 ; 2 uses
  %.not103.i.i = icmp eq i64 %i.abd, 0
  br i1 %.not103.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

bb.gd:                                            ; preds = %bb.fx, %bb.fw
  %.sroa.26.0.i.i = phi i64 [ %i.aah, %bb.fx ], [ %.sroa.874.0.copyload76.i, %bb.fw ] ; 4 uses
  %.sroa.0.0.i53.i = phi ptr [ %i.aag, %bb.fx ], [ %.sroa.5.0.copyload72.i, %bb.fw ] ; 2 uses
  %i.abh = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.abh, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.gd
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.gd, %bb.gg
  %.sroa.0.3145.i.i = phi ptr [ %i.abi, %bb.gg ], [ %.sroa.0.0.i53.i, %bb.gd ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.abj, %bb.gg ], [ %.sroa.26.0.i.i, %bb.gd ]
  %.sroa.084.3143.i.i = phi i64 [ %i.abu, %bb.gg ], [ 0, %bb.gd ]
  %i.abi = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.abj = add nsw i64 %.sroa.26.3144.i.i, -1     ; 2 uses
  %i.abk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.abl = extractvalue { i64, i1 } %i.abk, 0
  %i.abm = extractvalue { i64, i1 } %i.abk, 1
  br i1 %i.abm, label %.loopexit.i, label %bb.ge, !prof !132

bb.ge:                                            ; preds = %.preheader111.i.i
  %i.abn = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !1163, !noalias !1166, !noundef !4
  %i.abo = zext i8 %i.abn to i32
  %i.abp = add nsw i32 %i.abo, -48                ; 2 uses
  %i.abq = icmp ult i32 %i.abp, 10
  br i1 %i.abq, label %bb.gf, label %.loopexit.i

bb.gf:                                            ; preds = %bb.ge
  %i.abr = zext nneg i32 %i.abp to i64
  %i.abs = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.abl, i64 %i.abr) ; 2 uses
  %i.abt = extractvalue { i64, i1 } %i.abs, 1
  br i1 %i.abt, label %.loopexit.i, label %bb.gg, !prof !132

bb.gg:                                            ; preds = %bb.gf
  %i.abu = extractvalue { i64, i1 } %i.abs, 0     ; 2 uses
  %.not104.i.i = icmp eq i64 %i.abj, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.gh
  %.sroa.0.4149.i.i = phi ptr [ %i.acb, %bb.gh ], [ %.sroa.0.0.i53.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.aca, %bb.gh ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.acd, %bb.gh ], [ 0, %.preheader.i.i ]
  %i.abv = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !1163, !noalias !1166, !noundef !4
  %i.abw = zext i8 %i.abv to i32
  %i.abx = add nsw i32 %i.abw, -48                ; 2 uses
  %i.aby = icmp ult i32 %i.abx, 10
  br i1 %i.aby, label %bb.gh, label %.loopexit.i

bb.gh:                                            ; preds = %.lr.ph150.i.i
  %i.abz = mul i64 %.sroa.084.4147.i.i, 10
  %i.aca = add nsw i64 %.sroa.26.4148.i.i, -1     ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.acc = zext nneg i32 %i.abx to i64
  %i.acd = add i64 %i.abz, %i.acc                 ; 2 uses
  %.not105.i.i = icmp eq i64 %i.aca, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

bb.gi:                                            ; preds = %bb.fs
  %i.ace = load ptr, ptr %i.hg, align 8, !noalias !964, !nonnull !4, !noundef !4 ; 4 uses
  %.not33.i = icmp eq i64 %5, 0
  br i1 %.not33.i, label %.critedge.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.acf = getelementptr i8, ptr %4, i64 %5
  %i.acg = getelementptr i8, ptr %i.acf, i64 -1
  %i.ach = load i8, ptr %i.acg, align 1, !alias.scope !955, !noalias !970, !noundef !4
  %i.aci = icmp eq i8 %i.ach, 47
  br i1 %i.aci, label %bb.hd, label %.critedge.i

.critedge.i:                                      ; preds = %bb.gj, %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.091.i), !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1168
  store i64 0, ptr %i.h, align 8, !noalias !1168
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i399, align 8, !noalias !1168
  store i64 0, ptr %.sroa.5.0..sroa_idx.i400, align 8, !noalias !1168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1168
  store i64 1, ptr %i.g, align 8, !noalias !1168
  store ptr %4, ptr %.sroa.42.0..sroa_idx.i401, align 8, !noalias !1168
  store i64 %5, ptr %.sroa.53.0..sroa_idx.i402, align 8, !noalias !1168
  store i8 1, ptr %i.hm, align 8, !noalias !1168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1172
  store i64 0, ptr %i.c, align 8, !noalias !1172
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i403, align 8, !noalias !1172
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i404, align 8, !noalias !1172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1172
  store i64 1610612768, ptr %i.hn, align 8, !noalias !1172
  store ptr %i.c, ptr %i.b, align 8, !noalias !1172
  store ptr @114, ptr %i.ho, align 8, !noalias !1172
  %i.acj = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #27, !noalias !1176
  br i1 %i.acj, label %bb.gk, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i405, !prof !132
end_hunk_1
begin_hunk_2_@_RNvCsdTU8hOCbdCr_8uu_touch5touch:bb.a
  switch i8 %i.acl, label %bb.gt [
    i8 43, label %bb.gn
    i8 45, label %bb.go
  ]

bb.gn:                                            ; preds = %bb.gm
  %i.acm = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i407, i64 1
  %i.acn = add nsw i64 %.sroa.8.0.copyload10.i408, -1
  br label %bb.gt

bb.go:                                            ; preds = %bb.gm
  %i.aco = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i407, i64 1 ; 2 uses
  %i.acp = add nsw i64 %.sroa.8.0.copyload10.i408, -1 ; 3 uses
  %i.acq = icmp samesign ult i64 %.sroa.8.0.copyload10.i408, 17
  br i1 %i.acq, label %.preheader114.i.i420, label %.lr.ph.i.i413

.preheader114.i.i420:                             ; preds = %bb.go
  %.not103137.i.i421 = icmp eq i64 %i.acp, 0
  br i1 %.not103137.i.i421, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i418, label %.lr.ph141.i.i422

.lr.ph.i.i413:                                    ; preds = %bb.go, %bb.gr
  %.sroa.0.1136.i.i414 = phi ptr [ %i.acr, %bb.gr ], [ %i.aco, %bb.go ] ; 2 uses
  %.sroa.26.1135.i.i415 = phi i64 [ %i.acs, %bb.gr ], [ %i.acp, %bb.go ]
  %.sroa.084.0134.i.i416 = phi i64 [ %i.add, %bb.gr ], [ 0, %bb.go ]
  %i.acr = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i414, i64 1
  %i.acs = add nsw i64 %.sroa.26.1135.i.i415, -1  ; 2 uses
  %i.act = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i416, i64 10) ; 2 uses
  %i.acu = extractvalue { i64, i1 } %i.act, 0
  %i.acv = extractvalue { i64, i1 } %i.act, 1
  br i1 %i.acv, label %.loopexit.i409, label %bb.gp, !prof !132

bb.gp:                                            ; preds = %.lr.ph.i.i413
  %i.acw = load i8, ptr %.sroa.0.1136.i.i414, align 1, !alias.scope !1178, !noalias !1181, !noundef !4
  %i.acx = zext i8 %i.acw to i32
  %i.acy = add nsw i32 %i.acx, -48                ; 2 uses
  %i.acz = icmp ult i32 %i.acy, 10
  br i1 %i.acz, label %bb.gq, label %.loopexit.i409

bb.gq:                                            ; preds = %bb.gp
  %i.ada = zext nneg i32 %i.acy to i64
  %i.adb = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.acu, i64 %i.ada) ; 2 uses
  %i.adc = extractvalue { i64, i1 } %i.adb, 1
  br i1 %i.adc, label %.loopexit.i409, label %bb.gr, !prof !132

bb.gr:                                            ; preds = %bb.gq
  %i.add = extractvalue { i64, i1 } %i.adb, 0     ; 2 uses
  %.not102.i.i417 = icmp eq i64 %i.acs, 0
  br i1 %.not102.i.i417, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i418, label %.lr.ph.i.i413

.lr.ph141.i.i422:                                 ; preds = %.preheader114.i.i420, %bb.gs
  %.sroa.0.2140.i.i423 = phi ptr [ %i.adk, %bb.gs ], [ %i.aco, %.preheader114.i.i420 ] ; 2 uses
  %.sroa.26.2139.i.i424 = phi i64 [ %i.adj, %bb.gs ], [ %i.acp, %.preheader114.i.i420 ]
  %.sroa.084.2138.i.i425 = phi i64 [ %i.adm, %bb.gs ], [ 0, %.preheader114.i.i420 ]
  %i.ade = load i8, ptr %.sroa.0.2140.i.i423, align 1, !alias.scope !1178, !noalias !1181, !noundef !4
  %i.adf = zext i8 %i.ade to i32
  %i.adg = add nsw i32 %i.adf, -48                ; 2 uses
  %i.adh = icmp ult i32 %i.adg, 10
  br i1 %i.adh, label %bb.gs, label %.loopexit.i409

bb.gs:                                            ; preds = %.lr.ph141.i.i422
  %i.adi = mul i64 %.sroa.084.2138.i.i425, 10
  %i.adj = add nsw i64 %.sroa.26.2139.i.i424, -1  ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i423, i64 1
  %i.adl = zext nneg i32 %i.adg to i64
  %i.adm = sub i64 %i.adi, %i.adl                 ; 2 uses
  %.not103.i.i426 = icmp eq i64 %i.adj, 0
  br i1 %.not103.i.i426, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i418, label %.lr.ph141.i.i422

bb.gt:                                            ; preds = %bb.gn, %bb.gm
  %.sroa.26.0.i.i427 = phi i64 [ %i.acn, %bb.gn ], [ %.sroa.8.0.copyload10.i408, %bb.gm ] ; 4 uses
  %.sroa.0.0.i.i428 = phi ptr [ %i.acm, %bb.gn ], [ %.sroa.5.0.copyload7.i407, %bb.gm ] ; 2 uses
  %i.adn = icmp samesign ult i64 %.sroa.26.0.i.i427, 16
  br i1 %i.adn, label %.preheader.i.i434, label %.preheader111.i.i429

.preheader.i.i434:                                ; preds = %bb.gt
  %.not105146.i.i435 = icmp eq i64 %.sroa.26.0.i.i427, 0
  br i1 %.not105146.i.i435, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i418, label %.lr.ph150.i.i436

.preheader111.i.i429:                             ; preds = %bb.gt, %bb.gw
  %.sroa.0.3145.i.i430 = phi ptr [ %i.ado, %bb.gw ], [ %.sroa.0.0.i.i428, %bb.gt ] ; 2 uses
  %.sroa.26.3144.i.i431 = phi i64 [ %i.adp, %bb.gw ], [ %.sroa.26.0.i.i427, %bb.gt ]
  %.sroa.084.3143.i.i432 = phi i64 [ %i.aea, %bb.gw ], [ 0, %bb.gt ]
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i430, i64 1
  %i.adp = add nsw i64 %.sroa.26.3144.i.i431, -1  ; 2 uses
  %i.adq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i432, i64 10) ; 2 uses
  %i.adr = extractvalue { i64, i1 } %i.adq, 0
  %i.ads = extractvalue { i64, i1 } %i.adq, 1
  br i1 %i.ads, label %.loopexit.i409, label %bb.gu, !prof !132

bb.gu:                                            ; preds = %.preheader111.i.i429
  %i.adt = load i8, ptr %.sroa.0.3145.i.i430, align 1, !alias.scope !1178, !noalias !1181, !noundef !4
  %i.adu = zext i8 %i.adt to i32
  %i.adv = add nsw i32 %i.adu, -48                ; 2 uses
  %i.adw = icmp ult i32 %i.adv, 10
  br i1 %i.adw, label %bb.gv, label %.loopexit.i409

bb.gv:                                            ; preds = %bb.gu
  %i.adx = zext nneg i32 %i.adv to i64
  %i.ady = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.adr, i64 %i.adx) ; 2 uses
  %i.adz = extractvalue { i64, i1 } %i.ady, 1
  br i1 %i.adz, label %.loopexit.i409, label %bb.gw, !prof !132

bb.gw:                                            ; preds = %bb.gv
  %i.aea = extractvalue { i64, i1 } %i.ady, 0     ; 2 uses
  %.not104.i.i433 = icmp eq i64 %i.adp, 0
  br i1 %.not104.i.i433, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i418, label %.preheader111.i.i429

.lr.ph150.i.i436:                                 ; preds = %.preheader.i.i434, %bb.gx
  %.sroa.0.4149.i.i437 = phi ptr [ %i.aeh, %bb.gx ], [ %.sroa.0.0.i.i428, %.preheader.i.i434 ] ; 2 uses
  %.sroa.26.4148.i.i438 = phi i64 [ %i.aeg, %bb.gx ], [ %.sroa.26.0.i.i427, %.preheader.i.i434 ]
  %.sroa.084.4147.i.i439 = phi i64 [ %i.aej, %bb.gx ], [ 0, %.preheader.i.i434 ]
  %i.aeb = load i8, ptr %.sroa.0.4149.i.i437, align 1, !alias.scope !1178, !noalias !1181, !noundef !4
  %i.aec = zext i8 %i.aeb to i32
  %i.aed = add nsw i32 %i.aec, -48                ; 2 uses
  %i.aee = icmp ult i32 %i.aed, 10
  br i1 %i.aee, label %bb.gx, label %.loopexit.i409

bb.gx:                                            ; preds = %.lr.ph150.i.i436
  %i.aef = mul i64 %.sroa.084.4147.i.i439, 10
  %i.aeg = add nsw i64 %.sroa.26.4148.i.i438, -1  ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i437, i64 1
  %i.aei = zext nneg i32 %i.aed to i64
  %i.aej = add i64 %i.aef, %i.aei                 ; 2 uses
  %.not105.i.i440 = icmp eq i64 %i.aeg, 0
  br i1 %.not105.i.i440, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i418, label %.lr.ph150.i.i436

.loopexit.i409:                                   ; preds = %bb.gq, %bb.gp, %.lr.ph.i.i413, %.lr.ph141.i.i422, %bb.gv, %bb.gu, %.preheader111.i.i429, %.lr.ph150.i.i436, %bb.gl, %bb.gl, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1168
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload7.i407, i64 noundef %.sroa.8.0.copyload10.i408) #26, !noalias !1183
  %i.aek = load i8, ptr %i.f, align 8, !range !644, !noalias !1168, !noundef !4
  %i.ael = trunc nuw i8 %i.aek to i1
  br i1 %i.ael, label %bb.ha, label %bb.hb

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i418: ; preds = %bb.gr, %bb.gs, %bb.gw, %bb.gx, %.preheader.i.i434, %.preheader114.i.i420
  %.sroa.1514.0.i419 = phi i64 [ %i.aej, %bb.gx ], [ %i.adm, %bb.gs ], [ %i.aea, %bb.gw ], [ 0, %.preheader.i.i434 ], [ 0, %.preheader114.i.i420 ], [ %i.add, %bb.gr ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, i64 noundef %.sroa.1514.0.i419) #27, !noalias !1183
  br label %bb.gy

bb.gy:                                            ; preds = %bb.hb, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1168
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.091.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #27, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1168
  %i.aem = icmp eq i64 %.sroa.0.0.copyload4.i406, 0
  br i1 %i.aem, label %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_files0_0B3_.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload7.i407, i64 noundef %.sroa.0.0.copyload4.i406, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1184
  br label %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_files0_0B3_.exit

bb.ha:                                            ; preds = %.loopexit.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1168
  store i64 %.sroa.0.0.copyload4.i406, ptr %i.e, align 8, !noalias !1168
  store ptr %.sroa.5.0.copyload7.i407, ptr %.sroa.5.0..sroa_idx5.i411, align 8, !noalias !1168
  store i64 %.sroa.8.0.copyload10.i408, ptr %.sroa.8.0..sroa_idx.i412, align 8, !noalias !1168
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #27, !noalias !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1168
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.091.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #27, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1168
  br label %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_files0_0B3_.exit

bb.hb:                                            ; preds = %.loopexit.i409
  %i.aen = load double, ptr %i.hp, align 8, !noalias !1168, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, double noundef %i.aen) #27, !noalias !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1168
  br label %bb.gy

_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_files0_0B3_.exit: ; preds = %bb.gy, %bb.gz, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1168
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1187
  %i.aeo = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #27, !noalias !1187 ; 5 uses
  %i.aep = icmp eq ptr %i.aeo, null
  br i1 %i.aep, label %bb.hc, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit398, !prof !132

bb.hc:                                            ; preds = %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_files0_0B3_.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #29, !noalias !1187
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit398: ; preds = %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_files0_0B3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeo, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.091.i, i64 24, i1 false), !noalias !970
  %.sroa.492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aeo, i64 24
  store ptr %i.ace, ptr %.sroa.492.0..sroa_idx.i, align 8, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.091.i), !noalias !964
  br i1 %i.hs, label %bb.ip, label %bb.hz

bb.hd:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !964
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 37) #27, !noalias !970
  %i.aeq = call noundef nonnull ptr @_RINvMNtNtCs7tKScEop1B6_5alloc2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error3newNtNtB7_6string6StringECsh036I4OHgIr_6uucore(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cu) #26, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.089.i), !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1190
  store i64 0, ptr %i.o, align 8, !noalias !1190
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i362, align 8, !noalias !1190
  store i64 0, ptr %.sroa.5.0..sroa_idx.i363, align 8, !noalias !1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1190
  store i64 1, ptr %i.n, align 8, !noalias !1190
  store ptr %.34.i.a, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1190
  store i64 %..i.a, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1190
  store i8 1, ptr %i.hh, align 8, !noalias !1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1194
  store i64 0, ptr %i.j, align 8, !noalias !1194
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i364, align 8, !noalias !1194
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i365, align 8, !noalias !1194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1194
  store i64 1610612768, ptr %i.hi, align 8, !noalias !1194
  store ptr %i.j, ptr %i.i, align 8, !noalias !1194
  store ptr @114, ptr %i.hj, align 8, !noalias !1194
  %i.aer = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #27, !noalias !1198
  br i1 %i.aer, label %bb.he, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i366, !prof !132

bb.he:                                            ; preds = %bb.hd
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #28, !noalias !1198
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i366: ; preds = %bb.hd
  %.sroa.0.0.copyload4.i = load i64, ptr %i.j, align 8, !noalias !1199 ; 3 uses
  %.sroa.5.0.copyload7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i364, align 8, !noalias !1199, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.8.0.copyload10.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i365, align 8, !noalias !1199 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1190
  switch i64 %.sroa.8.0.copyload10.i, label %thread-pre-split.i.i396 [
    i64 0, label %.loopexit.i367
    i64 1, label %bb.hf
  ]

bb.hf:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i366
  %i.aes = load i8, ptr %.sroa.5.0.copyload7.i, align 1, !alias.scope !1200, !noalias !1203, !noundef !4 ; 2 uses
  switch i8 %i.aes, label %bb.hg [
    i8 43, label %.loopexit.i367
    i8 45, label %.loopexit.i367
  ]

thread-pre-split.i.i396:                          ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i366
  %.pr.i.i397 = load i8, ptr %.sroa.5.0.copyload7.i, align 1, !alias.scope !1200, !noalias !1203
  br label %bb.hg

bb.hg:                                            ; preds = %thread-pre-split.i.i396, %bb.hf
  %i.aet = phi i8 [ %.pr.i.i397, %thread-pre-split.i.i396 ], [ %i.aes, %bb.hf ]
  switch i8 %i.aet, label %bb.hn [
    i8 43, label %bb.hh
    i8 45, label %bb.hi
  ]

bb.hh:                                            ; preds = %bb.hg
  %i.aeu = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i, i64 1
  %i.aev = add nsw i64 %.sroa.8.0.copyload10.i, -1
  br label %bb.hn

bb.hi:                                            ; preds = %bb.hg
  %i.aew = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i, i64 1 ; 2 uses
  %i.aex = add nsw i64 %.sroa.8.0.copyload10.i, -1 ; 3 uses
  %i.aey = icmp samesign ult i64 %.sroa.8.0.copyload10.i, 17
  br i1 %i.aey, label %.preheader114.i.i375, label %.lr.ph.i.i369

.preheader114.i.i375:                             ; preds = %bb.hi
  %.not103137.i.i376 = icmp eq i64 %i.aex, 0
  br i1 %.not103137.i.i376, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i374, label %.lr.ph141.i.i377

.lr.ph.i.i369:                                    ; preds = %bb.hi, %bb.hl
  %.sroa.0.1136.i.i370 = phi ptr [ %i.aez, %bb.hl ], [ %i.aew, %bb.hi ] ; 2 uses
  %.sroa.26.1135.i.i371 = phi i64 [ %i.afa, %bb.hl ], [ %i.aex, %bb.hi ]
  %.sroa.084.0134.i.i372 = phi i64 [ %i.afl, %bb.hl ], [ 0, %bb.hi ]
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i370, i64 1
  %i.afa = add nsw i64 %.sroa.26.1135.i.i371, -1  ; 2 uses
  %i.afb = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i372, i64 10) ; 2 uses
  %i.afc = extractvalue { i64, i1 } %i.afb, 0
  %i.afd = extractvalue { i64, i1 } %i.afb, 1
  br i1 %i.afd, label %.loopexit.i367, label %bb.hj, !prof !132

bb.hj:                                            ; preds = %.lr.ph.i.i369
  %i.afe = load i8, ptr %.sroa.0.1136.i.i370, align 1, !alias.scope !1200, !noalias !1203, !noundef !4
  %i.aff = zext i8 %i.afe to i32
  %i.afg = add nsw i32 %i.aff, -48                ; 2 uses
  %i.afh = icmp ult i32 %i.afg, 10
  br i1 %i.afh, label %bb.hk, label %.loopexit.i367

bb.hk:                                            ; preds = %bb.hj
  %i.afi = zext nneg i32 %i.afg to i64
  %i.afj = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.afc, i64 %i.afi) ; 2 uses
  %i.afk = extractvalue { i64, i1 } %i.afj, 1
  br i1 %i.afk, label %.loopexit.i367, label %bb.hl, !prof !132

bb.hl:                                            ; preds = %bb.hk
  %i.afl = extractvalue { i64, i1 } %i.afj, 0     ; 2 uses
  %.not102.i.i373 = icmp eq i64 %i.afa, 0
  br i1 %.not102.i.i373, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i374, label %.lr.ph.i.i369

.lr.ph141.i.i377:                                 ; preds = %.preheader114.i.i375, %bb.hm
  %.sroa.0.2140.i.i378 = phi ptr [ %i.afs, %bb.hm ], [ %i.aew, %.preheader114.i.i375 ] ; 2 uses
  %.sroa.26.2139.i.i379 = phi i64 [ %i.afr, %bb.hm ], [ %i.aex, %.preheader114.i.i375 ]
  %.sroa.084.2138.i.i380 = phi i64 [ %i.afu, %bb.hm ], [ 0, %.preheader114.i.i375 ]
  %i.afm = load i8, ptr %.sroa.0.2140.i.i378, align 1, !alias.scope !1200, !noalias !1203, !noundef !4
  %i.afn = zext i8 %i.afm to i32
  %i.afo = add nsw i32 %i.afn, -48                ; 2 uses
  %i.afp = icmp ult i32 %i.afo, 10
  br i1 %i.afp, label %bb.hm, label %.loopexit.i367

bb.hm:                                            ; preds = %.lr.ph141.i.i377
  %i.afq = mul i64 %.sroa.084.2138.i.i380, 10
  %i.afr = add nsw i64 %.sroa.26.2139.i.i379, -1  ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i378, i64 1
  %i.aft = zext nneg i32 %i.afo to i64
  %i.afu = sub i64 %i.afq, %i.aft                 ; 2 uses
  %.not103.i.i381 = icmp eq i64 %i.afr, 0
  br i1 %.not103.i.i381, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i374, label %.lr.ph141.i.i377

bb.hn:                                            ; preds = %bb.hh, %bb.hg
  %.sroa.26.0.i.i382 = phi i64 [ %i.aev, %bb.hh ], [ %.sroa.8.0.copyload10.i, %bb.hg ] ; 4 uses
  %.sroa.0.0.i.i383 = phi ptr [ %i.aeu, %bb.hh ], [ %.sroa.5.0.copyload7.i, %bb.hg ] ; 2 uses
  %i.afv = icmp samesign ult i64 %.sroa.26.0.i.i382, 16
  br i1 %i.afv, label %.preheader.i.i389, label %.preheader111.i.i384

.preheader.i.i389:                                ; preds = %bb.hn
  %.not105146.i.i390 = icmp eq i64 %.sroa.26.0.i.i382, 0
  br i1 %.not105146.i.i390, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i374, label %.lr.ph150.i.i391

.preheader111.i.i384:                             ; preds = %bb.hn, %bb.hq
  %.sroa.0.3145.i.i385 = phi ptr [ %i.afw, %bb.hq ], [ %.sroa.0.0.i.i383, %bb.hn ] ; 2 uses
  %.sroa.26.3144.i.i386 = phi i64 [ %i.afx, %bb.hq ], [ %.sroa.26.0.i.i382, %bb.hn ]
  %.sroa.084.3143.i.i387 = phi i64 [ %i.agi, %bb.hq ], [ 0, %bb.hn ]
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i385, i64 1
  %i.afx = add nsw i64 %.sroa.26.3144.i.i386, -1  ; 2 uses
  %i.afy = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i387, i64 10) ; 2 uses
  %i.afz = extractvalue { i64, i1 } %i.afy, 0
  %i.aga = extractvalue { i64, i1 } %i.afy, 1
  br i1 %i.aga, label %.loopexit.i367, label %bb.ho, !prof !132

bb.ho:                                            ; preds = %.preheader111.i.i384
  %i.agb = load i8, ptr %.sroa.0.3145.i.i385, align 1, !alias.scope !1200, !noalias !1203, !noundef !4
  %i.agc = zext i8 %i.agb to i32
  %i.agd = add nsw i32 %i.agc, -48                ; 2 uses
  %i.age = icmp ult i32 %i.agd, 10
  br i1 %i.age, label %bb.hp, label %.loopexit.i367

bb.hp:                                            ; preds = %bb.ho
  %i.agf = zext nneg i32 %i.agd to i64
  %i.agg = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.afz, i64 %i.agf) ; 2 uses
  %i.agh = extractvalue { i64, i1 } %i.agg, 1
  br i1 %i.agh, label %.loopexit.i367, label %bb.hq, !prof !132

bb.hq:                                            ; preds = %bb.hp
  %i.agi = extractvalue { i64, i1 } %i.agg, 0     ; 2 uses
  %.not104.i.i388 = icmp eq i64 %i.afx, 0
  br i1 %.not104.i.i388, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i374, label %.preheader111.i.i384

.lr.ph150.i.i391:                                 ; preds = %.preheader.i.i389, %bb.hr
  %.sroa.0.4149.i.i392 = phi ptr [ %i.agp, %bb.hr ], [ %.sroa.0.0.i.i383, %.preheader.i.i389 ] ; 2 uses
  %.sroa.26.4148.i.i393 = phi i64 [ %i.ago, %bb.hr ], [ %.sroa.26.0.i.i382, %.preheader.i.i389 ]
  %.sroa.084.4147.i.i394 = phi i64 [ %i.agr, %bb.hr ], [ 0, %.preheader.i.i389 ]
  %i.agj = load i8, ptr %.sroa.0.4149.i.i392, align 1, !alias.scope !1200, !noalias !1203, !noundef !4
  %i.agk = zext i8 %i.agj to i32
  %i.agl = add nsw i32 %i.agk, -48                ; 2 uses
  %i.agm = icmp ult i32 %i.agl, 10
  br i1 %i.agm, label %bb.hr, label %.loopexit.i367

bb.hr:                                            ; preds = %.lr.ph150.i.i391
  %i.agn = mul i64 %.sroa.084.4147.i.i394, 10
  %i.ago = add nsw i64 %.sroa.26.4148.i.i393, -1  ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i392, i64 1
  %i.agq = zext nneg i32 %i.agl to i64
  %i.agr = add i64 %i.agn, %i.agq                 ; 2 uses
  %.not105.i.i395 = icmp eq i64 %i.ago, 0
  br i1 %.not105.i.i395, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i374, label %.lr.ph150.i.i391

.loopexit.i367:                                   ; preds = %bb.hk, %bb.hj, %.lr.ph.i.i369, %.lr.ph141.i.i377, %bb.hp, %bb.ho, %.preheader111.i.i384, %.lr.ph150.i.i391, %bb.hf, %bb.hf, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdTU8hOCbdCr_8uu_touch.exit.i366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1190
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload7.i, i64 noundef %.sroa.8.0.copyload10.i) #26, !noalias !1205
  %i.ags = load i8, ptr %i.m, align 8, !range !644, !noalias !1190, !noundef !4
  %i.agt = trunc nuw i8 %i.ags to i1
  br i1 %i.agt, label %bb.hu, label %bb.hv

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i374: ; preds = %bb.hl, %bb.hm, %bb.hq, %bb.hr, %.preheader.i.i389, %.preheader114.i.i375
  %.sroa.1514.0.i = phi i64 [ %i.agr, %bb.hr ], [ %i.afu, %bb.hm ], [ %i.agi, %bb.hq ], [ 0, %.preheader.i.i389 ], [ 0, %.preheader114.i.i375 ], [ %i.afl, %bb.hl ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, i64 noundef %.sroa.1514.0.i) #27, !noalias !1205
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hv, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !1190
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.089.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k) #27, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1190
  %i.agu = icmp eq i64 %.sroa.0.0.copyload4.i, 0
  br i1 %i.agu, label %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_files_0B3_.exit, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload7.i, i64 noundef %.sroa.0.0.copyload4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1206
  br label %_RNCNvCsdTU8hOCbdCr_8uu_touch10touch_files_0B3_.exit

bb.hu:                                            ; preds = %.loopexit.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1190
  store i64 %.sroa.0.0.copyload4.i, ptr %i.l, align 8, !noalias !1190
  store ptr %.sroa.5.0.copyload7.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !noalias !1190
  store i64 %.sroa.8.0.copyload10.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1190
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l) #27, !noalias !1205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1190
end_hunk_2
begin_hunk_3_@_RNvCsdTU8hOCbdCr_8uu_touch5touch:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !noalias !964
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 38, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.db) #27, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !964
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.i

bb.iz:                                            ; preds = %.loopexit.i
  %i.aja = load double, ptr %i.ic, align 8, !noalias !964, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef align 8 dereferenceable(24) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, double noundef %i.aja) #27, !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !964
  br label %bb.iw

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %bb.iy, %bb.ix, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !964
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1255
  %i.ajb = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #27, !noalias !1255 ; 5 uses
  %i.ajc = icmp eq ptr %i.ajb, null
  br i1 %i.ajc, label %bb.ja, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i, !prof !132

bb.ja:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #29, !noalias !1255
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajb, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !970
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajb, i64 24
  store i32 1, ptr %.sroa.487.0..sroa_idx.i, align 8, !noalias !970
  br i1 %i.hs, label %bb.iq, label %bb.jb

bb.jb:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !964
  store ptr %i.ajb, ptr %i.da, align 8, !noalias !964
  store ptr @30, ptr %i.id, align 8, !noalias !964
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #27, !noalias !970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !964
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.cy, align 8, !noalias !964
  %i.ajd = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cy) #27, !noalias !970
  store ptr %i.ajd, ptr %i.cz, align 8, !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !964
  %i.aje = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #27, !noalias !970 ; 2 uses
  %i.ajf = extractvalue { ptr, i64 } %i.aje, 0
  %i.ajg = extractvalue { ptr, i64 } %i.aje, 1
  store ptr %i.ajf, ptr %i.cx, align 8, !noalias !964
  store i64 %i.ajg, ptr %i.ie, align 8, !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !964
  store ptr %i.cx, ptr %i.cw, align 8, !noalias !964
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdTU8hOCbdCr_8uu_touch, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !964
  store ptr %i.da, ptr %i.if, align 8, !noalias !964
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsdTU8hOCbdCr_8uu_touch, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1258
  store ptr %i.cz, ptr %i.x, align 8, !noalias !1258
  store ptr null, ptr %i.ig, align 8, !noalias !1258
  %i.ajh = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @15, ptr noundef nonnull @43, ptr noundef nonnull %i.cw) #27, !noalias !970
  %i.aji = load ptr, ptr %i.ig, align 8, !noalias !1258, !noundef !4 ; 7 uses
  %.not.i5.i.i = icmp eq ptr %i.aji, null         ; 2 uses
  br i1 %i.ajh, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  br i1 %.not.i5.i.i, label %bb.jh, label %bb.ji, !prof !132

bb.jd:                                            ; preds = %bb.jb
  br i1 %.not.i5.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i.thread.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1258
  %i.ajj = ptrtoint ptr %i.aji to i64             ; 2 uses
  %i.ajk = and i64 %i.ajj, 3
  switch i64 %i.ajk, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i
    i64 3, label %bb.jf
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i
    i64 1, label %bb.jg
  ], !prof !189

bb.jf:                                            ; preds = %bb.je
  %i.ajl = icmp ult ptr %i.aji, inttoptr (i64 188978561024 to ptr)
  %i.ajm = and i64 %i.ajj, 1095216660480
  %i.ajn = icmp ne i64 %i.ajm, 1095216660480
  call void @llvm.assume(i1 %i.ajl)
  call void @llvm.assume(i1 %i.ajn)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i

bb.jg:                                            ; preds = %bb.je
  %i.ajo = getelementptr i8, ptr %i.aji, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ajo) ]
  store ptr %i.ajo, ptr %i.ih, align 8, !alias.scope !1263, !noalias !1258
  store i8 3, ptr %i.w, align 8, !alias.scope !1263, !noalias !1258
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ih) #27, !noalias !970
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i: ; preds = %bb.jg, %bb.jf, %bb.je, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1258
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i.thread.i

bb.jh:                                            ; preds = %bb.jc
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28, !noalias !970
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i.thread.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1258
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i

bb.ji:                                            ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !964
  %i.ajp = ptrtoint ptr %i.aji to i64             ; 2 uses
  %i.ajq = and i64 %i.ajp, 3
  switch i64 %i.ajq, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i
    i64 3, label %bb.jj
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i
    i64 1, label %bb.jk
  ], !prof !189

bb.jj:                                            ; preds = %bb.ji
  %i.ajr = icmp ult ptr %i.aji, inttoptr (i64 188978561024 to ptr)
  %i.ajs = and i64 %i.ajp, 1095216660480
  %i.ajt = icmp ne i64 %i.ajs, 1095216660480
  call void @llvm.assume(i1 %i.ajr)
  call void @llvm.assume(i1 %i.ajt)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i

bb.jk:                                            ; preds = %bb.ji
  %i.aju = getelementptr i8, ptr %i.aji, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aju) ]
  store ptr %i.aju, ptr %i.ii, align 8, !alias.scope !1266, !noalias !964
  store i8 3, ptr %i.v, align 8, !alias.scope !1266, !noalias !964
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ii) #27, !noalias !970
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i: ; preds = %bb.jk, %bb.jj, %bb.ji, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !964
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i62.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !964
  %.val42.i = load ptr, ptr %i.cz, align 8, !noalias !964, !nonnull !4, !align !246, !noundef !4 ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.val42.i, i64 12 ; 2 uses
  %i.ajw = load i32, ptr %i.ajv, align 4, !noalias !970, !noundef !4
  %i.ajx = add i32 %i.ajw, -1                     ; 2 uses
  store i32 %i.ajx, ptr %i.ajv, align 4, !noalias !970
  %i.ajy = icmp eq i32 %i.ajx, 0
  br i1 %i.ajy, label %bb.jl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i

bb.jl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i
  store atomic i64 0, ptr %.val42.i monotonic, align 8, !noalias !970
  %i.ajz = getelementptr inbounds nuw i8, ptr %.val42.i, i64 8 ; 2 uses
  %i.aka = atomicrmw xchg ptr %i.ajz, i32 0 release, align 4, !noalias !970
  %i.akb = icmp eq i32 %i.aka, 2
  br i1 %i.akb, label %bb.jm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i, !prof !132

bb.jm:                                            ; preds = %bb.jl
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ajz) #27, !noalias !970
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %bb.jm, %bb.jl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsdTU8hOCbdCr_8uu_touch.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !964
  %.val46.i = load ptr, ptr %i.da, align 8, !noalias !964 ; 4 uses
  %.val47.i = load ptr, ptr %i.id, align 8, !noalias !964, !nonnull !4, !align !246, !noundef !4 ; 3 uses
  %i.akc = load ptr, ptr %.val47.i, align 8, !invariant.load !4, !noalias !970 ; 2 uses
  %.not.i.i = icmp eq ptr %i.akc, null
  br i1 %.not.i.i, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val46.i) ]
  call void %i.akc(ptr noundef nonnull %.val46.i) #30, !noalias !970, !inline_history !1269
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsdTU8hOCbdCr_8uu_touch.exit.i
  %i.akd = getelementptr inbounds nuw i8, ptr %.val47.i, i64 8
  %i.ake = load i64, ptr %i.akd, align 8, !range !40, !invariant.load !4, !noalias !970 ; 2 uses
  %i.akf = icmp eq i64 %i.ake, 0
  br i1 %i.akf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsdTU8hOCbdCr_8uu_touch.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.jo
  %i.akg = getelementptr inbounds nuw i8, ptr %.val47.i, i64 16
  %i.akh = load i64, ptr %i.akg, align 8, !range !248, !invariant.load !4, !noalias !970
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val46.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46.i, i64 noundef %i.ake, i64 noundef range(i64 1, -9223372036854775807) %i.akh) #27, !noalias !970
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsdTU8hOCbdCr_8uu_touch.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsdTU8hOCbdCr_8uu_touch.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !964
  br label %bb.iq

_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit.thread: ; preds = %bb.bx, %bb.bv, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.0.2.pn.i.ph = phi ptr [ %i.zz, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.lw, %bb.bv ], [ %i.ok, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %.loopexit

_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit:     ; preds = %_RNvCsdTU8hOCbdCr_8uu_touch17set_times_by_path.exit.i.i, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess0_0EB3d_.exit.i.i, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0EB3d_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i
  %.sroa.0.2.pn.i = phi ptr [ %.sroa.02.0.i.i.i.i, %_RNvCsdTU8hOCbdCr_8uu_touch17set_times_by_path.exit.i.i ], [ %.sroa.0.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i ], [ %.sroa.02.0.i153.i.i, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0EB3d_.exit.i.i ], [ %.sroa.02.0.i.i.i, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess0_0EB3d_.exit.i.i ] ; 2 uses
  %.sroa.10.2.pn.i = phi ptr [ @20, %_RNvCsdTU8hOCbdCr_8uu_touch17set_times_by_path.exit.i.i ], [ %.sroa.10.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit.i ], [ @20, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess2_0EB3d_.exit.i.i ], [ @20, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsdTU8hOCbdCr_8uu_touch12update_timess0_0EB3d_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %.not339 = icmp eq ptr %.sroa.0.2.pn.i, null
  br i1 %.not339, label %bb.jp, label %.loopexit

.loopexit:                                        ; preds = %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit, %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit.thread
  %.sroa.10.2.pn.i526 = phi ptr [ @20, %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit.thread ], [ %.sroa.10.2.pn.i, %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit ] ; 2 uses
  %.sroa.0.2.pn.i525 = phi ptr [ %.sroa.0.2.pn.i.ph, %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit.thread ], [ %.sroa.0.2.pn.i, %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.2.pn.i526) ]
  br i1 %.not533.not, label %bb.ju, label %bb.jr

bb.jp:                                            ; preds = %_RNvCsdTU8hOCbdCr_8uu_touch10touch_file.exit
  br i1 %.not533.not, label %bb.jq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCsdTU8hOCbdCr_8uu_touch5touchs1_0EBF_.exit

bb.jq:                                            ; preds = %bb.jp
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.384.0494514, i64 noundef %.sroa.082.0496512, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCsdTU8hOCbdCr_8uu_touch5touchs1_0EBF_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCsdTU8hOCbdCr_8uu_touch5touchs1_0EBF_.exit: ; preds = %.thread1425, %bb.jp, %bb.jq
  %i.aki = icmp eq ptr %i.ik, %i.fp
  br i1 %i.aki, label %._crit_edge, label %bb.v

bb.jr:                                            ; preds = %.loopexit
  %.sroa.5307.0.copyload.val = load ptr, ptr %.sroa.gep448501508, align 8, !nonnull !4, !noundef !4
  %.sroa.5307.0.copyload.val341 = load i64, ptr %.sroa.gep519, align 8, !noundef !4 ; 6 uses
  %i.akj = icmp eq i64 %.sroa.5307.0.copyload.val341, 0
  br i1 %i.akj, label %bb.ju, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i350

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i350: ; preds = %bb.jr
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1270
  %i.akk = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.5307.0.copyload.val341, i64 noundef range(i64 1, 9) 1) #27, !noalias !1270 ; 3 uses
  %i.akl = icmp eq ptr %i.akk, null
  br i1 %i.akl, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i350
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.5307.0.copyload.val341) #29, !noalias !1278
  unreachable

bb.jt:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i350
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akk, ptr nonnull readonly align 1 %.sroa.5307.0.copyload.val, i64 range(i64 0, -9223372036854775808) %.sroa.5307.0.copyload.val341, i1 false), !noalias !1279
  br label %bb.ju

bb.ju:                                            ; preds = %.loopexit, %bb.jr, %bb.jt
  %.sroa.0313.0 = phi i64 [ %.sroa.082.0496512, %.loopexit ], [ %.sroa.5307.0.copyload.val341, %bb.jt ], [ 0, %bb.jr ]
  %.sroa.5315.0 = phi ptr [ %.sroa.384.0494514, %.loopexit ], [ %i.akk, %bb.jt ], [ inttoptr (i64 1 to ptr), %bb.jr ]
  %.sroa.6317.0 = phi i64 [ 11, %.loopexit ], [ %.sroa.5307.0.copyload.val341, %bb.jt ], [ 0, %bb.jr ]
  store i64 %.sroa.0313.0, ptr %0, align 8
  %.sroa.0300.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5315.0, ptr %.sroa.0300.sroa.4.0..sroa_idx, align 8
  %.sroa.0300.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6317.0, ptr %.sroa.0300.sroa.5.0..sroa_idx, align 8
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.2.pn.i525, ptr %.sroa.4301.0..sroa_idx, align 8
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.2.pn.i526, ptr %.sroa.5302.0..sroa_idx, align 8
  %.sroa.6303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.8.0919, ptr %.sroa.6303.0..sroa_idx, align 8
  br label %bb.k
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsdTU8hOCbdCr_8uu_touch6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsdTU8hOCbdCr_8uu_touch.exit:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 20 uses
  %.sroa.01710 = alloca [89 x i8], align 8        ; 2 uses
  %.sroa.31714 = alloca [6 x i8], align 2         ; 2 uses
  %i.c = alloca [640 x i8], align 8               ; 54 uses
  %i.d = alloca [640 x i8], align 8               ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 9 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
  %i.g = alloca [144 x i8], align 8               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.101553.sroa.0.sroa.5 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.7 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.9 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.11 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.13 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.15 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.17 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.0.sroa.22 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.7.sroa.0.sroa.5 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.7.sroa.0.sroa.7 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.101553.sroa.7.sroa.0.sroa.12 = alloca [16 x i8], align 8 ; 4 uses
  %i.i = alloca [640 x i8], align 8               ; 59 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [640 x i8], align 8               ; 57 uses
  %i.l = alloca [640 x i8], align 8               ; 7 uses
  %i.m = alloca [640 x i8], align 8               ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [640 x i8], align 8               ; 53 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [640 x i8], align 8               ; 53 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [640 x i8], align 8               ; 52 uses
  %i.t = alloca [640 x i8], align 8               ; 52 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [640 x i8], align 8               ; 57 uses
  %i.w = alloca [640 x i8], align 8               ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [640 x i8], align 8               ; 56 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [640 x i8], align 8              ; 52 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [640 x i8], align 8              ; 53 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [712 x i8], align 8              ; 57 uses
  %i.ai = alloca [712 x i8], align 8              ; 5 uses
  %i.aj = alloca [712 x i8], align 8              ; 5 uses
  %i.ak = alloca [712 x i8], align 8              ; 5 uses
  %i.al = alloca [712 x i8], align 8              ; 5 uses
  %i.am = alloca [712 x i8], align 8              ; 5 uses
  %i.an = alloca [712 x i8], align 8              ; 5 uses
  %i.ao = alloca [712 x i8], align 8              ; 5 uses
  %i.ap = alloca [712 x i8], align 8              ; 5 uses
  %i.aq = alloca [712 x i8], align 8              ; 5 uses
  %i.ar = alloca [712 x i8], align 8              ; 5 uses
  %i.as = alloca [712 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 5) #27
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 8, !alias.scope !1280, !noalias !1286 ; 2 uses
  %i.at = icmp eq i64 %.sroa.0.0.copyload.i, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.at, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.at, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 11) #27
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.af, align 8, !alias.scope !1289, !noalias !1295 ; 2 uses
  %i.au = icmp eq i64 %.sroa.0.0.copyload.i42, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5.i41.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i43, align 8
  %.sroa.5.i41.sroa.4.0..sroa.55.0..sroa_idx.i43.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5.i41.sroa.4.0.copyload = load i64, ptr %.sroa.5.i41.sroa.4.0..sroa.55.0..sroa_idx.i43.sroa_idx, align 8
  %.sroa.5.i41.sroa.0.0 = select i1 %i.au, ptr undef, ptr %.sroa.5.i41.sroa.0.0.copyload
  %.sroa.5.i41.sroa.4.0 = select i1 %i.au, i64 undef, i64 %.sroa.5.i41.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 11) #27
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ay) #27
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.ae, align 8, !alias.scope !1298, !noalias !1304 ; 2 uses
  %i.az = icmp eq i64 %.sroa.0.0.copyload.i48, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5.i47.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i49, align 8
  %.sroa.5.i47.sroa.4.0..sroa.55.0..sroa_idx.i49.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5.i47.sroa.4.0.copyload = load i64, ptr %.sroa.5.i47.sroa.4.0..sroa.55.0..sroa_idx.i49.sroa_idx, align 8
  %.sroa.5.i47.sroa.0.0 = select i1 %i.az, ptr undef, ptr %.sroa.5.i47.sroa.0.0.copyload
  %.sroa.5.i47.sroa.4.0 = select i1 %i.az, i64 undef, i64 %.sroa.5.i47.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ah, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 216
  %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 272
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 296
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 320
  store i64 %.sroa.0.0.copyload.i42, ptr %.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 328
  store ptr %.sroa.5.i41.sroa.0.0, ptr %.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  store i64 %.sroa.5.i41.sroa.4.0, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 344
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 368
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 392
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 416
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 440
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 464
  store i64 %.sroa.0.0.copyload.i48, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 472
  store ptr %.sroa.5.i47.sroa.0.0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 480
  store i64 %.sroa.5.i47.sroa.4.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 488
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 536
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 544
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 552
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.9.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 560
  store ptr @57, ptr %.sroa.0.sroa.4.sroa.9.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 568
  store i64 5, ptr %.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
end_hunk_3
