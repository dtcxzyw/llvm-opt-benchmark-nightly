Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.14?download=true
inline.NumInlined: 1814
inline.NumDeleted: 645
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtCs8frGy5WneL6_4fish10parse_util26detect_parse_errors_in_ast:bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.419.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.520.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.fv = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.fy = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.sroa.020.0 = phi i8 [ 0, %bb.a ], [ %.sroa.020.1, %bb.i ] ; 16 uses
  %.sroa.019.0 = phi i1 [ false, %bb.a ], [ %.sroa.019.1, %bb.i ] ; 16 uses
  %.sroa.018.0 = phi i1 [ false, %bb.a ], [ %.sroa.018.1, %bb.i ] ; 16 uses
  %.sroa.19.0 = phi i8 [ 0, %bb.a ], [ %.sroa.19.1, %bb.i ] ; 16 uses
  %.sroa.05.0 = phi i8 [ 0, %bb.a ], [ %.sroa.05.1, %bb.i ] ; 17 uses
  %i.gc = invoke { ptr, ptr } @_RNvXsx_NtCs8frGy5WneL6_4fish3astNtB5_9TraversalNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit ; 2 uses

.loopexit:                                        ; preds = %bb.ao
  %lpad.loopexit128 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.in, %bb.hh, %.noexc107, %bb.hf, %.noexc105, %bb.hd, %bb.hc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i378.i, %.thread20.i, %bb.bf, %.noexc80, %bb.bd, %bb.bc, %.noexc77, %.thread.i56, %.noexc72, %_RNvNtCs8frGy5WneL6_4fish10parse_util13get_first_arg.exit.thread.i, %.noexc70, %.noexc69, %bb.am, %.noexc67, %.noexc, %bb.ak, %bb.io, %bb.iq, %bb.is, %bb.iu, %bb.jd, %bb.jb, %bb.iy, %bb.hb, %bb.ha, %bb.gz, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.d, %bb.b
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit20.i.invoke, %_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants12ParseKeywordNtB5_13SliceContains14slice_containsBG_.exit.i, %bb.ap
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ht, %bb.hw, %.thread.i101, %bb.ba, %bb.bp, %bb.cc, %bb.ct, %bb.gq, %bb.gs, %bb.gt, %.body370.thread.i, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.ad, %.thread.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.of, %bb.ct ], [ %i.if, %bb.ad ], [ %.pn.ph.i, %bb.hw ], [ %.pn2521.i, %.thread.i ], [ %i.tt, %bb.gt ], [ %.pn226.pn80.i, %.body370.thread.i ], [ %.pn226.i, %bb.gs ], [ %.pn203.ph.i, %bb.gv ], [ %i.nh, %bb.cc ], [ %.pn195.ph.i, %bb.gw ], [ %i.mp, %bb.bp ], [ %.pn192.ph.i, %bb.gx ], [ %i.li, %bb.ba ], [ %.pn186.ph.i, %bb.gy ], [ %i.tr, %bb.gq ], [ %.pn399.i, %.thread.i101 ], [ %i.vi, %bb.ht ], [ %lpad.loopexit128, %.loopexit ], [ %lpad.loopexit130, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.da) #29
          to label %common.resume unwind label %bb.jg

bb.c:                                             ; preds = %bb.b
  %i.gd = extractvalue { ptr, ptr } %i.gc, 0      ; 6 uses
  %.not = icmp eq ptr %i.gd, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ge = extractvalue { ptr, ptr } %i.gc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ge) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gg = load ptr, ptr %i.gf, align 8, !invariant.load !12 ; 5 uses
  invoke void %i.gg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cz, ptr noundef nonnull %i.gd)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.gh, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit: ; preds = %bb.e
  %i.gj = trunc nuw i8 %.sroa.05.0 to i1
  %or.cond = select i1 %.sroa.018.0, i1 true, i1 %.sroa.019.0
  %spec.select = select i1 %or.cond, i8 1, i8 %.sroa.020.0
  %i.gk = or i8 %spec.select, %.sroa.19.0         ; 2 uses
  %i.gl = trunc nuw i8 %i.gk to i1
  %or.cond4 = select i1 %i.gj, i1 true, i1 %i.gl
  %.sroa.0.0 = select i1 %or.cond4, i8 %.sroa.05.0, i8 2
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  %i.gm = insertvalue { i8, i8 } poison, i8 %.sroa.0.0, 0
  %i.gn = insertvalue { i8, i8 } %i.gm, i8 %i.gk, 1
  ret { i8, i8 } %i.gn

bb.h:                                             ; preds = %bb.d
  %i.go = load i64, ptr %i.cz, align 8, !range !1361, !noundef !12
  switch i64 %i.go, label %bb.i [
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 15, label %bb.ag
    i64 16, label %bb.ah
    i64 21, label %bb.ai
    i64 23, label %bb.aj
    i64 24, label %bb.ak
    i64 26, label %bb.gz
    i64 28, label %bb.ha
    i64 35, label %bb.hb
  ]

bb.i:                                             ; preds = %bb.je, %bb.jc, %bb.iz, %bb.jf, %bb.ja, %bb.ix, %bb.j, %bb.iw, %bb.iv, %bb.it, %bb.ir, %bb.ip, %_RNvNtCs8frGy5WneL6_4fish10parse_util32detect_errors_in_job_conjunction.exit, %_RNvNtCs8frGy5WneL6_4fish10parse_util33detect_errors_in_backgrounded_job.exit, %bb.h
  %.sroa.020.1 = phi i8 [ %.sroa.020.0, %bb.h ], [ %.sroa.020.0, %_RNvNtCs8frGy5WneL6_4fish10parse_util33detect_errors_in_backgrounded_job.exit ], [ %.sroa.020.0, %bb.j ], [ %.sroa.020.0, %_RNvNtCs8frGy5WneL6_4fish10parse_util32detect_errors_in_job_conjunction.exit ], [ %.sroa.020.0, %bb.ip ], [ %.sroa.020.0, %bb.ir ], [ %.sroa.020.0, %bb.it ], [ %.sroa.020.0, %bb.iv ], [ %.sroa.020.0, %bb.iw ], [ %.sroa.020.0, %bb.ja ], [ %.sroa.020.0, %bb.iz ], [ %.sroa.020.0, %bb.ix ], [ %.sroa.020.0, %bb.jf ], [ %..sroa.020.0, %bb.jc ], [ %.sroa.020.0, %bb.je ]
  %.sroa.019.1 = phi i1 [ %.sroa.019.0, %bb.h ], [ %.sroa.019.0, %_RNvNtCs8frGy5WneL6_4fish10parse_util33detect_errors_in_backgrounded_job.exit ], [ %.sroa.019.0, %bb.j ], [ %.sroa.019.0, %_RNvNtCs8frGy5WneL6_4fish10parse_util32detect_errors_in_job_conjunction.exit ], [ %.sroa.019.0, %bb.ip ], [ %.sroa.019.0, %bb.ir ], [ %.sroa.019.0, %bb.it ], [ %.sroa.019.0, %bb.iv ], [ %.sroa.019.0, %bb.iw ], [ %.sroa.019.0, %bb.ja ], [ %..sroa.019.0, %bb.iz ], [ %.sroa.019.0, %bb.ix ], [ %.sroa.019.0, %bb.jf ], [ %.sroa.019.0, %bb.jc ], [ %.sroa.019.0, %bb.je ]
  %.sroa.018.1 = phi i1 [ %.sroa.018.0, %bb.h ], [ %.sroa.018.0, %_RNvNtCs8frGy5WneL6_4fish10parse_util33detect_errors_in_backgrounded_job.exit ], [ %.sroa.018.0, %bb.j ], [ %.sroa.018.0, %_RNvNtCs8frGy5WneL6_4fish10parse_util32detect_errors_in_job_conjunction.exit ], [ %spec.select34, %bb.ip ], [ %spec.select35, %bb.ir ], [ %spec.select36, %bb.it ], [ %spec.select37, %bb.iv ], [ %.sroa.018.0, %bb.iw ], [ %.sroa.018.0, %bb.ja ], [ %.sroa.018.0, %bb.iz ], [ %.sroa.018.0, %bb.ix ], [ %.sroa.018.0, %bb.jf ], [ %.sroa.018.0, %bb.jc ], [ %.sroa.018.0, %bb.je ]
  %.sroa.19.1 = phi i8 [ %.sroa.19.0, %bb.h ], [ %.sroa.19.0, %_RNvNtCs8frGy5WneL6_4fish10parse_util33detect_errors_in_backgrounded_job.exit ], [ %.sroa.19.0, %bb.j ], [ %.sroa.19.0, %_RNvNtCs8frGy5WneL6_4fish10parse_util32detect_errors_in_job_conjunction.exit ], [ %.sroa.19.0, %bb.ip ], [ %.sroa.19.0, %bb.ir ], [ %.sroa.19.0, %bb.it ], [ %.sroa.19.0, %bb.iv ], [ %.sroa.19.0, %bb.iw ], [ %.sroa.19.0, %bb.ja ], [ %.sroa.19.0, %bb.iz ], [ %.sroa.19.0, %bb.ix ], [ %i.yh, %bb.jf ], [ %.sroa.19.0, %bb.jc ], [ %.sroa.19.0, %bb.je ]
  %.sroa.05.1 = phi i8 [ %.sroa.05.0, %bb.h ], [ %i.wy, %_RNvNtCs8frGy5WneL6_4fish10parse_util33detect_errors_in_backgrounded_job.exit ], [ %.sroa.05.0, %bb.j ], [ %i.wz, %_RNvNtCs8frGy5WneL6_4fish10parse_util32detect_errors_in_job_conjunction.exit ], [ %i.xe, %bb.ip ], [ %i.xj, %bb.ir ], [ %i.xo, %bb.it ], [ %i.xt, %bb.iv ], [ %i.xu, %bb.iw ], [ %.sroa.05.0, %bb.ja ], [ %.sroa.05.0, %bb.iz ], [ %.sroa.05.0, %bb.ix ], [ %i.yf, %bb.jf ], [ %.sroa.05.0, %bb.jc ], [ %.sroa.05.0, %bb.je ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.b

bb.j:                                             ; preds = %bb.h
  %i.gp = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !145, !noundef !12 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load i32, ptr %i.gq, align 8, !range !34, !noundef !12
  %.not33 = icmp eq i32 %i.gr, 2
  br i1 %.not33, label %bb.i, label %bb.hc

bb.k:                                             ; preds = %bb.h
  %i.gs = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !145, !noundef !12 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 144
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !1362, !nonnull !12, !noundef !12 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 152
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !1362, !noundef !12
  %i.gy = getelementptr inbounds nuw [144 x i8], ptr %i.gv, i64 %i.gx ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %bb.k
  %.sroa.06.08.i = phi i1 [ true, %bb.k ], [ %.sroa.06.2.i, %bb.q ]
  %.sroa.67.0.i = phi ptr [ %i.gt, %bb.k ], [ %.sroa.67.2.i, %bb.q ] ; 3 uses
  %.sroa.9.0.i = phi ptr [ %i.gv, %bb.k ], [ %.sroa.9.1.i, %bb.q ] ; 4 uses
  %.sroa.14.0.i = phi ptr [ %i.gv, %bb.k ], [ %i.hd, %bb.q ] ; 5 uses
  br i1 %.sroa.06.08.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i = icmp eq ptr %.sroa.67.0.i, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.67.1.i = phi ptr [ %.sroa.67.0.i, %bb.l ], [ null, %bb.m ]
  %i.gz = icmp eq ptr %.sroa.9.0.i, %i.gy
  br i1 %i.gz, label %_RNvNtCs8frGy5WneL6_4fish10parse_util32detect_errors_in_job_conjunction.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 144
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.06.2.i = phi i1 [ false, %bb.o ], [ true, %bb.m ]
  %.sroa.67.2.i = phi ptr [ %.sroa.67.1.i, %bb.o ], [ null, %bb.m ]
  %.sroa.9.1.i = phi ptr [ %i.ha, %bb.o ], [ %.sroa.9.0.i, %bb.m ]
  %.sroa.0.0.i2.i.ph.i.i = phi ptr [ %i.hb, %bb.o ], [ %.sroa.67.0.i, %bb.m ]
  %i.hc = icmp eq ptr %.sroa.14.0.i, %i.gy
  br i1 %i.hc, label %_RNvNtCs8frGy5WneL6_4fish10parse_util32detect_errors_in_job_conjunction.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.14.0.i, i64 144
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph.i.i, i64 16
  %i.hf = load i32, ptr %i.he, align 8, !range !34, !noundef !12
  %.not22.i = icmp eq i32 %i.hf, 2
  br i1 %.not22.i, label %bb.l, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not184.i, label %_RNvNtCs8frGy5WneL6_4fish10parse_util32detect_errors_in_job_conjunction.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !1362
  store i64 0, ptr %i.cw, align 8, !noalias !1362
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !1362
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.517.0..sroa_idx.i, i8 0, i64 25, i1 false), !noalias !1362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !1362
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast16TokenConjunctionNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.cq, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %.sroa.14.0.i)
          to label %bb.t unwind label %.thread22.i, !noalias !1362

.thread22.i:                                      ; preds = %bb.t, %bb.s
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.hh = load i32, ptr %i.cq, align 4, !range !220, !noalias !1362, !noundef !12
  %i.hi = trunc nuw i32 %i.hh to i1
  %i.hj = load i32, ptr %i.fq, align 4, !noalias !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !1362
  %i.hk = zext i32 %i.hj to i64
  %4 = select i1 %i.hi, i64 %i.hk, i64 0
  store i64 %4, ptr %i.fp, align 8, !noalias !1362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !1362
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast16TokenConjunctionNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.cp, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %.sroa.14.0.i)
          to label %bb.u unwind label %.thread22.i, !noalias !1362

bb.u:                                             ; preds = %bb.t
  %i.hl = load i32, ptr %i.cp, align 4, !range !220, !noalias !1362, !noundef !12
  %i.hm = trunc nuw i32 %i.hl to i1
  %i.hn = load i32, ptr %i.fr, align 4, !noalias !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !1362
  %i.ho = zext i32 %i.hn to i64
  %5 = select i1 %i.hm, i64 %i.ho, i64 0
  store i64 %5, ptr %i.fo, align 8, !noalias !1362
  store i8 1, ptr %i.fn, align 8, !noalias !1362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !1362
  store i64 0, ptr %i.cu, align 8, !noalias !1362
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !1362
  store i64 0, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !1362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !1362
  %i.hp = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329)
          to label %bb.v unwind label %.loopexit.split-lp29.i, !noalias !1362 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.w, %.loopexit.split-lp29.i, %.loopexit28.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp31.i, %.loopexit.split-lp29.i ], [ %lpad.loopexit30.i, %.loopexit28.i ], [ %lpad.phi181, %bb.w ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cu) #29
          to label %.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1362

.loopexit28.i:                                    ; preds = %.noexc28.i.preheader
  %lpad.loopexit30.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

.loopexit.split-lp29.i:                           ; preds = %bb.u
  %lpad.loopexit.split-lp31.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

bb.v:                                             ; preds = %bb.u
  %i.hq = extractvalue { ptr, i64 } %i.hp, 0
  %i.hr = extractvalue { ptr, i64 } %i.hp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !1362
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.14.0.i, i64 12
  %i.ht = load i8, ptr %i.hs, align 4, !range !754, !noalias !1362, !noundef !12
  %i.hu = icmp eq i8 %i.ht, 8
  %..i = select i1 %i.hu, ptr @331, ptr @330
  store i64 1, ptr %i.cs, align 8, !noalias !1362
  store ptr %..i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1362
  store i64 2, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !1362
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ct, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hq, i64 noundef %i.hr, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.cs, i64 noundef 1)
          to label %bb.x unwind label %.loopexit177, !noalias !1362

.loopexit177:                                     ; preds = %bb.v
  %lpad.loopexit179 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp178:                            ; preds = %bb.y
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit177, %.loopexit.split-lp178
  %lpad.phi181 = phi { ptr, i32 } [ %lpad.loopexit179, %.loopexit177 ], [ %lpad.loopexit.split-lp180, %.loopexit.split-lp178 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1362

bb.x:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %i.hv = load i8, ptr %i.ct, align 8, !range !32, !alias.scope !1365, !noalias !1368, !noundef !12
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.y, label %.noexc28.i.preheader, !prof !23

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !1370
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.hy = load i8, ptr %i.hx, align 1, !range !708, !alias.scope !1365, !noalias !1368, !noundef !12
  store i8 %i.hy, ptr %i.co, align 1, !noalias !1370
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @332) #28
          to label %.noexc.i unwind label %.loopexit.split-lp178, !noalias !1362

.noexc.i:                                         ; preds = %bb.y
  unreachable

.noexc28.i.preheader:                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit29.i unwind label %.loopexit28.i, !noalias !1362

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit29.i: ; preds = %.noexc28.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !1362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !noalias !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !1362
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.z, !noalias !1362

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit29.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %.body.i unwind label %bb.aa, !noalias !1362

bb.aa:                                            ; preds = %bb.z
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !1362
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit29.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ab, !noalias !1362

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ab, %bb.z
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ib, %bb.ab ], [ %i.hz, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !noalias !1362
  br label %.thread.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !noalias !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !1362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr noundef nonnull align 8 dereferenceable(48) %i.cw, i64 48, i1 false), !noalias !1362
  %i.ic = load i64, ptr %i.dr, align 8, !alias.scope !1371, !noalias !1374, !noundef !12 ; 3 uses
  %i.id = load i64, ptr %3, align 8, !range !48, !alias.scope !1371, !noalias !1374, !noundef !12
  %i.ie = icmp eq i64 %i.ic, %i.id
  br i1 %i.ie, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.af unwind label %bb.ad, !noalias !1374

bb.ad:                                            ; preds = %bb.ac
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cr) #29
          to label %.body unwind label %bb.ae, !noalias !1362

bb.ae:                                            ; preds = %bb.ad
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !1362
  unreachable

bb.af:                                            ; preds = %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.ih = load ptr, ptr %i.ds, align 8, !alias.scope !1371, !noalias !1374, !nonnull !12, !noundef !12
  %i.ii = getelementptr inbounds nuw [48 x i8], ptr %i.ih, i64 %i.ic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ii, ptr noundef nonnull align 8 dereferenceable(48) %i.cr, i64 48, i1 false), !noalias !1362
  %i.ij = add i64 %i.ic, 1
  store i64 %i.ij, ptr %i.dr, align 8, !alias.scope !1371, !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !1362
  br label %_RNvNtCs8frGy5WneL6_4fish10parse_util32detect_errors_in_job_conjunction.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %.thread.i
  %lpad.loopexit.split-lp1678 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !1362
  unreachable

.thread.i:                                        ; preds = %.body.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %.thread22.i
  %.pn2521.i = phi { ptr, i32 } [ %i.hg, %.thread22.i ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cw) #29
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1362

bb.ag:                                            ; preds = %bb.h
  %i.ik = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !145, !noundef !12 ; 3 uses
  %i.il = invoke noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast10KeywordEndNtB4_4Leaf10has_sourceB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ik)
          to label %bb.io unwind label %.loopexit.split-lp.loopexit

bb.ah:                                            ; preds = %bb.h
  %i.im = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !145, !noundef !12 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = invoke noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast15TokenRightBraceNtB4_4Leaf10has_sourceB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.in)
          to label %bb.iq unwind label %.loopexit.split-lp.loopexit

bb.ai:                                            ; preds = %bb.h
  %i.ip = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !145, !noundef !12 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 208
  %i.ir = invoke noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast10KeywordEndNtB4_4Leaf10has_sourceB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.iq)
          to label %bb.is unwind label %.loopexit.split-lp.loopexit

bb.aj:                                            ; preds = %bb.h
  %i.is = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !145, !noundef !12 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = invoke noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast10KeywordEndNtB4_4Leaf10has_sourceB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.it)
          to label %bb.iu unwind label %.loopexit.split-lp.loopexit

bb.ak:                                            ; preds = %bb.h
  %i.iv = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !145, !noundef !12 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1381
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iv)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.ak
  %i.iw = load i32, ptr %i.al, align 4, !range !220, !noalias !1381, !noundef !12
  %i.ix = trunc nuw i32 %i.iw to i1
  %i.iy = load i32, ptr %i.de, align 4, !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1381
  %i.iz = zext i32 %i.iy to i64
  %6 = select i1 %i.ix, i64 %i.iz, i64 0          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1381
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iv)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit

.noexc67:                                         ; preds = %.noexc
  %i.ja = load i32, ptr %i.ak, align 4, !range !220, !noalias !1381, !noundef !12
  %i.jb = trunc nuw i32 %i.ja to i1
  %i.jc = load i32, ptr %i.df, align 4, !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1381
  %i.jd = zext i32 %i.jc to i64
  %7 = select i1 %i.jb, i64 %i.jd, i64 0          ; 8 uses
  %i.je = invoke noundef i8 @_RNvMsr_NtCs8frGy5WneL6_4fish3astNtB5_18DecoratedStatement10decoration(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iv)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc68:                                         ; preds = %.noexc67
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %.val.i = load ptr, ptr %i.jf, align 8, !alias.scope !1379, !noalias !1383, !nonnull !12, !noundef !12 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %.val245.i = load i64, ptr %i.jg, align 8, !alias.scope !1379, !noalias !1383, !noundef !12 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.val245.i, 4
  %i.jh = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i
  %i.ji = icmp eq i64 %.val245.i, 0
  br i1 %i.ji, label %_RNvNtCs8frGy5WneL6_4fish10parse_util13get_first_arg.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc68, %bb.al
  %.sroa.01.02.i.i = phi ptr [ %i.jl, %bb.al ], [ %.val.i, %.noexc68 ] ; 3 uses
  %i.jj = load i32, ptr %.sroa.01.02.i.i, align 8, !range !220, !noundef !12
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.01.02.i.i, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.jh
  br i1 %i.jm, label %_RNvNtCs8frGy5WneL6_4fish10parse_util13get_first_arg.exit.thread.i, label %.lr.ph.i.i

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.jn = invoke noundef nonnull align 4 ptr @_RNvMs9_NtCs8frGy5WneL6_4fish3astNtB5_21ArgumentOrRedirection8argument(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.01.02.i.i)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit

.noexc69:                                         ; preds = %bb.am
  %i.jo = invoke { ptr, i64 } @_RNvYNtNtCs8frGy5WneL6_4fish3ast8ArgumentNtB4_4Node10try_sourceB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.jn, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc70:                                         ; preds = %.noexc69
  %i.jp = extractvalue { ptr, i64 } %i.jo, 0      ; 2 uses
  %.not181.i = icmp eq ptr %i.jp, null            ; 2 uses
  %i.jq = extractvalue { ptr, i64 } %i.jo, 1
  %.sroa.3.0.i = select i1 %.not181.i, i64 0, i64 %i.jq
  %.sroa.018.0.i = select i1 %.not181.i, ptr inttoptr (i64 4 to ptr), ptr %i.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1381
  store ptr %.sroa.018.0.i, ptr %i.y, align 8, !noalias !1384
  store i64 %.sroa.3.0.i, ptr %i.dg, align 8, !noalias !1384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1384
  store ptr @251, ptr %i.x, align 8, !noalias !1384
  store i64 2, ptr %i.dh, align 8, !noalias !1384
  store ptr @252, ptr %i.di, align 8, !noalias !1384
  store i64 6, ptr %i.dj, align 8, !noalias !1384
  %i.jr = invoke noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.x, i64 noundef 2)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit

.noexc71:                                         ; preds = %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1381
  br label %_RNvNtCs8frGy5WneL6_4fish10parse_util13get_first_arg.exit.thread.i

_RNvNtCs8frGy5WneL6_4fish10parse_util13get_first_arg.exit.thread.i: ; preds = %bb.al, %.noexc71, %.noexc68
  %.sroa.019.0.i = phi i1 [ %i.jr, %.noexc71 ], [ false, %.noexc68 ], [ false, %bb.al ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !1381
  %i.js = invoke { ptr, ptr } @_RNvMsw_NtCs8frGy5WneL6_4fish3astNtB5_9Traversal6parent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.iv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @346)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc72:                                         ; preds = %_RNvNtCs8frGy5WneL6_4fish10parse_util13get_first_arg.exit.thread.i
  %i.jt = extractvalue { ptr, ptr } %i.js, 0
  %i.ju = extractvalue { ptr, ptr } %i.js, 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  %i.jw = load ptr, ptr %i.jv, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.jw(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cn, ptr noundef %i.jt) #35
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit, !inline_history !1387

.noexc73:                                         ; preds = %.noexc72
  %i.jx = load i64, ptr %i.cn, align 8, !range !1361, !noalias !1381, !noundef !12
  %i.jy = icmp eq i64 %i.jx, 7
  br i1 %i.jy, label %bb.an, label %bb.ap, !prof !674

bb.an:                                            ; preds = %.noexc73
  %i.jz = load ptr, ptr %i.dk, align 8, !noalias !1381, !nonnull !12, !align !145, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !1381
  %i.ka = load ptr, ptr %i.dl, align 8, !alias.scope !1376, !noalias !1388, !nonnull !12, !noundef !12 ; 4 uses
  %i.kb = load i64, ptr %i.dm, align 8, !alias.scope !1376, !noalias !1388, !noundef !12 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.kb, 24
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 %.idx.i ; 2 uses
  %i.kd = icmp eq i64 %i.kb, 0
  br i1 %i.kd, label %.loopexit20.i.invoke, label %.lr.ph.i261.i

.lr.ph.i261.i:                                    ; preds = %bb.an, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_11JobPipelineENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_NCNvNtB1j_10parse_util36detect_errors_in_decorated_statement0E0E0B1j_.exit.i.i
  %i.ke = phi ptr [ %i.kf, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_11JobPipelineENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_NCNvNtB1j_10parse_util36detect_errors_in_decorated_statement0E0E0B1j_.exit.i.i ], [ %i.kc, %bb.an ] ; 3 uses
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 -24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.kg = load i64, ptr %i.kf, align 8, !range !31, !alias.scope !1392, !noalias !1395, !noundef !12
  %i.kh = trunc nuw i64 %i.kg to i1
  br i1 %i.kh, label %bb.ao, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_11JobPipelineENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_NCNvNtB1j_10parse_util36detect_errors_in_decorated_statement0E0E0B1j_.exit.i.i

bb.ao:                                            ; preds = %.lr.ph.i261.i
  %i.ki = getelementptr inbounds i8, ptr %i.ke, i64 -16
  %i.kj = load ptr, ptr %i.ki, align 8, !alias.scope !1392, !noalias !1395, !nonnull !12
  %i.kk = getelementptr inbounds i8, ptr %i.ke, i64 -8
  %i.kl = load ptr, ptr %i.kk, align 8, !alias.scope !1392, !noalias !1395, !nonnull !12, !align !145
  %i.km = getelementptr i8, ptr %i.kl, i64 64
  %.val.i.i.i = load ptr, ptr %i.km, align 8, !noalias !1398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1399
  invoke void %.val.i.i.i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noundef nonnull %i.kj) #35
          to label %.noexc74 unwind label %.loopexit, !inline_history !1387

.noexc74:                                         ; preds = %bb.ao
  %i.kn = load i64, ptr %i.w, align 8, !range !1361, !noalias !1399, !noundef !12
  %i.ko = icmp eq i64 %i.kn, 8
  %i.kp = load ptr, ptr %i.dn, align 8, !noalias !1399, !nonnull !12, !align !145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1399
  br i1 %i.ko, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_11JobPipelineENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_NCNvNtBN_10parse_util36detect_errors_in_decorated_statement0E0E0B3L_EBN_.exit.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_11JobPipelineENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_NCNvNtB1j_10parse_util36detect_errors_in_decorated_statement0E0E0B1j_.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_11JobPipelineENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_NCNvNtB1j_10parse_util36detect_errors_in_decorated_statement0E0E0B1j_.exit.i.i: ; preds = %.noexc74, %.lr.ph.i261.i
  %i.kq = icmp eq ptr %i.ka, %i.kf
  br i1 %i.kq, label %.loopexit20.i.invoke, label %.lr.ph.i261.i

bb.ap:                                            ; preds = %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !1381
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @375, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @376) #28
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc75:                                         ; preds = %bb.ap
  unreachable

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_11JobPipelineENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_NCNvNtBN_10parse_util36detect_errors_in_decorated_statement0E0E0B3L_EBN_.exit.i: ; preds = %.noexc74
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 104
  %i.ks = load i64, ptr %i.kr, align 8, !noundef !12
  %i.kt = icmp ne i64 %i.ks, 0                    ; 2 uses
  br i1 %i.kt, label %_RNvNtCs8frGy5WneL6_4fish3ast12is_same_node.exit.i, label %.thread.i56

_RNvNtCs8frGy5WneL6_4fish3ast12is_same_node.exit.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_11JobPipelineENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_NCNvNtBN_10parse_util36detect_errors_in_decorated_statement0E0E0B3L_EBN_.exit.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %.not88.i = icmp eq ptr %i.ku, %i.jz            ; 2 uses
  %.not89.i = icmp ne i8 %i.je, 3                 ; 2 uses
  %brmerge = or i1 %.not89.i, %.not184.i
  br i1 %brmerge, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish3ast12is_same_node.exit.i
  %not..not89.i = xor i1 %.not89.i, true
  %.mux = zext i1 %not..not89.i to i8             ; 2 uses
  br i1 %.not88.i, label %.thread.i56, label %bb.bc

bb.ar:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish3ast12is_same_node.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !1381
  store i64 0, ptr %i.cm, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.488.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.589.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %6, ptr %i.dp, align 8, !noalias !1381
  store i64 %7, ptr %i.dq, align 8, !noalias !1381
  store i8 1, ptr %i.do, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !1381
  store i64 0, ptr %i.ck, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.491.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.592.0..sroa_idx.i, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !1381
  %i.kv = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @351)
          to label %bb.as unwind label %.loopexit.split-lp128.i ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i60: ; preds = %bb.at, %.loopexit.split-lp128.i, %.loopexit127.i
  %.pn.i61 = phi { ptr, i32 } [ %lpad.loopexit.split-lp130.i, %.loopexit.split-lp128.i ], [ %lpad.loopexit129.i, %.loopexit127.i ], [ %lpad.phi138, %bb.at ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ck) #29
          to label %bb.gy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit127.i:                                   ; preds = %.noexc264.i.preheader
  %lpad.loopexit129.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i60

.loopexit.split-lp128.i:                          ; preds = %bb.ar
  %lpad.loopexit.split-lp130.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i60

bb.as:                                            ; preds = %bb.ar
  %i.kw = extractvalue { ptr, i64 } %i.kv, 0
  %i.kx = extractvalue { ptr, i64 } %i.kv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !1381
  store i64 0, ptr %i.ci, align 8, !noalias !1381
  store ptr @352, ptr %.sroa.4.0..sroa_idx.i62, align 8, !noalias !1381
  store i64 4, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !1381
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.kw, i64 noundef %i.kx, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef 1)
          to label %bb.au unwind label %.loopexit134

.loopexit134:                                     ; preds = %bb.as
  %lpad.loopexit136 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp135:                            ; preds = %bb.av
  %lpad.loopexit.split-lp137 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %.loopexit134, %.loopexit.split-lp135
  %lpad.phi138 = phi { ptr, i32 } [ %lpad.loopexit136, %.loopexit134 ], [ %lpad.loopexit.split-lp137, %.loopexit.split-lp135 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.ky = load i8, ptr %i.cj, align 8, !range !32, !alias.scope !1400, !noalias !1403, !noundef !12
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.av, label %.noexc264.i.preheader, !prof !23

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1405
  %i.la = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.lb = load i8, ptr %i.la, align 1, !range !708, !alias.scope !1400, !noalias !1403, !noundef !12
  store i8 %i.lb, ptr %i.z, align 1, !noalias !1405
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #28
          to label %.noexc243.i unwind label %.loopexit.split-lp135

.noexc243.i:                                      ; preds = %bb.av
  unreachable

.noexc264.i.preheader:                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit265.i unwind label %.loopexit127.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit265.i: ; preds = %.noexc264.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !1381
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i65 unwind label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit265.i
  %i.lc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %.body.i63 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i65: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit265.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i66 unwind label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i65
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.body.i63

.body.i63:                                        ; preds = %bb.ay, %bb.aw
  %eh.lpad-body.i64 = phi { ptr, i32 } [ %i.le, %bb.ay ], [ %i.lc, %bb.aw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !1381
  br label %bb.gy

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i66: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.cm, i64 48, i1 false), !noalias !1381
  %i.lf = load i64, ptr %i.dr, align 8, !alias.scope !1406, !noalias !1409, !noundef !12 ; 3 uses
  %i.lg = load i64, ptr %3, align 8, !range !48, !alias.scope !1406, !noalias !1409, !noundef !12
  %i.lh = icmp eq i64 %i.lf, %i.lg
  br i1 %i.lh, label %bb.az, label %.split.i

bb.az:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i66
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %.split.i unwind label %bb.ba, !noalias !1411

bb.ba:                                            ; preds = %bb.az
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ch) #29
          to label %.body unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

.split.i:                                         ; preds = %bb.az, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i66
  %i.lk = load ptr, ptr %i.ds, align 8, !alias.scope !1406, !noalias !1409, !nonnull !12, !noundef !12
  %i.ll = getelementptr inbounds nuw [48 x i8], ptr %i.lk, i64 %i.lf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ll, ptr noundef nonnull align 8 dereferenceable(48) %i.ch, i64 48, i1 false)
  %i.lm = add i64 %i.lf, 1
  store i64 %i.lm, ptr %i.dr, align 8, !alias.scope !1406, !noalias !1409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !1381
  br i1 %.not88.i, label %.thread.i56, label %bb.bc

.thread.i56:                                      ; preds = %.thread22.i59, %.noexc79, %.split.i, %bb.aq, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_11JobPipelineENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_NCNvNtBN_10parse_util36detect_errors_in_decorated_statement0E0E0B3L_EBN_.exit.i
  %.sroa.0.1.i = phi i8 [ %.sroa.0.3.i, %.thread22.i59 ], [ %.sroa.0.010.i, %.noexc79 ], [ %.mux, %bb.aq ], [ 1, %.split.i ], [ 0, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_11JobPipelineENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_NCNvNtBN_10parse_util36detect_errors_in_decorated_statement0E0E0B3L_EBN_.exit.i ]
  %i.ln = invoke { ptr, i64 } @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Node10try_sourceB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iv, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc77:                                         ; preds = %.thread.i56
  %i.lo = extractvalue { ptr, i64 } %i.ln, 0      ; 2 uses
  %.not197.i = icmp eq ptr %i.lo, null            ; 2 uses
  %i.lp = extractvalue { ptr, i64 } %i.ln, 1
  %.sroa.9.0.i57 = select i1 %.not197.i, i64 0, i64 %i.lp ; 9 uses
  %.sroa.033.0.i = select i1 %.not197.i, ptr inttoptr (i64 4 to ptr), ptr %i.lo ; 6 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.033.0.i, i64 %.sroa.9.0.i57
  %i.lr = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %.sroa.033.0.i, ptr noundef nonnull readonly %i.lq, ptr noundef nonnull @359, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @359, i64 7))
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc78:                                         ; preds = %.noexc77
  %brmerge685.not = and i1 %.not194.i, %i.lr
  %.sroa.0.1.i.mux = select i1 %i.lr, i8 1, i8 %.sroa.0.1.i
  br i1 %brmerge685.not, label %bb.cg, label %bb.cf

bb.bc:                                            ; preds = %.split.i, %bb.aq
  %.sroa.0.010.i = phi i8 [ 1, %.split.i ], [ %.mux, %bb.aq ] ; 2 uses
  %i.ls = invoke noundef i8 @_RNvMsr_NtCs8frGy5WneL6_4fish3astNtB5_18DecoratedStatement10decoration(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iv)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit

.noexc79:                                         ; preds = %bb.bc
  %i.lt = icmp eq i8 %i.ls, 0
  br i1 %i.lt, label %bb.bd, label %.thread.i56

bb.bd:                                            ; preds = %.noexc79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !1381
  %i.lu = invoke { ptr, i64 } @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Node10try_sourceB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iv, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc80:                                         ; preds = %bb.bd
  %i.lv = extractvalue { ptr, i64 } %i.lu, 0      ; 2 uses
  %.not188.i = icmp eq ptr %i.lv, null            ; 2 uses
  %i.lw = extractvalue { ptr, i64 } %i.lu, 1
  %.sink153.i = select i1 %.not188.i, ptr inttoptr (i64 4 to ptr), ptr %i.lv ; 6 uses
  %.sink.i = select i1 %.not188.i, i64 0, i64 %i.lw ; 4 uses
  store ptr %.sink153.i, ptr %i.cg, align 8, !noalias !1381
  store i64 %.sink.i, ptr %i.dt, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !1381
  store ptr @151, ptr %i.cf, align 8, !noalias !1381
  store i64 3, ptr %i.du, align 8, !noalias !1381
  store ptr @165, ptr %i.dv, align 8, !noalias !1381
  store i64 2, ptr %i.dw, align 8, !noalias !1381
  %i.lx = invoke noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cf, i64 noundef 2)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit

.noexc81:                                         ; preds = %.noexc80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !1381
  br i1 %i.lx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.noexc81
  br i1 %.not184.i, label %.thread20.i, label %bb.bg

bb.bf:                                            ; preds = %bb.br, %.noexc81
  %.sroa.0.2.i = phi i8 [ 1, %bb.br ], [ %.sroa.0.010.i, %.noexc81 ]
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.sink153.i, i64 %.sink.i
  %i.lz = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %.sink153.i, ptr noundef nonnull readonly %i.ly, ptr noundef nonnull @355, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @355, i64 4))
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc82:                                         ; preds = %bb.bf
  %brmerge683.not = and i1 %.not194.i, %i.lz
  %.sroa.0.2.i.mux = select i1 %i.lz, i8 1, i8 %.sroa.0.2.i
  br i1 %brmerge683.not, label %bb.bs, label %.thread22.i59

.thread20.i:                                      ; preds = %bb.be
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.sink153.i, i64 %.sink.i
  %i.mb = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %.sink153.i, ptr noundef nonnull readonly %i.ma, ptr noundef nonnull @355, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @355, i64 4))
          to label %.thread22.i59 unwind label %.loopexit.split-lp.loopexit ; 0 uses

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !1381
  store i64 0, ptr %i.ce, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4101.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.5102.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %6, ptr %i.dy, align 8, !noalias !1381
  store i64 %7, ptr %i.dz, align 8, !noalias !1381
  store i8 1, ptr %i.dx, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !1381
  store i64 0, ptr %i.cc, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4104.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.5105.0..sroa_idx.i, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !1381
  %i.mc = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @351)
          to label %bb.bh unwind label %.loopexit.split-lp121.i ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit270.i: ; preds = %bb.bi, %.loopexit.split-lp121.i, %.loopexit120.i
  %.pn190.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp123.i, %.loopexit.split-lp121.i ], [ %lpad.loopexit122.i, %.loopexit120.i ], [ %lpad.phi143, %bb.bi ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cc) #29
          to label %bb.gx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit120.i:                                   ; preds = %.noexc271.i.preheader
  %lpad.loopexit122.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit270.i

.loopexit.split-lp121.i:                          ; preds = %bb.bg
  %lpad.loopexit.split-lp123.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit270.i

bb.bh:                                            ; preds = %bb.bg
  %i.md = extractvalue { ptr, i64 } %i.mc, 0
  %i.me = extractvalue { ptr, i64 } %i.mc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !1381
  store i64 1, ptr %i.ca, align 8, !noalias !1381
  store ptr %.sink153.i, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %.sink.i, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !1381
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cb, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.md, i64 noundef %i.me, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit139

.loopexit139:                                     ; preds = %bb.bh
  %lpad.loopexit141 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp140:                            ; preds = %bb.bk
  %lpad.loopexit.split-lp142 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit139, %.loopexit.split-lp140
  %lpad.phi143 = phi { ptr, i32 } [ %lpad.loopexit141, %.loopexit139 ], [ %lpad.loopexit.split-lp142, %.loopexit.split-lp140 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit270.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.mf = load i8, ptr %i.cb, align 8, !range !32, !alias.scope !1412, !noalias !1415, !noundef !12
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %bb.bk, label %.noexc271.i.preheader, !prof !23

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1417
  %i.mh = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.mi = load i8, ptr %i.mh, align 1, !range !708, !alias.scope !1412, !noalias !1415, !noundef !12
  store i8 %i.mi, ptr %i.aa, align 1, !noalias !1417
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @354) #28
          to label %.noexc241.i unwind label %.loopexit.split-lp140

.noexc241.i:                                      ; preds = %bb.bk
  unreachable

.noexc271.i.preheader:                            ; preds = %bb.bj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit272.i unwind label %.loopexit120.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit272.i: ; preds = %.noexc271.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !1381
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i274.i unwind label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit272.i
  %i.mj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %.body275.i unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i274.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit272.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit278.i unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i274.i
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %.body275.i

.body275.i:                                       ; preds = %bb.bn, %bb.bl
  %eh.lpad-body276.i = phi { ptr, i32 } [ %i.ml, %bb.bn ], [ %i.mj, %bb.bl ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !noalias !1381
  br label %bb.gx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit278.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i274.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull align 8 dereferenceable(48) %i.ce, i64 48, i1 false), !noalias !1381
  %i.mm = load i64, ptr %i.dr, align 8, !alias.scope !1418, !noalias !1421, !noundef !12 ; 3 uses
  %i.mn = load i64, ptr %3, align 8, !range !48, !alias.scope !1418, !noalias !1421, !noundef !12
  %i.mo = icmp eq i64 %i.mm, %i.mn
  br i1 %i.mo, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit278.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.br unwind label %bb.bp, !noalias !1423

bb.bp:                                            ; preds = %bb.bo
  %i.mp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bz) #29
          to label %.body unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.br:                                            ; preds = %bb.bo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit278.i
  %i.mr = load ptr, ptr %i.ds, align 8, !alias.scope !1418, !noalias !1421, !nonnull !12, !noundef !12
  %i.ms = getelementptr inbounds nuw [48 x i8], ptr %i.mr, i64 %i.mm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ms, ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 48, i1 false)
  %i.mt = add i64 %i.mm, 1
  store i64 %i.mt, ptr %i.dr, align 8, !alias.scope !1418, !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !1381
  br label %bb.bf

.thread22.i59:                                    ; preds = %.noexc82, %.thread20.i, %bb.ce
  %.sroa.0.3.i = phi i8 [ %.sroa.0.2.i.mux, %.noexc82 ], [ 1, %.thread20.i ], [ 1, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !1381
  br label %.thread.i56

bb.bs:                                            ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !1381
  store i64 0, ptr %i.by, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4110.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.5111.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %6, ptr %i.eb, align 8, !noalias !1381
  store i64 %7, ptr %i.ec, align 8, !noalias !1381
  store i8 1, ptr %i.ea, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !1381
  store i64 0, ptr %i.bw, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4113.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.5114.0..sroa_idx.i, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !1381
  %i.mu = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357)
          to label %bb.bu unwind label %.loopexit144 ; 2 uses

.loopexit144:                                     ; preds = %bb.bs, %bb.bu
  %lpad.loopexit146 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp145:                            ; preds = %bb.bw
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp145, %.loopexit144
  %lpad.phi148 = phi { ptr, i32 } [ %lpad.loopexit146, %.loopexit144 ], [ %lpad.loopexit.split-lp147, %.loopexit.split-lp145 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bw) #29
          to label %bb.gw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bs
  %i.mv = extractvalue { ptr, i64 } %i.mu, 0
  %i.mw = extractvalue { ptr, i64 } %i.mu, 1
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.mv, i64 noundef %i.mw, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.bv unwind label %.loopexit144

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.mx = load i8, ptr %i.bv, align 8, !range !32, !alias.scope !1424, !noalias !1427, !noundef !12
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %bb.bw, label %bb.bx, !prof !23

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1429
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !range !708, !alias.scope !1424, !noalias !1427, !noundef !12
  store i8 %i.na, ptr %i.ab, align 1, !noalias !1429
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #28
          to label %.noexc239.i unwind label %.loopexit.split-lp145

.noexc239.i:                                      ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !1381
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i283.i unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body284.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i283.i: ; preds = %bb.bx
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit287.i unwind label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i283.i
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %.body284.i

.body284.i:                                       ; preds = %bb.ca, %bb.by
  %eh.lpad-body285.i = phi { ptr, i32 } [ %i.nd, %bb.ca ], [ %i.nb, %bb.by ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !noalias !1381
  br label %bb.gw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit287.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i283.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %i.by, i64 48, i1 false), !noalias !1381
  %i.ne = load i64, ptr %i.dr, align 8, !alias.scope !1430, !noalias !1433, !noundef !12 ; 3 uses
  %i.nf = load i64, ptr %3, align 8, !range !48, !alias.scope !1430, !noalias !1433, !noundef !12
  %i.ng = icmp eq i64 %i.ne, %i.nf
  br i1 %i.ng, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit287.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.ce unwind label %bb.cc, !noalias !1435

bb.cc:                                            ; preds = %bb.cb
  %i.nh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bu) #29
          to label %.body unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ni = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ce:                                            ; preds = %bb.cb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit287.i
  %i.nj = load ptr, ptr %i.ds, align 8, !alias.scope !1430, !noalias !1433, !nonnull !12, !noundef !12
  %i.nk = getelementptr inbounds nuw [48 x i8], ptr %i.nj, i64 %i.ne
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nk, ptr noundef nonnull align 8 dereferenceable(48) %i.bu, i64 48, i1 false)
  %i.nl = add i64 %i.ne, 1
  store i64 %i.nl, ptr %i.dr, align 8, !alias.scope !1430, !noalias !1433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !1381
  br label %.thread22.i59

bb.cf:                                            ; preds = %.noexc78, %bb.cv
  %.sroa.0.4.i = phi i8 [ %.sroa.0.1.i.mux, %.noexc78 ], [ 1, %bb.cv ] ; 2 uses
  %i.nm = icmp eq i64 %.sroa.9.0.i57, 0
  br i1 %i.nm, label %bb.iw, label %bb.cw

bb.cg:                                            ; preds = %.noexc78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !1381
  store i64 0, ptr %i.bt, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4123.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.5124.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %6, ptr %i.ee, align 8, !noalias !1381
  store i64 %7, ptr %i.ef, align 8, !noalias !1381
  store i8 1, ptr %i.ed, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !1381
  store i64 0, ptr %i.br, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4126.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.5127.0..sroa_idx.i, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !1381
  store ptr @360, ptr %i.eg, align 8, !noalias !1381
  store i64 48, ptr %i.eh, align 8, !noalias !1381
  store i64 -1, ptr %i.bp, align 8, !noalias !1381
  %i.nn = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp)
          to label %bb.ch unwind label %.loopexit.split-lp114.i ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit292.i: ; preds = %bb.ci, %.loopexit.split-lp114.i, %.loopexit113.i
  %.pn199.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp116.i, %.loopexit.split-lp114.i ], [ %lpad.loopexit115.i, %.loopexit113.i ], [ %lpad.phi153, %bb.ci ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp) #29
          to label %.body295.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit113.i:                                   ; preds = %.noexc293.i.preheader
  %lpad.loopexit115.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit292.i

.loopexit.split-lp114.i:                          ; preds = %bb.cg
  %lpad.loopexit.split-lp116.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit292.i

bb.ch:                                            ; preds = %bb.cg
  %i.no = extractvalue { ptr, i64 } %i.nn, 0
  %i.np = extractvalue { ptr, i64 } %i.nn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !1381
  store i64 0, ptr %i.bo, align 8, !noalias !1381
  store ptr @361, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !1381
  store i64 19, ptr %.sroa.549.0..sroa_idx.i, align 8, !noalias !1381
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.no, i64 noundef %i.np, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef 1)
          to label %bb.cj unwind label %.loopexit149

.loopexit149:                                     ; preds = %bb.ch
  %lpad.loopexit151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp150:                            ; preds = %bb.ck
  %lpad.loopexit.split-lp152 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit149, %.loopexit.split-lp150
  %lpad.phi153 = phi { ptr, i32 } [ %lpad.loopexit151, %.loopexit149 ], [ %lpad.loopexit.split-lp152, %.loopexit.split-lp150 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bo)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit292.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  %i.nq = load i8, ptr %i.bq, align 8, !range !32, !alias.scope !1436, !noalias !1439, !noundef !12
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.ck, label %.noexc293.i.preheader, !prof !23

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1441
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.nt = load i8, ptr %i.ns, align 1, !range !708, !alias.scope !1436, !noalias !1439, !noundef !12
  store i8 %i.nt, ptr %i.ac, align 1, !noalias !1441
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #28
          to label %.noexc237.i unwind label %.loopexit.split-lp150

.noexc237.i:                                      ; preds = %bb.ck
  unreachable

.noexc293.i.preheader:                            ; preds = %bb.cj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bo)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit294.i unwind label %.loopexit113.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit294.i: ; preds = %.noexc293.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1381
  %i.nu = load i64, ptr %i.bp, align 8, !range !47, !alias.scope !1442, !noalias !1381, !noundef !12
  %i.nv = icmp eq i64 %i.nu, -1
  br i1 %i.nv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i, label %bb.cl

bb.cl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit294.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.nw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.body295.i unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.cl
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i unwind label %bb.co

.body295.i:                                       ; preds = %bb.co, %bb.cm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit292.i
  %.pn201.i = phi { ptr, i32 } [ %.pn199.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit292.i ], [ %i.ny, %bb.co ], [ %i.nw, %bb.cm ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.br) #29
          to label %bb.gv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.co:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %.body295.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit294.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1381
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i299.i unwind label %bb.cp

bb.cp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i
  %i.nz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.body300.i unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i299.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit303.i unwind label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i299.i
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.body300.i

.body300.i:                                       ; preds = %bb.cr, %bb.cp
  %eh.lpad-body301.i = phi { ptr, i32 } [ %i.ob, %bb.cr ], [ %i.nz, %bb.cp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !1381
  br label %bb.gv

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit303.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i299.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i64 48, i1 false), !noalias !1381
  %i.oc = load i64, ptr %i.dr, align 8, !alias.scope !1445, !noalias !1448, !noundef !12 ; 3 uses
  %i.od = load i64, ptr %3, align 8, !range !48, !alias.scope !1445, !noalias !1448, !noundef !12
  %i.oe = icmp eq i64 %i.oc, %i.od
  br i1 %i.oe, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit303.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.cv unwind label %bb.ct, !noalias !1450

bb.ct:                                            ; preds = %bb.cs
  %i.of = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bn) #29
          to label %.body unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.og = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.cv:                                            ; preds = %bb.cs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit303.i
  %i.oh = load ptr, ptr %i.ds, align 8, !alias.scope !1445, !noalias !1448, !nonnull !12, !noundef !12
  %i.oi = getelementptr inbounds nuw [48 x i8], ptr %i.oh, i64 %i.oc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oi, ptr noundef nonnull align 8 dereferenceable(48) %i.bn, i64 48, i1 false)
  %i.oj = add i64 %i.oc, 1
  store i64 %i.oj, ptr %i.dr, align 8, !alias.scope !1445, !noalias !1448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1381
  br label %bb.cf

bb.cw:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !1381
  store i64 0, ptr %i.bm, align 8, !noalias !1381
  store ptr inttoptr (i64 8 to ptr), ptr %i.ei, align 8, !noalias !1381
  store i64 0, ptr %i.ej, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !1381
  store i64 0, ptr %i.bl, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.6133.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !1381
  invoke void @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext5empty(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bk)
          to label %bb.cx unwind label %.loopexit.split-lp104.i.loopexit

.body351.i:                                       ; preds = %.loopexit.split-lp104.i.loopexit, %.loopexit.split-lp104.i.loopexit.split-lp, %bb.fp, %bb.fg, %bb.fb, %bb.ey, %bb.en, %bb.ek, %bb.dr, %bb.dp, %bb.cy, %.loopexit103.i
  %.sroa.068.0.i = phi i1 [ true, %bb.cy ], [ true, %bb.fg ], [ true, %bb.fb ], [ true, %bb.ek ], [ true, %bb.en ], [ true, %bb.dp ], [ true, %bb.dr ], [ true, %bb.ey ], [ true, %bb.fp ], [ true, %.loopexit103.i ], [ %.sroa.068.1.ph.i.ph, %.loopexit.split-lp104.i.loopexit ], [ true, %.loopexit.split-lp104.i.loopexit.split-lp ]
  %.pn226.i = phi { ptr, i32 } [ %i.ol, %bb.cy ], [ %.pn222.pn.i, %bb.fg ], [ %.pn215.ph.i, %bb.fb ], [ %i.qw, %bb.ek ], [ %.pn212.ph.i, %bb.en ], [ %i.pg, %bb.dp ], [ %.pn208.ph.i, %bb.dr ], [ %i.ro, %bb.ey ], [ %i.sd, %bb.fp ], [ %lpad.loopexit105.i, %.loopexit103.i ], [ %lpad.loopexit154, %.loopexit.split-lp104.i.loopexit ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp104.i.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl) #29
          to label %bb.gs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit103.i:                                   ; preds = %bb.dw
  %lpad.loopexit105.i = landingpad { ptr, i32 }
          cleanup
  br label %.body351.i

.loopexit.split-lp104.i.loopexit:                 ; preds = %bb.cw, %bb.da, %bb.db, %bb.dd, %bb.ds, %bb.dt, %.loopexit108.i, %bb.fc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i350.i, %.thread70.i, %_RNvNtCs8frGy5WneL6_4fish15parse_constants31parse_error_offset_source_start.exit.i
  %.sroa.068.1.ph.i.ph = phi i1 [ false, %_RNvNtCs8frGy5WneL6_4fish15parse_constants31parse_error_offset_source_start.exit.i ], [ true, %bb.cw ], [ true, %.thread70.i ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i350.i ], [ true, %bb.fc ], [ true, %.loopexit108.i ], [ true, %bb.db ], [ true, %bb.dt ], [ true, %bb.ds ], [ true, %bb.dd ], [ true, %bb.da ]
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.body351.i

.loopexit.split-lp104.i.loopexit.split-lp:        ; preds = %bb.fe, %bb.go
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  br label %.body351.i

bb.cx:                                            ; preds = %bb.cw
  %i.ok = invoke { i32, i8 } @_RNvNtCs8frGy5WneL6_4fish6expand26expand_to_command_and_args(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.033.0.i, i64 noundef %.sroa.9.0.i57, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(24) %i.bm, i1 noundef zeroext true)
          to label %bb.cz unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ol = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bk) #29
          to label %.body351.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cx
  %i.om = extractvalue { i32, i8 } %i.ok, 1
  %switch.i = icmp ult i8 %i.om, 2
  br i1 %switch.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bk)
          to label %bb.dc unwind label %.loopexit.split-lp104.i.loopexit

bb.db:                                            ; preds = %bb.cz
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bk)
          to label %.critedge.i unwind label %.loopexit.split-lp104.i.loopexit

.critedge.i:                                      ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1381
  br label %.thread43.i

bb.dc:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1381
  %i.on = trunc nuw i8 %.sroa.0.4.i to i1
  br i1 %i.on, label %.thread43.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oo = load ptr, ptr %.sroa.6133.0..sroa_idx.i, align 8, !noalias !1381, !nonnull !12, !noundef !12
  %i.op = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1381, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1381
  store ptr %i.oo, ptr %i.v, align 8, !noalias !1451
  store i64 %i.op, ptr %i.ek, align 8, !noalias !1451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1451
  store ptr @159, ptr %i.u, align 8, !noalias !1451
  store i64 4, ptr %i.el, align 8, !noalias !1451
  store ptr @154, ptr %i.em, align 8, !noalias !1451
  store i64 4, ptr %i.en, align 8, !noalias !1451
  store ptr @315, ptr %i.eo, align 8, !noalias !1451
  store i64 5, ptr %i.ep, align 8, !noalias !1451
  store ptr @316, ptr %i.eq, align 8, !noalias !1451
  store i64 6, ptr %i.er, align 8, !noalias !1451
  store ptr @317, ptr %i.es, align 8, !noalias !1451
  store i64 8, ptr %i.et, align 8, !noalias !1451
  %i.oq = invoke noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.u, i64 noundef 5)
          to label %bb.de unwind label %.loopexit.split-lp104.i.loopexit

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1381
  %brmerge.not.i = and i1 %i.kt, %i.oq
  br i1 %brmerge.not.i, label %bb.df, label %bb.ds

bb.df:                                            ; preds = %bb.de
  br i1 %.not184.i, label %.thread43.thread.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !1381
  store i64 0, ptr %i.bj, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4154.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.5155.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %6, ptr %i.fh, align 8, !noalias !1381
  store i64 %7, ptr %i.fi, align 8, !noalias !1381
  store i8 1, ptr %i.fg, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !1381
  store i64 0, ptr %i.bh, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.6133.0..sroa_idx134.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.7.0..sroa_idx142.i, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !1381
  %i.or = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @351)
          to label %bb.dh unwind label %.loopexit.split-lp94.i ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit309.i: ; preds = %bb.di, %.loopexit.split-lp94.i, %.loopexit93.i
  %.pn206.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp96.i, %.loopexit.split-lp94.i ], [ %lpad.loopexit95.i, %.loopexit93.i ], [ %lpad.phi176, %bb.di ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #29
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit93.i:                                    ; preds = %.noexc310.i.preheader
  %lpad.loopexit95.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit309.i

.loopexit.split-lp94.i:                           ; preds = %bb.dg
  %lpad.loopexit.split-lp96.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit309.i

bb.dh:                                            ; preds = %bb.dg
  %i.os = extractvalue { ptr, i64 } %i.or, 0
  %i.ot = extractvalue { ptr, i64 } %i.or, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !1381
  %i.ou = load ptr, ptr %.sroa.6133.0..sroa_idx.i, align 8, !noalias !1381, !nonnull !12, !noundef !12
  %i.ov = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1381, !noundef !12
  store i64 1, ptr %i.bf, align 8, !noalias !1381
  store ptr %i.ou, ptr %.sroa.453.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %i.ov, ptr %.sroa.554.0..sroa_idx.i, align 8, !noalias !1381
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.os, i64 noundef %i.ot, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef 1)
          to label %bb.dj unwind label %.loopexit172

.loopexit172:                                     ; preds = %bb.dh
  %lpad.loopexit174 = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

.loopexit.split-lp173:                            ; preds = %bb.dk
  %lpad.loopexit.split-lp175 = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.di:                                            ; preds = %.loopexit172, %.loopexit.split-lp173
  %lpad.phi176 = phi { ptr, i32 } [ %lpad.loopexit174, %.loopexit172 ], [ %lpad.loopexit.split-lp175, %.loopexit.split-lp173 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit309.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %i.ow = load i8, ptr %i.bg, align 8, !range !32, !alias.scope !1454, !noalias !1457, !noundef !12
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.dk, label %.noexc310.i.preheader, !prof !23

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1459
  %i.oy = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.oz = load i8, ptr %i.oy, align 1, !range !708, !alias.scope !1454, !noalias !1457, !noundef !12
  store i8 %i.oz, ptr %i.ad, align 1, !noalias !1459
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #28
          to label %.noexc235.i unwind label %.loopexit.split-lp173

.noexc235.i:                                      ; preds = %bb.dk
  unreachable

.noexc310.i.preheader:                            ; preds = %bb.dj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit311.i unwind label %.loopexit93.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit311.i: ; preds = %.noexc310.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1381
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i313.i unwind label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit311.i
  %i.pa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %.body314.i unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i313.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit311.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit317.i unwind label %bb.dn

bb.dn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i313.i
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %.body314.i

.body314.i:                                       ; preds = %bb.dn, %bb.dl
  %eh.lpad-body315.i = phi { ptr, i32 } [ %i.pc, %bb.dn ], [ %i.pa, %bb.dl ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !1381
  br label %bb.dr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit317.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i313.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i64 48, i1 false), !noalias !1381
  %i.pd = load i64, ptr %i.dr, align 8, !alias.scope !1460, !noalias !1463, !noundef !12 ; 3 uses
  %i.pe = load i64, ptr %3, align 8, !range !48, !alias.scope !1460, !noalias !1463, !noundef !12
  %i.pf = icmp eq i64 %i.pd, %i.pe
  br i1 %i.pf, label %bb.do, label %.thread43.thread84.i

bb.do:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit317.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %.thread43.thread84.i unwind label %bb.dp, !noalias !1465

bb.dp:                                            ; preds = %bb.do
  %i.pg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.be) #29
          to label %.body351.i unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ph = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

.thread43.thread84.i:                             ; preds = %bb.do, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit317.i
  %i.pi = load ptr, ptr %i.ds, align 8, !alias.scope !1460, !noalias !1463, !nonnull !12, !noundef !12
  %i.pj = getelementptr inbounds nuw [48 x i8], ptr %i.pi, i64 %i.pd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pj, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false)
  %i.pk = add i64 %i.pd, 1
  store i64 %i.pk, ptr %i.dr, align 8, !alias.scope !1460, !noalias !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !1381
  br label %.thread70.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %bb.ci, %bb.di, %bb.fv, %bb.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i60, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit270.i, %bb.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit292.i, %.body295.i, %.body351.i, %bb.cy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit309.i, %bb.dr, %bb.eb, %bb.en, %bb.ep, %bb.fb, %bb.fg, %bb.fj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit356.i, %bb.gf, %.body370.thread.i, %bb.gv, %bb.gw, %bb.gx, %bb.gy
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.dr:                                            ; preds = %.body314.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit309.i
  %.pn208.ph.i = phi { ptr, i32 } [ %.pn206.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit309.i ], [ %eh.lpad-body315.i, %.body314.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj) #29
          to label %.body351.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ds:                                            ; preds = %bb.de
  %.val254.i = load ptr, ptr %.sroa.6133.0..sroa_idx.i, align 8, !noalias !1381, !nonnull !12, !noundef !12 ; 2 uses
  %.val255.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1381, !noundef !12
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %.val254.i, i64 %.val255.i
  %i.pm = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly %.val254.i, ptr noundef nonnull readonly %i.pl, ptr noundef nonnull readonly @364, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @364, i64 5))
          to label %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.i unwind label %.loopexit.split-lp104.i.loopexit

.loopexit110.i:                                   ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_14BlockStatementENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_QNCNvNtBN_10parse_util36detect_errors_in_decorated_statements_0E0E0B3L_EBN_.exit.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_14BlockStatementENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_QNCNvNtBN_10parse_util36detect_errors_in_decorated_statements_0E0E0B3L_EBN_.exit.i, %bb.du, %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit323.i
  %.not.i = icmp eq i8 %i.je, 2
  br i1 %.not.i, label %bb.fc, label %.thread43.i

_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.i: ; preds = %bb.ds
  br i1 %i.pm, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.i
  %.val250.i = load ptr, ptr %.sroa.6133.0..sroa_idx.i, align 8, !noalias !1381, !nonnull !12, !noundef !12 ; 2 uses
  %.val251.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1381, !noundef !12
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.val250.i, i64 %.val251.i
  %i.po = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly %.val250.i, ptr noundef nonnull readonly %i.pn, ptr noundef nonnull readonly @365, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @365, i64 8))
          to label %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit323.i unwind label %.loopexit.split-lp104.i.loopexit

_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit323.i: ; preds = %bb.dt
  %.not3.i = xor i1 %i.po, true
  %or.cond5.i = or i1 %.sroa.019.0.i, %.not3.i
  br i1 %or.cond5.i, label %.loopexit110.i, label %.preheader

bb.du:                                            ; preds = %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.i
  br i1 %.sroa.019.0.i, label %.loopexit110.i, label %.preheader

.preheader:                                       ; preds = %bb.du, %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit323.i
  br label %bb.dv

bb.dv:                                            ; preds = %.preheader, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_14BlockStatementENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_QNCNvNtBN_10parse_util36detect_errors_in_decorated_statements_0E0E0B3L_EBN_.exit.i
  %.sroa.6.0.i = phi ptr [ %i.pr, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_14BlockStatementENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_QNCNvNtBN_10parse_util36detect_errors_in_decorated_statements_0E0E0B3L_EBN_.exit.i ], [ %i.kc, %.preheader ] ; 2 uses
  %i.pp = icmp eq ptr %i.ka, %.sroa.6.0.i
  br i1 %i.pp, label %.loopexit108.i, label %.lr.ph.i325.i

.lr.ph.i325.i:                                    ; preds = %bb.dv, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_14BlockStatementENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_QNCNvNtB1j_10parse_util36detect_errors_in_decorated_statements_0E0E0B1j_.exit.i.i
  %i.pq = phi ptr [ %i.pr, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_14BlockStatementENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_QNCNvNtB1j_10parse_util36detect_errors_in_decorated_statements_0E0E0B1j_.exit.i.i ], [ %.sroa.6.0.i, %bb.dv ] ; 3 uses
  %i.pr = getelementptr inbounds i8, ptr %i.pq, i64 -24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %i.ps = load i64, ptr %i.pr, align 8, !range !31, !alias.scope !1469, !noalias !1472, !noundef !12
  %i.pt = trunc nuw i64 %i.ps to i1
  br i1 %i.pt, label %bb.dw, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_14BlockStatementENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_QNCNvNtB1j_10parse_util36detect_errors_in_decorated_statements_0E0E0B1j_.exit.i.i

bb.dw:                                            ; preds = %.lr.ph.i325.i
  %i.pu = getelementptr inbounds i8, ptr %i.pq, i64 -16
  %i.pv = load ptr, ptr %i.pu, align 8, !alias.scope !1469, !noalias !1472, !nonnull !12
  %i.pw = getelementptr inbounds i8, ptr %i.pq, i64 -8
  %i.px = load ptr, ptr %i.pw, align 8, !alias.scope !1469, !noalias !1472, !nonnull !12, !align !145
  %i.py = getelementptr i8, ptr %i.px, i64 64
  %.val.i.i327.i = load ptr, ptr %i.py, align 8, !noalias !1475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1476
  invoke void %.val.i.i327.i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noundef nonnull %i.pv) #35
          to label %.noexc328.i unwind label %.loopexit103.i, !inline_history !1477

.noexc328.i:                                      ; preds = %bb.dw
  %i.pz = load i64, ptr %i.t, align 8, !range !1361, !noalias !1476, !noundef !12
  %i.qa = icmp eq i64 %i.pz, 15
  %i.qb = load ptr, ptr %i.eu, align 8, !noalias !1476, !nonnull !12, !align !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1476
  br i1 %i.qa, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_14BlockStatementENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_QNCNvNtBN_10parse_util36detect_errors_in_decorated_statements_0E0E0B3L_EBN_.exit.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_14BlockStatementENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_QNCNvNtB1j_10parse_util36detect_errors_in_decorated_statements_0E0E0B1j_.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_14BlockStatementENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_QNCNvNtB1j_10parse_util36detect_errors_in_decorated_statements_0E0E0B1j_.exit.i.i: ; preds = %.noexc328.i, %.lr.ph.i325.i
  %i.qc = icmp eq ptr %i.ka, %i.pr
  br i1 %i.qc, label %.loopexit108.i, label %.lr.ph.i325.i

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_14BlockStatementENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_QNCNvNtBN_10parse_util36detect_errors_in_decorated_statements_0E0E0B3L_EBN_.exit.i: ; preds = %.noexc328.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qe = load i32, ptr %i.qd, align 8, !range !230, !noundef !12 ; 3 uses
  %i.qf = icmp ne i32 %i.qe, 4
  call void @llvm.assume(i1 %i.qf)
  %i.qg = add nsw i32 %i.qe, -2
  %.inv.i = icmp samesign ult i32 %i.qe, 2
  %narrow.i = select i1 %.inv.i, i32 2, i32 %i.qg
  switch i32 %narrow.i, label %bb.dx [
    i32 1, label %.loopexit110.i
    i32 2, label %.loopexit110.i
    i32 3, label %.loopexit108.i
    i32 0, label %bb.dv
  ]

.loopexit108.i:                                   ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_14BlockStatementENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_QNCNvNtBN_10parse_util36detect_errors_in_decorated_statements_0E0E0B3L_EBN_.exit.i, %bb.dv, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_14BlockStatementENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_QNCNvNtB1j_10parse_util36detect_errors_in_decorated_statements_0E0E0B1j_.exit.i.i
  %.val246.i = load ptr, ptr %.sroa.6133.0..sroa_idx.i, align 8, !noalias !1381, !nonnull !12, !noundef !12 ; 2 uses
  %.val247.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1381, !noundef !12
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.val246.i, i64 %.val247.i
  %i.qi = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly %.val246.i, ptr noundef nonnull readonly %i.qh, ptr noundef nonnull readonly @364, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @364, i64 5))
          to label %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit330.i unwind label %.loopexit.split-lp104.i.loopexit

bb.dx:                                            ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1x_8adapters10filter_map19filter_map_try_foldRBJ_RDNtBL_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtBL_14BlockStatementENCNvMsw_BL_NtBL_9Traversal12parent_nodes0NCINvNvNtNtB1v_8iterator8Iterator8find_map5checkB3v_B4q_QNCNvNtBN_10parse_util36detect_errors_in_decorated_statements_0E0E0B3L_EBN_.exit.i
  unreachable

_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit330.i: ; preds = %.loopexit108.i
  br i1 %i.qi, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit330.i
  br i1 %.not184.i, label %.thread43.thread.i, label %bb.ea

bb.dz:                                            ; preds = %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit330.i
  br i1 %.not184.i, label %.thread43.thread.i, label %bb.eo

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1381
  store i64 0, ptr %i.ay, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4168.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.5169.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %6, ptr %i.ew, align 8, !noalias !1381
  store i64 %7, ptr %i.ex, align 8, !noalias !1381
  store i8 1, ptr %i.ev, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1381
  store i64 0, ptr %i.aw, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.6133.0..sroa_idx136.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.7.0..sroa_idx144.i, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1381
  %i.qj = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367)
          to label %bb.ec unwind label %.loopexit157 ; 2 uses

.loopexit157:                                     ; preds = %bb.ea, %bb.ec
  %lpad.loopexit159 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

.loopexit.split-lp158:                            ; preds = %bb.ee
  %lpad.loopexit.split-lp160 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.eb:                                            ; preds = %.loopexit.split-lp158, %.loopexit157
  %lpad.phi161 = phi { ptr, i32 } [ %lpad.loopexit159, %.loopexit157 ], [ %lpad.loopexit.split-lp160, %.loopexit.split-lp158 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #29
          to label %bb.en unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ec:                                            ; preds = %bb.ea
  %i.qk = extractvalue { ptr, i64 } %i.qj, 0
  %i.ql = extractvalue { ptr, i64 } %i.qj, 1
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.qk, i64 noundef %i.ql, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.ed unwind label %.loopexit157

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %i.qm = load i8, ptr %i.av, align 8, !range !32, !alias.scope !1478, !noalias !1481, !noundef !12
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %bb.ee, label %bb.ef, !prof !23

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1483
  %i.qo = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !range !708, !alias.scope !1478, !noalias !1481, !noundef !12
  store i8 %i.qp, ptr %i.ae, align 1, !noalias !1483
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #28
          to label %.noexc233.i unwind label %.loopexit.split-lp158

.noexc233.i:                                      ; preds = %bb.ee
  unreachable

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1381
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i332.i unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body333.i unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i332.i: ; preds = %bb.ef
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit336.i unwind label %bb.ei

bb.ei:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i332.i
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %.body333.i

.body333.i:                                       ; preds = %bb.ei, %bb.eg
  %eh.lpad-body334.i = phi { ptr, i32 } [ %i.qs, %bb.ei ], [ %i.qq, %bb.eg ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !1381
  br label %bb.en

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit336.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i332.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false), !noalias !1381
  %i.qt = load i64, ptr %i.dr, align 8, !alias.scope !1484, !noalias !1487, !noundef !12 ; 3 uses
  %i.qu = load i64, ptr %3, align 8, !range !48, !alias.scope !1484, !noalias !1487, !noundef !12
  %i.qv = icmp eq i64 %i.qt, %i.qu
  br i1 %i.qv, label %bb.ej, label %bb.em

bb.ej:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit336.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.em unwind label %bb.ek, !noalias !1489

bb.ek:                                            ; preds = %bb.ej
  %i.qw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.au) #29
          to label %.body351.i unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.qx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.em:                                            ; preds = %bb.ej, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit336.i
  %i.qy = load ptr, ptr %i.ds, align 8, !alias.scope !1484, !noalias !1487, !nonnull !12, !noundef !12
  %i.qz = getelementptr inbounds nuw [48 x i8], ptr %i.qy, i64 %i.qt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qz, ptr noundef nonnull align 8 dereferenceable(48) %i.au, i64 48, i1 false)
  %i.ra = add i64 %i.qt, 1
  store i64 %i.ra, ptr %i.dr, align 8, !alias.scope !1484, !noalias !1487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1381
  br label %.thread70.i

bb.en:                                            ; preds = %.body333.i, %bb.eb
  %.pn212.ph.i = phi { ptr, i32 } [ %lpad.phi161, %bb.eb ], [ %eh.lpad-body334.i, %.body333.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #29
          to label %.body351.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eo:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !1381
  store i64 0, ptr %i.bd, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4162.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.5163.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %6, ptr %i.ez, align 8, !noalias !1381
  store i64 %7, ptr %i.fa, align 8, !noalias !1381
  store i8 1, ptr %i.ey, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1381
  store i64 0, ptr %i.bb, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.6133.0..sroa_idx138.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.7.0..sroa_idx146.i, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1381
  %i.rb = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @370)
          to label %bb.eq unwind label %.loopexit162 ; 2 uses

.loopexit162:                                     ; preds = %bb.eo, %bb.eq
  %lpad.loopexit164 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

.loopexit.split-lp163:                            ; preds = %bb.es
  %lpad.loopexit.split-lp165 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.ep:                                            ; preds = %.loopexit.split-lp163, %.loopexit162
  %lpad.phi166 = phi { ptr, i32 } [ %lpad.loopexit164, %.loopexit162 ], [ %lpad.loopexit.split-lp165, %.loopexit.split-lp163 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #29
          to label %bb.fb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eq:                                            ; preds = %bb.eo
  %i.rc = extractvalue { ptr, i64 } %i.rb, 0
  %i.rd = extractvalue { ptr, i64 } %i.rb, 1
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.rc, i64 noundef %i.rd, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.er unwind label %.loopexit162

bb.er:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %i.re = load i8, ptr %i.ba, align 8, !range !32, !alias.scope !1490, !noalias !1493, !noundef !12
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %bb.es, label %bb.et, !prof !23

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1495
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.rh = load i8, ptr %i.rg, align 1, !range !708, !alias.scope !1490, !noalias !1493, !noundef !12
  store i8 %i.rh, ptr %i.af, align 1, !noalias !1495
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #28
          to label %.noexc231.i unwind label %.loopexit.split-lp163

.noexc231.i:                                      ; preds = %bb.es
  unreachable

bb.et:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1381
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i341.i unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ri = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.body342.i unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i341.i: ; preds = %bb.et
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit345.i unwind label %bb.ew

bb.ew:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i341.i
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %.body342.i

.body342.i:                                       ; preds = %bb.ew, %bb.eu
  %eh.lpad-body343.i = phi { ptr, i32 } [ %i.rk, %bb.ew ], [ %i.ri, %bb.eu ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !1381
  br label %bb.fb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit345.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i341.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i64 48, i1 false), !noalias !1381
  %i.rl = load i64, ptr %i.dr, align 8, !alias.scope !1496, !noalias !1499, !noundef !12 ; 3 uses
  %i.rm = load i64, ptr %3, align 8, !range !48, !alias.scope !1496, !noalias !1499, !noundef !12
  %i.rn = icmp eq i64 %i.rl, %i.rm
  br i1 %i.rn, label %bb.ex, label %bb.fa

bb.ex:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit345.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.fa unwind label %bb.ey, !noalias !1501

bb.ey:                                            ; preds = %bb.ex
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.az) #29
          to label %.body351.i unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.fa:                                            ; preds = %bb.ex, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit345.i
  %i.rq = load ptr, ptr %i.ds, align 8, !alias.scope !1496, !noalias !1499, !nonnull !12, !noundef !12
  %i.rr = getelementptr inbounds nuw [48 x i8], ptr %i.rq, i64 %i.rl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rr, ptr noundef nonnull align 8 dereferenceable(48) %i.az, i64 48, i1 false)
  %i.rs = add i64 %i.rl, 1
  store i64 %i.rs, ptr %i.dr, align 8, !alias.scope !1496, !noalias !1499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1381
  br label %.thread70.i

.thread43.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit354.i, %.loopexit110.i, %bb.dc, %.critedge.i
  %.sroa.0.8.i = phi i8 [ %.sroa.0.9.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit354.i ], [ 0, %.loopexit110.i ], [ 1, %.critedge.i ], [ 1, %bb.dc ] ; 2 uses
  br i1 %.not184.i, label %.thread43.thread.i, label %.thread70.i

bb.fb:                                            ; preds = %.body342.i, %bb.ep
  %.pn215.ph.i = phi { ptr, i32 } [ %lpad.phi166, %bb.ep ], [ %eh.lpad-body343.i, %.body342.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #29
          to label %.body351.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fc:                                            ; preds = %.loopexit110.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1381
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, i64 noundef %.sroa.9.0.i57, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.fd unwind label %.loopexit.split-lp104.i.loopexit

bb.fd:                                            ; preds = %bb.fc
  %i.rt = load i64, ptr %i.aj, align 8, !range !31, !noalias !1381, !noundef !12
  %i.ru = trunc nuw i64 %i.rt to i1
  %i.rv = load i64, ptr %i.fb, align 8, !range !732, !noalias !1381, !noundef !12 ; 3 uses
  br i1 %i.ru, label %bb.fe, label %bb.ff, !prof !23

bb.fe:                                            ; preds = %bb.fd
  %i.rw = load i64, ptr %i.fc, align 8, !noalias !1381
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.rv, i64 %i.rw) #34
          to label %bb.gg unwind label %.loopexit.split-lp104.i.loopexit.split-lp

bb.ff:                                            ; preds = %bb.fd
  %i.rx = load ptr, ptr %i.fc, align 8, !noalias !1381, !nonnull !12, !noundef !12 ; 2 uses
  %i.ry = icmp ule i64 %.sroa.9.0.i57, %i.rv
  call void @llvm.assume(i1 %i.ry)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1381
  %i.rz = shl nuw nsw i64 %.sroa.9.0.i57, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.rx, ptr nonnull align 4 %.sroa.033.0.i, i64 %i.rz, i1 false)
  store i64 %i.rv, ptr %i.at, align 8, !noalias !1381
  store ptr %i.rx, ptr %.sroa.4171.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %.sroa.9.0.i57, ptr %.sroa.6172.0..sroa_idx.i, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1381
  invoke void @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext5empty(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.as)
          to label %bb.fi unwind label %bb.fh

bb.fg:                                            ; preds = %bb.gf, %bb.gc, %bb.fj, %bb.fh
  %.pn222.pn.i = phi { ptr, i32 } [ %.pn222.ph.i, %bb.gf ], [ %i.sc, %bb.fj ], [ %i.sa, %bb.fh ], [ %i.st, %bb.gc ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #29
          to label %.body351.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fh:                                            ; preds = %bb.fr, %bb.fm, %bb.fl, %bb.ff
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fi:                                            ; preds = %bb.ff
  %i.sb = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6expand10expand_one(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, i16 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.as, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %3)
          to label %bb.fk unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.sc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.as) #29
          to label %bb.fg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fk:                                            ; preds = %bb.fi
  br i1 %i.sb, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.as)
          to label %bb.fn unwind label %bb.fh

bb.fm:                                            ; preds = %bb.fk
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.as)
          to label %bb.fr unwind label %bb.fh

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1381
  br label %bb.fo

bb.fo:                                            ; preds = %bb.ge, %bb.fs, %bb.fn
  %.sroa.0.9.i = phi i8 [ %.mux.i, %bb.fs ], [ 0, %bb.fn ], [ 1, %bb.ge ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i350.i unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body351.i unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i350.i: ; preds = %bb.fo
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit354.i unwind label %.loopexit.split-lp104.i.loopexit

bb.fr:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1381
  %i.sf = invoke noundef zeroext i1 @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc14builtin_exists(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.033.0.i, i64 noundef %.sroa.9.0.i57)
          to label %bb.fs unwind label %bb.fh     ; 2 uses

bb.fs:                                            ; preds = %bb.fr
  %brmerge87.i = or i1 %.not184.i, %i.sf
  %not..i = xor i1 %i.sf, true
  %.mux.i = zext i1 %not..i to i8
  br i1 %brmerge87.i, label %bb.fo, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1381
  store i64 0, ptr %i.ar, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4177.0..sroa_idx.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.5178.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %6, ptr %i.fe, align 8, !noalias !1381
  store i64 %7, ptr %i.ff, align 8, !noalias !1381
  store i8 1, ptr %i.fd, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1381
  store i64 0, ptr %i.ap, align 8, !noalias !1381
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.6133.0..sroa_idx140.i, align 8, !noalias !1381
  store i64 0, ptr %.sroa.7.0..sroa_idx148.i, align 8, !noalias !1381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1381
  %i.sg = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @373)
          to label %bb.fu unwind label %.loopexit.split-lp100.i ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit356.i: ; preds = %bb.fv, %.loopexit.split-lp100.i, %.loopexit99.i
  %.pn220.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp100.i ], [ %lpad.loopexit101.i, %.loopexit99.i ], [ %lpad.phi171, %bb.fv ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #29
          to label %bb.gf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit99.i:                                    ; preds = %.noexc357.i.preheader
  %lpad.loopexit101.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit356.i

.loopexit.split-lp100.i:                          ; preds = %bb.ft
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit356.i

bb.fu:                                            ; preds = %bb.ft
  %i.sh = extractvalue { ptr, i64 } %i.sg, 0
  %i.si = extractvalue { ptr, i64 } %i.sg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1381
  store i64 1, ptr %i.an, align 8, !noalias !1381
  store ptr %.sroa.033.0.i, ptr %.sroa.463.0..sroa_idx.i, align 8, !noalias !1381
  store i64 %.sroa.9.0.i57, ptr %.sroa.564.0..sroa_idx.i, align 8, !noalias !1381
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.sh, i64 noundef %i.si, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.an, i64 noundef 1)
          to label %bb.fw unwind label %.loopexit167

.loopexit167:                                     ; preds = %bb.fu
  %lpad.loopexit169 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

.loopexit.split-lp168:                            ; preds = %bb.fx
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fv:                                            ; preds = %.loopexit167, %.loopexit.split-lp168
  %lpad.phi171 = phi { ptr, i32 } [ %lpad.loopexit169, %.loopexit167 ], [ %lpad.loopexit.split-lp170, %.loopexit.split-lp168 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit356.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  %i.sj = load i8, ptr %i.ao, align 8, !range !32, !alias.scope !1502, !noalias !1505, !noundef !12
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %bb.fx, label %.noexc357.i.preheader, !prof !23

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1507
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.sm = load i8, ptr %i.sl, align 1, !range !708, !alias.scope !1502, !noalias !1505, !noundef !12
  store i8 %i.sm, ptr %i.ag, align 1, !noalias !1507
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #28
          to label %.noexc.i58 unwind label %.loopexit.split-lp168

.noexc.i58:                                       ; preds = %bb.fx
  unreachable

.noexc357.i.preheader:                            ; preds = %bb.fw
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit358.i unwind label %.loopexit99.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit358.i: ; preds = %.noexc357.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1381
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i360.i unwind label %bb.fy

bb.fy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit358.i
  %i.sn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body361.i unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.so = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i360.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit358.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit364.i unwind label %bb.ga

bb.ga:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i360.i
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %.body361.i

.body361.i:                                       ; preds = %bb.ga, %bb.fy
  %eh.lpad-body362.i = phi { ptr, i32 } [ %i.sp, %bb.ga ], [ %i.sn, %bb.fy ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !1381
  br label %bb.gf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit364.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i360.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false), !noalias !1381
  %i.sq = load i64, ptr %i.dr, align 8, !alias.scope !1508, !noalias !1511, !noundef !12 ; 3 uses
  %i.sr = load i64, ptr %3, align 8, !range !48, !alias.scope !1508, !noalias !1511, !noundef !12
  %i.ss = icmp eq i64 %i.sq, %i.sr
  br i1 %i.ss, label %bb.gb, label %bb.ge

bb.gb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit364.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.ge unwind label %bb.gc, !noalias !1513

bb.gc:                                            ; preds = %bb.gb
  %i.st = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.am) #29
          to label %bb.fg unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.su = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ge:                                            ; preds = %bb.gb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit364.i
  %i.sv = load ptr, ptr %i.ds, align 8, !alias.scope !1508, !noalias !1511, !nonnull !12, !noundef !12
  %i.sw = getelementptr inbounds nuw [48 x i8], ptr %i.sv, i64 %i.sq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.sw, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false)
  %i.sx = add i64 %i.sq, 1
  store i64 %i.sx, ptr %i.dr, align 8, !alias.scope !1508, !noalias !1511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1381
  br label %bb.fo

bb.gf:                                            ; preds = %.body361.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit356.i
  %.pn222.ph.i = phi { ptr, i32 } [ %.pn220.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit356.i ], [ %eh.lpad-body362.i, %.body361.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar) #29
          to label %bb.fg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit354.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i350.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1381
  br label %.thread43.i

bb.gg:                                            ; preds = %bb.fe
  unreachable

.thread70.i:                                      ; preds = %.thread43.i, %bb.fa, %bb.em, %.thread43.thread84.i
  %.sroa.0.873.i = phi i8 [ 1, %.thread43.thread84.i ], [ %.sroa.0.8.i, %.thread43.i ], [ 1, %bb.fa ], [ 1, %bb.em ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1381
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iv)
          to label %bb.gj unwind label %.loopexit.split-lp104.i.loopexit

.thread43.thread.i:                               ; preds = %.thread43.i, %bb.dz, %bb.dy, %bb.df
  %.sroa.0.864.i = phi i8 [ 1, %bb.df ], [ %.sroa.0.8.i, %.thread43.i ], [ 1, %bb.dz ], [ 1, %bb.dy ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i369.i unwind label %bb.gh

bb.gh:                                            ; preds = %.thread43.thread.i
  %i.sy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body370.thread.i unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.sz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i369.i: ; preds = %.thread43.thread.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit373.i unwind label %.split81.thread.i

.split81.thread.i:                                ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i369.i
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %.body370.thread.i

bb.gj:                                            ; preds = %.thread70.i
  %i.tb = load i32, ptr %i.ai, align 4, !range !220, !noalias !1381, !noundef !12
  %i.tc = trunc nuw i32 %i.tb to i1
  %i.td = load i32, ptr %i.fj, align 4, !noalias !1381 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1381
  %i.te = zext i32 %i.td to i64
  %.val258.i = load ptr, ptr %i.ei, align 8, !noalias !1381 ; 6 uses
  %.val259.i = load i64, ptr %i.ej, align 8, !noalias !1381 ; 4 uses
  %.not.i91.i = icmp ne i32 %i.td, 0
  %.not.i.not.i = select i1 %i.tc, i1 %.not.i91.i, i1 false
  br i1 %.not.i.not.i, label %bb.gk, label %_RNvNtCs8frGy5WneL6_4fish15parse_constants31parse_error_offset_source_start.exit.i

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val258.i) ]
  %.idx.i374.i = mul nuw nsw i64 %.val259.i, 48
  %i.tf = getelementptr inbounds nuw i8, ptr %.val258.i, i64 %.idx.i374.i
  %i.tg = icmp eq i64 %.val259.i, 0
  br i1 %i.tg, label %_RNvNtCs8frGy5WneL6_4fish15parse_constants31parse_error_offset_source_start.exit.i, label %.lr.ph.i375.i

.lr.ph.i375.i:                                    ; preds = %bb.gk, %bb.gm
  %.sroa.0.01.i.i = phi ptr [ %i.th, %bb.gm ], [ %.val258.i, %bb.gk ] ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 48 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 24 ; 2 uses
  %i.tj = load i64, ptr %i.ti, align 8, !noundef !12 ; 3 uses
  %i.tk = icmp eq i64 %i.tj, -1
  br i1 %i.tk, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %.lr.ph.i375.i
  %i.tl = add i64 %i.tj, %i.te                    ; 2 uses
  %i.tm = icmp ult i64 %i.tl, %i.tj
  br i1 %i.tm, label %bb.go, label %bb.gn

bb.gm:                                            ; preds = %bb.gn, %.lr.ph.i375.i
  %i.tn = icmp eq ptr %i.th, %i.tf
  br i1 %i.tn, label %_RNvNtCs8frGy5WneL6_4fish15parse_constants31parse_error_offset_source_start.exit.i, label %.lr.ph.i375.i

bb.gn:                                            ; preds = %bb.gl
  store i64 %i.tl, ptr %i.ti, align 8
  br label %bb.gm

bb.go:                                            ; preds = %bb.gl
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @384) #28
          to label %.noexc376.i unwind label %.loopexit.split-lp104.i.loopexit.split-lp

.noexc376.i:                                      ; preds = %bb.go
  unreachable

_RNvNtCs8frGy5WneL6_4fish15parse_constants31parse_error_offset_source_start.exit.i: ; preds = %bb.gm, %bb.gk, %bb.gj
  %i.to = load i64, ptr %i.bm, align 8, !range !48, !noalias !1381, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1381
  %i.tp = icmp ult i64 %.val259.i, 192153584101141163
  call void @llvm.assume(i1 %i.tp)
  %i.tq = getelementptr inbounds nuw [48 x i8], ptr %.val258.i, i64 %.val259.i
  store ptr %.val258.i, ptr %i.ah, align 8, !noalias !1381
  store i64 %i.to, ptr %i.fk, align 8, !noalias !1381
  store ptr %.val258.i, ptr %i.fl, align 8, !noalias !1381
  store ptr %i.tq, ptr %i.fm, align 8, !noalias !1381
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ah)
          to label %bb.gp unwind label %.loopexit.split-lp104.i.loopexit

bb.gp:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish15parse_constants31parse_error_offset_source_start.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1381
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i378.i unwind label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.tr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ts = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i378.i: ; preds = %bb.gp
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit

.noexc84:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i378.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1381
  br label %.noexc87

bb.gs:                                            ; preds = %.body351.i
  br i1 %.sroa.068.0.i, label %.body370.thread.i, label %.body

.noexc87:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i, %.noexc84
  %.sroa.0.863.i = phi i8 [ %.sroa.0.873.i, %.noexc84 ], [ %.sroa.0.864.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !1381
  br label %bb.iw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit373.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i369.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1381
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i unwind label %bb.gt

bb.gt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit373.i
  %i.tt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.body unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.tu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit373.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit

.body370.thread.i:                                ; preds = %bb.gs, %.split81.thread.i, %bb.gh
  %.pn226.pn80.i = phi { ptr, i32 } [ %i.ta, %.split81.thread.i ], [ %.pn226.i, %bb.gs ], [ %i.sy, %bb.gh ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bm) #29
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gv:                                            ; preds = %.body300.i, %.body295.i
  %.pn203.ph.i = phi { ptr, i32 } [ %.pn201.i, %.body295.i ], [ %eh.lpad-body301.i, %.body300.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt) #29
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gw:                                            ; preds = %.body284.i, %bb.bt
  %.pn195.ph.i = phi { ptr, i32 } [ %lpad.phi148, %bb.bt ], [ %eh.lpad-body285.i, %.body284.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by) #29
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gx:                                            ; preds = %.body275.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit270.i
  %.pn192.ph.i = phi { ptr, i32 } [ %.pn190.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit270.i ], [ %eh.lpad-body276.i, %.body275.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ce) #29
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gy:                                            ; preds = %.body.i63, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i60
  %.pn186.ph.i = phi { ptr, i32 } [ %.pn.i61, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i60 ], [ %eh.lpad-body.i64, %.body.i63 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cm) #29
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gz:                                            ; preds = %bb.h
  %i.tv = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !145, !noundef !12 ; 2 uses
  %i.tw = invoke noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast9TokenPipeNtB4_4Leaf10has_sourceB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.tv)
          to label %bb.ix unwind label %.loopexit.split-lp.loopexit

bb.ha:                                            ; preds = %bb.h
  %i.tx = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !145, !noundef !12 ; 2 uses
  %i.ty = invoke noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast16TokenConjunctionNtB4_4Leaf10has_sourceB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.tx)
          to label %bb.ja unwind label %.loopexit.split-lp.loopexit

bb.hb:                                            ; preds = %bb.h
  %i.tz = load ptr, ptr %i.dd, align 8, !nonnull !12, !align !673, !noundef !12 ; 2 uses
  %i.ua = invoke { ptr, i64 } @_RNvYNtNtCs8frGy5WneL6_4fish3ast8ArgumentNtB4_4Node6sourceB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.tz, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.jd unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.hc:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1514
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast11JobPipelineNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gp)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit

.noexc104:                                        ; preds = %bb.hc
  %i.ub = load i32, ptr %i.s, align 4, !range !220, !noalias !1514, !noundef !12
  %i.uc = trunc nuw i32 %i.ub to i1
  br i1 %i.uc, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %.noexc104
  %i.ud = load <2 x i32>, ptr %i.fs, align 4, !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1514
  %i.ue = invoke { ptr, ptr } @_RNvMsw_NtCs8frGy5WneL6_4fish3astNtB5_9Traversal6parent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.gp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @335)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc105:                                        ; preds = %bb.hd
  %i.uf = extractvalue { ptr, ptr } %i.ue, 0
  %i.ug = extractvalue { ptr, ptr } %i.ue, 1
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 64
  %i.ui = load ptr, ptr %i.uh, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.ui(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noundef %i.uf) #35
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit, !inline_history !1518

.noexc106:                                        ; preds = %.noexc105
  %i.uj = load i64, ptr %i.r, align 8, !range !1361, !noalias !1514, !noundef !12
  %i.uk = icmp eq i64 %i.uj, 9
  br i1 %i.uk, label %bb.hf, label %bb.hg

bb.he:                                            ; preds = %.noexc104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1514
  br label %_RNvNtCs8frGy5WneL6_4fish10parse_util33detect_errors_in_backgrounded_job.exit

bb.hf:                                            ; preds = %.noexc106
  %i.ul = load ptr, ptr %i.ft, align 8, !noalias !1514, !nonnull !12, !align !145, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1514
  %i.um = invoke { ptr, ptr } @_RNvMsw_NtCs8frGy5WneL6_4fish3astNtB5_9Traversal6parent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da, ptr noundef nonnull %i.ul, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @49)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc107:                                        ; preds = %bb.hf
  %i.un = extractvalue { ptr, ptr } %i.um, 0      ; 2 uses
  %i.uo = extractvalue { ptr, ptr } %i.um, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1514
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 64
  %i.uq = load ptr, ptr %i.up, align 8, !invariant.load !12, !nonnull !12 ; 2 uses
  invoke void %i.uq(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noundef %i.un) #35
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit, !inline_history !1518

.noexc108:                                        ; preds = %.noexc107
  %i.ur = load i64, ptr %i.q, align 8, !range !1361, !noalias !1514, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1514
  switch i64 %i.ur, label %bb.hh [
    i64 12, label %bb.hi
    i64 17, label %bb.hi
  ]

end_hunk_0
begin_hunk_1_@_RNvNtCs8frGy5WneL6_4fish10parse_util26detect_parse_errors_in_ast:bb.a
          to label %bb.hw unwind label %.loopexit.split-lp.loopexit.split-lp.i92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hl:                                            ; preds = %bb.hj
  %i.uw = extractvalue { ptr, i64 } %i.uv, 0
  %i.ux = extractvalue { ptr, i64 } %i.uv, 1
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.uw, i64 noundef %i.ux, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.hm unwind label %.loopexit182

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.uy = load i8, ptr %i.m, align 8, !range !32, !alias.scope !1519, !noalias !1522, !noundef !12
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %bb.hn, label %bb.ho, !prof !23

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1524
  %i.va = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.vb = load i8, ptr %i.va, align 1, !range !708, !alias.scope !1519, !noalias !1522, !noundef !12
  store i8 %i.vb, ptr %i.a, align 1, !noalias !1524
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #28
          to label %.noexc43.i unwind label %.loopexit.split-lp183

.noexc43.i:                                       ; preds = %bb.hn
  unreachable

bb.ho:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1514
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i95 unwind label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.vc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i93 unwind label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.vd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i95: ; preds = %bb.ho
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i96 unwind label %bb.hr

bb.hr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i95
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %.body.i93

.body.i93:                                        ; preds = %bb.hr, %bb.hp
  %eh.lpad-body.i94 = phi { ptr, i32 } [ %i.ve, %bb.hr ], [ %i.vc, %bb.hp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !1514
  br label %bb.hw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i96: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !1514
  %i.vf = load i64, ptr %i.dr, align 8, !alias.scope !1525, !noalias !1528, !noundef !12 ; 3 uses
  %i.vg = load i64, ptr %3, align 8, !range !48, !alias.scope !1525, !noalias !1528, !noundef !12
  %i.vh = icmp eq i64 %i.vf, %i.vg
  br i1 %i.vh, label %bb.hs, label %bb.hv

bb.hs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i96
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.hv unwind label %bb.ht, !noalias !1530

bb.ht:                                            ; preds = %bb.hs
  %i.vi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l) #29
          to label %.body unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.vj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.hv:                                            ; preds = %bb.hs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i96
  %i.vk = load ptr, ptr %i.ds, align 8, !alias.scope !1525, !noalias !1528, !nonnull !12, !noundef !12
  %i.vl = getelementptr inbounds nuw [48 x i8], ptr %i.vk, i64 %i.vf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.vl, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  %i.vm = add i64 %i.vf, 1
  store i64 %i.vm, ptr %i.dr, align 8, !alias.scope !1525, !noalias !1528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1514
  br label %_RNvNtCs8frGy5WneL6_4fish10parse_util33detect_errors_in_backgrounded_job.exit

.loopexit.split-lp.loopexit.split-lp.i92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ij, %bb.hk, %bb.hw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i102, %.thread.i101
  %lpad.loopexit.split-lp1676 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.hw:                                            ; preds = %.body.i93, %bb.hk
  %.pn.ph.i = phi { ptr, i32 } [ %lpad.phi186, %bb.hk ], [ %eh.lpad-body.i94, %.body.i93 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #29
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.i92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hx:                                            ; preds = %.noexc109
  %i.vn = load ptr, ptr %i.fw, align 8, !noalias !1514, !nonnull !12, !align !145, !noundef !12 ; 2 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vq = load i64, ptr %i.vp, align 8, !noundef !12 ; 4 uses
  %.idx.i97 = mul nuw nsw i64 %i.vq, 160
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 %.idx.i97
  %i.vs = icmp eq i64 %i.vq, 0
  br i1 %i.vs, label %.loopexit20.i.invoke, label %.lr.ph.i.i98

.lr.ph.i.i98:                                     ; preds = %bb.hx, %bb.hy
  %.sroa.02.07.i.i = phi i64 [ %i.vw, %bb.hy ], [ 0, %bb.hx ] ; 3 uses
  %i.vt = phi ptr [ %i.vv, %bb.hy ], [ %i.vo, %bb.hx ] ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.ul
  br i1 %i.vu, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph.i.i98
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 160 ; 2 uses
  %i.vw = add nuw nsw i64 %.sroa.02.07.i.i, 1
  %i.vx = icmp eq ptr %i.vv, %i.vr
  br i1 %i.vx, label %.loopexit20.i.invoke, label %.lr.ph.i.i98

bb.hz:                                            ; preds = %.noexc109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1514
  br label %_RNvNtCs8frGy5WneL6_4fish10parse_util33detect_errors_in_backgrounded_job.exit

.loopexit20.i.invoke:                             ; preds = %bb.hx, %bb.an, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_11JobPipelineENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_NCNvNtB1j_10parse_util36detect_errors_in_decorated_statement0E0E0B1j_.exit.i.i, %bb.hy
  %i.vy = phi ptr [ @347, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_11JobPipelineENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_NCNvNtB1j_10parse_util36detect_errors_in_decorated_statement0E0E0B1j_.exit.i.i ], [ @339, %bb.hy ], [ @339, %bb.hx ], [ @347, %bb.an ]
  %i.vz = phi i64 [ 25, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_11JobPipelineENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_NCNvNtB1j_10parse_util36detect_errors_in_decorated_statement0E0E0B1j_.exit.i.i ], [ 37, %bb.hy ], [ 37, %bb.hx ], [ 25, %bb.an ]
  %i.wa = phi ptr [ @348, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryRDNtB1h_4NodeEL_uINtNtNtBa_3ops12control_flow11ControlFlowRNtB1h_11JobPipelineENCNvMsw_B1h_NtB1h_9Traversal12parent_nodes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1W_B2S_NCNvNtB1j_10parse_util36detect_errors_in_decorated_statement0E0E0B1j_.exit.i.i ], [ @340, %bb.hy ], [ @340, %bb.hx ], [ @348, %bb.an ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vy, i64 noundef %i.vz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wa) #28
          to label %.loopexit20.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit20.i.cont:                               ; preds = %.loopexit20.i.invoke
  unreachable

bb.ia:                                            ; preds = %.lr.ph.i.i98
  %i.wb = icmp ult i64 %.sroa.02.07.i.i, %i.vq
  call void @llvm.assume(i1 %i.wb)
  %i.wc = add nuw i64 %.sroa.02.07.i.i, 1         ; 2 uses
  %i.wd = icmp ult i64 %i.wc, %i.vq
  br i1 %i.wd, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.we = getelementptr inbounds nuw [160 x i8], ptr %i.vo, i64 %i.wc ; 4 uses
  %i.wf = load i32, ptr %i.we, align 8, !range !34, !noundef !12
  %.not35.not.i = icmp eq i32 %i.wf, 2
  br i1 %.not35.not.i, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %.noexc114, %bb.ie, %bb.ib, %bb.ia
  %.sroa.0.0.i99 = phi i8 [ 0, %bb.ia ], [ 0, %bb.ib ], [ 1, %bb.ie ], [ 1, %.noexc114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1514
  br label %_RNvNtCs8frGy5WneL6_4fish10parse_util33detect_errors_in_backgrounded_job.exit

bb.id:                                            ; preds = %bb.ib
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 12
  %i.wh = load i8, ptr %i.wg, align 4, !range !755, !noundef !12
  switch i8 %i.wh, label %_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants12ParseKeywordNtB5_13SliceContains14slice_containsBG_.exit.i [
    i8 1, label %bb.ie
    i8 15, label %.fold.split.i
  ]

_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants12ParseKeywordNtB5_13SliceContains14slice_containsBG_.exit.i: ; preds = %bb.id
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @341, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @342) #28
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc113:                                        ; preds = %_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants12ParseKeywordNtB5_13SliceContains14slice_containsBG_.exit.i
  unreachable

.fold.split.i:                                    ; preds = %bb.id
  br label %bb.ie

bb.ie:                                            ; preds = %.fold.split.i, %bb.id
  %.42.i = phi ptr [ @151, %bb.id ], [ @165, %.fold.split.i ]
  %..i100 = phi i64 [ 3, %bb.id ], [ 2, %.fold.split.i ]
  br i1 %.not184.i, label %bb.ic, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1514
  store i64 0, ptr %i.j, align 8, !noalias !1514
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !1514
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.529.0..sroa_idx.i, i8 0, i64 25, i1 false), !noalias !1514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1514
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast23JobConjunctionDecoratorNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.we)
          to label %bb.ig unwind label %.thread11.i

.thread11.i:                                      ; preds = %bb.ig, %bb.if
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i101

bb.ig:                                            ; preds = %bb.if
  %i.wi = load i32, ptr %i.d, align 4, !range !220, !noalias !1514, !noundef !12
  %i.wj = trunc nuw i32 %i.wi to i1
  %i.wk = load i32, ptr %i.ga, align 4, !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1514
  %i.wl = zext i32 %i.wk to i64
  %8 = select i1 %i.wj, i64 %i.wl, i64 0
  store i64 %8, ptr %i.fz, align 8, !noalias !1514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1514
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast23JobConjunctionDecoratorNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.we)
          to label %bb.ih unwind label %.thread11.i

bb.ih:                                            ; preds = %bb.ig
  %i.wm = load i32, ptr %i.c, align 4, !range !220, !noalias !1514, !noundef !12
  %i.wn = trunc nuw i32 %i.wm to i1
  %i.wo = load i32, ptr %i.gb, align 4, !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1514
  %i.wp = zext i32 %i.wo to i64
  %9 = select i1 %i.wn, i64 %i.wp, i64 0
  store i64 %9, ptr %i.fy, align 8, !noalias !1514
  store i8 1, ptr %i.fx, align 8, !noalias !1514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1514
  store i64 0, ptr %i.h, align 8, !noalias !1514
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !1514
  store i64 0, ptr %.sroa.532.0..sroa_idx.i, align 8, !noalias !1514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1514
  %i.wq = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329)
          to label %bb.ii unwind label %.loopexit.split-lp17.i ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i102: ; preds = %bb.ij, %.loopexit.split-lp17.i, %.loopexit16.i
  %.pn37.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp19.i, %.loopexit.split-lp17.i ], [ %lpad.loopexit18.i, %.loopexit16.i ], [ %lpad.phi192, %bb.ij ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #29
          to label %.thread.i101 unwind label %.loopexit.split-lp.loopexit.split-lp.i92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit16.i:                                    ; preds = %.noexc49.i.preheader
  %lpad.loopexit18.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i102

.loopexit.split-lp17.i:                           ; preds = %bb.ih
  %lpad.loopexit.split-lp19.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i102

bb.ii:                                            ; preds = %bb.ih
  %i.wr = extractvalue { ptr, i64 } %i.wq, 0
  %i.ws = extractvalue { ptr, i64 } %i.wq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1514
  store i64 1, ptr %i.f, align 8, !noalias !1514
  store ptr %.42.i, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !1514
  store i64 %..i100, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !1514
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.wr, i64 noundef %i.ws, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.f, i64 noundef 1)
          to label %bb.ik unwind label %.loopexit188

.loopexit188:                                     ; preds = %bb.ii
  %lpad.loopexit190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ij

.loopexit.split-lp189:                            ; preds = %bb.il
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ij

bb.ij:                                            ; preds = %.loopexit188, %.loopexit.split-lp189
  %lpad.phi192 = phi { ptr, i32 } [ %lpad.loopexit190, %.loopexit188 ], [ %lpad.loopexit.split-lp191, %.loopexit.split-lp189 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i102 unwind label %.loopexit.split-lp.loopexit.split-lp.i92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.wt = load i8, ptr %i.g, align 8, !range !32, !alias.scope !1531, !noalias !1534, !noundef !12
  %i.wu = trunc nuw i8 %i.wt to i1
  br i1 %i.wu, label %bb.il, label %.noexc49.i.preheader, !prof !23

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1536
  %i.wv = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ww = load i8, ptr %i.wv, align 1, !range !708, !alias.scope !1531, !noalias !1534, !noundef !12
  store i8 %i.ww, ptr %i.b, align 1, !noalias !1536
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #28
          to label %.noexc.i103 unwind label %.loopexit.split-lp189

.noexc.i103:                                      ; preds = %bb.il
  unreachable

.noexc49.i.preheader:                             ; preds = %bb.ik
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit50.i unwind label %.loopexit16.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit50.i: ; preds = %.noexc49.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1514
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.in unwind label %bb.im

bb.im:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit50.i
  %i.wx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1514
  br label %.thread.i101

bb.in:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit50.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !1514
  invoke fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8push_mutBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.e)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit

.noexc114:                                        ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1514
  br label %bb.ic

.thread.i101:                                     ; preds = %bb.im, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i102, %.thread11.i
  %.pn399.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread11.i ], [ %.pn37.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i102 ], [ %i.wx, %bb.im ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #29
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.i92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvNtCs8frGy5WneL6_4fish10parse_util33detect_errors_in_backgrounded_job.exit: ; preds = %bb.ic, %bb.hz, %bb.hv, %bb.hi, %bb.hg, %bb.he
  %.sroa.0.2.i88 = phi i8 [ %.sroa.0.0.i99, %bb.ic ], [ 0, %bb.hz ], [ 0, %bb.he ], [ 0, %bb.hg ], [ 1, %bb.hi ], [ 1, %bb.hv ]
  %i.wy = or i8 %.sroa.0.2.i88, %.sroa.05.0
  br label %bb.i

_RNvNtCs8frGy5WneL6_4fish10parse_util32detect_errors_in_job_conjunction.exit: ; preds = %bb.p, %bb.n, %bb.af, %bb.r
  %.not16.i = phi i8 [ 1, %bb.r ], [ 1, %bb.af ], [ 0, %bb.n ], [ 0, %bb.p ]
  %i.wz = or i8 %.not16.i, %.sroa.05.0
  br label %bb.i

bb.io:                                            ; preds = %bb.ag
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ik, i64 224
  %.val53 = load ptr, ptr %i.xa, align 8, !nonnull !12, !noundef !12
  %i.xb = getelementptr i8, ptr %i.ik, i64 232
  %.val54 = load i64, ptr %i.xb, align 8, !noundef !12
  %i.xc = invoke fastcc noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish10parse_util39detect_errors_in_block_redirection_list(ptr noundef nonnull %i.gd, ptr %i.gg, ptr nonnull %.val53, i64 %.val54, ptr %3)
          to label %bb.ip unwind label %.loopexit.split-lp.loopexit

bb.ip:                                            ; preds = %bb.io
  %not.688 = xor i1 %i.il, true
  %spec.select34 = select i1 %not.688, i1 true, i1 %.sroa.018.0
  %i.xd = zext i1 %i.xc to i8
  %i.xe = or i8 %.sroa.05.0, %i.xd
  br label %bb.i

bb.iq:                                            ; preds = %bb.ah
  %i.xf = getelementptr inbounds nuw i8, ptr %i.im, i64 48
  %.val49 = load ptr, ptr %i.xf, align 8, !nonnull !12, !noundef !12
  %i.xg = getelementptr i8, ptr %i.im, i64 56
  %.val50 = load i64, ptr %i.xg, align 8, !noundef !12
  %i.xh = invoke fastcc noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish10parse_util39detect_errors_in_block_redirection_list(ptr noundef nonnull %i.gd, ptr %i.gg, ptr nonnull %.val49, i64 %.val50, ptr %3)
          to label %bb.ir unwind label %.loopexit.split-lp.loopexit

bb.ir:                                            ; preds = %bb.iq
  %not.687 = xor i1 %i.io, true
  %spec.select35 = select i1 %not.687, i1 true, i1 %.sroa.018.0
  %i.xi = zext i1 %i.xh to i8
  %i.xj = or i8 %.sroa.05.0, %i.xi
  br label %bb.i

bb.is:                                            ; preds = %bb.ai
  %i.xk = getelementptr inbounds nuw i8, ptr %i.ip, i64 288
  %.val45 = load ptr, ptr %i.xk, align 8, !nonnull !12, !noundef !12
  %i.xl = getelementptr i8, ptr %i.ip, i64 296
  %.val46 = load i64, ptr %i.xl, align 8, !noundef !12
  %i.xm = invoke fastcc noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish10parse_util39detect_errors_in_block_redirection_list(ptr noundef nonnull %i.gd, ptr %i.gg, ptr nonnull %.val45, i64 %.val46, ptr %3)
          to label %bb.it unwind label %.loopexit.split-lp.loopexit

bb.it:                                            ; preds = %bb.is
  %not.686 = xor i1 %i.ir, true
  %spec.select36 = select i1 %not.686, i1 true, i1 %.sroa.018.0
  %i.xn = zext i1 %i.xm to i8
  %i.xo = or i8 %.sroa.05.0, %i.xn
  br label %bb.i

bb.iu:                                            ; preds = %bb.aj
  %i.xp = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  %.val41 = load ptr, ptr %i.xp, align 8, !nonnull !12, !noundef !12
  %i.xq = getelementptr i8, ptr %i.is, i64 72
  %.val42 = load i64, ptr %i.xq, align 8, !noundef !12
  %i.xr = invoke fastcc noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish10parse_util39detect_errors_in_block_redirection_list(ptr noundef nonnull %i.gd, ptr %i.gg, ptr nonnull %.val41, i64 %.val42, ptr %3)
          to label %bb.iv unwind label %.loopexit.split-lp.loopexit

bb.iv:                                            ; preds = %bb.iu
  %not. = xor i1 %i.iu, true
  %spec.select37 = select i1 %not., i1 true, i1 %.sroa.018.0
  %i.xs = zext i1 %i.xr to i8
  %i.xt = or i8 %.sroa.05.0, %i.xs
  br label %bb.i

bb.iw:                                            ; preds = %.noexc87, %bb.cf
  %.sroa.0.5.i = phi i8 [ %.sroa.0.4.i, %bb.cf ], [ %.sroa.0.863.i, %.noexc87 ]
  %i.xu = or i8 %.sroa.0.5.i, %.sroa.05.0
  br label %bb.i

bb.ix:                                            ; preds = %bb.gz
  br i1 %i.tw, label %bb.iy, label %bb.i

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.xv = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast9StatementNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xv)
          to label %bb.iz unwind label %.loopexit.split-lp.loopexit

bb.iz:                                            ; preds = %bb.iy
  %i.xw = load i32, ptr %i.cy, align 4, !range !220, !noundef !12
  %.not32 = icmp eq i32 %i.xw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  %..sroa.019.0 = select i1 %.not32, i1 true, i1 %.sroa.019.0
  br label %bb.i

bb.ja:                                            ; preds = %bb.ha
  br i1 %i.ty, label %bb.jb, label %bb.i

bb.jb:                                            ; preds = %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %i.xx = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
end_hunk_1
