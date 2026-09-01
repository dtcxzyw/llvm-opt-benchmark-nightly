Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB7_4Eval4eval:bb.a
  %i.fe = extractvalue { i64, ptr } %i.ck, 0
  %i.ff = extractvalue { i64, ptr } %i.ck, 1
  invoke void @_RNvXs_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB6_4Eval4eval(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, i64 noundef %i.fe, ptr noundef %i.ff, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2)
          to label %bb.bf unwind label %.thread257.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bf:                                            ; preds = %bb.be
  %i.fg = load i64, ptr %i.z, align 8, !range !20, !noundef !4 ; 5 uses
  %i.fh = icmp eq i64 %i.fg, -1
  %i.fi = load ptr, ptr %.sroa.4111.0..sroa_idx, align 8 ; 4 uses
  %i.fj = load i64, ptr %.sroa.5112.0..sroa_idx, align 8 ; 6 uses
  br i1 %i.fh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fi, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fj, ptr %i.fl, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ec

bb.bh:                                            ; preds = %bb.bf
  %.sroa.6113.0.copyload = load i64, ptr %.sroa.6113.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %i.fg, ptr %i.aa, align 8
  store ptr %i.fi, ptr %.sroa.451.0..sroa_idx, align 8
  store i64 %i.fj, ptr %.sroa.552.0..sroa_idx, align 8
  store i64 %.sroa.6113.0.copyload, ptr %.sroa.653.0..sroa_idx, align 8
  %i.fm = icmp ne i64 %i.fg, 30
  call void @llvm.assume(i1 %i.fm)
  %i.fn = add nsw i64 %i.fg, -2
  %i.fo = icmp samesign ugt i64 %i.fg, 1
  %i.fp = select i1 %i.fo, i64 %i.fn, i64 28
  %i.fq = inttoptr i64 %i.fj to ptr               ; 4 uses
  switch i64 %i.fp, label %bb.bi [
    i64 0, label %bb.bj
    i64 23, label %bb.bk
    i64 24, label %bb.bl
    i64 26, label %bb.bm
  ]

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !range !19, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.o, i8 0, i64 15, i1 false)
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  store i8 -128, ptr %.sroa.4119.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ft = invoke noundef nonnull align 8 ptr @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value2ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %bb.dt unwind label %bb.ds

bb.bj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval.exit, %bb.cn, %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBK_5value5ValueENCNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB3N_4Eval4eval0EEB3N_.exit, %bb.bh
  %i.fu = load i64, ptr %i.aa, align 8, !range !94, !noundef !4 ; 3 uses
  %i.fv = icmp ne i64 %i.fu, 30
  call void @llvm.assume(i1 %i.fv)
  %i.fw = add nsw i64 %i.fu, -2
  %i.fx = icmp samesign ugt i64 %i.fu, 1
  %i.fy = select i1 %i.fx, i64 %i.fw, i64 28
  switch i64 %i.fy, label %bb.cr [
    i64 23, label %bb.cs
    i64 24, label %bb.cs
    i64 26, label %bb.cs
  ]

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations5arrayNtB5_5ArrayNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.x, ptr noundef nonnull %i.fi, i64 noundef %i.fj)
          to label %bb.bp unwind label %.thread293

bb.bl:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvXs8_NtNtCsdaEETE4DqmE_13typst_library11foundations4dictNtB5_4DictNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noundef nonnull %i.fi)
          to label %bb.bz unwind label %.thread293

bb.bm:                                            ; preds = %bb.bh
  %.not.i.i.i178 = icmp eq i64 %i.fj, 16
  br i1 %.not.i.i.i178, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fz = getelementptr inbounds i8, ptr %i.fq, i64 -16
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8, !noalias !18268
  %i.gb = icmp eq i64 %i.ga, 1
  %i.gc = zext i1 %i.gb to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit

.thread293:                                       ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i, %bb.bk, %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i, %bb.bl
  %lpad.thr_comm291 = landingpad { ptr, i32 }
          cleanup
  br label %.thread280

bb.bo:                                            ; preds = %bb.ea
  %lpad.thr_comm.split-lp292 = landingpad { ptr, i32 }
          cleanup
  br label %.thread250

bb.bp:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false)
  store ptr %i.aj, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !18271)
  call void @llvm.experimental.noalias.scope.decl(metadata !18274)
  %i.gd = load i64, ptr %i.be, align 8, !alias.scope !18276, !noalias !18281, !noundef !4 ; 4 uses
  %.promoted.i = load i64, ptr %i.bd, align 8, !alias.scope !18274, !noalias !18271 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18284
  %i.ge = icmp ult i64 %.promoted.i, %i.gd
  br i1 %i.ge, label %.lr.ph.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.bp
  %i.gf = load i8, ptr %i.bf, align 8, !range !249, !alias.scope !18276, !noalias !18285, !noundef !4
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = load ptr, ptr %i.bb, align 8, !alias.scope !18276, !noalias !18285, !nonnull !4, !noundef !4 ; 2 uses
  %i.gi = load i64, ptr %i.bg, align 8, !alias.scope !18274, !noalias !18271
  br label %bb.bq

bb.bq:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i, %.lr.ph.i
  %.val1314.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.gj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18292)
  %i.gj = add nuw i64 %.val1314.i, 1              ; 6 uses
  br i1 %i.gg, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gk = icmp ult i64 %.val1314.i, %i.gi
  call void @llvm.assume(i1 %i.gk)
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.gh, i64 %.val1314.i
  invoke fastcc void @_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gl) #48
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i unwind label %bb.bu, !noalias !18284

bb.bs:                                            ; preds = %bb.bq
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.gh, i64 %.val1314.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 32, i1 false), !noalias !18293
  br label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.bs, %bb.br
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.f, align 8, !noalias !18293 ; 2 uses
  %.not.i.i180 = icmp eq i64 %.sroa.0.0.copyload1.i.i, -1
  br i1 %.not.i.i180, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i.loopexit, label %bb.bv

bb.bt:                                            ; preds = %bb.bw, %bb.bu
  %.pn.i = phi { ptr, i32 } [ %i.gw, %bb.bw ], [ %i.gn, %bb.bu ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bb)
          to label %.thread280 unwind label %bb.by, !noalias !18271

bb.bu:                                            ; preds = %bb.br
  %i.gn = landingpad { ptr, i32 }
          cleanup
  store i64 %i.gj, ptr %i.bd, align 8, !alias.scope !18276, !noalias !18285
  br label %bb.bt

bb.bv:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !18284
  %i.go = load i64, ptr %i.aj, align 8, !range !19, !noalias !18294, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18284
  store i64 0, ptr %i.g, align 8, !noalias !18284
  store i64 %.sroa.0.0.copyload1.i.i, ptr %.sroa.76.0..sroa_idx.i, align 8, !noalias !18284
  store i64 %i.go, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !18284
  store i64 %i.go, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !18284
  %i.gp = load i64, ptr %i.aq, align 8, !alias.scope !18271, !noalias !18274, !noundef !4 ; 5 uses
  %i.gq = icmp ult i64 %i.gp, 128102389400760776
  call void @llvm.assume(i1 %i.gq)
  %i.gr = load i64, ptr %i.am, align 8, !range !238, !alias.scope !18271, !noalias !18274, !noundef !4
  %i.gs = icmp eq i64 %i.gp, %i.gr
  br i1 %i.gs, label %bb.bx, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i.loopexit: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i
  %.lcssa432 = phi i64 [ %i.gj, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.gd, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i ]
  store i64 %.lcssa432, ptr %i.bd, align 8, !alias.scope !18276, !noalias !18285
  br label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i.loopexit, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18284
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bb)
          to label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBK_5value5ValueENCNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB3N_4Eval4eval0EEB3N_.exit unwind label %.thread293

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.bx, %bb.bv
  %i.gt = load ptr, ptr %i.ap, align 8, !alias.scope !18271, !noalias !18274, !nonnull !4, !noundef !4
  %i.gu = getelementptr inbounds nuw [72 x i8], ptr %i.gt, i64 %i.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gu, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !noalias !18284
  %i.gv = add nuw nsw i64 %i.gp, 1
  store i64 %i.gv, ptr %i.aq, align 8, !alias.scope !18271, !noalias !18274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18284
  %exitcond.not.i = icmp eq i64 %i.gj, %i.gd
  br i1 %exitcond.not.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i.loopexit, label %bb.bq

bb.bw:                                            ; preds = %bb.bx
  %i.gw = landingpad { ptr, i32 }
          cleanup
  store i64 %i.gj, ptr %i.bd, align 8, !alias.scope !18276, !noalias !18285
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g) #44
          to label %bb.bt unwind label %bb.by, !noalias !18284

bb.bx:                                            ; preds = %bb.bv
  %i.gx = sub nuw i64 %i.gd, %i.gj
  %3 = add nuw i64 %i.gx, 1
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.gp, i64 noundef range(i64 1, 0) %3, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i unwind label %bb.bw, !noalias !18274

bb.by:                                            ; preds = %bb.bw, %bb.bt
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18284
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBK_5value5ValueENCNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB3N_4Eval4eval0EEB3N_.exit: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bj

bb.bz:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  store ptr %i.aj, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !18298)
  call void @llvm.experimental.noalias.scope.decl(metadata !18301)
  %.val.i184 = load ptr, ptr %i.av, align 8, !alias.scope !18301, !noalias !18298, !nonnull !4, !noundef !4 ; 2 uses
  %.val4.i185 = load ptr, ptr %i.aw, align 8, !alias.scope !18301, !noalias !18298, !nonnull !4, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %.val4.i185, %.val.i184
  br i1 %.not.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.cb, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.w, i64 40, i1 false), !noalias !18298
  %i.gz = load ptr, ptr %i.ax, align 8, !alias.scope !18304, !noalias !18311, !nonnull !4, !noundef !4 ; 3 uses
  %.promoted.i186 = load ptr, ptr %i.ay, align 8, !alias.scope !18304, !noalias !18311 ; 3 uses
  %i.ha = icmp eq ptr %.promoted.i186, %i.gz
  br i1 %i.ha, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.lr.ph.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.lr.ph.i: ; preds = %bb.ca
  %.val.i.i187 = load ptr, ptr %i.az, align 8, !noalias !18303, !nonnull !4, !align !462
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.hb = ptrtoint ptr %.val4.i185 to i64
  %i.hc = ptrtoint ptr %.val.i184 to i64
  %i.hd = sub nuw i64 %i.hb, %i.hc
  %i.he = udiv exact i64 %i.hd, 56
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an, i64 noundef %i.he)
          to label %bb.ca unwind label %bb.cm, !noalias !18301

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %bb.ck, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.lr.ph.i
  %i.hf = phi ptr [ %.promoted.i186, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.lr.ph.i ], [ %i.hg, %bb.ck ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18315)
  call void @llvm.experimental.noalias.scope.decl(metadata !18316)
  call void @llvm.experimental.noalias.scope.decl(metadata !18317)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 56 ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.hf, align 8, !noalias !18318 ; 2 uses
  %.not.i.i.i191 = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i191, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i, label %bb.cc

.body.i:                                          ; preds = %bb.cd
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsjFU9swAW47b_8indexmap3map4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1Z_5value5ValueENCNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB3k_4Eval4evals_0EEB3k_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #44
          to label %.thread280 unwind label %bb.cl, !noalias !18303

bb.cc:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i192 = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i64 16, i1 false), !noalias !18303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i189, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i192, i64 24, i1 false), !noalias !18303
  %i.hi = load i64, ptr %.val.i.i187, align 8, !range !19, !noalias !18319, !noundef !4 ; 2 uses
  store i64 1, ptr %i.d, align 8, !noalias !18303
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.8.0..sroa_idx.i188, align 8, !noalias !18303
  store i64 %i.hi, ptr %.sroa.10.0..sroa_idx.i190, align 8, !noalias !18303
  store i64 %i.hi, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !18303
  call void @llvm.experimental.noalias.scope.decl(metadata !18323)
  %i.hj = load i64, ptr %i.ao, align 8, !alias.scope !18326, !noalias !18327, !noundef !4
  %.val.i5.i = load ptr, ptr %i.an, align 8, !alias.scope !18326, !noalias !18327, !nonnull !4, !noundef !4 ; 2 uses
  %.not.i.i6.i = icmp eq ptr %.val.i5.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i6.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.ce

bb.cd:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hg, ptr %i.ay, align 8, !noalias !18303
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #44
          to label %.body.i unwind label %bb.cf, !noalias !18329, !inline_history !11999

bb.ce:                                            ; preds = %bb.cc
  %i.hl = getelementptr i8, ptr %.val.i5.i, i64 -8
  %.val.i.i.i = load i64, ptr %i.hl, align 8, !noalias !18330, !noundef !4
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.ce, %bb.cc
  %.sroa.02.0.i.i.i193 = phi i64 [ %.val.i.i.i, %bb.ce ], [ 0, %bb.cc ]
  %i.hm = icmp eq i64 %i.hj, %.sroa.02.0.i.i.i193
  %i.hn = zext i1 %i.hm to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an, i64 noundef %i.hn)
          to label %bb.ck unwind label %bb.cd, !noalias !18327, !inline_history !11999

bb.cf:                                            ; preds = %bb.cd
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18329, !inline_history !11999
  unreachable

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i: ; preds = %bb.ck, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i, %bb.ca
  %i.hp = phi ptr [ %.promoted.i186, %bb.ca ], [ %i.hg, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i ], [ %i.hg, %bb.ck ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18331)
  call void @llvm.experimental.noalias.scope.decl(metadata !18334)
  call void @llvm.experimental.noalias.scope.decl(metadata !18337)
  call void @llvm.experimental.noalias.scope.decl(metadata !18340)
  %i.hq = ptrtoint ptr %i.gz to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub nuw i64 %i.hq, %i.hr
  %i.ht = udiv exact i64 %i.hs, 56
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1d_5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 %i.hp, i64 noundef %i.ht)
          to label %bb.ci unwind label %bb.cg, !noalias !18343

bb.cg:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load i64, ptr %i.ba, align 8, !alias.scope !18344, !noalias !18303, !noundef !4 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %.thread280, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hx = load ptr, ptr %i.e, align 8, !alias.scope !18344, !noalias !18303, !nonnull !4, !noundef !4
  %i.hy = mul nuw i64 %i.hv, 56
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hx, i64 noundef %i.hy, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !18343
  br label %.thread280

bb.ci:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i
  %i.hz = load i64, ptr %i.ba, align 8, !alias.scope !18344, !noalias !18303, !noundef !4 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ib = load ptr, ptr %i.e, align 8, !alias.scope !18344, !noalias !18303, !nonnull !4, !noundef !4
  %i.ic = mul nuw i64 %i.hz, 56
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ib, i64 noundef %i.ic, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !18343
  br label %bb.cn

bb.ck:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.id = load ptr, ptr %i.an, align 8, !alias.scope !18326, !noalias !18327, !nonnull !4, !noundef !4
  %i.ie = load i64, ptr %i.ao, align 8, !alias.scope !18326, !noalias !18327, !noundef !4 ; 2 uses
  %i.if = getelementptr inbounds nuw [72 x i8], ptr %i.id, i64 %i.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.if, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !18329
  %i.ig = add i64 %i.ie, 1
  store i64 %i.ig, ptr %i.ao, align 8, !alias.scope !18326, !noalias !18327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18303
  %i.ih = icmp eq ptr %i.hg, %i.gz
  br i1 %i.ih, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i

bb.cl:                                            ; preds = %bb.cm, %.body.i
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18303
  unreachable

bb.cm:                                            ; preds = %bb.cb
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsjFU9swAW47b_8indexmap3map4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1Z_5value5ValueENCNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB3k_4Eval4evals_0EEB3k_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.w) #44
          to label %.thread280 unwind label %bb.cl, !noalias !18298

bb.cn:                                            ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bj

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.bn, %bb.bm
  %.sroa.02.0.i.i.i = phi i8 [ %i.gc, %bb.bn ], [ 1, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.fq, ptr %i.u, align 8
  store i64 %.sroa.6113.0.copyload, ptr %.sroa.4.0..sroa_idx223, align 8
  store i64 %.sroa.6113.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  store i8 %.sroa.02.0.i.i.i, ptr %.sroa.7225.0..sroa_idx, align 8
  %.not420 = icmp eq i64 %.sroa.6113.0.copyload, 0
  %.pre = trunc nuw i8 %.sroa.02.0.i.i.i to i1    ; 2 uses
  br i1 %.not420, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.dq, %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit
  store i64 %.sroa.6113.0.copyload, ptr %.sroa.5.0..sroa_idx224, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !18345)
  %.not.i.i197 = icmp ne i64 %i.fj, 16
  %or.cond.not.i.i = and i1 %.not.i.i197, %.pre
  br i1 %or.cond.not.i.i, label %bb.co, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i

bb.co:                                            ; preds = %._crit_edge
  store i64 0, ptr %.sroa.4.0..sroa_idx223, align 8, !alias.scope !18348
  %i.ik = getelementptr inbounds nuw [72 x i8], ptr %i.fq, i64 %.sroa.6113.0.copyload
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 %i.ik, i64 noundef 0)
          to label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i unwind label %bb.cp, !noalias !18345

bb.cp:                                            ; preds = %bb.co
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u) #44
          to label %.thread280 unwind label %bb.cq

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.co, %._crit_edge
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval.exit unwind label %.thread293

bb.cq:                                            ; preds = %bb.cp
end_hunk_0
