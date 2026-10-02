Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clap_builder-34152f4bce63195d.clap_builder.9b2a128d1b545da0-cgu.02?download=true
inline.NumInlined: 394
inline.NumDeleted: 201
begin_hunk_0_@_RNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder6output13help_templateNtB5_12HelpTemplate22write_flat_subcommands:bb.a
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = load ptr, ptr %i.as, align 8, !nonnull !4, !align !9, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrNtB6_7Display3fmtBC_, ptr %.sroa.465.0..sroa_idx, align 8
  %i.ce = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @13, ptr noundef nonnull @47, ptr noundef nonnull %i.d)
          to label %bb.k unwind label %bb.c       ; 0 uses

bb.j:                                             ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 328
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 336
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !4
  %i.cj = getelementptr inbounds nuw [672 x i8], ptr %i.cg, i64 %i.ci
  store ptr %i.cg, ptr %i.b, align 8
  store ptr %i.cj, ptr %i.aw, align 8
  store ptr %i.av, ptr %i.ax, align 8
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtNtB2t_5slice4iter4IterB11_ENCNvMs2_NtNtB17_6output13help_templateNtB3S_12HelpTemplate22write_flat_subcommandss0_0EE9from_iterB17_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.l unwind label %bb.c

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ck = load i64, ptr %i.ay, align 8, !noundef !4 ; 2 uses
  %i.cl = icmp ult i64 %i.ck, 1152921504606846976
  call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp eq i64 %i.ck, 0
  br i1 %i.cm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %i.as, align 8, !nonnull !4, !align !9, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 1)
          to label %._crit_edge unwind label %bb.o

._crit_edge:                                      ; preds = %bb.m
  %.pre = load i64, ptr %i.ay, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l
  %i.co = phi i64 [ %.pre, %._crit_edge ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cp = load ptr, ptr %i.as, align 8, !nonnull !4, !align !9, !noundef !4
  %i.cq = load i8, ptr %i.az, align 8, !range !13, !noundef !4
  %i.cr = load i64, ptr %0, align 8, !noundef !4
  %i.cs = load i8, ptr %i.av, align 1, !range !13, !noundef !4
  store ptr %i.cp, ptr %i.ba, align 8
  store ptr %i.bi, ptr %i.bb, align 8
  %i.ct = load <2 x ptr>, ptr %i.n, align 8
  store <2 x ptr> %i.ct, ptr %i.bc, align 8
  store i8 %i.cq, ptr %i.bd, align 8
  store i64 %i.cr, ptr %i.a, align 8
  store i8 %i.cs, ptr %i.be, align 1
  %i.cu = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4
  invoke fastcc void @_RNvMs1_NtNtCsdjW2DEjcQy2_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args(ptr noalias noundef align 8 dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cu, i64 noundef %i.co, ptr noundef nonnull @_RNvNtNtCsdjW2DEjcQy2_12clap_builder6output13help_template15option_sort_key)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.v, %bb.m
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #18
          to label %.body unwind label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bi, i64 764
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !4
  %i.cy = and i32 %i.cx, 32768
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.bi, i64 768
  %i.db = load i32, ptr %i.da, align 8, !noundef !4
  %i.dc = and i32 %i.db, 32768
  %.not90 = icmp eq i32 %i.dc, 0
  br i1 %.not90, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEEB1e_.exit unwind label %bb.c

bb.u:                                             ; preds = %bb.s
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.v:                                             ; preds = %bb.p, %bb.q
  invoke fastcc void @_RNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder6output13help_templateNtB5_12HelpTemplate22write_flat_subcommands(ptr noalias noundef align 8 dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.bi, ptr noalias noundef dereferenceable(1) %2)
          to label %bb.r unwind label %bb.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEEB1e_.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

bb.w:                                             ; preds = %bb.aa, %.body, %bb.o
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.x:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs2_NtNtBW_6output13help_templateNtB2G_12HelpTemplate22write_flat_subcommands0EBW_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.y

bb.y:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs2_NtNtBW_6output13help_templateNtB2G_12HelpTemplate22write_flat_subcommands0EBW_.exit, %bb.x
  %.sroa.02.0 = phi i64 [ %i.dh, %bb.x ], [ 999, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs2_NtNtBW_6output13help_templateNtB2G_12HelpTemplate22write_flat_subcommands0EBW_.exit ]
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.03.0 = load ptr, ptr %.sroa.03.0.in, align 8, !nonnull !4, !noundef !4
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !4
  store i64 %.sroa.02.0, ptr %i.j, align 8
  store ptr %.sroa.03.0, ptr %i.x, align 8
  store i64 %.sroa.5.0, ptr %i.y, align 8
  %i.di = invoke noundef align 8 ptr @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTjReERNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandE6insertB1i_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.z)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dj = icmp eq ptr %i.aa, %i.v
  br i1 %i.dj, label %.loopexit, label %.lr.ph.i.backedge

.thread:                                          ; preds = %bb.aa, %.body
  %.pn92100 = phi { ptr, i32 } [ %i.dk, %bb.aa ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn92100

bb.aa:                                            ; preds = %bb.y
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjReERNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread unwind label %bb.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6output13help_templateNtB4_12HelpTemplate20write_templated_help(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
.lr.ph.split.i.i:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [776 x i8], align 8              ; 56 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 9 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %i.as = alloca [32 x i8], align 8               ; 8 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [1 x i8], align 1                ; 8 uses
  %i.ba = alloca [24 x i8], align 8               ; 10 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 9 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 9 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [8 x i8], align 8                ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [32 x i8], align 8               ; 7 uses
  %i.bm = alloca [1 x i8], align 1                ; 4 uses
  %i.bn = alloca [1 x i8], align 1                ; 4 uses
  %i.bo = alloca [24 x i8], align 8               ; 9 uses
  %i.bp = alloca [24 x i8], align 8               ; 9 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 9 uses
  %i.bt = alloca [24 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 9 uses
  %i.bw = alloca [24 x i8], align 8               ; 9 uses
  %i.bx = alloca [24 x i8], align 8               ; 5 uses
  %i.by = alloca [24 x i8], align 8               ; 11 uses
  %i.bz = alloca [32 x i8], align 8               ; 7 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [14 x i8], align 2               ; 4 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [72 x i8], align 8               ; 25 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %i.ce = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.ct, %bb.e ] ; 5 uses
  %i.cf = sub nuw i64 %2, %i.ce                   ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce ; 2 uses
  %i.ch = icmp samesign ult i64 %i.cf, 16
  br i1 %i.ch, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.ci = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 123, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef range(i64 0, -9223372036854775808) %i.cf), !noalias !534
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.cf, %bb.c ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i ]
  %i.cj = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.ck = insertvalue { i64, i64 } %i.cj, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.co, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.01.05.i.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !535, !noalias !534, !noundef !4
  %i.cn = icmp eq i8 %i.cm, 123
  br i1 %i.cn, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.co = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.co, %i.cf
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %.merged.i.i.i = phi { i64, i64 } [ %i.ck, %._crit_edge.i.i.i ], [ %i.ci, %bb.b ] ; 2 uses
  %i.cp = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.d, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

bb.d:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i
  %i.cr = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.cs = add i64 %i.ce, 1
  %i.ct = add i64 %i.cs, %i.cr                    ; 5 uses
  %.not13.i.i = icmp ugt i64 %i.ct, %2
  %i.cu = add i64 %i.ce, %i.cr
  %or.cond.i.i.not = icmp ult i64 %i.cu, %2
  br i1 %or.cond.i.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  br i1 %.not13.i.i, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.a

bb.f:                                             ; preds = %bb.d
  %i.cv = add i64 %i.ce, %i.cr                    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %lhsc = load i8, ptr %i.cw, align 1
  %i.cx = icmp eq i8 %lhsc, 123
  br i1 %i.cx, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.e

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i, %bb.e, %bb.f
  %.sroa.16.0 = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 1, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i ] ; 2 uses
  %.sroa.8.0 = phi i64 [ %i.ct, %bb.f ], [ %2, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i ], [ %i.ct, %bb.e ]
  %.sroa.0.0 = phi i64 [ %i.ct, %bb.f ], [ 0, %bb.e ], [ 0, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i = phi i64 [ %i.cv, %bb.f ], [ %2, %bb.e ], [ %2, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !4, !align !9, !noundef !4
  tail call void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %.sroa.4.1.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store i64 %.sroa.0.0, ptr %i.cd, align 8
  %.sroa.5.0..sroa_idx4040 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx4040, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx4041 = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 %2, ptr %.sroa.7.0..sroa_idx4041, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store i64 %2, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  store i32 123, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 52
  store i32 123, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  store i8 1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.154043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  store i8 1, ptr %.sroa.154043.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 65
  store i8 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 65 ; 2 uses
  %i.db = trunc nuw i8 %.sroa.16.0 to i1
  br i1 %i.db, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %.phi.trans.insert.i.i110 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.4149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.4.0..sroa_idx146.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.sroa.5147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5.0..sroa_idx156.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %.sroa.6.0..sroa_idx159.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.el = getelementptr inbounds nuw i8, ptr %i.an, i64 760
  %i.em = getelementptr inbounds nuw i8, ptr %i.an, i64 464
  %i.en = getelementptr inbounds nuw i8, ptr %i.an, i64 488
  %i.eo = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %.sroa.6162.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  %.sroa.8163.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ep = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %.sroa.6165.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %.sroa.8166.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.eq = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %.sroa.6168.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %.sroa.8169.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  %i.er = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.es = getelementptr inbounds nuw i8, ptr %i.an, i64 536
  %i.et = getelementptr inbounds nuw i8, ptr %i.an, i64 560
  %i.eu = getelementptr inbounds nuw i8, ptr %i.an, i64 584
  %i.ev = getelementptr inbounds nuw i8, ptr %i.an, i64 608
  %i.ew = getelementptr inbounds nuw i8, ptr %i.an, i64 632
  %i.ex = getelementptr inbounds nuw i8, ptr %i.an, i64 248
  %i.ey = getelementptr inbounds nuw i8, ptr %i.an, i64 272
  %i.ez = getelementptr inbounds nuw i8, ptr %i.an, i64 296
  %i.fa = getelementptr inbounds nuw i8, ptr %i.an, i64 656
  %i.fb = getelementptr inbounds nuw i8, ptr %i.an, i64 680
  %i.fc = getelementptr inbounds nuw i8, ptr %i.an, i64 704
  %i.fd = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.an, i64 728
  %i.ff = getelementptr inbounds nuw i8, ptr %i.an, i64 764
  %i.fg = getelementptr inbounds nuw i8, ptr %i.an, i64 320
  %i.fh = getelementptr inbounds nuw i8, ptr %i.an, i64 368
  %i.fi = getelementptr inbounds nuw i8, ptr %i.an, i64 392
  %i.fj = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  %.sroa.6171.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %.sroa.8172.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  %i.fk = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %.sroa.6174.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  %.sroa.8175.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.fm = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  %.sroa.6177.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 208
  %.sroa.8178.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  %i.fn = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  %i.fo = getelementptr inbounds nuw i8, ptr %i.an, i64 772
  %i.fp = getelementptr inbounds nuw i8, ptr %i.an, i64 752
  %i.fq = getelementptr inbounds nuw i8, ptr %i.an, i64 416
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.42.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %3 = insertelement <4 x ptr> poison, ptr %i.ar, i64 2
  %4 = insertelement <4 x ptr> %3, ptr %i.dk, i64 3
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %.val.i99 = load ptr, ptr %i.dc, align 8, !alias.scope !536, !nonnull !4, !noundef !4 ; 3 uses
  %.val1.i100 = load i64, ptr %i.dd, align 8, !alias.scope !536, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.gf = load i64, ptr %i.df, align 8, !alias.scope !538, !noalias !539, !noundef !4 ; 5 uses
  %.promoted.i.i101 = load i64, ptr %i.de, align 8, !alias.scope !538, !noalias !539 ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %.promoted.i.i101
  br i1 %i.gg, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108, label %.lr.ph.i.i102

.lr.ph.i.i102:                                    ; preds = %bb.g
  %.not.i.i103 = icmp ugt i64 %i.gf, %.val1.i100
  %i.gh = load i8, ptr %i.dh, align 8, !alias.scope !538, !noalias !539 ; 2 uses
  %i.gi = zext nneg i8 %i.gh to i64               ; 4 uses
  %i.gj = icmp ult i8 %i.gh, 5
  br i1 %.not.i.i103, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108, label %.lr.ph.split.i.i104

.lr.ph.split.i.i104:                              ; preds = %.lr.ph.i.i102
  %i.gk = getelementptr i8, ptr %i.dg, i64 %i.gi
  %i.gl = getelementptr i8, ptr %i.gk, i64 -1
  call void @llvm.assume(i1 %i.gj)
  %.pre.i.i105 = load i8, ptr %i.gl, align 1, !alias.scope !538, !noalias !539 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.split.i.i104
  %i.gm = phi i64 [ %.promoted.i.i101, %.lr.ph.split.i.i104 ], [ %i.hb, %bb.l ] ; 3 uses
  %i.gn = sub nuw i64 %i.gf, %i.gm                ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i99, i64 %i.gm ; 2 uses
  %i.gp = icmp samesign ult i64 %i.gn, 16
  br i1 %i.gp, label %.preheader.i.i.i123, label %bb.i

.preheader.i.i.i123:                              ; preds = %bb.h
  %.not.i.i.i124 = icmp eq i64 %i.gn, 0
  br i1 %.not.i.i.i124, label %._crit_edge.i.i.i128, label %.lr.ph.i.i.i125

bb.i:                                             ; preds = %bb.h
  %i.gq = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i105, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.go, i64 noundef range(i64 0, -9223372036854775808) %i.gn), !noalias !540
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i106

._crit_edge.i.i.i128:                             ; preds = %bb.j, %.lr.ph.i.i.i125, %.preheader.i.i.i123
  %.sroa.01.0.lcssa.i.i.i129 = phi i64 [ 0, %.preheader.i.i.i123 ], [ %i.gn, %bb.j ], [ %.sroa.01.05.i.i.i126, %.lr.ph.i.i.i125 ]
  %.sroa.0.1.i.i.i130 = phi i64 [ 0, %.preheader.i.i.i123 ], [ 0, %bb.j ], [ 1, %.lr.ph.i.i.i125 ]
  %i.gr = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i130, 0
  %i.gs = insertvalue { i64, i64 } %i.gr, i64 %.sroa.01.0.lcssa.i.i.i129, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i106

.lr.ph.i.i.i125:                                  ; preds = %.preheader.i.i.i123, %bb.j
  %.sroa.01.05.i.i.i126 = phi i64 [ %i.gw, %bb.j ], [ 0, %.preheader.i.i.i123 ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 %.sroa.01.05.i.i.i126
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !541, !noalias !540, !noundef !4
  %i.gv = icmp eq i8 %i.gu, %.pre.i.i105
  br i1 %i.gv, label %._crit_edge.i.i.i128, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i125
  %i.gw = add nuw nsw i64 %.sroa.01.05.i.i.i126, 1 ; 2 uses
  %exitcond.not.i.i.i127 = icmp eq i64 %i.gw, %i.gn
  br i1 %exitcond.not.i.i.i127, label %._crit_edge.i.i.i128, label %.lr.ph.i.i.i125

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i106: ; preds = %._crit_edge.i.i.i128, %bb.i
  %.merged.i.i.i107 = phi { i64, i64 } [ %i.gs, %._crit_edge.i.i.i128 ], [ %i.gq, %bb.i ] ; 2 uses
  %i.gx = extractvalue { i64, i64 } %.merged.i.i.i107, 0
  %i.gy = trunc nuw i64 %i.gx to i1
  br i1 %i.gy, label %bb.k, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108.sink.split

bb.k:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i106
  %i.gz = extractvalue { i64, i64 } %.merged.i.i.i107, 1
  %i.ha = add i64 %i.gm, 1
  %i.hb = add i64 %i.ha, %i.gz                    ; 8 uses
  %.not12.i.i118 = icmp ult i64 %i.hb, %i.gi
  %.not13.i.i119 = icmp ugt i64 %i.hb, %.val1.i100
  %or.cond.i.i120 = or i1 %.not12.i.i118, %.not13.i.i119
  br i1 %or.cond.i.i120, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.hc = icmp ult i64 %i.gf, %i.hb
  br i1 %i.hc, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108.sink.split, label %bb.h

bb.m:                                             ; preds = %bb.k
  %i.hd = sub nuw i64 %i.hb, %i.gi                ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.val.i99, i64 %i.hd
  %bcmp.i.i121 = call i32 @bcmp(ptr nonnull %i.he, ptr nonnull %i.dg, i64 %i.gi), !noalias !539
  %i.hf = icmp eq i32 %bcmp.i.i121, 0
  br i1 %i.hf, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i122, label %bb.l

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i122: ; preds = %bb.m
  store i64 %i.hb, ptr %i.de, align 8
  %i.hg = load i64, ptr %i.cd, align 8, !alias.scope !536, !noundef !4 ; 2 uses
  %i.hh = sub nuw i64 %i.hd, %i.hg
  store i64 %i.hb, ptr %i.cd, align 8, !alias.scope !536
  br label %select.unfold

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108.sink.split: ; preds = %bb.l, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i106
  %.sink = phi i64 [ %i.gf, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i106 ], [ %i.hb, %bb.l ]
  store i64 %.sink, ptr %i.de, align 8
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108: ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108.sink.split, %.lr.ph.i.i102, %bb.g
  store i8 1, ptr %i.da, align 1, !alias.scope !542
  %i.hi = load i8, ptr %i.di, align 8, !range !13, !alias.scope !542, !noundef !4
  %i.hj = trunc nuw i8 %i.hi to i1
  %.pre.i2.i109 = load i64, ptr %i.cd, align 8, !alias.scope !542 ; 3 uses
  %.pre2.i.i111 = load i64, ptr %.phi.trans.insert.i.i110, align 8, !alias.scope !542 ; 2 uses
  %.not.i3.i112 = icmp ne i64 %.pre2.i.i111, %.pre.i2.i109
  %or.cond.not.i.i113 = select i1 %i.hj, i1 true, i1 %.not.i3.i112
  %i.hk = sub nuw i64 %.pre2.i.i111, %.pre.i2.i109
  br i1 %or.cond.not.i.i113, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i122
  %.sroa.4.1.i116 = phi i64 [ %i.hh, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i122 ], [ %i.hk, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108 ] ; 4 uses
  %.pn = phi i64 [ %i.hg, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i122 ], [ %.pre.i2.i109, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108 ]
  %.sroa.0.1.i117 = getelementptr inbounds nuw i8, ptr %.val.i99, i64 %.pn ; 38 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %select.unfold
  %i.hl = phi i64 [ 0, %select.unfold ], [ %i.ia, %bb.r ] ; 4 uses
  %i.hm = sub nuw i64 %.sroa.4.1.i116, %i.hl      ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i117, i64 %i.hl ; 2 uses
  %i.ho = icmp samesign ult i64 %i.hm, 16
  br i1 %i.ho, label %.preheader.i.i.i137, label %bb.o

.preheader.i.i.i137:                              ; preds = %bb.n
  %.not.i.i.i138 = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i.i138, label %._crit_edge.i.i.i142, label %.lr.ph.i.i.i139

bb.o:                                             ; preds = %bb.n
  %i.hp = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 125, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hn, i64 noundef range(i64 0, -9223372036854775808) %i.hm), !noalias !543
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i133

._crit_edge.i.i.i142:                             ; preds = %bb.p, %.lr.ph.i.i.i139, %.preheader.i.i.i137
  %.sroa.01.0.lcssa.i.i.i143 = phi i64 [ 0, %.preheader.i.i.i137 ], [ %i.hm, %bb.p ], [ %.sroa.01.05.i.i.i140, %.lr.ph.i.i.i139 ]
  %.sroa.0.1.i.i.i144 = phi i64 [ 0, %.preheader.i.i.i137 ], [ 0, %bb.p ], [ 1, %.lr.ph.i.i.i139 ]
  %i.hq = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i144, 0
  %i.hr = insertvalue { i64, i64 } %i.hq, i64 %.sroa.01.0.lcssa.i.i.i143, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i133

.lr.ph.i.i.i139:                                  ; preds = %.preheader.i.i.i137, %bb.p
  %.sroa.01.05.i.i.i140 = phi i64 [ %i.hv, %bb.p ], [ 0, %.preheader.i.i.i137 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.sroa.01.05.i.i.i140
  %i.ht = load i8, ptr %i.hs, align 1, !alias.scope !544, !noalias !543, !noundef !4
  %i.hu = icmp eq i8 %i.ht, 125
  br i1 %i.hu, label %._crit_edge.i.i.i142, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i139
  %i.hv = add nuw nsw i64 %.sroa.01.05.i.i.i140, 1 ; 2 uses
  %exitcond.not.i.i.i141 = icmp eq i64 %i.hv, %i.hm
  br i1 %exitcond.not.i.i.i141, label %._crit_edge.i.i.i142, label %.lr.ph.i.i.i139

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i133: ; preds = %._crit_edge.i.i.i142, %bb.o
  %.merged.i.i.i134 = phi { i64, i64 } [ %i.hr, %._crit_edge.i.i.i142 ], [ %i.hp, %bb.o ] ; 2 uses
  %i.hw = extractvalue { i64, i64 } %.merged.i.i.i134, 0
  %i.hx = trunc nuw i64 %i.hw to i1
  br i1 %i.hx, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i133
  %i.hy = extractvalue { i64, i64 } %.merged.i.i.i134, 1 ; 2 uses
  %i.hz = add i64 %i.hl, 1
  %i.ia = add i64 %i.hz, %i.hy                    ; 4 uses
  %.not13.i.i135 = icmp ugt i64 %i.ia, %.sroa.4.1.i116
  %i.ib = add i64 %i.hy, %i.hl                    ; 4 uses
  %or.cond.i.not.i = icmp ult i64 %i.ib, %.sroa.4.1.i116
  br i1 %or.cond.i.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  br i1 %.not13.i.i135, label %.loopexit, label %bb.n

bb.s:                                             ; preds = %bb.q
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i117, i64 %i.ib
  %lhsc.i = load i8, ptr %i.ic, align 1, !alias.scope !545, !noalias !546
  %i.id = icmp eq i8 %lhsc.i, 125
  br i1 %i.id, label %bb.t, label %bb.r

._crit_edge:                                      ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsdjW2DEjcQy2_12clap_builder.exit.i108, %.loopexit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  ret void

bb.t:                                             ; preds = %bb.s
  %i.ie = sub nuw i64 %.sroa.4.1.i116, %i.ia
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i117, i64 %i.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  store ptr %.sroa.0.1.i117, ptr %i.cc, align 8
  store i64 %i.ib, ptr %i.dj, align 8
  switch i64 %i.ib, label %bb.kc [
    i64 4, label %bb.u
    i64 3, label %bb.ab
    i64 7, label %bb.ap
    i64 6, label %bb.au
    i64 19, label %bb.ax
    i64 14, label %bb.ba
    i64 5, label %bb.bd
    i64 18, label %bb.bf
    i64 13, label %bb.bh
    i64 8, label %bb.bm
    i64 11, label %bb.jj
    i64 10, label %bb.jp
  ]

bb.u:                                             ; preds = %bb.t
  %i.ig = load i32, ptr %.sroa.0.1.i117, align 1
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6output13help_templateNtB4_12HelpTemplate20write_templated_help:.lr.ph.split.i.i
  %i.pz = phi i8 [ 1, %bb.bt ], [ 0, %bb.bz ]     ; 2 uses
  %i.qa = load i64, ptr %i.dv, align 8, !noalias !557, !noundef !4 ; 2 uses
  %i.qb = icmp ult i64 %i.qa, 1152921504606846976
  call void @llvm.assume(i1 %i.qb)
  %i.qc = icmp eq i64 %i.qa, 0
  br i1 %i.qc, label %bb.cc, label %bb.cb

.thread.i:                                        ; preds = %bb.by, %bb.bx
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.bv:                                            ; preds = %bb.bt
  store i8 0, ptr %i.az, align 1, !noalias !557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !557
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ps, i64 200
  %i.qf = load i64, ptr %i.qe, align 8, !range !12, !alias.scope !558, !noundef !4
  %.not.i.i.i172 = icmp eq i64 %i.qf, 2
  br i1 %.not.i.i.i172, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ps, i64 216
  %.val2.i.i.i = load i64, ptr %i.qg, align 8, !alias.scope !558
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ps, i64 208
  %.val.i.i.i = load ptr, ptr %i.qh, align 8, !alias.scope !558, !nonnull !4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.val.i.i.sink.i = phi ptr [ %.val.i.i.i, %bb.bw ], [ @17, %bb.bv ]
  %.val2.i.i.sink.i = phi i64 [ %.val2.i.i.i, %bb.bw ], [ 8, %bb.bv ]
  store ptr %.val.i.i.sink.i, ptr %i.ay, align 8, !noalias !557
  store i64 %.val2.i.i.sink.i, ptr %i.dt, align 8, !noalias !557
  %i.qi = load ptr, ptr %i.cy, align 8, !alias.scope !557, !nonnull !4, !align !9, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !557
  store ptr %i.bg, ptr %i.ax, align 8, !noalias !557
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCseR46qigP5Cu_7anstyle5style5StyleNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !557
  store ptr %i.ay, ptr %i.du, align 8, !noalias !557
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !557
  %i.qj = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.qi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @13, ptr noundef nonnull @18, ptr noundef nonnull %i.ax)
          to label %bb.by unwind label %.thread.i ; 0 uses

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !557
  %i.qk = load ptr, ptr %i.dl, align 8, !alias.scope !557, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qk, i64 376
  %.val117.i = load ptr, ptr %i.ql, align 8, !nonnull !4, !noundef !4
  %i.qm = getelementptr i8, ptr %i.qk, i64 384
  %.val118.i = load i64, ptr %i.qm, align 8, !noundef !4
  invoke fastcc void @_RNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder6output13help_templateNtB5_12HelpTemplate17write_subcommands(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %.val117.i, i64 %.val118.i)
          to label %bb.bz unwind label %.thread.i

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !557
  br label %bb.bu

bb.ca:                                            ; preds = %bb.jg, %bb.iu, %bb.cy, %.body.i, %.body137.i, %.body134.i
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cb:                                            ; preds = %bb.bu
  %i.qo = trunc nuw i8 %i.pz to i1
  br i1 %i.qo, label %bb.ce, label %bb.cd

bb.cc:                                            ; preds = %bb.cg, %bb.bu
  %i.qp = phi i8 [ %i.pz, %bb.bu ], [ 0, %bb.cg ] ; 2 uses
  %i.qq = load i64, ptr %i.dz, align 8, !noalias !557, !noundef !4 ; 2 uses
  %i.qr = icmp ult i64 %i.qq, 1152921504606846976
  call void @llvm.assume(i1 %i.qr)
  %i.qs = icmp eq i64 %i.qq, 0
  br i1 %i.qs, label %bb.cm, label %bb.ch

bb.cd:                                            ; preds = %bb.cb
  %i.qt = load ptr, ptr %i.cy, align 8, !alias.scope !557, !nonnull !4, !align !9, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qt, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 2)
          to label %bb.ce unwind label %bb.bs

bb.ce:                                            ; preds = %bb.cd, %bb.cb
  store i8 0, ptr %i.az, align 1, !noalias !557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !557
  store ptr @19, ptr %i.aw, align 8, !noalias !557
  store i64 9, ptr %i.dw, align 8, !noalias !557
  %i.qu = load ptr, ptr %i.cy, align 8, !alias.scope !557, !nonnull !4, !align !9, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !557
  store ptr %i.bg, ptr %i.av, align 8, !noalias !557
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCseR46qigP5Cu_7anstyle5style5StyleNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !557
  store ptr %i.aw, ptr %i.dx, align 8, !noalias !557
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !557
  %i.qv = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.qu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @13, ptr noundef nonnull @18, ptr noundef nonnull %i.av)
          to label %bb.cf unwind label %bb.bs     ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !557
  %i.qw = load ptr, ptr %i.dy, align 8, !noalias !557, !nonnull !4, !noundef !4
  %i.qx = load i64, ptr %i.dv, align 8, !noalias !557, !noundef !4
  invoke fastcc void @_RNvMs1_NtNtCsdjW2DEjcQy2_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.qw, i64 noundef %i.qx, ptr noundef nonnull @_RNvNtNtCsdjW2DEjcQy2_12clap_builder6output13help_template19positional_sort_key)
          to label %bb.cg unwind label %bb.bs

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !557
  br label %bb.cc

bb.ch:                                            ; preds = %bb.cc
  %i.qy = trunc nuw i8 %i.qp to i1
  br i1 %i.qy, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qz = load ptr, ptr %i.cy, align 8, !alias.scope !557, !nonnull !4, !align !9, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qz, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 2)
          to label %bb.cj unwind label %bb.bs

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  store i8 0, ptr %i.az, align 1, !noalias !557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !557
  store ptr @20, ptr %i.au, align 8, !noalias !557
  store i64 7, ptr %i.ea, align 8, !noalias !557
  %i.ra = load ptr, ptr %i.cy, align 8, !alias.scope !557, !nonnull !4, !align !9, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !557
  store ptr %i.bg, ptr %i.at, align 8, !noalias !557
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCseR46qigP5Cu_7anstyle5style5StyleNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !557
  store ptr %i.au, ptr %i.eb, align 8, !noalias !557
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.463.0..sroa_idx.i, align 8, !noalias !557
  %i.rb = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ra, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @13, ptr noundef nonnull @18, ptr noundef nonnull %i.at)
          to label %bb.ck unwind label %bb.bs     ; 0 uses

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !557
  %i.rc = load ptr, ptr %i.ec, align 8, !noalias !557, !nonnull !4, !noundef !4
  %i.rd = load i64, ptr %i.dz, align 8, !noalias !557, !noundef !4
  invoke fastcc void @_RNvMs1_NtNtCsdjW2DEjcQy2_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.rc, i64 noundef %i.rd, ptr noundef nonnull @_RNvNtNtCsdjW2DEjcQy2_12clap_builder6output13help_template15option_sort_key)
          to label %bb.cl unwind label %bb.bs

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !557
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cc
  %.promoted.i = phi i8 [ 0, %bb.cl ], [ %i.qp, %bb.cc ]
  %.val119.i = load i64, ptr %i.ed, align 8, !noalias !557, !noundef !4 ; 3 uses
  %i.re = icmp ult i64 %.val119.i, 576460752303423488
  call void @llvm.assume(i1 %i.re)
  %i.rf = icmp eq i64 %.val119.i, 0
  br i1 %i.rf, label %bb.co, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cm
  %.sroa.0148.0.copyload.i = load i64, ptr %i.ba, align 8, !noalias !557
  %.sroa.4149.0.copyload.i = load ptr, ptr %.sroa.4149.0..sroa_idx.i, align 8, !noalias !557, !nonnull !4, !noundef !4 ; 3 uses
  %.idx.i = shl nuw nsw i64 %.val119.i, 4
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.4149.0.copyload.i, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !557
  store ptr %.sroa.4149.0.copyload.i, ptr %i.as, align 8, !noalias !557
  store i64 %.sroa.0148.0.copyload.i, ptr %.sroa.5147.0..sroa_idx.i, align 8, !noalias !557
  store ptr %i.rg, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !557
  br label %bb.cp

.body.i:                                          ; preds = %bb.cy, %bb.ct, %bb.cn
  %.pn.i173 = phi { ptr, i32 } [ %i.sc, %bb.cy ], [ %i.rh, %bb.cn ], [ %i.rx, %bb.ct ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %.body137.i unwind label %bb.ca

bb.cn:                                            ; preds = %bb.cu, %bb.cp
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge.i:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEEB1e_.exit.i
  store i8 %i.rw, ptr %i.az, align 1, !noalias !557
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReEECsdjW2DEjcQy2_12clap_builder.exit127.i unwind label %bb.bs

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReEECsdjW2DEjcQy2_12clap_builder.exit127.i: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !557
  br label %bb.co

bb.co:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReEECsdjW2DEjcQy2_12clap_builder.exit127.i, %bb.cm
  %.sroa.015.2.i = phi i8 [ 1, %bb.cm ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReEECsdjW2DEjcQy2_12clap_builder.exit127.i ] ; 6 uses
  %brmerge3.not.i = and i1 %i.pk, %.sroa.0.0.i.i.i
  br i1 %brmerge3.not.i, label %bb.db, label %bb.da

bb.cp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEEB1e_.exit.i, %.lr.ph.i
  %i.ri = phi ptr [ %.sroa.4149.0.copyload.i, %.lr.ph.i ], [ %i.sg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEEB1e_.exit.i ] ; 3 uses
  %i.rj = phi i8 [ %.promoted.i, %.lr.ph.i ], [ %i.rw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEEB1e_.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  store ptr %i.rk, ptr %.sroa.4.0..sroa_idx146.i, align 8, !alias.scope !559, !noalias !557
  %i.rl = load ptr, ptr %i.ri, align 8, !noalias !559, !nonnull !4, !noundef !4
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rn = load i64, ptr %i.rm, align 8, !noalias !559, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !557
  store ptr %i.rl, ptr %i.ar, align 8, !noalias !557
  store i64 %i.rn, ptr %i.ee, align 8, !noalias !557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !557
  %i.ro = load ptr, ptr %i.dl, align 8, !alias.scope !557, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 328
  %.val109.i = load ptr, ptr %i.rp, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.rq = getelementptr i8, ptr %i.ro, i64 336
  %.val110.i = load i64, ptr %i.rq, align 8, !noundef !4
  %i.rr = getelementptr inbounds nuw [672 x i8], ptr %.val109.i, i64 %.val110.i
  %5 = insertelement <4 x ptr> %4, ptr %.val109.i, i64 0
  %6 = insertelement <4 x ptr> %5, ptr %i.rr, i64 1
  store <4 x ptr> %6, ptr %i.ap, align 8, !noalias !557
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB2l_INtNtNtB2t_5slice4iter4IterB11_ENCNvMs1_NtNtB17_6output13help_templateNtB3X_12HelpTemplate14write_all_argss3_0ENCB3R_s4_0EE9from_iterB17_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ap)
          to label %bb.cq unwind label %bb.cn

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !557
  %i.rs = load i64, ptr %i.ef, align 8, !noalias !557, !noundef !4 ; 2 uses
  %i.rt = icmp ult i64 %i.rs, 1152921504606846976
  call void @llvm.assume(i1 %i.rt)
  %i.ru = icmp eq i64 %i.rs, 0
  br i1 %i.ru, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rv = trunc nuw i8 %i.rj to i1
  br i1 %i.rv, label %bb.cx, label %bb.cw

bb.cs:                                            ; preds = %bb.cz, %bb.cq
  %i.rw = phi i8 [ 0, %bb.cz ], [ %i.rj, %bb.cq ] ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.rx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body.i unwind label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEEB1e_.exit.i unwind label %bb.cn

bb.cv:                                            ; preds = %bb.ct
  %i.ry = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cw:                                            ; preds = %bb.cr
  %i.rz = load ptr, ptr %i.cy, align 8, !alias.scope !557, !nonnull !4, !align !9, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.rz, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 2)
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %bb.cr
  %i.sa = load ptr, ptr %i.cy, align 8, !alias.scope !557, !nonnull !4, !align !9, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !557
  store ptr %i.bg, ptr %i.ao, align 8, !noalias !557
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCseR46qigP5Cu_7anstyle5style5StyleNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.479.0..sroa_idx.i, align 8, !noalias !557
  store ptr %i.ar, ptr %i.eg, align 8, !noalias !557
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.483.0..sroa_idx.i, align 8, !noalias !557
  %i.sb = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.sa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @13, ptr noundef nonnull @18, ptr noundef nonnull %i.ao)
          to label %bb.cz unwind label %bb.cy     ; 0 uses

bb.cy:                                            ; preds = %bb.cz, %bb.cx, %bb.cw
  %i.sc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #18
          to label %.body.i unwind label %bb.ca

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !557
  %i.sd = load ptr, ptr %i.eh, align 8, !noalias !557, !nonnull !4, !noundef !4
  %i.se = load i64, ptr %i.ef, align 8, !noalias !557, !noundef !4
  invoke fastcc void @_RNvMs1_NtNtCsdjW2DEjcQy2_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.sd, i64 noundef %i.se, ptr noundef nonnull @_RNvNtNtCsdjW2DEjcQy2_12clap_builder6output13help_template15option_sort_key)
          to label %bb.cs unwind label %bb.cy

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEEB1e_.exit.i: ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !557
  %i.sf = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !560, !noalias !557, !nonnull !4, !noundef !4
  %i.sg = load ptr, ptr %.sroa.4.0..sroa_idx146.i, align 8, !alias.scope !560, !noalias !557, !nonnull !4, !noundef !4 ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.sf
  br i1 %i.sh, label %._crit_edge.i, label %bb.cp

bb.da:                                            ; preds = %bb.ix, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !557
  %i.si = trunc nuw i8 %.sroa.015.2.i to i1
  br i1 %i.si, label %bb.jb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_set7FlatSetReEEBI_.exit.i

bb.db:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !557
  %i.sj = load ptr, ptr %i.dl, align 8, !alias.scope !557, !nonnull !4, !align !9, !noundef !4 ; 59 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.sk = load i64, ptr %i.sj, align 8, !range !3, !alias.scope !562, !noalias !561, !noundef !4
  %i.sl = trunc nuw i64 %i.sk to i1               ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 8 ; 2 uses
  br i1 %i.sl, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.sn = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.sm)
          to label %.noexc.i unwind label %bb.bs  ; 2 uses

.noexc.i:                                         ; preds = %bb.dc
  %i.so = extractvalue { ptr, i64 } %i.sn, 0
  %i.sp = extractvalue { ptr, i64 } %i.sn, 1
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %.sroa.5.0.copyload.i128.i = load ptr, ptr %i.sm, align 8, !alias.scope !562, !noalias !561
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !562, !noalias !561
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.noexc.i
  %.sroa.6.0.i.i = phi i64 [ %i.sp, %.noexc.i ], [ %.sroa.6.0.copyload.i.i, %bb.dd ] ; 3 uses
  %.sroa.5.0.i.i = phi ptr [ %i.so, %.noexc.i ], [ %.sroa.5.0.copyload.i128.i, %bb.dd ] ; 3 uses
  %.sroa.0.0.i129.i = phi i64 [ 1, %.noexc.i ], [ 0, %bb.dd ]
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sj, i64 56
  %i.sr = load i64, ptr %i.sq, align 8, !range !12, !alias.scope !562, !noalias !561, !noundef !4 ; 2 uses
  switch i64 %i.sr, label %bb.dg [
    i64 2, label %bb.df
    i64 0, label %bb.dh
  ]

bb.df:                                            ; preds = %bb.dk, %bb.dh, %bb.de
  %.sroa.8.0.i.i = phi i64 [ undef, %bb.de ], [ %i.tc, %bb.dk ], [ %.sroa.611.0.copyload.i.i, %bb.dh ] ; 3 uses
  %.sroa.6.0179.i.i = phi ptr [ undef, %bb.de ], [ %i.tb, %bb.dk ], [ %.sroa.58.0.copyload.i.i, %bb.dh ] ; 3 uses
  %i.ss = phi i1 [ true, %bb.de ], [ false, %bb.dk ], [ true, %bb.dh ]
  %.sroa.0158.0.i.i = phi i64 [ %i.sr, %bb.de ], [ 1, %bb.dk ], [ 0, %bb.dh ]
  %i.st = getelementptr inbounds nuw i8, ptr %i.sj, i64 760
  %i.su = load i32, ptr %i.st, align 8, !range !14, !alias.scope !562, !noalias !561, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !563
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sj, i64 464 ; 2 uses
  %i.sw = load i64, ptr %i.sv, align 8, !range !7, !alias.scope !562, !noalias !561, !noundef !4
  %.not90.i.i = icmp eq i64 %i.sw, -1
  br i1 %.not90.i.i, label %bb.dm, label %bb.dl

bb.dg:                                            ; preds = %bb.de
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sj, i64 64
  %i.sy = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.sx)
          to label %bb.dk unwind label %bb.dj, !noalias !561 ; 2 uses

bb.dh:                                            ; preds = %bb.de
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sj, i64 64
  %.sroa.58.0.copyload.i.i = load ptr, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !562, !noalias !561
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sj, i64 72
  %.sroa.611.0.copyload.i.i = load i64, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !alias.scope !562, !noalias !561
  br label %bb.df

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEB13_.exit.i.i: ; preds = %bb.dp, %bb.do, %bb.dj
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ta, %bb.dj ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.do ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.dp ] ; 2 uses
  %i.sz = icmp ne i64 %.sroa.6.0.i.i, 0
  %or.cond.not.i.i175 = select i1 %i.sl, i1 %i.sz, i1 false
  br i1 %or.cond.not.i.i175, label %bb.di, label %.body130.i

bb.di:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEB13_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef range(i64 1, 0) %.sroa.6.0.i.i, i64 noundef 1) #20, !noalias !564
  br label %.body130.i

bb.dj:                                            ; preds = %bb.dg
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEB13_.exit.i.i

bb.dk:                                            ; preds = %bb.dg
  %i.tb = extractvalue { ptr, i64 } %i.sy, 0
  %i.tc = extractvalue { ptr, i64 } %i.sy, 1
  br label %bb.df

bb.dl:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !563
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sv)
          to label %bb.dr unwind label %bb.dq, !noalias !561

bb.dm:                                            ; preds = %bb.df
  store i64 -1, ptr %i.am, align 8, !noalias !563
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dr, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !563
  %i.td = getelementptr inbounds nuw i8, ptr %i.sj, i64 488 ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !range !7, !alias.scope !562, !noalias !561, !noundef !4
  %.not91.i.i = icmp eq i64 %i.te, -1
  br i1 %.not91.i.i, label %bb.dt, label %bb.ds

bb.do:                                            ; preds = %bb.dv, %bb.dq
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.dv ], [ %i.tg, %bb.dq ] ; 2 uses
  %i.tf = icmp eq i64 %.sroa.8.0.i.i, 0
  %or.cond.i.i174 = select i1 %i.ss, i1 true, i1 %i.tf
  br i1 %or.cond.i.i174, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEB13_.exit.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0179.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0179.i.i, i64 noundef range(i64 1, 0) %.sroa.8.0.i.i, i64 noundef 1) #20, !noalias !565
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEB13_.exit.i.i

bb.dq:                                            ; preds = %bb.dl
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dr:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !563
  br label %bb.dn

bb.ds:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !563
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.td)
end_hunk_1
