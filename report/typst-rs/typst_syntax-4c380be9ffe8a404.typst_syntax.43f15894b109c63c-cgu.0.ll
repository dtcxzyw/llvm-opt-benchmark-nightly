Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_7Numeric3get:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i, %i.bb
  br i1 %.not.i.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1Y_7Numeric3get0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB20_.exit, label %.lr.ph.i.i.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1Y_7Numeric3get0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB20_.exit: ; preds = %bb.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB2Y_7Numeric3get0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i
  %.sroa.0.1.i.i = phi i64 [ %i.be, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB2Y_7Numeric3get0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i ], [ %.sroa.01.019.i.i.i.i, %bb.i ] ; 3 uses
  %i.bf = sub i64 %.sroa.3.0.i, %.sroa.0.1.i.i    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bg = icmp eq i64 %.sroa.3.0.i, %.sroa.0.1.i.i
  br i1 %i.bg, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1Y_7Numeric3get0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB20_.exit
  %.not.i35 = icmp ult i64 %i.bf, %.sroa.3.0.i
  br i1 %.not.i35, label %bb.k, label %.split.i

.split.i:                                         ; preds = %bb.j
  %i.bh = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %i.bh, label %bb.l, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.bf
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !5562, !noundef !19
  %i.bk = icmp sgt i8 %i.bj, -65
  br i1 %i.bk, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1Y_7Numeric3get0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB20_.exit.thread, %bb.k, %.split.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1Y_7Numeric3get0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB20_.exit
  %i.bl = phi i1 [ true, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1Y_7Numeric3get0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB20_.exit.thread ], [ false, %bb.k ], [ false, %.split.i ], [ true, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1Y_7Numeric3get0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB20_.exit ]
  %i.bm = phi i64 [ 0, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1Y_7Numeric3get0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB20_.exit.thread ], [ %i.bf, %bb.k ], [ %i.bf, %.split.i ], [ 0, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMsE_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1Y_7Numeric3get0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB20_.exit ] ; 7 uses
  call void @_RNvXs2_NtNtCs3oUPovFnLWP_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %i.bm) #57
  %.val = load i8, ptr %i.a, align 8, !range !20, !noundef !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val31 = load double, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bo = load i8, ptr %i.j, align 1, !alias.scope !5563, !noundef !19 ; 2 uses
  %.not.i38 = icmp sgt i8 %i.bo, -1               ; 2 uses
  %i.bp = and i8 %i.bo, 127
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = load ptr, ptr %.sroa.0.0, align 8, !alias.scope !5563, !nonnull !19
  %i.bs = load i64, ptr %i.o, align 8, !alias.scope !5563
  %.sroa.3.0.i39 = select i1 %.not.i38, i64 %i.bs, i64 %i.bq ; 5 uses
  %.sroa.0.0.i40 = select i1 %.not.i38, ptr %i.br, ptr %.sroa.0.0 ; 3 uses
  br i1 %i.bl, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i41 = icmp ult i64 %i.bm, %.sroa.3.0.i39
  br i1 %.not.i41, label %bb.n, label %.split.i42

.split.i42:                                       ; preds = %bb.m
  %i.bt = icmp eq i64 %i.bm, %.sroa.3.0.i39
  br i1 %i.bt, label %bb.p, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40, i64 %i.bm
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !5564, !noundef !19
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.k, %.split.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, i64 noundef 0, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @422) #62
  unreachable

bb.p:                                             ; preds = %bb.n, %.split.i42, %bb.l
  %i.bx = sub nuw i64 %.sroa.3.0.i39, %i.bm
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40, i64 %i.bm ; 10 uses
  switch i64 %i.bx, label %bb.z [
    i64 2, label %bb.r
    i64 3, label %bb.v
  ]

bb.q:                                             ; preds = %bb.n, %.split.i42
  call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i40, i64 noundef %.sroa.3.0.i39, i64 noundef %i.bm, i64 noundef %.sroa.3.0.i39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @423) #62
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bz = load i16, ptr %i.by, align 1
  %i.ca = icmp ne i16 %i.bz, 29808
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = load i16, ptr %i.by, align 1
  %i.ce = icmp ne i16 %i.cd, 28013
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = load i16, ptr %i.by, align 1
  %i.ci = icmp ne i16 %i.ch, 28003
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = load i16, ptr %i.by, align 1
  %i.cm = icmp ne i16 %i.cl, 28265
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.aa, label %bb.x

bb.v:                                             ; preds = %bb.p
  %i.cp = load i16, ptr %i.by, align 1
  %i.cq = xor i16 %i.cp, 25956
  %i.cr = getelementptr i8, ptr %i.by, i64 2
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i16
  %i.cu = xor i16 %i.ct, 103
  %i.cv = or i16 %i.cq, %i.cu
  %i.cw = icmp ne i16 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = load i16, ptr %i.by, align 1
  %i.da = xor i16 %i.cz, 24946
  %i.db = getelementptr i8, ptr %i.by, i64 2
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = zext i8 %i.dc to i16
  %i.de = xor i16 %i.dd, 100
  %i.df = or i16 %i.da, %i.de
  %i.dg = icmp ne i16 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.aa, label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.dj = load i16, ptr %i.by, align 1
  %i.dk = icmp ne i16 %i.dj, 28005
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = load i16, ptr %i.by, align 1
  %i.do = icmp ne i16 %i.dn, 29286
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.p
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.z
  %.sroa.05.0 = phi i8 [ 8, %bb.z ], [ 6, %bb.x ], [ 0, %bb.r ], [ 1, %bb.s ], [ 2, %bb.t ], [ 3, %bb.u ], [ 5, %bb.v ], [ 4, %bb.w ], [ 7, %bb.y ]
  %i.dr = trunc nuw i8 %.val to i1
  %.sroa.0.0.i37 = select i1 %i.dr, double 0.000000e+00, double %.val31
  %i.ds = insertvalue { double, i8 } poison, double %.sroa.0.0.i37, 0
  %i.dt = insertvalue { double, i8 } %i.ds, i8 %.sroa.05.0, 1
  ret { double, i8 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsF_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_3Str3get(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [15 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 13 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.018.0 = phi ptr [ %1, %bb.a ], [ %i.l, %bb.e ] ; 4 uses
  %i.e = load i8, ptr %.sroa.018.0, align 8, !range !30, !noundef !19
  switch i8 %i.e, label %default.unreachable204 [
    i8 0, label %bb.c
    i8 1, label %.loopexit158
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable204:                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 8
  br label %.loopexit158

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19, !noundef !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %.loopexit158

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !19, !noundef !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.b

.loopexit158:                                     ; preds = %bb.b, %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ %i.i, %bb.d ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %bb.b ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 15
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !5605, !noundef !19 ; 2 uses
  %.not.i = icmp sgt i8 %i.n, -1                  ; 2 uses
  %i.o = and i8 %i.n, 127
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load ptr, ptr %.sroa.0.0, align 8, !alias.scope !5605, !nonnull !19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5605
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.s, i64 %i.p ; 8 uses
  %.sroa.0.0.i63 = select i1 %.not.i, ptr %i.q, ptr %.sroa.0.0 ; 4 uses
  %i.t = add i64 %.sroa.3.0.i, -1                 ; 2 uses
  %i.u = add i64 %.sroa.3.0.i, -2                 ; 30 uses
  %or.cond.i.not = icmp ugt i64 %.sroa.3.0.i, 1
  br i1 %or.cond.i.not, label %bb.f, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread126, !prof !45

bb.f:                                             ; preds = %.loopexit158
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i63, i64 1
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !5606, !noundef !19
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread126, !prof !45

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i63, i64 %i.t
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !5606, !noundef !19
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread126, !prof !46

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread126: ; preds = %bb.f, %.loopexit158, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i63, i64 noundef %.sroa.3.0.i, i64 noundef 1, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @424) #62
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i63, i64 1 ; 20 uses
  %i.ac = icmp samesign ult i64 %i.u, 16
  br i1 %i.ac, label %.preheader.i.i.i, label %bb.g

.preheader.i.i.i:                                 ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread
  %.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i, label %.thread129, label %.lr.ph.i.i.i

.thread129:                                       ; preds = %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.k

bb.g:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread
  %i.ad = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 92, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef range(i64 0, -9223372036854775808) %i.u) ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %.thread131, label %.thread

.thread131:                                       ; preds = %bb.g
  %i.ag = extractvalue { i64, i64 } %i.ad, 1
  %i.ah = icmp ult i64 %i.ag, %i.u
  tail call void @llvm.assume(i1 %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 0, ptr %i.ai, align 8
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, i64 noundef %i.u)
          to label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs5PEMdK7bMAG_12typst_syntax.exit unwind label %bb.n

.thread:                                          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5607
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8, !noalias !5607
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.aj, align 8, !noalias !5607
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5608)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.u)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i unwind label %bb.i, !noalias !5607

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.h
  %.sroa.04.011.i.i.i = phi i64 [ %i.an, %bb.h ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.011.i.i.i
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !5609, !noundef !19
  %i.am = icmp eq i8 %i.al, 92
  br i1 %i.am, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.u
  br i1 %exitcond.not.i.i.i, label %.lr.ph.preheader.i.i, label %.lr.ph.i.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, i8 0, i64 15, i1 false), !noalias !5610
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr nonnull readonly align 1 %i.ab, i64 range(i64 0, -9223372036854775808) %i.u, i1 false), !noalias !5611
  %.0..0..0..sroa.0120.0.copyload121.pre = load ptr, ptr %i.c, align 8, !noalias !5612
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.8..8..8..sroa.5.0.copyload123.pre = load i56, ptr %.8..8..8..sroa_idx, align 8, !noalias !5612
  %i.ao = zext i56 %.8..8..8..sroa.5.0.copyload123.pre to i64
  br label %bb.k

bb.i:                                             ; preds = %.thread
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !5607, !nonnull !19, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i) #59
          to label %common.resume unwind label %bb.j, !noalias !5607

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !5607
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.n, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.n ], [ %i.ap, %bb.i ], [ %i.cj, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %.thread
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !5608, !noalias !5613, !nonnull !19, !noundef !19 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !5608, !noalias !5613 ; 2 uses
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.ar, i64 %.promoted.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i, ptr nonnull readonly align 1 %i.ab, i64 range(i64 0, -9223372036854775808) %i.u, i1 false), !noalias !5614
  %i.as = add i64 %.promoted.i.i.i, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5607
  br label %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit

bb.k:                                             ; preds = %.thread129, %.lr.ph.preheader.i.i
  %.8..8..sroa.5.0.copyload123 = phi i64 [ 0, %.thread129 ], [ %i.ao, %.lr.ph.preheader.i.i ]
  %.0..0..sroa.0120.0.copyload121 = phi ptr [ null, %.thread129 ], [ %.0..0..0..sroa.0120.0.copyload121.pre, %.lr.ph.preheader.i.i ]
  %.sroa.5.15.insert.ext = shl nuw nsw i64 %i.u, 56
  %.sroa.5.15.insert.shift = or disjoint i64 %.sroa.5.15.insert.ext, %.8..8..sroa.5.0.copyload123
  %.sroa.5.15.insert.insert = or disjoint i64 %.sroa.5.15.insert.shift, -9223372036854775808
  br label %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit

_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit: ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i, %bb.k
  %.sroa.5.0 = phi i64 [ %i.as, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %.sroa.5.15.insert.insert, %bb.k ]
  %.sroa.0120.0 = phi ptr [ %i.ar, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i ], [ %.0..0..sroa.0120.0.copyload121, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.0120.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.at = icmp ult i64 %.sroa.04.011.i.i.i, %i.u
  tail call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %.lr.ph

bb.m:                                             ; preds = %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec10from_slice.exit
  ret void

bb.n:                                             ; preds = %.thread131
  %i.au = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i) #59
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %.thread131
  %.pre.i = load ptr, ptr %i.a, align 8
  %.pre3.i = load i64, ptr %i.ai, align 8         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.537.0.extract.trunc = trunc i64 %.pre3.i to i56
  %.sroa.537.15.extract.shift = lshr i64 %.pre3.i, 56
  %.sroa.537.15.extract.trunc = trunc nuw i64 %.sroa.537.15.extract.shift to i8
  br label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs5PEMdK7bMAG_12typst_syntax.exit, %bb.l
  %.sroa.031.sroa.5.0 = phi i56 [ %.sroa.537.0.extract.trunc, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs5PEMdK7bMAG_12typst_syntax.exit ], [ 0, %bb.l ]
  %.sroa.031.sroa.0.0 = phi ptr [ %.pre.i, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs5PEMdK7bMAG_12typst_syntax.exit ], [ null, %bb.l ]
  %.sroa.532.0 = phi i8 [ %.sroa.537.15.extract.trunc, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs5PEMdK7bMAG_12typst_syntax.exit ], [ -128, %bb.l ]
  store ptr %.sroa.031.sroa.0.0, ptr %i.d, align 8
  %.sroa.031.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i56 %.sroa.031.sroa.5.0, ptr %.sroa.031.sroa.5.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 %.sroa.532.0, ptr %.sroa.532.0..sroa_idx33, align 1
  %i.aw = add i64 %.sroa.3.0.i, -3
  %i.ax = add i64 %.sroa.3.0.i, -4                ; 2 uses
  %i.ay = add i64 %.sroa.3.0.i, -5                ; 2 uses
  %i.az = ptrtoint ptr %i.ab to i64
  %i.ba = add i64 %.sroa.3.0.i, -6
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %.backedge
  %i.bb = phi ptr [ %i.ab, %.lr.ph ], [ %i.fd, %.backedge ] ; 4 uses
  %.sroa.21.0168 = phi i64 [ 0, %.lr.ph ], [ %.sroa.21.0.be, %.backedge ] ; 10 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !5615, !noundef !19 ; 5 uses
  %i.bd = icmp sgt i8 %i.bc, -1
  br i1 %i.bd, label %.thread136, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i: ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bf = and i8 %i.bc, 31
  %i.bg = zext nneg i8 %i.bf to i32               ; 3 uses
  %i.bh = icmp ne i64 %.sroa.21.0168, %i.aw
  call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.be, align 1, !noalias !5615, !noundef !19
  %i.bj = shl nuw nsw i32 %i.bg, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32               ; 2 uses
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %i.bn = icmp samesign ugt i8 %i.bc, -33
  br i1 %i.bn, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, label %bb.r

.thread136:                                       ; preds = %bb.p
  %i.bo = zext nneg i8 %i.bc to i32
  br label %bb.s

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bq = icmp ne i64 %.sroa.21.0168, %i.ax
  call void @llvm.assume(i1 %i.bq)
  %i.br = load i8, ptr %i.bp, align 1, !noalias !5615, !noundef !19
  %i.bs = shl nuw nsw i32 %i.bl, 6
  %i.bt = and i8 %i.br, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu            ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bg, 12
  %i.bx = or disjoint i32 %i.bv, %i.bw
  %i.by = icmp samesign ugt i8 %i.bc, -17
  br i1 %i.by, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, label %bb.r

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.ca = icmp ne i64 %.sroa.21.0168, %i.ay
  call void @llvm.assume(i1 %i.ca)
  %i.cb = load i8, ptr %i.bz, align 1, !noalias !5615, !noundef !19
  %i.cc = shl nuw nsw i32 %i.bg, 18
  %i.cd = and i32 %i.cc, 1835008
  %i.ce = shl nuw nsw i32 %i.bv, 6
  %i.cf = and i8 %i.cb, 63
  %i.cg = zext nneg i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %i.ci = or disjoint i32 %i.ch, %i.cd
  br label %bb.r

bb.q:                                             ; preds = %.invoke, %.loopexit, %.loopexit155, %bb.bc, %bb.v
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #59
          to label %common.resume unwind label %bb.bf

bb.r:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %spec.select.i.ph = phi i32 [ %i.bx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i ], [ %i.ci, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i ], [ %i.bm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i ] ; 6 uses
  %i.ck = icmp samesign ult i32 %spec.select.i.ph, 1114112
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ult i32 %spec.select.i.ph, 128
  br i1 %i.cl, label %bb.s, label %.thread139

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit: ; preds = %.backedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

.thread139:                                       ; preds = %bb.r
  %i.cm = icmp samesign ult i32 %spec.select.i.ph, 2048
  %i.cn = icmp samesign ult i32 %spec.select.i.ph, 65536
  %. = select i1 %i.cn, i64 3, i64 4
  %.sroa.046.0.ph = select i1 %i.cm, i64 2, i64 %.
  %i.co = add i64 %.sroa.046.0.ph, %.sroa.21.0168
  br label %bb.v

bb.s:                                             ; preds = %.thread136, %bb.r
  %spec.select.i.ph138 = phi i32 [ %spec.select.i.ph, %bb.r ], [ %i.bo, %.thread136 ] ; 2 uses
  %i.cp = add i64 %.sroa.21.0168, 1               ; 6 uses
  %i.cq = icmp eq i32 %spec.select.i.ph138, 92
  br i1 %i.cq, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cp ; 8 uses
  %i.cs = icmp samesign eq i64 %i.cp, 0
  br i1 %i.cs, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds i8, ptr %i.ab, i64 %.sroa.21.0168 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !5616, !noundef !19
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %bb.w, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i: ; preds = %bb.u
  %i.cw = icmp ne i64 %.sroa.21.0168, 0
  call void @llvm.assume(i1 %i.cw)
  %i.cx = getelementptr inbounds i8, ptr %i.cr, i64 -2 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !5616, !noundef !19
  %i.cz = icmp slt i8 %i.cy, -64
  br i1 %i.cz, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i, label %bb.w

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i
  %i.da = icmp ne i64 %i.cp, 2
  call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds i8, ptr %i.cr, i64 -3 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !noalias !5616, !noundef !19
  %i.dd = icmp slt i8 %i.dc, -64
  %i.de = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %spec.select.i67 = select i1 %i.dd, ptr %i.de, ptr %i.db
  br label %bb.w

bb.v:                                             ; preds = %.thread139, %bb.s
  %i.df = phi i64 [ %i.co, %.thread139 ], [ %i.cp, %bb.s ]
  %spec.select.i.ph138142 = phi i32 [ %spec.select.i.ph, %.thread139 ], [ %spec.select.i.ph138, %bb.s ]
  invoke fastcc void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d, i32 noundef %spec.select.i.ph138142)
          to label %.backedge unwind label %bb.q

bb.w:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i, %bb.u, %bb.t
  %.sroa.5.2.i = phi ptr [ %i.cr, %bb.t ], [ %i.ct, %bb.u ], [ %spec.select.i67, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i ], [ %i.cx, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i ] ; 3 uses
  %i.dg = ptrtoint ptr %.sroa.5.2.i to i64
  %i.dh = sub nuw i64 %i.dg, %i.az                ; 2 uses
  %.not.i68 = icmp samesign eq i64 %i.cp, %i.u
  br i1 %.not.i68, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit73, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = load i8, ptr %i.cr, align 1, !noalias !5617, !noundef !19 ; 5 uses
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %.thread146, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i69

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i69: ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.dl = and i8 %i.di, 31
  %i.dm = zext nneg i8 %i.dl to i32               ; 3 uses
  %i.dn = icmp ne i64 %.sroa.21.0168, %i.ax
  call void @llvm.assume(i1 %i.dn)
  %i.do = load i8, ptr %i.dk, align 1, !noalias !5617, !noundef !19
  %i.dp = shl nuw nsw i32 %i.dm, 6
  %i.dq = and i8 %i.do, 63
  %i.dr = zext nneg i8 %i.dq to i32               ; 2 uses
end_hunk_0
