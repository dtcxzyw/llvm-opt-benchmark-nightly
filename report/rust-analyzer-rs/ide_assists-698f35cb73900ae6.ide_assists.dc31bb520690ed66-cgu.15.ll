Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.15?download=true
inline.NumInlined: 3755
inline.NumDeleted: 1308
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref13generate_edit:bb.a
  store i32 %i.jg, ptr %i.je, align 4
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i198, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit140.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i198: ; preds = %bb.do
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dx) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit140.thread unwind label %bb.as

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit140.thread: ; preds = %bb.bu, %bb.bv, %bb.br, %.thread292, %bb.bq, %bb.m, %bb.n, %bb.q, %bb.u, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit140, %bb.dg, %bb.df, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i198, %bb.do
  %.sroa.01.4.ph = phi i8 [ 1, %bb.m ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit ], [ 1, %bb.do ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit140 ], [ %.sroa.01.5, %bb.q ], [ 1, %bb.n ], [ 0, %bb.u ], [ %.sroa.01.6, %bb.dg ], [ %.sroa.01.6, %bb.df ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i198 ], [ 1, %bb.bq ], [ 1, %.thread292 ], [ 1, %bb.br ], [ 1, %bb.bv ], [ 1, %bb.bu ] ; 2 uses
  %.pn52.pn.ph = phi { ptr, i32 } [ %i.at, %bb.m ], [ %.pn34.pn.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.pn41.pn.ph, %bb.do ], [ %.pn38, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit140 ], [ %i.aw, %bb.q ], [ %i.at, %bb.n ], [ %.pn34.pn.pn, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.dg ], [ %lpad.thr_comm.split-lp, %bb.df ], [ %.pn41.pn.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i198 ], [ %i.es, %bb.bq ], [ %i.em, %.thread292 ], [ %i.es, %bb.br ], [ %i.fb, %bb.bv ], [ %i.fb, %bb.bu ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ji = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !noundef !4
  %i.jk = add i32 %i.jj, -1                       ; 2 uses
  store i32 %i.jk, ptr %i.ji, align 4
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i201, label %.body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i201: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit140.thread
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.as) #39
          to label %.body unwind label %bb.as

bb.dp:                                            ; preds = %.split.thread, %.noexc
  %.pn56243 = phi { ptr, i32 } [ %i.w, %.split.thread ], [ %.pn52.pn.pn, %.noexc ]
  %.sroa.01.1242 = phi i8 [ 1, %.split.thread ], [ %.sroa.01.3, %.noexc ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor12SyntaxEditorECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(144) %i.s) #35
          to label %bb.b unwind label %bb.as

bb.dq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !noundef !4
  %i.jo = add i32 %i.jn, -1                       ; 2 uses
  store i32 %i.jo, ptr %i.jm, align 4
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i204, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit206

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i204: ; preds = %bb.dq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %5) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit206 unwind label %bb.as

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit179: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit206, %bb.dc
  resume { ptr, i32 } %.pn61
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref14generate_deref(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [104 x i8], align 8               ; 12 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 4                 ; 6 uses
  %i.l = alloca [1 x i8], align 1                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 9 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [1 x i8], align 1                 ; 3 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [104 x i8], align 8               ; 12 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [40 x i8], align 8                ; 7 uses
  %i.x = alloca [4 x i8], align 4                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 8 uses
  %i.z = alloca [16 x i8], align 4                ; 6 uses
  %i.aa = alloca [40 x i8], align 8               ; 6 uses
  %i.ab = alloca [40 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 4                ; 6 uses
  %i.ad = alloca [1 x i8], align 1                ; 6 uses
  %i.ae = alloca [8 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2348
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 5 uses
  %i.ah = load i32, ptr %i.ag, align 8, !noalias !2348, !noundef !4
  %i.ai = tail call noundef ptr @_RINvNtCsjJXvCMGntp8_6syntax4algo19find_node_at_offsetNtNtNtNtB4_3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af, i32 noundef %i.ah), !noalias !2348 ; 7 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.ai, ptr %i.ae, align 8, !noalias !2348
  %i.aj = load i32, ptr %i.ag, align 8, !noalias !2348, !noundef !4
  %i.ak = invoke noundef ptr @_RINvNtCsjJXvCMGntp8_6syntax4algo19find_node_at_offsetNtNtNtNtB4_3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af, i32 noundef %i.aj)
          to label %bb.c unwind label %.split.thread.i, !noalias !2348 ; 14 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit99.i
  br i1 %.sroa.033.2.i, label %bb.av, label %common.resume

.split.thread.i:                                  ; preds = %bb.al, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.c:                                             ; preds = %bb.b
  %.not48.i = icmp eq ptr %i.ak, null
  br i1 %.not48.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit88.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2348
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.am = invoke fastcc noundef i8 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref19existing_deref_impl(ptr noundef nonnull align 8 %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %bb.g unwind label %bb.f, !noalias !2348

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit88.i: ; preds = %bb.al, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !noalias !2348, !noundef !4
  %i.ap = add i32 %i.ao, -1                       ; 2 uses
  store i32 %i.ap, ptr %i.an, align 4, !noalias !2348
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.thread, label %.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.thread: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit88.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ai) #39
  br label %.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit99.i: ; preds = %bb.au, %.split121.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.f
  %.pn57.i = phi { ptr, i32 } [ %i.av, %bb.f ], [ %i.dp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit.i ], [ %.pn.pn.ph.i, %bb.au ], [ %i.cp, %.split121.i ] ; 2 uses
  %.sroa.033.2.i = phi i1 [ true, %bb.f ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit.i ], [ true, %bb.au ], [ false, %.split121.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !noundef !4
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit.i

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit99.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ak) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.as

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.m, %bb.j, %.noexc62.i, %bb.h, %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit99.i

bb.g:                                             ; preds = %bb.d
  switch i8 %i.am, label %.noexc.i [
    i8 2, label %bb.h
    i8 0, label %bb.k
  ]

bb.h:                                             ; preds = %bb.k, %bb.g
  %.val75.i = phi i8 [ 1, %bb.k ], [ 0, %bb.g ]   ; 2 uses
  store i8 %.val75.i, ptr %i.ad, align 1, !noalias !2348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2348
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = invoke { i32, i32 } @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %bb.l unwind label %bb.f, !noalias !2348 ; 2 uses

.noexc.i:                                         ; preds = %bb.g
  %i.ay = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8, !noalias !2348 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %.noexc.i
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.j, label %.noexc62.i

.noexc62.i:                                       ; preds = %bb.j, %bb.i
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 41)
          to label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i unwind label %bb.f, !noalias !2348

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 41)
          to label %.noexc62.i unwind label %bb.f, !noalias !2348

bb.k:                                             ; preds = %bb.g
  br label %bb.h

bb.l:                                             ; preds = %bb.h
  %i.ba = extractvalue { i32, i32 } %i.ax, 0      ; 2 uses
  %.not50.i = icmp eq i32 %i.ba, 0
  br i1 %.not50.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = extractvalue { i32, i32 } %i.ax, 1
  %i.bc = load ptr, ptr %i.al, align 8, !noalias !2348, !nonnull !4, !align !9, !noundef !4
  %i.bd = invoke { i32, i32 } @_RNvMsa_Cs8Xq8PKFYOms_3hirNtB5_6Struct6module(i32 noundef %i.ba, i32 noundef %i.bb, ptr noundef nonnull %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.o unwind label %bb.f, !noalias !2348 ; 2 uses

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i, %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB2_9DerefType8to_trait.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2348
  br label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i

bb.o:                                             ; preds = %bb.m
  %i.be = extractvalue { i32, i32 } %i.bd, 0      ; 4 uses
  %i.bf = extractvalue { i32, i32 } %i.bd, 1      ; 4 uses
  store i32 %i.be, ptr %i.ac, align 4, !noalias !2348
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !noalias !2348
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !2348, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.bj = load ptr, ptr %i.al, align 8, !noalias !2348, !nonnull !4, !align !9, !noundef !4
  %i.bk = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.p unwind label %bb.f, !noalias !2348 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bl = extractvalue { i32, i32 } %i.bk, 0
  %i.bm = extractvalue { i32, i32 } %i.bk, 1
  %i.bn = invoke noundef zeroext i1 @_RNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE10is_nightlyCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.al, i32 noundef %i.bl, i32 noundef %i.bm)
          to label %bb.q unwind label %bb.f, !noalias !2348

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 38
  %i.bp = load i8, ptr %i.bo, align 2, !range !14, !noalias !2348, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 39
  %2 = load i16, ptr %i.bq, align 1, !noalias !2348
  %3 = zext i16 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  %i.br = load ptr, ptr %i.al, align 8, !noalias !2348, !nonnull !4, !align !9, !noundef !4
  %i.bs = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.r unwind label %bb.f, !noalias !2348 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bt = extractvalue { i32, i32 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { i32, i32 } %i.bs, 1      ; 2 uses
  %i.bv = trunc nuw i8 %.val75.i to i1
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2348
  store ptr %i.al, ptr %i.r, align 8, !noalias !2348
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.bt, ptr %i.bw, align 8, !noalias !2348
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %i.bu, ptr %i.bx, align 4, !noalias !2348
  %i.by = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs17core_ops_DerefMut(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %.noexc79.i unwind label %bb.f, !noalias !2348

.noexc79.i:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2348
  br label %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB2_9DerefType8to_trait.exit.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2348
  store ptr %i.al, ptr %i.s, align 8, !noalias !2348
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.bt, ptr %i.bz, align 8, !noalias !2348
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %i.bu, ptr %i.ca, align 4, !noalias !2348
  %i.cb = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs14core_ops_Deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
          to label %.noexc80.i unwind label %bb.f, !noalias !2348

.noexc80.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2348
  br label %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB2_9DerefType8to_trait.exit.i

_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB2_9DerefType8to_trait.exit.i: ; preds = %.noexc80.i, %.noexc79.i
  %.pn.i.i = phi { i32, i32 } [ %i.by, %.noexc79.i ], [ %i.cb, %.noexc80.i ] ; 2 uses
  %i.cc = extractvalue { i32, i32 } %.pn.i.i, 0   ; 2 uses
  %.not51.i = icmp eq i32 %i.cc, 0
  br i1 %.not51.i, label %bb.n, label %bb.u

bb.u:                                             ; preds = %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB2_9DerefType8to_trait.exit.i
  %i.cd = extractvalue { i32, i32 } %.pn.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2348
  %i.ce = load ptr, ptr %i.al, align 8, !noalias !2348, !nonnull !4, !align !9, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2348
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.cc, ptr %i.cf, align 4, !noalias !2348
  %i.cg = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %i.cd, ptr %i.cg, align 4, !noalias !2348
  store i8 6, ptr %i.z, align 4, !noalias !2348
  %.sroa.647.0.insert.shift.i = select i1 %i.bn, i32 16777216, i32 0
  %.sroa.445.0.insert.insert.i = or disjoint i32 %4, %.sroa.647.0.insert.shift.i
  %.sroa.044.0.insert.ext.i = zext nneg i8 %i.bp to i32
  %.sroa.044.0.insert.insert.i = or disjoint i32 %.sroa.445.0.insert.insert.i, %.sroa.044.0.insert.ext.i
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module9find_pathNtB6_9ModuleDefECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.aa, i32 noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @38, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.z, i32 noundef %.sroa.044.0.insert.insert.i)
          to label %bb.v unwind label %bb.f, !noalias !2348

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2348
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ci = load i8, ptr %i.ch, align 8, !range !24, !noalias !2348, !noundef !4
  %.not52.i = icmp eq i8 %i.ci, -1
  br i1 %.not52.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false), !noalias !2348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2348
  %i.cj = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %i.ak)
          to label %bb.z unwind label %bb.y, !noalias !2348 ; 2 uses

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2348
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2348
  br label %bb.n

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %bb.w
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.z:                                             ; preds = %bb.w
  %i.cl = extractvalue { i64, ptr } %i.cj, 0      ; 2 uses
  %.not53.i = icmp eq i64 %i.cl, -1
  br i1 %.not53.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = extractvalue { i64, ptr } %i.cj, 1      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2348
  %i.cn = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %i.ak)
          to label %bb.ab unwind label %.split121.thread.i, !noalias !2348 ; 2 uses

.split121.thread.i:                               ; preds = %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %bb.ak, %bb.z
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.f, !noalias !2348

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.an, %bb.am
  br i1 %.sroa.031.2.i, label %bb.at, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit99.i

.split121.i:                                      ; preds = %bb.ar
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit99.i

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp eq ptr %i.cn, null
  br i1 %.not54.i, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cn, ptr %i.y, align 8, !noalias !2348
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  %i.cr = load i8, ptr %i.cq, align 4, !range !14, !noalias !2348, !noundef !4
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.ae, label %bb.ad, !prof !5

bb.ad:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.cu = load i32, ptr %i.ct, align 8, !noalias !2348, !noundef !4
  br label %.noexc83.i

bb.ae:                                            ; preds = %bb.ac
  %i.cv = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.ak)
          to label %.noexc83.i unwind label %bb.am, !noalias !2348

.noexc83.i:                                       ; preds = %bb.ae, %bb.ad
  %.sroa.0.0.i.i = phi i32 [ %i.cu, %bb.ad ], [ %i.cv, %bb.ae ] ; 3 uses
  %i.cw = load i64, ptr %i.ak, align 8, !range !17, !noalias !2348, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cy = trunc nuw i64 %i.cw to i1
  %i.cz = load ptr, ptr %i.cx, align 8, !noalias !2348, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.cy, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.noexc83.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i64, ptr %i.da, align 8, !noalias !2348, !noundef !4 ; 2 uses
  %i.dc = icmp ugt i64 %i.db, 4294967295
  %i.dd = shl nuw i64 %i.db, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.dc, i64 513, i64 %i.dd ; 2 uses
  %i.de = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.de, label %bb.ag, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, !prof !5

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2348
  store i8 2, ptr %i.q, align 1, !noalias !2348
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #41
          to label %.noexc84.i unwind label %bb.am, !noalias !2348

.noexc84.i:                                       ; preds = %bb.ag
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i: ; preds = %bb.af
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc83.i
  %i.df = load i32, ptr %i.cz, align 8, !noalias !2348, !noundef !4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i
  %.sroa.02.0.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %i.df, %bb.ah ]
  %i.dg = add i32 %.sroa.02.0.i.i, %.sroa.0.0.i.i ; 2 uses
  %.not.i82.i = icmp ugt i32 %.sroa.0.0.i.i, %i.dg
  br i1 %.not.i82.i, label %bb.aj, label %bb.ao, !prof !5

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #41
          to label %.noexc85.i unwind label %bb.am, !noalias !2348

.noexc85.i:                                       ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2348
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 48 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !noalias !2348, !noundef !4
  %i.dj = add i32 %i.di, -1                       ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 4, !noalias !2348
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i: ; preds = %bb.ak
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cm) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.y, !noalias !2348

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i:   ; preds = %bb.n, %.noexc62.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2348
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !noalias !2348, !noundef !4
  %i.dn = add i32 %i.dm, -1                       ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 4, !noalias !2348
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.al, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit88.i

bb.al:                                            ; preds = %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ak) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldECsiU5vK8fN4ZC_11ide_assists.exit88.i unwind label %.split.thread.i, !noalias !2348

bb.am:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.ap, %bb.ao, %bb.aj, %bb.ag, %bb.ae
  %.sroa.031.2.i = phi i1 [ false, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit.i ], [ true, %bb.ap ], [ true, %bb.ao ], [ true, %bb.aj ], [ true, %bb.ae ], [ true, %bb.ag ]
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val63.i = load ptr, ptr %i.y, align 8, !noalias !2348, !nonnull !4, !noundef !4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val63.i, i64 48 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !noundef !4
  %i.ds = add i32 %i.dr, -1                       ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 4
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.an, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit.i

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val63.i) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.as

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2348
  %i.du = invoke noundef i32 @_RNvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB2_13AssistContext11vfs_file_id(ptr noundef nonnull align 8 %1)
          to label %bb.ap unwind label %bb.am, !noalias !2348

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.du, ptr %i.x, align 4, !noalias !2348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2348
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr @44, ptr %i.dv, align 8, !noalias !2348
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 14, ptr %i.dw, align 8, !noalias !2348
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i8 1, ptr %i.dx, align 8, !noalias !2348
  store i64 0, ptr %i.w, align 8, !noalias !2348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2348
  store ptr %i.ad, ptr %i.u, align 8, !noalias !2348
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB4_9DerefTypeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !2348
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.y, ptr %i.dy, align 8, !noalias !2348
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXstL_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !2348
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @45, ptr noundef nonnull %i.u)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.am, !noalias !2348

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2348
  %i.dz = getelementptr inbounds nuw i8, ptr %i.t, i64 56
end_hunk_0
begin_hunk_1_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref14generate_deref:bb.a
.noexc.i.i.i.i.i.i:                               ; preds = %bb.bn, %bb.bm
  %.sroa.02.0.i.i.i.i.i.i.i = phi i32 [ %i.gn, %bb.bm ], [ %i.go, %bb.bn ]
  %.sroa.03.0.i.i.i.i.i.i.i = load ptr, ptr %i.gd, align 8, !noalias !2351, !nonnull !4, !noundef !4
  %i.gp = load i8, ptr %i.ge, align 4, !range !14, !noalias !2351, !noundef !4
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.bp, label %bb.bo, !prof !5

bb.bo:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.gr = load i32, ptr %i.gf, align 8, !noalias !2351, !noundef !4
  br label %bb.bs

bb.bp:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.gs = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.fd)
          to label %bb.bs unwind label %bb.bq, !noalias !2351

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gg, i64 48 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !noalias !2351, !noundef !4
  %i.gw = add i32 %i.gv, -1                       ; 2 uses
  store i32 %i.gw, ptr %i.gu, align 4, !noalias !2351
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.br, label %.body.i.i.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.gg) #39
          to label %.body.i.i.i unwind label %bb.bu, !noalias !2351

bb.bs:                                            ; preds = %bb.bp, %bb.bo
  %.sroa.04.0.i.i.i.i.i.i.i = phi i32 [ %i.gr, %bb.bo ], [ %i.gs, %bb.bp ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gg, i64 48 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !noalias !2351, !noundef !4
  %i.ha = add i32 %i.gz, -1                       ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 8, !noalias !2351
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.bt, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref20generate_tuple_deref0B7_.exit.i.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.gg) #39
          to label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref20generate_tuple_deref0B7_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2350

bb.bu:                                            ; preds = %bb.br
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !2351
  unreachable

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref20generate_tuple_deref0B7_.exit.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %i.hd = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.03.0.i.i.i.i.i.i.i
  %i.he = icmp eq i32 %.sroa.02.0.i.i.i.i.i.i.i, %.sroa.04.0.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = and i1 %i.hd, %i.he
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %bb.bx, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8position5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref20generate_tuple_deref0E0B2U_.exit.i.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8position5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref20generate_tuple_deref0E0B2U_.exit.i.i.i.i: ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref20generate_tuple_deref0B7_.exit.i.i.i.i.i
  %i.hf = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc97.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2350 ; 2 uses

.noexc97.i.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8position5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref20generate_tuple_deref0E0B2U_.exit.i.i.i.i
  %i.hg = add i64 %i.gh, 1
  %.not.i94.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i94.i.i.i, label %.loopexit137.i.i.i, label %bb.bl

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8position5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref20generate_tuple_deref0E0B2U_.exit.i.i.i.i, %bb.bt, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.br, %bb.bq
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.gt, %bb.bq ], [ %i.gt, %bb.br ], [ %lpad.loopexit.split-lp50, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.val75.i.i.i = load ptr, ptr %i.m, align 8, !noalias !2350, !noundef !4 ; 3 uses
  %i.hh = icmp eq ptr %.val75.i.i.i, null
  br i1 %i.hh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %.body.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.val75.i.i.i, i64 48 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !noalias !2350, !noundef !4
  %i.hk = add i32 %i.hj, -1                       ; 2 uses
  store i32 %i.hk, ptr %i.hi, align 4, !noalias !2350
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.bw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val75.i.i.i) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i unwind label %bb.dh, !noalias !2350

bb.bx:                                            ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref20generate_tuple_deref0B7_.exit.i.i.i.i.i
  store i64 %i.gh, ptr %i.n, align 8, !noalias !2350
  %.val74.i.i.i = load ptr, ptr %i.m, align 8, !noalias !2350, !noundef !4 ; 3 uses
  %i.hm = icmp eq ptr %.val74.i.i.i, null
  br i1 %i.hm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit100.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hn = getelementptr inbounds nuw i8, ptr %.val74.i.i.i, i64 48 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !noalias !2350, !noundef !4
  %i.hp = add i32 %i.ho, -1                       ; 2 uses
  store i32 %i.hp, ptr %i.hn, align 4, !noalias !2350
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.bz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit100.i.i.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val74.i.i.i) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit100.i.i.i unwind label %bb.bk, !noalias !2350

.loopexit137.i.i.i:                               ; preds = %.noexc97.i.i.i, %.noexc95.i.i.i
  %.val73.i.i.i = load ptr, ptr %i.m, align 8, !noalias !2350, !noundef !4 ; 3 uses
  %i.hr = icmp eq ptr %.val73.i.i.i, null
  br i1 %i.hr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit102.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %.loopexit137.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.val73.i.i.i, i64 48 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !noalias !2350, !noundef !4
  %i.hu = add i32 %i.ht, -1                       ; 2 uses
  store i32 %i.hu, ptr %i.hs, align 4, !noalias !2350
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.cb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit102.i.i.i

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val73.i.i.i) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit102.i.i.i unwind label %bb.bk, !noalias !2350

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit102.i.i.i: ; preds = %bb.cb, %bb.ca, %.loopexit137.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2350
  br label %bb.cc

bb.cc:                                            ; preds = %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit102.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2350
  %i.hw = load i32, ptr %i.fp, align 4, !noalias !2350, !noundef !4
  %i.hx = add i32 %i.hw, -1                       ; 2 uses
  store i32 %i.hx, ptr %i.fp, align 4, !noalias !2350
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.cd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit104.i.i.i

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ff) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit104.i.i.i unwind label %bb.bd, !noalias !2350

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit100.i.i.i: ; preds = %bb.bz, %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2350
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.ia = invoke fastcc noundef i8 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref19existing_deref_impl(ptr noundef nonnull align 8 %i.hz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.ce unwind label %bb.bk, !noalias !2350

bb.ce:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit100.i.i.i
  switch i8 %i.ia, label %.noexc.i.i.i [
    i8 2, label %bb.cf
    i8 0, label %bb.ci
  ]

bb.cf:                                            ; preds = %bb.ci, %bb.ce
  %.val83.i.i.i = phi i8 [ 1, %bb.ci ], [ 0, %bb.ce ] ; 2 uses
  store i8 %.val83.i.i.i, ptr %i.l, align 1, !noalias !2350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2350
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ic = invoke { i32, i32 } @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.ib, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.cj unwind label %bb.bk, !noalias !2350 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.ce
  %i.id = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8, !noalias !2350 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.id, 0
  br i1 %.not.i.i.i.i, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i, label %bb.cg, !prof !8

bb.cg:                                            ; preds = %.noexc.i.i.i
  %i.ie = icmp slt i64 %i.id, 0
  br i1 %i.ie, label %bb.ch, label %.noexc70.i.i.i

.noexc70.i.i.i:                                   ; preds = %bb.ch, %bb.cg
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 40)
          to label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i unwind label %bb.bk, !noalias !2350

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 40)
          to label %.noexc70.i.i.i unwind label %bb.bk, !noalias !2350

bb.ci:                                            ; preds = %bb.ce
  br label %bb.cf

bb.cj:                                            ; preds = %bb.cf
  %i.if = extractvalue { i32, i32 } %i.ic, 0      ; 2 uses
  %.not58.i.i.i = icmp eq i32 %i.if, 0
  br i1 %.not58.i.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ig = extractvalue { i32, i32 } %i.ic, 1
  %i.ih = load ptr, ptr %i.hz, align 8, !noalias !2350, !nonnull !4, !align !9, !noundef !4
  %i.ii = invoke { i32, i32 } @_RNvMsa_Cs8Xq8PKFYOms_3hirNtB5_6Struct6module(i32 noundef %i.if, i32 noundef %i.ig, ptr noundef nonnull %i.ih, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.cm unwind label %bb.bk, !noalias !2350 ; 2 uses

bb.cl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB2_9DerefType8to_trait.exit.i.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2350
  br label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.ij = extractvalue { i32, i32 } %i.ii, 0      ; 4 uses
  %i.ik = extractvalue { i32, i32 } %i.ii, 1      ; 4 uses
  store i32 %i.ij, ptr %i.k, align 4, !noalias !2350
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.ik, ptr %i.il, align 4, !noalias !2350
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.in = load ptr, ptr %i.im, align 8, !noalias !2350, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.io = load ptr, ptr %i.hz, align 8, !noalias !2350, !nonnull !4, !align !9, !noundef !4
  %i.ip = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.ij, i32 noundef %i.ik, ptr noundef nonnull %i.io, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.cn unwind label %bb.bk, !noalias !2350 ; 2 uses

bb.cn:                                            ; preds = %bb.cm
  %i.iq = extractvalue { i32, i32 } %i.ip, 0
  %i.ir = extractvalue { i32, i32 } %i.ip, 1
  %i.is = invoke noundef zeroext i1 @_RNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE10is_nightlyCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.hz, i32 noundef %i.iq, i32 noundef %i.ir)
          to label %bb.co unwind label %bb.bk, !noalias !2350

bb.co:                                            ; preds = %bb.cn
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 38
  %i.iu = load i8, ptr %i.it, align 2, !range !14, !noalias !2350, !noundef !4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 39
  %5 = load i16, ptr %i.iv, align 1, !noalias !2350
  %6 = zext i16 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %i.iw = load ptr, ptr %i.hz, align 8, !noalias !2350, !nonnull !4, !align !9, !noundef !4
  %i.ix = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.ij, i32 noundef %i.ik, ptr noundef nonnull %i.iw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.cp unwind label %bb.bk, !noalias !2350 ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.iy = extractvalue { i32, i32 } %i.ix, 0      ; 2 uses
  %i.iz = extractvalue { i32, i32 } %i.ix, 1      ; 2 uses
  %i.ja = trunc nuw i8 %.val83.i.i.i to i1
  br i1 %i.ja, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2350
  store ptr %i.hz, ptr %i.a, align 8, !noalias !2350
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.iy, ptr %i.jb, align 8, !noalias !2350
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.iz, ptr %i.jc, align 4, !noalias !2350
  %i.jd = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs17core_ops_DerefMut(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.noexc106.i.i.i unwind label %bb.bk, !noalias !2350

.noexc106.i.i.i:                                  ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2350
  br label %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB2_9DerefType8to_trait.exit.i.i.i

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2350
  store ptr %i.hz, ptr %i.b, align 8, !noalias !2350
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.iy, ptr %i.je, align 8, !noalias !2350
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.iz, ptr %i.jf, align 4, !noalias !2350
  %i.jg = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs14core_ops_Deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc107.i.i.i unwind label %bb.bk, !noalias !2350

.noexc107.i.i.i:                                  ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2350
  br label %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB2_9DerefType8to_trait.exit.i.i.i

_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB2_9DerefType8to_trait.exit.i.i.i: ; preds = %.noexc107.i.i.i, %.noexc106.i.i.i
  %.pn.i.i.i.i = phi { i32, i32 } [ %i.jd, %.noexc106.i.i.i ], [ %i.jg, %.noexc107.i.i.i ] ; 2 uses
  %i.jh = extractvalue { i32, i32 } %.pn.i.i.i.i, 0 ; 2 uses
  %.not59.i.i.i = icmp eq i32 %i.jh, 0
  br i1 %.not59.i.i.i, label %bb.cl, label %bb.cs

bb.cs:                                            ; preds = %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB2_9DerefType8to_trait.exit.i.i.i
  %i.ji = extractvalue { i32, i32 } %.pn.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2350
  %i.jj = load ptr, ptr %i.hz, align 8, !noalias !2350, !nonnull !4, !align !9, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2350
  %i.jk = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.jh, ptr %i.jk, align 4, !noalias !2350
  %i.jl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.ji, ptr %i.jl, align 4, !noalias !2350
  store i8 6, ptr %i.h, align 4, !noalias !2350
  %.sroa.654.0.insert.shift.i.i.i = select i1 %i.is, i32 16777216, i32 0
  %.sroa.452.0.insert.insert.i.i.i = or disjoint i32 %7, %.sroa.654.0.insert.shift.i.i.i
  %.sroa.051.0.insert.ext.i.i.i = zext nneg i8 %i.iu to i32
  %.sroa.051.0.insert.insert.i.i.i = or disjoint i32 %.sroa.452.0.insert.insert.i.i.i, %.sroa.051.0.insert.ext.i.i.i
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module9find_pathNtB6_9ModuleDefECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, i32 noundef %i.ij, i32 noundef %i.ik, ptr noundef nonnull %i.jj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @38, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.h, i32 noundef %.sroa.051.0.insert.insert.i.i.i)
          to label %bb.ct unwind label %bb.bk, !noalias !2350

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2350
  %i.jm = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.jn = load i8, ptr %i.jm, align 8, !range !24, !noalias !2350, !noundef !4
  %.not60.i.i.i = icmp eq i8 %i.jn, -1
  br i1 %.not60.i.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2350
  %i.jo = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %i.fd)
          to label %bb.cx unwind label %bb.cw, !noalias !2350 ; 2 uses

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2350
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.cz, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2350
  br label %bb.cl

bb.cw:                                            ; preds = %bb.cu
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cx:                                            ; preds = %bb.cu
  %i.jq = extractvalue { i64, ptr } %i.jo, 0      ; 2 uses
  %.not61.i.i.i = icmp eq i64 %i.jq, -1
  br i1 %.not61.i.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jr = extractvalue { i64, ptr } %i.jo, 1      ; 4 uses
  %i.js = invoke fastcc { i32, i32 } @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range(ptr noundef nonnull align 8 %i.fd)
          to label %bb.db unwind label %bb.dg, !noalias !2350 ; 2 uses

bb.cz:                                            ; preds = %bb.cx
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i unwind label %bb.bk, !noalias !2350

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i: ; preds = %bb.cl, %.noexc70.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2350
  br label %bb.cc

bb.da:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.db:                                            ; preds = %bb.cy
  %i.jt = extractvalue { i32, i32 } %i.js, 0
  %i.ju = extractvalue { i32, i32 } %i.js, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2350
  %i.jv = invoke noundef i32 @_RNvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB2_13AssistContext11vfs_file_id(ptr noundef nonnull align 8 %1)
          to label %bb.dc unwind label %bb.dg, !noalias !2350

bb.dc:                                            ; preds = %bb.db
  store i32 %i.jv, ptr %i.g, align 4, !noalias !2350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2350
  %i.jw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @44, ptr %i.jw, align 8, !noalias !2350
  %i.jx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 14, ptr %i.jx, align 8, !noalias !2350
  %i.jy = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 1, ptr %i.jy, align 8, !noalias !2350
  store i64 0, ptr %i.f, align 8, !noalias !2350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2350
  store ptr %i.l, ptr %i.d, align 8, !noalias !2350
  %.sroa.443.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_derefNtB4_9DerefTypeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.443.0..sroa_idx.i.i.i, align 8, !noalias !2350
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.o, ptr %i.jz, align 8, !noalias !2350
  %.sroa.447.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsuB_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_10TupleFieldNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.447.0..sroa_idx.i.i.i, align 8, !noalias !2350
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @45, ptr noundef nonnull %i.d)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i unwind label %bb.dg, !noalias !2350

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2350
  %i.ka = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %1, ptr %i.ka, align 8, !noalias !2350
  %i.kb = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.g, ptr %i.kb, align 8, !noalias !2350
  %i.kc = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.fb, ptr %i.kc, align 8, !noalias !2350
  store i64 %i.jq, ptr %i.c, align 8, !noalias !2350
  %i.kd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.jr, ptr %i.kd, align 8, !noalias !2350
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.n, ptr %i.ke, align 8, !noalias !2350
  %i.kf = load i8, ptr %i.l, align 1, !range !14, !noalias !2350, !noundef !4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i8 %i.kf, ptr %i.kg, align 8, !noalias !2350
  %i.kh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kh, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !2350
  %i.ki = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.k, ptr %i.ki, align 8, !noalias !2350
  %i.kj = invoke noundef zeroext i1 @_RINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB5_7Assists3addNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtNtB7_8handlers14generate_deref20generate_tuple_derefs_0EB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i32 noundef %i.jt, i32 noundef %i.ju, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %i.c)
          to label %bb.dd unwind label %bb.da

bb.dd:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2350
  %i.kk = load i32, ptr %i.fp, align 4, !noundef !4
  %i.kl = add i32 %i.kk, -1                       ; 2 uses
  store i32 %i.kl, ptr %i.fp, align 4
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.de, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit111.i.i.i

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ff) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit111.i.i.i unwind label %bb.bd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit111.i.i.i: ; preds = %bb.de, %bb.dd
  %.val85.i.i.i = load ptr, ptr %i.o, align 8, !noalias !2350, !nonnull !4, !noundef !4 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.val85.i.i.i, i64 48 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !noundef !4
  %i.kp = add i32 %i.ko, -1                       ; 2 uses
  store i32 %i.kp, ptr %i.kn, align 4
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.df, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit113.i.i.i

bb.df:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit111.i.i.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val85.i.i.i) #39
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit113.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit113.i.i.i: ; preds = %bb.df, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListECsiU5vK8fN4ZC_11ide_assists.exit111.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2350
  br label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref14generate_deref0B7_.exit.i

bb.dg:                                            ; preds = %bb.dc, %bb.db, %bb.cy
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jr) ]
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jr, i64 48 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !noalias !2350, !noundef !4
  %i.kt = add i32 %i.ks, -1                       ; 2 uses
  store i32 %i.kt, ptr %i.kr, align 4, !noalias !2350
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, label %bb.di

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i: ; preds = %bb.dg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.jr) #39
          to label %bb.di unwind label %bb.dh, !noalias !2350

bb.dh:                                            ; preds = %bb.dk, %bb.di, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, %bb.bw, %bb.bj, %bb.bc
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.di:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, %bb.dg, %bb.cw
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.jp, %bb.cw ], [ %lpad.thr_comm.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i ], [ %lpad.thr_comm.i.i.i, %bb.dg ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i unwind label %bb.dh, !noalias !2350

bb.dj:                                            ; preds = %.split.thread.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  %.pn67163.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm164.i.i.i, %.split.thread.i.i.i ], [ %.pn65.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.fb, i64 48 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !noundef !4
  %i.ky = add i32 %i.kx, -1                       ; 2 uses
  store i32 %i.ky, ptr %i.kw, align 4
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.dk, label %common.resume

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.fb) #39
          to label %common.resume unwind label %bb.dh

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref14generate_deref0B7_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit113.i.i.i, %bb.bb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit92.i.i.i, %bb.ax
  %.sroa.0.8.i.i.i = phi i1 [ %i.kj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit113.i.i.i ], [ false, %bb.bb ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit92.i.i.i ], [ false, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2349
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionuE7or_elseNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref14generate_deref0EB10_.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionuE7or_elseNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref14generate_deref0EB10_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref21generate_record_deref.exit, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref14generate_deref0B7_.exit.i
  %.sroa.0.0.i = phi i1 [ %.sroa.0.8.i.i.i, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref14generate_deref0B7_.exit.i ], [ true, %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref21generate_record_deref.exit ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14generate_deref19existing_deref_impl(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call { i32, i32 } @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.e, 0        ; 3 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19qualify_method_call19qualify_method_call:bb.a
          to label %.noexc58 unwind label %bb.ab

.noexc58:                                         ; preds = %bb.t, %bb.s
  %.sroa.0.0.i56 = phi i32 [ %i.bj, %bb.s ], [ %i.bk, %bb.t ] ; 3 uses
  %i.bl = load i64, ptr %i.be, align 8, !range !17, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bn = trunc nuw i64 %i.bl to i1
  %i.bo = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.bn, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.noexc58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !4 ; 2 uses
  %i.br = icmp ugt i64 %i.bq, 4294967295
  %i.bs = shl nuw i64 %i.bq, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.br, i64 513, i64 %i.bs ; 2 uses
  %i.bt = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.bt, label %bb.v, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !5

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 2, ptr %i.d, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #41
          to label %.noexc59 unwind label %bb.ab

.noexc59:                                         ; preds = %bb.v
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.u
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.x

bb.w:                                             ; preds = %.noexc58
  %i.bu = load i32, ptr %i.bo, align 8, !noundef !4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.bu, %bb.w ]
  %i.bv = add i32 %.sroa.02.0.i, %.sroa.0.0.i56   ; 2 uses
  %.not.i57 = icmp ugt i32 %.sroa.0.0.i56, %i.bv
  br i1 %.not.i57, label %bb.y, label %bb.ac, !prof !5

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #41
          to label %.noexc60 unwind label %bb.ab

.noexc60:                                         ; preds = %bb.y
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit66: ; preds = %bb.ag, %bb.ah, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.val38 = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val38, i64 48 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !noundef !4
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  store i32 %i.by, ptr %i.bw, align 4
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.z, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit63

bb.z:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit66
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val38) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit63 unwind label %bb.f

.body67:                                          ; preds = %bb.be, %bb.an, %bb.ao, %bb.ab, %bb.al
  %.pn32 = phi { ptr, i32 } [ %i.co, %bb.al ], [ %i.cr, %bb.an ], [ %i.ce, %bb.ab ], [ %i.cr, %bb.ao ], [ %.pn, %bb.be ] ; 2 uses
  %.val42 = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val42, i64 48 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !noundef !4
  %i.cc = add i32 %i.cb, -1                       ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 4
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit

bb.aa:                                            ; preds = %.body67
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val42) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.bm

bb.ab:                                            ; preds = %bb.bj, %bb.ax, %bb.aw, %bb.av, %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19qualify_method_call13item_as_assoc.exit.i, %bb.y, %bb.v, %bb.t, %bb.az, %bb.at, %bb.as, %bb.ar, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit, %bb.ae, %bb.ac
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body67

bb.ac:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl19resolve_method_call(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.t, ptr noundef nonnull align 8 %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %i.ch = load i8, ptr %i.t, align 4, !range !25, !noundef !4
  %.not27 = icmp eq i8 %i.ch, 2
  br i1 %.not27, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl5scope(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.q, ptr noundef nonnull align 8 %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
          to label %bb.ai unwind label %bb.ab

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %bb.bb, %bb.af
  %i.ci = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !noundef !4
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 4
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.ah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit66

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.au) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit66 unwind label %bb.p

bb.ai:                                            ; preds = %bb.ae
  %i.cm = load i64, ptr %i.q, align 8, !range !12, !noundef !4
  %.not28 = icmp eq i64 %i.cm, -1
  br i1 %.not28, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.r, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.cn = invoke { i32, i32 } @_RNvMs8_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_14SemanticsScope6module(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.r)
          to label %bb.am unwind label %bb.al     ; 2 uses

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ag

bb.al:                                            ; preds = %bb.aj
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(88) %i.r) #35
          to label %.body67 unwind label %bb.bm

bb.am:                                            ; preds = %bb.aj
  %i.cp = extractvalue { i32, i32 } %i.cn, 0      ; 3 uses
  %i.cq = extractvalue { i32, i32 } %i.cn, 1      ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.r)
          to label %bb.ap unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !2381 ; 2 uses
  %i.cs = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.cs, label %.body67, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val3.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !2382, !nonnull !4, !noundef !4
  %i.cu = mul nuw i64 %.val2.i.i.i, 40
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !2383
  br label %.body67

bb.ap:                                            ; preds = %bb.am
  %.val.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !2381 ; 2 uses
  %i.cv = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !2382, !nonnull !4, !noundef !4
  %i.cx = mul nuw i64 %.val.i.i.i, 40
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !2384
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cy = load ptr, ptr %i.cf, align 8, !nonnull !4, !align !9, !noundef !4
  %i.cz = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef nonnull %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.ar unwind label %bb.ab     ; 2 uses

bb.ar:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit
  %i.da = extractvalue { i32, i32 } %i.cz, 0
  %i.db = extractvalue { i32, i32 } %i.cz, 1
  %i.dc = load ptr, ptr %i.cf, align 8, !nonnull !4, !align !9, !noundef !4
  %i.dd = invoke noundef i8 @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate7edition(i32 noundef %i.da, i32 noundef %i.db, ptr noundef nonnull %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.as unwind label %bb.ab

bb.as:                                            ; preds = %bb.ar
  store i8 %i.dd, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  %.sroa.14.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.14.4..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i8 1, ptr %i.de, align 4, !alias.scope !2386
  %.sroa.14.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14.0..sroa_idx100, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14, i64 15, i1 false), !alias.scope !2386
  store i32 1, ptr %i.o, align 4, !alias.scope !2387
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.dh = load ptr, ptr %i.cf, align 8, !nonnull !4, !align !9, !noundef !4
  %i.di = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef nonnull %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.at unwind label %bb.ab     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.dj = extractvalue { i32, i32 } %i.di, 0
  %i.dk = extractvalue { i32, i32 } %i.di, 1
  %i.dl = invoke noundef zeroext i1 @_RNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE10is_nightlyCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.cf, i32 noundef %i.dj, i32 noundef %i.dk)
          to label %bb.au unwind label %bb.ab

bb.au:                                            ; preds = %bb.at
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 38
  %i.dn = load i8, ptr %i.dm, align 2, !range !14, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 39
  %2 = load i16, ptr %i.do, align 1
  %3 = zext i16 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dp = load ptr, ptr %i.cf, align 8, !nonnull !4, !align !9, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %i.o, i64 20, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dq = load i32, ptr %i.f, align 4, !alias.scope !2390 ; 3 uses
  %i.dr = icmp eq i32 %i.dq, 2
  br i1 %i.dr, label %.thread115, label %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19qualify_method_call13item_as_assoc.exit.i

_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19qualify_method_call13item_as_assoc.exit.i: ; preds = %bb.au
  %.sroa.4183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  invoke void @_RNvXsW_Cs8Xq8PKFYOms_3hirNtB5_9ModuleDefNtB5_11AsAssocItem13as_assoc_item(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %.sroa.4183.0..sroa_idx.i, ptr noundef nonnull %i.dp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %.noexc70 unwind label %bb.ab

.noexc70:                                         ; preds = %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19qualify_method_call13item_as_assoc.exit.i
  %i.ds = load i8, ptr %i.c, align 4, !range !26, !noalias !2391, !noundef !4
  %.not.i69 = icmp eq i8 %i.ds, -1
  br i1 %.not.i69, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %.noexc70
  invoke void @_RNvMs10_Cs8Xq8PKFYOms_3hirNtB6_9AssocItem9container(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c, ptr noundef nonnull %i.dp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %.noexc71 unwind label %bb.ab

.noexc71:                                         ; preds = %bb.av
  %i.dt = load i32, ptr %i.a, align 4, !range !11, !noalias !2391, !noundef !4
  %.not3.i = icmp eq i32 %i.dt, 2
  br i1 %.not3.i, label %_RNvXs72_Cs8Xq8PKFYOms_3hirNtB6_8ItemInNsINtNtCshzWfHUSfYae_4core7convert4FromNtB6_9ModuleDefE4from.exit.i, label %bb.aw

bb.aw:                                            ; preds = %.noexc71
  %i.du = invoke { i32, i32 } @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl6trait_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, ptr noundef nonnull %i.dp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %.noexc72 unwind label %bb.ab  ; 2 uses

.noexc72:                                         ; preds = %bb.aw
  %i.dv = extractvalue { i32, i32 } %i.du, 0      ; 2 uses
  %.not4.i = icmp eq i32 %i.dv, 0
  br i1 %.not4.i, label %bb.ax, label %_RNvXs72_Cs8Xq8PKFYOms_3hirNtB6_8ItemInNsINtNtCshzWfHUSfYae_4core7convert4FromNtB6_9ModuleDefE4from.exit8.i

_RNvXs72_Cs8Xq8PKFYOms_3hirNtB6_8ItemInNsINtNtCshzWfHUSfYae_4core7convert4FromNtB6_9ModuleDefE4from.exit.i: ; preds = %.noexc71
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 6, ptr %.sroa.4183.0..sroa_idx.i, align 4, !alias.scope !2392
  %.sroa.1317.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dx = load <2 x i32>, ptr %i.dw, align 4, !noalias !2391
  store <2 x i32> %i.dx, ptr %.sroa.1317.0..sroa_idx20.i, align 4, !alias.scope !2392
  br label %.thread115

_RNvXs72_Cs8Xq8PKFYOms_3hirNtB6_8ItemInNsINtNtCshzWfHUSfYae_4core7convert4FromNtB6_9ModuleDefE4from.exit8.i: ; preds = %.noexc72
  %i.dy = extractvalue { i32, i32 } %i.du, 1
  store i8 6, ptr %.sroa.4183.0..sroa_idx.i, align 4, !alias.scope !2393
  %.sroa.13103.0..sroa_idx106.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.dv, ptr %.sroa.13103.0..sroa_idx106.i, align 4, !alias.scope !2393
  %.sroa.15120.0..sroa_idx123.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.dy, ptr %.sroa.15120.0..sroa_idx123.i, align 4, !alias.scope !2393
  br label %.thread115

bb.ax:                                            ; preds = %.noexc72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2391
  invoke void @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl7self_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, ptr noundef nonnull %i.dp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %.noexc73 unwind label %bb.ab

.noexc73:                                         ; preds = %bb.ax
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !2391, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.09.0.copyload.i.i = load i32, ptr %.val.i, align 8, !noalias !2394 ; 2 uses
  %i.dz = icmp ne i32 %.sroa.09.0.copyload.i.i, 27
  call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp eq i32 %.sroa.09.0.copyload.i.i, 7
  br i1 %i.ea, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i, label %.thread111

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i: ; preds = %.noexc73
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 20
  %.sroa.811.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.sroa.811.sroa.0.0.copyload.i.i = load i8, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !noalias !2394
  %switch.idx.cast.i.i = zext i8 %.sroa.811.sroa.0.0.copyload.i.i to i32
  store i8 2, ptr %.sroa.4183.0..sroa_idx.i, align 4, !alias.scope !2395
  %.sroa.14.sroa.12.0..sroa.14.0..sroa_idx80.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %switch.idx.cast.i.i, ptr %.sroa.14.sroa.12.0..sroa.14.0..sroa_idx80.sroa_idx.i, align 4, !alias.scope !2395
  %.sroa.14.sroa.14.0..sroa.14.0..sroa_idx80.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.eb = load <2 x i32>, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2394
  store <2 x i32> %i.eb, ptr %.sroa.14.sroa.14.0..sroa.14.0..sroa_idx80.sroa_idx.i, align 4, !alias.scope !2395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2391
  br label %.thread115

.thread111:                                       ; preds = %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ba

.thread115:                                       ; preds = %bb.au, %_RNvXs72_Cs8Xq8PKFYOms_3hirNtB6_8ItemInNsINtNtCshzWfHUSfYae_4core7convert4FromNtB6_9ModuleDefE4from.exit.i, %_RNvXs72_Cs8Xq8PKFYOms_3hirNtB6_8ItemInNsINtNtCshzWfHUSfYae_4core7convert4FromNtB6_9ModuleDefE4from.exit8.i, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i
  %.sroa.0103.0.copyload104.ph = phi i32 [ 0, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i ], [ 0, %_RNvXs72_Cs8Xq8PKFYOms_3hirNtB6_8ItemInNsINtNtCshzWfHUSfYae_4core7convert4FromNtB6_9ModuleDefE4from.exit8.i ], [ 0, %_RNvXs72_Cs8Xq8PKFYOms_3hirNtB6_8ItemInNsINtNtCshzWfHUSfYae_4core7convert4FromNtB6_9ModuleDefE4from.exit.i ], [ 2, %bb.au ]
  %.sroa.7.0..sroa_idx105117 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx105117, i64 16, i1 false), !alias.scope !2391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.az

bb.ay:                                            ; preds = %.noexc70
  %i.ec = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(16) %i.ec, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not29 = icmp eq i32 %i.dq, -1
  br i1 %.not29, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.thread115, %bb.ay
  %.sroa.0103.0.copyload104119 = phi i32 [ %.sroa.0103.0.copyload104.ph, %.thread115 ], [ %i.dq, %bb.ay ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i32 %.sroa.0103.0.copyload104119, ptr %i.l, align 4
  %.sroa.623.0.insert.shift = select i1 %i.dl, i32 16777216, i32 0
  %.sroa.421.0.insert.insert = or disjoint i32 %4, %.sroa.623.0.insert.shift
  %.sroa.020.0.insert.ext = zext nneg i8 %i.dn to i32
  %.sroa.020.0.insert.insert = or disjoint i32 %.sroa.421.0.insert.insert, %.sroa.020.0.insert.ext
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module9find_pathNtB6_8ItemInNsECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef nonnull %i.dp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @38, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.l, i32 noundef %.sroa.020.0.insert.insert)
          to label %bb.bc unwind label %bb.ab

bb.ba:                                            ; preds = %.thread111, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ag

bb.bc:                                            ; preds = %bb.az
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ee = load i8, ptr %i.ed, align 8, !range !24, !noundef !4
  %.not30 = icmp eq i8 %i.ee, -1
  br i1 %.not30, label %bb.bb, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ef = load ptr, ptr %i.cf, align 8, !nonnull !4, !align !9, !noundef !4
  %i.eg = invoke noundef nonnull ptr @_RNvXse5_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_14MethodCallExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
          to label %bb.bg unwind label %bb.bf

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit53.sink.split: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit63, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit82
  %.sroa.0.5.ph = phi i1 [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit82 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit63 ]
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.z) #39
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit53

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit53: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit53.sink.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit82, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit63, %bb.a
  %.sroa.0.5 = phi i1 [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit82 ], [ false, %bb.a ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit63 ], [ %.sroa.0.5.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit53.sink.split ]
  ret i1 %.sroa.0.5

bb.be:                                            ; preds = %bb.bh, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.bf ], [ %i.eo, %bb.bh ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %.body67 unwind label %bb.bm

bb.bf:                                            ; preds = %bb.bi, %bb.bd
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bg:                                            ; preds = %bb.bd
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.ef, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.eg, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ek, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false)
  store i32 4, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @50, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 19, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i8 5, ptr %i.en, align 8
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.u, ptr %i.h, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCsiU5vK8fN4ZC_11ide_assists, ptr %.sroa.416.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @51, ptr noundef nonnull %i.h)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path16QualifyCandidateEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #35
          to label %bb.be unwind label %bb.bm

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.v, ptr %i.g, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.o, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.p, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %1, ptr %i.et, align 8
  %i.eu = invoke noundef zeroext i1 @_RINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB5_7Assists3addNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtNtB7_8handlers19qualify_method_call19qualify_method_call0EB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, i32 noundef %.sroa.0.0.i56, i32 noundef %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g)
          to label %bb.bi unwind label %bb.bh     ; 0 uses

bb.bi:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path16QualifyCandidateEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k)
          to label %bb.bj unwind label %bb.bf

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit77 unwind label %bb.ab

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit77: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val40 = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val40, i64 48 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !noundef !4
  %i.ex = add i32 %i.ew, -1                       ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 4
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.bk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit79

bb.bk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit77
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val40) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit79 unwind label %bb.p

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit79: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit77, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.val = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !noundef !4
  %i.fb = add i32 %i.fa, -1                       ; 2 uses
  store i32 %i.fb, ptr %i.ez, align 4
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.bl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit82

bb.bl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit79
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit82 unwind label %bb.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit82: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit79, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !noundef !4
  %i.ff = add i32 %i.fe, -1                       ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 8
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit53.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit53

bb.bm:                                            ; preds = %bb.be, %bb.aa, %bb.o, %bb.e, %bb.bh, %bb.al
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %.pn36
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20add_lifetime_to_type15infer_lifetimes(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !4 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #40
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.a
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 4
  %i.f = tail call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val)
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 -2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -2, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20add_lifetime_to_type6ChangeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtB2K_6filter6FilterINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvB13_15infer_lifetimes0EINtNtB2K_5chain5ChainIB64_INtNtB4_9into_iter8IntoIterB11_EINtNtB2O_6option8IntoIterB11_EEB6Z_ENCB5E_s_0EE9from_iterB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20add_lifetime_to_type20add_lifetime_to_type(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 14 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
end_hunk_2
begin_hunk_3_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding26destructure_struct_binding:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 11 uses
  %i.ah = load ptr, ptr %i.y, align 8, !alias.scope !3154, !noundef !4 ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null             ; 5 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl12type_of_self(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noundef nonnull align 8 %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_bindingNtB2_6Target2ty.exit.i unwind label %bb.e, !noalias !3155

bb.d:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl22type_of_binding_in_pat(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
          to label %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_bindingNtB2_6Target2ty.exit.i unwind label %bb.e, !noalias !3155

bb.e:                                             ; preds = %bb.ak, %bb.ac, %bb.ab, %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.p, %bb.d, %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_bindingNtB2_6Target2ty.exit.i: ; preds = %bb.d, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.an = load i32, ptr %i.am, align 8, !range !28, !noalias !3153, !noundef !4
  %.not75.i = icmp eq i32 %i.an, -1
  br i1 %.not75.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_bindingNtB2_6Target2ty.exit.i
  %.sroa.050.0.copyload.i = load ptr, ptr %i.v, align 8, !noalias !3153, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3153
  br label %bb.n

bb.g:                                             ; preds = %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_bindingNtB2_6Target2ty.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3153
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i: ; preds = %bb.n, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i, %bb.t, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val104.i = load ptr, ptr %i.ao, align 8, !alias.scope !3152 ; 8 uses
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val104.i) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.val104.i, i64 48 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !3155, !noundef !4
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4, !noalias !3155
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_data.exit.thread

bb.i:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !noalias !3155, !noundef !4
  %i.av = add i32 %i.au, -1                       ; 2 uses
  store i32 %i.av, ptr %i.at, align 4, !noalias !3155
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9SelfParamECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ah) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9SelfParamECsiU5vK8fN4ZC_11ide_assists.exit.i.i unwind label %bb.k, !noalias !3155

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9SelfParamECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.h
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val104.i) #39, !noalias !3155
  br label %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_data.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val104.i) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.val104.i, i64 48 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !noalias !3155, !noundef !4
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 4, !noalias !3155
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val104.i) #39
          to label %common.resume unwind label %bb.m, !noalias !3155

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9SelfParamECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val104.i) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.val104.i, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !3155, !noundef !4
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4, !noalias !3155
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_data.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !3155
  unreachable

common.resume:                                    ; preds = %bb.cz, %bb.k, %bb.l, %bb.ch, %bb.ci, %bb.cn
  %common.resume.op = phi { ptr, i32 } [ %i.fx, %bb.ci ], [ %i.ax, %bb.k ], [ %i.ax, %bb.l ], [ %.pn95.ph.i, %bb.cn ], [ %i.fx, %bb.ch ], [ %i.hf, %bb.cz ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.o, %bb.f
  %.sroa.057.0.i = phi ptr [ %.sroa.050.0.copyload.i, %bb.f ], [ %.sroa.555.0.copyload.i, %bb.o ] ; 5 uses
  %.sroa.053.0.copyload.i = load i32, ptr %.sroa.057.0.i, align 8, !noalias !3155 ; 2 uses
  %i.bh = icmp ne i32 %.sroa.053.0.copyload.i, 27
  call void @llvm.assume(i1 %i.bh)
  switch i32 %.sroa.053.0.copyload.i, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i [
    i32 14, label %bb.o
    i32 7, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i
  ]

bb.o:                                             ; preds = %bb.n
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.057.0.i, i64 16
  %.sroa.555.0.copyload.i = load ptr, ptr %.sroa.555.0..sroa_idx.i, align 8, !noalias !3155, !nonnull !4, !noundef !4
  br label %bb.n

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i: ; preds = %bb.n
  %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.057.0.i, i64 24
  %.sroa.811.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3156 ; 3 uses
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.057.0.i, i64 20
  %.sroa.811.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !3156 ; 3 uses
  %.sroa.811.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.057.0.i, i64 16
  %.sroa.811.sroa.0.0.copyload.i.i = load i8, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !noalias !3156 ; 2 uses
  %switch.idx.cast.i.i = zext nneg i8 %.sroa.811.sroa.0.0.copyload.i.i to i32
  %i.bi = icmp eq i8 %.sroa.811.sroa.0.0.copyload.i.i, 0
  br i1 %i.bi, label %bb.p, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i

bb.p:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3153
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %.sroa.012.0.i = select i1 %.not.i.i, ptr %i.bk, ptr %i.y ; 2 uses
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl5scope(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.s, ptr noundef nonnull align 8 %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.012.0.i)
          to label %bb.q unwind label %bb.e, !noalias !3155

bb.q:                                             ; preds = %bb.p
  %i.bl = load i64, ptr %i.s, align 8, !range !12, !noalias !3153, !noundef !4
  %.not78.i = icmp eq i64 %i.bl, -1
  br i1 %.not78.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull align 8 dereferenceable(88) %i.s, i64 88, i1 false), !noalias !3153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3153
  %i.bm = invoke { i32, i32 } @_RNvMs8_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_14SemanticsScope6module(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t)
          to label %bb.v unwind label %bb.u, !noalias !3155 ; 2 uses

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3153
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3153
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i

bb.u:                                             ; preds = %bb.r
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(88) %i.t) #35
          to label %bb.cn unwind label %bb.ce, !noalias !3155

bb.v:                                             ; preds = %bb.r
  %i.bo = extractvalue { i32, i32 } %i.bm, 0
  %i.bp = extractvalue { i32, i32 } %i.bm, 1
  store i32 %i.bo, ptr %i.u, align 4, !noalias !3153
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 5 uses
  store i32 %i.bp, ptr %i.bq, align 4, !noalias !3153
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.t)
          to label %bb.y unwind label %bb.w, !noalias !3155

bb.w:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !3157, !noalias !3153 ; 2 uses
  %i.bs = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.bs, label %bb.cn, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !3158, !noalias !3153, !nonnull !4, !noundef !4
  %i.bu = mul nuw i64 %.val2.i.i.i.i, 40
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !3159
  br label %bb.cn

bb.y:                                             ; preds = %bb.v
  %.val.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !3157, !noalias !3153 ; 2 uses
  %i.bv = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !3158, !noalias !3153, !nonnull !4, !noundef !4
  %i.bx = mul nuw i64 %.val.i.i.i.i, 40
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !3160
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3153
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !3153, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.ca = load ptr, ptr %i.ag, align 8, !noalias !3153, !nonnull !4, !align !9, !noundef !4
  %i.cb = load i32, ptr %i.u, align 4, !range !22, !noalias !3153, !noundef !4
  %i.cc = load i32, ptr %i.bq, align 4, !noalias !3153, !noundef !4
  %i.cd = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.cb, i32 noundef %i.cc, ptr noundef nonnull %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.aa unwind label %bb.e, !noalias !3155 ; 2 uses

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.ce = extractvalue { i32, i32 } %i.cd, 0
  %i.cf = extractvalue { i32, i32 } %i.cd, 1
  %i.cg = invoke noundef zeroext i1 @_RNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE10is_nightlyCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.ag, i32 noundef %i.ce, i32 noundef %i.cf)
          to label %bb.ab unwind label %bb.e, !noalias !3155

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 38
  %i.ci = load i8, ptr %i.ch, align 2, !range !14, !noalias !3155, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 39
  %2 = load i16, ptr %i.cj, align 1, !noalias !3155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3153
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %switch.idx.cast.i.i, ptr %i.ck, align 4, !noalias !3153
  %.sroa.3.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %.sroa.811.sroa.8.0.copyload.i.i, ptr %.sroa.3.0..sroa_idx6.i, align 4, !noalias !3153
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %.sroa.811.sroa.9.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx8.i, align 4, !noalias !3153
  store i8 2, ptr %i.r, align 4, !noalias !3153
  %i.cl = load ptr, ptr %i.ag, align 8, !noalias !3153, !nonnull !4, !align !9, !noundef !4
  %i.cm = invoke noundef i8 @_RNvMsa_Cs8Xq8PKFYOms_3hirNtB5_6Struct4kind(i32 noundef %.sroa.811.sroa.8.0.copyload.i.i, i32 noundef %.sroa.811.sroa.9.0.copyload.i.i, ptr noundef nonnull %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.ac unwind label %bb.e, !noalias !3155 ; 3 uses

bb.ac:                                            ; preds = %bb.ab
  %3 = zext i16 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3153
  %i.cn = load ptr, ptr %i.ag, align 8, !noalias !3153, !nonnull !4, !align !9, !noundef !4
  %i.co = load i32, ptr %i.u, align 4, !range !22, !noalias !3153, !noundef !4
  %i.cp = load i32, ptr %i.bq, align 4, !noalias !3153, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !3153
  %.sroa.674.0.insert.shift.i = select i1 %i.cg, i32 16777216, i32 0
  %.sroa.472.0.insert.insert.i = or disjoint i32 %4, %.sroa.674.0.insert.shift.i
  %.sroa.071.0.insert.ext.i = zext nneg i8 %i.ci to i32
  %.sroa.071.0.insert.insert.i = or disjoint i32 %.sroa.472.0.insert.insert.i, %.sroa.071.0.insert.ext.i
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module9find_pathNtB6_9ModuleDefECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, i32 noundef %i.co, i32 noundef %i.cp, ptr noundef nonnull %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @38, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.c, i32 noundef %.sroa.071.0.insert.insert.i)
          to label %bb.ad unwind label %bb.e, !noalias !3155

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3153
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cr = load i8, ptr %i.cq, align 8, !range !24, !noalias !3153, !noundef !4
  %.not79.i = icmp eq i8 %i.cr, -1
  br i1 %.not79.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !3153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3153
  %i.cs = load ptr, ptr %i.ag, align 8, !noalias !3153, !nonnull !4, !align !9, !noundef !4
  invoke void @_RNvMs0_Cs8Xq8PKFYOms_3hirNtB5_9ModuleDef5attrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.r, ptr noundef nonnull %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.ah unwind label %bb.ag, !noalias !3155

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3153
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.ak, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3153
  br label %bb.t

bb.ag:                                            ; preds = %bb.at, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_data0B7_.exit.i, %.noexc109.i, %bb.am, %bb.ai, %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ah:                                            ; preds = %bb.ae
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !range !3161, !noalias !3153, !noundef !4
  %.not80.i = icmp eq i32 %i.cv, -1
  br i1 %.not80.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.062.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !3153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3153
  %i.cw = and i64 %.sroa.062.0.copyload.i, 65536
  %i.cx = icmp ne i64 %i.cw, 0                    ; 2 uses
  %i.cy = load ptr, ptr %i.ag, align 8, !noalias !3153, !nonnull !4, !align !9, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !3153
  %i.cz = invoke { i32, i32 } @_RNvMs0_Cs8Xq8PKFYOms_3hirNtB5_9ModuleDef6module(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.al unwind label %bb.ag, !noalias !3155 ; 2 uses

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3153
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir5FieldEECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.aj
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.e, !noalias !3155

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3153
  %i.da = extractvalue { i32, i32 } %i.cz, 0      ; 2 uses
  %.not81.i = icmp eq i32 %i.da, 0
  br i1 %.not81.i, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_data0B7_.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.db = extractvalue { i32, i32 } %i.cz, 1
  %.val105.i = load i32, ptr %i.u, align 4, !noalias !3153
  %.val106.i = load i32, ptr %i.bq, align 4, !noalias !3153
  %i.dc = load ptr, ptr %i.ag, align 8, !noalias !3153, !nonnull !4, !align !9, !noundef !4
  %i.dd = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef range(i32 1, 0) %i.da, i32 noundef %i.db, ptr noundef nonnull %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %.noexc109.i unwind label %bb.ag, !noalias !3155 ; 2 uses

.noexc109.i:                                      ; preds = %bb.am
  %i.de = load ptr, ptr %i.ag, align 8, !noalias !3153, !nonnull !4, !align !9, !noundef !4
  %i.df = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %.val105.i, i32 noundef %.val106.i, ptr noundef nonnull %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %.noexc110.i unwind label %bb.ag, !noalias !3155 ; 2 uses

.noexc110.i:                                      ; preds = %.noexc109.i
  %i.dg = extractvalue { i32, i32 } %i.dd, 1
  %i.dh = extractvalue { i32, i32 } %i.df, 1
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.an, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_data0B7_.exit.i

bb.an:                                            ; preds = %.noexc110.i
  %i.dj = extractvalue { i32, i32 } %i.df, 0      ; 2 uses
  %i.dk = extractvalue { i32, i32 } %i.dd, 0      ; 2 uses
  %i.dl = icmp ne i32 %i.dk, 0
  call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp ne i32 %i.dj, 0
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp ne i32 %i.dk, %i.dj
  %i.do = and i1 %i.cx, %i.dn
  br label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_data0B7_.exit.i

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_data0B7_.exit.i: ; preds = %bb.an, %.noexc110.i, %bb.al
  %.sroa.020.0.i = phi i1 [ false, %bb.al ], [ %i.do, %bb.an ], [ %i.cx, %.noexc110.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3153
  %i.dp = load ptr, ptr %i.ag, align 8, !noalias !3153, !nonnull !4, !align !9, !noundef !4
  invoke void @_RNvMsa_Cs8Xq8PKFYOms_3hirNtB5_6Struct6fields(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, i32 noundef %.sroa.811.sroa.8.0.copyload.i.i, i32 noundef %.sroa.811.sroa.9.0.copyload.i.i, ptr noundef nonnull %i.dp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @10)
          to label %bb.ao unwind label %bb.ag, !noalias !3155

bb.ao:                                            ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_data0B7_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !3153, !noundef !4 ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 576460752303423488
  call void @llvm.assume(i1 %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3153
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !3153, !nonnull !4, !noundef !4 ; 8 uses
  %i.dv = load i64, ptr %i.n, align 8, !range !20, !noalias !3153, !noundef !4 ; 4 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dr ; 2 uses
  store ptr %i.du, ptr %i.l, align 8, !noalias !3153
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.du, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !3153
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.dv, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !3153
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.dw, ptr %.sroa.628.0..sroa_idx.i, align 8, !noalias !3153
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %1, ptr %i.dx, align 8, !noalias !3153
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.u, ptr %i.dy, align 8, !noalias !3153
  call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  %i.dz = invoke { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1u_8adapters6filter15filter_try_foldBX_B2s_INtNtB1w_6result6ResultB2s_zENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_datas_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B3X_EB4y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.du, ptr noundef nonnull %i.du, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull %i.dw)
          to label %bb.aq unwind label %bb.ap, !noalias !3163

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5FieldB1L_EECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.ap
  %.pn.i.i = phi { ptr, i32 } [ %i.ea, %bb.ap ], [ %i.eb, %bb.ar ], [ %i.eb, %bb.as ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.cm unwind label %bb.au, !noalias !3163

bb.ap:                                            ; preds = %bb.ao
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5FieldB1L_EECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5FieldE32forget_allocation_drop_remainingCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.at unwind label %bb.ar, !noalias !3163

bb.ar:                                            ; preds = %bb.aq
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = icmp eq i64 %i.dv, 0
  br i1 %i.ec, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5FieldB1L_EECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ed = shl nuw i64 %i.dv, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.du, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !3164
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5FieldB1L_EECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.at:                                            ; preds = %bb.aq
  %i.ee = extractvalue { ptr, ptr } %i.dz, 1
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.du to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  %i.ei = lshr exact i64 %i.eh, 4
  store i64 %i.dv, ptr %i.m, align 8, !alias.scope !3162, !noalias !3153
  %i.ej = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.du, ptr %i.ej, align 8, !alias.scope !3162, !noalias !3153
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 %i.ei, ptr %i.ek, align 8, !alias.scope !3162, !noalias !3153
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_datas_0EB2r_EB30_.exit.i unwind label %bb.ag, !noalias !3155

bb.au:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5FieldB1L_EECsiU5vK8fN4ZC_11ide_assists.exit.i.i
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !3163
  unreachable

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_datas_0EB2r_EB30_.exit.i: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3153
  %i.em = load i64, ptr %i.ek, align 8, !noalias !3153, !noundef !4 ; 3 uses
  %i.en = icmp ult i64 %i.em, 576460752303423488
  call void @llvm.assume(i1 %i.en)
  %i.eo = icmp eq i64 %i.em, 0
  br i1 %i.eo, label %bb.bx, label %bb.av

bb.av:                                            ; preds = %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding12collect_datas_0EB2r_EB30_.exit.i
  br i1 %.sroa.020.0.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ep = icmp samesign ult i64 %i.em, %i.dr      ; 2 uses
  %i.eq = zext i1 %i.ep to i8
  %i.er = icmp ne i8 %i.cm, 0
  %or.cond3.i = select i1 %i.er, i1 %i.ep, i1 false
  br i1 %or.cond3.i, label %bb.bx, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.es = icmp eq i8 %i.cm, 0
  br i1 %i.es, label %bb.ay, label %bb.bx

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sroa.029.0.i = phi i8 [ 1, %bb.ax ], [ %i.eq, %bb.aw ]
  %.sroa.065.0.copyload.i = load i32, ptr %.sroa.050.0.copyload.i, align 8, !noalias !3155 ; 2 uses
  %i.et = icmp ne i32 %.sroa.065.0.copyload.i, 27
  call void @llvm.assume(i1 %i.et)
end_hunk_3
