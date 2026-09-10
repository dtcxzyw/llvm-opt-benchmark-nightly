Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.01?download=true
inline.NumInlined: 432
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offset5ErrorEBJ_:bb.a
  %i.ar = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.aq)
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.as ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  store ptr %i.at, ptr %i.a, align 8
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !71
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i6

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #20
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i6: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !7, !noundef !6
  %i.b = icmp eq i8 %i.a, 30
  br i1 %i.b, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxShEECsa9sSWSfjDbm_4jiff.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxShEECsa9sSWSfjDbm_4jiff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxShEECsa9sSWSfjDbm_4jiff.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxShEECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtB1f_6bounds10RangeErrorEINtB8_12ErrorContextB1b_B1X_E7contextNtNtNtB8_2tz6offset5ErrorE0Ba_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i32 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = invoke noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %1) #20
          to label %_RNvXsj_NtCsa9sSWSfjDbm_4jiff5errorNtNtCsb09rMIQFAXO_9jiff_core6bounds10RangeErrorNtB5_9IntoError10into_error.exit unwind label %bb.g ; 4 uses

_RNvXsj_NtCsa9sSWSfjDbm_4jiff5errorNtNtCsb09rMIQFAXO_9jiff_core6bounds10RangeErrorNtB5_9IntoError10into_error.exit: ; preds = %bb.a
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offsetNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_RNvXsj_NtCsa9sSWSfjDbm_4jiff5errorNtNtCsb09rMIQFAXO_9jiff_core6bounds10RangeErrorNtB5_9IntoError10into_error.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.c, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e

bb.c:                                             ; preds = %_RNvXsj_NtCsa9sSWSfjDbm_4jiff5errorNtNtCsb09rMIQFAXO_9jiff_core6bounds10RangeErrorNtB5_9IntoError10into_error.exit
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.g = icmp eq ptr %i.c, null
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !80
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e, %bb.g
  %.pn11 = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %.pn11

bb.g:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.val = load i32, ptr %0, align 8, !range !81, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8 = load ptr, ptr %i.l, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offset5ErrorEBJ_(i32 %.val, ptr %.val8) #23
          to label %.thread unwind label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.c = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %1, ptr noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !90
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i8 noundef range(i8 0, 3) %1, i8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = invoke noundef ptr @_RNvXs2_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtB7_9IntoError10into_error(i8 noundef %1, i8 %2)
          to label %bb.b unwind label %bb.h       ; 4 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.c, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.g = icmp eq ptr %i.c, null
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !99
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %.thread unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %bb.h, %bb.e, %bb.d, %bb.f
  %.pn6 = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.f, %bb.e ], [ %i.f, %bb.f ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %.pn6

bb.h:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #23
  br label %.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [8 x i8], align 8                ; 4 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [8 x i8], align 8                ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [8 x i8], align 8                ; 4 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [8 x i8], align 8                ; 4 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [8 x i8], align 8                ; 4 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [8 x i8], align 8                ; 4 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [8 x i8], align 8                ; 4 uses
  %i.cg = alloca [8 x i8], align 8                ; 4 uses
  %i.ch = alloca [32 x i8], align 8               ; 17 uses
  %i.ci = alloca [24 x i8], align 8               ; 7 uses
  %i.cj = alloca [16 x i8], align 8               ; 7 uses
  %i.ck = alloca [16 x i8], align 8               ; 7 uses
  %i.cl = alloca [16 x i8], align 8               ; 7 uses
  %i.cm = alloca [16 x i8], align 8               ; 7 uses
  %i.cn = alloca [16 x i8], align 8               ; 7 uses
  %i.co = alloca [16 x i8], align 8               ; 7 uses
  %i.cp = alloca [16 x i8], align 8               ; 7 uses
  %i.cq = alloca [16 x i8], align 8               ; 7 uses
  %i.cr = alloca [16 x i8], align 8               ; 7 uses
  %i.cs = alloca [8 x i8], align 8                ; 4 uses
  %i.ct = alloca [24 x i8], align 8               ; 6 uses
  %i.cu = alloca [16 x i8], align 8               ; 7 uses
  %i.cv = alloca [16 x i8], align 8               ; 7 uses
  %i.cw = alloca [16 x i8], align 8               ; 7 uses
  %i.cx = alloca [16 x i8], align 8               ; 7 uses
  %i.cy = alloca [16 x i8], align 8               ; 7 uses
  %i.cz = alloca [16 x i8], align 8               ; 7 uses
  %i.da = alloca [16 x i8], align 8               ; 7 uses
  %i.db = alloca [16 x i8], align 8               ; 7 uses
  %i.dc = alloca [16 x i8], align 8               ; 7 uses
  %i.dd = alloca [16 x i8], align 8               ; 7 uses
  %i.de = alloca [16 x i8], align 8               ; 7 uses
  %i.df = alloca [16 x i8], align 8               ; 7 uses
  %i.dg = alloca [16 x i8], align 8               ; 7 uses
  %i.dh = alloca [16 x i8], align 8               ; 4 uses
  %i.di = alloca [1 x i8], align 1                ; 3 uses
  %i.dj = alloca [16 x i8], align 8               ; 7 uses
  %i.dk = alloca [16 x i8], align 8               ; 7 uses
  %i.dl = alloca [24 x i8], align 8               ; 4 uses
  %i.dm = alloca [24 x i8], align 8               ; 4 uses
  %i.dn = alloca [24 x i8], align 8               ; 4 uses
  %i.do = alloca [9 x i8], align 1                ; 9 uses
  %i.dp = alloca [24 x i8], align 8               ; 6 uses
  %i.dq = alloca [24 x i8], align 8               ; 6 uses
  %i.dr = alloca [24 x i8], align 8               ; 6 uses
  %i.ds = alloca [24 x i8], align 8               ; 6 uses
  %i.dt = alloca [24 x i8], align 8               ; 6 uses
  %i.du = alloca [24 x i8], align 8               ; 6 uses
  %i.dv = alloca [24 x i8], align 8               ; 5 uses
  %i.dw = alloca [24 x i8], align 8               ; 5 uses
  %i.dx = alloca [24 x i8], align 8               ; 5 uses
  %i.dy = alloca [24 x i8], align 8               ; 8 uses
  %i.dz = alloca [24 x i8], align 8               ; 4 uses
  %i.ea = alloca [24 x i8], align 8               ; 5 uses
  %i.eb = alloca [24 x i8], align 8               ; 7 uses
  %i.ec = alloca [24 x i8], align 8               ; 7 uses
  %i.ed = alloca [24 x i8], align 8               ; 7 uses
  %i.ee = alloca [24 x i8], align 8               ; 7 uses
  %i.ef = alloca [24 x i8], align 8               ; 5 uses
  %i.eg = alloca [24 x i8], align 8               ; 4 uses
  %i.eh = alloca [24 x i8], align 8               ; 4 uses
  %i.ei = alloca [24 x i8], align 8               ; 8 uses
  %i.ej = alloca [24 x i8], align 8               ; 8 uses
  %i.ek = alloca [24 x i8], align 8               ; 226 uses
  %i.el = alloca [4 x i8], align 4                ; 11 uses
  store i32 %1, ptr %i.el, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.val36 = load ptr, ptr %i.em, align 8          ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.val37 = load i64, ptr %i.en, align 8, !noundef !6 ; 2 uses
  %.not.i93 = icmp eq i64 %.val37, 0
  %i.eo = lshr i32 %1, 24
  %i.ep = trunc nuw i32 %i.eo to i8               ; 2 uses
  %i.eq = lshr i32 %1, 16
  %i.er = trunc i32 %i.eq to i8                   ; 2 uses
  %i.es = lshr i32 %1, 8                          ; 3 uses
  %i.et = trunc i32 %i.es to i8                   ; 2 uses
  br i1 %.not.i93, label %bb.b, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #24
  unreachable

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36) ]
  %i.eu = load i8, ptr %.val36, align 1, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !noalias !1436
  switch i8 %i.eu, label %bb.c [
    i8 37, label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit151.i
    i8 65, label %bb.d
    i8 97, label %bb.k
    i8 66, label %bb.r
    i8 98, label %bb.x
    i8 67, label %bb.y
    i8 99, label %bb.ad
    i8 68, label %bb.ae
    i8 100, label %bb.by
    i8 101, label %bb.cd
    i8 70, label %bb.ci
    i8 102, label %bb.ed
    i8 71, label %bb.ei
    i8 103, label %bb.eo
    i8 72, label %bb.eu
    i8 104, label %bb.ev
    i8 73, label %bb.ew
    i8 106, label %bb.ex
    i8 107, label %bb.fe
    i8 108, label %bb.ff
    i8 77, label %bb.fg
    i8 109, label %bb.fh
    i8 78, label %bb.fm
    i8 110, label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit128.i
    i8 80, label %bb.fr
    i8 112, label %bb.fv
    i8 81, label %bb.gf
    i8 113, label %bb.gg
    i8 82, label %bb.gp
    i8 114, label %bb.hh
    i8 83, label %bb.hi
    i8 115, label %bb.hj
    i8 84, label %bb.hn
    i8 116, label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit117.i
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE16fmt_iana_nocolonBb_:bb.a
bb.e:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %.24.val, i64 72
  %i.aq = load i32, ptr %i.ap, align 8, !range !17, !noundef !6
  %i.ar = trunc nuw i32 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.24.val, i64 76
  %i.at = load i32, ptr %i.as, align 4
  store i32 %i.at, ptr %0, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %.sroa.09.sroa.4.0..sroa_idx, align 4
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 1, ptr %.sroa.09.sroa.5.0..sroa_idx, align 1
  %.sroa.09.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 0, ptr %.sroa.09.sroa.6.0..sroa_idx, align 2
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.au = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 5) #20
  store ptr %i.au, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread4, %bb.f, %bb.g, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread
  %.sink = phi i8 [ 7, %bb.f ], [ -1, %bb.g ], [ -1, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread ], [ 3, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread4 ], [ 3, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %.sroa.4.0..sroa_idx, align 8
  ret void

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread: ; preds = %bb.c, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit
  %.pn = phi { i64, ptr } [ %i.am, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit ], [ %i.o, %bb.c ]
  %.sroa.4.0.i3 = extractvalue { i64, ptr } %.pn, 1
  store ptr %.sroa.4.0.i3, ptr %0, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE16fmt_month_abbrevBb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.24.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.24.val, i64 92
  %i.e = load i8, ptr %i.d, align 4, !range !12, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %.24.val, i64 93
  %i.h = load i8, ptr %i.g, align 1
  br i1 %i.f, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE16fmt_month_abbrev0EB16_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2284
  call fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.24.val) #25
  %i.i = load i16, ptr %i.a, align 8, !range !10, !noalias !2284, !noundef !6
  %i.j = trunc nuw i16 %i.i to i1
  br i1 %i.j, label %bb.c, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE16fmt_month_abbrev0EB16_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2288, !noalias !2284, !noundef !6 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !2289
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #20
  br label %bb.g

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE16fmt_month_abbrev0EB16_.exit: ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !2284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2284
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE16fmt_month_abbrev0EB16_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE16fmt_month_abbrev0EB16_.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE16fmt_month_abbrev0EB16_.exit
  %.pn2.i3 = phi i8 [ %.sroa.4.0.copyload.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE16fmt_month_abbrev0EB16_.exit ], [ %i.h, %bb.a ] ; 2 uses
  %switch.tableidx = add i8 %.pn2.i3, -1          ; 2 uses
  %i.p = icmp ult i8 %switch.tableidx, 12
  br i1 %i.p, label %switch.lookup, label %bb.f, !prof !13

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE16fmt_month_abbrev0EB16_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.pn2.i3, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impaNtB8_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @88, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #24
  unreachable

switch.lookup:                                    ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE16fmt_month_abbrev0EB16_.exit.thread
  %i.q = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE16fmt_month_abbrevBb_, i64 %i.q
  %switch.load = load ptr, ptr %switch.gep, align 8
  store ptr %switch.load, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2284
  %i.r = call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 0) #20
  store ptr %i.r, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup
  %.sink = phi i8 [ -1, %bb.g ], [ 0, %switch.lookup ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.s, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define range(i64 1536, 4785074604081152) i64 @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE20utf8_decode_and_bumpBb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 8 uses
  %i.e = tail call i64 @_RNvNtNtCsa9sSWSfjDbm_4jiff4util4utf86decode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d) ; 8 uses
  %.sroa.514.0.extract.shift = lshr i64 %i.e, 32
  %i.f = and i64 %i.e, 255
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.i = load i8, ptr %i.h, align 1, !range !12, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.l, label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.e, 4785074604081152
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %i.e, 549755813888
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp samesign ult i64 %i.e, 8796093022208
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp samesign ult i64 %i.e, 281474976710656
  %. = select i1 %i.n, i64 3, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.08.0 = phi i64 [ 2, %bb.f ], [ %., %bb.g ], [ 1, %bb.e ] ; 3 uses
  %i.o = icmp ugt i64 %.sroa.08.0, %i.d
  br i1 %i.o, label %bb.j, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.p = and i64 %i.e, 9007194959773696
  %i.q = or disjoint i64 %i.p, 1536
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.08.0, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #24
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.i
  %.sroa.08.0.pn = phi i64 [ %.sroa.08.0, %bb.i ], [ %i.r, %bb.l ] ; 2 uses
  %.sroa.51.0 = phi i64 [ %i.q, %bb.i ], [ 281462091810304, %bb.l ]
  %storemerge = sub nuw i64 %i.d, %.sroa.08.0.pn
  %storemerge21 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.08.0.pn
  store ptr %storemerge21, ptr %i.a, align 8
  store i64 %storemerge, ptr %i.c, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.r = and i64 %.sroa.514.0.extract.shift, 255  ; 3 uses
  %i.s = icmp ugt i64 %i.r, %i.d
  br i1 %i.s, label %bb.n, label %bb.k, !prof !14

bb.m:                                             ; preds = %bb.d, %bb.k
  %.sroa.0.0.insert.insert = phi i64 [ %.sroa.51.0, %bb.k ], [ 1537, %bb.d ]
  ret i64 %.sroa.0.0.insert.insert

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #24
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define { i64, ptr } @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE6formatBb_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.loopexit, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit.lr.ph

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit.lr.ph: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit: ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit.lr.ph, %.backedge
  %i.p = phi i64 [ %i.l, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit.lr.ph ], [ %i.cv, %.backedge ] ; 2 uses
  %.val66 = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.q = load i8, ptr %.val66, align 1, !noundef !6 ; 3 uses
  %i.r = icmp eq i8 %i.q, 37
  br i1 %i.r, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit70

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit: ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  %i.s = add i64 %i.p, -1                         ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val66, i64 1 ; 4 uses
  store ptr %i.t, ptr %i.j, align 8, !alias.scope !2365, !captures !20
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !2365
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.b, label %bb.c

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit70: ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  %i.u = icmp sgt i8 %i.q, -1
  br i1 %i.u, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76, label %bb.ax, !prof !15

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit
  %i.v = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.w = load i8, ptr %i.v, align 1, !range !12, !noundef !6
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.ae, label %bb.ad

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  %i.y = load i8, ptr %i.t, align 1, !noalias !2367, !noundef !6 ; 3 uses
  %i.z = and i8 %i.y, -33
  %i.aa = add i8 %i.z, -65
  %or.cond56.i = icmp ult i8 %i.aa, 26
  br i1 %or.cond56.i, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.val66, i64 2
  %i.ac = add i64 %i.p, -2                        ; 2 uses
  switch i8 %i.y, label %bb.k [
    i8 95, label %bb.i
    i8 48, label %bb.e
    i8 45, label %bb.f
    i8 94, label %bb.g
    i8 35, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.01.0.i = phi i32 [ 262144, %bb.h ], [ 65536, %bb.e ], [ 131072, %bb.f ], [ 196608, %bb.g ], [ 0, %bb.d ]
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2368
  store i8 %i.y, ptr %i.o, align 1, !noalias !2368
  store i8 4, ptr %i.f, align 8, !noalias !2368
  %i.ae = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f) #20, !noalias !2368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2368
  br label %bb.aj

bb.k:                                             ; preds = %bb.d, %bb.i
  %.sroa.13.0.ph = phi i64 [ %i.ac, %bb.i ], [ %i.s, %bb.d ] ; 6 uses
  %.sroa.890.0.ph = phi ptr [ %i.ab, %bb.i ], [ %i.t, %bb.d ] ; 5 uses
  %.sroa.088.0.ph = phi i32 [ %.sroa.01.0.i, %bb.i ], [ 16711680, %bb.d ]
  store ptr %.sroa.890.0.ph, ptr %i.j, align 8, !alias.scope !2366, !noalias !2369, !captures !20
  store i64 %.sroa.13.0.ph, ptr %i.k, align 8, !alias.scope !2366, !noalias !2369
  call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %.sroa.0.0.i55159, 0
  br i1 %i.af, label %.lr.ph164.preheader, label %.thread

bb.m:                                             ; preds = %bb.k, %bb.n
  %.sroa.0.0.i55159 = phi i64 [ 0, %bb.k ], [ %i.aj, %bb.n ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.890.0.ph, i64 %.sroa.0.0.i55159
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !2370, !noalias !2371, !noundef !6
  %i.ai = add i8 %i.ah, -48
  %or.cond48.i = icmp ult i8 %i.ai, 10
  br i1 %or.cond48.i, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.aj = add nuw i64 %.sroa.0.0.i55159, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %.sroa.13.0.ph
  br i1 %exitcond.not, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.n, %bb.l
  %.sroa.0.0.i55149 = phi i64 [ %.sroa.0.0.i55159, %bb.l ], [ %.sroa.13.0.ph, %bb.n ]
  %.sroa.0.0.i55149.fr = freeze i64 %.sroa.0.0.i55149 ; 3 uses
  %.not.i71 = icmp ugt i64 %.sroa.0.0.i55149.fr, %.sroa.13.0.ph
  br i1 %.not.i71, label %bb.o, label %.lr.ph.preheader, !prof !14

bb.o:                                             ; preds = %.thread
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #24, !noalias !2372
  unreachable

.lr.ph.preheader:                                 ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.890.0.ph, i64 %.sroa.0.0.i55149.fr ; 2 uses
  %i.al = sub nuw i64 %.sroa.13.0.ph, %.sroa.0.0.i55149.fr ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.sroa.0.0.i61161 = phi ptr [ %i.am, %bb.r ], [ %.sroa.890.0.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.012.0.i160 = phi i64 [ %i.av, %bb.r ], [ 0, %.lr.ph.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61161, i64 1 ; 2 uses
  %i.an = load i8, ptr %.sroa.0.0.i61161, align 1, !alias.scope !2373, !noalias !2374, !noundef !6 ; 2 uses
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %or.cond.i62 = icmp ult i8 %i.ao, 10
  br i1 %or.cond.i62, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph
  %i.ap = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.012.0.i160, i64 10) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %bb.s, label %bb.q, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  %i.as = zext nneg i8 %i.ao to i64
  %i.at = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ar, i64 %i.as) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %bb.s, label %bb.r, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.av = extractvalue { i64, i1 } %i.at, 0       ; 3 uses
  %i.aw = icmp eq ptr %i.am, %i.ak
  br i1 %i.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph, %bb.q, %bb.p
  %.sroa.799.1.ph = phi i8 [ 2, %bb.p ], [ 2, %bb.q ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2375
  %i.ax = call noundef ptr @_RNvXs2_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtB7_9IntoError10into_error(i8 noundef range(i8 0, 3) %.sroa.799.1.ph, i8 %i.an), !noalias !2375 ; 4 uses
  store ptr %i.ax, ptr %i.b, align 8, !noalias !2375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2375
  store i8 8, ptr %i.a, align 8, !noalias !2371
  %i.ay = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit unwind label %bb.t, !noalias !2375

bb.t:                                             ; preds = %bb.s
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ba = icmp eq ptr %i.ax, null
  br i1 %i.ba, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !2376
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.v, label %common.resume

bb.v:                                             ; preds = %bb.u
  fence acquire, !noalias !2371
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %common.resume unwind label %bb.w, !noalias !2375

bb.w:                                             ; preds = %bb.v
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2375
  unreachable

common.resume:                                    ; preds = %bb.aq, %bb.ao, %bb.ap, %bb.t, %bb.u, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.t ], [ %lpad.phi, %bb.aq ], [ %i.az, %bb.u ], [ %i.az, %bb.v ], [ %lpad.phi, %bb.ap ], [ %lpad.phi, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2375
  %i.be = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ax, ptr noundef %i.ay), !noalias !2375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2375
  br label %bb.aj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %bb.r
  %or.cond.i56 = icmp ugt i64 %i.av, 255
  br i1 %or.cond.i56, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  %i.bf = icmp eq i64 %i.al, 0
  br i1 %i.bf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = trunc nuw nsw i64 %i.av to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = or disjoint i32 %i.bh, 1
  br label %.lr.ph164.preheader

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2377
  store i8 5, ptr %i.e, align 8, !noalias !2377
  %i.bj = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e) #20, !noalias !2371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2377
  br label %bb.aj

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2377
  store i8 22, ptr %i.d, align 8, !noalias !2377
  %i.bk = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #20, !noalias !2371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2377
  br label %bb.aj

.lr.ph164.preheader:                              ; preds = %bb.l, %bb.y
  %.sroa.19.0 = phi i64 [ %i.al, %bb.y ], [ %.sroa.13.0.ph, %bb.l ] ; 7 uses
  %.sroa.1293.0 = phi ptr [ %i.ak, %bb.y ], [ %.sroa.890.0.ph, %bb.l ] ; 3 uses
  %.sroa.091.0 = phi i32 [ %i.bi, %bb.y ], [ 0, %bb.l ]
  store ptr %.sroa.1293.0, ptr %i.j, align 8, !alias.scope !2366, !noalias !2369, !captures !20
  store i64 %.sroa.19.0, ptr %i.k, align 8, !alias.scope !2366, !noalias !2369
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  %umax190 = call i64 @llvm.umin.i64(i64 %.sroa.19.0, i64 3) ; 2 uses
  br label %.lr.ph164

._crit_edge:                                      ; preds = %.lr.ph164
  %i.bl = icmp samesign ugt i64 %.sroa.0.0.i58163, %.sroa.19.0
  br i1 %i.bl, label %bb.ac, label %._crit_edge.thread, !prof !2379

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %bb.ab
  %.sroa.0.0.i58163 = phi i64 [ %i.bp, %bb.ab ], [ 0, %.lr.ph164.preheader ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.1293.0, i64 %.sroa.0.0.i58163
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !2378, !noalias !2380, !noundef !6
  %i.bo = icmp eq i8 %i.bn, 58
  br i1 %i.bo, label %bb.ab, label %._crit_edge

bb.ab:                                            ; preds = %.lr.ph164
  %i.bp = add nuw nsw i64 %.sroa.0.0.i58163, 1    ; 2 uses
  %exitcond191.not = icmp eq i64 %i.bp, %umax190
  br i1 %exitcond191.not, label %._crit_edge.thread, label %.lr.ph164

._crit_edge.thread:                               ; preds = %bb.ab, %._crit_edge
  %.sroa.0.0.i58.lcssa.ph239 = phi i64 [ %.sroa.0.0.i58163, %._crit_edge ], [ %umax190, %bb.ab ] ; 4 uses
  %i.bq = icmp eq i64 %.sroa.19.0, %.sroa.0.0.i58.lcssa.ph239
  br i1 %i.bq, label %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit.thread, label %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit

bb.ac:                                            ; preds = %._crit_edge
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i58163, i64 noundef range(i64 0, -9223372036854775808) %.sroa.19.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.19.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #24, !noalias !2381
  unreachable

_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit.thread: ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2381
  store i8 3, ptr %i.c, align 8, !noalias !2381
  %i.br = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) #20, !noalias !2381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2381
  br label %bb.aj

_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit: ; preds = %._crit_edge.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.1293.0, i64 %.sroa.0.0.i58.lcssa.ph239
  %i.bt = sub nuw nsw i64 %.sroa.19.0, %.sroa.0.0.i58.lcssa.ph239
  %.sroa.049.0.extract.trunc.i = trunc i64 %.sroa.0.0.i58.lcssa.ph239 to i32
  store ptr %i.bs, ptr %i.j, align 8, !alias.scope !2366, !noalias !2369, !captures !20
  store i64 %i.bt, ptr %i.k, align 8, !alias.scope !2366, !noalias !2369
  %.sroa.9.3.insert.ext = and i32 %.sroa.088.0.ph, 16711680
  %.sroa.9.3.insert.insert = or i32 %.sroa.091.0, %.sroa.9.3.insert.ext
  %.sroa.9.4.insert.ext = shl i32 %.sroa.049.0.extract.trunc.i, 24
  %.sroa.9.4.insert.insert = or i32 %.sroa.9.3.insert.insert, %.sroa.9.4.insert.ext
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 32, ptr %i.i, align 8
  %i.bu = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit

bb.ae:                                            ; preds = %bb.b
  %i.bv = load ptr, ptr %i.n, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !2382, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noalias !2382, !noundef !6
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !2382, !noundef !6 ; 2 uses
  %i.cb = zext i16 %i.ca to i64                   ; 2 uses
  %i.cc = icmp eq i64 %i.by, %i.cb
  br i1 %i.cc, label %bb.af, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53, !prof !14

bb.af:                                            ; preds = %bb.ae
  %i.cd = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv) #20 ; 2 uses
  %i.ce = extractvalue { i64, ptr } %i.cd, 0
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.pre205 = load ptr, ptr %i.bv, align 8, !alias.scope !2382 ; 3 uses
  %.phi.trans.insert206 = getelementptr inbounds nuw i8, ptr %.pre205, i64 8
  %.pre207 = load i64, ptr %.phi.trans.insert206, align 8, !alias.scope !2383
  %.phi.trans.insert208 = getelementptr inbounds nuw i8, ptr %.pre205, i64 16
  %.pre209 = load i16, ptr %.phi.trans.insert208, align 8, !alias.scope !2383 ; 2 uses
  %.pre210 = zext i16 %.pre209 to i64             ; 2 uses
  %i.cg = icmp eq i64 %.pre207, %.pre210
  call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  br i1 %i.cg, label %bb.ah, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53, !prof !16

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #24, !noalias !2383
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53: ; preds = %bb.ae, %bb.ag
  %i.ch = phi ptr [ %.pre205, %bb.ag ], [ %i.bw, %bb.ae ] ; 2 uses
  %i.ci = phi i16 [ %.pre209, %bb.ag ], [ %i.ca, %bb.ae ]
  %.pre-phi243 = phi i64 [ %.pre210, %bb.ag ], [ %i.cb, %bb.ae ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = load ptr, ptr %i.ch, align 8, !alias.scope !2383, !nonnull !6, !noundef !6
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.pre-phi243
  store i8 37, ptr %i.cl, align 1, !noalias !2383
  %i.cm = add i16 %i.ci, 1
  store i16 %i.cm, ptr %i.cj, align 8, !alias.scope !2383
  br label %.loopexit

bb.ai:                                            ; preds = %bb.af
  %i.cn = extractvalue { i64, ptr } %i.cd, 1
  br label %.loopexit

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit: ; preds = %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit, %bb.c
  %.sroa.9.0109 = phi i32 [ %.sroa.9.4.insert.insert, %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit ], [ 16711680, %bb.c ]
  %i.co = call fastcc { i64, ptr } @_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 %.sroa.9.0109) #25 ; 2 uses
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  %i.cq = extractvalue { i64, ptr } %i.co, 1
  %i.cr = trunc nuw i64 %i.cp to i1
  br i1 %i.cr, label %bb.aj, label %.backedgethread-pre-split

bb.aj:                                            ; preds = %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit.thread, %bb.aa, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit, %bb.z, %bb.j, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit
  %.sroa.621.0 = phi ptr [ %i.cq, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit ], [ %i.ae, %bb.j ], [ %i.br, %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit.thread ], [ %i.bk, %bb.aa ], [ %i.bj, %bb.z ], [ %i.be, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %.sroa.621.0, ptr %i.h, align 8
  %i.cs = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.ct = load i8, ptr %i.cs, align 1, !range !12, !noundef !6
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73

.backedgethread-pre-split:                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit74, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit
  %.pr = load i64, ptr %i.k, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedgethread-pre-split, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit77
  %i.cv = phi i64 [ %.pr, %.backedgethread-pre-split ], [ %5, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit77 ] ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.loopexit, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cx = load ptr, ptr %i.n, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !2384, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !noalias !2384, !noundef !6
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dc = load i16, ptr %i.db, align 8, !noalias !2384, !noundef !6 ; 2 uses
  %i.dd = zext i16 %i.dc to i64                   ; 2 uses
  %i.de = icmp eq i64 %i.da, %i.dd
  br i1 %i.de, label %bb.al, label %.thread249, !prof !14

bb.al:                                            ; preds = %bb.ak
  %i.df = invoke { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cx) #20
          to label %.noexc unwind label %.loopexit147 ; 2 uses

.noexc:                                           ; preds = %bb.al
  %i.dg = extractvalue { i64, ptr } %i.df, 0
  %i.dh = trunc nuw i64 %i.dg to i1
  br i1 %i.dh, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %.noexc
  %.pre199 = load ptr, ptr %i.cx, align 8, !alias.scope !2384 ; 3 uses
  %.phi.trans.insert200 = getelementptr inbounds nuw i8, ptr %.pre199, i64 8
  %.pre201 = load i64, ptr %.phi.trans.insert200, align 8, !alias.scope !2385
  %.phi.trans.insert202 = getelementptr inbounds nuw i8, ptr %.pre199, i64 16
  %.pre203 = load i16, ptr %.phi.trans.insert202, align 8, !alias.scope !2385 ; 2 uses
  %.pre211 = zext i16 %.pre203 to i64             ; 2 uses
  %i.di = icmp eq i64 %.pre201, %.pre211
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  br i1 %i.di, label %bb.an, label %.thread249, !prof !16

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #24
          to label %.noexc47 unwind label %.loopexit.split-lp

.noexc47:                                         ; preds = %bb.an
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73: ; preds = %bb.aj, %bb.at, %bb.as, %bb.ar
  %.sroa.9.0 = phi ptr [ %i.dn, %bb.at ], [ %i.dn, %bb.ar ], [ %i.dn, %bb.as ], [ %.sroa.621.0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.loopexit

.loopexit147:                                     ; preds = %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp, %.loopexit147
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit147 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  %i.dj = load ptr, ptr %i.h, align 8, !alias.scope !2388, !noundef !6 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %common.resume, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dl = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !2389
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.aq, label %common.resume

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #20
          to label %common.resume unwind label %bb.aw

bb.ar:                                            ; preds = %.noexc
  %i.dn = extractvalue { i64, ptr } %i.df, 1      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  %i.do = load ptr, ptr %i.h, align 8, !alias.scope !2392, !noundef !6 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dq = atomicrmw sub ptr %i.do, i64 1 release, align 8, !noalias !2393
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.at, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73

bb.at:                                            ; preds = %bb.as
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #20
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73

.thread249:                                       ; preds = %bb.ak, %bb.am
  %i.ds = phi ptr [ %.pre199, %bb.am ], [ %i.cy, %bb.ak ] ; 2 uses
  %i.dt = phi i16 [ %.pre203, %bb.am ], [ %i.dc, %bb.ak ]
  %.pre-phi212252 = phi i64 [ %.pre211, %bb.am ], [ %i.dd, %bb.ak ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dv = load ptr, ptr %i.ds, align 8, !alias.scope !2385, !nonnull !6, !noundef !6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.pre-phi212252
  store i8 37, ptr %i.dw, align 1, !noalias !2385
  %i.dx = add i16 %i.dt, 1
  store i16 %i.dx, ptr %i.du, align 8, !alias.scope !2385
  store ptr %i.t, ptr %i.j, align 8, !captures !20
  store i64 %i.s, ptr %i.k, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  %i.dy = load ptr, ptr %i.h, align 8, !alias.scope !2396, !noundef !6 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit74, label %bb.au

bb.au:                                            ; preds = %.thread249
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !2397
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.av, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit74

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #20
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit74

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit74: ; preds = %.thread249, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.backedgethread-pre-split

bb.aw:                                            ; preds = %bb.aq
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.ax:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit70
  %i.ed = call i64 @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE20utf8_decode_and_bumpBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #20 ; 6 uses
  %i.ee = trunc i64 %i.ed to i1
  br i1 %i.ee, label %bb.bb, label %bb.bc

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76: ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit70
  %i.ef = load ptr, ptr %i.n, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !2398, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !2398, !noundef !6
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ek = load i16, ptr %i.ej, align 8, !noalias !2398, !noundef !6 ; 2 uses
  %i.el = zext i16 %i.ek to i64                   ; 2 uses
  %i.em = icmp eq i64 %i.ei, %i.el
  br i1 %i.em, label %bb.ay, label %.thread253, !prof !14

bb.ay:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76
  %i.en = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ef) #20 ; 2 uses
  %i.eo = extractvalue { i64, ptr } %i.en, 0
  %i.ep = trunc nuw i64 %i.eo to i1
  br i1 %i.ep, label %bb.bh, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.pre194 = load ptr, ptr %i.ef, align 8, !alias.scope !2398 ; 3 uses
  %.phi.trans.insert195 = getelementptr inbounds nuw i8, ptr %.pre194, i64 8
  %.pre196 = load i64, ptr %.phi.trans.insert195, align 8, !alias.scope !2399
  %.phi.trans.insert197 = getelementptr inbounds nuw i8, ptr %.pre194, i64 16
  %.pre198 = load i16, ptr %.phi.trans.insert197, align 8, !alias.scope !2399 ; 2 uses
  %.pre213 = zext i16 %.pre198 to i64             ; 2 uses
  %i.eq = icmp eq i64 %.pre196, %.pre213
  call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  br i1 %i.eq, label %bb.ba, label %.thread253, !prof !16

bb.ba:                                            ; preds = %bb.az
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #24, !noalias !2399
  unreachable

bb.bb:                                            ; preds = %bb.ax
  %.sroa.436.0.extract.shift = lshr i64 %i.ed, 8
  %.sroa.436.0.extract.trunc = trunc i64 %.sroa.436.0.extract.shift to i8
  %i.er = call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef %.sroa.436.0.extract.trunc) #20
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ax
  %.sroa.638.0.extract.shift = lshr i64 %i.ed, 32
  %.sroa.638.0.extract.trunc = trunc nuw nsw i64 %.sroa.638.0.extract.shift to i32
  %i.es = load ptr, ptr %i.n, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  %i.et = icmp samesign ult i64 %i.ed, 549755813888
  br i1 %i.et, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eu = icmp samesign ult i64 %i.ed, 8796093022208
  br i1 %i.eu, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ev = icmp samesign ult i64 %i.ed, 281474976710656
  %..i = select i1 %i.ev, i64 3, i64 4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %.sroa.04.0.i = phi i64 [ 2, %bb.bd ], [ %..i, %bb.be ], [ 1, %bb.bc ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  %i.ew = load ptr, ptr %i.es, align 8, !alias.scope !2402, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i16, ptr %i.ex, align 8, !noalias !2402, !noundef !6
  %i.ez = zext i16 %i.ey to i64
  %i.fa = add nuw nsw i64 %.sroa.04.0.i, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !2402, !noundef !6 ; 2 uses
  %i.fd = icmp ugt i64 %i.fa, %i.fc
  br i1 %i.fd, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread, !prof !14

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i: ; preds = %bb.bf
  %i.fe = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.es) #20 ; 2 uses
  %i.ff = extractvalue { i64, ptr } %i.fe, 0
  %i.fg = trunc nuw i64 %i.ff to i1
  br i1 %i.fg, label %.loopexit.split.loop.exit168, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i
  %.pre = load ptr, ptr %i.es, align 8, !alias.scope !2400 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre192 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !2403, !noalias !2404
  br label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge, %bb.bf
  %i.fh = phi i64 [ %.pre192, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge ], [ %i.fc, %bb.bf ]
  %i.fi = phi ptr [ %.pre, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge ], [ %i.ew, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2400
  store i32 0, ptr %i.g, align 4, !noalias !2400
  %i.fj = call fastcc { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw(i32 noundef range(i32 0, 1114112) %.sroa.638.0.extract.trunc, ptr noalias nofree noundef nonnull %i.g) #25 ; 2 uses
  %i.fk = extractvalue { ptr, i64 } %i.fj, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fm = load i16, ptr %i.fl, align 8, !alias.scope !2403, !noalias !2404, !noundef !6 ; 2 uses
  %i.fn = zext i16 %i.fm to i64                   ; 2 uses
  %i.fo = sub nuw i64 %i.fh, %i.fn
  %.not.i.i = icmp ugt i64 %i.fk, %i.fo
  br i1 %.not.i.i, label %bb.bg, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit, !prof !21

bb.bg:                                            ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #24, !noalias !2405
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread
  %i.fp = extractvalue { ptr, i64 } %i.fj, 0
  %i.fq = load ptr, ptr %i.fi, align 8, !alias.scope !2403, !noalias !2404, !nonnull !6, !noundef !6
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fn
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.fr, i64 noundef %i.fk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fp, i64 noundef %i.fk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !2403
  %i.fs = trunc i64 %i.fk to i16
  %i.ft = add i16 %i.fm, %i.fs
  store i16 %i.ft, ptr %i.fl, align 8, !alias.scope !2403, !noalias !2404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2400
  br label %.backedgethread-pre-split

bb.bh:                                            ; preds = %bb.ay
  %i.fu = extractvalue { i64, ptr } %i.en, 1
  br label %.loopexit

.thread253:                                       ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76, %bb.az
  %i.fv = phi ptr [ %.pre194, %bb.az ], [ %i.eg, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76 ] ; 2 uses
  %i.fw = phi i16 [ %.pre198, %bb.az ], [ %i.ek, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76 ]
  %.pre-phi214256 = phi i64 [ %.pre213, %bb.az ], [ %i.el, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fy = load ptr, ptr %i.fv, align 8, !alias.scope !2399, !nonnull !6, !noundef !6
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.pre-phi214256
  store i8 %i.q, ptr %i.fz, align 1, !noalias !2399
  %i.ga = add i16 %i.fw, 1
  store i16 %i.ga, ptr %i.fx, align 8, !alias.scope !2399
  call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  %1 = load i64, ptr %i.k, align 8, !alias.scope !2406, !noundef !6 ; 2 uses
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit77, !prof !14

3:                                                ; preds = %.thread253
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #24, !noalias !2406
  unreachable

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit77: ; preds = %.thread253
  %4 = load ptr, ptr %i.j, align 8, !alias.scope !2406, !nonnull !6, !noundef !6
  %5 = add i64 %1, -1                             ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 1
  store ptr %6, ptr %i.j, align 8, !alias.scope !2406, !captures !20
  store i64 %5, ptr %i.k, align 8, !alias.scope !2406
  br label %.backedge

.loopexit.split.loop.exit168:                     ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i
  %i.gb = extractvalue { i64, ptr } %i.fe, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.ai, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53, %.loopexit.split.loop.exit168, %bb.a, %bb.bh, %bb.bb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73, %bb.ad
  %.sroa.9.1 = phi ptr [ %i.er, %bb.bb ], [ %.sroa.9.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73 ], [ undef, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53 ], [ %i.bu, %bb.ad ], [ %i.fu, %bb.bh ], [ %i.gb, %.loopexit.split.loop.exit168 ], [ undef, %bb.a ], [ %i.cn, %bb.ai ], [ undef, %.backedge ]
  %.sroa.0.1 = phi i64 [ 1, %bb.bb ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73 ], [ 0, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53 ], [ 1, %bb.ad ], [ 1, %bb.bh ], [ 1, %.loopexit.split.loop.exit168 ], [ 0, %bb.a ], [ 1, %bb.ai ], [ 0, %.backedge ]
  %i.gc = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.gd = insertvalue { i64, ptr } %i.gc, ptr %.sroa.9.1, 1
  ret { i64, ptr } %i.gd
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime12to_timestamp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [12 x i8], align 8                ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %i.s = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.0.copyload, ptr %i.u, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) #25, !noalias !2456
  %i.v = load i16, ptr %i.p, align 8, !range !10, !noalias !2457, !noundef !6
  %i.w = trunc nuw i16 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2457, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2458
  store ptr %i.y, ptr %i.o, align 8, !noalias !2458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2458
  store i8 23, ptr %i.n, align 8, !noalias !2457
  %i.z = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.i unwind label %bb.e, !noalias !2459

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ab = icmp eq ptr %i.y, null
  br i1 %i.ab, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !2460
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #20
          to label %common.resume unwind label %bb.h, !noalias !2459

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2459
  unreachable

common.resume:                                    ; preds = %bb.bh, %bb.bi, %bb.bj, %bb.az, %bb.ba, %bb.bb, %bb.e, %bb.f, %bb.g, %bb.as, %bb.at, %bb.au
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.az ], [ %i.bt, %bb.as ], [ %i.aa, %bb.e ], [ %i.aa, %bb.g ], [ %i.aa, %bb.f ], [ %i.bt, %bb.au ], [ %i.bt, %bb.at ], [ %i.ca, %bb.bb ], [ %i.ca, %bb.ba ], [ %i.ef, %bb.bj ], [ %i.ef, %bb.bi ], [ %i.ef, %bb.bh ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2458
  %i.af = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.y, ptr noundef %i.z), !noalias !2459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2458
  br label %bb.ay

bb.j:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %.sroa.016.0.copyload.i = load i32, ptr %i.ag, align 2, !noalias !2457 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 102
  %i.ai = load i8, ptr %i.ah, align 2, !range !12, !alias.scope !2462, !noalias !2463, !noundef !6
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 103
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !2462, !noalias !2463 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load i8, ptr %i.am, align 8, !range !12, !alias.scope !2462, !noalias !2463, !noundef !6
  %i.ao = trunc nuw i8 %i.an to i1                ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !2462, !noalias !2463 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.as = load i8, ptr %i.ar, align 2, !range !12, !alias.scope !2462, !noalias !2463, !noundef !6
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  br i1 %i.ao, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %i.ao, label %bb.an, label %bb.am

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !2462, !noalias !2463 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !range !17, !alias.scope !2462, !noalias !2463, !noundef !6 ; 2 uses
  br i1 %i.at, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.k
  br i1 %i.at, label %bb.ah, label %bb.ag

bb.o:                                             ; preds = %bb.m
  %i.ay = trunc nuw i32 %i.ax to i1
  br i1 %i.ay, label %bb.q, label %bb.u

bb.p:                                             ; preds = %bb.m
  %.not70.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not70.i.i, label %bb.ab, label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !2462, !noalias !2463, !noundef !6 ; 2 uses
  %or.cond.i.i.i = icmp ult i8 %i.al, 24
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %or.cond1.i.i.i = icmp ult i8 %i.aq, 60
  br i1 %or.cond1.i.i.i, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %or.cond2.i.i.i = icmp ult i8 %i.av, 60
  br i1 %or.cond2.i.i.i, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %or.cond3.i.i.i = icmp ult i32 %i.ba, 1000000000
  br i1 %or.cond3.i.i.i, label %bb.y, label %bb.x

bb.u:                                             ; preds = %bb.o
  %or.cond.i74.i.i = icmp ult i8 %i.al, 24
  br i1 %or.cond.i74.i.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %or.cond1.i76.i.i = icmp ult i8 %i.aq, 60
  br i1 %or.cond1.i76.i.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %or.cond2.i77.i.i = icmp ult i8 %i.av, 60
  br i1 %or.cond2.i77.i.i, label %bb.aa, label %bb.z

bb.x:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.5115.0..sroa.5115.0..sroa.5115.2..sroa.055.0.copyload.i.i = phi i32 [ 3071, %bb.r ], [ 5375, %bb.s ], [ 1791, %bb.q ], [ 5631, %bb.t ]
  %i.bb = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.5115.0..sroa.5115.0..sroa.5115.2..sroa.055.0.copyload.i.i) #20, !noalias !2464
  br label %bb.ar

bb.y:                                             ; preds = %bb.t
  %.sroa.5115.i.sroa.5.6.insert.ext.i = zext nneg i8 %i.al to i64
  %.sroa.5115.i.sroa.5.7.insert.ext.i = zext nneg i8 %i.aq to i64
  %.sroa.5115.i.sroa.5.7.insert.shift.i = shl nuw nsw i64 %.sroa.5115.i.sroa.5.7.insert.ext.i, 8
  %.sroa.5115.i.sroa.5.7.insert.insert.i = or disjoint i64 %.sroa.5115.i.sroa.5.7.insert.shift.i, %.sroa.5115.i.sroa.5.6.insert.ext.i
  %.sroa.5115.i.sroa.5.8.insert.ext.i = zext nneg i8 %i.av to i64
  %.sroa.5115.i.sroa.5.8.insert.shift.i = shl nuw nsw i64 %.sroa.5115.i.sroa.5.8.insert.ext.i, 16
  %.sroa.5115.i.sroa.5.8.insert.insert.i = or disjoint i64 %.sroa.5115.i.sroa.5.7.insert.insert.i, %.sroa.5115.i.sroa.5.8.insert.shift.i
  br label %bb.be

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.5108.0..sroa.5108.0..sroa.5108.2..sroa.042.0.copyload.i.i = phi i32 [ 3071, %bb.v ], [ 1791, %bb.u ], [ 5375, %bb.w ]
  %i.bc = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.5108.0..sroa.5108.0..sroa.5108.2..sroa.042.0.copyload.i.i) #20, !noalias !2464
  br label %bb.ar

bb.aa:                                            ; preds = %bb.w
  %.sroa.5108.i.sroa.5.6.insert.ext.i = zext nneg i8 %i.al to i64
  %.sroa.5108.i.sroa.5.7.insert.ext.i = zext nneg i8 %i.aq to i64
  %.sroa.5108.i.sroa.5.7.insert.shift.i = shl nuw nsw i64 %.sroa.5108.i.sroa.5.7.insert.ext.i, 8
  %.sroa.5108.i.sroa.5.7.insert.insert.i = or disjoint i64 %.sroa.5108.i.sroa.5.7.insert.shift.i, %.sroa.5108.i.sroa.5.6.insert.ext.i
  %.sroa.5108.i.sroa.5.8.insert.ext.i = zext nneg i8 %i.av to i64
end_hunk_1
