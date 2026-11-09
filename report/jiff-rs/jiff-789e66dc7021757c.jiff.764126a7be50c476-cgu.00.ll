Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.00?download=true
inline.NumInlined: 734
inline.NumDeleted: 227
begin_hunk_0_@_RINvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB3_4Date5untilTNtNtB7_4span4UnitBB_EEB7_:bb.a
  %.sroa.031.0500.i = phi i32 [ %i.fc, %bb.aq ], [ 0, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i ]
  %i.fj = zext i32 %.sroa.031.0500.i to i64
  %i.fk = shl nuw i64 %i.fj, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i: ; preds = %.thread496.i, %bb.ar
  %.sroa.032.0501.i = phi i32 [ %.sroa.032.0502.i, %.thread496.i ], [ %i.fd, %bb.ar ] ; 2 uses
  %.sroa.3.0.insert.insert.i.i175.i = phi i64 [ %i.fk, %.thread496.i ], [ %i.fi, %bb.ar ] ; 5 uses
  %i.fl = trunc i64 %.sroa.3.0.insert.insert.i.i175.i to i1
  br i1 %i.fl, label %bb.as, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit220.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit220.i: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.622.0.extract.shift.i176.i = lshr i64 %.sroa.3.0.insert.insert.i.i175.i, 32 ; 3 uses
  %.sroa.622.0.extract.trunc.i177.i = trunc nuw i64 %.sroa.622.0.extract.shift.i176.i to i32 ; 2 uses
  %i.fm = icmp slt i64 %.sroa.3.0.insert.insert.i.i175.i, 0
  %i.fn = sub i32 0, %.sroa.622.0.extract.trunc.i177.i
  %.sroa.016.0.i187.i = select i1 %i.fm, i32 %i.fn, i32 %.sroa.622.0.extract.trunc.i177.i ; 2 uses
  %.not522.i = icmp eq i64 %.sroa.622.0.extract.shift.i176.i, 0
  %masksel.i188.i = select i1 %.not522.i, i16 0, i16 128
  %i.fo = ashr i64 %.sroa.3.0.insert.insert.i.i175.i, 32 ; 2 uses
  %.sroa.0.0.i.i214.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.fo, i64 0)
  %i.fp = add nsw i32 %.sroa.032.0501.i, -7304485
  %or.cond.i221.i = icmp ult i32 %i.fp, -14608969
  br i1 %or.cond.i221.i, label %bb.ay, label %bb.az

bb.as:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.420.0.extract.shift.i217.i = lshr i64 %.sroa.3.0.insert.insert.i.i175.i, 8
  %.sroa.420.0.extract.trunc.i218.i = trunc i64 %.sroa.420.0.extract.shift.i217.i to i8
  %i.fq = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i218.i), !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !349
  store ptr %i.fq, ptr %i.b, align 8, !noalias !349
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 32, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.aw unwind label %bb.at, !noalias !350

bb.at:                                            ; preds = %bb.as
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.fs = load ptr, ptr %i.b, align 8, !alias.scope !353, !noalias !349, !noundef !5 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %common.resume.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fu = atomicrmw add ptr %i.fs, i64 -1 release, align 8, !noalias !354
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.av, label %common.resume.i

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %common.resume.i unwind label %bb.ax, !noalias !350

bb.aw:                                            ; preds = %bb.as
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !350
  unreachable

bb.ay:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit220.i
  %i.fx = tail call noundef i8 @_RNvXsW_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !355
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 8
  %i.ga = or disjoint i64 %i.fz, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i222.i

bb.az:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit220.i
  %i.gb = zext i32 %.sroa.032.0501.i to i64
  %i.gc = shl nuw i64 %i.gb, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i222.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i222.i: ; preds = %bb.az, %bb.ay
  %.sroa.3.0.insert.insert.i.i223.i = phi i64 [ %i.gc, %bb.az ], [ %i.ga, %bb.ay ] ; 5 uses
  %i.gd = trunc i64 %.sroa.3.0.insert.insert.i.i223.i to i1
  br i1 %i.gd, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i222.i
  %.sroa.622.0.extract.shift.i224.i = lshr i64 %.sroa.3.0.insert.insert.i.i223.i, 32 ; 2 uses
  %.sroa.622.0.extract.trunc.i225.i = trunc nuw i64 %.sroa.622.0.extract.shift.i224.i to i32 ; 2 uses
  %i.ge = icmp slt i64 %.sroa.3.0.insert.insert.i.i223.i, 0
  %i.gf = sub i32 0, %.sroa.622.0.extract.trunc.i225.i
  %.sroa.016.0.i235.i = select i1 %i.ge, i32 %i.gf, i32 %.sroa.622.0.extract.trunc.i225.i ; 3 uses
  %i.gg = icmp eq i64 %.sroa.622.0.extract.shift.i224.i, 0
  %masksel.i236.i = select i1 %i.gg, i16 0, i16 64
  %.sroa.018.0.i237.i = or disjoint i16 %masksel.i236.i, %masksel.i188.i ; 3 uses
  %i.gh = ashr i64 %.sroa.3.0.insert.insert.i.i223.i, 32 ; 3 uses
  %i.gi = icmp slt i64 %i.gh, 0
  br i1 %i.gi, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit173.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gj = or i64 %i.gh, %.sroa.622.0.extract.shift.i176.i
  %or.cond527.not.not.i = icmp eq i64 %i.gj, 0
  br i1 %or.cond527.not.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit173.i, label %.thread.i.i260.i

.thread.i.i260.i:                                 ; preds = %bb.bb
  %i.gk = icmp ne i64 %i.gh, 0
  %.sroa.027.0.in.i.i261.i = icmp eq i64 %i.fo, 0
  %spec.select.i.i262.i = zext i1 %i.gk to i8
  %spec.select.i263.i = select i1 %.sroa.027.0.in.i.i261.i, i8 %spec.select.i.i262.i, i8 %.sroa.0.0.i.i214.i
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit173.i

bb.bc:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i222.i
  %.sroa.420.0.extract.shift.i278.i = lshr i64 %.sroa.3.0.insert.insert.i.i223.i, 8
  %.sroa.420.0.extract.trunc.i279.i = trunc i64 %.sroa.420.0.extract.shift.i278.i to i8
  %i.gl = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i279.i), !noalias !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !356
  store ptr %i.gl, ptr %i.a, align 8, !noalias !356
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 31, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %bb.bg unwind label %bb.bd, !noalias !357

bb.bd:                                            ; preds = %bb.bc
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.gn = load ptr, ptr %i.a, align 8, !alias.scope !360, !noalias !356, !noundef !5 ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %common.resume.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = atomicrmw add ptr %i.gn, i64 -1 release, align 8, !noalias !361
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %bb.bf, label %common.resume.i

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %common.resume.i unwind label %bb.bh, !noalias !357

bb.bg:                                            ; preds = %bb.bc
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !357
  unreachable

_RNvMsv_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_14DateDifference23since_with_largest_unit.exit: ; preds = %bb.ap, %bb.c
  %.sroa.025.0 = phi ptr [ %i.fb, %bb.ap ], [ %i.l, %bb.c ]
  store ptr %.sroa.025.0, ptr %0, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.gs, align 4
  br label %bb.bi

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit173.i: ; preds = %bb.ba, %bb.bb, %.thread.i.i260.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i, %bb.an, %.thread.i.i164.i, %bb.b
  %.sroa.12.0.ph = phi i32 [ 0, %bb.b ], [ %.sroa.015.0.i.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ %.sroa.015.0.i.i, %.thread.i.i164.i ], [ %.sroa.015.0.i.i, %bb.an ], [ 0, %.thread.i.i260.i ], [ 0, %bb.bb ], [ 0, %bb.ba ]
  %.sroa.1327.0.ph = phi i32 [ 0, %bb.b ], [ 0, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ 0, %.thread.i.i164.i ], [ 0, %bb.an ], [ %.sroa.016.0.i187.i, %.thread.i.i260.i ], [ 0, %bb.bb ], [ %.sroa.016.0.i187.i, %bb.ba ]
  %.sroa.15.0.ph = phi i32 [ 0, %bb.b ], [ %.sroa.016.0.i.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ %.sroa.016.0.i.i, %.thread.i.i164.i ], [ %.sroa.016.0.i.i, %bb.an ], [ %.sroa.016.0.i235.i, %.thread.i.i260.i ], [ %.sroa.016.0.i235.i, %bb.bb ], [ %.sroa.016.0.i235.i, %bb.ba ]
  %.sroa.19.0.ph = phi i16 [ 0, %bb.b ], [ %.sroa.018.0.i.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ %.sroa.018.0.i.i, %.thread.i.i164.i ], [ %.sroa.018.0.i.i, %bb.an ], [ %.sroa.018.0.i237.i, %.thread.i.i260.i ], [ %.sroa.018.0.i237.i, %bb.bb ], [ %.sroa.018.0.i237.i, %bb.ba ]
  %.sroa.21.0.ph = phi i16 [ 0, %bb.b ], [ %.sroa.012.0.i.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ %.sroa.012.0.i.i, %.thread.i.i164.i ], [ %.sroa.012.0.i.i, %bb.an ], [ 0, %.thread.i.i260.i ], [ 0, %bb.bb ], [ 0, %bb.ba ]
  %.sroa.23.0.ph = phi i8 [ 0, %bb.b ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ %spec.select529.i, %.thread.i.i164.i ], [ 0, %bb.an ], [ %spec.select.i263.i, %.thread.i.i260.i ], [ 0, %bb.bb ], [ -1, %bb.ba ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1126, i8 0, i64 32, i1 false)
  store ptr null, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1126, i64 32, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.12.0.ph, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.1327.0.ph, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.15.0.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.19.0.ph, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.21.0.ph, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.23.0.ph, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i24 0, ptr %.sroa.10.0..sroa_idx, align 1
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit173.i, %_RNvMsv_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_14DateDifference23since_with_largest_unit.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB3_8DateTime5untilTNtNtB7_4span4UnitBF_EEB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, i64 %.0.val, i32 %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.k = load i8, ptr %1, align 4, !range !10, !alias.scope !414, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.13.sroa.4.5.copyload = load i64, ptr %i.l, align 4, !alias.scope !415 ; 8 uses
  %.sroa.13.sroa.6.5..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.13.sroa.6.5.copyload = load i32, ptr %.sroa.13.sroa.6.5..sroa_idx, align 4, !alias.scope !415 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.m = icmp samesign ult i8 %i.k, 7
  br i1 %i.m, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.6.5.copyload to i16 ; 8 uses
  %.sroa.3.0.extract.shift.i = lshr i32 %.sroa.13.sroa.6.5.copyload, 24
  %.sroa.3.0.extract.trunc.i = trunc nuw i32 %.sroa.3.0.extract.shift.i to i8 ; 4 uses
  %.sroa.03.0.extract.trunc.i = trunc i32 %.8.val to i16 ; 2 uses
  %.sroa.35.0.extract.shift.i = lshr i32 %.8.val, 24
  %.sroa.35.0.extract.trunc.i = trunc nuw i32 %.sroa.35.0.extract.shift.i to i8
  %i.n = tail call i8 @llvm.scmp.i8.i16(i16 %.sroa.0.0.extract.trunc.i, i16 %.sroa.03.0.extract.trunc.i)
  %i.o = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.03.0.extract.trunc.i
  br i1 %i.o, label %bb.c, label %_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.24.0.extract.shift.i = lshr i32 %.8.val, 16
  %.sroa.24.0.extract.trunc.i = trunc i32 %.sroa.24.0.extract.shift.i to i8 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i32 %.sroa.13.sroa.6.5.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i32 %.sroa.2.0.extract.shift.i to i8 ; 2 uses
  %i.p = tail call i8 @llvm.scmp.i8.i8(i8 %.sroa.2.0.extract.trunc.i, i8 %.sroa.24.0.extract.trunc.i)
  %i.q = icmp eq i8 %.sroa.2.0.extract.trunc.i, %.sroa.24.0.extract.trunc.i
  br i1 %i.q, label %bb.d, label %_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i8 @llvm.scmp.i8.i8(i8 %.sroa.3.0.extract.trunc.i, i8 %.sroa.35.0.extract.trunc.i)
  br label %_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit

_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.i.i28 = phi i8 [ %i.r, %bb.d ], [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.s = shl i64 %.sroa.13.sroa.4.5.copyload, 24
  %i.t = ashr i64 %i.s, 56
  %i.u = shl i64 %.sroa.13.sroa.4.5.copyload, 16
  %i.v = ashr i64 %i.u, 56
  %i.w = shl i64 %.sroa.13.sroa.4.5.copyload, 8
  %i.x = ashr i64 %i.w, 56
  %i.y = shl i64 %.sroa.13.sroa.4.5.copyload, 32
  %i.z = ashr exact i64 %i.y, 32
  %i.aa = shl i64 %.0.val, 24
  %i.ab = ashr i64 %i.aa, 56
  %i.ac = shl i64 %.0.val, 16
  %i.ad = ashr i64 %i.ac, 56
  %i.ae = shl i64 %.0.val, 8
  %i.af = ashr i64 %i.ae, 56
  %i.ag = shl i64 %.0.val, 32
  %i.ah = ashr exact i64 %i.ag, 32
  %reass.add.i = sub nsw i64 %i.x, %i.af
  %reass.mul.i = mul nsw i64 %reass.add.i, 1000000000
  %reass.add39.i = sub nsw i64 %i.t, %i.ab
  %reass.mul40.i = mul nsw i64 %reass.add39.i, 3600000000000
  %reass.add42.i = sub nsw i64 %i.v, %i.ad
  %reass.mul43.i = mul nsw i64 %reass.add42.i, 60000000000
  %i.ai = sub nsw i64 %i.z, %i.ah
  %i.aj = add nsw i64 %i.ai, %reass.mul.i
  %i.ak = add nsw i64 %i.aj, %reass.mul40.i
  %i.al = add nsw i64 %i.ak, %reass.mul43.i       ; 7 uses
  switch i8 %.sroa.0.0.i.i.i28, label %default.unreachable.i [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 -1, label %bb.ab
  ]

bb.e:                                             ; preds = %bb.a
  %i.am = shl i32 %.sroa.13.sroa.6.5.copyload, 8
  %i.an = ashr i32 %i.am, 24                      ; 3 uses
  %i.ao = icmp ult i32 %i.an, 3                   ; 2 uses
  %i.ap = or disjoint i32 %i.an, 12
  %.sroa.02.0.i.i22 = select i1 %i.ao, i32 %i.ap, i32 %i.an
  %i.aq = shl i32 %.sroa.13.sroa.6.5.copyload, 16
  %i.ar = ashr exact i32 %i.aq, 16
  %i.as = add nsw i32 %i.ar, 32800
  %.neg.i.i23 = sext i1 %i.ao to i32
  %i.at = add nsw i32 %i.as, %.neg.i.i23          ; 3 uses
  %i.au = ashr i32 %.sroa.13.sroa.6.5.copyload, 24
  %i.av = udiv i32 %i.at, 100
  %i.aw = mul nuw nsw i32 %i.at, 1461
  %i.ax = lshr i32 %i.aw, 2
  %i.ay = udiv i32 %i.at, 400
  %i.az = mul nsw i32 %.sroa.02.0.i.i22, 979
  %i.ba = add nsw i32 %i.az, -2919
  %i.bb = lshr i32 %i.ba, 5
  %i.bc = add nsw i32 %i.au, -12699423
  %i.bd = sub nuw nsw i32 %i.bc, %i.av
  %i.be = add nuw nsw i32 %i.bd, %i.ay
  %i.bf = add nsw i32 %i.be, %i.ax
  %i.bg = add nsw i32 %i.bf, %i.bb
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.bh, 86400
  %i.bj = shl i64 %.sroa.13.sroa.4.5.copyload, 24
  %i.bk = ashr i64 %i.bj, 56
  %i.bl = mul nsw i64 %i.bk, 3600000000000
  %i.bm = shl i64 %.sroa.13.sroa.4.5.copyload, 16
  %i.bn = ashr i64 %i.bm, 56
  %i.bo = mul nsw i64 %i.bn, 60000000000
  %i.bp = shl i64 %.sroa.13.sroa.4.5.copyload, 8
  %i.bq = ashr i64 %i.bp, 56
  %i.br = mul nsw i64 %i.bq, 1000000000
  %i.bs = shl i64 %.sroa.13.sroa.4.5.copyload, 32
  %i.bt = ashr exact i64 %i.bs, 32
  %i.bu = add nsw i64 %i.bl, %i.bt
  %i.bv = add nsw i64 %i.bu, %i.bo
  %i.bw = add nsw i64 %i.bv, %i.br                ; 2 uses
  %i.bx = sdiv i64 %i.bw, 1000000000
  %i.by = srem i64 %i.bw, 1000000000              ; 2 uses
  %i.bz = trunc nsw i64 %i.by to i32              ; 5 uses
  %i.ca = add nsw i64 %i.bi, %i.bx                ; 7 uses
  %i.cb = icmp eq i64 %i.by, 0
  br i1 %i.cb, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = tail call i64 @llvm.scmp.i64.i64(i64 %i.ca, i64 0)
  %i.ce = tail call i64 @llvm.scmp.i64.i32(i32 %i.bz, i32 0)
  %.not.i.i24 = icmp eq i64 %i.cd, %i.ce
  br i1 %.not.i.i24, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = icmp slt i64 %i.ca, 0
  br i1 %i.cf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = add nsw i64 %i.ca, -1
  %i.ch = add nsw i32 %i.bz, 1000000000
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27

bb.j:                                             ; preds = %bb.h
  %i.ci = add nsw i64 %i.ca, 1
  %i.cj = add nsw i32 %i.bz, -1000000000
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27

_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27: ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.6.0.ph.i25 = phi i32 [ %i.bz, %bb.g ], [ %i.ch, %bb.i ], [ %i.cj, %bb.j ], [ %i.bz, %bb.f ], [ 0, %bb.e ]
  %.sroa.4.0.ph.i26 = phi i64 [ %i.ca, %bb.g ], [ %i.cg, %bb.i ], [ %i.ci, %bb.j ], [ 0, %bb.f ], [ %i.ca, %bb.e ]
  %i.ck = shl i32 %.8.val, 8
  %i.cl = ashr i32 %i.ck, 24                      ; 3 uses
  %i.cm = icmp ult i32 %i.cl, 3                   ; 2 uses
  %i.cn = or disjoint i32 %i.cl, 12
  %.sroa.02.0.i.i = select i1 %i.cm, i32 %i.cn, i32 %i.cl
  %i.co = shl i32 %.8.val, 16
  %i.cp = ashr exact i32 %i.co, 16
  %i.cq = add nsw i32 %i.cp, 32800
  %.neg.i.i = sext i1 %i.cm to i32
  %i.cr = add nsw i32 %i.cq, %.neg.i.i            ; 3 uses
  %i.cs = ashr i32 %.8.val, 24
  %i.ct = udiv i32 %i.cr, 100
  %i.cu = mul nuw nsw i32 %i.cr, 1461
  %i.cv = lshr i32 %i.cu, 2
  %i.cw = udiv i32 %i.cr, 400
  %i.cx = mul nsw i32 %.sroa.02.0.i.i, 979
  %i.cy = add nsw i32 %i.cx, -2919
  %i.cz = lshr i32 %i.cy, 5
  %i.da = add nsw i32 %i.cs, -12699423
  %i.db = sub nuw nsw i32 %i.da, %i.ct
  %i.dc = add nuw nsw i32 %i.db, %i.cw
  %i.dd = add nsw i32 %i.dc, %i.cv
  %i.de = add nsw i32 %i.dd, %i.cz
  %i.df = sext i32 %i.de to i64
  %i.dg = mul nsw i64 %i.df, 86400
  %i.dh = shl i64 %.0.val, 24
  %i.di = ashr i64 %i.dh, 56
  %i.dj = mul nsw i64 %i.di, 3600000000000
  %i.dk = shl i64 %.0.val, 16
  %i.dl = ashr i64 %i.dk, 56
  %i.dm = mul nsw i64 %i.dl, 60000000000
  %i.dn = shl i64 %.0.val, 8
  %i.do = ashr i64 %i.dn, 56
  %i.dp = mul nsw i64 %i.do, 1000000000
  %i.dq = shl i64 %.0.val, 32
  %i.dr = ashr exact i64 %i.dq, 32
  %i.ds = add nsw i64 %i.dj, %i.dr
  %i.dt = add nsw i64 %i.ds, %i.dm
  %i.du = add nsw i64 %i.dt, %i.dp                ; 2 uses
  %i.dv = sdiv i64 %i.du, 1000000000
  %i.dw = srem i64 %i.du, 1000000000              ; 2 uses
  %i.dx = trunc nsw i64 %i.dw to i32              ; 5 uses
  %i.dy = add nsw i64 %i.dg, %i.dv                ; 7 uses
  %i.dz = icmp eq i64 %i.dw, 0
  br i1 %i.dz, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27
  %i.ea = icmp eq i64 %i.dy, 0
  br i1 %i.ea, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eb = tail call i64 @llvm.scmp.i64.i64(i64 %i.dy, i64 0)
  %i.ec = tail call i64 @llvm.scmp.i64.i32(i32 %i.dx, i32 0)
  %.not.i.i18 = icmp eq i64 %i.eb, %i.ec
  br i1 %.not.i.i18, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = icmp slt i64 %i.dy, 0
  br i1 %i.ed, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = add nsw i64 %i.dy, -1
  %i.ef = add nsw i32 %i.dx, 1000000000
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.eg = add nsw i64 %i.dy, 1
  %i.eh = add nsw i32 %i.dx, -1000000000
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27
  %.sroa.6.0.ph.i19 = phi i32 [ %i.dx, %bb.l ], [ %i.ef, %bb.n ], [ %i.eh, %bb.o ], [ %i.dx, %bb.k ], [ 0, %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27 ]
  %.sroa.4.0.ph.i20 = phi i64 [ %i.dy, %bb.l ], [ %i.ee, %bb.n ], [ %i.eg, %bb.o ], [ 0, %bb.k ], [ %i.dy, %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27 ]
  %i.ei = sub nsw i64 %.sroa.4.0.ph.i26, %.sroa.4.0.ph.i20 ; 4 uses
  %i.ej = sub i32 %.sroa.6.0.ph.i25, %.sroa.6.0.ph.i19 ; 6 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.el = icmp sgt i32 %i.ej, 999999999
  br i1 %i.el, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.em = icmp slt i32 %i.ej, -999999999
  br i1 %i.em, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.en = add nsw i64 %i.ei, -1
  %i.eo = add nsw i32 %i.ej, 1000000000
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.sroa.016.1.i.i = phi i64 [ %i.er, %bb.u ], [ %i.en, %bb.s ], [ %i.ei, %bb.r ] ; 7 uses
  %.sroa.02.1.i.i = phi i32 [ %i.es, %bb.u ], [ %i.eo, %bb.s ], [ %i.ej, %bb.r ] ; 6 uses
  %i.ep = icmp eq i64 %.sroa.016.1.i.i, 0
  %i.eq = icmp eq i32 %.sroa.02.1.i.i, 0
  %or.cond.i.i16 = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond.i.i16, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit, label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.er = add nsw i64 %i.ei, 1
  %i.es = add nsw i32 %i.ej, -1000000000
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.et = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i.i, i64 0)
  %i.eu = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i.i, i32 0)
  %.not.i.i17 = icmp eq i64 %i.et, %i.eu
  br i1 %.not.i.i17, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = icmp slt i64 %.sroa.016.1.i.i, 0
  br i1 %i.ev, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ew = add nsw i64 %.sroa.016.1.i.i, -1
  %i.ex = add nsw i32 %.sroa.02.1.i.i, 1000000000
  br label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit

bb.y:                                             ; preds = %bb.w
  %i.ey = add nsw i64 %.sroa.016.1.i.i, 1
  %i.ez = add nsw i32 %.sroa.02.1.i.i, -1000000000
  br label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit

_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit: ; preds = %bb.p, %bb.t, %bb.v, %bb.x, %bb.y
  %.sroa.6.0.ph.i = phi i32 [ %.sroa.02.1.i.i, %bb.v ], [ %i.ex, %bb.x ], [ %i.ez, %bb.y ], [ %.sroa.02.1.i.i, %bb.t ], [ 0, %bb.p ]
  %.sroa.4.0.ph.i = phi i64 [ %.sroa.016.1.i.i, %bb.v ], [ %i.ew, %bb.x ], [ %i.ey, %bb.y ], [ %.sroa.016.1.i.i, %bb.t ], [ %i.ei, %bb.p ]
  call void @_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span23from_invariant_duration(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, i8 noundef %i.k, i64 noundef %.sroa.4.0.ph.i, i32 noundef %.sroa.6.0.ph.i), !noalias !417, !inline_history !372
  br label %_RNvMst_NtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB5_18DateTimeDifference23until_with_largest_unit.exit

default.unreachable.i:                            ; preds = %_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit
  unreachable

bb.z:                                             ; preds = %_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit70.i, label %bb.bc

bb.aa:                                            ; preds = %_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit
  %i.fa = icmp slt i64 %i.al, 0
  br i1 %i.fa, label %bb.ac, label %bb.bc

bb.ab:                                            ; preds = %_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit
  %i.fb = icmp slt i64 %i.al, 1
  br i1 %i.fb, label %bb.bc, label %bb.aq

bb.ac:                                            ; preds = %bb.aa
  %.sroa.45.0.extract.shift.i.i = lshr i32 %.sroa.13.sroa.6.5.copyload, 16
  %.sroa.45.0.extract.trunc.i.i = trunc i32 %.sroa.45.0.extract.shift.i.i to i8 ; 2 uses
  %.sroa.5.0.extract.shift.mask.i.i = and i32 %.sroa.13.sroa.6.5.copyload, -16777216
  %i.fc = icmp eq i32 %.sroa.5.0.extract.shift.mask.i.i, 16777216
  br i1 %i.fc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fd = icmp eq i8 %.sroa.45.0.extract.trunc.i.i, 1
  br i1 %i.fd, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %.sroa.028.0.insert.insert.i.i = add i32 %.sroa.13.sroa.6.5.copyload, -16777216
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit70.i

bb.af:                                            ; preds = %bb.ad
  %i.fe = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.0.0.extract.trunc.i, i16 -1) ; 2 uses
  %i.ff = extractvalue { i16, i1 } %i.fe, 0       ; 2 uses
  %i.fg = extractvalue { i16, i1 } %i.fe, 1
  %i.fh = add i16 %i.ff, -10000
  %or.cond.i.i15 = icmp ult i16 %i.fh, -19999
  %or.cond39.not.i.i = or i1 %i.fg, %or.cond.i.i15
  br i1 %or.cond39.not.i.i, label %bb.ak, label %bb.aj, !prof !11

bb.ag:                                            ; preds = %bb.ad
  %i.fi = add i8 %.sroa.45.0.extract.trunc.i.i, -1 ; 4 uses
  %i.fj = icmp eq i8 %i.fi, 2
  br i1 %i.fj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fk = srem i16 %.sroa.0.0.extract.trunc.i, 25
  %i.fl = icmp eq i16 %i.fk, 0
  %..i.i.i13 = select i1 %i.fl, i16 15, i16 3
  %i.fm = and i16 %..i.i.i13, %.sroa.0.0.extract.trunc.i
  %i.fn = icmp eq i16 %i.fm, 0
  %spec.select.i.i.i14 = select i1 %i.fn, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i12

bb.ai:                                            ; preds = %bb.ag
  %i.fo = ashr i8 %i.fi, 3
  %i.fp = xor i8 %i.fo, %i.fi
  %i.fq = or i8 %i.fp, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i12

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i12: ; preds = %bb.ai, %bb.ah
  %.sroa.0.0.i.i.i = phi i8 [ %spec.select.i.i.i14, %bb.ah ], [ %i.fq, %bb.ai ]
  %.sroa.527.0.insert.ext.i.i = zext i8 %.sroa.0.0.i.i.i to i32
  %.sroa.527.0.insert.shift.i.i = shl nuw i32 %.sroa.527.0.insert.ext.i.i, 24
  %.sroa.426.0.insert.ext.i.i = zext i8 %i.fi to i32
  %.sroa.426.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.426.0.insert.ext.i.i, 16
  %.sroa.426.0.insert.insert.i.i = or disjoint i32 %.sroa.527.0.insert.shift.i.i, %.sroa.426.0.insert.shift.i.i
  %.sroa.025.0.insert.ext.i.i = and i32 %.sroa.13.sroa.6.5.copyload, 65535
  %.sroa.025.0.insert.insert.i.i = or disjoint i32 %.sroa.426.0.insert.insert.i.i, %.sroa.025.0.insert.ext.i.i
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit70.i

bb.aj:                                            ; preds = %bb.af
  %.sroa.022.0.insert.ext.i.i = zext i16 %i.ff to i32
  %.sroa.022.0.insert.insert.i.i = or disjoint i32 %.sroa.022.0.insert.ext.i.i, 520880128
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit70.i

bb.ak:                                            ; preds = %bb.af
  %i.fr = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 8447) #21, !noalias !418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !419
  store ptr %i.fr, ptr %i.b, align 8, !noalias !419
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #22
          to label %bb.ao unwind label %bb.al, !noalias !420, !inline_history !372

bb.al:                                            ; preds = %bb.ak
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  call void @llvm.experimental.noalias.scope.decl(metadata !422), !noalias !420
  %i.ft = load ptr, ptr %i.b, align 8, !alias.scope !423, !noalias !420, !noundef !5 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fv = atomicrmw add ptr %i.ft, i64 -1 release, align 8, !noalias !424
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.an, label %common.resume

bb.an:                                            ; preds = %bb.am
  fence acquire, !noalias !420
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %common.resume unwind label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !420, !inline_history !372
  unreachable

common.resume:                                    ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.az, %bb.ax, %bb.ay, %bb.an, %bb.al, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.gs, %bb.az ], [ %i.fs, %bb.an ], [ %i.fs, %bb.am ], [ %i.fs, %bb.al ], [ %i.gs, %bb.ay ], [ %i.gs, %bb.ax ], [ %i.hk, %bb.bi ], [ %i.hk, %bb.bh ], [ %i.hk, %bb.bg ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit70.i: ; preds = %bb.ar, %.thread.i.i, %bb.av, %bb.ae, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i12, %bb.aj, %bb.z
  %.sroa.023.0.i = phi i32 [ %.sroa.025.0.insert.insert.i.i, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i12 ], [ %.sroa.13.sroa.6.5.copyload, %bb.z ], [ %.sroa.028.0.insert.insert.i.i, %bb.ae ], [ %.sroa.022.0.insert.insert.i.i, %bb.aj ], [ %.sroa.026.0.insert.insert.i.i, %bb.ar ], [ %.sroa.020.0.insert.insert.i.i, %bb.av ], [ %.sroa.023.0.insert.insert.i.i, %.thread.i.i ]
  %i.fy = sext i8 %.sroa.0.0.i.i.i28 to i64
  %i.fz = mul nsw i64 %i.fy, 86400000000000
  %i.ga = add nsw i64 %i.fz, %i.al
  br label %bb.bc

bb.aq:                                            ; preds = %bb.ab
  %.sroa.4.0.extract.shift.i.i = lshr i32 %.sroa.13.sroa.6.5.copyload, 16
  %.sroa.4.0.extract.trunc.i.i = trunc i32 %.sroa.4.0.extract.shift.i.i to i8 ; 4 uses
  %i.gb = icmp sgt i8 %.sroa.3.0.extract.trunc.i, 27
  br i1 %i.gb, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.thread.i.i, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i, %bb.aq
  %2 = and i32 %.sroa.13.sroa.6.5.copyload, -16777216
  %.sroa.528.0.insert.shift.i.i = add i32 %2, 16777216
  %3 = and i32 %.sroa.13.sroa.6.5.copyload, 16777215
  %.sroa.026.0.insert.insert.i.i = or disjoint i32 %.sroa.528.0.insert.shift.i.i, %3
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit70.i

bb.as:                                            ; preds = %bb.aq
  %i.gc = icmp eq i8 %.sroa.4.0.extract.trunc.i.i, 2
  br i1 %i.gc, label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.thread.i.i, label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i: ; preds = %bb.as
  %i.gd = ashr i8 %.sroa.4.0.extract.trunc.i.i, 3
  %i.ge = xor i8 %i.gd, %.sroa.4.0.extract.trunc.i.i
  %i.gf = or i8 %i.ge, 30
  %i.gg = icmp eq i8 %i.gf, %.sroa.3.0.extract.trunc.i
  br i1 %i.gg, label %bb.at, label %bb.ar

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.thread.i.i: ; preds = %bb.as
  %i.gh = srem i16 %.sroa.0.0.extract.trunc.i, 25
  %i.gi = icmp eq i16 %i.gh, 0
  %..i.i.i = select i1 %i.gi, i16 15, i16 3
  %i.gj = and i16 %..i.i.i, %.sroa.0.0.extract.trunc.i
  %i.gk = icmp eq i16 %i.gj, 0
  %spec.select.i.i.i = select i1 %i.gk, i8 29, i8 28
  %i.gl = icmp eq i8 %spec.select.i.i.i, %.sroa.3.0.extract.trunc.i
  br i1 %i.gl, label %.thread.i.i, label %bb.ar

bb.at:                                            ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i
  %i.gm = icmp eq i8 %.sroa.4.0.extract.trunc.i.i, 12
  br i1 %i.gm, label %bb.au, label %.thread.i.i

bb.au:                                            ; preds = %bb.at
  %i.gn = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.0.0.extract.trunc.i, i16 1) ; 2 uses
  %i.go = extractvalue { i16, i1 } %i.gn, 0       ; 2 uses
  %i.gp = extractvalue { i16, i1 } %i.gn, 1
  %i.gq = add i16 %i.go, -10000
  %or.cond.i.i = icmp ult i16 %i.gq, -19999
  %or.cond37.not.i.i = or i1 %i.gp, %or.cond.i.i
  br i1 %or.cond37.not.i.i, label %bb.aw, label %bb.av, !prof !11

.thread.i.i:                                      ; preds = %bb.at, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.thread.i.i
  %.sroa.424.0.insert.ext.i.i = add i32 %.sroa.13.sroa.6.5.copyload, 65536
  %.sroa.424.0.insert.shift.i.i = and i32 %.sroa.424.0.insert.ext.i.i, 16711680
  %.sroa.023.0.insert.ext.i.i = and i32 %.sroa.13.sroa.6.5.copyload, 65535
  %.sroa.424.0.insert.insert.i.i = or disjoint i32 %.sroa.023.0.insert.ext.i.i, %.sroa.424.0.insert.shift.i.i
  %.sroa.023.0.insert.insert.i.i = or disjoint i32 %.sroa.424.0.insert.insert.i.i, 16777216
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit70.i

bb.av:                                            ; preds = %bb.au
  %.sroa.020.0.insert.ext.i.i = zext i16 %i.go to i32
  %.sroa.020.0.insert.insert.i.i = or disjoint i32 %.sroa.020.0.insert.ext.i.i, 16842752
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit70.i

bb.aw:                                            ; preds = %bb.au
  %i.gr = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 8447) #21, !noalias !425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !426
  store ptr %i.gr, ptr %i.c, align 8, !noalias !426
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #22
          to label %bb.ba unwind label %bb.ax, !noalias !427, !inline_history !372

bb.ax:                                            ; preds = %bb.aw
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  call void @llvm.experimental.noalias.scope.decl(metadata !429), !noalias !427
  %i.gt = load ptr, ptr %i.c, align 8, !alias.scope !430, !noalias !427, !noundef !5 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %common.resume, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gv = atomicrmw add ptr %i.gt, i64 -1 release, align 8, !noalias !431
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.az, label %common.resume

bb.az:                                            ; preds = %bb.ay
  fence acquire, !noalias !427
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %common.resume unwind label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !427, !inline_history !372
  unreachable

bb.bc:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit70.i, %bb.ab, %bb.aa, %bb.z
  %.sroa.023.1.i = phi i32 [ %.sroa.023.0.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit70.i ], [ %.sroa.13.sroa.6.5.copyload, %bb.ab ], [ %.sroa.13.sroa.6.5.copyload, %bb.aa ], [ %.sroa.13.sroa.6.5.copyload, %bb.z ]
  %.sroa.011.0.i = phi i64 [ %i.ga, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit70.i ], [ %i.al, %bb.ab ], [ %i.al, %bb.aa ], [ %i.al, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !432
  %.sroa.065.0.insert.ext.i = zext nneg i8 %i.k to i48
  %.sroa.065.2.insert.ext.i = zext i32 %.sroa.023.1.i to i48
  %.sroa.065.2.insert.shift.i = shl nuw i48 %.sroa.065.2.insert.ext.i, 16
  %.sroa.065.2.insert.insert.i = or disjoint i48 %.sroa.065.2.insert.shift.i, %.sroa.065.0.insert.ext.i
  call fastcc void @_RINvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB3_4Date5untilTNtNtB7_4span4UnitBB_EEB7_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.i, i32 noundef %.8.val, i48 %.sroa.065.2.insert.insert.i) #25, !noalias !432, !inline_history !372
  %i.gy = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.gz = load i8, ptr %i.gy, align 4, !range !7, !noalias !432, !noundef !5 ; 3 uses
  %i.ha = icmp eq i8 %i.gz, -2
  br i1 %i.ha, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hb = load ptr, ptr %i.i, align 8, !noalias !432, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !432
  store ptr %i.hb, ptr %i.j, align 8, !alias.scope !416
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  store i8 -2, ptr %i.hc, align 4, !alias.scope !416
  br label %_RNvMst_NtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB5_18DateTimeDifference23until_with_largest_unit.exit

bb.be:                                            ; preds = %bb.bc
  %.sroa.449.i.sroa.4.0..sroa.449.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.449.i.sroa.4.0.copyload = load i32, ptr %.sroa.449.i.sroa.4.0..sroa.449.0..sroa_idx.i.sroa_idx, align 8, !noalias !432
  %.sroa.449.i.sroa.5.0..sroa.449.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %.sroa.449.i.sroa.5.0.copyload = load i32, ptr %.sroa.449.i.sroa.5.0..sroa.449.0..sroa_idx.i.sroa_idx, align 4, !noalias !432
  %.sroa.449.i.sroa.6.0..sroa.449.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.449.i.sroa.6.0.copyload = load i32, ptr %.sroa.449.i.sroa.6.0..sroa.449.0..sroa_idx.i.sroa_idx, align 8, !noalias !432
  %.sroa.449.i.sroa.8.0..sroa.449.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %.sroa.449.i.sroa.8.0.copyload = load i16, ptr %.sroa.449.i.sroa.8.0..sroa.449.0..sroa_idx.i.sroa_idx, align 2, !noalias !432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !432
  %i.hd = sdiv i64 %.sroa.011.0.i, 1000000000
  %i.he = srem i64 %.sroa.011.0.i, 1000000000
  %i.hf = trunc nsw i64 %i.he to i32
  call void @_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span23from_invariant_duration(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, i8 noundef %i.k, i64 noundef %i.hd, i32 noundef %i.hf), !noalias !432, !inline_history !372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.hh = load i8, ptr %i.hg, align 4, !range !7, !alias.scope !434, !noalias !432, !noundef !5
  %i.hi = icmp eq i8 %i.hh, -2
  br i1 %i.hi, label %bb.bf, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit, !prof !6

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !435
  %i.hj = load ptr, ptr %i.g, align 8, !alias.scope !434, !noalias !432, !noundef !5
  store ptr %i.hj, ptr %i.a, align 8, !noalias !435
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #22
          to label %bb.bj unwind label %bb.bg, !noalias !436

bb.bg:                                            ; preds = %bb.bf
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !437), !noalias !432
  call void @llvm.experimental.noalias.scope.decl(metadata !438), !noalias !432
  %i.hl = load ptr, ptr %i.a, align 8, !alias.scope !439, !noalias !435, !noundef !5 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %common.resume, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hn = atomicrmw add ptr %i.hl, i64 -1 release, align 8, !noalias !440
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.bi, label %common.resume

bb.bi:                                            ; preds = %bb.bh
  fence acquire, !noalias !432
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %common.resume unwind label %bb.bk, !noalias !436

bb.bj:                                            ; preds = %bb.bf
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !436
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit: ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.g, i64 64, i1 false), !alias.scope !441, !noalias !432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !432
  %i.hq = sext i8 %i.gz to i16
  %i.hr = mul i16 %.sroa.449.i.sroa.8.0.copyload, %i.hq
  call fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span5yearssEB5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.h, i16 noundef %i.hr) #25, !noalias !432, !inline_history !372
  %i.hs = sext i8 %i.gz to i32                    ; 3 uses
  %i.ht = mul i32 %.sroa.449.i.sroa.4.0.copyload, %i.hs
  call fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span6monthslEB5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.d, i32 noundef %i.ht) #25, !noalias !432, !inline_history !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !432
  %i.hu = mul i32 %.sroa.449.i.sroa.5.0.copyload, %i.hs
  call fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span5weekslEB5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.e, i32 noundef %i.hu) #25, !noalias !432, !inline_history !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !432
  %i.hv = mul i32 %.sroa.449.i.sroa.6.0.copyload, %i.hs
  call fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span4dayslEB5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.f, i32 noundef %i.hv) #25, !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !432
  br label %_RNvMst_NtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB5_18DateTimeDifference23until_with_largest_unit.exit

_RNvMst_NtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB5_18DateTimeDifference23until_with_largest_unit.exit: ; preds = %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit, %bb.bd, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.hx = load i8, ptr %i.hw, align 4, !range !7, !noundef !5 ; 2 uses
  %i.hy = icmp eq i8 %i.hx, -2
  %i.hz = load ptr, ptr %i.j, align 8
  br i1 %i.hy, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_RNvMst_NtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB5_18DateTimeDifference23until_with_largest_unit.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.4.0..sroa_idx, i64 52, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 61
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4124.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, i64 3, i1 false)
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime:bb.a
bb.d:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.g, -1
  br label %bb.c

bb.e:                                             ; preds = %.thread, %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #24
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %.sroa.09.0, 0
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = udiv i32 %.sroa.09.0, 3600               ; 2 uses
  %i.p = urem i32 %.sroa.09.0, 3600               ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %.thread67

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread67
  %.sroa.06.05665 = phi i32 [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %.sroa.06.0566471, %.thread67 ]
  %.sroa.0.05763 = phi i32 [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0576272, %.thread67 ] ; 2 uses
  %.sroa.041.0.shrunk = phi i32 [ 0, %bb.f ], [ %i.o, %bb.g ], [ %i.s, %.thread67 ]
  %.sroa.043.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.z, %.thread67 ]
  %or.cond2 = icmp ult i32 %.sroa.0.05763, 1000000000
  br i1 %or.cond2, label %bb.j, label %bb.i, !prof !13

.thread67:                                        ; preds = %.thread, %bb.g
  %i.r = phi i32 [ %i.p, %bb.g ], [ 3599, %.thread ]
  %i.s = phi i32 [ %i.o, %bb.g ], [ 23, %.thread ]
  %.sroa.0.0576272 = phi i32 [ %.sroa.0.0, %bb.g ], [ %i.i, %.thread ]
  %.sroa.06.0566471 = phi i32 [ %i.e, %bb.g ], [ %i.k, %.thread ]
  %.lhs.trunc = trunc nuw nsw i32 %i.r to i16     ; 2 uses
  %i.t = udiv i16 %.lhs.trunc, 60
  %i.u = zext nneg i16 %i.t to i64
  %i.v = urem i16 %.lhs.trunc, 60
  %i.w = zext nneg i16 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 48
  %i.y = shl nuw nsw i64 %i.u, 40
  %i.z = or disjoint i64 %i.x, %i.y
  br label %bb.h

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #24
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = shl nuw nsw i32 %.sroa.06.05665, 2
  %i.ab = add nuw nsw i32 %i.aa, 33266051         ; 2 uses
  %i.ac = urem i32 %i.ab, 146097
  %i.ad = or i32 %i.ac, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 2939745          ; 2 uses
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = udiv i32 %i.ag, 11758980
  %i.ai = mul nuw nsw i32 %i.ah, 2141
  %i.aj = add nuw nsw i32 %i.ai, 197913           ; 3 uses
  %.lhs.trunc.i = trunc i32 %i.aj to i16
  %i.ak = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.ak to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.al = icmp ugt i32 %i.ag, -696719417          ; 2 uses
  %i.am = and i32 %i.aj, 4128768
  %i.an = add nuw nsw i32 %i.am, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.al, i32 %i.an, i32 %i.aj
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %i.ao = udiv i32 %i.ab, 146097
  %i.ap = mul nuw nsw i32 %i.ao, 100
  %i.aq = add nuw nsw i32 %i.ap, 32736
  %i.ar = lshr i64 %i.af, 32
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = add nuw nsw i32 %i.aq, %i.as
  %i.au = zext i1 %i.al to i32
  %i.av = add nuw nsw i32 %i.at, %i.au
  %.sroa.0.0.insert.ext.i = and i32 %i.av, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %.sroa.440.0.insert.ext = zext nneg i32 %.sroa.041.0.shrunk to i64
  %.sroa.440.0.insert.shift = shl nuw nsw i64 %.sroa.440.0.insert.ext, 32
  %.sroa.039.0.insert.ext = zext nneg i32 %.sroa.0.05763 to i64
  %.sroa.440.0.insert.insert = or i64 %.sroa.043.0, %.sroa.039.0.insert.ext
  %.sroa.039.0.insert.insert = or i64 %.sroa.440.0.insert.insert, %.sroa.440.0.insert.shift
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.aw, align 4
  store i64 %.sroa.039.0.insert.insert, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc range(i48 0, -65534) i48 @_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date11checked_add(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 0, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit
    i32 -1, label %bb.c
    i32 1, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = shl i32 %0, 8
  %i.b = ashr i32 %i.a, 24                        ; 3 uses
  %i.c = icmp ult i32 %i.b, 3                     ; 2 uses
  %i.d = or disjoint i32 %i.b, 12
  %.sroa.02.0.i = select i1 %i.c, i32 %i.d, i32 %i.b
  %i.e = shl i32 %0, 16
  %i.f = ashr exact i32 %i.e, 16
  %i.g = add nsw i32 %i.f, 32800
  %.neg.i = sext i1 %i.c to i32
  %i.h = add nsw i32 %i.g, %.neg.i                ; 3 uses
  %i.i = ashr i32 %0, 24
  %i.j = udiv i32 %i.h, 100
  %i.k = mul nuw nsw i32 %i.h, 1461
  %i.l = lshr i32 %i.k, 2
  %i.m = udiv i32 %i.h, 400
  %i.n = mul nsw i32 %.sroa.02.0.i, 979
  %i.o = add nsw i32 %i.n, -2919
  %i.p = lshr i32 %i.o, 5
  %i.q = add nsw i32 %i.i, -12699423
  %i.r = sub nuw nsw i32 %i.q, %i.j
  %i.s = add nuw nsw i32 %i.r, %i.m
  %i.t = add nsw i32 %i.s, %i.l
  %i.u = add nsw i32 %i.t, %i.p
  %i.v = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.u, i32 %1) ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 0         ; 2 uses
  %i.x = extractvalue { i32, i1 } %i.v, 1
  %i.y = add i32 %i.w, -2932897
  %or.cond = icmp ult i32 %i.y, -7304484
  %or.cond32.not = or i1 %i.x, %or.cond
  br i1 %or.cond32.not, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit, label %bb.q, !prof !11

bb.c:                                             ; preds = %bb.a
  %.sroa.04.0.extract.trunc.i = trunc i32 %0 to i16 ; 3 uses
  %.sroa.45.0.extract.shift.i = lshr i32 %0, 16
  %.sroa.45.0.extract.trunc.i = trunc i32 %.sroa.45.0.extract.shift.i to i8 ; 2 uses
  %.sroa.5.0.extract.shift.mask.i = and i32 %0, -16777216
  %i.z = icmp eq i32 %.sroa.5.0.extract.shift.mask.i, 16777216
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i8 %.sroa.45.0.extract.trunc.i, 1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %.sroa.028.0.insert.insert.i = add i32 %0, -16777216
  br label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.04.0.extract.trunc.i, i16 -1) ; 2 uses
  %i.ac = extractvalue { i16, i1 } %i.ab, 0       ; 2 uses
  %i.ad = extractvalue { i16, i1 } %i.ab, 1
  %i.ae = add i16 %i.ac, -10000
  %or.cond.i = icmp ult i16 %i.ae, -19999
  %or.cond39.not.i = or i1 %i.ad, %or.cond.i
  br i1 %or.cond39.not.i, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit, label %bb.j, !prof !11

bb.g:                                             ; preds = %bb.d
  %i.af = add i8 %.sroa.45.0.extract.trunc.i, -1  ; 4 uses
  %i.ag = icmp eq i8 %i.af, 2
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = srem i16 %.sroa.04.0.extract.trunc.i, 25
  %i.ai = icmp eq i16 %i.ah, 0
  %..i.i = select i1 %i.ai, i16 15, i16 3
  %i.aj = and i16 %..i.i, %.sroa.04.0.extract.trunc.i
  %i.ak = icmp eq i16 %i.aj, 0
  %spec.select.i.i = select i1 %i.ak, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

bb.i:                                             ; preds = %bb.g
  %i.al = ashr i8 %i.af, 3
  %i.am = xor i8 %i.al, %i.af
  %i.an = or i8 %i.am, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i = phi i8 [ %spec.select.i.i, %bb.h ], [ %i.an, %bb.i ]
  %.sroa.527.0.insert.ext.i = zext i8 %.sroa.0.0.i.i to i32
  %.sroa.527.0.insert.shift.i = shl nuw i32 %.sroa.527.0.insert.ext.i, 24
  %.sroa.426.0.insert.ext.i = zext i8 %i.af to i32
  %.sroa.426.0.insert.shift.i = shl nuw nsw i32 %.sroa.426.0.insert.ext.i, 16
  %.sroa.426.0.insert.insert.i = or disjoint i32 %.sroa.527.0.insert.shift.i, %.sroa.426.0.insert.shift.i
  %.sroa.025.0.insert.ext.i = and i32 %0, 65535
  %.sroa.025.0.insert.insert.i = or disjoint i32 %.sroa.426.0.insert.insert.i, %.sroa.025.0.insert.ext.i
  br label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

bb.j:                                             ; preds = %bb.f
  %.sroa.022.0.insert.ext.i = zext i16 %i.ac to i32
  %.sroa.022.0.insert.insert.i = or disjoint i32 %.sroa.022.0.insert.ext.i, 520880128
  br label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.03.0.extract.trunc.i = trunc i32 %0 to i16 ; 3 uses
  %.sroa.4.0.extract.shift.i = lshr i32 %0, 16
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8 ; 4 uses
  %.sroa.54.0.extract.shift.i = lshr i32 %0, 24
  %.sroa.54.0.extract.trunc.i = trunc nuw i32 %.sroa.54.0.extract.shift.i to i8 ; 3 uses
  %i.ao = icmp sgt i8 %.sroa.54.0.extract.trunc.i, 27
  br i1 %i.ao, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.thread.i, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i33, %bb.k
  %2 = and i32 %0, -16777216
  %.sroa.528.0.insert.shift.i = add i32 %2, 16777216
  %3 = and i32 %0, 16777215
  %.sroa.026.0.insert.insert.i = or disjoint i32 %.sroa.528.0.insert.shift.i, %3
  br label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %.sroa.4.0.extract.trunc.i, 2
  br i1 %i.ap, label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.thread.i, label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i33

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i33: ; preds = %bb.m
  %i.aq = ashr i8 %.sroa.4.0.extract.trunc.i, 3
  %i.ar = xor i8 %i.aq, %.sroa.4.0.extract.trunc.i
  %i.as = or i8 %i.ar, 30
  %i.at = icmp eq i8 %i.as, %.sroa.54.0.extract.trunc.i
  br i1 %i.at, label %bb.n, label %bb.l

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.thread.i: ; preds = %bb.m
  %i.au = srem i16 %.sroa.03.0.extract.trunc.i, 25
  %i.av = icmp eq i16 %i.au, 0
  %..i.i35 = select i1 %i.av, i16 15, i16 3
  %i.aw = and i16 %..i.i35, %.sroa.03.0.extract.trunc.i
  %i.ax = icmp eq i16 %i.aw, 0
  %spec.select.i.i36 = select i1 %i.ax, i8 29, i8 28
  %i.ay = icmp eq i8 %spec.select.i.i36, %.sroa.54.0.extract.trunc.i
  br i1 %i.ay, label %.thread.i, label %bb.l

bb.n:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i33
  %i.az = icmp eq i8 %.sroa.4.0.extract.trunc.i, 12
  br i1 %i.az, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.03.0.extract.trunc.i, i16 1) ; 2 uses
  %i.bb = extractvalue { i16, i1 } %i.ba, 0       ; 2 uses
  %i.bc = extractvalue { i16, i1 } %i.ba, 1
  %i.bd = add i16 %i.bb, -10000
  %or.cond.i34 = icmp ult i16 %i.bd, -19999
  %or.cond37.not.i = or i1 %i.bc, %or.cond.i34
  br i1 %or.cond37.not.i, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit, label %bb.p, !prof !11

.thread.i:                                        ; preds = %bb.n, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.thread.i
  %.sroa.424.0.insert.ext.i = add i32 %0, 65536
  %.sroa.424.0.insert.shift.i = and i32 %.sroa.424.0.insert.ext.i, 16711680
  %.sroa.023.0.insert.ext.i = and i32 %0, 65535
  %.sroa.424.0.insert.insert.i = or disjoint i32 %.sroa.023.0.insert.ext.i, %.sroa.424.0.insert.shift.i
  %.sroa.023.0.insert.insert.i = or disjoint i32 %.sroa.424.0.insert.insert.i, 16777216
  br label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

bb.p:                                             ; preds = %bb.o
  %.sroa.020.0.insert.ext.i = zext i16 %i.bb to i32
  %.sroa.020.0.insert.insert.i = or disjoint i32 %.sroa.020.0.insert.ext.i, 16842752
  br label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit: ; preds = %bb.p, %.thread.i, %bb.o, %bb.l, %bb.j, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i, %bb.f, %bb.e, %bb.b, %bb.a, %bb.q
  %.sroa.6.0 = phi i32 [ %0, %bb.a ], [ %.sroa.0.0.insert.insert.i, %bb.q ], [ 8447, %bb.f ], [ 6399, %bb.b ], [ %.sroa.028.0.insert.insert.i, %bb.e ], [ %.sroa.022.0.insert.insert.i, %bb.j ], [ %.sroa.025.0.insert.insert.i, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ], [ %.sroa.026.0.insert.insert.i, %bb.l ], [ %.sroa.020.0.insert.insert.i, %bb.p ], [ %.sroa.023.0.insert.insert.i, %.thread.i ], [ 8447, %bb.o ]
  %.sroa.06.0 = phi i16 [ 0, %bb.a ], [ 0, %bb.q ], [ 1, %bb.f ], [ 1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %.thread.i ], [ 1, %bb.o ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i48
  %.sroa.6.0.insert.shift = shl nuw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.06.0.insert.ext = zext nneg i16 %.sroa.06.0 to i48
  %.sroa.06.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.shift, %.sroa.06.0.insert.ext
  ret i48 %.sroa.06.0.insert.insert

bb.q:                                             ; preds = %bb.b
  %i.be = shl nsw i32 %i.w, 2
  %i.bf = add nsw i32 %i.be, 50797691             ; 2 uses
  %i.bg = urem i32 %i.bf, 146097
  %i.bh = or i32 %i.bg, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = mul nuw nsw i64 %i.bi, 2939745          ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = udiv i32 %i.bk, 11758980
  %i.bm = mul nuw nsw i32 %i.bl, 2141
  %i.bn = add nuw nsw i32 %i.bm, 197913           ; 3 uses
  %i.bo = and i32 %i.bn, 4128768
  %i.bp = icmp ugt i32 %i.bk, -696719417          ; 2 uses
  %i.bq = udiv i32 %i.bf, 146097
  %i.br = mul nuw nsw i32 %i.bq, 100
  %i.bs = lshr i64 %i.bj, 32
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = zext i1 %i.bp to i32
  %i.bv = add nuw nsw i32 %i.br, 32736
  %i.bw = add nuw nsw i32 %i.bv, %i.bt
  %i.bx = add nuw nsw i32 %i.bw, %i.bu
  %.lhs.trunc.i = trunc i32 %i.bn to i16
  %i.by = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.by to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.bz = add nuw nsw i32 %i.bo, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.bp, i32 %i.bz, i32 %i.bn
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %i.bx, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date9yesterday.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs13_NtCsa9sSWSfjDbm_4jiff4spanNtB6_9SpanRound5round(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 8 uses
  %i.i = alloca [88 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [88 x i8], align 8                ; 8 uses
  %i.m = alloca [88 x i8], align 8                ; 24 uses
  %i.n = alloca [160 x i8], align 8               ; 7 uses
  %i.o = alloca [160 x i8], align 8               ; 19 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 7 uses
  %i.t = alloca [64 x i8], align 8                ; 7 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.411 = alloca [32 x i8], align 8          ; 2 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 8 uses
  %i.x = alloca [8 x i8], align 4                 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val = load i16, ptr %i.y, align 8, !noundef !5 ; 2 uses
  %i.z = icmp eq i16 %.val, 0
  br i1 %i.z, label %_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span12largest_unit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.val, i1 true)
  %switch.tableidx.i.i = add nsw i16 %i.aa, -6    ; 2 uses
  %i.ab = icmp ult i16 %switch.tableidx.i.i, 10
  br i1 %i.ab, label %_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit.i, label %_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span12largest_unit.exit

_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit.i: ; preds = %bb.b
  %switch.idx.cast.i.i = trunc nuw nsw i16 %switch.tableidx.i.i to i8
  %switch.offset.i.i = sub nuw nsw i8 9, %switch.idx.cast.i.i
  br label %_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span12largest_unit.exit

_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span12largest_unit.exit: ; preds = %bb.a, %bb.b, %_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit.i
  %i.ac = phi i8 [ %switch.offset.i.i, %_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit.i ], [ 0, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.ae = load i8, ptr %i.ad, align 2, !range !612, !noundef !5 ; 5 uses
  %.not = icmp eq i8 %i.ae, -1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 25
  %.val79 = load i8, ptr %i.af, align 1, !range !10 ; 7 uses
  %..i.i = tail call range(i8 0, 10) i8 @llvm.umax.i8(i8 range(i8 0, 10) %i.ac, i8 range(i8 0, 10) %.val79)
  %i.ag = select i1 %.not, i8 %..i.i, i8 %i.ae    ; 11 uses
  %..i = tail call noundef range(i8 0, 10) i8 @llvm.umax.i8(i8 range(i8 0, 10) %i.ag, i8 range(i8 0, 10) %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment8for_span(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, i8 noundef %.val79, i64 noundef %i.ai)
  %i.aj = load i32, ptr %i.w, align 8, !range !14, !noundef !5
  %i.ak = trunc nuw i32 %i.aj to i1
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span12largest_unit.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store ptr %i.am, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.an, align 4
  br label %bb.bt

bb.d:                                             ; preds = %_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span12largest_unit.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !5 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !range !10, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i32 %i.ap, ptr %i.x, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i8 %i.ar, ptr %i.as, align 4
  %i.at = icmp samesign ult i8 %i.ag, %.val79
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load i32, ptr %1, align 8, !range !15, !noundef !5
  %.not70 = icmp eq i32 %i.au, -1
  br i1 %.not70, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.067.1.insert.ext = zext nneg i8 %.val79 to i24
  %.sroa.067.1.insert.shift = shl nuw nsw i24 %.sroa.067.1.insert.ext, 8
  %.sroa.067.2.insert.ext = zext nneg i8 %i.ag to i24
  %.sroa.067.2.insert.shift = shl nuw nsw i24 %.sroa.067.2.insert.ext, 16
  %.sroa.067.1.insert.insert = or disjoint i24 %.sroa.067.2.insert.shift, %.sroa.067.1.insert.shift
  %.sroa.067.2.insert.insert = or disjoint i24 %.sroa.067.1.insert.insert, 4
  %i.av = call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.067.2.insert.insert) #21
  store ptr %i.av, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.aw, align 4
  br label %bb.bt

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs17_NtCsa9sSWSfjDbm_4jiff4spanNtB6_14SpanRelativeTo11to_relative(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i8 noundef %..i)
  %i.ax = load i64, ptr %i.v, align 8, !range !16, !noundef !5 ; 3 uses
  %i.ay = icmp eq i64 %i.ax, -2
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  br i1 %i.ay, label %bb.ag, label %bb.ah

bb.h:                                             ; preds = %bb.e
  %i.bb = icmp samesign ugt i8 %.val79, 5
  br i1 %i.bb, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %switch4.i = icmp samesign ult i8 %.val79, 8
  %..i81 = select i1 %switch4.i, i8 5, i8 6
  %.sroa.02.0.insert.ext.i = zext nneg i8 %..i81 to i24
  %.sroa.02.1.insert.ext.i = zext nneg i8 %.val79 to i24
  %.sroa.02.1.insert.shift.i = shl nuw nsw i24 %.sroa.02.1.insert.ext.i, 8
  %.sroa.02.1.insert.insert.i = or disjoint i24 %.sroa.02.1.insert.shift.i, %.sroa.02.0.insert.ext.i
  %i.bc = call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.02.1.insert.insert.i) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.bc, ptr %i.r, align 8
  %i.bd = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4spanNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef range(i8 6, 9) 8, i8 undef)
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bf = icmp eq ptr %i.bc, null
  br i1 %i.bf, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !613
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #21
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.bj, %bb.v, %bb.w, %bb.x, %bb.q, %bb.r, %bb.s, %bb.j, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.v ], [ %i.be, %bb.j ], [ %i.bn, %bb.q ], [ %i.be, %bb.l ], [ %i.be, %bb.k ], [ %i.bn, %bb.s ], [ %i.bn, %bb.r ], [ %i.bv, %bb.x ], [ %i.bv, %bb.w ], [ %i.ei, %bb.bj ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.i
  %i.bj = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bc, ptr noundef %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.bj, ptr %0, align 8
end_hunk_1
