Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clap_builder-34152f4bce63195d.clap_builder.9b2a128d1b545da0-cgu.03?download=true
inline.NumInlined: 545
inline.NumDeleted: 233
begin_hunk_0_@_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group:bb.a
  %i.bm = phi ptr [ %i.j, %.lr.ph.i ], [ %i.bn, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i ] ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 104 ; 2 uses
  %.sroa.5.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.5.0.i.i = load i64, ptr %.sroa.5.0.in.i.i, align 8, !noalias !1334, !noundef !4
  %i.bo = icmp eq i64 %.sroa.5.0.i.i, %.sroa.53.0.i.i
  br i1 %i.bo, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.i, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.i: ; preds = %bb.j
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.0.in.i.i, align 8, !noalias !1334, !nonnull !4, !noundef !4
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i, ptr nonnull %.sroa.02.0.i.i, i64 %.sroa.53.0.i.i), !noalias !1334
  %i.bp = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bp, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.i, %bb.j
  %i.bq = icmp eq ptr %i.bn, %i.m
  br i1 %i.bq, label %.loopexit24, label %bb.j

.loopexit23.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.us, %bb.f, %bb.n, %bb.o, %.lr.ph, %.loopexit24
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit23.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.cs, %bb.s ], [ %i.cs, %bb.r ], [ %lpad.loopexit.split-lp68, %.loopexit23.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #20
          to label %bb.x unwind label %bb.w

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !4 ; 2 uses
  %.idx32 = mul nuw nsw i64 %i.bu, 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx32
  %i.bw = icmp eq i64 %i.bu, 0
  br i1 %i.bw, label %.loopexit22, label %.lr.ph

.loopexit24:                                      ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i.us, %.lr.ph29.split.us
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 99, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #23
          to label %bb.k unwind label %.loopexit23.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %.loopexit24
  unreachable

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit, %bb.v
  %.sroa.01.028 = phi ptr [ %i.bx, %bb.v ], [ %i.bs, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 24 ; 2 uses
  %i.by = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.bz = load i64, ptr %i.h, align 8, !noundef !4
  %i.ca = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.028, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.by, i64 noundef %i.bz)
          to label %bb.l unwind label %.loopexit23.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph
  br i1 %i.ca, label %bb.v, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %.sroa.53.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 16
  %.sroa.53.0.i.i.i = load i64, ptr %.sroa.53.0.in.i.i.i, align 8, !alias.scope !1335, !noalias !1338, !noundef !4 ; 3 uses
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 8 ; 2 uses
  %.sroa.02.0.i.i.i = load ptr, ptr %.sroa.02.0.in.i.i.i, align 8, !alias.scope !1335 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i, %.lr.ph.i.i
  %i.cb = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.cc, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 672 ; 2 uses
  %.sroa.5.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.sroa.5.0.i.i.i = load i64, ptr %.sroa.5.0.in.i.i.i, align 8, !noalias !1339, !noundef !4
  %i.cd = icmp eq i64 %.sroa.5.0.i.i.i, %.sroa.53.0.i.i.i
  br i1 %i.cd, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i: ; preds = %bb.m
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.01.0.i.i.i = load ptr, ptr %.sroa.01.0.in.i.i.i, align 8, !noalias !1339, !nonnull !4, !noundef !4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i, ptr nonnull %.sroa.02.0.i.i.i, i64 %.sroa.53.0.i.i.i), !noalias !1339
  %i.ce = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ce, label %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, %bb.m
  %i.cf = icmp eq ptr %i.cc, %i.s
  br i1 %i.cf, label %.loopexit, label %bb.m

_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i
  %i.cg = load i64, ptr %.sroa.01.028, align 8, !range !3, !noundef !4
  %i.ch = trunc nuw i64 %i.cg to i1               ; 2 uses
  br i1 %i.ch, label %bb.o, label %bb.p

.loopexit:                                        ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i
  %i.ci = load i64, ptr %i.f, align 8, !alias.scope !1336, !noundef !4 ; 3 uses
  %i.cj = load i64, ptr %i.b, align 8, !range !6, !alias.scope !1336, !noundef !4
  %i.ck = icmp eq i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.n, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE8push_mutBL_.exit

bb.n:                                             ; preds = %.loopexit
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE8push_mutBL_.exit unwind label %.loopexit23.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE8push_mutBL_.exit: ; preds = %bb.n, %.loopexit
  %i.cl = load ptr, ptr %i.e, align 8, !alias.scope !1336, !nonnull !4, !noundef !4
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ci
  store ptr %.sroa.01.028, ptr %i.cm, align 8, !noalias !1337
  %i.cn = add i64 %i.ci, 1
  store i64 %i.cn, ptr %i.f, align 8, !alias.scope !1336
  br label %bb.v

bb.o:                                             ; preds = %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit
  %i.co = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.02.0.in.i.i.i)
          to label %bb.t unwind label %.loopexit23.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit, %bb.t
  %.sroa.6.0 = phi i64 [ %i.cv, %bb.t ], [ %.sroa.53.0.i.i.i, %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit ] ; 3 uses
  %.sroa.5.0 = phi ptr [ %i.cu, %bb.t ], [ %.sroa.02.0.i.i.i, %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit ] ; 3 uses
  %.sroa.05.0 = phi i64 [ 1, %bb.t ], [ 0, %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit ]
  %i.cp = load i64, ptr %i.h, align 8, !alias.scope !1340, !noundef !4 ; 3 uses
  %i.cq = load i64, ptr %i.a, align 8, !range !6, !alias.scope !1340, !noundef !4
  %i.cr = icmp eq i64 %i.cp, %i.cq
  br i1 %i.cr, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.u unwind label %bb.r, !noalias !1341

bb.r:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = icmp ne i64 %.sroa.6.0, 0
  %or.cond.not = select i1 %i.ch, i1 %i.ct, i1 false
  br i1 %or.cond.not, label %bb.s, label %.body

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0, i64 noundef range(i64 1, 0) %.sroa.6.0, i64 noundef 1) #22, !noalias !1342
  br label %.body

bb.t:                                             ; preds = %bb.o
  %i.cu = extractvalue { ptr, i64 } %i.co, 0
  %i.cv = extractvalue { ptr, i64 } %i.co, 1
  br label %bb.p

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.cw = load ptr, ptr %i.g, align 8, !alias.scope !1340, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cp ; 3 uses
  store i64 %.sroa.05.0, ptr %i.cx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cy = add i64 %i.cp, 1
  store i64 %i.cy, ptr %i.h, align 8, !alias.scope !1340
  br label %bb.v

bb.v:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE8push_mutBL_.exit, %bb.u, %bb.l
  %i.cz = icmp eq ptr %i.bx, %i.bv
  br i1 %i.cz, label %.loopexit22.loopexit, label %.lr.ph

bb.w:                                             ; preds = %bb.x, %.body
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.x:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #20
          to label %common.resume unwind label %bb.w
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands(ptr noalias noundef readonly align 8 captures(none) dereferenceable(776) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 776
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs5_BS_BQ_23has_visible_subcommands0EBW_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i
  %i.f = phi ptr [ %i.g, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 776 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %.sroa.6.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0.i.i = load i64, ptr %.sroa.6.0.in.i.i, align 8, !alias.scope !1347, !noalias !1348, !noundef !4
  %i.h = icmp eq i64 %.sroa.6.0.i.i, 4
  br i1 %i.h, label %bb.b, label %.split.i

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.02.0.i.i = load ptr, ptr %.sroa.02.0.in.i.i, align 8, !alias.scope !1347, !noalias !1348, !nonnull !4, !noundef !4
  %i.i = load i32, ptr %.sroa.02.0.i.i, align 1
  %i.j = icmp ne i32 %i.i, 1886152040
  %i.k = zext i1 %i.j to i32
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i, label %.split.i

.split.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 764
  %i.m = load <2 x i32>, ptr %i.l, align 4, !alias.scope !1347, !noalias !1348
  %.fr1 = freeze <2 x i32> %i.m
  %1 = and <2 x i32> %.fr1, splat (i32 8388608)
  %.scalar = bitcast <2 x i32> %1 to i64
  %.sroa.01.0.i.i = icmp eq i64 %.scalar, 0
  br i1 %.sroa.01.0.i.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs5_BS_BQ_23has_visible_subcommands0EBW_.exit, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i: ; preds = %.split.i, %bb.b
  %.not6.i = icmp eq ptr %i.g, %i.e
  br i1 %.not6.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs5_BS_BQ_23has_visible_subcommands0EBW_.exit, label %.lr.ph.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs5_BS_BQ_23has_visible_subcommands0EBW_.exit: ; preds = %.split.i, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i ], [ true, %.split.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find(ptr noalias noundef readonly align 8 captures(none) dereferenceable(776) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 672
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2x_7Command4find0EBW_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.53.0.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.53.0.i.i = load i64, ptr %.sroa.53.0.in.i.i, align 8, !noalias !1352, !noundef !4 ; 2 uses
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.02.0.i.i = load ptr, ptr %.sroa.02.0.in.i.i, align 8, !nonnull !4
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i, %.lr.ph.i
  %i.g = phi ptr [ %i.b, %.lr.ph.i ], [ %i.h, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 672 ; 2 uses
  %.sroa.5.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.0.i.i = load i64, ptr %.sroa.5.0.in.i.i, align 8, !noalias !1352, !noundef !4
  %i.i = icmp eq i64 %.sroa.5.0.i.i, %.sroa.53.0.i.i
  br i1 %i.i, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i: ; preds = %bb.b
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.0.in.i.i, align 8, !noalias !1352, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i, ptr nonnull %.sroa.02.0.i.i, i64 %.sroa.53.0.i.i), !noalias !1352
  %i.j = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2x_7Command4find0EBW_.exit, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i, %bb.b
  %i.k = icmp eq ptr %i.h, %i.e
  br i1 %i.k, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2x_7Command4find0EBW_.exit, label %bb.b

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2x_7Command4find0EBW_.exit: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i ], [ %i.g, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvNvMNtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB4_7Command3new9new_inner(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([776 x i8]) align 8 captures(none) dereferenceable(776) initializes((0, 32), (40, 64), (80, 88), (104, 112), (128, 136), (152, 160), (176, 184), (200, 208), (224, 232), (248, 472), (488, 496), (512, 520), (536, 544), (560, 568), (584, 592), (608, 616), (632, 640), (656, 664), (680, 688), (704, 712), (728, 736), (752, 773)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEBH_.exit:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i32 -1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 -1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 -1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 -1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i64 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 -1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i64 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 0, ptr %i.n, align 8
  %.sroa.33.248..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.33.248..sroa_idx, align 8
  %.sroa.34.248..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.37.272..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34.248..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.37.272..sroa_idx, align 8
  %.sroa.38.272..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.sroa.41.296..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.272..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.41.296..sroa_idx, align 8
  %.sroa.42.296..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %.sroa.42.296..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i64 -1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 -1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 -1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %i.v, align 8
  %.sroa.45.320..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.320..sroa_idx, align 8
  %.sroa.46.320..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.48.320..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.320..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.320..sroa_idx, align 8
  %.sroa.49.320..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.52.368..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.320..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.368..sroa_idx, align 8
  %.sroa.53.368..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.56.392..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.368..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.56.392..sroa_idx, align 8
  %.sroa.57.392..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 0, ptr %.sroa.57.392..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i8 0, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.ae, align 8
  %.sroa.60.416..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.60.416..sroa_idx, align 8
  %.sroa.61.416..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.63.416..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61.416..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.63.416..sroa_idx, align 8
  %.sroa.64.416..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 0, ptr %.sroa.64.416..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtBY_7Command29get_global_arg_conflicts_with0s_0INtB7_5FnMutTRRNtNtB10_3arg3ArgEE8call_mutB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !8, !noundef !4
  %.val1 = load ptr, ptr %1, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %.val, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.sroa.5.0.in.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %.sroa.5.0.i = load i64, ptr %.sroa.5.0.in.i, align 8, !noundef !4 ; 2 uses
  %.sroa.53.0.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.53.0.i = load i64, ptr %.sroa.53.0.in.i, align 8, !noundef !4
  %i.c = icmp eq i64 %.sroa.5.0.i, %.sroa.53.0.i
  br i1 %i.c, label %bb.b, label %_RNCNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.0.in.i, align 8, !nonnull !4, !noundef !4
  %.sroa.02.0.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.sroa.01.0.i, ptr nonnull %.sroa.02.0.i, i64 %.sroa.5.0.i)
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_RNCNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit

_RNCNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB9_7Command29get_global_arg_conflicts_with0s_0Bd_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !4
  %.not.i = icmp eq i64 %i.b, 2
  br i1 %.not.i, label %bb.b, label %_RNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command15get_positionals0Bb_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 656
  %i.d = load i32, ptr %i.c, align 8, !range !14, !noundef !4
  %.not1.i = icmp eq i32 %i.d, -1
end_hunk_0
