Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/html5ever-7c94b86f9147eabc.html5ever.8469159039506d9f-cgu.1?download=true
inline.NumInlined: 66
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks:bb.a
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = icmp eq ptr %i.g, inttoptr (i64 15 to ptr)
  br i1 %i.i, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult ptr %i.g, inttoptr (i64 9 to ptr)
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %i.h, 1
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr i8, ptr %i.g, i64 %i.l
  %i.n = trunc i64 %i.h to i1
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !noalias !45, !noundef !5
  %i.q = zext i32 %i.p to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !noundef !5
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i.i.i
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit: ; preds = %bb.a, %bb.b, %bb.f, %bb.g
  %.sroa.3.0.i = phi i64 [ undef, %bb.a ], [ %i.v, %bb.g ], [ %i.h, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.w, %bb.g ], [ %i.r, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !range !35, !noundef !5
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.h, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88

bb.h:                                             ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ad = icmp eq ptr %i.ab, inttoptr (i64 15 to ptr)
  br i1 %i.ad, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp ult ptr %i.ab, inttoptr (i64 9 to ptr)
  br i1 %i.ae, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = and i64 %i.ac, 1
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr i8, ptr %i.ab, i64 %i.ag
  %i.ai = trunc i64 %i.ac to i1
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !48, !noundef !5
  %i.al = zext i32 %i.ak to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i.i.i87 = phi i64 [ %i.al, %bb.k ], [ 0, %bb.j ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !noundef !5
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.01.0.i.i.i87
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88: ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit, %bb.h, %bb.l, %bb.m
  %.sroa.3.0.i85 = phi i64 [ undef, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit ], [ %i.aq, %bb.m ], [ %i.ac, %bb.l ], [ 0, %bb.h ] ; 3 uses
  %.sroa.0.0.i86 = phi ptr [ null, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit ], [ %i.ar, %bb.m ], [ %i.am, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.h ] ; 16 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i64, ptr %i.as, align 8, !range !35, !noundef !5
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.n, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92

bb.n:                                             ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.ay = icmp eq ptr %i.aw, inttoptr (i64 15 to ptr)
  br i1 %i.ay, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = icmp ult ptr %i.aw, inttoptr (i64 9 to ptr)
  br i1 %i.az, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = and i64 %i.ax, 1
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr i8, ptr %i.aw, i64 %i.bb
  %i.bd = trunc i64 %i.ax to i1
  br i1 %i.bd, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bf = load i32, ptr %i.be, align 4, !noalias !51, !noundef !5
  %i.bg = zext i32 %i.bf to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.01.0.i.i.i91 = phi i64 [ %i.bg, %bb.q ], [ 0, %bb.p ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !noundef !5
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.01.0.i.i.i91
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92: ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88, %bb.n, %bb.r, %bb.s
  %.sroa.3.0.i89 = phi i64 [ undef, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88 ], [ %i.bl, %bb.s ], [ %i.ax, %bb.r ], [ 0, %bb.n ] ; 6 uses
  %.sroa.0.0.i90 = phi ptr [ null, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit88 ], [ %i.bm, %bb.s ], [ %i.bh, %bb.r ], [ inttoptr (i64 1 to ptr), %bb.n ] ; 10 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null          ; 2 uses
  br i1 %.not, label %bb.z, label %bb.t

bb.t:                                             ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92
  %.not55 = icmp eq ptr %.sroa.0.0.i86, null
  %.not56 = icmp eq ptr %.sroa.0.0.i90, null      ; 2 uses
  %i.bn = icmp eq i64 %.sroa.3.0.i, 4             ; 4 uses
  br i1 %.not55, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not56, label %bb.ah, label %bb.ag

bb.v:                                             ; preds = %bb.t
  br i1 %.not56, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.bn, label %bb.ae, label %.thread118

bb.x:                                             ; preds = %bb.v
  br i1 %i.bn, label %bb.y, label %.thread118

bb.y:                                             ; preds = %bb.x
  %i.bo = load i32, ptr %.sroa.0.0.i, align 1
  %i.bp = icmp ne i32 %i.bo, 1819112552
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br label %.thread118

.thread:                                          ; preds = %bb.ak, %bb.aw, %bb.av, %bb.aq, %bb.au, %bb.at, %bb.ao, %bb.al, %bb.aj, %bb.ai, %bb.am, %bb.as, %bb.ah, %bb.ag, %bb.an, %bb.ar
  %.sroa.033.0.ph = phi i1 [ %i.ez, %bb.at ], [ false, %bb.aj ], [ %i.df, %bb.al ], [ false, %bb.ai ], [ false, %bb.am ], [ false, %bb.as ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.aq ], [ false, %bb.an ], [ false, %bb.ar ], [ %i.fc, %bb.aw ], [ %i.cw, %bb.ak ], [ %i.fa, %bb.au ], [ false, %bb.ao ], [ %i.fb, %bb.av ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.aa

.thread118:                                       ; preds = %bb.af, %bb.y, %bb.x, %bb.ae, %bb.w
  %.sroa.033.0.ph117 = phi i1 [ false, %bb.w ], [ %i.ci, %bb.af ], [ %i.br, %bb.y ], [ false, %bb.x ], [ false, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.ab

bb.z:                                             ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks20opt_tendril_as_slice.exit92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.not.i = icmp eq ptr %.sroa.0.0.i86, null
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z
  %.sroa.033.0115 = phi i1 [ %.sroa.033.0.ph, %.thread ], [ false, %bb.z ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i86, i64 %.sroa.3.0.i85
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull readonly %.sroa.0.0.i86, ptr noundef nonnull readonly %i.bs)
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit

bb.ab:                                            ; preds = %.thread118, %bb.z
  %.sroa.033.0121 = phi i1 [ %.sroa.033.0.ph117, %.thread118 ], [ false, %bb.z ]
  store i64 -1, ptr %i.c, align 8, !alias.scope !54, !noalias !57
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit: ; preds = %bb.aa, %bb.ab
  %.sroa.033.0114 = phi i1 [ %.sroa.033.0115, %bb.aa ], [ %.sroa.033.0121, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i93 = icmp eq ptr %.sroa.0.0.i90, null
  br i1 %.not.i93, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i90, i64 %.sroa.3.0.i89
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull readonly %.sroa.0.0.i90, ptr noundef nonnull readonly %i.bt)
          to label %._RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94_crit_edge unwind label %bb.ax

._RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94_crit_edge: ; preds = %bb.ac
  %.pre = load i64, ptr %i.b, align 8, !range !4
  %i.bu = icmp ne i64 %.pre, -1
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94

bb.ad:                                            ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit
  store i64 -1, ptr %i.b, align 8, !alias.scope !59, !noalias !62
  br label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94

bb.ae:                                            ; preds = %bb.w
  %i.bv = load i32, ptr %.sroa.0.0.i, align 1
  %i.bw = icmp ne i32 %i.bv, 1819112552
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = icmp eq i64 %.sroa.3.0.i89, 19
  %or.cond = and i1 %i.bz, %i.by
  br i1 %or.cond, label %bb.af, label %.thread118

bb.af:                                            ; preds = %bb.ae
  %i.ca = load i128, ptr %.sroa.0.0.i90, align 1
  %i.cb = xor i128 %i.ca, 145464208053239100491945377269296357985
  %i.cc = getelementptr i8, ptr %.sroa.0.0.i90, i64 3
  %i.cd = load i128, ptr %i.cc, align 1
  %i.ce = xor i128 %i.cd, 154696380606546177070729388462326838389
  %i.cf = or i128 %i.cb, %i.ce
  %i.cg = icmp ne i128 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br label %.thread118

bb.ag:                                            ; preds = %bb.u
  br i1 %i.bn, label %bb.am, label %.thread

bb.ah:                                            ; preds = %bb.u
  br i1 %i.bn, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i32, ptr %.sroa.0.0.i, align 1
  %i.ck = icmp ne i32 %i.cj, 1819112552
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  switch i64 %.sroa.3.0.i85, label %.thread [
    i64 24, label %bb.ak
    i64 25, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.cn = load i128, ptr %.sroa.0.0.i86, align 1
  %i.co = xor i128 %i.cn, 101422843974581321042014108279922175789
  %i.cp = getelementptr i8, ptr %.sroa.0.0.i86, i64 16
  %i.cq = load i64, ptr %i.cp, align 1
  %i.cr = zext i64 %i.cq to i128
  %i.cs = xor i128 %i.cr, 5639965988069717024
  %i.ct = or i128 %i.co, %i.cs
  %i.cu = icmp ne i128 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br label %.thread

bb.al:                                            ; preds = %bb.aj
  %i.cx = load i128, ptr %.sroa.0.0.i86, align 1
  %i.cy = xor i128 %i.cx, 101422843974581321042014108279922175789
  %i.cz = getelementptr i8, ptr %.sroa.0.0.i86, i64 9
  %i.da = load i128, ptr %i.cz, align 1
  %i.db = xor i128 %i.da, 104039009166660363102802981902262223956
  %i.dc = or i128 %i.cy, %i.db
  %i.dd = icmp ne i128 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br label %.thread

bb.am:                                            ; preds = %bb.ag
  %i.dg = load i32, ptr %.sroa.0.0.i, align 1
  %i.dh = icmp ne i32 %i.dg, 1819112552
  %i.di = zext i1 %i.dh to i32
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  switch i64 %.sroa.3.0.i85, label %.thread [
    i64 24, label %bb.ao
    i64 25, label %bb.ap
    i64 32, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.an
  %i.dk = load i128, ptr %.sroa.0.0.i86, align 1
  %i.dl = xor i128 %i.dk, 101422843974581321042014108279922175789
  %i.dm = getelementptr i8, ptr %.sroa.0.0.i86, i64 16
  %i.dn = load i64, ptr %i.dm, align 1
  %i.do = zext i64 %i.dn to i128
  %i.dp = xor i128 %i.do, 5639965988069717024
  %i.dq = or i128 %i.dl, %i.dp
  %i.dr = icmp ne i128 %i.dq, 0
  %i.ds = zext i1 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = icmp eq i64 %.sroa.3.0.i89, 42
  %or.cond78 = and i1 %i.du, %i.dt
  br i1 %or.cond78, label %bb.aw, label %.thread

bb.ap:                                            ; preds = %bb.an
  %i.dv = load i128, ptr %.sroa.0.0.i86, align 1
  %i.dw = xor i128 %i.dv, 101422843974581321042014108279922175789
  %i.dx = getelementptr i8, ptr %.sroa.0.0.i86, i64 9
  %i.dy = load i128, ptr %i.dx, align 1
  %i.dz = xor i128 %i.dy, 104039009166660363102802981902262223956
  %i.ea = or i128 %i.dw, %i.dz
  %i.eb = icmp ne i128 %i.ea, 0
  %i.ec = zext i1 %i.eb to i32
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ee = icmp eq i64 %.sroa.3.0.i89, 37
  br i1 %i.ee, label %bb.av, label %.thread

bb.ar:                                            ; preds = %bb.an
  %i.ef = load i128, ptr %.sroa.0.0.i86, align 1
  %i.eg = xor i128 %i.ef, 102788175927111337116501942944194834221
  %i.eh = getelementptr i8, ptr %.sroa.0.0.i86, i64 16
  %i.ei = load i128, ptr %i.eh, align 1
  %i.ej = xor i128 %i.ei, 104039009187457793747008828064738123852
  %i.ek = or i128 %i.eg, %i.ej
  %i.el = icmp ne i128 %i.ek, 0
  %i.em = zext i1 %i.el to i32
  %i.en = icmp eq i32 %i.em, 0
  %i.eo = icmp eq i64 %.sroa.3.0.i89, 49
  %or.cond124 = and i1 %i.eo, %i.en
  br i1 %or.cond124, label %bb.au, label %.thread

bb.as:                                            ; preds = %bb.ap
  %i.ep = load i128, ptr %.sroa.0.0.i86, align 1
  %i.eq = xor i128 %i.ep, 102788175927111337116501942944194834221
  %i.er = getelementptr i8, ptr %.sroa.0.0.i86, i64 9
  %i.es = load i128, ptr %i.er, align 1
  %i.et = xor i128 %i.es, 104039009166657959052499143036613182548
  %i.eu = or i128 %i.eq, %i.et
  %i.ev = icmp ne i128 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = icmp eq i64 %.sroa.3.0.i89, 44
  %or.cond79 = and i1 %i.ey, %i.ex
  br i1 %or.cond79, label %bb.at, label %.thread

bb.at:                                            ; preds = %bb.as
  %bcmp67 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(44) %.sroa.0.0.i90, ptr noundef nonnull dereferenceable(44) @63, i64 44)
  %i.ez = icmp eq i32 %bcmp67, 0
  br label %.thread

bb.au:                                            ; preds = %bb.ar
  %bcmp68 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(49) %.sroa.0.0.i90, ptr noundef nonnull dereferenceable(49) @64, i64 49)
  %i.fa = icmp eq i32 %bcmp68, 0
  br label %.thread

bb.av:                                            ; preds = %bb.aq
  %bcmp69 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(37) %.sroa.0.0.i90, ptr noundef nonnull dereferenceable(37) @65, i64 37)
  %i.fb = icmp eq i32 %bcmp69, 0
  br label %.thread

bb.aw:                                            ; preds = %bb.ao
  %bcmp71 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(42) %.sroa.0.0.i90, ptr noundef nonnull dereferenceable(42) @66, i64 42)
  %i.fc = icmp eq i32 %bcmp71, 0
  br label %.thread

.body:                                            ; preds = %bb.be, %bb.bf, %bb.ax, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.fd, %bb.ax ], [ %i.gb, %bb.bf ], [ %i.gb, %bb.be ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %common.resume unwind label %bb.bl

bb.ax:                                            ; preds = %bb.ac
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94: ; preds = %._RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94_crit_edge, %bb.ad
  %.not73 = phi i1 [ %i.bu, %._RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94_crit_edge ], [ false, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fe = load i64, ptr %i.c, align 8, !range !4, !noundef !5
  %.not72 = icmp eq i64 %i.fe, -1                 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !nonnull !5 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fi = load i64, ptr %i.fh, align 8
  %.sroa.5.0 = select i1 %.not72, i64 undef, i64 %i.fi ; 6 uses
  %.sroa.042.0 = select i1 %.not72, ptr null, ptr %i.fg
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fm = load i64, ptr %i.fl, align 8
  %spec.select = select i1 %.not73, ptr %i.fk, ptr null
  store ptr %.sroa.042.0, ptr %i.a, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %spec.select, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.fm, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fr = load i8, ptr %i.fq, align 8, !range !64, !noundef !5
  %i.fs = trunc nuw i8 %i.fr to i1
  %i.ft = icmp ne i64 %.sroa.3.0.i, 4
  %i.fu = or i1 %i.ft, %i.fs
  %or.cond80.not = or i1 %.not, %i.fu
  br i1 %or.cond80.not, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94
  %i.fv = load i32, ptr %.sroa.0.0.i, align 1
  %i.fw = icmp ne i32 %i.fv, 1819112552           ; 3 uses
  %i.fx = zext i1 %i.fw to i32                    ; 0 uses
  %brmerge81 = or i1 %1, %i.fw
  %.mux = select i1 %i.fw, i8 0, i8 2
  br i1 %brmerge81, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %.not72, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fy = invoke noundef zeroext i1 @_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @5, i64 noundef 3)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.az
  br i1 %.not73, label %bb.bi, label %.critedge

.thread122:                                       ; preds = %bb.bc
  br i1 %.not73, label %bb.bi, label %.thread123.preheader

.loopexit:                                        ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.1, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.1, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.preheader
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.thread123
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ba, %bb.bi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit135, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit138, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #23
          to label %.body unwind label %bb.bl

bb.bc:                                            ; preds = %bb.ba
  br i1 %i.fy, label %.critedge, label %.thread122

.critedge:                                        ; preds = %.noexc95, %.noexc104.1, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit105.thread, %.noexc99, %.noexc99.1, %bb.bb, %bb.bj, %bb.ay, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94, %bb.bc
  %.sroa.041.0 = phi i8 [ %.mux83, %bb.bj ], [ 0, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94 ], [ %.mux, %bb.ay ], [ %.147, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit105.thread ], [ 0, %bb.bc ], [ 1, %.noexc99 ], [ 2, %bb.bb ], [ 1, %.noexc99.1 ], [ 2, %.noexc104.1 ], [ 0, %.noexc95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fz = load i64, ptr %i.b, align 8, !range !4, !alias.scope !65, !noundef !5
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit, label %bb.bd

bb.bd:                                            ; preds = %.critedge
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bg unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !68, !noundef !5 ; 2 uses
  %i.gc = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.gc, label %.body, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val3.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !75, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !76
  br label %.body

bb.bg:                                            ; preds = %bb.bd
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !68, !noundef !5 ; 2 uses
  %i.gd = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.gd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val1.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !75, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !79
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit

bb.bi:                                            ; preds = %.thread122, %bb.bb
  %i.ge = invoke noundef zeroext i1 @_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @7, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %brmerge82 = or i1 %.not72, %i.ge
  %.mux83 = select i1 %i.ge, i8 0, i8 2
  br i1 %brmerge82, label %.critedge, label %.thread123.preheader

.thread123.preheader:                             ; preds = %.thread122, %bb.bj
  br label %.thread123

bb.bk:                                            ; preds = %.noexc95
  %.add = add nuw nsw i64 %.idx148, 16            ; 2 uses
  %.not.not.not.i.not.not.not.i.not = icmp eq i64 %.add, 864
  br i1 %.not.not.not.i.not.not.not.i.not, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.preheader, label %.thread123

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.preheader: ; preds = %bb.bk
  %i.gf = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %.sroa.5.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 32)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit

.thread123:                                       ; preds = %.thread123.preheader, %bb.bk
  %.idx148 = phi i64 [ %.add, %bb.bk ], [ 0, %.thread123.preheader ] ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @62, i64 %.idx148 ; 2 uses
  %.val3.i.i = load ptr, ptr %.ptr, align 8, !alias.scope !82, !noalias !85, !nonnull !5, !noundef !5
  %i.gg = getelementptr i8, ptr %.ptr, i64 8
  %.val4.i.i = load i64, ptr %i.gg, align 8, !alias.scope !82, !noalias !85, !noundef !5
  %i.gh = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %.sroa.5.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val3.i.i, i64 noundef %.val4.i.i)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc95:                                         ; preds = %.thread123
  br i1 %i.gh, label %.critedge, label %bb.bk

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.preheader: ; preds = %.noexc99.1
  %i.gi = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %.sroa.5.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 32)
          to label %.noexc104 unwind label %.loopexit

.noexc99:                                         ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.preheader
  br i1 %i.gf, label %.critedge, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.1

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.1: ; preds = %.noexc99
  %i.gj = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %.sroa.5.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 36)
          to label %.noexc99.1 unwind label %.loopexit.split-lp.loopexit

.noexc99.1:                                       ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.1
  br i1 %i.gj, label %.critedge, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.preheader

.noexc104:                                        ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.preheader
  br i1 %i.gi, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit105.thread, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.1

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.1: ; preds = %.noexc104
  %i.gk = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %.sroa.5.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 36)
          to label %.noexc104.1 unwind label %.loopexit

.noexc104.1:                                      ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.1
  br i1 %i.gk, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit105.thread, label %.critedge

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit105.thread: ; preds = %.noexc104, %.noexc104.1
  %.147 = zext i1 %.not73 to i8
  br label %.critedge

bb.bl:                                            ; preds = %.loopexit.split-lp, %.body
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.bh, %bb.bg, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gm = load i64, ptr %i.c, align 8, !range !4, !alias.scope !89, !noundef !5
  %i.gn = icmp eq i64 %i.gm, -1
  br i1 %i.gn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit111, label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.bp unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i106 = load i64, ptr %i.c, align 8, !range !6, !alias.scope !92, !noundef !5 ; 2 uses
  %i.gp = icmp eq i64 %.val2.i.i.i106, 0
  br i1 %i.gp, label %common.resume, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.val3.i.i.i107 = load ptr, ptr %i.ff, align 8, !alias.scope !99, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i107, i64 noundef %.val2.i.i.i106, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !100
  br label %common.resume

bb.bp:                                            ; preds = %bb.bm
  %.val.i.i.i109 = load i64, ptr %i.c, align 8, !range !6, !alias.scope !92, !noundef !5 ; 2 uses
  %i.gq = icmp eq i64 %.val.i.i.i109, 0
  br i1 %i.gq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit111, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.val1.i.i.i110 = load ptr, ptr %i.ff, align 8, !alias.scope !99, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i110, i64 noundef %.val.i.i.i109, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !103
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit111

common.resume:                                    ; preds = %.body, %bb.bn, %bb.bo
  %common.resume.op = phi { ptr, i32 } [ %i.go, %bb.bn ], [ %i.go, %bb.bo ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit111: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit, %bb.bp, %bb.bq
  %i.gr = xor i1 %.sroa.033.0114, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gs = insertvalue { i1, i8 } poison, i1 %i.gr, 0
  %i.gt = insertvalue { i1, i8 } %i.gs, i8 %.sroa.041.0, 1
  ret { i1, i8 } %i.gt
}
end_hunk_0
