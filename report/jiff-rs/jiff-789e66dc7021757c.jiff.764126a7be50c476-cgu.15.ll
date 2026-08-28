Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.15?download=true
inline.NumInlined: 264
inline.NumDeleted: 141
begin_hunk_0_@_RNvMsE_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_8DateWith5build:bb.a
  unreachable

bb.aq:                                            ; preds = %bb.ae
  %i.ek = tail call noundef i8 @_RNvXsa_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_3DayNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21
  %i.el = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.ek)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.el, ptr %i.em, align 8
  br label %bb.at

bb.ar:                                            ; preds = %bb.x, %bb.ad, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b3DayNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkaEB9_.exit, %bb.y
  %.sroa.6.0.i.ph = phi i32 [ 767, %bb.y ], [ 8447, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b3DayNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkaEB9_.exit ], [ %.sroa.429.0.insert.insert.i, %bb.ad ], [ 3327, %bb.x ]
  %i.en = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph) #21
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.en, ptr %i.eo, align 8
  br label %bb.at

bb.as:                                            ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i, %bb.z
  %.sroa.518.0.insert.ext.i = zext nneg i8 %.sroa.033.0 to i32
  %.sroa.518.0.insert.shift.i = shl nuw nsw i32 %.sroa.518.0.insert.ext.i, 24
  %.sroa.417.0.insert.ext.i = zext nneg i8 %.sroa.025.0 to i32
  %.sroa.417.0.insert.shift.i = shl nuw nsw i32 %.sroa.417.0.insert.ext.i, 16
  %.sroa.417.0.insert.insert.i = or disjoint i32 %.sroa.518.0.insert.shift.i, %.sroa.417.0.insert.shift.i
  %.sroa.016.0.insert.ext.i = zext i16 %.sroa.09.0 to i32
  %.sroa.016.0.insert.insert.i = or disjoint i32 %.sroa.417.0.insert.insert.i, %.sroa.016.0.insert.ext.i
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.016.0.insert.insert.i, ptr %i.ep, align 2
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.v, %bb.aq, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date16from_day_of_year.exit, %bb.au, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date24from_day_of_year_no_leap.exit, %bb.av, %bb.h, %bb.p, %bb.r
  %.sink = phi i16 [ 1, %bb.v ], [ 1, %bb.aq ], [ 0, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date16from_day_of_year.exit ], [ 1, %bb.au ], [ 0, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date24from_day_of_year_no_leap.exit ], [ 1, %bb.av ], [ 1, %bb.h ], [ 1, %bb.p ], [ 1, %bb.r ], [ 0, %bb.as ], [ 1, %bb.ar ]
  store i16 %.sink, ptr %0, align 8
  ret void

bb.au:                                            ; preds = %bb.aj, %bb.ag, %bb.af
  %.sroa.6.0.i115.ph = phi i32 [ 8447, %bb.af ], [ 1023, %bb.ag ], [ %.sroa.6.1.i, %bb.aj ]
  %i.eq = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i115.ph) #21
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eq, ptr %i.er, align 8
  br label %bb.at

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date16from_day_of_year.exit: ; preds = %bb.ai
  %i.es = udiv i32 %i.cp, 11758980
  %i.et = mul nuw nsw i32 %i.es, 2141
  %i.eu = add nuw nsw i32 %i.et, 197913           ; 3 uses
  %.lhs.trunc.i.i = trunc i32 %i.eu to i16
  %i.ev = udiv i16 %.lhs.trunc.i.i, 2141
  %.zext.i.i = zext nneg i16 %i.ev to i32
  %.sroa.3.0.insert.ext.i.i = shl nuw nsw i32 %.zext.i.i, 24
  %.sroa.3.0.insert.shift.i.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 16777216
  %i.ew = and i32 %i.eu, 4128768
  %i.ex = add nuw nsw i32 %i.ew, 15990784
  %.sroa.2.0.insert.ext.i.i = select i1 %i.cq, i32 %i.ex, i32 %i.eu
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = and i32 %i.cy, 65535
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.ey, align 2
  br label %bb.at

bb.av:                                            ; preds = %bb.al, %bb.ak
  %.sroa.5.0.i.ph = phi i32 [ 8447, %bb.ak ], [ 1279, %bb.al ]
  %i.ez = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.5.0.i.ph) #21
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ez, ptr %i.fa, align 8
  br label %bb.at

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date24from_day_of_year_no_leap.exit: ; preds = %bb.ap
  %i.fb = udiv i32 %i.ea, 11758980
  %i.fc = mul nuw nsw i32 %i.fb, 2141
  %i.fd = add nuw nsw i32 %i.fc, 197913           ; 3 uses
  %.lhs.trunc.i.i.i = trunc i32 %i.fd to i16
  %i.fe = udiv i16 %.lhs.trunc.i.i.i, 2141
  %.zext.i.i.i = zext nneg i16 %i.fe to i32
  %.sroa.3.0.insert.ext.i.i.i = shl nuw nsw i32 %.zext.i.i.i, 24
  %.sroa.3.0.insert.shift.i.i.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i.i.i, 16777216
  %i.ff = and i32 %i.fd, 4128768
  %i.fg = add nuw nsw i32 %i.ff, 15990784
  %.sroa.2.0.insert.ext.i.i.i = select i1 %i.eb, i32 %i.fg, i32 %i.fd
  %.sroa.2.0.insert.shift.i.i.i = and i32 %.sroa.2.0.insert.ext.i.i.i, 16711680
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = and i32 %i.ej, 65535
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.0.0.insert.insert.i.i.i, ptr %i.fh, align 2
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE16into_boxed_sliceCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !151, !noundef !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !32 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsa9sSWSfjDbm_4jiff.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsa9sSWSfjDbm_4jiff.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsa9sSWSfjDbm_4jiff.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !32, !noundef !32
  %i.f = icmp sgt i64 %.sroa.511.0.copyload, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit unwind label %bb.g

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsa9sSWSfjDbm_4jiff.exit._crit_edge, label %bb.e, !prof !216

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsa9sSWSfjDbm_4jiff.exit._crit_edge: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsa9sSWSfjDbm_4jiff.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsa9sSWSfjDbm_4jiff.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #25
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !32 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !151, !noundef !32
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !157

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 23) i32 @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl(i64 noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %0, 9999999999              ; 2 uses
  %i.b = udiv i64 %0, 10000000000
  %.sroa.05.0 = select i1 %i.a, i32 10, i32 0     ; 2 uses
  %.sroa.0.0 = select i1 %i.a, i64 %i.b, i64 %0   ; 3 uses
  %i.c = icmp samesign ugt i64 %.sroa.0.0, 99999
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 %.sroa.0.0, 100000
  %i.e = or disjoint i32 %.sroa.05.0, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.1 = phi i32 [ %i.e, %bb.b ], [ %.sroa.05.0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %i.d, %bb.b ], [ %.sroa.0.0, %bb.a ]
  %i.f = trunc nuw nsw i64 %.sroa.0.1 to i32      ; 4 uses
  %i.g = add nuw nsw i32 %i.f, 393206
  %i.h = add nuw nsw i32 %i.f, 524188
  %i.i = and i32 %i.g, %i.h
  %i.j = add nuw nsw i32 %i.f, 916504
  %i.k = add nuw nsw i32 %i.f, 514288
  %i.l = and i32 %i.j, %i.k
  %i.m = xor i32 %i.i, %i.l
  %i.n = lshr i32 %i.m, 17
  %i.o = add nuw nsw i32 %i.n, %.sroa.05.1
  ret i32 %i.o
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB7_14BrokenDownTime7to_date7to_date(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [14 x i8], align 2                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [14 x i8], align 2                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [14 x i8], align 2                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load i16, ptr %i.y, align 8, !range !217, !noundef !32
  %i.aa = trunc nuw i16 %i.z to i1
  br i1 %i.aa, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.ac = load i16, ptr %i.ab, align 2, !noundef !32 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ae = load i8, ptr %i.ad, align 4, !range !219, !alias.scope !243, !noalias !246, !noundef !32
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !243, !noalias !246 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 95
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !243, !noalias !246 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 94
  %i.al = load i8, ptr %i.ak, align 2, !range !219, !alias.scope !243, !noalias !246
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i = select i1 %i.af, i1 %i.am, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.an = add i16 %i.ac, 9999
  %or.cond.i.i = icmp ult i16 %i.an, 19999
  br i1 %or.cond.i.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.ao = add i8 %i.ah, -1
  %or.cond1.i.i = icmp ult i8 %i.ao, 12
  br i1 %or.cond1.i.i, label %bb.e, label %bb.l, !prof !241

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp slt i8 %i.aj, 1
  br i1 %i.ap, label %bb.l, label %bb.f, !prof !157

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp samesign ugt i8 %i.aj, 28
  br i1 %i.aq, label %bb.g, label %.thread96

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp eq i8 %i.ah, 2
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = srem i16 %i.ac, 25
  %i.at = icmp eq i16 %i.as, 0
  %..i.i.i = select i1 %i.at, i16 15, i16 3
  %i.au = and i16 %..i.i.i, %i.ac
  %i.av = icmp eq i16 %i.au, 0
  %spec.select.i.i.i = select i1 %i.av, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.aw = lshr i8 %i.ah, 3
  %i.ax = xor i8 %i.aw, %i.ah
  %i.ay = or i8 %i.ax, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i = phi i8 [ %spec.select.i.i.i, %bb.h ], [ %i.ay, %bb.i ]
  %i.az = icmp samesign ugt i8 %i.aj, %.sroa.0.0.i.i.i
  br i1 %i.az, label %bb.j, label %.thread96, !prof !242

bb.j:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i
  %.sroa.530.0.insert.ext.i.i = zext i16 %i.ac to i32
  %.sroa.530.0.insert.shift.i.i = shl nuw i32 %.sroa.530.0.insert.ext.i.i, 16
  %.sroa.429.0.insert.ext.i.i = zext nneg i8 %i.ah to i32
  %.sroa.429.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.429.0.insert.ext.i.i, 8
  %.sroa.429.0.insert.insert.i.i = or disjoint i32 %.sroa.429.0.insert.shift.i.i, %.sroa.530.0.insert.shift.i.i
  br label %bb.l

.thread96:                                        ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i, %bb.f
  %.sroa.518.0.insert.ext.i.i = zext nneg i8 %i.aj to i32
  %.sroa.518.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.518.0.insert.ext.i.i, 24
  %.sroa.417.0.insert.ext.i.i = zext nneg i8 %i.ah to i32
  %.sroa.417.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.417.0.insert.ext.i.i, 16
  %.sroa.016.0.insert.ext.i.i = zext i16 %i.ac to i32
  %.sroa.417.0.insert.insert.i.i = or disjoint i32 %.sroa.417.0.insert.shift.i.i, %.sroa.016.0.insert.ext.i.i
  %.sroa.016.0.insert.insert.i.i = or disjoint i32 %.sroa.417.0.insert.insert.i.i, %.sroa.518.0.insert.shift.i.i
  br label %.thread140

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime16to_date_from_iso(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) #23
  %i.ba = load i16, ptr %i.x, align 8, !range !217, !noundef !32
  %i.bb = trunc nuw i16 %i.ba to i1
  br i1 %i.bb, label %bb.bo, label %bb.bp

bb.l:                                             ; preds = %bb.j, %bb.e, %bb.d, %bb.c
  %.sroa.6.0.i.ph.i = phi i32 [ 767, %bb.e ], [ 8447, %bb.c ], [ %.sroa.429.0.insert.insert.i.i, %bb.j ], [ 3327, %bb.d ]
  %i.bc = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph.i) #21, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !248
  store i8 9, ptr %i.s, align 8, !noalias !248
  %i.bd = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noundef %i.bc) #23, !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !248
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8
  br label %bb.bn

bb.m:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %.sroa.038.0.copyload = load i16, ptr %i.bf, align 2
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.439.0.copyload = load i32, ptr %.sroa.439.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not48 = icmp eq i16 %.sroa.038.0.copyload, 1
  br i1 %.not48, label %.thread140, label %bb.p

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime16to_date_from_iso(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) #23
  %i.bg = load i16, ptr %i.v, align 8, !range !217, !noundef !32
  %i.bh = trunc nuw i16 %i.bg to i1
  br i1 %i.bh, label %bb.o, label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noundef !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8
  br label %bb.bn

bb.p:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.val = load i16, ptr %i.bl, align 4, !range !217, !noundef !32
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 86
  %.val53 = load i16, ptr %i.bm, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bn = trunc nuw i16 %.val to i1
  br i1 %i.bn, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i, label %bb.ac

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i: ; preds = %bb.p
  %i.bo = add i16 %i.ac, -10000
  %or.cond.i.i55 = icmp ult i16 %i.bo, -19999
  br i1 %or.cond.i.i55, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit.i, !prof !157

bb.q:                                             ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i
  %i.bp = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 8447) #21, !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !252
  store ptr %i.bp, ptr %i.p, align 8, !noalias !252
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #25
          to label %bb.u unwind label %bb.r, !noalias !252

bb.r:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258), !noalias !261
  %i.br = load ptr, ptr %i.p, align 8, !alias.scope !262, !noalias !252, !noundef !32 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !263
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.t, label %common.resume

bb.t:                                             ; preds = %bb.s
  fence acquire, !noalias !261
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #21
          to label %common.resume unwind label %bb.v, !noalias !249

bb.u:                                             ; preds = %bb.q
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !252
  unreachable

common.resume:                                    ; preds = %bb.bc, %bb.bd, %bb.be, %bb.al, %bb.am, %bb.an, %bb.r, %bb.s, %bb.t, %bb.x, %bb.y, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.ee, %bb.al ], [ %i.ce, %bb.x ], [ %i.bq, %bb.t ], [ %i.bq, %bb.s ], [ %i.bq, %bb.r ], [ %i.ce, %bb.z ], [ %i.ce, %bb.y ], [ %i.ee, %bb.an ], [ %i.ee, %bb.am ], [ %i.gr, %bb.be ], [ %i.gr, %bb.bd ], [ %i.gr, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit.i: ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i
  %.sroa.016.0.insert.ext.i.i56 = zext i16 %i.ac to i32
  %.sroa.016.0.insert.insert.i.i57 = or disjoint i32 %.sroa.016.0.insert.ext.i.i56, 16842752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !249
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  store i32 %.sroa.016.0.insert.insert.i.i57, ptr %i.bw, align 2, !noalias !249
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 2, ptr %i.bx, align 2, !noalias !249
  store i8 0, ptr %i.q, align 2, !noalias !249
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i8 1, ptr %i.by, align 2, !noalias !249
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %.val53, ptr %.sroa.517.0..sroa_idx.i, align 2, !noalias !249
  call fastcc void @_RNvMsE_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_8DateWith5build(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.r, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(14) %i.q) #23, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !249
  %i.bz = load i16, ptr %i.r, align 8, !range !217, !noalias !249, !noundef !32
  %i.ca = trunc nuw i16 %i.bz to i1
  br i1 %i.ca, label %bb.w, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime24to_date_from_day_of_year.exit

bb.w:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !249, !noundef !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !268
  store ptr %i.cc, ptr %i.o, align 8, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !268
  store i8 9, ptr %i.n, align 8, !noalias !249
  %i.cd = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.ab unwind label %bb.x, !noalias !268

bb.x:                                             ; preds = %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cf = icmp eq ptr %i.cc, null
  br i1 %i.cf, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !271
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.z, label %common.resume

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #21
          to label %common.resume unwind label %bb.aa, !noalias !268

bb.aa:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !268
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime24to_date_from_day_of_year.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.sroa.030.0.copyload.i = load i32, ptr %i.cj, align 2, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.thread140

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !268
  %i.ck = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.cc, ptr noundef %i.cd), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.cl, align 8
  br label %bb.bn

bb.ac:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.cn = load i8, ptr %i.cm, align 2, !range !219, !alias.scope !280, !noalias !283, !noundef !32
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 99
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !280, !noalias !283 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.cs = load i8, ptr %i.cr, align 1, !range !218, !alias.scope !280, !noalias !283, !noundef !32 ; 7 uses
  %.not.i = icmp ne i8 %i.cs, 0                   ; 2 uses
  %or.cond.not.i = and i1 %.not.i, %i.co
  br i1 %or.cond.not.i, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i59, label %bb.ar

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i59: ; preds = %bb.ac
  %i.ct = sext i8 %i.cq to i16
  %i.cu = icmp eq i8 %i.cs, 7
  %spec.store.select.i = select i1 %i.cu, i8 0, i8 %i.cs
  %i.cv = zext nneg i8 %spec.store.select.i to i16 ; 2 uses
  %i.cw = add i16 %i.ac, -10000
  %or.cond.i.i60 = icmp ult i16 %i.cw, -19999
  %.sroa.016.0.insert.ext.i.i61 = zext i16 %i.ac to i32
  %.sroa.016.0.insert.insert.i.i62 = or disjoint i32 %.sroa.016.0.insert.ext.i.i61, 16842752
  br i1 %or.cond.i.i60, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i63, !prof !157

bb.ad:                                            ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i59
  %i.cx = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 8447) #21, !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !285
  store i8 9, ptr %i.j, align 8, !noalias !285
  %i.cy = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noundef %i.cx) #23, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !285
  br label %bb.aq

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i63: ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i59
  %i.cz = sext i16 %i.ac to i32
  %i.da = add nsw i32 %i.cz, 32799                ; 2 uses
  %.lhs.trunc = trunc nuw i32 %i.da to i16        ; 2 uses
  %i.db = udiv i16 %.lhs.trunc, 100
  %.zext = zext nneg i16 %i.db to i32
  %i.dc = mul nuw nsw i32 %i.da, 1461
  %i.dd = lshr i32 %i.dc, 2
  %i.de = udiv i16 %.lhs.trunc, 400
  %.zext155.a = zext nneg i16 %i.de to i32
  %reass.sub160.i = add nsw i32 %i.dd, -12699116
  %i.df = sub nsw i32 %reass.sub160.i, %.zext
  %i.dg = add nsw i32 %i.df, %.zext155.a
  %i.dh = mul i32 %i.dg, 613566757
  %i.di = add i32 %i.dh, -1879048192
  %i.dj = lshr i32 %i.di, 29                      ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ae, label %bb.af, !prof !150

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i63
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #24, !noalias !286
  unreachable

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i63
  %i.dl = trunc nuw nsw i32 %i.dj to i16          ; 2 uses
  %i.dm = icmp eq i8 %i.cq, 0
  br i1 %i.dm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dn = xor i16 %i.cv, 7
  %i.do = add nuw nsw i16 %i.dn, %i.dl            ; 2 uses
  %i.dp = sub nsw i16 8, %i.do
  %i.dq = icmp eq i16 %i.do, 8
  br i1 %i.dq, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.dr = mul nsw i16 %i.ct, 7
  %reass.sub = sub nsw i16 %i.dr, %i.dl
  %i.ds = add nsw i16 %reass.sub, 1
  %i.dt = add nsw i16 %i.ds, %i.cv
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !285
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.cs, ptr %i.du, align 1, !noalias !285
  store i8 12, ptr %i.m, align 8, !noalias !285
  %i.dv = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m) #21, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !285
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ag, %bb.ah
  %.sroa.068.0.i = phi i16 [ %i.dp, %bb.ag ], [ %i.dt, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !285
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  store i32 %.sroa.016.0.insert.insert.i.i62, ptr %i.dw, align 2, !noalias !285
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 2, ptr %i.dx, align 2, !noalias !285
  store i8 0, ptr %i.k, align 2, !noalias !285
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  store i8 1, ptr %i.dy, align 2, !noalias !285
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i16 %.sroa.068.0.i, ptr %.sroa.595.0..sroa_idx.i, align 2, !noalias !285
  call fastcc void @_RNvMsE_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_8DateWith5build(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(14) %i.k) #23, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !285
  %i.dz = load i16, ptr %i.l, align 8, !range !217, !noalias !285, !noundef !32
  %i.ea = trunc nuw i16 %i.dz to i1
  br i1 %i.ea, label %bb.ak, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime21to_date_from_week_sun.exit

bb.ak:                                            ; preds = %bb.aj
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !285, !noundef !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !289
  store ptr %i.ec, ptr %i.i, align 8, !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !289
  store i8 9, ptr %i.h, align 8, !noalias !285
  %i.ed = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ap unwind label %bb.al, !noalias !289

bb.al:                                            ; preds = %bb.ak
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ef = icmp eq ptr %i.ec, null
  br i1 %i.ef, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eg = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !292
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.an, label %common.resume

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #21
          to label %common.resume unwind label %bb.ao, !noalias !289

bb.ao:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !289
  unreachable

bb.ap:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !289
  %i.ej = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ec, ptr noundef %i.ed), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !289
  br label %bb.aq

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime21to_date_from_week_sun.exit: ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %.sroa.0113.0.copyload.i = load i32, ptr %i.ek, align 2, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread140

bb.aq:                                            ; preds = %bb.ad, %bb.ai, %bb.ap
  %.sroa.15.0.ph = phi ptr [ %i.ej, %bb.ap ], [ %i.dv, %bb.ai ], [ %i.cy, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.15.0.ph, ptr %i.el, align 8
  br label %bb.bn

bb.ar:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.en = load i8, ptr %i.em, align 4, !range !219, !alias.scope !301, !noalias !304, !noundef !32
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 101
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !301, !noalias !304 ; 2 uses
  %or.cond.not.i67 = and i1 %.not.i, %i.eo
  br i1 %or.cond.not.i67, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i68, label %bb.bi

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i68: ; preds = %bb.ar
  %i.er = sext i8 %i.eq to i16
  %i.es = add nsw i8 %i.cs, -1
  %i.et = zext nneg i8 %i.es to i16               ; 2 uses
  %i.eu = add i16 %i.ac, -10000
  %or.cond.i.i69 = icmp ult i16 %i.eu, -19999
  %.sroa.016.0.insert.ext.i.i70 = zext i16 %i.ac to i32
  %.sroa.016.0.insert.insert.i.i71 = or disjoint i32 %.sroa.016.0.insert.ext.i.i70, 16842752
  br i1 %or.cond.i.i69, label %bb.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i72, !prof !157

bb.as:                                            ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i68
  %i.ev = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 8447) #21, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !306
  store i8 9, ptr %i.d, align 8, !noalias !306
  %i.ew = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noundef %i.ev) #23, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !306
  br label %bb.bh

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i72: ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i68
  %i.ex = sext i16 %i.ac to i32
  %i.ey = add nsw i32 %i.ex, 32799                ; 2 uses
  %.lhs.trunc156 = trunc nuw i32 %i.ey to i16     ; 2 uses
  %i.ez = udiv i16 %.lhs.trunc156, 100
  %.zext157.a = zext nneg i16 %i.ez to i32
  %i.fa = mul nuw nsw i32 %i.ey, 1461
  %i.fb = lshr i32 %i.fa, 2
  %i.fc = udiv i16 %.lhs.trunc156, 400
  %.zext159 = zext nneg i16 %i.fc to i32
  %reass.sub.i = add nsw i32 %i.fb, -12699116
  %i.fd = sub nsw i32 %reass.sub.i, %.zext157.a
  %i.fe = add nsw i32 %i.fd, %.zext159
  %i.ff = mul i32 %i.fe, 613566757
  %i.fg = add i32 %i.ff, -1879048192
  %i.fh = lshr i32 %i.fg, 29                      ; 3 uses
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.at, label %bb.au, !prof !150

bb.at:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i72
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #24, !noalias !307
  unreachable

bb.au:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i72
  %.not153.i = icmp eq i32 %i.fh, 1
  %i.fj = shl nuw nsw i32 %i.fh, 24
  %i.fk = sub nuw nsw i32 150994944, %i.fj
  %.sroa.518.0.insert.shift.i.i.i.i = select i1 %.not153.i, i32 16777216, i32 %i.fk ; 2 uses
  %.sroa.016.0.insert.insert.i.i.i.i = lshr exact i32 %.sroa.518.0.insert.shift.i.i.i.i, 16
  %.sroa.4.0.extract.shift.i.i = or disjoint i32 %.sroa.016.0.insert.insert.i.i.i.i, 1
  %.sroa.4.0.extract.trunc.i.i = zext nneg i32 %.sroa.4.0.extract.shift.i.i to i64
  %sext.i121.i = shl i64 %.sroa.4.0.extract.trunc.i.i, 56
  %i.fl = ashr exact i64 %sext.i121.i, 56         ; 3 uses
  %i.fm = icmp ult i64 %i.fl, 14
  br i1 %i.fm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultsNtBK_5ErrorEINtBK_12ErrorContextsB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fl, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !306
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultsNtBK_5ErrorEINtBK_12ErrorContextsB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i: ; preds = %bb.au
  %i.fn = srem i16 %i.ac, 25
  %i.fo = icmp eq i16 %i.fn, 0
  %..i.i.i78 = select i1 %i.fo, i16 15, i16 3
  %i.fp = and i16 %..i.i.i78, %i.ac
  %i.fq = icmp eq i16 %i.fp, 0
  %.sroa.sel.i.i = select i1 %i.fq, ptr getelementptr inbounds nuw (i8, ptr @23, i64 28), ptr @23
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.sel.i.i, i64 %i.fl
  %i.fs = load i16, ptr %i.fr, align 2, !noalias !306, !noundef !32
  %i.ft = lshr exact i32 %.sroa.518.0.insert.shift.i.i.i.i, 24
  %i.fu = trunc nuw nsw i32 %i.ft to i16
  %i.fv = add i16 %i.fs, %i.fu                    ; 2 uses
  %i.fw = icmp eq i8 %i.eq, 0
  br i1 %i.fw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultsNtBK_5ErrorEINtBK_12ErrorContextsB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i
  %i.fx = sub nuw nsw i16 7, %i.et
  %i.fy = tail call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.fv, i16 %i.fx) ; 2 uses
  %i.fz = extractvalue { i16, i1 } %i.fy, 1
  br i1 %i.fz, label %bb.ay, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit.i, !prof !157

bb.ax:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultsNtBK_5ErrorEINtBK_12ErrorContextsB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i
  %i.ga = mul nsw i16 %i.er, 7
  %i.gb = add nsw i16 %i.ga, -7
  %i.gc = add nsw i16 %i.gb, %i.et
  %i.gd = add i16 %i.gc, %i.fv
  br label %bb.ba

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit.i: ; preds = %bb.aw
  %i.ge = extractvalue { i16, i1 } %i.fy, 0       ; 2 uses
  %i.gf = icmp eq i16 %i.ge, 0
  br i1 %i.gf, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !306
  store i8 11, ptr %i.c, align 8, !noalias !306
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.cs, ptr %.sroa.463.0..sroa_idx.i, align 1, !noalias !306
  %i.gg = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) #21, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !306
  br label %bb.bh

bb.az:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !306
  %i.gh = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.cs, ptr %i.gh, align 1, !noalias !306
  store i8 11, ptr %i.g, align 8, !noalias !306
  %i.gi = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g) #21, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !306
  br label %bb.bh

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit.i, %bb.ax
  %.sroa.066.0.i = phi i16 [ %i.ge, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit.i ], [ %i.gd, %bb.ax ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !306
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i32 %.sroa.016.0.insert.insert.i.i71, ptr %i.gj, align 2, !noalias !306
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 2, ptr %i.gk, align 2, !noalias !306
  store i8 0, ptr %i.e, align 2, !noalias !306
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i8 1, ptr %i.gl, align 2, !noalias !306
  %.sroa.593.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %.sroa.066.0.i, ptr %.sroa.593.0..sroa_idx.i, align 2, !noalias !306
  call fastcc void @_RNvMsE_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_8DateWith5build(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(14) %i.e) #23, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !306
  %i.gm = load i16, ptr %i.f, align 8, !range !217, !noalias !306, !noundef !32
  %i.gn = trunc nuw i16 %i.gm to i1
  br i1 %i.gn, label %bb.bb, label %.thread149

bb.bb:                                            ; preds = %bb.ba
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !306, !noundef !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !310
  store ptr %i.gp, ptr %i.b, align 8, !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !310
  store i8 9, ptr %i.a, align 8, !noalias !306
  %i.gq = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.bg unwind label %bb.bc, !noalias !310

bb.bc:                                            ; preds = %bb.bb
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gs = icmp eq ptr %i.gp, null
  br i1 %i.gs, label %common.resume, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gt = atomicrmw sub ptr %i.gp, i64 1 release, align 8, !noalias !313
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %bb.be, label %common.resume

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %common.resume unwind label %bb.bf, !noalias !310

bb.bf:                                            ; preds = %bb.be
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !310
  unreachable

bb.bg:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !310
  %i.gw = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.gp, ptr noundef %i.gq), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !310
  br label %bb.bh

.thread149:                                       ; preds = %bb.ba
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.0111.0.copyload.i = load i32, ptr %i.gx, align 2, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread140

bb.bh:                                            ; preds = %bb.as, %bb.ay, %bb.az, %bb.bg
  %.sroa.16.0.ph = phi ptr [ %i.gw, %bb.bg ], [ %i.gi, %bb.az ], [ %i.gg, %bb.ay ], [ %i.ew, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.16.0.ph, ptr %i.gy, align 8
  br label %bb.bn

.thread140:                                       ; preds = %.thread149, %.thread96, %bb.m, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime24to_date_from_day_of_year.exit, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime21to_date_from_week_sun.exit
  %.sroa.10.3143 = phi i32 [ %.sroa.0111.0.copyload.i, %.thread149 ], [ %.sroa.0113.0.copyload.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime21to_date_from_week_sun.exit ], [ %.sroa.030.0.copyload.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime24to_date_from_day_of_year.exit ], [ %.sroa.016.0.insert.insert.i.i, %.thread96 ], [ %.sroa.439.0.copyload, %bb.m ] ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.ha = load i8, ptr %i.gz, align 1, !range !218, !noundef !32 ; 3 uses
  %.not51.a = icmp eq i8 %i.ha, 0
  br i1 %.not51.a, label %bb.bl, label %bb.bj

bb.bi:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i8 27, ptr %i.u, align 8
  %i.hb = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hb, ptr %i.hc, align 8
  br label %bb.bn

bb.bj:                                            ; preds = %.thread140
  %i.hd = shl i32 %.sroa.10.3143, 8
  %i.he = ashr i32 %i.hd, 24                      ; 3 uses
  %i.hf = icmp ult i32 %i.he, 3                   ; 2 uses
  %i.hg = or disjoint i32 %i.he, 12
  %.sroa.02.0.i.i = select i1 %i.hf, i32 %i.hg, i32 %i.he
  %sext.i.i = shl i32 %.sroa.10.3143, 16
  %i.hh = ashr exact i32 %sext.i.i, 16
  %i.hi = add nsw i32 %i.hh, 32800
  %.neg.i.i = sext i1 %i.hf to i32
  %i.hj = add nsw i32 %i.hi, %.neg.i.i            ; 3 uses
  %i.hk = ashr i32 %.sroa.10.3143, 24
  %i.hl = udiv i32 %i.hj, 100
  %i.hm = mul nuw nsw i32 %i.hj, 1461
  %i.hn = lshr i32 %i.hm, 2
  %i.ho = udiv i32 %i.hj, 400
  %i.hp = mul nsw i32 %.sroa.02.0.i.i, 979
  %i.hq = add nsw i32 %i.hp, -2919
  %i.hr = lshr i32 %i.hq, 5
  %i.hs = add nsw i32 %i.hk, -12699423
  %i.ht = sub nuw nsw i32 %i.hs, %i.hl
  %i.hu = add nuw nsw i32 %i.ht, %i.ho
  %i.hv = add nsw i32 %i.hu, %i.hn
  %i.hw = add nsw i32 %i.hv, %i.hr
  %i.hx = mul i32 %i.hw, 613566757
  %i.hy = add i32 %i.hx, -1879048192
  %i.hz = lshr i32 %i.hy, 29                      ; 2 uses
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.bk, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit, !prof !150

bb.bk:                                            ; preds = %bb.bj
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #24
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit: ; preds = %bb.bj
  %i.ib = trunc nuw nsw i32 %i.hz to i8
  %.not52 = icmp eq i8 %i.ha, %i.ib
  br i1 %.not52, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit, %.thread140
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.10.3143, ptr %i.ic, align 2
  br label %bb.bn

bb.bm:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.id = tail call fastcc noundef i8 @_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday(i32 noundef %.sroa.10.3143) #23
  %i.ie = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 %i.ha, ptr %i.ie, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %i.id, ptr %i.if, align 2
  store i8 14, ptr %i.t, align 8
  %i.ig = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ig, ptr %i.ih, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %bb.bq, %bb.l, %bb.o, %bb.ab, %bb.aq, %bb.bh, %bb.bi, %bb.bm, %bb.br, %bb.bl
  %.sink = phi i16 [ 1, %bb.l ], [ 1, %bb.o ], [ 1, %bb.ab ], [ 1, %bb.aq ], [ 1, %bb.bh ], [ 1, %bb.bi ], [ 1, %bb.bm ], [ 0, %bb.bl ], [ 1, %bb.br ], [ 0, %bb.bq ], [ 1, %bb.bo ]
  store i16 %.sink, ptr %0, align 8
  ret void

bb.bo:                                            ; preds = %bb.k
  %i.ii = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !noundef !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ij, ptr %i.ik, align 8
  br label %bb.bn

bb.bp:                                            ; preds = %bb.k
  %i.il = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.sroa.035.0.copyload = load i16, ptr %i.il, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.im = trunc i16 %.sroa.035.0.copyload to i1
  br i1 %i.im, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.4.0.copyload, ptr %i.in, align 2
  br label %bb.bn

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 29, ptr %i.w, align 8
  %i.io = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.io, ptr %i.ip, align 8
  br label %bb.bn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B3v_NtB3v_18ZoneInfoNamesInner9available0ENCB4y_s_0EE9from_iterB3D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %2, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !331
  store ptr %i.n, ptr %i.h, align 8, !noalias !333
  %i.o = icmp eq ptr %1, %2
  br i1 %i.o, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.q, %bb.b ], [ %1, %bb.a ]   ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTimeINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtB9_5zoned5ZonedE4from:bb.a
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 2 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 35
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1 ; 2 uses
  %i.bt = icmp sgt i8 %.sroa.4.0.copyload, 11
  %..i = zext i1 %i.bt to i8                      ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i16 1, ptr %i.bu, align 8, !alias.scope !398, !noalias !401
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 82
  store i16 %.sroa.715.0.copyload, ptr %i.bv, align 2, !alias.scope !398, !noalias !401
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i8 1, ptr %i.bw, align 4, !alias.scope !398, !noalias !401
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 93
  store i8 %.sroa.8.0.copyload, ptr %i.bx, align 1, !alias.scope !398, !noalias !401
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 94
  store i8 1, ptr %i.by, align 2, !alias.scope !398, !noalias !401
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 95
  store i8 %.sroa.9.0.copyload, ptr %i.bz, align 1, !alias.scope !398, !noalias !401
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i16 0, ptr %i.ca, align 4, !alias.scope !398, !noalias !401
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i16 0, ptr %i.cb, align 8, !alias.scope !398, !noalias !401
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i8 0, ptr %i.cc, align 8, !alias.scope !398, !noalias !401
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  store i8 0, ptr %i.cd, align 2, !alias.scope !398, !noalias !401
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i8 0, ptr %i.ce, align 4, !alias.scope !398, !noalias !401
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 102
  store i8 1, ptr %i.cf, align 2, !alias.scope !398, !noalias !401
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 103
  store i8 %.sroa.4.0.copyload, ptr %i.cg, align 1, !alias.scope !398, !noalias !401
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 1, ptr %i.ch, align 8, !alias.scope !398, !noalias !401
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  store i8 %.sroa.5.0.copyload, ptr %i.ci, align 1, !alias.scope !398, !noalias !401
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 106
  store i8 1, ptr %i.cj, align 2, !alias.scope !398, !noalias !401
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 107
  store i8 %.sroa.6.0.copyload, ptr %i.ck, align 1, !alias.scope !398, !noalias !401
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 1, ptr %i.cl, align 8, !alias.scope !398, !noalias !401
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %.sroa.0.0.copyload, ptr %i.cm, align 4, !alias.scope !398, !noalias !401
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.cn, align 8, !alias.scope !398, !noalias !401
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 109
  store i8 0, ptr %i.co, align 1, !alias.scope !398, !noalias !401
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i8 %..i, ptr %i.cp, align 4, !alias.scope !398, !noalias !401
  store i64 0, ptr %i.b, align 8, !alias.scope !398, !noalias !401
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cq, align 8, !alias.scope !398, !noalias !401
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 -1, ptr %i.cr, align 8, !alias.scope !398, !noalias !401
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 1, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %.sroa.8.0.copyload, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i8 1, ptr %i.cv, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 %.sroa.9.0.copyload, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 86
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = insertelement <4 x i16> <i16 1, i16 poison, i16 0, i16 poison>, i16 %.sroa.715.0.copyload, i64 1
  %i.da = insertelement <4 x i16> %i.cz, i16 %i.cy, i64 3
  store <4 x i16> %i.da, ptr %i.cs, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 90
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 0, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 %i.dc, ptr %i.de, align 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %i.dg, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 99
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.dl, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 99
  store i8 %i.dk, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 101
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 0, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %i.do, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 1, ptr %i.dr, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %.sroa.4.0.copyload, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %.sroa.5.0.copyload, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 1, ptr %i.dv, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %.sroa.6.0.copyload, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.0.0.copyload, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.bb, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 0, ptr %i.eb, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 %..i, ptr %i.ec, align 4
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %.sroa.54.0..sroa_idx, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val, ptr %i.ee, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime14BrokenDownTimeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.z:                                             ; preds = %bb.ab
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit13: ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %i.eg

bb.aa:                                            ; preds = %bb.w, %bb.u
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br i1 %i.az, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit13, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit13 unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTimeINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB9_9timestamp9TimestampE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, 378683424000                 ; 2 uses
  %i.b = udiv i64 %i.a, 86400
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = urem i64 %i.a, 86400                     ; 2 uses
  %i.e = trunc nuw nsw i64 %i.d to i32            ; 2 uses
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.d, 0
  %i.g = add nsw i32 %2, 1000000000               ; 2 uses
  br i1 %.not.i, label %.thread.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.09.0.i = phi i32 [ %i.k, %bb.d ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %i.g, %bb.d ], [ %2, %bb.a ] ; 3 uses
  %i.h = add i32 %i.c, -11323
  %or.cond.i = icmp ult i32 %i.h, 7304484
  br i1 %or.cond.i, label %bb.f, label %bb.e, !prof !392

.thread.i:                                        ; preds = %bb.b
  %i.i = add nsw i32 %i.c, -1
  %i.j = add i32 %i.c, -11324
  %or.cond54.i = icmp ult i32 %i.j, 7304484
  br i1 %or.cond54.i, label %.thread67.i, label %bb.e, !prof !392

bb.d:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.e, -1
  br label %bb.c

bb.e:                                             ; preds = %.thread.i, %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #24, !noalias !403
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %.sroa.09.0.i, 0
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = udiv i32 %.sroa.09.0.i, 3600
  %i.n = trunc nuw nsw i32 %i.m to i8             ; 2 uses
  %i.o = urem i32 %.sroa.09.0.i, 3600             ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %.thread67.i

bb.h:                                             ; preds = %.thread67.i, %bb.g, %bb.f
  %.sroa.06.05665.i = phi i32 [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %.sroa.06.0566471.i, %.thread67.i ]
  %.sroa.0.05763.i = phi i32 [ %.sroa.0.0.i, %bb.f ], [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.0576272.i, %.thread67.i ] ; 2 uses
  %.sroa.041.0.i = phi i8 [ 0, %bb.f ], [ %i.n, %bb.g ], [ %i.r, %.thread67.i ] ; 2 uses
  %.sroa.043.0.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.y, %.thread67.i ] ; 3 uses
  %or.cond2.i = icmp ult i32 %.sroa.0.05763.i, 1000000000
  br i1 %or.cond2.i, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit, label %bb.i, !prof !392

.thread67.i:                                      ; preds = %bb.g, %.thread.i
  %i.q = phi i32 [ %i.o, %bb.g ], [ 3599, %.thread.i ]
  %i.r = phi i8 [ %i.n, %bb.g ], [ 23, %.thread.i ]
  %.sroa.0.0576272.i = phi i32 [ %.sroa.0.0.i, %bb.g ], [ %i.g, %.thread.i ]
  %.sroa.06.0566471.i = phi i32 [ %i.c, %bb.g ], [ %i.i, %.thread.i ]
  %.lhs.trunc.i = trunc nuw nsw i32 %i.q to i16   ; 2 uses
  %i.s = udiv i16 %.lhs.trunc.i, 60
  %i.t = zext nneg i16 %i.s to i64
  %i.u = urem i16 %.lhs.trunc.i, 60
  %i.v = zext nneg i16 %i.u to i64
  %i.w = shl nuw nsw i64 %i.t, 40
  %i.x = shl nuw nsw i64 %i.v, 48
  %3 = and i64 %i.w, 280375465082880
  %i.y = or disjoint i64 %3, %i.x
  br label %bb.h

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #24, !noalias !403
  unreachable

_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit: ; preds = %bb.h
  %i.z = shl nuw nsw i32 %.sroa.06.05665.i, 2
  %i.aa = add nuw nsw i32 %i.z, 33266051          ; 2 uses
  %i.ab = urem i32 %i.aa, 146097
  %i.ac = or i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 2939745          ; 2 uses
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = udiv i32 %i.af, 11758980
  %i.ah = mul nuw nsw i32 %i.ag, 2141
  %i.ai = add nuw nsw i32 %i.ah, 197913           ; 3 uses
  %.lhs.trunc.i.i = trunc i32 %i.ai to i16
  %i.aj = udiv i16 %.lhs.trunc.i.i, 2141
  %i.ak = icmp ugt i32 %i.af, -696719417          ; 2 uses
  %i.al = and i32 %i.ai, 4128768
  %i.am = add nuw nsw i32 %i.al, 15990784
  %.sroa.2.0.insert.ext.i.i = select i1 %i.ak, i32 %i.am, i32 %i.ai
  %i.an = udiv i32 %i.aa, 146097
  %i.ao = mul nuw nsw i32 %i.an, 100
  %i.ap = add nuw nsw i32 %i.ao, 32736
  %i.aq = lshr i64 %i.ae, 32
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ap, %i.ar
  %i.at = zext i1 %i.ak to i32
  %i.au = add nuw nsw i32 %i.as, %i.at
  %.sroa.7.8.extract.trunc = trunc i32 %i.au to i16
  %.sroa.7.10.extract.shift = lshr i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.7.10.extract.trunc = trunc i32 %.sroa.7.10.extract.shift to i8
  %i.av = trunc nuw nsw i16 %i.aj to i8
  %.sroa.7.11.extract.trunc = add nuw nsw i8 %i.av, 1
  %.sroa.0.5.extract.shift = lshr i64 %.sroa.043.0.i, 40
  %.sroa.0.5.extract.trunc = trunc i64 %.sroa.0.5.extract.shift to i8
  %.sroa.0.6.extract.shift = lshr i64 %.sroa.043.0.i, 48
  %.sroa.0.6.extract.trunc = trunc nuw nsw i64 %.sroa.0.6.extract.shift to i8
  %.sroa.0.0.extract.trunc.a = trunc i64 %.sroa.043.0.i to i32
  %.sroa.0.0.extract.trunc = or i32 %.sroa.0.05763.i, %.sroa.0.0.extract.trunc.a
  %4 = icmp samesign ugt i8 %.sroa.041.0.i, 11
  %..i = zext i1 %4 to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i16 %.sroa.7.8.extract.trunc, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 1, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %.sroa.7.10.extract.trunc, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i8 1, ptr %i.ba, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 %.sroa.7.11.extract.trunc, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 0, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 0, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 1, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %.sroa.041.0.i, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %.sroa.0.5.extract.trunc, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 1, ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %.sroa.0.6.extract.trunc, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.0.0.extract.trunc, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 0, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 %..i, ptr %i.bs, align 4
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %i.bu, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @_RNvXs7_NtCsa9sSWSfjDbm_4jiff3fmtINtB5_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtB5_5Write9write_strB7_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = tail call noundef zeroext i1 @_RNvXNtCs3oUPovFnLWP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_strCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 3, ptr %i.a, align 8
  %i.c = call noundef ptr @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E13with_capacityBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !range !38, !noundef !32
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !159, !noundef !32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit, !prof !157

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #25
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !32, !noundef !32
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !32, !noundef !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !32 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !151, !noundef !32
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsa9sSWSfjDbm_4jiff9timestamp9TimestampENtNtB7_3fmt5Debug3fmtBO_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !38, !noundef !32
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !406, !noundef !32
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !38, !noundef !32
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime8MeridiemENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !239, !noundef !32
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !218, !noundef !32
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_1
