Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.15?download=true
inline.NumInlined: 447
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsNtNtCsaL1QbXo9JQH_3std4path7PathBufEB4_:bb.a
  call void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB6_6result6ResultAhj14_NtNtNtB6_2io5error5ErrorEEB20_IB1F_zB26_ENCINvXso_B1H_IB1F_INtBV_3VecB20_EB26_EINtNtNtB4_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0B33_ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @57, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #29
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noundef !14 ; 5 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit, !prof !12

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i
    i64 1, label %bb.h
  ], !prof !100

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !242
  store i8 3, ptr %i.a, align 8, !alias.scope !242
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #33
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.k, align 8
  %i.l = trunc nuw i64 %2 to i1
  br i1 %i.l, label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0CskuiImRAV2ip_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 14)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !range !99, !noundef !14
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.q, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.m, -1
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0CskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !245, !nonnull !14, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !245, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !245
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %bb.g unwind label %bb.f, !noalias !245

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #29
          to label %.body35.thread unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !range !96, !noalias !245, !noundef !14
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !245
  br label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !245, !nonnull !14, !noundef !14 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !245, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !245
  switch i64 %i.aa, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.y, align 1, !alias.scope !248, !noalias !251, !noundef !14 ; 2 uses
  switch i8 %i.ab, label %bb.k [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.i
  %.pr.i.i.i = load i8, ptr %i.y, align 1, !alias.scope !248, !noalias !251
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i.i.i, %bb.j
  %i.ac = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ab, %bb.j ]
  %cond.i.i.i = icmp eq i8 %i.ac, 43              ; 2 uses
  %i.ad = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.aa, %i.ad    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.ae = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ae, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i90, i64 1
  %i.ag = add nsw i64 %.sroa.15.1.i.i.i89, -1     ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.k, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i90 = phi ptr [ %i.af, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.k ] ; 2 uses
  %.sroa.15.1.i.i.i89 = phi i64 [ %i.ag, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.k ]
  %.sroa.042.0.i.i.i88 = phi i64 [ %i.am, %.preheader56.i.i.i ], [ 0, %bb.k ]
  %8 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i88, i64 10) ; 2 uses
  %9 = extractvalue { i64, i1 } %8, 1
  br i1 %9, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %.preheader56.i.i.i.preheader
  %10 = extractvalue { i64, i1 } %8, 0            ; 2 uses
  %i.ah = load i8, ptr %.sroa.0.1.i.i.i90, align 1, !alias.scope !248, !noalias !251, !noundef !14
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, 9
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = add i64 %10, %i.al                      ; 3 uses
  %i.an = icmp ult i64 %i.am, %10
  %or.cond.i.i = select i1 %i.ak, i1 true, i1 %i.an, !prof !253
  br i1 %or.cond.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !253

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.sroa.0.269.i.i.i = phi ptr [ %i.au, %bb.m ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.at, %bb.m ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.aw, %bb.m ], [ 0, %.preheader.i.i.i ]
  %i.ao = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !248, !noalias !251, !noundef !14
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 9
  br i1 %i.ar, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.as = mul i64 %.sroa.042.267.i.i.i, 10
  %i.at = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = add i64 %i.as, %i.av                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.l, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.m, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.j, %bb.j, %bb.i, %bb.h
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.h ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.j ], [ 2097152, %bb.i ], [ 2097152, %bb.j ], [ %i.aw, %bb.m ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.l ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.am, %.preheader56.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00CskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body35.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00CskuiImRAV2ip_9elfshaker.exit.i: ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc37 unwind label %bb.r

.noexc37:                                         ; preds = %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00CskuiImRAV2ip_9elfshaker.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.q:                                             ; preds = %.noexc37, %.noexc
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %.noexc37 ], [ 2097152, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ba = add i64 %.sroa.0.0.i, 1
  store atomic i64 %i.ba, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0CskuiImRAV2ip_9elfshaker.exit

.body35:                                          ; preds = %.thread, %bb.w, %bb.r
  %.sroa.016.0 = phi i8 [ %.sroa.016.2, %bb.w ], [ %.sroa.017.1, %bb.r ], [ %.sroa.016.2, %.thread ]
  %.sroa.017.0 = phi i8 [ %.sroa.017.2, %bb.w ], [ %.sroa.017.1, %bb.r ], [ %.sroa.017.2, %.thread ] ; 2 uses
  %.sroa.018.0 = phi i1 [ false, %bb.w ], [ %.sroa.018.1, %bb.r ], [ false, %.thread ] ; 2 uses
  %.pn27 = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.bc, %bb.r ], [ %.pn.pn, %.thread ] ; 2 uses
  %i.bb = trunc nuw i8 %.sroa.016.0 to i1
  br i1 %i.bb, label %.body35.thread, label %bb.bb

bb.r:                                             ; preds = %bb.aw, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00CskuiImRAV2ip_9elfshaker.exit.i, %bb.c, %bb.s, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0CskuiImRAV2ip_9elfshaker.exit
  %.sroa.017.1 = phi i8 [ 0, %bb.aw ], [ 1, %bb.s ], [ 1, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0CskuiImRAV2ip_9elfshaker.exit ], [ 1, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00CskuiImRAV2ip_9elfshaker.exit.i ], [ 1, %bb.c ] ; 2 uses
  %.sroa.018.1 = phi i1 [ false, %bb.aw ], [ false, %bb.s ], [ true, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0CskuiImRAV2ip_9elfshaker.exit ], [ true, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00CskuiImRAV2ip_9elfshaker.exit.i ], [ true, %bb.c ]
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body35

_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0CskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.q, %bb.d, %bb.a
  %.sroa.02.0 = phi i64 [ %3, %bb.a ], [ %.sroa.0.0.i, %bb.q ], [ %i.p, %bb.d ]
  %i.bd = invoke noundef i64 @_RNvMNtNtCsaL1QbXo9JQH_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.s unwind label %bb.r

bb.s:                                             ; preds = %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0CskuiImRAV2ip_9elfshaker.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.be = invoke noundef nonnull ptr @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  store ptr %i.be, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br i1 %4, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.y unwind label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.bf, align 8
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx20, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.y

.thread:                                          ; preds = %bb.ax, %.body29.thread, %bb.ac, %bb.ba, %bb.x
  %.sroa.016.2 = phi i8 [ 1, %bb.ba ], [ 0, %bb.ac ], [ 1, %bb.x ], [ 0, %.body29.thread ], [ 0, %bb.ax ] ; 2 uses
  %.sroa.017.2 = phi i8 [ 0, %bb.ba ], [ 0, %bb.ac ], [ 1, %bb.x ], [ 0, %.body29.thread ], [ 0, %bb.ax ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.ba ], [ %i.bq, %bb.ac ], [ %i.bj, %bb.x ], [ %eh.lpad-body3059, %.body29.thread ], [ %eh.lpad-body3059, %bb.ax ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.bg = load ptr, ptr %i.j, align 8, !alias.scope !266, !nonnull !14, !noundef !14
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !266
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.w, label %.body35

bb.w:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #34
          to label %.body35 unwind label %bb.az

bb.x:                                             ; preds = %bb.u
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.y:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %5, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !267
  %i.bm = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 57) 48, i64 noundef range(i64 4, 9) 8) #32, !noalias !267 ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.z, label %bb.ad, !prof !12

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #33
          to label %.noexc39 unwind label %bb.aa

.noexc39:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #29
          to label %bb.ba unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ac:                                            ; preds = %bb.au
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.bm, ptr %i.h, align 8
  %i.br = atomicrmw add ptr %i.bm, i64 1 monotonic, align 8
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %6, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %7, ptr %i.bu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.bm, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !noundef !14 ; 2 uses
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  invoke void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8 %i.by)
          to label %bb.ah unwind label %bb.ay

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread3new
declare noundef nonnull ptr @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread3new(i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15run_spawn_hooks(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef, ptr noalias noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef) unnamed_addr #19

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs5_CscCEFg35tJHG_9zstd_safeNtB6_4DCtx17decompress_streamShECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvCsfwHX9XeyMnn_4zstd14map_error_code(i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs0_CscCEFg35tJHG_9zstd_safeNtB6_4CCtx15compress_streamINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs0_CscCEFg35tJHG_9zstd_safeNtB6_4CCtx10end_streamINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNtB2O_5impls13StringVisitorECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(88)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNtB2n_5impls13StringVisitorECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 1114112) i32 @_RNvXs_Cs7s9T68JqHVf_3hexNtB4_15BytesToHexCharsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsz_NtCs3oUPovFnLWP_4core5arrayAhj20_NtNtB7_7default7Default7defaultCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11conversions8to_lower(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB2C_6marker4SendEL_EuEs_000uECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1O_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex18handle_to_checksum(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository17loose_object_path(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(20)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs9open_fileNtNtCsaL1QbXo9JQH_3std4path7PathBufEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read4read(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read13read_vectored(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read14read_to_string(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read10read_exactCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read14read_buf_exactCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCsaL1QbXo9JQH_3std2fsNtB6_11OpenOptions4openRNtNtB8_4path7PathBufECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXCs2R7sF1bDyVm_3fs2NtNtCsaL1QbXo9JQH_3std2fs4FileNtB2_7FileExt18try_lock_exclusive(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsfwHX9XeyMnn_4zstd(i8 noundef range(i8 0, 44), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCsaL1QbXo9JQH_3std2fsNtB6_11OpenOptions4openRNtNtB8_4path4PathECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsaL1QbXo9JQH_3std2fsNtB5_4File8metadata(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs14create_dir_allRNtNtB4_4path4PathECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #20

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6Thread4join(i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs8_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1x_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsu_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB19_4LeafE16push_with_handleB1u_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16), i32 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3C_11VacantEntrymB1E_E12insert_entry0EB1I_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i32 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1s_4sync3ArcINtB10_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB6_6thread11join_handle10JoinHandleuEEEEEENCNvMs9_B10_BX_3new0ECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1s_6result6ResultAhj14_NtNtNtB1s_2io5error5ErrorEEEENCNvMs9_B10_BX_3new0ECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1s_6result6ResultNtNtB6_4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNvMs9_B10_BX_3new0EB3j_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1s_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2X_5error5ErrorEEEENCNvMs9_B10_BX_3new0EB2Z_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1s_6result6ResultTyIB20_hEENtNtNtB1s_2io5error5ErrorEEEENCNvMs9_B10_BX_3new0ECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1s_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNvMs9_B10_BX_3new0EB30_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB6_6thread11join_handle10JoinHandleuEEENCNvMs9_B10_BX_3new0ECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtNtB6_11collections4hash3map7HashMapAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEENCNvMs9_B10_BX_3new0EB2M_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsS_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB1H_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB1H_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtCse7cAXHj51Pq_3log5LevelENCNvMsd_BQ_BN_3new0ECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #23

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaL1QbXo9JQH_3std2fs8metadataRNtNtB4_4path4PathECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsaL1QbXo9JQH_3std4path4PathNtB6_5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCs589ekhdG4cQ_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvNtNtNtCs589ekhdG4cQ_9getrandom8backends8use_file9util_libc14sys_fill_exactNCNvNtB6_27linux_android_with_fallback10fill_inner0ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef i32 @_RNvNtNtCs589ekhdG4cQ_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtCs9KyBnLVnQBL_9rand_core5impls15fill_via_chunksmECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3net7ip_addrNtB5_8Ipv4AddrNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtNtCs3oUPovFnLWP_4core3net7ip_addrNtB5_8Ipv6AddrNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_Cs96EQFXyf2I9_3urlNtB4_3Url8username(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_Cs96EQFXyf2I9_3urlNtB4_3Url8password(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_Cs96EQFXyf2I9_3urlNtB4_3Url4host(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_Cs96EQFXyf2I9_3urlNtB4_3Url4path(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_Cs96EQFXyf2I9_3urlNtB4_3Url5query(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_Cs96EQFXyf2I9_3urlNtB4_3Url8fragment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs3oUPovFnLWP_4core3stre9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String11try_reserve(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCsuo3vitg1o0_6chrono6offset3utcNtB5_3UtcNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs96EQFXyf2I9_3url4host4HostReENtB6_5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRReNtB6_5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRtNtB6_5Debug3fmtCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs3oUPovFnLWP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsk7dPvB7o3En_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef align 16 dereferenceable(48), i32 noundef, ptr noalias nofree noundef align 4 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsk7dPvB7o3En_11rand_chacha4guts11init_chacha(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 16 captures(address) dereferenceable(48), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding12ReseedingRngNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtCs9KyBnLVnQBL_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCs3oUPovFnLWP_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { cold }
attributes #30 = { noinline noreturn }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{!5, !7, !8, !10}
!5 = distinct !{!5, !6, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCsuo3vitg1o0_6chrono6offset3utc3UtcNtB5_12SpecToString14spec_to_stringCskuiImRAV2ip_9elfshaker: argument 0"}
!6 = distinct !{!6, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCsuo3vitg1o0_6chrono6offset3utc3UtcNtB5_12SpecToString14spec_to_stringCskuiImRAV2ip_9elfshaker"}
!7 = distinct !{!7, !6, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCsuo3vitg1o0_6chrono6offset3utc3UtcNtB5_12SpecToString14spec_to_stringCskuiImRAV2ip_9elfshaker: argument 1"}
!8 = distinct !{!8, !9, !"_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtNtNtCsuo3vitg1o0_6chrono6offset3utc3UtcNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker: argument 0"}
!9 = distinct !{!9, !"_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtNtNtCsuo3vitg1o0_6chrono6offset3utc3UtcNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker"}
!10 = distinct !{!10, !9, !"_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtNtNtCsuo3vitg1o0_6chrono6offset3utc3UtcNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker: argument 1"}
!11 = !{!5, !8}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{i8 0, i8 6}
!16 = !{!17, !19}
!17 = distinct !{!17, !18, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!18 = distinct !{!18, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!19 = distinct !{!19, !20, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!20 = distinct !{!20, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!21 = !{i8 0, i8 3}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!24 = distinct !{!24, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!25 = distinct !{!25, !26, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!26 = distinct !{!26, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!27 = !{!28, !30, !32}
!28 = distinct !{!28, !29, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!29 = distinct !{!29, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!30 = distinct !{!30, !31, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!31 = distinct !{!31, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!32 = distinct !{!32, !33, !"_RINvNtNtCsuo3vitg1o0_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker: argument 0"}
!33 = distinct !{!33, !"_RINvNtNtCsuo3vitg1o0_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker"}
!34 = !{!35, !37, !32}
!35 = distinct !{!35, !36, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!36 = distinct !{!36, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!37 = distinct !{!37, !38, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!38 = distinct !{!38, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!41 = distinct !{!41, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!42 = distinct !{!42, !43, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!43 = distinct !{!43, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!46 = distinct !{!46, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!47 = distinct !{!47, !48, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!48 = distinct !{!48, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!51 = distinct !{!51, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!52 = distinct !{!52, !53, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!53 = distinct !{!53, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!56 = distinct !{!56, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!57 = distinct !{!57, !58, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!58 = distinct !{!58, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!59 = !{!60, !62, !64}
!60 = distinct !{!60, !61, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!61 = distinct !{!61, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!62 = distinct !{!62, !63, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!63 = distinct !{!63, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!64 = distinct !{!64, !65, !"_RINvNtNtCsuo3vitg1o0_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker: argument 0"}
!65 = distinct !{!65, !"_RINvNtNtCsuo3vitg1o0_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker"}
!66 = !{!67, !69, !64}
!67 = distinct !{!67, !68, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!68 = distinct !{!68, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!69 = distinct !{!69, !70, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!70 = distinct !{!70, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!71 = !{!72, !74}
!72 = distinct !{!72, !73, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!73 = distinct !{!73, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!74 = distinct !{!74, !75, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!75 = distinct !{!75, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!76 = !{!77, !79, !81}
!77 = distinct !{!77, !78, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!78 = distinct !{!78, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!79 = distinct !{!79, !80, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!80 = distinct !{!80, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!81 = distinct !{!81, !82, !"_RINvNtNtCsuo3vitg1o0_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker: argument 0"}
!82 = distinct !{!82, !"_RINvNtNtCsuo3vitg1o0_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker"}
!83 = !{!84, !86, !81}
!84 = distinct !{!84, !85, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!85 = distinct !{!85, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!86 = distinct !{!86, !87, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!87 = distinct !{!87, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!90 = distinct !{!90, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!91 = distinct !{!91, !92, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char: argument 0"}
!92 = distinct !{!92, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskuiImRAV2ip_9elfshaker: argument 0"}
!95 = distinct !{!95, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskuiImRAV2ip_9elfshaker"}
!96 = !{i64 0, i64 2}
!97 = !{i64 0, i64 -9223372036854775808}
!98 = !{i64 1, i64 536870913}
!99 = !{i64 -1, i64 -9223372036854775808}
!100 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskuiImRAV2ip_9elfshaker: argument 0"}
!103 = distinct !{!103, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskuiImRAV2ip_9elfshaker"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECskuiImRAV2ip_9elfshaker: argument 0"}
!106 = distinct !{!106, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECskuiImRAV2ip_9elfshaker"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_RNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_6PacketuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker: argument 0"}
!109 = distinct !{!109, !"_RNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_6PacketuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker"}
!110 = !{!108, !105}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB1h_6PacketuENtNtNtB9_3ops4drop4Drop4drop0EINtNtB2e_8function6FnOnceuE9call_onceCskuiImRAV2ip_9elfshaker: argument 0"}
!113 = distinct !{!113, !"_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB1h_6PacketuENtNtNtB9_3ops4drop4Drop4drop0EINtNtB2e_8function6FnOnceuE9call_onceCskuiImRAV2ip_9elfshaker"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_RNvYNCNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtBa_6PacketuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0INtNtB16_8function6FnOnceuE9call_onceCskuiImRAV2ip_9elfshaker: argument 0"}
!116 = distinct !{!116, !"_RNvYNCNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtBa_6PacketuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0INtNtB16_8function6FnOnceuE9call_onceCskuiImRAV2ip_9elfshaker"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskuiImRAV2ip_9elfshaker: argument 0"}
!119 = distinct !{!119, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskuiImRAV2ip_9elfshaker"}
!120 = !{!118, !115, !112, !108, !105}
!121 = !{!115, !112, !108, !105}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskuiImRAV2ip_9elfshaker: argument 0"}
!124 = distinct !{!124, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskuiImRAV2ip_9elfshaker"}
!125 = !{!123, !105}
!126 = !{!127, !129, !123, !105}
!127 = distinct !{!127, !128, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker: argument 0"}
!128 = distinct !{!128, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker"}
!129 = distinct !{!129, !130, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEECskuiImRAV2ip_9elfshaker: argument 0"}
!130 = distinct !{!130, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEECskuiImRAV2ip_9elfshaker"}
!131 = !{!132, !134, !136, !105}
!132 = distinct !{!132, !133, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker: argument 0"}
!133 = distinct !{!133, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker"}
!134 = distinct !{!134, !135, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEECskuiImRAV2ip_9elfshaker: argument 0"}
!135 = distinct !{!135, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEECskuiImRAV2ip_9elfshaker"}
!136 = distinct !{!136, !137, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskuiImRAV2ip_9elfshaker: argument 0"}
!137 = distinct !{!137, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskuiImRAV2ip_9elfshaker"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECskuiImRAV2ip_9elfshaker: argument 0"}
!140 = distinct !{!140, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECskuiImRAV2ip_9elfshaker"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskuiImRAV2ip_9elfshaker: argument 0"}
!143 = distinct !{!143, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskuiImRAV2ip_9elfshaker"}
!144 = !{!142, !139, !105}
!145 = !{!142, !139}
!146 = !{!147, !149, !151}
!147 = distinct !{!147, !148, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfwHX9XeyMnn_4zstd6stream3raw14MaybeOwnedCCtxECskuiImRAV2ip_9elfshaker: argument 0"}
!148 = distinct !{!148, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfwHX9XeyMnn_4zstd6stream3raw14MaybeOwnedCCtxECskuiImRAV2ip_9elfshaker"}
!149 = distinct !{!149, !150, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfwHX9XeyMnn_4zstd6stream3raw7EncoderECskuiImRAV2ip_9elfshaker: argument 0"}
!150 = distinct !{!150, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsfwHX9XeyMnn_4zstd6stream3raw7EncoderECskuiImRAV2ip_9elfshaker"}
!151 = distinct !{!151, !152, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsfwHX9XeyMnn_4zstd6stream3zio6writer6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtBI_3raw7EncoderEECskuiImRAV2ip_9elfshaker: argument 0"}
!152 = distinct !{!152, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsfwHX9XeyMnn_4zstd6stream3zio6writer6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtBI_3raw7EncoderEECskuiImRAV2ip_9elfshaker"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskuiImRAV2ip_9elfshaker: argument 0"}
!155 = distinct !{!155, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskuiImRAV2ip_9elfshaker"}
!156 = !{i64 8}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskuiImRAV2ip_9elfshaker: argument 0"}
!159 = distinct !{!159, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskuiImRAV2ip_9elfshaker"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker: argument 0"}
!162 = distinct !{!162, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker"}
!163 = !{!161, !158}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskuiImRAV2ip_9elfshaker: argument 0"}
!166 = distinct !{!166, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskuiImRAV2ip_9elfshaker"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker: argument 0"}
!169 = distinct !{!169, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker"}
!170 = !{!168, !165}
!171 = !{i32 0, i32 -1}
!172 = !{i8 0, i8 7}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskuiImRAV2ip_9elfshaker: argument 0"}
!175 = distinct !{!175, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECskuiImRAV2ip_9elfshaker"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker: argument 0"}
!178 = distinct !{!178, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskuiImRAV2ip_9elfshaker"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskuiImRAV2ip_9elfshaker: argument 0"}
!181 = distinct !{!181, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskuiImRAV2ip_9elfshaker"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskuiImRAV2ip_9elfshaker: argument 0"}
!184 = distinct !{!184, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskuiImRAV2ip_9elfshaker"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker: argument 0"}
!187 = distinct !{!187, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker"}
!188 = !{!186, !183, !180, !177}
end_hunk_1
