Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.10?download=true
inline.NumInlined: 163
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14ParsedTimeZone14into_time_zone:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.q, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.p, %bb.g ], [ %i.p, %bb.f ], [ %i.as, %bb.q ], [ %i.as, %bb.p ], [ %i.as, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i: ; preds = %bb.d
  %i.u = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.m, ptr noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit: ; preds = %bb.c, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i
  %.sroa.06.0.i = phi i64 [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i ], [ 0, %bb.c ]
  %.sroa.3.0.i = phi ptr [ %i.u, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i ], [ %i.m, %bb.c ]
  %i.v = insertvalue { i64, ptr } poison, i64 %.sroa.06.0.i, 0
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.w, align 4 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload, 2
  br i1 %.not.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %i.x = sext i8 %.sroa.11.0.copyload to i32
  %i.y = mul nsw i32 %i.x, 3600
  %i.z = trunc nuw i8 %.sroa.6.0.copyload to i1
  %i.aa = sext i8 %.sroa.7.0.copyload to i32
  %i.ab = mul nsw i32 %i.aa, 60
  %i.ac = select i1 %i.z, i32 %i.ab, i32 0
  %i.ad = trunc nuw i8 %.sroa.8.0.copyload to i1
  %i.ae = sext i8 %.sroa.9.0.copyload to i32
  %i.af = select i1 %i.ad, i32 %i.ae, i32 0
  %i.ag = trunc nuw i32 %.sroa.0.0.copyload to i1
  %i.ah = icmp sgt i32 %.sroa.5.0.copyload, 499999999
  %or.cond.i.i = select i1 %i.ag, i1 %i.ah, i1 false
  %i.ai = zext i1 %or.cond.i.i to i32
  %.sroa.0.0.i.i = add nsw i32 %i.af, %i.y
  %.sroa.0.1.i.i = add nsw i32 %.sroa.0.0.i.i, %i.ac
  %.sroa.0.2.i.i = add nsw i32 %.sroa.0.1.i.i, %i.ai
  %i.aj = sext i8 %.sroa.10.0.copyload to i32
  %i.ak = mul nsw i32 %.sroa.0.2.i.i, %i.aj
  %.fr = freeze i32 %i.ak                         ; 3 uses
  %i.al = add nsw i32 %.fr, 93599
  %or.cond.i.i.i = icmp ult i32 %i.al, 187199
  br i1 %or.cond.i.i.i, label %bb.v, label %bb.k, !prof !146

bb.k:                                             ; preds = %bb.j
  %i.am = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5119) #19, !noalias !294 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !303
  store ptr %i.am, ptr %i.b, align 8, !noalias !303
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !304
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #19, !noalias !303
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !303
  %i.aq = call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 18, i8 undef) #19, !noalias !303 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !313
  store ptr %i.aq, ptr %i.a, align 8, !noalias !313
  %i.ar = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 28)
          to label %bb.u unwind label %bb.o, !noalias !313

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.at = icmp eq ptr %i.aq, null
  br i1 %i.at, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !317
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #19
          to label %common.resume unwind label %bb.r, !noalias !313

bb.r:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !313
  unreachable

bb.s:                                             ; preds = %bb.a
  %i.ax = tail call noundef ptr @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone13from_posix_tz(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0)
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.v, %bb.u, %bb.s, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit
  %.pn = phi { i64, ptr } [ %i.v, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit ], [ { i64 1, ptr poison }, %bb.u ], [ { i64 0, ptr poison }, %bb.s ], [ { i64 0, ptr poison }, %bb.v ], [ { i64 0, ptr poison }, %.thread ]
  %.sroa.3.0.i.pn = phi ptr [ %.sroa.3.0.i, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit ], [ %i.ay, %bb.u ], [ %i.ax, %bb.s ], [ %i.bd, %bb.v ], [ inttoptr (i64 1 to ptr), %.thread ]
  %.merged = insertvalue { i64, ptr } %.pn, ptr %.sroa.3.0.i.pn, 1
  ret { i64, ptr } %.merged

bb.u:                                             ; preds = %bb.n
  %i.ay = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aq, ptr noundef %i.ar), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !313
  br label %bb.t

bb.v:                                             ; preds = %bb.j
  %i.az = icmp eq i32 %.fr, 0
  %i.ba = shl nsw i32 %.fr, 4
  %i.bb = or disjoint i32 %i.ba, 3
  %i.bc = sext i32 %i.bb to i64
  %i.bd = inttoptr i64 %i.bc to ptr
  br i1 %i.az, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.i, %bb.v
  br label %bb.t
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_signed_year(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i8 noundef range(i8 -1, 2) %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = icmp samesign ult i64 %3, 6
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.d = add nsw i64 %3, -6
  %i.e = load i8, ptr %2, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.f = add i8 %i.e, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.f, 10
  br i1 %or.cond.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.i.ptr.1 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %.sroa.0.0.i.ptr.1, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %or.cond.i.1 = icmp ult i8 %i.h, 10
  br i1 %or.cond.i.1, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.i.ptr.2 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i8, ptr %.sroa.0.0.i.ptr.2, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.j = add i8 %i.i, -48                         ; 2 uses
  %or.cond.i.2 = icmp ult i8 %i.j, 10
  br i1 %or.cond.i.2, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.i.ptr.3 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.k = load i8, ptr %.sroa.0.0.i.ptr.3, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.l = add i8 %i.k, -48                         ; 2 uses
  %or.cond.i.3 = icmp ult i8 %i.l, 10
  br i1 %or.cond.i.3, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.i.ptr.4 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i8, ptr %.sroa.0.0.i.ptr.4, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %or.cond.i.4 = icmp ult i8 %i.n, 10
  br i1 %or.cond.i.4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i.ptr.5 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.o = load i8, ptr %.sroa.0.0.i.ptr.5, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.p = add i8 %i.o, -48                         ; 2 uses
  %or.cond.i.5 = icmp ult i8 %i.p, 10
  br i1 %or.cond.i.5, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit, label %bb.h

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit:  ; preds = %bb.g
  %narrow = mul nuw nsw i8 %i.f, 10
  %narrow68 = add nuw i8 %narrow, %i.h
  %i.q = zext i8 %narrow68 to i64
  %i.r = mul nuw nsw i64 %i.q, 10
  %i.s = zext nneg i8 %i.j to i64
  %i.t = add nuw nsw i64 %i.r, %i.s
  %i.u = mul nuw nsw i64 %i.t, 10
  %i.v = zext nneg i8 %i.l to i64
  %i.w = add nuw nsw i64 %i.u, %i.v
  %i.x = mul nuw nsw i64 %i.w, 10
  %i.y = zext nneg i8 %i.n to i64
  %i.z = add nuw nsw i64 %i.x, %i.y
  %5 = mul nuw nsw i64 %i.z, 10
  %6 = zext nneg i8 %i.p to i64
  %i.aa = add nuw nsw i64 %5, %6                  ; 2 uses
  %i.ab = icmp samesign ugt i64 %i.aa, 9999
  br i1 %i.ab, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.lcssa = phi i8 [ %i.e, %bb.b ], [ %i.k, %bb.e ], [ %i.i, %bb.d ], [ %i.g, %bb.c ], [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.ac = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa) #19, !noalias !333
  br label %bb.m

bb.i:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit
  %i.ad = tail call noundef i8 @_RNvXs1y_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #19, !noalias !333
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = or disjoint i32 %i.af, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

bb.j:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit
  %i.ah = trunc nuw nsw i64 %i.aa to i32
  %i.ai = shl nuw nsw i32 %i.ah, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit: ; preds = %bb.i, %bb.j
  %.sroa.3.0.insert.insert.i = phi i32 [ %i.ai, %bb.j ], [ %i.ag, %bb.i ] ; 3 uses
  %i.aj = trunc i32 %.sroa.3.0.insert.insert.i to i1
  br i1 %i.aj, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  %i.ak = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.4.0.extract.trunc.i), !noalias !333
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.al = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 14) #19
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.m:                                             ; preds = %bb.k, %bb.h
  %.sroa.5.0.ph = phi ptr [ %i.ak, %bb.k ], [ %i.ac, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.5.0.ph, ptr %i.a, align 8
  %i.an = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 52)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultsNtB8_5ErrorEINtB8_12ErrorContextsB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = icmp eq ptr %.sroa.5.0.ph, null
  br i1 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = atomicrmw sub ptr %.sroa.5.0.ph, i64 1 release, align 8, !noalias !334
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #19
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  resume { ptr, i32 } %i.ao

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultsNtB8_5ErrorEINtB8_12ErrorContextsB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit: ; preds = %bb.m
  %i.at = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.5.0.ph, ptr noundef %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.r:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  %.sroa.58.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i, 16 ; 2 uses
  %i.av = icmp eq i32 %.sroa.58.0.extract.shift.i, 0
  %i.aw = icmp eq i8 %4, -1
  %or.cond = and i1 %i.aw, %i.av
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.58.0.extract.trunc.i = trunc nuw nsw i32 %.sroa.58.0.extract.shift.i to i16
  %i.ax = sext i8 %4 to i16
  %i.ay = mul nsw i16 %.sroa.58.0.extract.trunc.i, %i.ax
  store ptr %i.c, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.ay, ptr %.sroa.519.0..sroa_idx, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.az = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 39) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.ba, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultsNtB8_5ErrorEINtB8_12ErrorContextsB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit, %bb.t, %bb.s, %bb.l
  ret void
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser10parse_sign(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %lhsc.i = load i8, ptr %1, align 1, !alias.scope !343, !noalias !346
  switch i8 %lhsc.i, label %.thread [
    i8 43, label %bb.c
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = add nsw i64 %2, -1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.sink10 = phi i8 [ -1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  %.sink9 = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.c ], [ %1, %bb.b ], [ %1, %bb.a ]
  %.sink = phi i64 [ %i.e, %bb.d ], [ %i.a, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink10, ptr %i.c, align 8
  store ptr %.sink9, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.d, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = add nsw i64 %2, -1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsJ_NtCsa9sSWSfjDbm_4jiff9timestampNtB5_14TimestampRound5round(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !348, !noundef !11
  %i.f = load i64, ptr %1, align 8, !noundef !11
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment13for_timestamp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, i8 noundef %i.e, i64 noundef %i.f)
  %i.g = load i32, ptr %i.b, align 8, !range !349, !noundef !11
  %i.h = trunc nuw i32 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  br label %_RNvMNtCsa9sSWSfjDbm_4jiff9timestampNtB2_9Timestamp3new.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !348, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.m, ptr %i.c, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %i.o, ptr %i.p, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.r = load i8, ptr %i.q, align 1, !range !350, !noundef !11
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, i8 noundef %i.r, i64 noundef %2, i32 noundef %3)
  %i.s = load i64, ptr %i.a, align 8, !range !99, !noundef !11
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.u, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  br label %_RNvMNtCsa9sSWSfjDbm_4jiff9timestampNtB2_9Timestamp3new.exit

bb.e:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.u, align 8, !noundef !11 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i32, ptr %i.y, align 8, !noundef !11 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.aa = add i64 %i.x, 377705023201
  %or.cond.i.i = icmp ult i64 %i.aa, 631107230402
  br i1 %or.cond.i.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ab = add i32 %i.z, 999999999
  %or.cond1.i.i = icmp ult i32 %i.ab, 1999999999
  br i1 %or.cond1.i.i, label %bb.g, label %bb.k
end_hunk_0
begin_hunk_1_@_RNvNtNtCsa9sSWSfjDbm_4jiff4util4utf86decode:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr %.sroa.04.0, align 1, !noalias !354, !noundef !11 ; 5 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %bb.h, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit12.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit12.i: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 1
  %i.p = and i8 %i.m, 31
  %i.q = zext nneg i8 %i.p to i32                 ; 3 uses
  %i.r = icmp samesign ne i64 %.sroa.3.0, 1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = load i8, ptr %i.o, align 1, !noalias !354, !noundef !11
  %i.t = shl nuw nsw i32 %i.q, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32                 ; 2 uses
  %i.w = or disjoint i32 %i.t, %i.v
  %i.x = icmp samesign ugt i8 %i.m, -33
  br i1 %i.x, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit14.i, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i8 %i.m to i32
  br label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit14.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit12.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 2
  %i.aa = icmp samesign ne i64 %.sroa.3.0, 2
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.z, align 1, !noalias !354, !noundef !11
  %i.ac = shl nuw nsw i32 %i.v, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae            ; 2 uses
  %i.ag = shl nuw nsw i32 %i.q, 12
  %i.ah = or disjoint i32 %i.af, %i.ag
  %i.ai = icmp samesign ugt i8 %i.m, -17
  br i1 %i.ai, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit16.i, label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit16.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit14.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 3
  %i.ak = icmp samesign ne i64 %.sroa.3.0, 3
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.aj, align 1, !noalias !354, !noundef !11
  %i.am = shl nuw nsw i32 %i.q, 18
  %i.an = and i32 %i.am, 1835008
  %i.ao = shl nuw nsw i32 %i.af, 6
  %i.ap = and i8 %i.al, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = or disjoint i32 %i.ar, %i.an
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.at = tail call fastcc noundef i32 @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util4utf8NtB2_9Utf8Error3new(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 %.sroa.3.0.copyload, i8 %.sroa.4.0.copyload) #19
  %.sroa.4.1.insert.ext = zext nneg i32 %i.at to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not16 = icmp ugt i64 %i.h, %1
  br i1 %.not16, label %bb.k, label %bb.l, !prof !18

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.h, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #20
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.au = load i64, ptr %i.b, align 8, !range !99, !alias.scope !357, !noalias !360, !noundef !11
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.m, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit, !prof !18

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !362
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !noalias !360
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #20, !noalias !357
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !357, !noalias !360, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !357, !noalias !360, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.n:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit12.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit16.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.ah, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit14.i ], [ %i.as, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit16.i ], [ %i.w, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa9sSWSfjDbm_4jiff.exit12.i ], [ %i.y, %bb.h ] ; 2 uses
  %i.bb = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bb)
  %.sroa.48.4.insert.ext = zext nneg i32 %.sroa.4.0.i.ph to i64
  %.sroa.48.4.insert.shift = shl nuw nsw i64 %.sroa.48.4.insert.ext, 24
  br label %bb.b

bb.o:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #20
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB7_10SpanParser10parse_span3imp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 20 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 6 uses
  %i.f = alloca [96 x i8], align 8                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  call void @_RNvXsV_NtCs3oUPovFnLWP_4core5arrayAyja_NtNtB7_7default7Default7defaultCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g)
  store i32 0, ptr %i.f, align 8, !alias.scope !363
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 89 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 90 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 91 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 -1, i8 -1>, ptr %i.k, align 8, !alias.scope !363
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser23parse_calendar_and_time0EB17_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser23parse_calendar_and_time0EB17_.exit: ; preds = %bb.a
  %.val.i = load i8, ptr %2, align 1, !alias.scope !369, !noalias !372, !noundef !11 ; 2 uses
  %i.l = add i8 %.val.i, -43
  %switch.and.i.i = and i8 %i.l, -3
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %bb.b, label %.thread77, !prof !375

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser23parse_calendar_and_time0EB17_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !376
  call fastcc void @_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser10parse_sign(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) #19
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !145, !noalias !376, !noundef !11
  %i.o = load ptr, ptr %i.d, align 8, !noalias !376, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !376, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !376
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %.not.i10 = icmp eq i64 %i.q, 0
  br i1 %.not.i10, label %.thread, label %..thread77_crit_edge

..thread77_crit_edge:                             ; preds = %bb.b
  %.pre = load i8, ptr %i.o, align 1, !alias.scope !378, !noalias !381
  br label %.thread77

.thread:                                          ; preds = %bb.a, %bb.b
  %i.r = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 8) #19, !noalias !383
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

.thread77:                                        ; preds = %..thread77_crit_edge, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser23parse_calendar_and_time0EB17_.exit
  %i.s = phi i8 [ %.pre, %..thread77_crit_edge ], [ %.val.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser23parse_calendar_and_time0EB17_.exit ] ; 2 uses
  %.sroa.0.0.i84 = phi ptr [ %i.o, %..thread77_crit_edge ], [ %2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser23parse_calendar_and_time0EB17_.exit ]
  %.sroa.6.0.i83 = phi i64 [ %i.q, %..thread77_crit_edge ], [ %3, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser23parse_calendar_and_time0EB17_.exit ]
  %i.t = phi i8 [ %i.n, %..thread77_crit_edge ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser23parse_calendar_and_time0EB17_.exit ] ; 3 uses
  switch i8 %i.s, label %bb.c [
    i8 80, label %bb.d
    i8 112, label %bb.d
  ]

bb.c:                                             ; preds = %.thread77
  %.sroa.431.0.insert.ext.i = zext i8 %i.s to i64
  %.sroa.431.0.insert.shift.i = shl nuw nsw i64 %.sroa.431.0.insert.ext.i, 8
  %.sroa.030.0.insert.insert.i = or disjoint i64 %.sroa.431.0.insert.shift.i, 7
  %i.u = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %.sroa.030.0.insert.insert.i) #19, !noalias !383
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

bb.d:                                             ; preds = %.thread77, %.thread77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  br label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14set_unit_value.exit.i.i, %bb.d
  %i.v = phi i8 [ 0, %bb.d ], [ %.sroa.02.0.i.i.i, %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14set_unit_value.exit.i.i ]
  %.sroa.6.0.i.i.in = phi i64 [ %.sroa.6.0.i83, %bb.d ], [ %i.ag, %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14set_unit_value.exit.i.i ] ; 2 uses
  %.sroa.0.0.i84.pn = phi ptr [ %.sroa.0.0.i84, %bb.d ], [ %i.ai, %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14set_unit_value.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i84.pn, i64 1 ; 4 uses
  %.sroa.6.0.i.i = add i64 %.sroa.6.0.i.i.in, -1  ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i, i64 21) ; 3 uses
  %exitcond.not449 = icmp eq i64 %.sroa.6.0.i.i, 0
  br i1 %exitcond.not449, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.j
  %i.w = add nuw nsw i64 %.sroa.0.0.i22451, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %invariant.umin
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %.lr.ph, %bb.e
  %.sroa.019.0.i21.lcssa = phi i64 [ 0, %bb.e ], [ %i.ad, %bb.f ], [ %.sroa.019.0.i21450, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i22.lcssa = phi i64 [ %invariant.umin, %bb.e ], [ %invariant.umin, %bb.f ], [ %.sroa.0.0.i22451, %.lr.ph ] ; 5 uses
  %i.x = icmp eq i64 %.sroa.0.0.i22.lcssa, 0
  br i1 %i.x, label %bb.s, label %bb.h

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.0.0.i22451 = phi i64 [ %i.w, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.sroa.019.0.i21450 = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.sroa.0.0.i22451
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !387, !noalias !390, !noundef !11
  %i.aa = add i8 %i.z, -48                        ; 2 uses
  %or.cond.i29 = icmp ult i8 %i.aa, 10
  br i1 %or.cond.i29, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.019.0.i21450, i64 10) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %bb.k, label %bb.j, !prof !18

bb.h:                                             ; preds = %._crit_edge
  %i.ab = icmp samesign ugt i64 %.sroa.0.0.i22.lcssa, %.sroa.6.0.i.i
  br i1 %i.ab, label %bb.i, label %bb.l, !prof !18

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i22.lcssa, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #20, !noalias !395
  unreachable

bb.j:                                             ; preds = %bb.g
  %6 = extractvalue { i64, i1 } %4, 0             ; 2 uses
  %i.ac = zext nneg i8 %i.aa to i64
  %i.ad = add i64 %6, %i.ac                       ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %6
  br i1 %i.ae, label %bb.k, label %bb.f, !prof !18

bb.k:                                             ; preds = %bb.g, %bb.j
  %i.af = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 2, i8 0) #19, !noalias !396
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

bb.l:                                             ; preds = %bb.h
  %i.ag = sub nuw i64 %.sroa.6.0.i.i, %.sroa.0.0.i22.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %.not.i11 = icmp eq i64 %i.ag, 0
  br i1 %.not.i11, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 6) #19, !noalias !400
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.sroa.0.0.i22.lcssa ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !397, !noalias !402, !noundef !11 ; 2 uses
  %switch.tableidx = add i8 %i.aj, -68            ; 3 uses
  %i.ak = icmp ult i8 %switch.tableidx, 54
  br i1 %i.ak, label %switch.hole_check, label %bb.o

bb.o:                                             ; preds = %switch.hole_check, %bb.n
  %.sroa.436.0.insert.ext.i = zext i8 %i.aj to i64
  %.sroa.436.0.insert.shift.i = shl nuw nsw i64 %.sroa.436.0.insert.ext.i, 8
  %.sroa.035.0.insert.insert.i = or disjoint i64 %.sroa.436.0.insert.shift.i, 5
  %i.al = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %.sroa.035.0.insert.insert.i) #19, !noalias !400
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

switch.hole_check:                                ; preds = %bb.n
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 11261202389271041, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.o

switch.lookup:                                    ; preds = %switch.hole_check
  %i.am = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB7_10SpanParser10parse_span3imp, i64 %i.am
  %switch.load = load i8, ptr %switch.gep, align 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.an = load i8, ptr %i.i, align 2, !range !406, !alias.scope !407, !noalias !408, !noundef !11 ; 2 uses
  %.not6.i.i.i = icmp ugt i8 %i.an, %switch.load
  br i1 %.not6.i.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %switch.lookup
  store i8 %switch.load, ptr %i.i, align 2, !alias.scope !407, !noalias !408
  %i.ao = load i8, ptr %i.j, align 1, !range !406, !alias.scope !407, !noalias !408, !noundef !11
  %.not7.i.i.i = icmp eq i8 %i.ao, -1
  br i1 %.not7.i.i.i, label %bb.q, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14set_unit_value.exit.i.i

bb.q:                                             ; preds = %bb.p
  store i8 %switch.load, ptr %i.j, align 1, !alias.scope !407, !noalias !408
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14set_unit_value.exit.i.i

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14set_unit_value.exit.i.i: ; preds = %bb.p, %bb.q
  %i.ap = zext nneg i8 %switch.load to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ap
  store i64 %.sroa.019.0.i21.lcssa, ptr %i.aq, align 8, !alias.scope !407, !noalias !408
  %i.ar = load i8, ptr %i.k, align 8, !range !144, !alias.scope !407, !noalias !408, !noundef !11
  %i.as = icmp ne i64 %.sroa.019.0.i21.lcssa, 0
  %i.at = zext i1 %i.as to i8
  %.sroa.02.0.i.i.i = or i8 %i.ar, %i.at          ; 2 uses
  store i8 %.sroa.02.0.i.i.i, ptr %i.k, align 8, !alias.scope !407, !noalias !408
  br label %bb.e

bb.r:                                             ; preds = %switch.lookup
  %.sroa.44.0.insert.ext.i.i.i = zext nneg i8 %i.an to i16
  %.sroa.44.0.insert.shift.i.i.i = shl nuw nsw i16 %.sroa.44.0.insert.ext.i.i.i, 8
  %.sroa.03.0.insert.ext.i.i.i = zext nneg i8 %switch.load to i16
  %.sroa.03.0.insert.insert.i.i.i = or disjoint i16 %.sroa.44.0.insert.shift.i.i.i, %.sroa.03.0.insert.ext.i.i.i
  %i.au = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 %.sroa.03.0.insert.insert.i.i.i) #19, !noalias !411
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

bb.s:                                             ; preds = %._crit_edge
  %.not28.i = icmp eq i64 %.sroa.6.0.i.i, 0
  br i1 %.not28.i, label %.thread301, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = load i8, ptr %.sroa.0.0.i.i, align 1, !noalias !412, !noundef !11
  switch i8 %i.av, label %.thread301 [
    i8 84, label %bb.u
    i8 116, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.aw = add i64 %.sroa.6.0.i.i.in, -2
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i84.pn, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.al, %bb.u
  %i.ay = phi i8 [ %i.v, %bb.u ], [ %.sroa.02.0.i.i42.i, %bb.al ]
  %.sroa.8.0.i.i = phi i64 [ %i.aw, %bb.u ], [ %i.bu, %bb.al ]
  %.sroa.0.0.i29.i = phi ptr [ %i.ax, %bb.u ], [ %i.bt, %bb.al ] ; 3 uses
  %.sroa.8.0.i.i.fr = freeze i64 %.sroa.8.0.i.i   ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %invariant.umin222 = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0.i.i.fr, i64 21) ; 3 uses
  %exitcond288.not456 = icmp eq i64 %.sroa.8.0.i.i.fr, 0
  br i1 %exitcond288.not456, label %._crit_edge461, label %.lr.ph460

bb.w:                                             ; preds = %bb.aa
  %i.az = add nuw nsw i64 %.sroa.0.0.i19458, 1    ; 2 uses
  %exitcond288.not = icmp eq i64 %i.az, %invariant.umin222
  br i1 %exitcond288.not, label %._crit_edge461, label %.lr.ph460

._crit_edge461:                                   ; preds = %bb.w, %.lr.ph460, %bb.v
  %.sroa.019.0.i.lcssa = phi i64 [ 0, %bb.v ], [ %i.bg, %bb.w ], [ %.sroa.019.0.i457, %.lr.ph460 ] ; 2 uses
  %.sroa.0.0.i19.lcssa = phi i64 [ %invariant.umin222, %bb.v ], [ %invariant.umin222, %bb.w ], [ %.sroa.0.0.i19458, %.lr.ph460 ] ; 6 uses
  %i.ba = icmp eq i64 %.sroa.0.0.i19.lcssa, 0
  br i1 %i.ba, label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit.i, label %bb.y

.lr.ph460:                                        ; preds = %bb.v, %bb.w
  %.sroa.0.0.i19458 = phi i64 [ %i.az, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %.sroa.019.0.i457 = phi i64 [ %i.bg, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.i, i64 %.sroa.0.0.i19458
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !416, !noalias !419, !noundef !11
  %i.bd = add i8 %i.bc, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.bd, 10
  br i1 %or.cond.i, label %bb.x, label %._crit_edge461

bb.x:                                             ; preds = %.lr.ph460
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.019.0.i457, i64 10) ; 2 uses
  %8 = extractvalue { i64, i1 } %7, 1
  br i1 %8, label %bb.ab, label %bb.aa, !prof !18

bb.y:                                             ; preds = %._crit_edge461
  %i.be = icmp samesign ugt i64 %.sroa.0.0.i19.lcssa, %.sroa.8.0.i.i.fr
  br i1 %i.be, label %bb.z, label %bb.ac, !prof !18

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i19.lcssa, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.i.i.fr, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.i.i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #20, !noalias !424
  unreachable

bb.aa:                                            ; preds = %bb.x
  %9 = extractvalue { i64, i1 } %7, 0             ; 2 uses
  %i.bf = zext nneg i8 %i.bd to i64
  %i.bg = add i64 %9, %i.bf                       ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %9
  br i1 %i.bh, label %bb.ab, label %bb.w, !prof !18

bb.ab:                                            ; preds = %bb.x, %bb.aa
  %i.bi = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 2, i8 0) #19, !noalias !425
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

bb.ac:                                            ; preds = %bb.y
  %i.bj = sub nuw nsw i64 %.sroa.8.0.i.i.fr, %.sroa.0.0.i19.lcssa ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.i, i64 %.sroa.0.0.i19.lcssa ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !426
  %i.bl = icmp eq i64 %.sroa.8.0.i.i.fr, %.sroa.0.0.i19.lcssa
  br i1 %i.bl, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bm = load i8, ptr %i.bk, align 1, !alias.scope !429, !noalias !432, !noundef !11
  switch i8 %i.bm, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread [
    i8 46, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
    i8 44, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  ]

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit: ; preds = %bb.ad, %bb.ad
  %i.bn = add nsw i64 %i.bj, -1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  call void @_RNvNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction3imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bn) #19, !noalias !434
  %.pr = load i32, ptr %i.c, align 8, !noalias !426 ; 2 uses
  %i.bp = icmp eq i32 %.pr, 2
  %.sroa.532.0.copyload.i.i.pre = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !426 ; 2 uses
  br i1 %i.bp, label %bb.ae, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge: ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  %.sroa.633.0.copyload.i.i.pre = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !426
  %i.bq = trunc i32 %.pr to i1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread

bb.ae:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !426
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread: ; preds = %bb.ad, %bb.ac, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge
  %.sroa.633.0.copyload.i.i = phi i64 [ %.sroa.633.0.copyload.i.i.pre, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge ], [ %i.bj, %bb.ac ], [ %i.bj, %bb.ad ] ; 2 uses
  %.sroa.532.0.copyload.i.i = phi ptr [ %.sroa.532.0.copyload.i.i.pre, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge ], [ %i.bk, %bb.ac ], [ %i.bk, %bb.ad ] ; 2 uses
  %i.br = phi i1 [ %i.bq, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge ], [ false, %bb.ac ], [ false, %bb.ad ]
  %.sroa.431.0.copyload.i.i = load i32, ptr %.sroa.431.0..sroa_idx.i.i, align 4, !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %.not.i12 = icmp eq i64 %.sroa.633.0.copyload.i.i, 0
  br i1 %.not.i12, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread
  %i.bs = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 17) #19, !noalias !438
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

bb.ag:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.532.0.copyload.i.i, i64 1 ; 2 uses
  %i.bu = add nsw i64 %.sroa.633.0.copyload.i.i, -1 ; 2 uses
  %i.bv = load i8, ptr %.sroa.532.0.copyload.i.i, align 1, !alias.scope !435, !noalias !440, !noundef !11 ; 2 uses
  %switch.tableidx467 = add i8 %i.bv, -72         ; 3 uses
  %i.bw = icmp ult i8 %switch.tableidx467, 44
  br i1 %i.bw, label %switch.hole_check469, label %bb.ah

bb.ah:                                            ; preds = %switch.hole_check469, %bb.ag
  %.sroa.436.0.insert.ext.i16 = zext i8 %i.bv to i64
  %.sroa.436.0.insert.shift.i17 = shl nuw nsw i64 %.sroa.436.0.insert.ext.i16, 8
  %.sroa.035.0.insert.insert.i18 = or disjoint i64 %.sroa.436.0.insert.shift.i17, 16
  %i.bx = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %.sroa.035.0.insert.insert.i18) #19, !noalias !438
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

switch.hole_check469:                             ; preds = %bb.ag
  %switch.maskindex471 = zext nneg i8 %switch.tableidx467 to i64
  %switch.shifted472 = lshr i64 8937826945057, %switch.maskindex471
  %switch.lobit473 = trunc i64 %switch.shifted472 to i1
  br i1 %switch.lobit473, label %switch.lookup470, label %bb.ah

switch.lookup470:                                 ; preds = %switch.hole_check469
  %i.by = zext nneg i8 %switch.tableidx467 to i64
  %switch.gep474 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB7_10SpanParser23parse_unsigned_duration3imp, i64 %i.by
  %switch.load475 = load i8, ptr %switch.gep474, align 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.bz = load i8, ptr %i.i, align 2, !range !406, !alias.scope !444, !noalias !445, !noundef !11 ; 2 uses
  %.not6.i.i32.i = icmp ugt i8 %i.bz, %switch.load475
  br i1 %.not6.i.i32.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %switch.lookup470
  store i8 %switch.load475, ptr %i.i, align 2, !alias.scope !444, !noalias !445
  %i.ca = load i8, ptr %i.j, align 1, !range !406, !alias.scope !444, !noalias !445, !noundef !11
  %.not7.i.i41.i = icmp eq i8 %i.ca, -1
  br i1 %.not7.i.i41.i, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  store i8 %switch.load475, ptr %i.j, align 1, !alias.scope !444, !noalias !445
  br label %bb.al

bb.ak:                                            ; preds = %switch.lookup470
  %.sroa.44.0.insert.ext.i.i34.i = zext nneg i8 %i.bz to i16
  %.sroa.44.0.insert.shift.i.i35.i = shl nuw nsw i16 %.sroa.44.0.insert.ext.i.i34.i, 8
  %.sroa.03.0.insert.ext.i.i36.i = zext nneg i8 %switch.load475 to i16
  %.sroa.03.0.insert.insert.i.i37.i = or disjoint i16 %.sroa.44.0.insert.shift.i.i35.i, %.sroa.03.0.insert.ext.i.i36.i
  %i.cb = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 %.sroa.03.0.insert.insert.i.i37.i) #19, !noalias !446
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.cc = zext nneg i8 %switch.load475 to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cc
  store i64 %.sroa.019.0.i.lcssa, ptr %i.cd, align 8, !alias.scope !444, !noalias !445
  %i.ce = icmp ne i64 %.sroa.019.0.i.lcssa, 0
  %i.cf = zext i1 %i.ce to i8
  %.sroa.02.0.i.i42.i = or i8 %i.ay, %i.cf        ; 2 uses
  store i8 %.sroa.02.0.i.i42.i, ptr %i.k, align 8, !alias.scope !444, !noalias !445
  br i1 %i.br, label %bb.am, label %bb.v

bb.am:                                            ; preds = %bb.al
  %i.cg = call { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits12set_fraction(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i32 noundef %.sroa.431.0.copyload.i.i), !noalias !447 ; 2 uses
  %i.ch = extractvalue { i64, ptr } %i.cg, 0
  %i.ci = trunc nuw i64 %i.ch to i1
  br i1 %i.ci, label %bb.an, label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit.i

bb.an:                                            ; preds = %bb.am
  %i.cj = extractvalue { i64, ptr } %i.cg, 1
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit.i: ; preds = %._crit_edge461, %bb.am
  %.sroa.1043.0 = phi i64 [ %i.bu, %bb.am ], [ %.sroa.8.0.i.i.fr, %._crit_edge461 ] ; 2 uses
  %.sroa.042.0 = phi ptr [ %i.bt, %bb.am ], [ %.sroa.0.0.i29.i, %._crit_edge461 ] ; 2 uses
  %i.ck = load i8, ptr %i.i, align 2, !range !406, !alias.scope !366, !noalias !448, !noundef !11
  %spec.select.i = icmp ugt i8 %i.ck, 5
  br i1 %spec.select.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit.i
  %i.cl = call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 18) #19, !noalias !449
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit

_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit: ; preds = %bb.an, %bb.ak, %bb.ae, %bb.ab, %bb.ah, %bb.af, %bb.r, %bb.k, %bb.o, %bb.m, %bb.c, %.thread, %bb.ao
  %.sroa.9.0.ph.in = phi ptr [ %i.cl, %bb.ao ], [ %i.al, %bb.o ], [ %i.r, %.thread ], [ %i.u, %bb.c ], [ %i.au, %bb.r ], [ %i.af, %bb.k ], [ %i.ah, %bb.m ], [ %i.cj, %bb.an ], [ %i.cb, %bb.ak ], [ %i.bi, %bb.ab ], [ %.sroa.532.0.copyload.i.i.pre, %bb.ae ], [ %i.bs, %bb.af ], [ %i.bx, %bb.ah ]
  store ptr %.sroa.9.0.ph.in, ptr %0, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.cm, align 4
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_4span4SpanE9into_fullB6_.exit

.thread301:                                       ; preds = %bb.s, %bb.t
  store i8 %i.t, ptr %i.h, align 1, !alias.scope !366, !noalias !448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !450
  br label %bb.aq

bb.ap:                                            ; preds = %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit.i
  %.pre291 = load i32, ptr %i.f, align 8, !range !349, !alias.scope !455, !noalias !461
  %i.cn = icmp eq i32 %.pre291, 0
  store i8 %i.t, ptr %i.h, align 1, !alias.scope !366, !noalias !448
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !465
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  br i1 %i.cn, label %bb.aq, label %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i, !prof !470

bb.aq:                                            ; preds = %.thread301, %bb.ap
  %.sroa.8.0.i310 = phi i64 [ %.sroa.6.0.i.i, %.thread301 ], [ %.sroa.1043.0, %bb.ap ] ; 11 uses
  %.sroa.017.0.i307 = phi ptr [ %.sroa.0.0.i.i, %.thread301 ], [ %.sroa.042.0, %bb.ap ] ; 11 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !471, !noalias !472, !noundef !11 ; 3 uses
  %i.co = icmp ugt i64 %.val.i.i.i, 19998
  br i1 %i.co, label %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i.1.i.i = load i64, ptr %.ptr.1.i.i, align 8, !alias.scope !471, !noalias !472, !noundef !11 ; 3 uses
  %i.cp = icmp ugt i64 %.val.i.1.i.i, 19998
  br i1 %i.cp, label %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val.i.2.i.i = load i64, ptr %.ptr.2.i.i, align 8, !alias.scope !471, !noalias !472, !noundef !11 ; 3 uses
  %i.cq = icmp ugt i64 %.val.i.2.i.i, 19998
  br i1 %i.cq, label %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val.i.3.i.i = load i64, ptr %.ptr.3.i.i, align 8, !alias.scope !471, !noalias !472, !noundef !11 ; 3 uses
  %i.cr = icmp ugt i64 %.val.i.3.i.i, 19998
  br i1 %i.cr, label %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val.i.4.i.i = load i64, ptr %.ptr.4.i.i, align 8, !alias.scope !471, !noalias !472, !noundef !11 ; 4 uses
  %i.cs = icmp ugt i64 %.val.i.4.i.i, 19998
  br i1 %i.cs, label %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val.i.5.i.i = load i64, ptr %.ptr.5.i.i, align 8, !alias.scope !471, !noalias !472, !noundef !11 ; 3 uses
  %i.ct = icmp ugt i64 %.val.i.5.i.i, 19998
  br i1 %i.ct, label %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.val.i.6.i.i = load i64, ptr %.ptr.6.i.i, align 8, !alias.scope !471, !noalias !472, !noundef !11 ; 3 uses
  %i.cu = icmp ugt i64 %.val.i.6.i.i, 19998
  br i1 %i.cu, label %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
end_hunk_1
begin_hunk_2_@_RNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB7_10SpanParser10parse_span3imp:bb.a
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val.i.3.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !477, !noalias !478
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.val.i.2.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !alias.scope !477, !noalias !478
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val.i.1.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !alias.scope !477, !noalias !478
  %.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.val.i.i.i, ptr %.sroa.17.0..sroa_idx.i.i.i, align 8, !alias.scope !477, !noalias !478
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.da, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !alias.scope !477, !noalias !478
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.db, ptr %.sroa.25.0..sroa_idx.i.i.i, align 4, !alias.scope !477, !noalias !478
  %.sroa.29.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.dc, ptr %.sroa.29.0..sroa_idx.i.i.i, align 8, !alias.scope !477, !noalias !478
  %.sroa.33.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %i.dd, ptr %.sroa.33.0..sroa_idx.i.i.i, align 4, !alias.scope !477, !noalias !478
  %.sroa.37.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i16 %.sroa.021.0.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i.i, align 8, !alias.scope !477, !noalias !478
  %.sroa.60.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  store i16 %i.cz, ptr %.sroa.60.0..sroa_idx.i.i.i, align 2, !alias.scope !477, !noalias !478
  %i.dv = inttoptr i64 %.val.i.4.i.i to ptr
  br label %bb.bb

_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.sroa.8.0.i309 = phi i64 [ %.sroa.8.0.i310, %bb.az ], [ %.sroa.8.0.i310, %bb.ay ], [ %.sroa.8.0.i310, %bb.ax ], [ %.sroa.8.0.i310, %bb.aw ], [ %.sroa.8.0.i310, %bb.av ], [ %.sroa.8.0.i310, %bb.au ], [ %.sroa.8.0.i310, %bb.at ], [ %.sroa.8.0.i310, %bb.as ], [ %.sroa.8.0.i310, %bb.ar ], [ %.sroa.8.0.i310, %bb.aq ], [ %.sroa.1043.0, %bb.ap ]
  %.sroa.017.0.i306 = phi ptr [ %.sroa.017.0.i307, %bb.az ], [ %.sroa.017.0.i307, %bb.ay ], [ %.sroa.017.0.i307, %bb.ax ], [ %.sroa.017.0.i307, %bb.aw ], [ %.sroa.017.0.i307, %bb.av ], [ %.sroa.017.0.i307, %bb.au ], [ %.sroa.017.0.i307, %bb.at ], [ %.sroa.017.0.i307, %bb.as ], [ %.sroa.017.0.i307, %bb.ar ], [ %.sroa.017.0.i307, %bb.aq ], [ %.sroa.042.0, %bb.ap ]
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits15to_span_general(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.f) #19, !noalias !479
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !range !480, !noalias !465 ; 2 uses
  %i.dw = icmp eq i8 %.pre.i, -2
  %.sroa.09.0.copyload.i.pre = load ptr, ptr %i.b, align 8, !noalias !465 ; 2 uses
  br i1 %i.dw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !465
  store ptr %.sroa.09.0.copyload.i.pre, ptr %0, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.dx, align 4
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_4span4SpanE9into_fullB6_.exit

bb.bb:                                            ; preds = %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i, %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.thread.i
  %.sroa.8.0.i308 = phi i64 [ %.sroa.8.0.i310, %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.thread.i ], [ %.sroa.8.0.i309, %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i ] ; 3 uses
  %.sroa.017.0.i305 = phi ptr [ %.sroa.017.0.i307, %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.thread.i ], [ %.sroa.017.0.i306, %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i ] ; 2 uses
  %.sroa.09.0.copyload.i = phi ptr [ %i.dv, %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.thread.i ], [ %.sroa.09.0.copyload.i.pre, %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i ]
  %i.dy = phi i8 [ %.sroa.011.0.i.i.i, %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.thread.i ], [ %.pre.i, %_RNCNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB9_10SpanParser10parse_span3imp0Bf_.exit.i ]
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx3.sroa_idx, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.410.0..sroa_idx.i, i64 52, i1 false)
  %.sroa.6.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.b, i64 61
  %.sroa.8.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.e, i64 77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.0..sroa_idx7, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx12.i, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !465
  store ptr %.sroa.017.0.i305, ptr %i.e, align 8
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.8.0.i308, ptr %.sroa.7.0..sroa_idx3, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %.sroa.09.0.copyload.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx, align 8
  %.sroa.74.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i8 %i.dy, ptr %.sroa.74.0..sroa_idx5, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.dz = icmp eq i64 %.sroa.8.0.i308, 0
  br i1 %i.dz, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !486
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB2_5Error15into_full_error(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull readonly %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.017.0.i305, i64 noundef %.sroa.8.0.i308), !noalias !481
  %i.ea = call noundef ptr @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a) #19, !noalias !481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !486
  store ptr %i.ea, ptr %0, align 8, !alias.scope !481, !noalias !484
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.eb, align 4, !alias.scope !481, !noalias !484
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_4span4SpanE9into_fullB6_.exit

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx, i64 64, i1 false), !alias.scope !486
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_4span4SpanE9into_fullB6_.exit

_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_4span4SpanE9into_fullB6_.exit: ; preds = %bb.bd, %bb.bc, %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_date_designator.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB7_10SpanParser21parse_signed_duration3imp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.ptr100 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  call void @_RNvXsV_NtCs3oUPovFnLWP_4core5arrayAyja_NtNtB7_7default7Default7defaultCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %.ptr100)
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 90 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 91 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  store <4 x i8> <i8 0, i8 0, i8 -1, i8 -1>, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %.not.i22 = icmp eq i64 %3, 0
  br i1 %.not.i22, label %.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit: ; preds = %bb.a
  %.val.i = load i8, ptr %2, align 1, !alias.scope !490, !noalias !493, !noundef !11 ; 2 uses
  %i.k = add i8 %.val.i, -43
  %switch.and.i.i = and i8 %i.k, -3
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %bb.b, label %.thread55, !prof !375

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !496
  call fastcc void @_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser10parse_sign(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) #19
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !145, !noalias !496, !noundef !11
  %i.n = load ptr, ptr %i.c, align 8, !noalias !496, !nonnull !11, !noundef !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !496, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %.not.i25 = icmp eq i64 %i.p, 0
  br i1 %.not.i25, label %.thread, label %..thread55_crit_edge

..thread55_crit_edge:                             ; preds = %bb.b
  %.pre = load i8, ptr %i.n, align 1, !alias.scope !498, !noalias !501
  br label %.thread55

.thread:                                          ; preds = %bb.a, %bb.b
  %i.q = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 8) #19, !noalias !503
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

.thread55:                                        ; preds = %..thread55_crit_edge, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit
  %i.r = phi i8 [ %.pre, %..thread55_crit_edge ], [ %.val.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit ] ; 2 uses
  %.sroa.0.0.i2362 = phi ptr [ %i.n, %..thread55_crit_edge ], [ %2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit ] ; 2 uses
  %.sroa.6.0.i61 = phi i64 [ %i.p, %..thread55_crit_edge ], [ %3, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit ] ; 2 uses
  %i.s = phi i8 [ %i.m, %..thread55_crit_edge ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit ] ; 2 uses
  switch i8 %i.r, label %bb.c [
    i8 80, label %bb.d
    i8 112, label %bb.d
  ]

bb.c:                                             ; preds = %.thread55
  %.sroa.431.0.insert.ext.i = zext i8 %i.r to i64
  %.sroa.431.0.insert.shift.i = shl nuw nsw i64 %.sroa.431.0.insert.ext.i, 8
  %.sroa.030.0.insert.insert.i = or disjoint i64 %.sroa.431.0.insert.shift.i, 7
  %i.t = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %.sroa.030.0.insert.insert.i) #19, !noalias !503
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.d:                                             ; preds = %.thread55, %.thread55
  %.not29.i = icmp eq i64 %.sroa.6.0.i61, 1
  br i1 %.not29.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2362, i64 1
  %i.v = load i8, ptr %i.u, align 1, !noalias !504, !noundef !11
  switch i8 %i.v, label %bb.f [
    i8 84, label %bb.g
    i8 116, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 15) #19, !noalias !504
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.x = add i64 %.sroa.6.0.i61, -2
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2362, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %.sroa.5.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.z = phi i8 [ 0, %bb.g ], [ %.sroa.02.0.i.i, %bb.x ]
  %i.aa = phi i8 [ -1, %bb.g ], [ %i.bd, %bb.x ]  ; 2 uses
  %i.ab = phi i8 [ -1, %bb.g ], [ %switch.load, %bb.x ] ; 3 uses
  %.sroa.8.0.i = phi i64 [ %i.x, %bb.g ], [ %i.ax, %bb.x ]
  %.sroa.0.0.i24 = phi ptr [ %i.y, %bb.g ], [ %i.aw, %bb.x ] ; 3 uses
  %.sroa.8.0.i.fr = freeze i64 %.sroa.8.0.i       ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0.i.fr, i64 21) ; 3 uses
  %exitcond.not285 = icmp eq i64 %.sroa.8.0.i.fr, 0
  br i1 %exitcond.not285, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.m
  %i.ac = add nuw nsw i64 %.sroa.0.0.i28287, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %invariant.umin
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %.lr.ph, %bb.h
  %.sroa.019.0.i.lcssa = phi i64 [ 0, %bb.h ], [ %i.aj, %bb.i ], [ %.sroa.019.0.i286, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i28.lcssa = phi i64 [ %invariant.umin, %bb.h ], [ %invariant.umin, %bb.i ], [ %.sroa.0.0.i28287, %.lr.ph ] ; 6 uses
  %i.ad = icmp eq i64 %.sroa.0.0.i28.lcssa, 0
  br i1 %i.ad, label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit, label %bb.k

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.sroa.0.0.i28287 = phi i64 [ %i.ac, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %.sroa.019.0.i286 = phi i64 [ %i.aj, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i24, i64 %.sroa.0.0.i28287
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !508, !noalias !511, !noundef !11
  %i.ag = add i8 %i.af, -48                       ; 2 uses
  %or.cond.i30 = icmp ult i8 %i.ag, 10
  br i1 %or.cond.i30, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.019.0.i286, i64 10) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %bb.n, label %bb.m, !prof !18

bb.k:                                             ; preds = %._crit_edge
  %i.ah = icmp samesign ugt i64 %.sroa.0.0.i28.lcssa, %.sroa.8.0.i.fr
  br i1 %i.ah, label %bb.l, label %bb.o, !prof !18

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i28.lcssa, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.i.fr, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #20, !noalias !516
  unreachable

bb.m:                                             ; preds = %bb.j
  %6 = extractvalue { i64, i1 } %4, 0             ; 2 uses
  %i.ai = zext nneg i8 %i.ag to i64
  %i.aj = add i64 %6, %i.ai                       ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %6
  br i1 %i.ak, label %bb.n, label %bb.i, !prof !18

bb.n:                                             ; preds = %bb.j, %bb.m
  %i.al = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 2, i8 0) #19, !noalias !517
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.o:                                             ; preds = %bb.k
  %i.am = sub nuw nsw i64 %.sroa.8.0.i.fr, %.sroa.0.0.i28.lcssa ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i24, i64 %.sroa.0.0.i28.lcssa ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !518
  %i.ao = icmp eq i64 %.sroa.8.0.i.fr, %.sroa.0.0.i28.lcssa
  br i1 %i.ao, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = load i8, ptr %i.an, align 1, !alias.scope !521, !noalias !524, !noundef !11
  switch i8 %i.ap, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread [
    i8 46, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
    i8 44, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  ]

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit: ; preds = %bb.p, %bb.p
  %i.aq = add nsw i64 %i.am, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  call void @_RNvNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction3imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.aq) #19, !noalias !526
  %.pr = load i32, ptr %i.b, align 8, !noalias !518 ; 2 uses
  %i.as = icmp eq i32 %.pr, 2
  %.sroa.532.0.copyload.i.pre = load ptr, ptr %.sroa.5.0..sroa_idx.i27, align 8, !noalias !518 ; 2 uses
  br i1 %i.as, label %bb.q, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge: ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  %.sroa.633.0.copyload.i.pre = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !518
  %i.at = trunc i32 %.pr to i1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread

bb.q:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !518
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread: ; preds = %bb.p, %bb.o, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge
  %.sroa.633.0.copyload.i = phi i64 [ %.sroa.633.0.copyload.i.pre, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge ], [ %i.am, %bb.o ], [ %i.am, %bb.p ] ; 2 uses
  %.sroa.532.0.copyload.i = phi ptr [ %.sroa.532.0.copyload.i.pre, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge ], [ %i.an, %bb.o ], [ %i.an, %bb.p ] ; 2 uses
  %i.au = phi i1 [ %i.at, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge ], [ false, %bb.o ], [ false, %bb.p ]
  %.sroa.431.0.copyload.i = load i32, ptr %.sroa.431.0..sroa_idx.i, align 4, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %.not.i26 = icmp eq i64 %.sroa.633.0.copyload.i, 0
  br i1 %.not.i26, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread
  %i.av = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 17) #19, !noalias !530
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.s:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.532.0.copyload.i, i64 1 ; 2 uses
  %i.ax = add nsw i64 %.sroa.633.0.copyload.i, -1 ; 2 uses
  %i.ay = load i8, ptr %.sroa.532.0.copyload.i, align 1, !alias.scope !527, !noalias !532, !noundef !11 ; 2 uses
  %switch.tableidx = add i8 %i.ay, -72            ; 3 uses
  %i.az = icmp ult i8 %switch.tableidx, 44
  br i1 %i.az, label %switch.hole_check, label %bb.t

bb.t:                                             ; preds = %switch.hole_check, %bb.s
  %.sroa.436.0.insert.ext.i = zext i8 %i.ay to i64
  %.sroa.436.0.insert.shift.i = shl nuw nsw i64 %.sroa.436.0.insert.ext.i, 8
  %.sroa.035.0.insert.insert.i = or disjoint i64 %.sroa.436.0.insert.shift.i, 16
  %i.ba = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %.sroa.035.0.insert.insert.i) #19, !noalias !530
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

switch.hole_check:                                ; preds = %bb.s
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 8937826945057, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.t

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bb = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB7_10SpanParser23parse_unsigned_duration3imp, i64 %i.bb
  %switch.load = load i8, ptr %switch.gep, align 1 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533), !noalias !536
  %.not6.i.i = icmp ugt i8 %i.ab, %switch.load
  br i1 %.not6.i.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %switch.lookup
  store i8 %switch.load, ptr %i.h, align 2, !alias.scope !537, !noalias !538
  %.not7.i.i = icmp eq i8 %i.aa, -1
  br i1 %.not7.i.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  store i8 %switch.load, ptr %i.i, align 1, !alias.scope !537, !noalias !538
  br label %bb.x

bb.w:                                             ; preds = %switch.lookup
  %.sroa.44.0.insert.ext.i.i = zext nneg i8 %i.ab to i16
  %.sroa.44.0.insert.shift.i.i = shl nuw nsw i16 %.sroa.44.0.insert.ext.i.i, 8
  %.sroa.03.0.insert.ext.i.i = zext nneg i8 %switch.load to i16
  %.sroa.03.0.insert.insert.i.i = or disjoint i16 %.sroa.44.0.insert.shift.i.i, %.sroa.03.0.insert.ext.i.i
  %i.bc = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 %.sroa.03.0.insert.insert.i.i) #19, !noalias !539
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bd = phi i8 [ %switch.load, %bb.v ], [ %i.aa, %bb.u ]
  %i.be = zext nneg i8 %switch.load to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.ptr100, i64 %i.be
  store i64 %.sroa.019.0.i.lcssa, ptr %i.bf, align 8, !alias.scope !537, !noalias !538
  %i.bg = icmp ne i64 %.sroa.019.0.i.lcssa, 0
  %i.bh = zext i1 %i.bg to i8
  %.sroa.02.0.i.i = or i8 %i.z, %i.bh             ; 2 uses
  store i8 %.sroa.02.0.i.i, ptr %i.j, align 8, !alias.scope !537, !noalias !538
  br i1 %i.au, label %bb.y, label %bb.h

bb.y:                                             ; preds = %bb.x
  %i.bi = call { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits12set_fraction(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i32 noundef %.sroa.431.0.copyload.i), !noalias !540 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.z, label %._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge

._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge: ; preds = %bb.y
  %.pre192 = load i8, ptr %i.h, align 2, !range !406, !alias.scope !487, !noalias !541
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit

bb.z:                                             ; preds = %bb.y
  %i.bl = extractvalue { i64, ptr } %i.bi, 1
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit: ; preds = %._crit_edge, %._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge
  %i.bm = phi i8 [ %.pre192, %._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge ], [ %i.ab, %._crit_edge ]
  %.sroa.10.0 = phi i64 [ %i.ax, %._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge ], [ %.sroa.8.0.i.fr, %._crit_edge ] ; 3 uses
  %.sroa.036.0 = phi ptr [ %i.aw, %._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge ], [ %.sroa.0.0.i24, %._crit_edge ] ; 2 uses
  %spec.select.i = icmp ugt i8 %i.bm, 5
  br i1 %spec.select.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit
  %i.bn = call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 18) #19, !noalias !536
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.ab:                                            ; preds = %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit
  store i8 %i.s, ptr %i.g, align 1, !alias.scope !487, !noalias !541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.bo = load i32, ptr %i.f, align 8, !range !349, !alias.scope !545, !noalias !542, !noundef !11
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %.preheader.preheader, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit, !prof !7

.preheader.preheader:                             ; preds = %bb.ab
  %.val.i32 = load i64, ptr %.ptr100, align 8, !noalias !547, !noundef !11 ; 2 uses
  %i.bp = icmp ugt i64 %.val.i32, 999
  br i1 %i.bp, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i32.1 = load i64, ptr %.ptr.1, align 8, !noalias !547, !noundef !11 ; 2 uses
  %i.bq = icmp ugt i64 %.val.i32.1, 999
  br i1 %i.bq, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val.i32.2 = load i64, ptr %.ptr.2, align 8, !noalias !547, !noundef !11 ; 2 uses
  %i.br = icmp ugt i64 %.val.i32.2, 999
  br i1 %i.br, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val.i32.3 = load i64, ptr %.ptr.3, align 8, !noalias !547, !noundef !11 ; 2 uses
  %i.bs = icmp ugt i64 %.val.i32.3, 999
  br i1 %i.bs, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val.i32.4 = load i64, ptr %.ptr.4, align 8, !noalias !547, !noundef !11 ; 2 uses
  %i.bt = icmp ugt i64 %.val.i32.4, 999
  br i1 %i.bt, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val.i32.5 = load i64, ptr %.ptr.5, align 8, !noalias !547, !noundef !11 ; 2 uses
  %i.bu = icmp ugt i64 %.val.i32.5, 999
  %i.bv = load i8, ptr %i.i, align 1, !range !406
  %spec.select.i33 = icmp ugt i8 %i.bv, 5
  %or.cond = select i1 %i.bu, i1 true, i1 %spec.select.i33, !prof !476
  br i1 %or.cond, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit.thread, !prof !476

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit.thread: ; preds = %.preheader.5
  %i.bw = trunc nuw nsw i64 %.val.i32.2 to i32
  %i.bx = trunc nuw nsw i64 %.val.i32.1 to i32
  %i.by = trunc nuw nsw i64 %.val.i32 to i32
  %i.bz = mul nuw nsw i64 %.val.i32.5, 3600
  %i.ca = mul nuw nsw i64 %.val.i32.4, 60
  %i.cb = add nuw nsw i64 %i.ca, %i.bz
  %i.cc = add nuw nsw i64 %i.cb, %.val.i32.3      ; 2 uses
  %i.cd = mul nuw nsw i32 %i.bw, 1000000
  %i.ce = mul nuw nsw i32 %i.bx, 1000
  %i.cf = add nuw nsw i32 %i.ce, %i.cd
  %i.cg = add nuw nsw i32 %i.cf, %i.by            ; 2 uses
  %i.ch = load i8, ptr %i.j, align 8, !range !144, !alias.scope !545, !noalias !542, !noundef !11
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = icmp eq i8 %i.s, -1
  %or.cond.i = and i1 %i.cj, %i.ci                ; 2 uses
  %i.ck = sub nsw i64 0, %i.cc
  %i.cl = sub nsw i32 0, %i.cg
  %.sroa.4.0.i = select i1 %or.cond.i, i32 %i.cl, i32 %i.cg
  %.sroa.0.0.i = select i1 %or.cond.i, i64 %i.ck, i64 %i.cc
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.i, ptr %i.cm, align 8, !alias.scope !542, !noalias !545
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %.sroa.4.0.i, ptr %i.cn, align 8, !alias.scope !542, !noalias !545
  br label %bb.ad

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit: ; preds = %bb.ab, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits26to_signed_duration_general(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.f) #19
  %.pre193 = load i64, ptr %i.d, align 8, !range !99
  %i.co = trunc nuw i64 %.pre193 to i1
  br i1 %i.co, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.ad:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit.thread, %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits18to_signed_duration.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !11 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cv = inttoptr i64 %.sroa.10.0 to ptr
  store ptr %.sroa.036.0, ptr %i.e, align 8
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cv, ptr %.sroa.63.0..sroa_idx4, align 8
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %i.cs, ptr %.sroa.8.0..sroa_idx6, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.cu, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx6.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.cw = icmp eq i64 %.sroa.10.0, 0
  br i1 %i.cw, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !553
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB2_5Error15into_full_error(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull readonly %.sroa.8.0..sroa_idx6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.036.0, i64 noundef %.sroa.10.0), !noalias !550
  %i.cx = call noundef ptr @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a) #19, !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !553
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.af:                                            ; preds = %bb.ad
  %i.cy = inttoptr i64 %i.cs to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cu, ptr %i.cz, align 8, !alias.scope !550, !noalias !555
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit: ; preds = %bb.af, %bb.ae, %bb.ac, %bb.z, %bb.w, %bb.q, %bb.n, %bb.t, %bb.r, %bb.c, %.thread, %bb.f, %bb.aa
  %.sink241.sink = phi ptr [ %i.ba, %bb.t ], [ %i.cq, %bb.ac ], [ %i.bn, %bb.aa ], [ %i.q, %.thread ], [ %i.w, %bb.f ], [ %i.t, %bb.c ], [ %i.bl, %bb.z ], [ %i.bc, %bb.w ], [ %i.al, %bb.n ], [ %.sroa.532.0.copyload.i.pre, %bb.q ], [ %i.av, %bb.r ], [ %i.cy, %bb.af ], [ %i.cx, %bb.ae ]
  %.sink = phi i64 [ 1, %bb.t ], [ 1, %bb.ac ], [ 1, %bb.aa ], [ 1, %.thread ], [ 1, %bb.f ], [ 1, %bb.c ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %bb.n ], [ 1, %bb.q ], [ 1, %bb.r ], [ 0, %bb.af ], [ 1, %bb.ae ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink241.sink, ptr %i.da, align 8
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB7_10SpanParser23parse_unsigned_duration3imp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [96 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.ptr112 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  call void @_RNvXsV_NtCs3oUPovFnLWP_4core5arrayAyja_NtNtB7_7default7Default7defaultCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %.ptr112)
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 89
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 90 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 91 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 -1, i8 -1>, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %.not.i32 = icmp eq i64 %3, 0
  br i1 %.not.i32, label %.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit: ; preds = %bb.a
  %.val.i = load i8, ptr %2, align 1, !alias.scope !559, !noalias !562, !noundef !11 ; 2 uses
  %i.m = add i8 %.val.i, -43
  %switch.and.i.i = and i8 %i.m, -3
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %bb.b, label %.thread67, !prof !375

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !565
  call fastcc void @_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser10parse_sign(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) #19
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !145, !noalias !565, !noundef !11
  %i.p = load ptr, ptr %i.d, align 8, !noalias !565, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !565, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %.not.i34 = icmp eq i64 %i.r, 0
  br i1 %.not.i34, label %.thread, label %..thread67_crit_edge

..thread67_crit_edge:                             ; preds = %bb.b
  %.pre = load i8, ptr %i.p, align 1, !alias.scope !567, !noalias !570
  br label %.thread67

.thread:                                          ; preds = %bb.a, %bb.b
  %i.s = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 8) #19, !noalias !572
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

.thread67:                                        ; preds = %..thread67_crit_edge, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit
  %i.t = phi i8 [ %.pre, %..thread67_crit_edge ], [ %.val.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit ] ; 2 uses
  %.sroa.0.0.i74 = phi ptr [ %i.p, %..thread67_crit_edge ], [ %2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit ] ; 2 uses
  %.sroa.6.0.i73 = phi i64 [ %i.r, %..thread67_crit_edge ], [ %3, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit ] ; 2 uses
  %i.u = phi i8 [ %i.o, %..thread67_crit_edge ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB11_10SpanParser15parse_time_only0EB17_.exit ] ; 2 uses
  switch i8 %i.t, label %bb.c [
    i8 80, label %bb.d
    i8 112, label %bb.d
  ]

bb.c:                                             ; preds = %.thread67
  %.sroa.431.0.insert.ext.i = zext i8 %i.t to i64
  %.sroa.431.0.insert.shift.i = shl nuw nsw i64 %.sroa.431.0.insert.ext.i, 8
  %.sroa.030.0.insert.insert.i = or disjoint i64 %.sroa.431.0.insert.shift.i, 7
  %i.v = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %.sroa.030.0.insert.insert.i) #19, !noalias !572
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.d:                                             ; preds = %.thread67, %.thread67
  %.not29.i = icmp eq i64 %.sroa.6.0.i73, 1
  br i1 %.not29.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i74, i64 1
  %i.x = load i8, ptr %i.w, align 1, !noalias !573, !noundef !11
  switch i8 %i.x, label %bb.f [
    i8 84, label %bb.g
    i8 116, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 15) #19, !noalias !573
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.z = add i64 %.sroa.6.0.i73, -2
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i74, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.x, %bb.g
  %i.ab = phi i8 [ 0, %bb.g ], [ %.sroa.02.0.i.i, %bb.x ]
  %i.ac = phi i8 [ -1, %bb.g ], [ %i.bf, %bb.x ]  ; 2 uses
  %i.ad = phi i8 [ -1, %bb.g ], [ %switch.load, %bb.x ] ; 3 uses
  %.sroa.8.0.i = phi i64 [ %i.z, %bb.g ], [ %i.az, %bb.x ]
  %.sroa.0.0.i33 = phi ptr [ %i.aa, %bb.g ], [ %i.ay, %bb.x ] ; 3 uses
  %.sroa.8.0.i.fr = freeze i64 %.sroa.8.0.i       ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0.i.fr, i64 21) ; 3 uses
  %exitcond.not296 = icmp eq i64 %.sroa.8.0.i.fr, 0
  br i1 %exitcond.not296, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.m
  %i.ae = add nuw nsw i64 %.sroa.0.0.i37298, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %invariant.umin
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %.lr.ph, %bb.h
  %.sroa.019.0.i.lcssa = phi i64 [ 0, %bb.h ], [ %i.al, %bb.i ], [ %.sroa.019.0.i297, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i37.lcssa = phi i64 [ %invariant.umin, %bb.h ], [ %invariant.umin, %bb.i ], [ %.sroa.0.0.i37298, %.lr.ph ] ; 6 uses
  %i.af = icmp eq i64 %.sroa.0.0.i37.lcssa, 0
  br i1 %i.af, label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit, label %bb.k

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.sroa.0.0.i37298 = phi i64 [ %i.ae, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %.sroa.019.0.i297 = phi i64 [ %i.al, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i33, i64 %.sroa.0.0.i37298
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !577, !noalias !580, !noundef !11
  %i.ai = add i8 %i.ah, -48                       ; 2 uses
  %or.cond.i39 = icmp ult i8 %i.ai, 10
  br i1 %or.cond.i39, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.019.0.i297, i64 10) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %bb.n, label %bb.m, !prof !18

bb.k:                                             ; preds = %._crit_edge
  %i.aj = icmp samesign ugt i64 %.sroa.0.0.i37.lcssa, %.sroa.8.0.i.fr
  br i1 %i.aj, label %bb.l, label %bb.o, !prof !18

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i37.lcssa, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.i.fr, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #20, !noalias !585
  unreachable

bb.m:                                             ; preds = %bb.j
  %6 = extractvalue { i64, i1 } %4, 0             ; 2 uses
  %i.ak = zext nneg i8 %i.ai to i64
  %i.al = add i64 %6, %i.ak                       ; 3 uses
  %i.am = icmp ult i64 %i.al, %6
  br i1 %i.am, label %bb.n, label %bb.i, !prof !18

bb.n:                                             ; preds = %bb.j, %bb.m
  %i.an = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 2, i8 0) #19, !noalias !586
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.o:                                             ; preds = %bb.k
  %i.ao = sub nuw nsw i64 %.sroa.8.0.i.fr, %.sroa.0.0.i37.lcssa ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i33, i64 %.sroa.0.0.i37.lcssa ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !587
  %i.aq = icmp eq i64 %.sroa.8.0.i.fr, %.sroa.0.0.i37.lcssa
  br i1 %i.aq, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = load i8, ptr %i.ap, align 1, !alias.scope !590, !noalias !593, !noundef !11
  switch i8 %i.ar, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread [
    i8 46, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
    i8 44, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  ]

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit: ; preds = %bb.p, %bb.p
  %i.as = add nsw i64 %i.ao, -1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  call void @_RNvNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction3imp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.as) #19, !noalias !595
  %.pr = load i32, ptr %i.c, align 8, !noalias !587 ; 2 uses
  %i.au = icmp eq i32 %.pr, 2
  %.sroa.532.0.copyload.i.pre = load ptr, ptr %.sroa.5.0..sroa_idx.i36, align 8, !noalias !587 ; 2 uses
  br i1 %i.au, label %bb.q, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge: ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  %.sroa.633.0.copyload.i.pre = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !587
  %i.av = trunc i32 %.pr to i1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread

bb.q:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !587
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread: ; preds = %bb.p, %bb.o, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge
  %.sroa.633.0.copyload.i = phi i64 [ %.sroa.633.0.copyload.i.pre, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge ], [ %i.ao, %bb.o ], [ %i.ao, %bb.p ] ; 2 uses
  %.sroa.532.0.copyload.i = phi ptr [ %.sroa.532.0.copyload.i.pre, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge ], [ %i.ap, %bb.o ], [ %i.ap, %bb.p ] ; 2 uses
  %i.aw = phi i1 [ %i.av, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit._crit_edge ], [ false, %bb.o ], [ false, %bb.p ]
  %.sroa.431.0.copyload.i = load i32, ptr %.sroa.431.0..sroa_idx.i, align 4, !noalias !587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %.not.i35 = icmp eq i64 %.sroa.633.0.copyload.i, 0
  br i1 %.not.i35, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread
  %i.ax = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 17) #19, !noalias !599
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.s:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.532.0.copyload.i, i64 1 ; 2 uses
  %i.az = add nsw i64 %.sroa.633.0.copyload.i, -1 ; 2 uses
  %i.ba = load i8, ptr %.sroa.532.0.copyload.i, align 1, !alias.scope !596, !noalias !601, !noundef !11 ; 2 uses
  %switch.tableidx = add i8 %i.ba, -72            ; 3 uses
  %i.bb = icmp ult i8 %switch.tableidx, 44
  br i1 %i.bb, label %switch.hole_check, label %bb.t

bb.t:                                             ; preds = %switch.hole_check, %bb.s
  %.sroa.436.0.insert.ext.i = zext i8 %i.ba to i64
  %.sroa.436.0.insert.shift.i = shl nuw nsw i64 %.sroa.436.0.insert.ext.i, 8
  %.sroa.035.0.insert.insert.i = or disjoint i64 %.sroa.436.0.insert.shift.i, 16
  %i.bc = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %.sroa.035.0.insert.insert.i) #19, !noalias !599
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

switch.hole_check:                                ; preds = %bb.s
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 8937826945057, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.t

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bd = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB7_10SpanParser23parse_unsigned_duration3imp, i64 %i.bd
  %switch.load = load i8, ptr %switch.gep, align 1 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602), !noalias !605
  %.not6.i.i = icmp ugt i8 %i.ad, %switch.load
  br i1 %.not6.i.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %switch.lookup
  store i8 %switch.load, ptr %i.j, align 2, !alias.scope !606, !noalias !607
  %.not7.i.i = icmp eq i8 %i.ac, -1
  br i1 %.not7.i.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  store i8 %switch.load, ptr %i.k, align 1, !alias.scope !606, !noalias !607
  br label %bb.x

bb.w:                                             ; preds = %switch.lookup
  %.sroa.44.0.insert.ext.i.i = zext nneg i8 %i.ad to i16
  %.sroa.44.0.insert.shift.i.i = shl nuw nsw i16 %.sroa.44.0.insert.ext.i.i, 8
  %.sroa.03.0.insert.ext.i.i = zext nneg i8 %switch.load to i16
  %.sroa.03.0.insert.insert.i.i = or disjoint i16 %.sroa.44.0.insert.shift.i.i, %.sroa.03.0.insert.ext.i.i
  %i.be = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 %.sroa.03.0.insert.insert.i.i) #19, !noalias !608
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bf = phi i8 [ %switch.load, %bb.v ], [ %i.ac, %bb.u ]
  %i.bg = zext nneg i8 %switch.load to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.ptr112, i64 %i.bg
  store i64 %.sroa.019.0.i.lcssa, ptr %i.bh, align 8, !alias.scope !606, !noalias !607
  %i.bi = icmp ne i64 %.sroa.019.0.i.lcssa, 0
  %i.bj = zext i1 %i.bi to i8
  %.sroa.02.0.i.i = or i8 %i.ab, %i.bj            ; 2 uses
  store i8 %.sroa.02.0.i.i, ptr %i.l, align 8, !alias.scope !606, !noalias !607
  br i1 %i.aw, label %bb.y, label %bb.h

bb.y:                                             ; preds = %bb.x
  %i.bk = call { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits12set_fraction(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.h, i32 noundef %.sroa.431.0.copyload.i), !noalias !609 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.z, label %._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge

._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge: ; preds = %bb.y
  %.pre204 = load i8, ptr %i.j, align 2, !range !406, !alias.scope !556, !noalias !610
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit

bb.z:                                             ; preds = %bb.y
  %i.bn = extractvalue { i64, ptr } %i.bk, 1
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit: ; preds = %._crit_edge, %._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge
  %i.bo = phi i8 [ %.pre204, %._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge ], [ %i.ad, %._crit_edge ]
  %.sroa.10.0 = phi i64 [ %i.az, %._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge ], [ %.sroa.8.0.i.fr, %._crit_edge ] ; 2 uses
  %.sroa.048.0 = phi ptr [ %i.ay, %._RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit_crit_edge ], [ %.sroa.0.0.i33, %._crit_edge ]
  %spec.select.i = icmp ugt i8 %i.bo, 5
  br i1 %spec.select.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit
  %i.bp = call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 18) #19, !noalias !605
  br label %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser26parse_unit_time_designator.exit

bb.ab:                                            ; preds = %_RNvMs6_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10SpanParser16parse_time_units.exit
  store i8 %i.u, ptr %i.i, align 1, !alias.scope !556, !noalias !610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.bq = load i32, ptr %i.h, align 8, !range !349, !alias.scope !614, !noalias !611, !noundef !11
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %.preheader.preheader, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits20to_unsigned_duration.exit, !prof !7

.preheader.preheader:                             ; preds = %bb.ab
  %.val.i41 = load i64, ptr %.ptr112, align 8, !noalias !616, !noundef !11 ; 2 uses
  %i.br = icmp ugt i64 %.val.i41, 999
  br i1 %i.br, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits20to_unsigned_duration.exit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val.i41.1 = load i64, ptr %.ptr.1, align 8, !noalias !616, !noundef !11 ; 2 uses
  %i.bs = icmp ugt i64 %.val.i41.1, 999
  br i1 %i.bs, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits20to_unsigned_duration.exit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val.i41.2 = load i64, ptr %.ptr.2, align 8, !noalias !616, !noundef !11 ; 2 uses
  %i.bt = icmp ugt i64 %.val.i41.2, 999
  br i1 %i.bt, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits20to_unsigned_duration.exit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.val.i41.3 = load i64, ptr %.ptr.3, align 8, !noalias !616, !noundef !11 ; 2 uses
  %i.bu = icmp ugt i64 %.val.i41.3, 999
  br i1 %i.bu, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits20to_unsigned_duration.exit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.val.i41.4 = load i64, ptr %.ptr.4, align 8, !noalias !616, !noundef !11 ; 2 uses
  %i.bv = icmp ugt i64 %.val.i41.4, 999
  br i1 %i.bv, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits20to_unsigned_duration.exit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.val.i41.5 = load i64, ptr %.ptr.5, align 8, !noalias !616, !noundef !11 ; 2 uses
  %i.bw = icmp ugt i64 %.val.i41.5, 999
  br i1 %i.bw, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits20to_unsigned_duration.exit, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB1G_13DurationUnits20to_unsigned_duration0EB1K_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB1G_13DurationUnits20to_unsigned_duration0EB1K_.exit: ; preds = %.preheader.5
  %i.bx = load i8, ptr %i.k, align 1, !range !406, !alias.scope !614, !noalias !611, !noundef !11
  %spec.select.i42 = icmp ugt i8 %i.bx, 5
  %i.by = icmp eq i8 %i.u, -1
  %or.cond.i = or i1 %spec.select.i42, %i.by
  br i1 %or.cond.i, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits20to_unsigned_duration.exit, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits20to_unsigned_duration.exit.thread, !prof !178

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits20to_unsigned_duration.exit.thread: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB1G_13DurationUnits20to_unsigned_duration0EB1K_.exit
  %i.bz = trunc nuw nsw i64 %.val.i41.1 to i32
  %i.ca = mul nuw nsw i32 %i.bz, 1000
  %i.cb = trunc nuw nsw i64 %.val.i41.2 to i32
  %i.cc = mul nuw nsw i32 %i.cb, 1000000
  %i.cd = add nuw nsw i32 %i.ca, %i.cc
  %i.ce = trunc nuw nsw i64 %.val.i41 to i32
  %i.cf = add nuw nsw i32 %i.cd, %i.ce
  %i.cg = mul nuw nsw i64 %.val.i41.4, 60
  %i.ch = mul nuw nsw i64 %.val.i41.5, 3600
  %i.ci = add nuw nsw i64 %i.cg, %i.ch
  %i.cj = add nuw nsw i64 %i.ci, %.val.i41.3
  store i64 %i.cj, ptr %i.e, align 8, !alias.scope !611, !noalias !614
  br label %bb.ad

end_hunk_2
begin_hunk_3_@_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB4_14ParsedDateTimeNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt:bb.a

_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10ParsedTimeNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !816
  br label %bb.k

_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10ParsedTimeNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !816
  br label %bb.d

bb.k:                                             ; preds = %.split, %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10ParsedTimeNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.thread, %_RNvXs_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB4_12ParsedOffsetNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, %bb.c, %bb.a, %bb.l
  %.sroa.0.0 = phi i1 [ %i.ac, %bb.l ], [ true, %bb.a ], [ true, %bb.c ], [ true, %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_10ParsedTimeNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.thread ], [ true, %_RNvXs_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB4_12ParsedOffsetNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit ], [ true, %.split ]
  ret i1 %.sroa.0.0

.split:                                           ; preds = %bb.d
  %i.z = call noundef zeroext i1 @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_7NumericNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.z, label %bb.k, label %bb.l

_RNvXs_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB4_12ParsedOffsetNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit: ; preds = %bb.d
  %i.aa = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 1), !noalias !826
  br i1 %i.aa, label %bb.k, label %bb.l

bb.l:                                             ; preds = %bb.d, %.split, %_RNvXs_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB4_12ParsedOffsetNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = call noundef zeroext i1 @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB4_17ParsedAnnotationsNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.k
}

; Function Attrs: cold nonlazybind uwtable
define noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offsetNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offsetNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #19
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtCs3oUPovFnLWP_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB2_5Error15into_full_error(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef range(i8 0, 52)) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef range(i8 0, 3), i8) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXsE_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_11OffsetHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXsG_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_13OffsetMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXsI_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_13OffsetSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXs1y_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB2_5ErrorNtB6_9IntoError10into_error(i8 noundef range(i8 0, 24), i8) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error15signed_durationNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef range(i8 0, 12)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef range(i8 0, 52)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB2_16TimeZoneDatabase8from_env() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB4_16TimeZoneDatabaseNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvNtNtCsa9sSWSfjDbm_4jiff3now3sys11system_time() unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data13cn_planes_0_311lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data15grapheme_extend11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data28default_ignorable_code_point11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data2cf11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #6

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits26to_signed_duration_general(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits28to_unsigned_duration_general(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits15to_span_general(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTime14duration_since(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef range(i8 0, 24), i8) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB2_16TimeZoneDatabase3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone13from_posix_tz(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80)) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits12set_fraction(ptr noalias nofree noundef align 8 dereferenceable(96), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment13for_timestamp(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), i8 noundef range(i8 0, 10), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), i8 noundef range(i8 0, 9), i64 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23parse_temporal_fraction3imp(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsV_NtCs3oUPovFnLWP_4core5arrayAyja_NtNtB7_7default7Default7defaultCsa9sSWSfjDbm_4jiff(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtCs3oUPovFnLWP_4core5ascii14escape_default(i8 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs3oUPovFnLWP_4core5asciiNtB5_13EscapeDefaultNtNtB7_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_4DateNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB5_14DiagnosticNameNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvMs1_NtNtCsa9sSWSfjDbm_4jiff3fmt8temporalNtB6_11SpanPrinter14print_durationINtB8_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB6_11SpanPrinter14print_durationINtBa_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEEBc_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvMs_NtNtCsa9sSWSfjDbm_4jiff3fmt8temporalNtB5_15DateTimePrinter15print_timestampINtB7_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEEB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvMs_NtNtCsa9sSWSfjDbm_4jiff3fmt8temporalNtB5_15DateTimePrinter10print_timeINtB7_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEEB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvMs1_NtNtCsa9sSWSfjDbm_4jiff3fmt8temporalNtB6_11SpanPrinter10print_spanINtB8_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB6_11SpanPrinter10print_spanINtBa_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEEBc_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error9timestampNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i1 noundef zeroext) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB4_17ParsedAnnotationsNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offsetNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) i64 @llvm.scmp.i64.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) i64 @llvm.scmp.i64.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { noinline }
attributes #20 = { noinline noreturn }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { inlinehint }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockNtNtNtCsa9sSWSfjDbm_4jiff2tz2db16TimeZoneDatabaseE10initializeNCINvB18_11get_or_initNCNvB1G_2db0E0zE0EB1K_: argument 0"}
!6 = distinct !{!6, !"_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockNtNtNtCsa9sSWSfjDbm_4jiff2tz2db16TimeZoneDatabaseE10initializeNCINvB18_11get_or_initNCNvB1G_2db0E0zE0EB1K_"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!10 = distinct !{!10, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!11 = !{}
!12 = !{!13, !15, !9}
!13 = distinct !{!13, !14, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!14 = distinct !{!14, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!15 = distinct !{!15, !16, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!16 = distinct !{!16, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!17 = !{i64 8}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db16TimeZoneDatabaseEBH_: argument 0"}
!21 = distinct !{!21, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db16TimeZoneDatabaseEBH_"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4ReprEBH_: argument 0"}
!24 = distinct !{!24, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4ReprEBH_"}
!25 = !{i64 0, i64 3}
!26 = !{!23, !20}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindEEB1f_: argument 0"}
!29 = distinct !{!29, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindEEB1f_"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_: argument 0"}
!32 = distinct !{!32, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_"}
!33 = !{!31, !28, !23, !20}
!34 = !{!35, !37, !39, !41}
!35 = distinct !{!35, !36, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!36 = distinct !{!36, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!37 = distinct !{!37, !38, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!38 = distinct !{!38, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!39 = distinct !{!39, !40, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!40 = distinct !{!40, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!41 = distinct !{!41, !42, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!42 = distinct !{!42, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!43 = !{!44, !46, !48, !50}
!44 = distinct !{!44, !45, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!45 = distinct !{!45, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
end_hunk_3
