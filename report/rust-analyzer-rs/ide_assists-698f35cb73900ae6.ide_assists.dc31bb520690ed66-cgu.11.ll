Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.11?download=true
inline.NumInlined: 4635
inline.NumDeleted: 1658
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs6_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5_12FunctionBody17analyze_container:bb.a
  %i.er = extractvalue { i64, ptr } %i.ej, 1      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.415.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1357
  %.not.i309 = icmp eq i64 %i.eq, -1
  br i1 %.not.i309, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.eq, ptr %i.aj, align 8, !noalias !1357
  %i.et = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.er, ptr %i.et, align 8, !noalias !1357
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl12type_of_expr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ai, ptr noundef nonnull align 8 %i.es, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj)
          to label %bb.ap unwind label %bb.ao, !noalias !1357

bb.ao:                                            ; preds = %bb.an
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.er) ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 48 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !noalias !1357, !noundef !19
  %i.ex = add i32 %i.ew, -1                       ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 4, !noalias !1357
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i310, label %.body312

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i310: ; preds = %bb.ao
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.er) #32
          to label %.body312 unwind label %bb.au, !noalias !1357

bb.ap:                                            ; preds = %bb.an
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !range !47, !noalias !1357, !noundef !19 ; 2 uses
  %.not19.i = icmp eq i32 %i.fa, -1
  br i1 %.not19.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.010.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !1357
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.415.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.415.0..sroa_idx.i, i64 12, i1 false), !noalias !1357
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1357 ; 2 uses
  %.not20.i = icmp eq i32 %.sroa.4.0.copyload.i, -1
  br i1 %.not20.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.at
  %.sroa.9.1 = phi i32 [ %.sroa.312.0.i, %bb.at ], [ -1, %bb.ap ] ; 2 uses
  %.sroa.0712.1 = phi i64 [ %.sroa.010.0.i, %bb.at ], [ undef, %bb.ap ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.er) ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 48 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !noalias !1357, !noundef !19
  %i.fd = add i32 %i.fc, -1                       ; 2 uses
  store i32 %i.fd, ptr %i.fb, align 4, !noalias !1357
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i, label %bb.av

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i: ; preds = %bb.ar
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.er) #32
          to label %bb.av unwind label %bb.ak

bb.as:                                            ; preds = %bb.aq
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.04.0.copyload.i = load i64, ptr %i.ff, align 8, !noalias !1357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.415.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.58.0..sroa_idx.i, i64 12, i1 false), !noalias !1357
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.sroa.312.0.i = phi i32 [ %.sroa.4.0.copyload.i, %bb.as ], [ %i.fa, %bb.aq ]
  %.sroa.010.0.i = phi i64 [ %.sroa.04.0.copyload.i, %bb.as ], [ %.sroa.010.0.copyload.i, %bb.aq ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.21, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.415.i, i64 12, i1 false)
  br label %bb.ar

bb.au:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i310
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1357
  unreachable

bb.av:                                            ; preds = %bb.ar, %bb.am, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i
  %.sroa.9.2 = phi i32 [ %.sroa.9.1, %bb.ar ], [ -1, %bb.am ], [ %.sroa.9.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i ]
  %.sroa.0712.2 = phi i64 [ %.sroa.0712.1, %bb.ar ], [ undef, %bb.am ], [ %.sroa.0712.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.415.i)
  %i.fh = load i32, ptr %i.dj, align 4, !noundef !19
  %i.fi = add i32 %i.fh, -1                       ; 2 uses
  store i32 %i.fi, ptr %i.dj, align 4
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit316

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit316 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit316: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ConstArgECsiU5vK8fN4ZC_11ide_assists.exit462

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ConstArgECsiU5vK8fN4ZC_11ide_assists.exit462: ; preds = %bb.ix, %bb.iw, %bb.fo, %bb.fn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10ConstParamECsiU5vK8fN4ZC_11ide_assists.exit529, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstECsiU5vK8fN4ZC_11ide_assists.exit487, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticECsiU5vK8fN4ZC_11ide_assists.exit425, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit400, %bb.cd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit316
  %.sroa.9.0 = phi i32 [ %.sroa.9.6, %bb.fo ], [ %.sroa.9.0.copyload722, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10ConstParamECsiU5vK8fN4ZC_11ide_assists.exit529 ], [ %.sroa.9.0.copyload720, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstECsiU5vK8fN4ZC_11ide_assists.exit487 ], [ %.sroa.9.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit316 ], [ %.sroa.9.0.copyload718, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticECsiU5vK8fN4ZC_11ide_assists.exit425 ], [ %.sroa.9.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit400 ], [ %.sroa.9.3, %bb.cd ], [ %.sroa.9.6, %bb.fn ], [ %.sroa.9.8, %bb.iw ], [ %.sroa.9.8, %bb.ix ]
  %.sroa.0712.0 = phi i64 [ %.sroa.0712.6, %bb.fo ], [ %.sroa.0712.0.copyload715, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10ConstParamECsiU5vK8fN4ZC_11ide_assists.exit529 ], [ %.sroa.0712.0.copyload714, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstECsiU5vK8fN4ZC_11ide_assists.exit487 ], [ %.sroa.0712.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit316 ], [ %.sroa.0712.0.copyload713, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticECsiU5vK8fN4ZC_11ide_assists.exit425 ], [ %.sroa.0712.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit400 ], [ %.sroa.0712.3, %bb.cd ], [ %.sroa.0712.6, %bb.fn ], [ %.sroa.0712.8, %bb.iw ], [ %.sroa.0712.8, %bb.ix ]
  %.sroa.11.0 = phi ptr [ %i.nb, %bb.fo ], [ %i.sg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10ConstParamECsiU5vK8fN4ZC_11ide_assists.exit529 ], [ %i.ox, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstECsiU5vK8fN4ZC_11ide_assists.exit487 ], [ %i.ei, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit316 ], [ %i.lh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticECsiU5vK8fN4ZC_11ide_assists.exit425 ], [ %i.jz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit400 ], [ %i.gu, %bb.cd ], [ %i.nb, %bb.fn ], [ %.sroa.6.0930, %bb.iw ], [ %.sroa.6.0930, %bb.ix ] ; 10 uses
  %.sroa.013.0 = phi i64 [ %i.na, %bb.fo ], [ %i.sf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10ConstParamECsiU5vK8fN4ZC_11ide_assists.exit529 ], [ %i.ow, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstECsiU5vK8fN4ZC_11ide_assists.exit487 ], [ %i.eh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit316 ], [ %i.lg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticECsiU5vK8fN4ZC_11ide_assists.exit425 ], [ %spec.select, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit400 ], [ %i.gt, %bb.cd ], [ %i.na, %bb.fn ], [ %.sroa.0745.0932, %bb.iw ], [ %.sroa.0745.0932, %bb.ix ] ; 2 uses
  %.sroa.012.0 = phi i8 [ 1, %bb.fo ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10ConstParamECsiU5vK8fN4ZC_11ide_assists.exit529 ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstECsiU5vK8fN4ZC_11ide_assists.exit487 ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit316 ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticECsiU5vK8fN4ZC_11ide_assists.exit425 ], [ %i.jy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit400 ], [ %.sroa.012.1, %bb.cd ], [ 1, %bb.fn ], [ 1, %bb.iw ], [ 1, %bb.ix ]
  %i.fk = load i32, ptr %i.dj, align 4, !noundef !19
  %i.fl = add i32 %i.fk, -1                       ; 2 uses
  store i32 %i.fl, ptr %i.dj, align 4
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ax, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit319

bb.ax:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ConstArgECsiU5vK8fN4ZC_11ide_assists.exit462
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit319 unwind label %.loopexit.split-lp996.thread

bb.ay:                                            ; preds = %bb.pj, %bb.ph, %bb.pd, %bb.or, %bb.oe, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i624, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i620, %bb.mi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i568, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i561, %bb.ih, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i514, %bb.hl, %bb.hf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i475, %bb.fy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i436, %bb.ez, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i413, %bb.ee, %bb.dq, %bb.da, %bb.cq, %bb.cj, %bb.cg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i358, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i354, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %bb.ah, %bb.x, %bb.n, %bb.l, %bb.mq, %bb.mn, %bb.mk, %bb.ci
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.az:                                            ; preds = %bb.ag
  %i.fo = add nuw i32 %i.eb, 1
  store i32 %i.fo, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %.sroa.0692.21187, ptr %i.ah, align 8
  %i.fp = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah)
          to label %bb.bc unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load i32, ptr %i.dj, align 4, !noundef !19
  %i.fs = add i32 %i.fr, -1                       ; 2 uses
  store i32 %i.fs, ptr %i.dj, align 4
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bb, label %.body302

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %.body302 unwind label %bb.bf

bb.bc:                                            ; preds = %bb.az
  %i.fu = icmp eq i16 %i.fp, 180
  br i1 %i.fu, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fv = load i32, ptr %i.dj, align 8, !noundef !19
  %i.fw = add i32 %i.fv, -1                       ; 3 uses
  store i32 %i.fw, ptr %i.dj, align 8
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %thread-pre-split848 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.bb
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bg:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr %.sroa.0692.21187, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  invoke void @_RNvMsb_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes9BlockExpr8modifier(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bo)
          to label %bb.bk unwind label %bb.bj

thread-pre-split848:                              ; preds = %bb.be
  %.pr849 = load i32, ptr %i.dj, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %thread-pre-split848, %bb.bd
  %i.fz = phi i32 [ %.pr849, %thread-pre-split848 ], [ %i.fw, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ga = icmp eq i32 %i.fz, -1
  br i1 %i.ga, label %.invoke1923, label %bb.cr, !prof !31

bb.bi:                                            ; preds = %bb.ci
  br i1 %.sroa.081.21437, label %.thread858, label %.body302

bb.bj:                                            ; preds = %bb.cm, %bb.cn, %bb.bg
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.thread858

bb.bk:                                            ; preds = %bb.bg
  %i.gc = load i64, ptr %i.bn, align 8, !range !50, !noundef !19 ; 8 uses
  %.not135 = icmp eq i64 %i.gc, -2
  br i1 %.not135, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit371, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gd = icmp ne i64 %i.gc, 17
  call void @llvm.assume(i1 %i.gd)
  %i.ge = add nsw i64 %i.gc, -15
  %i.gf = icmp sgt i64 %i.gc, 14
  %i.gg = select i1 %i.gf, i64 %i.ge, i64 2
  switch i64 %i.gg, label %9 [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit.loopexit
    i64 3, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit
    i64 6, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl
  %.val263 = load ptr, ptr %i.cx, align 8, !nonnull !19, !noundef !19 ; 5 uses
  %i.gh = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes8LifetimeECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %.val263)
          to label %bb.bn unwind label %.thread1433 ; 3 uses

bb.bn:                                            ; preds = %bb.bm
  %.not136 = icmp eq ptr %i.gh, null
  br i1 %.not136, label %9, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 48 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !noundef !19
  %i.gk = add i32 %i.gj, -1                       ; 2 uses
  store i32 %i.gk, ptr %i.gi, align 4
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.bp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECsiU5vK8fN4ZC_11ide_assists.exit329

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.gh) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECsiU5vK8fN4ZC_11ide_assists.exit329 unwind label %6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECsiU5vK8fN4ZC_11ide_assists.exit329: ; preds = %bb.bo, %bb.bp
  %i.gm = getelementptr inbounds nuw i8, ptr %.val263, i64 48 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !noundef !19
  %i.go = add i32 %i.gn, -1                       ; 2 uses
  store i32 %i.go, ptr %i.gm, align 4
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.bq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit

bb.bq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECsiU5vK8fN4ZC_11ide_assists.exit329
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val263) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit unwind label %6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit.loopexit: ; preds = %bb.bl
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.bl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit.loopexit, %bb.bq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECsiU5vK8fN4ZC_11ide_assists.exit329
  %.sroa.012.1 = phi i8 [ 0, %bb.bq ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit.loopexit ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeEECsiU5vK8fN4ZC_11ide_assists.exit329 ], [ 1, %bb.bl ]
  %i.gq = icmp eq i64 %i.gc, 21
  br i1 %i.gq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store i64 5, ptr %i.bm, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.sroa.0692.21187, ptr %i.gr, align 8
  %i.gs = invoke fastcc { i64, ptr } @_RNvXsvy_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bm)
          to label %bb.bt unwind label %bb.ce     ; 2 uses

bb.bs:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext13BlockModifierECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bn)
          to label %bb.br unwind label %bb.cf

bb.bt:                                            ; preds = %bb.br
  %i.gt = extractvalue { i64, ptr } %i.gs, 0      ; 2 uses
  %i.gu = extractvalue { i64, ptr } %i.gs, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.415.i332)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1358
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.ag, align 8, !noalias !1358
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.0692.21187, ptr %i.gw, align 8, !noalias !1358
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl12type_of_expr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.af, ptr noundef nonnull align 8 %i.gv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag)
          to label %bb.bv unwind label %bb.bu, !noalias !1358

bb.bu:                                            ; preds = %bb.bt
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = load i32, ptr %i.dj, align 4, !noalias !1358, !noundef !19
  %i.gz = add i32 %i.gy, -1                       ; 2 uses
  store i32 %i.gz, ptr %i.dj, align 4, !noalias !1358
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i335, label %.body350

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i335: ; preds = %bb.bu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %.body350 unwind label %bb.ca, !noalias !1358

bb.bv:                                            ; preds = %bb.bt
  %i.hb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.hc = load i32, ptr %i.hb, align 8, !range !47, !noalias !1358, !noundef !19 ; 2 uses
  %.not19.i336 = icmp eq i32 %i.hc, -1
  br i1 %.not19.i336, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.sroa.010.0.copyload.i337 = load i64, ptr %i.af, align 8, !noalias !1358
  %.sroa.415.0..sroa_idx.i338 = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.415.i332, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.415.0..sroa_idx.i338, i64 12, i1 false), !noalias !1358
  %.sroa.4.0..sroa_idx.i339 = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.4.0.copyload.i340 = load i32, ptr %.sroa.4.0..sroa_idx.i339, align 8, !noalias !1358 ; 2 uses
  %.not20.i341 = icmp eq i32 %.sroa.4.0.copyload.i340, -1
  br i1 %.not20.i341, label %bb.bz, label %bb.by

bb.bx:                                            ; preds = %bb.bv, %bb.bz
  %.sroa.9.3 = phi i32 [ %.sroa.312.0.i344, %bb.bz ], [ -1, %bb.bv ]
  %.sroa.0712.3 = phi i64 [ %.sroa.010.0.i345, %bb.bz ], [ undef, %bb.bv ]
  %i.hd = load i32, ptr %i.dj, align 4, !noalias !1358, !noundef !19
  %i.he = add i32 %i.hd, -1                       ; 2 uses
  store i32 %i.he, ptr %i.dj, align 4, !noalias !1358
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i348, label %bb.cd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i348: ; preds = %bb.bx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %bb.cd unwind label %bb.cb

bb.by:                                            ; preds = %bb.bw
  %.sroa.58.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.hg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.04.0.copyload.i343 = load i64, ptr %i.hg, align 8, !noalias !1358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.415.i332, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.58.0..sroa_idx.i342, i64 12, i1 false), !noalias !1358
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %.sroa.312.0.i344 = phi i32 [ %.sroa.4.0.copyload.i340, %bb.by ], [ %i.hc, %bb.bw ]
  %.sroa.010.0.i345 = phi i64 [ %.sroa.04.0.copyload.i343, %bb.by ], [ %.sroa.010.0.copyload.i337, %bb.bw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.21, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.415.i332, i64 12, i1 false)
  br label %bb.bx

bb.ca:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i335
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1358
  unreachable

bb.cb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i348
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body350

.body350:                                         ; preds = %bb.bu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i335, %bb.cb
  %eh.lpad-body351 = phi { ptr, i32 } [ %i.hi, %bb.cb ], [ %i.gx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i335 ], [ %i.gx, %bb.bu ] ; 3 uses
  %i.hj = icmp eq i64 %i.gt, -1
  br i1 %i.hj, label %.body302, label %bb.cc

bb.cc:                                            ; preds = %.body350
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gu) ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gu, i64 48 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !noundef !19
  %i.hm = add i32 %i.hl, -1                       ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 4
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i354, label %.body302

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i354: ; preds = %bb.cc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.gu) #32
          to label %.body302 unwind label %bb.ay

bb.cd:                                            ; preds = %bb.bx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.415.i332)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ConstArgECsiU5vK8fN4ZC_11ide_assists.exit462

bb.ce:                                            ; preds = %bb.br
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hp = load i32, ptr %i.dj, align 4, !noundef !19
  %i.hq = add i32 %i.hp, -1                       ; 2 uses
  store i32 %i.hq, ptr %i.dj, align 4
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i358, label %.body302

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i358: ; preds = %bb.ce
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %.body302 unwind label %bb.ay

bb.cf:                                            ; preds = %bb.bs
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = load i32, ptr %i.dj, align 4, !noundef !19
  %i.hu = add i32 %i.ht, -1                       ; 2 uses
  store i32 %i.hu, ptr %i.dj, align 4
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.cg, label %.body302

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %.body302 unwind label %bb.ay

6:                                                ; preds = %bb.bp, %bb.bq
  %.sroa.081.2.ph = phi i1 [ true, %bb.bp ], [ false, %bb.bq ] ; 2 uses
  %lpad.loopexit.split-lp993 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %7 = icmp eq i64 %i.gc, 21
  br i1 %7, label %bb.ch, label %bb.ci

.thread1433:                                      ; preds = %bb.bm
  %lpad.loopexit992 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %8 = icmp eq i64 %i.gc, 21
  br i1 %8, label %.thread1440, label %bb.ci

bb.ch:                                            ; preds = %6
  br i1 %.sroa.081.2.ph, label %.thread1440, label %.body302

bb.ci:                                            ; preds = %.thread1433, %6
  %lpad.phi9941439 = phi { ptr, i32 } [ %lpad.loopexit992, %.thread1433 ], [ %lpad.loopexit.split-lp993, %6 ] ; 2 uses
  %.sroa.081.21437 = phi i1 [ true, %.thread1433 ], [ %.sroa.081.2.ph, %6 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext13BlockModifierECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bn) #34
          to label %bb.bi unwind label %bb.ay

.thread1440:                                      ; preds = %.thread1433, %bb.ch
  %lpad.phi99414381443 = phi { ptr, i32 } [ %lpad.loopexit.split-lp993, %bb.ch ], [ %lpad.loopexit992, %.thread1433 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.val263, i64 48 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !noundef !19
  %i.hy = add i32 %i.hx, -1                       ; 2 uses
  store i32 %i.hy, ptr %i.hw, align 4
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.cj, label %.thread858

bb.cj:                                            ; preds = %.thread1440
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val263) #32
          to label %.thread858 unwind label %bb.ay

9:                                                ; preds = %bb.bl, %bb.bn
  %10 = icmp eq i64 %i.gc, 21
  br i1 %10, label %bb.cl, label %bb.cn

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit371: ; preds = %bb.cl, %bb.cm, %bb.bk, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.ia = load i32, ptr %i.dj, align 8, !noundef !19
  %i.ib = add i32 %i.ia, -1                       ; 2 uses
  store i32 %i.ib, ptr %i.dj, align 8
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.ck, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit368

bb.ck:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit371
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit368 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %9
  %.val264 = load ptr, ptr %i.cx, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.val264, i64 48 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !noundef !19
  %i.if = add i32 %i.ie, -1                       ; 2 uses
  store i32 %i.if, ptr %i.id, align 4
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.cm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit371

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val264) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit371 unwind label %bb.bj

bb.cn:                                            ; preds = %9
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext13BlockModifierECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit371 unwind label %bb.bj

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit368: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5LabelECsiU5vK8fN4ZC_11ide_assists.exit371, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.co

bb.co:                                            ; preds = %.thread975, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WhileExprECsiU5vK8fN4ZC_11ide_assists.exit685, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ForExprECsiU5vK8fN4ZC_11ide_assists.exit673, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LoopExprECsiU5vK8fN4ZC_11ide_assists.exit659, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit368
  %i.ih = load i32, ptr %i.dj, align 8, !noundef !19
  %i.ii = add i32 %i.ih, -1                       ; 2 uses
  store i32 %i.ii, ptr %i.dj, align 8
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.cp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit374

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit374 unwind label %.body.thread

.thread858:                                       ; preds = %.thread1440, %bb.cj, %bb.bj, %bb.bi
  %.pn143865 = phi { ptr, i32 } [ %lpad.phi9941439, %bb.bi ], [ %i.gb, %bb.bj ], [ %lpad.phi99414381443, %bb.cj ], [ %lpad.phi99414381443, %.thread1440 ] ; 2 uses
  %i.ik = load i32, ptr %i.dj, align 4, !noundef !19
  %i.il = add i32 %i.ik, -1                       ; 2 uses
  store i32 %i.il, ptr %i.dj, align 4
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.cq, label %.body302

bb.cq:                                            ; preds = %.thread858
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %.body302 unwind label %bb.ay

bb.cr:                                            ; preds = %bb.bh
  %i.in = add nuw i32 %i.fz, 1
  store i32 %i.in, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %.sroa.0692.21187, ptr %i.ae, align 8
  %i.io = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %bb.cu unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iq = load i32, ptr %i.dj, align 4, !noundef !19
  %i.ir = add i32 %i.iq, -1                       ; 2 uses
  store i32 %i.ir, ptr %i.dj, align 4
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.ct, label %.body302

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %.body302 unwind label %bb.cx

bb.cu:                                            ; preds = %bb.cr
  %i.it = icmp eq i16 %i.io, 203
  br i1 %i.it, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.iu = load i32, ptr %i.dj, align 8, !noundef !19
  %i.iv = add i32 %i.iu, -1                       ; 3 uses
  store i32 %i.iv, ptr %i.dj, align 8
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %thread-pre-split885 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.ct
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.cy:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store ptr %.sroa.0692.21187, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1359
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl9find_file(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noundef nonnull align 8 %i.iy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl)
          to label %.noexc383 unwind label %bb.db

.noexc383:                                        ; preds = %bb.cy
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ja, ptr noundef nonnull align 8 dereferenceable(12) %i.iz, i64 12, i1 false), !noalias !1359
  store ptr %i.bl, ptr %i.ad, align 8, !noalias !1359
  invoke void @_RNvXsI_NtCs8Xq8PKFYOms_3hir9semanticsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNtB5_5ToDef6to_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.bk, ptr noundef nonnull align 8 %i.iy, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.dc unwind label %bb.db

thread-pre-split885:                              ; preds = %bb.cw
  %.pr886 = load i32, ptr %i.dj, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %thread-pre-split885, %bb.cv
  %i.jb = phi i32 [ %.pr886, %thread-pre-split885 ], [ %i.iv, %bb.cv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.jc = icmp eq i32 %i.jb, -1
  br i1 %i.jc, label %.invoke1923, label %bb.dv, !prof !31

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.dp, %bb.do, %bb.dq, %bb.db
  %.pn133 = phi { ptr, i32 } [ %i.jh, %bb.db ], [ %i.ka, %bb.dq ], [ %i.ka, %bb.do ], [ %i.ka, %bb.dp ] ; 2 uses
  %.val180 = load ptr, ptr %i.bl, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val180, i64 48 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !noundef !19
  %i.jf = add i32 %i.je, -1                       ; 2 uses
  store i32 %i.jf, ptr %i.jd, align 4
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.da, label %.body302

bb.da:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val180) #32
          to label %.body302 unwind label %bb.ay

bb.db:                                            ; preds = %bb.dt, %.noexc383, %bb.cy, %bb.dk, %bb.dj, %bb.dh, %bb.dd
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit

bb.dc:                                            ; preds = %.noexc383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ji = load i8, ptr %i.bk, align 4, !range !42, !noundef !19
  %.not130 = icmp eq i8 %i.ji, 2
  br i1 %.not130, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.bk, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.jj = load ptr, ptr %3, align 8, !nonnull !19, !align !25, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.am, ptr noundef nonnull align 4 dereferenceable(12) %i.al, i64 12, i1 false)
  invoke void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function8ret_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.am, ptr noundef nonnull %i.jj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @7)
          to label %bb.dh unwind label %bb.db

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  store i64 -2, ptr %0, align 8
  %.val179 = load ptr, ptr %i.bl, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.val179, i64 48 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !noundef !19
  %i.jm = add i32 %i.jl, -1                       ; 2 uses
  store i32 %i.jm, ptr %i.jk, align 4
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.df, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit391

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val179) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit391 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit391: ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.invoke1925, %bb.nq, %bb.nh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10ConstParamECsiU5vK8fN4ZC_11ide_assists.exit507, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5ConstECsiU5vK8fN4ZC_11ide_assists.exit484, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StaticECsiU5vK8fN4ZC_11ide_assists.exit422, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists.exit391
  %i.jo = load i32, ptr %i.dj, align 4, !noundef !19
  %i.jp = add i32 %i.jo, -1                       ; 2 uses
  store i32 %i.jp, ptr %i.dj, align 4
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.dg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit394

bb.dg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0692.21187) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit394 unwind label %.loopexit.split-lp996.thread

bb.dh:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.jr = load ptr, ptr %3, align 8, !nonnull !19, !align !25, !noundef !19
  %i.js = invoke noundef zeroext i1 @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function8is_async(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.al, ptr noundef nonnull %i.jr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @7)
          to label %bb.di unwind label %bb.db

bb.di:                                            ; preds = %bb.dh
  br i1 %i.js, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.jt = load ptr, ptr %3, align 8, !nonnull !19, !align !25, !noundef !19
  invoke void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function14async_ret_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.al, ptr noundef nonnull %i.jt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @7)
          to label %bb.dl unwind label %bb.db

.sink.split:                                      ; preds = %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.dk

bb.dk:                                            ; preds = %.sink.split, %bb.di
  %.val239 = load ptr, ptr %i.bl, align 8, !nonnull !19, !noundef !19
  %i.ju = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %.val239, i16 noundef 60)
          to label %bb.dn unwind label %bb.db     ; 5 uses

bb.dl:                                            ; preds = %bb.dj
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !range !47, !noundef !19
  %.not131 = icmp eq i32 %i.jw, -1
  br i1 %.not131, label %.sink.split, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  br label %.sink.split

end_hunk_0
