Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tail-cba96ed9f34a954b.uu_tail.c5e32ca4799a957a-cgu.0?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1150
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer12handle_event:bb.a
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [176 x i8], align 8               ; 7 uses
  %i.s = alloca [176 x i8], align 8               ; 7 uses
  %.sroa.084 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.064 = alloca [24 x i8], align 8          ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [216 x i8], align 8               ; 4 uses
  %i.v = alloca [216 x i8], align 8               ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [216 x i8], align 8               ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 10 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 2 uses
  %i.av = alloca [8 x i8], align 8                ; 6 uses
  %i.aw = alloca [48 x i8], align 8               ; 9 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 6 uses
  %.sroa.746 = alloca [160 x i8], align 8         ; 4 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 8 uses
  %i.bg = alloca [24 x i8], align 8               ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [16 x i8], align 8               ; 6 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [24 x i8], align 8               ; 10 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [8 x i8], align 8                ; 6 uses
  %i.bq = alloca [216 x i8], align 8              ; 4 uses
  %i.br = alloca [56 x i8], align 8               ; 5 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [24 x i8], align 8               ; 8 uses
  %i.bu = alloca [24 x i8], align 8               ; 5 uses
  %i.bv = alloca [16 x i8], align 8               ; 6 uses
  %i.bw = alloca [16 x i8], align 8               ; 6 uses
  %i.bx = alloca [32 x i8], align 8               ; 7 uses
  %i.by = alloca [24 x i8], align 8               ; 10 uses
  %i.bz = alloca [24 x i8], align 8               ; 7 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [8 x i8], align 8                ; 4 uses
  %i.cd = alloca [8 x i8], align 8                ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 4 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
  %i.cg = alloca [24 x i8], align 8               ; 8 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [16 x i8], align 8               ; 6 uses
  %i.cj = alloca [32 x i8], align 8               ; 7 uses
  %i.ck = alloca [24 x i8], align 8               ; 10 uses
  %i.cl = alloca [24 x i8], align 8               ; 7 uses
  %i.cm = alloca [16 x i8], align 8               ; 5 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [8 x i8], align 8                ; 4 uses
  %i.cp = alloca [8 x i8], align 8                ; 6 uses
  %i.cq = alloca [16 x i8], align 8               ; 5 uses
  %i.cr = alloca [24 x i8], align 8               ; 8 uses
  %i.cs = alloca [24 x i8], align 8               ; 5 uses
  %i.ct = alloca [16 x i8], align 8               ; 6 uses
  %i.cu = alloca [16 x i8], align 8               ; 6 uses
  %i.cv = alloca [32 x i8], align 8               ; 7 uses
  %i.cw = alloca [24 x i8], align 8               ; 10 uses
  %i.cx = alloca [24 x i8], align 8               ; 7 uses
  %i.cy = alloca [16 x i8], align 8               ; 5 uses
  %i.cz = alloca [16 x i8], align 8               ; 5 uses
  %i.da = alloca [8 x i8], align 8                ; 4 uses
  %i.db = alloca [8 x i8], align 8                ; 6 uses
  %i.dc = alloca [16 x i8], align 8               ; 5 uses
  %i.dd = alloca [24 x i8], align 8               ; 8 uses
  %i.de = alloca [24 x i8], align 8               ; 5 uses
  %i.df = alloca [16 x i8], align 8               ; 6 uses
  %i.dg = alloca [16 x i8], align 8               ; 6 uses
  %i.dh = alloca [32 x i8], align 8               ; 7 uses
  %i.di = alloca [24 x i8], align 8               ; 10 uses
  %i.dj = alloca [24 x i8], align 8               ; 7 uses
  %i.dk = alloca [16 x i8], align 8               ; 5 uses
  %i.dl = alloca [16 x i8], align 8               ; 5 uses
  %i.dm = alloca [8 x i8], align 8                ; 4 uses
  %i.dn = alloca [8 x i8], align 8                ; 6 uses
  %i.do = alloca [24 x i8], align 8               ; 4 uses
  %i.dp = alloca [16 x i8], align 8               ; 5 uses
  %i.dq = alloca [24 x i8], align 8               ; 8 uses
  %i.dr = alloca [24 x i8], align 8               ; 6 uses
  %i.ds = alloca [16 x i8], align 8               ; 6 uses
  %i.dt = alloca [16 x i8], align 8               ; 6 uses
  %i.du = alloca [24 x i8], align 8               ; 10 uses
  %i.dv = alloca [24 x i8], align 8               ; 7 uses
  %i.dw = alloca [16 x i8], align 8               ; 5 uses
  %i.dx = alloca [16 x i8], align 8               ; 5 uses
  %i.dy = alloca [8 x i8], align 8                ; 4 uses
  %i.dz = alloca [8 x i8], align 8                ; 6 uses
  %i.ea = alloca [16 x i8], align 8               ; 6 uses
  %i.eb = alloca [16 x i8], align 8               ; 5 uses
  %i.ec = alloca [24 x i8], align 8               ; 8 uses
  %i.ed = alloca [24 x i8], align 8               ; 5 uses
  %i.ee = alloca [16 x i8], align 8               ; 6 uses
  %i.ef = alloca [16 x i8], align 8               ; 6 uses
  %i.eg = alloca [32 x i8], align 8               ; 7 uses
  %i.eh = alloca [24 x i8], align 8               ; 10 uses
  %i.ei = alloca [24 x i8], align 8               ; 7 uses
  %i.ej = alloca [16 x i8], align 8               ; 5 uses
  %i.ek = alloca [16 x i8], align 8               ; 5 uses
  %i.el = alloca [8 x i8], align 8                ; 4 uses
  %i.em = alloca [8 x i8], align 8                ; 6 uses
  %i.en = alloca [16 x i8], align 8               ; 5 uses
  %i.eo = alloca [24 x i8], align 8               ; 8 uses
  %i.ep = alloca [24 x i8], align 8               ; 5 uses
  %i.eq = alloca [16 x i8], align 8               ; 6 uses
  %i.er = alloca [16 x i8], align 8               ; 6 uses
  %i.es = alloca [32 x i8], align 8               ; 7 uses
  %i.et = alloca [24 x i8], align 8               ; 10 uses
  %i.eu = alloca [24 x i8], align 8               ; 7 uses
  %i.ev = alloca [16 x i8], align 8               ; 5 uses
  %i.ew = alloca [16 x i8], align 8               ; 5 uses
  %i.ex = alloca [8 x i8], align 8                ; 4 uses
  %i.ey = alloca [8 x i8], align 8                ; 6 uses
  %i.ez = alloca [16 x i8], align 8               ; 5 uses
  %i.fa = alloca [24 x i8], align 8               ; 8 uses
  %i.fb = alloca [24 x i8], align 8               ; 5 uses
  %i.fc = alloca [16 x i8], align 8               ; 6 uses
  %i.fd = alloca [16 x i8], align 8               ; 6 uses
  %i.fe = alloca [32 x i8], align 8               ; 7 uses
  %i.ff = alloca [24 x i8], align 8               ; 10 uses
  %i.fg = alloca [24 x i8], align 8               ; 7 uses
  %i.fh = alloca [16 x i8], align 8               ; 5 uses
  %i.fi = alloca [16 x i8], align 8               ; 5 uses
  %i.fj = alloca [8 x i8], align 8                ; 4 uses
  %i.fk = alloca [8 x i8], align 8                ; 6 uses
  %i.fl = alloca [176 x i8], align 8              ; 9 uses
  %i.fm = alloca [24 x i8], align 8               ; 29 uses
  %i.fn = alloca [24 x i8], align 8               ; 13 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !noundef !10 ; 2 uses
  %.not237 = icmp eq i64 %i.fr, 0
  br i1 %.not237, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  store i64 0, ptr %i.fn, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 8 uses
  store i64 0, ptr %i.ft, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 19 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 31 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !10, !noundef !10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 31 uses
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !10
  %i.fz = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtNtCsgZlHlzpN0xi_7uu_tail6follow5filesNtB2_12FileHandling3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fw, i64 noundef %i.fy) #33
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 176
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ga) #33
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 8, !range !45, !noundef !10
  switch i8 %i.gc, label %_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit [
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit: ; preds = %bb.gc, %bb.l, %bb.m, %bb.g, %bb.e, %_RNvMNtNtCsgZlHlzpN0xi_7uu_tail6follow5filesNtB2_12FileHandling12reset_reader.exit479, %bb.ge, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit439, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit436, %bb.ga, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit, %bb.k, %bb.j, %bb.i, %bb.f, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5679)
  %.val.i = load i64, ptr %i.fm, align 8, !range !11, !alias.scope !5679, !noundef !10 ; 2 uses
  %i.gd = icmp eq i64 %.val.i, 0
  br i1 %i.gd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.val1.i = load ptr, ptr %i.ge, align 8, !alias.scope !5679, !nonnull !10, !noundef !10
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5679
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsgZlHlzpN0xi_7uu_tail.exit

bb.e:                                             ; preds = %bb.c
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.gg = load i8, ptr %i.gf, align 1, !range !46, !noundef !10
  %i.gh = icmp eq i8 %i.gg, 3
  br i1 %i.gh, label %_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.gj = load i8, ptr %i.gi, align 1, !range !47, !noundef !10
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 34 ; 3 uses
  switch i8 %i.gj, label %default.unreachable167 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit
  ]

bb.g:                                             ; preds = %bb.c
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.gm = load i8, ptr %i.gl, align 1, !range !46, !noundef !10
  %switch = icmp samesign ult i8 %i.gm, 2
  br i1 %switch, label %bb.l, label %_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit

default.unreachable167:                           ; preds = %bb.gw, %bb.gs, %bb.gn, %bb.gj, %bb.fg, %bb.et, %bb.ep, %bb.cx, %bb.ct, %bb.p, %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.k, %bb.j, %bb.j, %bb.i, %bb.f
  %i.gn = load ptr, ptr %i.fv, align 8, !nonnull !10, !noundef !10
  %i.go = load i64, ptr %i.fx, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5680
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gn, i64 noundef %i.go) #33, !noalias !5681
  %i.gp = load i64, ptr %i.s, align 8, !range !25, !noalias !5680, !noundef !10 ; 3 uses
  %i.gq = icmp eq i64 %i.gp, 2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !5682 ; 5 uses
  br i1 %i.gq, label %bb.fg, label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.gt = load i8, ptr %i.gk, align 2, !range !46, !noundef !10
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %bb.h, label %_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.f
  %i.gv = load i8, ptr %i.gk, align 2, !range !5683, !noundef !10
  switch i8 %i.gv, label %_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit [
    i8 0, label %bb.h
    i8 2, label %bb.h
  ]

bb.k:                                             ; preds = %bb.f
  %i.gw = load i8, ptr %i.gk, align 2, !range !47, !noundef !10
  switch i8 %i.gw, label %_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit [
    i8 1, label %bb.h
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.g, %bb.k
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 142
  %i.gy = load i8, ptr %i.gx, align 2, !range !16, !noundef !10
  switch i8 %i.gy, label %bb.gc [
    i8 1, label %bb.gb
    i8 2, label %_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit
  ]

bb.m:                                             ; preds = %bb.k
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 142
  %i.ha = load i8, ptr %i.gz, align 2, !range !16, !noundef !10
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %bb.fr, label %_RNvXs1i_NtCs6KYBFtxZ0jn_12notify_types5eventNtB6_9EventKindNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.h
  %.sroa.15.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.15.0..sroa_idx4, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5680
  store i64 %i.gp, ptr %i.fl, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.gs, ptr %.sroa.11.0..sroa_idx, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 142 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 2, !range !16, !noundef !10
  %i.he = icmp eq i8 %i.hd, 1
  br i1 %i.he, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.hf = load ptr, ptr %i.fv, align 8, !nonnull !10, !noundef !10
  %i.hg = load i64, ptr %i.fx, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5684
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hf, i64 noundef %i.hg) #33, !noalias !5685
  %i.hh = load i64, ptr %i.r, align 8, !range !25, !noalias !5684, !noundef !10
  %i.hi = icmp eq i64 %i.hh, 2
  br i1 %i.hi, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.hj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !5684, !nonnull !10, !noundef !10 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5686
  %i.hl = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hm = and i64 %i.hl, 3
  switch i64 %i.hm, label %default.unreachable167 [
    i64 2, label %.thread98
    i64 3, label %bb.q
    i64 0, label %.thread98
    i64 1, label %bb.r
  ], !prof !23

bb.q:                                             ; preds = %bb.p
  %i.hn = icmp ult ptr %i.hk, inttoptr (i64 188978561024 to ptr)
  %i.ho = and i64 %i.hl, 1095216660480
  %i.hp = icmp ne i64 %i.ho, 1095216660480
  call void @llvm.assume(i1 %i.hn)
  call void @llvm.assume(i1 %i.hp)
  br label %.thread98

bb.r:                                             ; preds = %bb.p
  %i.hq = getelementptr i8, ptr %i.hk, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hq) ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.hq, ptr %i.hr, align 8, !alias.scope !5687, !noalias !5686
  store i8 3, ptr %i.q, align 8, !alias.scope !5687, !noalias !5686
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hr) #33, !noalias !5686
  br label %.thread98

.thread98:                                        ; preds = %bb.p, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5686
  br label %.thread

bb.s:                                             ; preds = %bb.o
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.76.0.copyload = load i32, ptr %.sroa.76.0..sroa_idx, align 8, !noalias !5688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5684
  %i.hs = and i32 %.sroa.76.0.copyload, 61440
  %i.ht = icmp eq i32 %i.hs, 40960
  br i1 %i.ht, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.n, %.thread98, %bb.s
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.hv = load i32, ptr %i.hu, align 8, !noundef !10
  %i.hw = and i32 %i.hv, 61440                    ; 2 uses
  %trunc251 = trunc nuw i32 %i.hw to i16
  switch i16 %trunc251, label %bb.t [
    i16 -32768, label %bb.u
    i16 8192, label %bb.u
  ]

bb.t:                                             ; preds = %.thread
  %i.hx = icmp eq i32 %i.hw, 4096
  br label %bb.u

bb.u:                                             ; preds = %.thread, %.thread, %bb.s, %bb.t
  %.sroa.09.097 = phi i1 [ true, %bb.s ], [ false, %bb.t ], [ false, %.thread ], [ false, %.thread ]
  %.sroa.011.0 = phi i1 [ false, %bb.s ], [ %i.hx, %bb.t ], [ true, %.thread ], [ true, %.thread ] ; 2 uses
  %i.hy = load ptr, ptr %i.fv, align 8, !nonnull !10, !noundef !10
  %i.hz = load i64, ptr %i.fx, align 8, !noundef !10
  %i.ia = call fastcc noundef nonnull align 8 ptr @_RNvMNtNtCsgZlHlzpN0xi_7uu_tail6follow5filesNtB2_12FileHandling3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hy, i64 noundef %i.hz) #33 ; 6 uses
  %i.ib = load i64, ptr %i.ia, align 8, !range !25, !noundef !10
  %.not252 = icmp eq i64 %i.ib, 2
  br i1 %.not252, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.id = load i32, ptr %i.ic, align 8, !noundef !10
  %i.ie = trunc i32 %i.id to i16
  %trunc258 = and i16 %i.ie, -4096                ; 2 uses
  br i1 %.sroa.011.0, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  br i1 %.sroa.011.0, label %bb.cq, label %bb.cp

bb.x:                                             ; preds = %bb.v
  switch i16 %trunc258, label %bb.at [
    i16 -32768, label %bb.as
    i16 8192, label %bb.as
    i16 4096, label %bb.as
  ]

bb.y:                                             ; preds = %bb.v
  switch i16 %trunc258, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit [
    i16 -32768, label %bb.z
    i16 8192, label %bb.z
    i16 4096, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y
  br i1 %.sroa.09.097, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 200
  %i.ig = load ptr, ptr %i.if, align 8, !noundef !10
  %.not257 = icmp eq ptr %i.ig, null
  br i1 %.not257, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.dm, align 8
  %i.ih = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm) #33
  store ptr %i.ih, ptr %i.dn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  %i.ii = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #33 ; 2 uses
  %i.ij = extractvalue { ptr, i64 } %i.ii, 0
  %i.ik = extractvalue { ptr, i64 } %i.ii, 1
  store ptr %i.ij, ptr %i.dl, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.ik, ptr %i.il, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store ptr %i.dl, ptr %i.dk, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgZlHlzpN0xi_7uu_tail, ptr %.sroa.4116.0..sroa_idx, align 8
  %i.im = call fastcc noundef ptr @_RNvYNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(8) %i.dn, ptr noundef nonnull @72, ptr noundef nonnull %i.dk) #33
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail(ptr %i.im) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  store i64 0, ptr %i.di, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4118.0..sroa_idx, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 0, ptr %.sroa.5119.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  %i.in = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !nonnull !10, !noundef !10
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !noundef !10
  store i64 0, ptr %i.dh, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.io, ptr %.sroa.4121.0..sroa_idx, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %i.iq, ptr %.sroa.5122.0..sroa_idx, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i8 1, ptr %i.ir, align 8
  call fastcc void @_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dh) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  %i.is = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.iv = load i64, ptr %i.iu, align 8, !noundef !10 ; 2 uses
  call fastcc void @_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.it, i64 noundef %i.iv) #38
  %i.iw = load i8, ptr %i.dg, align 8, !range !13, !noundef !10
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.al, label %bb.am

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.da, align 8
  %i.iy = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.da) #33
  store ptr %i.iy, ptr %i.db, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  %i.iz = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #33 ; 2 uses
  %i.ja = extractvalue { ptr, i64 } %i.iz, 0
  %i.jb = extractvalue { ptr, i64 } %i.iz, 1
  store ptr %i.ja, ptr %i.cz, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.jb, ptr %i.jc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  store ptr %i.cz, ptr %i.cy, align 8
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgZlHlzpN0xi_7uu_tail, ptr %.sroa.4130.0..sroa_idx, align 8
  %i.jd = call fastcc noundef ptr @_RNvYNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(8) %i.db, ptr noundef nonnull @72, ptr noundef nonnull %i.cy) #33
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail(ptr %i.jd) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer12handle_event:bb.a
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rl) #33, !noalias !5709
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i393

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i393: ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5709
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  store i64 0, ptr %i.ck, align 8
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4146.0..sroa_idx, align 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 0, ptr %.sroa.5147.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %i.rm = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !nonnull !10, !noundef !10
  %i.ro = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.rp = load i64, ptr %i.ro, align 8, !noundef !10
  store i64 0, ptr %i.cj, align 8
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.rn, ptr %.sroa.4149.0..sroa_idx, align 8
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %i.rp, ptr %.sroa.5150.0..sroa_idx, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i8 1, ptr %i.rq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5711
  store i64 0, ptr %i.m, align 8, !noalias !5711
  %.sroa.4.0..sroa_idx.i395 = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i395, align 8, !noalias !5711
  %.sroa.5.0..sroa_idx.i396 = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i396, align 8, !noalias !5711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5711
  %i.rr = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1610612768, ptr %i.rr, align 8, !noalias !5711
  store ptr %i.m, ptr %i.l, align 8, !noalias !5711
  %i.rs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @250, ptr %i.rs, align 8, !noalias !5711
  %i.rt = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #33, !noalias !5712
  br i1 %i.rt, label %bb.da, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit, !prof !18

bb.da:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @251, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #37, !noalias !5712
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit
  %.sroa.024.0.copyload25 = load i64, ptr %i.m, align 8, !noalias !5713 ; 3 uses
  %.sroa.526.0.copyload28 = load ptr, ptr %.sroa.4.0..sroa_idx.i395, align 8, !noalias !5713, !nonnull !10, !noundef !10 ; 8 uses
  %.sroa.830.0.copyload32 = load i64, ptr %.sroa.5.0..sroa_idx.i396, align 8, !noalias !5713 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  switch i64 %.sroa.830.0.copyload32, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.db
  ]

bb.db:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit
  %i.ru = load i8, ptr %.sroa.526.0.copyload28, align 1, !alias.scope !5714, !noalias !5715, !noundef !10 ; 2 uses
  switch i8 %i.ru, label %bb.dc [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit
  %.pr.i = load i8, ptr %.sroa.526.0.copyload28, align 1, !alias.scope !5714, !noalias !5715
  br label %bb.dc

bb.dc:                                            ; preds = %thread-pre-split.i, %bb.db
  %i.rv = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ru, %bb.db ]
  switch i8 %i.rv, label %bb.dj [
    i8 43, label %bb.dd
    i8 45, label %bb.de
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.526.0.copyload28, i64 1
  %i.rx = add nsw i64 %.sroa.830.0.copyload32, -1
  br label %bb.dj

bb.de:                                            ; preds = %bb.dc
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.526.0.copyload28, i64 1 ; 2 uses
  %i.rz = add nsw i64 %.sroa.830.0.copyload32, -1 ; 3 uses
  %i.sa = icmp samesign ult i64 %.sroa.830.0.copyload32, 17
  br i1 %i.sa, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.de
  %.not103137.i = icmp eq i64 %i.rz, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.de, %bb.dh
  %.sroa.0.1136.i = phi ptr [ %i.sb, %bb.dh ], [ %i.ry, %bb.de ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.sc, %bb.dh ], [ %i.rz, %bb.de ]
  %.sroa.084.0134.i = phi i64 [ %i.sn, %bb.dh ], [ 0, %bb.de ]
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.sc = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.sd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.se = extractvalue { i64, i1 } %i.sd, 0
  %i.sf = extractvalue { i64, i1 } %i.sd, 1
  br i1 %i.sf, label %.loopexit, label %bb.df, !prof !18

bb.df:                                            ; preds = %.lr.ph.i
  %i.sg = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !5714, !noalias !5715, !noundef !10
  %i.sh = zext i8 %i.sg to i32
  %i.si = add nsw i32 %i.sh, -48                  ; 2 uses
  %i.sj = icmp ult i32 %i.si, 10
  br i1 %i.sj, label %bb.dg, label %.loopexit

bb.dg:                                            ; preds = %bb.df
  %i.sk = zext nneg i32 %i.si to i64
  %i.sl = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.se, i64 %i.sk) ; 2 uses
  %i.sm = extractvalue { i64, i1 } %i.sl, 1
  br i1 %i.sm, label %.loopexit, label %bb.dh, !prof !18

bb.dh:                                            ; preds = %bb.dg
  %i.sn = extractvalue { i64, i1 } %i.sl, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.sc, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.di
  %.sroa.0.2140.i = phi ptr [ %i.su, %bb.di ], [ %i.ry, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.st, %bb.di ], [ %i.rz, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.sw, %bb.di ], [ 0, %.preheader114.i ]
  %i.so = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !5714, !noalias !5715, !noundef !10
  %i.sp = zext i8 %i.so to i32
  %i.sq = add nsw i32 %i.sp, -48                  ; 2 uses
  %i.sr = icmp ult i32 %i.sq, 10
  br i1 %i.sr, label %bb.di, label %.loopexit

bb.di:                                            ; preds = %.lr.ph141.i
  %i.ss = mul i64 %.sroa.084.2138.i, 10
  %i.st = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.sv = zext nneg i32 %i.sq to i64
  %i.sw = sub i64 %i.ss, %i.sv                    ; 2 uses
  %.not103.i = icmp eq i64 %i.st, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.dj:                                            ; preds = %bb.dd, %bb.dc
  %.sroa.26.0.i = phi i64 [ %i.rx, %bb.dd ], [ %.sroa.830.0.copyload32, %bb.dc ] ; 4 uses
  %.sroa.0.0.i397 = phi ptr [ %i.rw, %bb.dd ], [ %.sroa.526.0.copyload28, %bb.dc ] ; 2 uses
  %i.sx = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.sx, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.dj
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.dj, %bb.dm
  %.sroa.0.3145.i = phi ptr [ %i.sy, %bb.dm ], [ %.sroa.0.0.i397, %bb.dj ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.sz, %bb.dm ], [ %.sroa.26.0.i, %bb.dj ]
  %.sroa.084.3143.i = phi i64 [ %i.tk, %bb.dm ], [ 0, %bb.dj ]
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.sz = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.ta = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.tb = extractvalue { i64, i1 } %i.ta, 0
  %i.tc = extractvalue { i64, i1 } %i.ta, 1
  br i1 %i.tc, label %.loopexit, label %bb.dk, !prof !18

bb.dk:                                            ; preds = %.preheader111.i
  %i.td = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !5714, !noalias !5715, !noundef !10
  %i.te = zext i8 %i.td to i32
  %i.tf = add nsw i32 %i.te, -48                  ; 2 uses
  %i.tg = icmp ult i32 %i.tf, 10
  br i1 %i.tg, label %bb.dl, label %.loopexit

bb.dl:                                            ; preds = %bb.dk
  %i.th = zext nneg i32 %i.tf to i64
  %i.ti = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.tb, i64 %i.th) ; 2 uses
  %i.tj = extractvalue { i64, i1 } %i.ti, 1
  br i1 %i.tj, label %.loopexit, label %bb.dm, !prof !18

bb.dm:                                            ; preds = %bb.dl
  %i.tk = extractvalue { i64, i1 } %i.ti, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.sz, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.dn
  %.sroa.0.4149.i = phi ptr [ %i.tr, %bb.dn ], [ %.sroa.0.0.i397, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.tq, %bb.dn ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.tt, %bb.dn ], [ 0, %.preheader.i ]
  %i.tl = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !5714, !noalias !5715, !noundef !10
  %i.tm = zext i8 %i.tl to i32
  %i.tn = add nsw i32 %i.tm, -48                  ; 2 uses
  %i.to = icmp ult i32 %i.tn, 10
  br i1 %i.to, label %bb.dn, label %.loopexit

bb.dn:                                            ; preds = %.lr.ph150.i
  %i.tp = mul i64 %.sroa.084.4147.i, 10
  %i.tq = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.ts = zext nneg i32 %i.tn to i64
  %i.tt = add i64 %i.tp, %i.ts                    ; 2 uses
  %.not105.i = icmp eq i64 %i.tq, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

bb.do:                                            ; preds = %bb.cp
  %i.tu = load i8, ptr %i.hc, align 2, !range !16, !noundef !10
  %i.tv = icmp eq i8 %i.tu, 0
  br i1 %i.tv, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.bo, align 8
  %i.tw = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bo) #33
  store ptr %i.tw, ptr %i.bp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.tx = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #33 ; 2 uses
  %i.ty = extractvalue { ptr, i64 } %i.tx, 0
  %i.tz = extractvalue { ptr, i64 } %i.tx, 1
  store ptr %i.ty, ptr %i.bn, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.tz, ptr %i.ua, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store ptr %i.bn, ptr %i.bm, align 8
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgZlHlzpN0xi_7uu_tail, ptr %.sroa.4172.0..sroa_idx, align 8
  %i.ub = call fastcc noundef ptr @_RNvYNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @72, ptr noundef nonnull %i.bm) #33
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail(ptr %i.ub) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store i64 0, ptr %i.bk, align 8
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4174.0..sroa_idx, align 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 0, ptr %.sroa.5175.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.uc = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !nonnull !10, !noundef !10
  %i.ue = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.uf = load i64, ptr %i.ue, align 8, !noundef !10
  store i64 0, ptr %i.bj, align 8
  %.sroa.4177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.ud, ptr %.sroa.4177.0..sroa_idx, align 8
  %.sroa.5178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %i.uf, ptr %.sroa.5178.0..sroa_idx, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i8 1, ptr %i.ug, align 8
  call fastcc void @_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.uh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.uk = load i64, ptr %i.uj, align 8, !noundef !10 ; 2 uses
  call fastcc void @_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ui, i64 noundef %i.uk) #38
  %i.ul = load i8, ptr %i.bi, align 8, !range !13, !noundef !10
  %i.um = trunc nuw i8 %i.ul to i1
  br i1 %i.um, label %bb.dr, label %bb.ds

bb.dq:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.cc, align 8
  %i.un = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cc) #33
  store ptr %i.un, ptr %i.cd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.uo = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #33 ; 2 uses
  %i.up = extractvalue { ptr, i64 } %i.uo, 0
  %i.uq = extractvalue { ptr, i64 } %i.uo, 1
  store ptr %i.up, ptr %i.cb, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.uq, ptr %i.ur, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store ptr %i.cb, ptr %i.ca, align 8
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgZlHlzpN0xi_7uu_tail, ptr %.sroa.4158.0..sroa_idx, align 8
  %i.us = call fastcc noundef ptr @_RNvYNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @72, ptr noundef nonnull %i.ca) #33
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail(ptr %i.us) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i64 0, ptr %i.by, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4160.0..sroa_idx, align 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 0, ptr %.sroa.5161.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  %i.ut = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8, !nonnull !10, !noundef !10
  %i.uv = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.uw = load i64, ptr %i.uv, align 8, !noundef !10
  store i64 0, ptr %i.bx, align 8
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.uu, ptr %.sroa.4163.0..sroa_idx, align 8
  %.sroa.5164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.uw, ptr %.sroa.5164.0..sroa_idx, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i8 1, ptr %i.ux, align 8
  call fastcc void @_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bx) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.vb = load i64, ptr %i.va, align 8, !noundef !10 ; 2 uses
  call fastcc void @_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uz, i64 noundef %i.vb) #38
  %i.vc = load i8, ptr %i.bw, align 8, !range !13, !noundef !10
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %bb.dy, label %bb.dz

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ui, i64 noundef %i.uk) #36
  %i.ve = load i8, ptr %i.bh, align 8, !range !13, !noundef !10
  %i.vf = trunc nuw i8 %i.ve to i1
  br i1 %i.vf, label %bb.dv, label %bb.dw

bb.ds:                                            ; preds = %bb.dp
  %i.vg = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.vh = load i64, ptr %i.vg, align 8, !noundef !10
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, i64 noundef %i.vh) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dw, %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 41, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bf) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %.val.i398.a = load i64, ptr %i.bg, align 8, !range !11, !noundef !10 ; 2 uses
  %i.vi = icmp eq i64 %.val.i398.a, 0
  br i1 %i.vi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit400.a, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ui, i64 noundef %.val.i398.a, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5716
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit400.a

bb.dv:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bg) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 41, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bf) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit400.a

bb.dw:                                            ; preds = %bb.dr
  %i.vj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.vk = load double, ptr %i.vj, align 8, !noundef !10
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, double noundef %i.vk) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.dt

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit400.a: ; preds = %bb.du, %bb.dt, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %i.bl, ptr %i.be, align 8
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4182.0..sroa_idx, align 8
  %i.vl = call fastcc noundef ptr @_RNvYNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @76, ptr noundef nonnull %i.be) #33
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail(ptr %i.vl) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.experimental.noalias.scope.decl(metadata !5717)
  %.val.i401.a = load i64, ptr %i.bl, align 8, !range !11, !alias.scope !5717, !noundef !10 ; 2 uses
  %i.vm = icmp eq i64 %.val.i401.a, 0
  br i1 %i.vm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit403.a, label %bb.dx

bb.dx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit400.a
  %i.vn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val1.i402 = load ptr, ptr %i.vn, align 8, !alias.scope !5717, !nonnull !10, !noundef !10
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i402, i64 noundef %.val.i401.a, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5717
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit403.a

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit403.a: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit400.a, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %.val301 = load ptr, ptr %i.bp, align 8, !nonnull !10, !align !14, !noundef !10
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail(ptr nonnull %.val301) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit

bb.dy:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uz, i64 noundef %i.vb) #36
  %i.vo = load i8, ptr %i.bv, align 8, !range !13, !noundef !10
  %i.vp = trunc nuw i8 %i.vo to i1
  br i1 %i.vp, label %bb.ec, label %bb.ed

bb.dz:                                            ; preds = %bb.dq
  %i.vq = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.vr = load i64, ptr %i.vq, align 8, !noundef !10
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, i64 noundef %i.vr) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ed, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 51, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bt) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %.val.i404.a = load i64, ptr %i.bu, align 8, !range !11, !noundef !10 ; 2 uses
  %i.vs = icmp eq i64 %.val.i404.a, 0
end_hunk_1
