Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.00?download=true
inline.NumInlined: 734
inline.NumDeleted: 227
begin_hunk_0_@_RNvMsX_NtCsa9sSWSfjDbm_4jiff4spanNtB5_9SpanTotal5total:bb.a
bb.cc:                                            ; preds = %.noexc362.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i361 unwind label %bb.cg

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i361: ; preds = %bb.cc, %.noexc362.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit366

bb.cd:                                            ; preds = %bb.bz
  %i.il = getelementptr i8, ptr %.val119, i64 -5  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.im = invoke noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.il)
          to label %.noexc364 unwind label %bb.cg

.noexc364:                                        ; preds = %bb.cd
  %i.in = sub nsw i64 0, %i.im
  %i.io = getelementptr inbounds i8, ptr %i.il, i64 %i.in ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.il) ]
  store ptr %i.io, ptr %i.g, align 8
  %i.ip = atomicrmw add ptr %i.io, i64 -1 release, align 8, !noalias !1422
  %i.iq = icmp eq i64 %i.ip, 1
  br i1 %i.iq, label %bb.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i360

bb.ce:                                            ; preds = %.noexc364
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i360 unwind label %bb.cg

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i360: ; preds = %bb.ce, %.noexc364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit366

bb.cf:                                            ; preds = %.body, %bb.cg
  %.pn = phi { ptr, i32 } [ %i.ir, %bb.cg ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_(i64 %i.bc, ptr %.sroa.556.sroa.4.0.copyload) #26
          to label %bb.o unwind label %bb.da

bb.cg:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit366: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i360, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i361, %bb.bz, %bb.bz, %bb.bz, %bb.bz, %_RNvMs2_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8get_unit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %cond.i367 = icmp eq i64 %i.bc, 0
  br i1 %cond.i367, label %bb.ch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit374

bb.ch:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit366
  %i.is = ptrtoint ptr %.sroa.556.sroa.4.0.copyload to i64
  %i.it = and i64 %i.is, 7
  switch i64 %i.it, label %bb.ci [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit374
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit374
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit374
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit374
    i64 4, label %bb.cj
    i64 5, label %bb.cl
  ]

bb.ci:                                            ; preds = %bb.ch
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.iu = getelementptr i8, ptr %.sroa.556.sroa.4.0.copyload, i64 -4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.iv = invoke noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.iu)
          to label %.noexc370.a unwind label %bb.p

.noexc370.a:                                      ; preds = %bb.cj
  %i.iw = sub nsw i64 0, %i.iv
  %i.ix = getelementptr inbounds i8, ptr %i.iu, i64 %i.iw ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iu) ]
  store ptr %i.ix, ptr %i.f, align 8
  %i.iy = atomicrmw add ptr %i.ix, i64 -1 release, align 8, !noalias !1423
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.ck, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i369

bb.ck:                                            ; preds = %.noexc370.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i369 unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i369: ; preds = %bb.ck, %.noexc370.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit374

bb.cl:                                            ; preds = %bb.ch
  %i.ja = getelementptr i8, ptr %.sroa.556.sroa.4.0.copyload, i64 -5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.jb = invoke noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.ja)
          to label %.noexc372 unwind label %bb.p

.noexc372:                                        ; preds = %bb.cl
  %i.jc = sub nsw i64 0, %i.jb
  %i.jd = getelementptr inbounds i8, ptr %i.ja, i64 %i.jc ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ja) ]
  store ptr %i.jd, ptr %i.e, align 8
  %i.je = atomicrmw add ptr %i.jd, i64 -1 release, align 8, !noalias !1424
  %i.jf = icmp eq i64 %i.je, 1
  br i1 %i.jf, label %bb.cm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i368

bb.cm:                                            ; preds = %.noexc372
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i368 unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i368: ; preds = %bb.cm, %.noexc372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit374

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit374: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i368, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i369, %bb.ch, %bb.ch, %bb.ch, %bb.ch, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit: ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382, %.thread, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i384, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i383, %switch.lookup846, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382.thread, %bb.e, %switch.lookup, %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit374
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %cond.i375 = icmp eq i64 %i.bc, 0
  br i1 %cond.i375, label %bb.cn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382.thread

bb.cn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit
  %i.jg = ptrtoint ptr %.sroa.556.sroa.4.0.copyload to i64
  %i.jh = and i64 %i.jg, 7
  switch i64 %i.jh, label %bb.co [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382
    i64 4, label %bb.cp
    i64 5, label %bb.cr
  ]

bb.co:                                            ; preds = %bb.cn
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.ji = getelementptr i8, ptr %.sroa.556.sroa.4.0.copyload, i64 -4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.jj = invoke noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.ji)
          to label %.noexc378.a unwind label %bb.p

.noexc378.a:                                      ; preds = %bb.cp
  %i.jk = sub nsw i64 0, %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.ji, i64 %i.jk ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ji) ]
  store ptr %i.jl, ptr %i.d, align 8
  %i.jm = atomicrmw add ptr %i.jl, i64 -1 release, align 8, !noalias !1425
  %i.jn = icmp eq i64 %i.jm, 1
  br i1 %i.jn, label %bb.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i377

bb.cq:                                            ; preds = %.noexc378.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i377 unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i377: ; preds = %bb.cq, %.noexc378.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382

bb.cr:                                            ; preds = %bb.cn
  %i.jo = getelementptr i8, ptr %.sroa.556.sroa.4.0.copyload, i64 -5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.jp = invoke noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.jo)
          to label %.noexc380 unwind label %bb.p

.noexc380:                                        ; preds = %bb.cr
  %i.jq = sub nsw i64 0, %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.jo, i64 %i.jq ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jo) ]
  store ptr %i.jr, ptr %i.c, align 8
  %i.js = atomicrmw add ptr %i.jr, i64 -1 release, align 8, !noalias !1426
  %i.jt = icmp eq i64 %i.js, 1
  br i1 %i.jt, label %bb.cs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i376

bb.cs:                                            ; preds = %.noexc380
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i376 unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i376: ; preds = %bb.cs, %.noexc380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i376, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i.i377, %bb.cn, %bb.cn, %bb.cn, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ju = trunc nuw i8 %.sroa.047.2 to i1
  %or.cond = and i1 %.not69, %i.ju
  br i1 %or.cond, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.jv = trunc nuw i8 %.sroa.047.2 to i1
  %or.cond837 = and i1 %.not69, %i.jv
  %i.jw = icmp eq i64 %.sroa.556.sroa.7.0.copyload, 0
  %or.cond838 = select i1 %or.cond837, i1 %i.jw, i1 false
  br i1 %or.cond838, label %bb.ct, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit

3:                                                ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_(i64 %.sroa.556.sroa.7.0.copyload, ptr %.sroa.556.sroa.10.0.copyload) #26
          to label %bb.cz unwind label %bb.da

.thread:                                          ; preds = %switch.lookup846, %bb.s, %bb.s, %bb.s, %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i
  %.old = icmp eq i64 %.sroa.556.sroa.7.0.copyload, 0
  br i1 %.old, label %bb.ct, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit

bb.ct:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit382.thread, %.thread
  %i.jx = ptrtoint ptr %.sroa.556.sroa.10.0.copyload to i64
  %i.jy = and i64 %i.jx, 7
  switch i64 %i.jy, label %bb.cu [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit
    i64 4, label %bb.cv
    i64 5, label %bb.cx
  ]

bb.cu:                                            ; preds = %bb.ct
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.jz = getelementptr i8, ptr %.sroa.556.sroa.10.0.copyload, i64 -4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ka = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.jz)
  %i.kb = sub nsw i64 0, %i.ka
  %i.kc = getelementptr inbounds i8, ptr %i.jz, i64 %i.kb ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jz) ]
  store ptr %i.kc, ptr %i.b, align 8
  %i.kd = atomicrmw add ptr %i.kc, i64 -1 release, align 8, !noalias !1427
  %i.ke = icmp eq i64 %i.kd, 1
  br i1 %i.ke, label %bb.cw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i384

bb.cw:                                            ; preds = %bb.cv
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i384

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i384: ; preds = %bb.cw, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit

bb.cx:                                            ; preds = %bb.ct
  %i.kf = getelementptr i8, ptr %.sroa.556.sroa.10.0.copyload, i64 -5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.kg = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.kf)
  %i.kh = sub nsw i64 0, %i.kg
  %i.ki = getelementptr inbounds i8, ptr %i.kf, i64 %i.kh ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kf) ]
  store ptr %i.ki, ptr %i.a, align 8
  %i.kj = atomicrmw add ptr %i.ki, i64 -1 release, align 8, !noalias !1428
  %i.kk = icmp eq i64 %i.kj, 1
  br i1 %i.kk, label %bb.cy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i383

bb.cy:                                            ; preds = %bb.cx
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i383

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i383: ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit

bb.cz:                                            ; preds = %3, %bb.dc, %bb.o
  %.pn75 = phi { ptr, i32 } [ %4, %3 ], [ %.pn71, %bb.o ], [ %.pn71, %bb.dc ]
  resume { ptr, i32 } %.pn75

bb.da:                                            ; preds = %.body, %bb.cf, %3, %bb.db, %bb.dc
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.db:                                            ; preds = %bb.o
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_(i64 %i.bc, ptr %.sroa.556.sroa.4.0.copyload) #26
          to label %bb.dc unwind label %bb.da

bb.dc:                                            ; preds = %bb.db
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_(i64 %.sroa.556.sroa.7.0.copyload, ptr %.sroa.556.sroa.10.0.copyload) #26
          to label %bb.cz unwind label %bb.da
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsm_NtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB5_18DateTimeArithmetic11checked_add(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 16 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.n = load i8, ptr %i.m, align 4, !range !21, !alias.scope !1486, !noundef !5
  %i.o = tail call i8 @llvm.smax.i8(i8 %i.n, i8 1)
  switch i8 %i.o, label %default.unreachable [
    i8 1, label %bb.ad
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %1, align 8, !alias.scope !1486, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !1486, !noundef !5
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.s = load i64, ptr %1, align 8, !alias.scope !1486, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !22, !alias.scope !1486, !noundef !5
  call void @_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.s, i32 noundef %i.u), !noalias !1487
  %i.v = load i64, ptr %i.l, align 8, !range !9, !noalias !1487, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1487, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1487
  store ptr %i.y, ptr %i.k, align 8, !noalias !1487
  %i.z = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error8durationNtB4_5ErrorNtB6_9IntoError10into_error(i1 noundef zeroext true)
          to label %bb.j unwind label %bb.e, !noalias !1487

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ab = icmp eq ptr %i.y, null
  br i1 %i.ab, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !1488
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire, !noalias !1487
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #21
          to label %common.resume unwind label %bb.h, !noalias !1487

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !1487
  unreachable

common.resume:                                    ; preds = %bb.an, %bb.ao, %bb.ap, %bb.at, %bb.au, %bb.av, %bb.bb, %bb.bc, %bb.bd, %bb.y, %bb.z, %bb.aa, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.cm, %bb.y ], [ %i.aa, %bb.e ], [ %i.aa, %bb.g ], [ %i.aa, %bb.f ], [ %i.cm, %bb.aa ], [ %i.cm, %bb.z ], [ %i.fp, %bb.at ], [ %i.fd, %bb.an ], [ %i.fd, %bb.ap ], [ %i.fd, %bb.ao ], [ %i.fp, %bb.av ], [ %i.fp, %bb.au ], [ %i.ge, %bb.bd ], [ %i.ge, %bb.bc ], [ %i.ge, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.c
  %i.af = load i64, ptr %i.x, align 8, !noalias !1487, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !noalias !1487, !noundef !5
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.ai = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.y, ptr noundef %i.z), !noalias !1487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  store i32 1, ptr %0, align 8
  br label %bb.bg

bb.k:                                             ; preds = %bb.i, %bb.b
  %.sroa.14.0.ph.ph.in = phi i32 [ %i.r, %bb.b ], [ %i.ah, %bb.i ] ; 2 uses
  %.sroa.8.0.ph.ph = phi i64 [ %i.p, %bb.b ], [ %i.af, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.val = load i64, ptr %2, align 4               ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val9 = load i32, ptr %i.ak, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %.sroa.019.0.extract.trunc.i.i = trunc i64 %.val to i32
  %i.al = or i32 %.sroa.14.0.ph.ph.in, %.sroa.019.0.extract.trunc.i.i
  %or.cond.i.i = icmp eq i32 %i.al, 0
  br i1 %or.cond.i.i, label %bb.m, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4timeNtB2_4Time32overflowing_add_duration_general(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, i64 %.val, i64 noundef %.sroa.8.0.ph.ph, i32 noundef %.sroa.14.0.ph.ph.in) #21, !noalias !1489
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4timeNtB2_4Time24overflowing_add_duration.exit.i

bb.m:                                             ; preds = %bb.k
  %i.am = shl i64 %.val, 24
  %i.an = ashr i64 %i.am, 56
  %i.ao = mul nsw i64 %i.an, 3600
  %i.ap = shl i64 %.val, 16
  %i.aq = ashr i64 %i.ap, 56
  %i.ar = mul nsw i64 %i.aq, 60
  %i.as = shl i64 %.val, 8
  %i.at = ashr i64 %i.as, 56
  %i.au = add nsw i64 %i.ar, %i.at
  %i.av = add nsw i64 %i.au, %i.ao
  %i.aw = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.av, i64 %.sroa.8.0.ph.ph) ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.ax, label %bb.q, label %bb.n, !prof !6

bb.n:                                             ; preds = %bb.m
  %i.ay = extractvalue { i64, i1 } %i.aw, 0       ; 2 uses
  %i.az = sdiv i64 %i.ay, 86400
  %i.ba = srem i64 %i.ay, 86400                   ; 4 uses
  %.lobit.i.i.i = ashr i64 %i.ba, 63
  %.sroa.0.0.i.i.i = add nsw i64 %.lobit.i.i.i, %i.az ; 2 uses
  %i.bb = add nsw i64 %.sroa.0.0.i.i.i, -7304485
  %or.cond66.i.i = icmp ult i64 %i.bb, -14608969
  br i1 %or.cond66.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = tail call noundef i8 @_RNvXsW_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1491
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 8
  %i.bf = or disjoint i64 %i.be, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.bg = shl nsw i64 %.sroa.0.0.i.i.i, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i: ; preds = %bb.p, %bb.o
  %.sroa.3.0.insert.insert.i.i.i = phi i64 [ %i.bg, %bb.p ], [ %i.bf, %bb.o ] ; 3 uses
  %i.bh = trunc i64 %.sroa.3.0.insert.insert.i.i.i to i1
  br i1 %i.bh, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.m
  %.sroa.450.0.insert.insert.i.i = and i64 %.val, -4294967296
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4timeNtB2_4Time32overflowing_add_duration_general(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, i64 %.sroa.450.0.insert.insert.i.i, i64 noundef %.sroa.8.0.ph.ph, i32 noundef 0) #21, !noalias !1489
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4timeNtB2_4Time24overflowing_add_duration.exit.i

bb.r:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.445.0.extract.shift.i.i = lshr i64 %.sroa.3.0.insert.insert.i.i.i, 8
  %.sroa.445.0.extract.trunc.i.i = trunc i64 %.sroa.445.0.extract.shift.i.i to i8
  %i.bi = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.445.0.extract.trunc.i.i), !noalias !1491
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !alias.scope !1490, !noalias !1489
  store i64 1, ptr %i.j, align 8, !alias.scope !1490, !noalias !1489
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4timeNtB2_4Time24overflowing_add_duration.exit.i

bb.s:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %i.bk = icmp slt i64 %i.ba, 0
  %i.bl = add nsw i64 %i.ba, 86400
  %spec.select.i.i.i = select i1 %i.bk, i64 %i.bl, i64 %i.ba ; 2 uses
  %i.bm = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %i.bm, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = trunc nuw nsw i64 %spec.select.i.i.i to i32 ; 2 uses
  %i.bo = udiv i32 %i.bn, 3600                    ; 2 uses
  %i.bp = urem i32 %i.bn, 3600                    ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.lhs.trunc.i.i = trunc nuw nsw i32 %i.bp to i16 ; 2 uses
  %i.br = udiv i16 %.lhs.trunc.i.i, 60
end_hunk_0
