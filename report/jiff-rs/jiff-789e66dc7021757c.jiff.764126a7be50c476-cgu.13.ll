Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.13?download=true
inline.NumInlined: 256
inline.NumDeleted: 82
begin_hunk_0_@_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23fractional_time_to_span:bb.a
  %.sroa.54.sroa.7.0.copyload.i = load i32, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !504, !noalias !503 ; 2 uses
  %.sroa.54.sroa.8.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %.sroa.54.sroa.8.0.copyload.i = load i32, ptr %.sroa.54.sroa.8.0..sroa.54.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !504, !noalias !503 ; 2 uses
  %.sroa.54.sroa.9.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.54.sroa.9.0.copyload.i = load i32, ptr %.sroa.54.sroa.9.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !504, !noalias !503 ; 2 uses
  %.sroa.54.sroa.10.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %.sroa.54.sroa.10.0.copyload.i = load i32, ptr %.sroa.54.sroa.10.0..sroa.54.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !504, !noalias !503 ; 2 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.56.0.copyload.i = load i16, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !504, !noalias !503
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 58 ; 2 uses
  %.sroa.79.sroa.0.0.copyload.i = load i16, ptr %.sroa.79.0..sroa_idx.i, align 2, !alias.scope !504, !noalias !503 ; 2 uses
  %.sroa.79.sroa.4.0..sroa.79.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %.sroa.79.sroa.4.0.copyload.i = load i8, ptr %.sroa.79.sroa.4.0..sroa.79.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !504, !noalias !503 ; 3 uses
  %.sroa.79.sroa.5.0..sroa.79.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 61 ; 3 uses
  %i.ee = icmp slt i64 %.sroa.050.0534, 0
  %.sroa.011.0.i = tail call i64 @llvm.abs.i64(i64 %.sroa.050.0534, i1 true) ; 2 uses
  %i.ef = icmp eq i64 %.sroa.050.0534, 0          ; 2 uses
  %i.eg = and i16 %.sroa.56.0.copyload.i, -17
  %masksel.i162 = select i1 %i.ef, i16 0, i16 16
  %.sroa.013.0.i163 = or disjoint i16 %i.eg, %masksel.i162
  br i1 %i.ee, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit.thread554, label %bb.bi

bb.bi:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br i1 %i.ef, label %bb.bj, label %.thread.i.i164

bb.bj:                                            ; preds = %bb.bi
  %i.eh = icmp eq i16 %.sroa.79.sroa.0.0.copyload.i, 0
  %i.ei = icmp eq i32 %.sroa.54.sroa.7.0.copyload.i, 0
  %or.cond.i.i170 = select i1 %i.eh, i1 %i.ei, i1 false
  %i.ej = icmp eq i32 %.sroa.54.sroa.8.0.copyload.i, 0
  %or.cond5.i.i171 = select i1 %or.cond.i.i170, i1 %i.ej, i1 false
  %i.ek = icmp eq i32 %.sroa.54.sroa.9.0.copyload.i, 0
  %or.cond8.i.i172 = select i1 %or.cond5.i.i171, i1 %i.ek, i1 false
  %i.el = icmp eq i32 %.sroa.54.sroa.10.0.copyload.i, 0
  %or.cond11.i.i173 = select i1 %or.cond8.i.i172, i1 %i.el, i1 false
  %i.em = icmp eq i64 %.sroa.54.sroa.0.0.copyload.i, 0
  %or.cond16.i.i174 = select i1 %or.cond11.i.i173, i1 %i.em, i1 false
  %i.en = icmp eq i64 %.sroa.54.sroa.4.0.copyload.i, 0
  %or.cond19.i.i175 = select i1 %or.cond16.i.i174, i1 %i.en, i1 false
  %i.eo = icmp eq i64 %.sroa.54.sroa.5.0.copyload.i, 0
  %or.cond22.i.i176 = select i1 %or.cond19.i.i175, i1 %i.eo, i1 false
  %i.ep = icmp eq i64 %.sroa.54.sroa.6.0.copyload.i, 0
  %or.cond4.i.i177 = select i1 %or.cond22.i.i176, i1 %i.ep, i1 false
  br i1 %or.cond4.i.i177, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit.thread554, label %.thread.i.i164

.thread.i.i164:                                   ; preds = %bb.bj, %bb.bi
  %.sroa.027.0.in.i.i165 = icmp eq i8 %.sroa.79.sroa.4.0.copyload.i, 0
  br i1 %.sroa.027.0.in.i.i165, label %bb.bk, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit

bb.bk:                                            ; preds = %.thread.i.i164
  %i.eq = icmp ne i64 %.sroa.050.0534, 0
  %spec.select.i.i169 = zext i1 %i.eq to i8
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit.thread554

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit.thread554: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %bb.bj, %bb.bk
  %.sroa.0.0.i.i167.ph = phi i8 [ %spec.select.i.i169, %bb.bk ], [ 0, %bb.bj ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19412, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.79.sroa.5.0..sroa.79.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !506
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit179

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit: ; preds = %.thread.i.i164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19412, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.79.sroa.5.0..sroa.79.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.er = icmp eq i8 %.sroa.79.sroa.4.0.copyload.i, -2
  br i1 %i.er, label %bb.bl, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit179, !prof !495

bb.bl:                                            ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit.thread, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit
  %.sroa.0400.0553 = phi i64 [ %i.ed, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit.thread ], [ %.sroa.011.0.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !509
  %i.es = inttoptr i64 %.sroa.0400.0553 to ptr
  store ptr %i.es, ptr %i.e, align 8, !noalias !509
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 34, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %bb.bp unwind label %bb.bm, !noalias !510

bb.bm:                                            ; preds = %bb.bl
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.eu = load ptr, ptr %i.e, align 8, !alias.scope !513, !noalias !509, !noundef !4 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %common.resume, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ew = atomicrmw sub ptr %i.eu, i64 1 release, align 8, !noalias !514
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.bo, label %common.resume

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #23
          to label %common.resume unwind label %bb.bq, !noalias !510

bb.bp:                                            ; preds = %bb.bl
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !510
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit179: ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit.thread554, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit
  %.sroa.0.0.i.i167556 = phi i8 [ %.sroa.0.0.i.i167.ph, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit.thread554 ], [ %.sroa.79.sroa.4.0.copyload.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit ]
  store i64 %.sroa.011.0.i, ptr %4, align 8, !alias.scope !510, !noalias !515
  store i64 %.sroa.54.sroa.0.0.copyload.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !510, !noalias !515
  store i64 %.sroa.54.sroa.4.0.copyload.i, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !510, !noalias !515
  store i64 %.sroa.54.sroa.5.0.copyload.i, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !510, !noalias !515
  store i64 %.sroa.54.sroa.6.0.copyload.i, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !510, !noalias !515
  store i32 %.sroa.54.sroa.7.0.copyload.i, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !510, !noalias !515
  store i32 %.sroa.54.sroa.8.0.copyload.i, ptr %.sroa.54.sroa.8.0..sroa.54.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !510, !noalias !515
  store i32 %.sroa.54.sroa.9.0.copyload.i, ptr %.sroa.54.sroa.9.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !510, !noalias !515
  store i32 %.sroa.54.sroa.10.0.copyload.i, ptr %.sroa.54.sroa.10.0..sroa.54.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !510, !noalias !515
  store i16 %.sroa.013.0.i163, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !510, !noalias !515
  store i16 %.sroa.79.sroa.0.0.copyload.i, ptr %.sroa.79.0..sroa_idx.i, align 2, !alias.scope !510, !noalias !515
  store i8 %.sroa.0.0.i.i167556, ptr %.sroa.79.sroa.4.0..sroa.79.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !510, !noalias !515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.79.sroa.5.0..sroa.79.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19412, i64 3, i1 false), !alias.scope !510, !noalias !515
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19412)
  br label %.thread518

bb.br:                                            ; preds = %bb.as
  %i.ez = mul nuw nsw i64 %i.cy, 60
  %i.fa = or disjoint i64 %i.cz, -631107417600
  %i.fb = add nsw i64 %i.fa, %i.ez                ; 4 uses
  br i1 %i.cx, label %.thread529, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fc = icmp sgt i32 %.sroa.38.0479, 999999999
  br i1 %i.fc, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fd = icmp slt i32 %.sroa.38.0479, -999999999
  br i1 %i.fd, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.fe = add nsw i64 %i.fb, -1
  %i.ff = add nsw i32 %.sroa.38.0479, 1000000000
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %bb.bu, %bb.bt
  %.sroa.016.1.i180 = phi i64 [ %i.fi, %bb.bw ], [ %i.fe, %bb.bu ], [ %i.fb, %bb.bt ] ; 7 uses
  %.sroa.02.1.i181 = phi i32 [ %i.fj, %bb.bw ], [ %i.ff, %bb.bu ], [ %.sroa.38.0479, %bb.bt ] ; 6 uses
  %i.fg = icmp eq i64 %.sroa.016.1.i180, 0
  %i.fh = icmp eq i32 %.sroa.02.1.i181, 0
  %or.cond.i182 = select i1 %i.fg, i1 true, i1 %i.fh
  br i1 %or.cond.i182, label %.thread529, label %bb.bx

bb.bw:                                            ; preds = %bb.bs
  %i.fi = add nsw i64 %i.fb, 1
  %i.fj = add nsw i32 %.sroa.38.0479, -1000000000
  br label %bb.bv

bb.bx:                                            ; preds = %bb.bv
  %i.fk = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i180, i64 0)
  %i.fl = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i181, i32 0)
  %.not.i183 = icmp eq i64 %i.fk, %i.fl
  br i1 %.not.i183, label %.thread529, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fm = icmp slt i64 %.sroa.016.1.i180, 0
  br i1 %i.fm, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fn = add nsw i64 %.sroa.016.1.i180, -1
  %i.fo = add nsw i32 %.sroa.02.1.i181, 1000000000
  br label %.thread529

bb.ca:                                            ; preds = %bb.by
  %i.fp = add nsw i64 %.sroa.016.1.i180, 1
  %i.fq = add nsw i32 %.sroa.02.1.i181, -1000000000
  br label %.thread529

bb.cb:                                            ; preds = %bb.ar
  switch i8 %1, label %.thread608 [
    i8 2, label %.thread563
    i8 0, label %bb.dp
  ]

.thread518:                                       ; preds = %bb.e, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit179, %.thread, %bb.ar
  %.sroa.38.2522 = phi i32 [ %i.o, %bb.ar ], [ %.sroa.38.3538, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit179 ], [ 0, %.thread ], [ 0, %bb.e ] ; 12 uses
  %.sroa.074.2521 = phi i64 [ %i.m, %bb.ar ], [ %.sroa.074.3536, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit179 ], [ 0, %.thread ], [ 0, %bb.e ] ; 10 uses
  %i.fr = icmp eq i64 %.sroa.074.2521, 0
  %i.fs = icmp eq i32 %.sroa.38.2522, 0           ; 3 uses
  %or.cond12 = and i1 %i.fs, %i.fr
  br i1 %or.cond12, label %.thread563, label %bb.cc

bb.cc:                                            ; preds = %.thread518
  %i.ft = icmp sgt i64 %.sroa.074.2521, 631107417600
  br i1 %i.ft, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fu = icmp slt i64 %.sroa.074.2521, -631107417600
  br i1 %i.fu, label %bb.ci, label %bb.co

bb.ce:                                            ; preds = %bb.cc
  %i.fv = add nsw i64 %.sroa.074.2521, -631107417600 ; 2 uses
  br i1 %i.fs, label %.thread579, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fw = icmp sgt i32 %.sroa.38.2522, 999999999
  br i1 %i.fw, label %.thread753, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fx = icmp slt i32 %.sroa.38.2522, -999999999 ; 2 uses
  %i.fy = add nsw i64 %.sroa.074.2521, -631107417601
  %i.fz = add nsw i32 %.sroa.38.2522, 1000000000
  %.sroa.016.1.i188 = select i1 %i.fx, i64 %i.fy, i64 %i.fv ; 3 uses
  %.sroa.02.1.i189 = select i1 %i.fx, i32 %i.fz, i32 %.sroa.38.2522 ; 3 uses
  %5 = icmp eq i64 %.sroa.016.1.i188, 0
  %6 = icmp sgt i32 %.sroa.02.1.i189, -1
  %or.cond = select i1 %5, i1 true, i1 %6
  br i1 %or.cond, label %.thread579, label %bb.ch

.thread753:                                       ; preds = %bb.cf
  %7 = add nsw i64 %.sroa.074.2521, -631107417599
  %8 = add nsw i32 %.sroa.38.2522, -1000000000
  br label %.thread579

bb.ch:                                            ; preds = %bb.cg
  %i.ga = add nsw i64 %.sroa.016.1.i188, -1
  %i.gb = add nsw i32 %.sroa.02.1.i189, 1000000000
  br label %.thread579

bb.ci:                                            ; preds = %bb.cd
  %i.gc = add nuw nsw i64 %.sroa.074.2521, 631107417600 ; 2 uses
  br i1 %i.fs, label %.thread579, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gd = icmp sgt i32 %.sroa.38.2522, 999999999
  br i1 %i.gd, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ge = icmp slt i32 %.sroa.38.2522, -999999999
  br i1 %i.ge, label %.thread757, label %bb.cl

.thread757:                                       ; preds = %bb.ck
  %i.gf = add nuw nsw i64 %.sroa.074.2521, 631107417599
  %i.gg = add nsw i32 %.sroa.38.2522, 1000000000
  br label %.thread579

bb.cl:                                            ; preds = %bb.cm, %bb.ck
  %.sroa.016.1.i196 = phi i64 [ %i.gj, %bb.cm ], [ %i.gc, %bb.ck ] ; 3 uses
  %.sroa.02.1.i197 = phi i32 [ %i.gk, %bb.cm ], [ %.sroa.38.2522, %bb.ck ] ; 3 uses
  %i.gh = icmp eq i64 %.sroa.016.1.i196, 0
  %i.gi = icmp slt i32 %.sroa.02.1.i197, 1
  %or.cond727 = select i1 %i.gh, i1 true, i1 %i.gi
  br i1 %or.cond727, label %.thread579, label %bb.cn

bb.cm:                                            ; preds = %bb.cj
  %i.gj = add nsw i64 %.sroa.074.2521, 631107417601
  %i.gk = add nsw i32 %.sroa.38.2522, -1000000000
  br label %bb.cl

bb.cn:                                            ; preds = %bb.cl
  %i.gl = add nsw i64 %.sroa.016.1.i196, 1
  %i.gm = add nsw i32 %.sroa.02.1.i197, -1000000000
  br label %.thread579

.thread579:                                       ; preds = %.thread757, %.thread753, %bb.cn, %bb.ci, %bb.cl, %bb.ce, %bb.ch, %bb.cg
  %.sroa.055.0.ph = phi i64 [ -631107417600, %bb.cl ], [ 631107417600, %bb.cg ], [ -631107417600, %bb.ci ], [ -631107417600, %bb.cn ], [ 631107417600, %bb.ce ], [ 631107417600, %bb.ch ], [ 631107417600, %.thread753 ], [ -631107417600, %.thread757 ]
  %.sroa.074.5.ph = phi i64 [ %.sroa.016.1.i196, %bb.cl ], [ %.sroa.016.1.i188, %bb.cg ], [ %i.gc, %bb.ci ], [ %i.gl, %bb.cn ], [ %i.fv, %bb.ce ], [ %i.ga, %bb.ch ], [ %7, %.thread753 ], [ %i.gf, %.thread757 ]
  %.sroa.38.5.ph = phi i32 [ %.sroa.02.1.i197, %bb.cl ], [ %.sroa.02.1.i189, %bb.cg ], [ 0, %bb.ci ], [ %i.gm, %bb.cn ], [ 0, %bb.ce ], [ %i.gb, %bb.ch ], [ %8, %.thread753 ], [ %i.gg, %.thread757 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19433)
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.co:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.co, %.thread579
  %.sroa.38.5588 = phi i32 [ %.sroa.38.5.ph, %.thread579 ], [ %.sroa.38.2522, %bb.co ]
  %.sroa.074.5586 = phi i64 [ %.sroa.074.5.ph, %.thread579 ], [ 0, %bb.co ]
  %.sroa.055.0584 = phi i64 [ %.sroa.055.0.ph, %.thread579 ], [ %.sroa.074.2521, %bb.co ] ; 4 uses
  %.sroa.02.0.copyload.i = load i64, ptr %4, align 8, !alias.scope !517, !noalias !516 ; 3 uses
  %.sroa.56.0..sroa_idx.i205 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.56.sroa.0.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i205, align 8, !alias.scope !517, !noalias !516 ; 2 uses
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.56.sroa.4.0.copyload.i = load i64, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !517, !noalias !516 ; 2 uses
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.56.sroa.5.0.copyload.i = load i64, ptr %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !517, !noalias !516 ; 2 uses
  %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.56.sroa.6.0.copyload.i = load i32, ptr %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !517, !noalias !516 ; 2 uses
  %.sroa.56.sroa.7.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %.sroa.56.sroa.7.0.copyload.i = load i32, ptr %.sroa.56.sroa.7.0..sroa.56.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !517, !noalias !516 ; 2 uses
  %.sroa.56.sroa.8.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.56.sroa.8.0.copyload.i = load i32, ptr %.sroa.56.sroa.8.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !517, !noalias !516 ; 2 uses
  %.sroa.56.sroa.9.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %.sroa.56.sroa.9.0.copyload.i = load i32, ptr %.sroa.56.sroa.9.0..sroa.56.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !517, !noalias !516 ; 2 uses
  %.sroa.58.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.58.0.copyload.i207 = load i16, ptr %.sroa.58.0..sroa_idx.i206, align 8, !alias.scope !517, !noalias !516
  %.sroa.711.0..sroa_idx.i208 = getelementptr inbounds nuw i8, ptr %4, i64 58 ; 2 uses
  %.sroa.711.sroa.0.0.copyload.i209 = load i16, ptr %.sroa.711.0..sroa_idx.i208, align 2, !alias.scope !517, !noalias !516 ; 2 uses
  %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %.sroa.711.sroa.4.0.copyload.i211 = load i8, ptr %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx.i210, align 4, !alias.scope !517, !noalias !516 ; 3 uses
  %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx.i212 = getelementptr inbounds nuw i8, ptr %4, i64 61 ; 3 uses
  %i.gn = icmp slt i64 %.sroa.055.0584, 0
  %.sroa.013.0.i213 = tail call i64 @llvm.abs.i64(i64 %.sroa.055.0584, i1 true)
  %i.go = icmp eq i64 %.sroa.055.0584, 0          ; 2 uses
  %i.gp = and i16 %.sroa.58.0.copyload.i207, -9
  %masksel.i214 = select i1 %i.go, i16 0, i16 8
  %.sroa.015.0.i215 = or disjoint i16 %i.gp, %masksel.i214
  br i1 %i.gn, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_secondsxEB7_.exit.thread604, label %bb.cp

bb.cp:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br i1 %i.go, label %bb.cq, label %.thread.i.i216

bb.cq:                                            ; preds = %bb.cp
  %i.gq = icmp eq i16 %.sroa.711.sroa.0.0.copyload.i209, 0
  %i.gr = icmp eq i32 %.sroa.56.sroa.6.0.copyload.i, 0
  %or.cond.i.i223 = select i1 %i.gq, i1 %i.gr, i1 false
  %i.gs = icmp eq i32 %.sroa.56.sroa.7.0.copyload.i, 0
  %or.cond5.i.i224 = select i1 %or.cond.i.i223, i1 %i.gs, i1 false
  %i.gt = icmp eq i32 %.sroa.56.sroa.8.0.copyload.i, 0
  %or.cond8.i.i225 = select i1 %or.cond5.i.i224, i1 %i.gt, i1 false
  %i.gu = icmp eq i32 %.sroa.56.sroa.9.0.copyload.i, 0
  %or.cond11.i.i226 = select i1 %or.cond8.i.i225, i1 %i.gu, i1 false
  %i.gv = icmp eq i64 %.sroa.02.0.copyload.i, 0
  %or.cond16.i.i227 = select i1 %or.cond11.i.i226, i1 %i.gv, i1 false
  %i.gw = icmp eq i64 %.sroa.56.sroa.0.0.copyload.i, 0
  %or.cond19.i.i228 = select i1 %or.cond16.i.i227, i1 %i.gw, i1 false
  %i.gx = icmp eq i64 %.sroa.56.sroa.4.0.copyload.i, 0
  %or.cond22.i.i229 = select i1 %or.cond19.i.i228, i1 %i.gx, i1 false
  %i.gy = icmp eq i64 %.sroa.56.sroa.5.0.copyload.i, 0
  %or.cond4.i.i230 = select i1 %or.cond22.i.i229, i1 %i.gy, i1 false
  br i1 %or.cond4.i.i230, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_secondsxEB7_.exit.thread604, label %.thread.i.i216

.thread.i.i216:                                   ; preds = %bb.cq, %bb.cp
  %.sroa.027.0.in.i.i217 = icmp eq i8 %.sroa.711.sroa.4.0.copyload.i211, 0
  br i1 %.sroa.027.0.in.i.i217, label %bb.cr, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_secondsxEB7_.exit

bb.cr:                                            ; preds = %.thread.i.i216
  %i.gz = icmp ne i64 %.sroa.055.0584, 0
  %spec.select.i.i222 = zext i1 %i.gz to i8
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_secondsxEB7_.exit.thread604

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_secondsxEB7_.exit.thread604: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %bb.cq, %bb.cr
  %.sroa.0.0.i.i219.ph = phi i8 [ %spec.select.i.i222, %bb.cr ], [ 0, %bb.cq ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19433, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx.i212, i64 3, i1 false), !alias.scope !518
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit232

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_secondsxEB7_.exit: ; preds = %.thread.i.i216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19433, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx.i212, i64 3, i1 false), !alias.scope !518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.ha = icmp eq i8 %.sroa.711.sroa.4.0.copyload.i211, -2
  br i1 %i.ha, label %bb.cs, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit232, !prof !495

bb.cs:                                            ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_secondsxEB7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !521
  %i.hb = inttoptr i64 %.sroa.02.0.copyload.i to ptr
  store ptr %i.hb, ptr %i.d, align 8, !noalias !521
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 34, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #27
          to label %bb.cw unwind label %bb.ct, !noalias !522

bb.ct:                                            ; preds = %bb.cs
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.hd = load ptr, ptr %i.d, align 8, !alias.scope !525, !noalias !521, !noundef !4 ; 2 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %common.resume, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hf = atomicrmw sub ptr %i.hd, i64 1 release, align 8, !noalias !526
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.cv, label %common.resume

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #23
          to label %common.resume unwind label %bb.cx, !noalias !522

bb.cw:                                            ; preds = %bb.cs
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !522
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit232: ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_secondsxEB7_.exit.thread604, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_secondsxEB7_.exit
  %.sroa.0.0.i.i219606 = phi i8 [ %.sroa.0.0.i.i219.ph, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_secondsxEB7_.exit.thread604 ], [ %.sroa.711.sroa.4.0.copyload.i211, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_secondsxEB7_.exit ]
  store i64 %.sroa.02.0.copyload.i, ptr %4, align 8, !alias.scope !522, !noalias !527
  %.sroa.6422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.013.0.i213, ptr %.sroa.6422.0..sroa_idx, align 8, !alias.scope !522, !noalias !527
  store i64 %.sroa.56.sroa.0.0.copyload.i, ptr %.sroa.56.0..sroa_idx.i205, align 8, !alias.scope !522, !noalias !527
  store i64 %.sroa.56.sroa.4.0.copyload.i, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !522, !noalias !527
  store i64 %.sroa.56.sroa.5.0.copyload.i, ptr %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !522, !noalias !527
  store i32 %.sroa.56.sroa.6.0.copyload.i, ptr %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !522, !noalias !527
  store i32 %.sroa.56.sroa.7.0.copyload.i, ptr %.sroa.56.sroa.7.0..sroa.56.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !522, !noalias !527
  store i32 %.sroa.56.sroa.8.0.copyload.i, ptr %.sroa.56.sroa.8.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !522, !noalias !527
  store i32 %.sroa.56.sroa.9.0.copyload.i, ptr %.sroa.56.sroa.9.0..sroa.56.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !522, !noalias !527
  store i16 %.sroa.015.0.i215, ptr %.sroa.58.0..sroa_idx.i206, align 8, !alias.scope !522, !noalias !527
  store i16 %.sroa.711.sroa.0.0.copyload.i209, ptr %.sroa.711.0..sroa_idx.i208, align 2, !alias.scope !522, !noalias !527
  store i8 %.sroa.0.0.i.i219606, ptr %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx.i210, align 4, !alias.scope !522, !noalias !527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx.i212, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19433, i64 3, i1 false), !alias.scope !522, !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19433)
  br label %.thread563

.thread563:                                       ; preds = %bb.cb, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit232, %.thread518
  %.sroa.38.4567 = phi i32 [ %i.o, %bb.cb ], [ %.sroa.38.5588, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit232 ], [ 0, %.thread518 ] ; 3 uses
  %.sroa.074.4566 = phi i64 [ %i.m, %bb.cb ], [ %.sroa.074.5586, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit232 ], [ 0, %.thread518 ] ; 2 uses
  %i.hi = icmp eq i64 %.sroa.074.4566, 0
  %i.hj = icmp eq i32 %.sroa.38.4567, 0
  %or.cond15 = and i1 %i.hj, %i.hi
  br i1 %or.cond15, label %.thread608, label %bb.cy

bb.cy:                                            ; preds = %.thread563
  %i.hk = sext i64 %.sroa.074.4566 to i128
  %i.hl = mul nsw i128 %i.hk, 1000
  %i.hm = sdiv i32 %.sroa.38.4567, 1000000
  %i.hn = sext i32 %i.hm to i128
  %i.ho = add nsw i128 %i.hl, %i.hn               ; 5 uses
  %i.hp = srem i32 %.sroa.38.4567, 1000000        ; 3 uses
  %i.hq = icmp sgt i128 %i.ho, 631107417600000
  br i1 %i.hq, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hr = icmp slt i128 %i.ho, -631107417600000
  br i1 %i.hr, label %bb.dd, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit143

bb.da:                                            ; preds = %bb.cy
  %i.hs = add nsw i128 %i.ho, -631107417600000
  %.frozen = freeze i128 %i.hs                    ; 2 uses
  %i.ht = udiv i128 %.frozen, 1000                ; 2 uses
  %i.hu = trunc nuw nsw i128 %i.ht to i64         ; 4 uses
  %i.hv = mul i128 %i.ht, 1000
  %.decomposed = sub i128 %.frozen, %i.hv
  %i.hw = trunc nuw nsw i128 %.decomposed to i32
  %i.hx = mul nuw nsw i32 %i.hw, 1000000
  %i.hy = add nsw i32 %i.hx, %i.hp                ; 4 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit143.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ia = icmp eq i64 %i.hu, 0
  %.not.i236 = icmp sgt i32 %i.hy, 0
  %or.cond728 = or i1 %i.ia, %.not.i236
  br i1 %or.cond728, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit143.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ib = add nsw i64 %i.hu, -1
  %i.ic = add nsw i32 %i.hy, 1000000000
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit143.thread

bb.dd:                                            ; preds = %bb.cz
  %.nonneg723 = sub nuw nsw i128 -631107417600000, %i.ho
  %.nonneg723.frozen = freeze i128 %.nonneg723    ; 2 uses
  %i.id = udiv i128 %.nonneg723.frozen, 1000      ; 2 uses
  %i.ie = trunc nuw nsw i128 %i.id to i64         ; 3 uses
  %i.if = sub nsw i64 0, %i.ie                    ; 2 uses
  %i.ig = mul i128 %i.id, 1000
  %.decomposed761 = sub i128 %.nonneg723.frozen, %i.ig
  %i.ih = trunc nuw nsw i128 %.decomposed761 to i32
  %i.ii = mul nsw i32 %i.ih, -1000000
  %i.ij = add nsw i32 %i.ii, %i.hp                ; 4 uses
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit143.thread, label %bb.de

end_hunk_0
