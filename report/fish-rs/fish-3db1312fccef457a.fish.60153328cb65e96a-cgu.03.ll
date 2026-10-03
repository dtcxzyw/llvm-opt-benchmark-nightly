Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.03?download=true
inline.NumInlined: 2355
inline.NumDeleted: 813
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion3new:bb.a
  %i.e = and i16 %4, 4
  %.not.i = icmp eq i16 %i.e, 0
  br i1 %.not.i, label %_RNvNtCs8frGy5WneL6_4fish8complete18resolve_auto_space.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i16 %4, -5                           ; 3 uses
  %.not5.i = icmp eq i64 %i.d, 0
  br i1 %.not5.i, label %_RNvNtCs8frGy5WneL6_4fish8complete18resolve_auto_space.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr [4 x i8], ptr %i.b, i64 %i.d
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !range !26, !alias.scope !812, !noundef !5
  switch i32 %i.i, label %_RNvNtCs8frGy5WneL6_4fish8complete18resolve_auto_space.exit [
    i32 47, label %bb.d
    i32 61, label %bb.d
    i32 64, label %bb.d
    i32 58, label %bb.d
    i32 46, label %bb.d
    i32 44, label %bb.d
    i32 45, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.j = or i16 %i.f, 1
  br label %_RNvNtCs8frGy5WneL6_4fish8complete18resolve_auto_space.exit

_RNvNtCs8frGy5WneL6_4fish8complete18resolve_auto_space.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i16 [ %4, %bb.a ], [ %i.j, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.06.2.extract.shift = lshr i24 %3, 16
  %i.k = and i24 %3, 65280
  %.not = icmp ne i24 %i.k, 0
  %trunc = trunc nuw i24 %.sroa.06.2.extract.shift to i8 ; 2 uses
  %i.l = and i8 %trunc, -2
  %switch = icmp eq i8 %i.l, 2
  %or.cond = select i1 %.not, i1 true, i1 %switch
  %i.m = or i16 %.sroa.0.0.i, 2
  %.sroa.07.0 = select i1 %or.cond, i16 %i.m, i16 %.sroa.0.0.i
  %.sroa.06.1.extract.shift = lshr i24 %3, 8
  %.sroa.06.1.extract.trunc = trunc i24 %.sroa.06.1.extract.shift to i8
  %.sroa.06.0.extract.trunc = trunc i24 %3 to i8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %.sroa.06.0.extract.trunc, ptr %i.o, align 2
  %.sroa.2.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 51
  store i8 %.sroa.06.1.extract.trunc, ptr %.sroa.2.0..sroa_idx2, align 1
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %trunc, ptr %.sroa.3.0..sroa_idx4, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %.sroa.07.0, ptr %i.p, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 31) i32 @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion4rank(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load i8, ptr %i.b, align 4, !range !25, !alias.scope !815, !noundef !5 ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  %i.e = shl nuw nsw i8 %i.c, 2
  %narrow.i = select i1 %i.d, i8 4, i8 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.g = load i8, ptr %i.f, align 1, !range !7, !alias.scope !815, !noundef !5 ; 2 uses
  %i.h = icmp eq i8 %i.g, 1
  %narrow3.i = select i1 %i.h, i8 0, i8 %i.g
  %i.i = load i8, ptr %i.a, align 2, !range !4, !alias.scope !815, !noundef !5
  %i.j = shl nuw nsw i8 %i.i, 4
  %i.k = or disjoint i8 %i.j, %narrow.i
  %i.l = or disjoint i8 %i.k, %narrow3.i
  %i.m = zext nneg i8 %i.l to i32
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion9with_desc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 53)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !822, !noalias !821
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !823, !noalias !820
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.b, i8 0, i64 5, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB5_12RegexMatcher12report_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr nofree readonly captures(none) %.104.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %3, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [96 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = load i64, ptr %3, align 8, !range !13, !noundef !5
  %.not = icmp eq i64 %i.m, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.104.val) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.104.val, i64 28
  %i.o = load i8, ptr %i.n, align 4, !range !4, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.104.val) ]
  %i.q = getelementptr inbounds nuw i8, ptr %.104.val, i64 28 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !range !4, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.ak, label %bb.aj

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.104.val, i64 29
  %i.u = load i8, ptr %i.t, align 1, !range !4, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8n0tpEuULLm_5pcre210regex_impl8CapturesNtNtBG_3ffi15CodeUnitWidth32EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.h)
  br label %bb.ai

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.104.val, i64 25 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !range !4, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %.thread

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  br label %bb.ai

bb.h:                                             ; preds = %bb.i
  %.pre = load i8, ptr %i.w, align 1, !range !4
  %i.z = trunc nuw i8 %.pre to i1
  br i1 %i.z, label %bb.j, label %.thread

bb.i:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.aa = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.h unwind label %.loopexit.split-lp11 ; 0 uses

.body34:                                          ; preds = %.loopexit10, %.loopexit.split-lp11, %bb.ag, %bb.ae, %.body
  %.pn28 = phi { ptr, i32 } [ %i.bn, %bb.ae ], [ %.pn26, %.body ], [ %i.bo, %bb.ag ], [ %lpad.loopexit12, %.loopexit10 ], [ %lpad.loopexit.split-lp13, %.loopexit.split-lp11 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8n0tpEuULLm_5pcre210regex_impl8CapturesNtNtBG_3ffi15CodeUnitWidth32EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.h) #35
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit10:                                      ; preds = %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %lpad.loopexit12 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp11:                             ; preds = %bb.i, %bb.t
  %lpad.loopexit.split-lp13 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.thread:                                          ; preds = %bb.f, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.104.val, i64 26
  %i.ac = load i8, ptr %i.ab, align 2, !range !4, !noundef !5
  %i.ad = zext nneg i8 %i.ac to i64
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h
  %.sroa.03.0 = phi i64 [ %i.ad, %.thread ], [ 1, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !noundef !5
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = icmp samesign ult i64 %.sroa.03.0, %i.ag
  br i1 %i.ah, label %.lr.ph.i.lr.ph, label %.loopexit8

.lr.ph.i.lr.ph:                                   ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.104.val, i64 31
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %.lr.ph.i

bb.k:                                             ; preds = %bb.x, %bb.t
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.u
  %.sroa.4.029 = phi i64 [ %.sroa.03.0, %.lr.ph.i.lr.ph ], [ %i.ap, %bb.u ]
  %.val.i.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !842, !noundef !5 ; 3 uses
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 8, !noalias !842, !noundef !5
  %i.an = zext i32 %.val1.i.i.i.i to i64
  %4 = shl nuw nsw i64 %i.an, 1                   ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.lr.ph.i
  %i.ao = phi i64 [ %.sroa.4.029, %.lr.ph.i ], [ %i.ap, %bb.o ] ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 4 uses
  %5 = shl nuw i64 %i.ao, 1                       ; 3 uses
  %i.aq = icmp ult i64 %5, %4
  br i1 %i.aq, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %6 = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.ar = load i64, ptr %6, align 8, !noalias !843, !noundef !5 ; 7 uses
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %bb.o, label %7

7:                                                ; preds = %bb.m
  %8 = or disjoint i64 %5, 1                      ; 2 uses
  %9 = icmp samesign ult i64 %8, %4
  br i1 %9, label %bb.n, label %bb.o

bb.n:                                             ; preds = %7
  %10 = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %8
  %i.at = load i64, ptr %10, align 8, !noalias !843, !noundef !5 ; 6 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %7, %bb.m, %bb.l
  %exitcond.not.i = icmp eq i64 %i.ap, %i.ag
  br i1 %exitcond.not.i, label %.loopexit8, label %bb.l

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr %i.aj, align 1, !range !4, !noundef !5
  %i.aw = trunc nuw i8 %i.av to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br i1 %i.aw, label %bb.v, label %bb.r

.loopexit8:                                       ; preds = %bb.u, %bb.o, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.q

bb.q:                                             ; preds = %bb.ax, %bb.aw, %bb.ai, %.loopexit8
  ret void

bb.r:                                             ; preds = %bb.p
  %i.ax = icmp ult i64 %i.at, %i.ar
  %.not25 = icmp ugt i64 %i.at, %2
  %or.cond = or i1 %i.ax, %.not25
  br i1 %or.cond, label %bb.t, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.ay = sub nuw i64 %i.at, %i.ar
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar
  %i.ba = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.az, i64 noundef %i.ay)
          to label %bb.u unwind label %.loopexit10 ; 0 uses

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #34
          to label %bb.k unwind label %.loopexit.split-lp11

bb.u:                                             ; preds = %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.bb = icmp ult i64 %i.ap, %i.ag
  br i1 %i.bb, label %.lr.ph.i, label %.loopexit8

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.418.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.519.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bc = add nuw i64 %i.ar, 1
  store i64 %i.bc, ptr %i.ak, align 8
  store i64 4, ptr %i.c, align 8
  %i.bd = icmp ult i64 %i.at, %i.ar
  br i1 %i.bd, label %bb.x, label %bb.w

.body:                                            ; preds = %.peel.begin, %bb.ac, %bb.z, %bb.y
  %.pn26 = phi { ptr, i32 } [ %lpad.phi18, %bb.z ], [ %i.bf, %bb.y ], [ %i.bm, %bb.ac ], [ %i.bm, %.peel.begin ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #35
          to label %.body34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.be = sub nuw i64 %i.at, %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i64 4, ptr %i.al, align 8
  store i64 %i.be, ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 6, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @48, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef 2)
          to label %bb.aa unwind label %.loopexit14

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #34
          to label %bb.k unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #35
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit14:                                      ; preds = %bb.w
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp15:                             ; preds = %bb.ab
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp15, %.loopexit14
  %lpad.phi18 = phi { ptr, i32 } [ %lpad.loopexit16, %.loopexit14 ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp15 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #35
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.bg = load i8, ptr %i.e, align 8, !range !4, !alias.scope !844, !noalias !845, !noundef !5
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.ab, label %.preheader.preheader, !prof !11

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !846
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !range !24, !alias.scope !844, !noalias !845, !noundef !5
  store i8 %i.bj, ptr %i.a, align 1, !noalias !846
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #31
          to label %.noexc31 unwind label %.loopexit.split-lp15

.noexc31:                                         ; preds = %bb.ab
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am)
          to label %.preheader.1 unwind label %.peel.begin

.preheader.1:                                     ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bk = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.af unwind label %bb.ae     ; 0 uses

.preheader.preheader:                             ; preds = %bb.aa
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
          to label %.preheader unwind label %.peel.begin

.peel.begin:                                      ; preds = %.preheader, %.preheader.preheader
  %i.bl = phi i1 [ false, %.preheader.preheader ], [ true, %.preheader ]
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bl, label %.body, label %bb.ac

bb.ac:                                            ; preds = %.peel.begin
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.al) #35
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ae:                                            ; preds = %.preheader.1
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #35
          to label %.body34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %.preheader.1
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body34 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.af
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ao, %.body34, %.body, %bb.y, %bb.z, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.as
  %lpad.loopexit.split-lp51 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.au, %.body34, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %.pn28, %.body34 ], [ %i.cg, %bb.as ], [ %i.ch, %bb.au ]
  resume { ptr, i32 } %common.resume.op

bb.ai:                                            ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.q

bb.aj:                                            ; preds = %bb.am, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit42, %bb.ak, %bb.c
  %i.bq = load i8, ptr %i.q, align 4, !range !4, !noundef !5
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ax, label %bb.aw

bb.ak:                                            ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %.104.val, i64 29
  %i.bt = load i8, ptr %i.bs, align 1, !range !4, !noundef !5
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.aj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = getelementptr inbounds nuw i8, ptr %.104.val, i64 31
  %i.bw = load i8, ptr %i.bv, align 1, !range !4, !noundef !5
  %i.bx = trunc nuw i8 %i.bw to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br i1 %i.bx, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.by = tail call noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) ; 0 uses
  br label %bb.aj

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 4, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 5, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @48, ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef 1)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.ca = load i8, ptr %i.j, align 8, !range !4, !alias.scope !847, !noalias !848, !noundef !5
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.aq, label %.noexc38.preheader, !prof !11

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !849
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !range !24, !alias.scope !847, !noalias !848, !noundef !5
  store i8 %i.cd, ptr %i.b, align 1, !noalias !849
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #31
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.aq
  unreachable

.noexc38.preheader:                               ; preds = %bb.ap
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39 unwind label %bb.ar

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.ao, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.ar ], [ %i.bz, %bb.ao ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #35
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %.noexc38.preheader
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39: ; preds = %.noexc38.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cf = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.at unwind label %bb.as     ; 0 uses

bb.as:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #35
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit42 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit42: ; preds = %bb.at
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.aj

bb.aw:                                            ; preds = %bb.aj
  store i64 -1, ptr %0, align 8
  br label %bb.q

bb.ax:                                            ; preds = %bb.aj
  store i64 2, ptr %0, align 8
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB5_12RegexMatcher28populate_captures_from_match(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i8 %.24.val, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE8iter_mutCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  %i.f = call { ptr, ptr } @_RNvXsK_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7IterMutNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 2 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not13 = icmp eq ptr %1, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = trunc nuw i8 %.24.val to i1              ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %.not13, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.m, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17.us.us
  %i.n = phi ptr [ %i.y, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17.us.us ], [ %i.h, %.lr.ph.split.us ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !876, !noalias !877, !noundef !5 ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !range !12, !alias.scope !876, !noalias !877, !noundef !5
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17.us.us

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17.us.us unwind label %.split.us.split.us, !noalias !877

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17.us.us: ; preds = %bb.b, %.lr.ph.split.us.split.us
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !876, !noalias !877, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.v = add i64 %i.p, 1
  store i64 %i.v, ptr %i.o, align 8, !alias.scope !876, !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = call { ptr, ptr } @_RNvXsK_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7IterMutNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  %.not.us.us = icmp eq ptr %i.x, null
  br i1 %.not.us.us, label %._crit_edge, label %.lr.ph.split.us.split.us

.split.us.split.us:                               ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split
  %i.aa = call { ptr, ptr } @_RNvXsK_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7IterMutNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %.not.us = icmp eq ptr %i.ab, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.val.i.i = load ptr, ptr %i.af, align 8        ; 3 uses
  %.val3.i.i = load i32, ptr %i.ae, align 8
  %i.am = zext i32 %.val3.i.i to i64
  %2 = shl nuw nsw i64 %i.am, 1                   ; 2 uses
  %i.an = load i64, ptr %i.ad, align 8
  %i.ao = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !21
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split, %bb.aa
  %i.ap = phi ptr [ %i.h, %.lr.ph.split ], [ %i.db, %bb.aa ] ; 9 uses
  %i.aq = phi ptr [ %i.g, %.lr.ph.split ], [ %i.da, %bb.aa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !878
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq), !noalias !879
  %i.ar = load ptr, ptr %i.i, align 8, !noalias !878, !nonnull !5, !noundef !5 ; 2 uses
  %i.as = load i64, ptr %i.j, align 8, !noalias !878, !noundef !5 ; 2 uses
  %i.at = load i64, ptr %i.ai, align 8, !alias.scope !880, !noalias !881, !noundef !5
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMs9_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_8CapturesNtNtB7_3ffi15CodeUnitWidth32E4nameCs8frGy5WneL6_4fish.exit.i, label %bb.d

._crit_edge:                                      ; preds = %bb.aa, %.lr.ph.split.us.split, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17.us.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.av = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.as)
          to label %.noexc.i unwind label %.loopexit.split-lp.i.loopexit, !noalias !879 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  %i.aw = lshr i64 %i.av, 57
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  %i.ay = load i64, ptr %i.al, align 8, !alias.scope !884, !noalias !885, !noundef !5 ; 2 uses
  %i.az = load ptr, ptr %i.ak, align 8, !alias.scope !884, !noalias !885, !nonnull !5, !noundef !5 ; 2 uses
  %i.ba = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %i.bb = shufflevector <16 x i8> %i.ba, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.noexc.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.noexc.i ], [ %i.bs, %bb.g ]
  %.pn.i.i.i.i = phi i64 [ %i.av, %.noexc.i ], [ %i.bt, %bb.g ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ay ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !886 ; 2 uses
  %i.bd = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.bb
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.br, %bb.f ], [ %i.be, %bb.e ] ; 3 uses
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = add i64 %.sroa.01.0.i.i.i.i.i, %i.bg
  %i.bi = and i64 %i.bh, %i.ay
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [32 x i8], ptr %i.az, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -32
  %i.bm = invoke noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrowneINtB2_10EquivalentNtNtCs1xwejQucwHj_5alloc6string6StringE10equivalentCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bl)
          to label %.noexc1.i unwind label %.loopexit.i, !noalias !879

.noexc1.i:                                        ; preds = %.lr.ph.i.i.i.i
  br i1 %i.bm, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringjNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3geteECs8frGy5WneL6_4fish.exit.i.i, label %bb.f, !prof !14

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.bn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %bb.g, label %_RNvMs9_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_8CapturesNtNtB7_3ffi15CodeUnitWidth32E4nameCs8frGy5WneL6_4fish.exit.i, !prof !11

bb.f:                                             ; preds = %.noexc1.i
  %i.bq = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.br = and i16 %i.bq, %.sroa.06.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.br, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bs = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.bt = add i64 %.sroa.01.0.i.i.i.i.i, %i.bs
  br label %bb.e

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringjNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3geteECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.noexc1.i
  %i.bu = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !887, !noundef !5 ; 2 uses
  %3 = shl nuw i64 %i.bv, 1                       ; 3 uses
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringjNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3geteECs8frGy5WneL6_4fish.exit.i.i
  %i.bx = icmp ult i64 %3, %2
  br i1 %i.bx, label %bb.j, label %_RNvMs9_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_8CapturesNtNtB7_3ffi15CodeUnitWidth32E4nameCs8frGy5WneL6_4fish.exit.i

bb.i:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringjNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3geteECs8frGy5WneL6_4fish.exit.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #31
          to label %.noexc2.i unwind label %.loopexit.split-lp.i.loopexit.split-lp, !noalias !879

.noexc2.i:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %4 = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.by = load i64, ptr %4, align 8, !noalias !888, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %_RNvMs9_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_8CapturesNtNtB7_3ffi15CodeUnitWidth32E4nameCs8frGy5WneL6_4fish.exit.i, label %5

5:                                                ; preds = %bb.j
  %6 = or disjoint i64 %3, 1                      ; 2 uses
  %7 = icmp samesign ult i64 %6, %2
  br i1 %7, label %bb.k, label %_RNvMs9_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_8CapturesNtNtB7_3ffi15CodeUnitWidth32E4nameCs8frGy5WneL6_4fish.exit.i

bb.k:                                             ; preds = %5
  %8 = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %6
  %i.ca = load i64, ptr %8, align 8, !noalias !888, !noundef !5 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %_RNvMs9_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_8CapturesNtNtB7_3ffi15CodeUnitWidth32E4nameCs8frGy5WneL6_4fish.exit.i, label %_RNvMs8_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_16CaptureLocationsNtNtB7_3ffi15CodeUnitWidth32E3getCs8frGy5WneL6_4fish.exit.i.i

_RNvMs8_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_16CaptureLocationsNtNtB7_3ffi15CodeUnitWidth32E3getCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.k
  br label %_RNvMs9_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_8CapturesNtNtB7_3ffi15CodeUnitWidth32E4nameCs8frGy5WneL6_4fish.exit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i.loopexit:                    ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %common.resume unwind label %bb.n, !noalias !879

_RNvMs9_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_8CapturesNtNtB7_3ffi15CodeUnitWidth32E4nameCs8frGy5WneL6_4fish.exit.i: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.j, %5, %bb.k, %bb.c, %_RNvMs8_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_16CaptureLocationsNtNtB7_3ffi15CodeUnitWidth32E3getCs8frGy5WneL6_4fish.exit.i.i
  %.sroa.9.0 = phi i64 [ %i.by, %_RNvMs8_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_16CaptureLocationsNtNtB7_3ffi15CodeUnitWidth32E3getCs8frGy5WneL6_4fish.exit.i.i ], [ undef, %bb.c ], [ undef, %bb.h ], [ undef, %bb.k ], [ undef, %5 ], [ undef, %bb.j ], [ undef, %._crit_edge.i.i.i.i ] ; 5 uses
  %.sroa.7.0 = phi i64 [ %i.an, %_RNvMs8_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_16CaptureLocationsNtNtB7_3ffi15CodeUnitWidth32E3getCs8frGy5WneL6_4fish.exit.i.i ], [ undef, %bb.c ], [ undef, %bb.h ], [ undef, %bb.k ], [ undef, %5 ], [ undef, %bb.j ], [ undef, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.01.0 = phi ptr [ %i.ao, %_RNvMs8_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_16CaptureLocationsNtNtB7_3ffi15CodeUnitWidth32E3getCs8frGy5WneL6_4fish.exit.i.i ], [ null, %bb.c ], [ null, %bb.h ], [ null, %bb.k ], [ null, %5 ], [ null, %bb.j ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %i.ca, %_RNvMs8_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_16CaptureLocationsNtNtB7_3ffi15CodeUnitWidth32E3getCs8frGy5WneL6_4fish.exit.i.i ], [ undef, %bb.c ], [ undef, %bb.h ], [ undef, %bb.k ], [ undef, %5 ], [ undef, %bb.j ], [ undef, %._crit_edge.i.i.i.i ] ; 5 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB7_12RegexMatcher28populate_captures_from_match0Bd_.exit unwind label %bb.l, !noalias !879

bb.l:                                             ; preds = %_RNvMs9_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_8CapturesNtNtB7_3ffi15CodeUnitWidth32E4nameCs8frGy5WneL6_4fish.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.m, !noalias !879

bb.m:                                             ; preds = %bb.l
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !879
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.x, %.loopexit.split-lp.i, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.cs, %bb.x ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.cc, %bb.l ], [ %.us-phi, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %.loopexit.split-lp.i
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !879
  unreachable

_RNCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB7_12RegexMatcher28populate_captures_from_match0Bd_.exit: ; preds = %_RNvMs9_NtCs8n0tpEuULLm_5pcre210regex_implINtB5_8CapturesNtNtB7_3ffi15CodeUnitWidth32E4nameCs8frGy5WneL6_4fish.exit.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !878
  %.not14 = icmp eq ptr %.sroa.01.0, null
  br i1 %.not14, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB7_12RegexMatcher28populate_captures_from_match0Bd_.exit
  br i1 %i.m, label %bb.ab, label %bb.aa

bb.p:                                             ; preds = %_RNCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB7_12RegexMatcher28populate_captures_from_match0Bd_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cf = icmp ult i64 %.sroa.11.0, %.sroa.9.0
  br i1 %i.cf, label %bb.s, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.cg = sub nuw i64 %.sroa.11.0, %.sroa.9.0     ; 4 uses
  %.not15 = icmp ugt i64 %.sroa.11.0, %.sroa.7.0
  br i1 %.not15, label %bb.s, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0, i64 %.sroa.9.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.cg, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.ci = load i64, ptr %i.b, align 8, !range !6, !noundef !5
  %i.cj = trunc nuw i64 %i.ci to i1
  %i.ck = load i64, ptr %i.k, align 8, !range !10, !noundef !5 ; 3 uses
  br i1 %i.cj, label %bb.t, label %bb.u, !prof !11

bb.s:                                             ; preds = %bb.q, %bb.p
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.9.0, i64 noundef %.sroa.11.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #31
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cl = load i64, ptr %i.l, align 8
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ck, i64 %i.cl) #34
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cn = icmp ule i64 %i.cg, %i.ck
  call void @llvm.assume(i1 %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not16 = icmp eq i64 %.sroa.11.0, %.sroa.9.0
  br i1 %.not16, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.z, %bb.u
  store i64 %i.ck, ptr %i.d, align 8
  store ptr %i.cm, ptr %.sroa.47.0..sroa_idx, align 8
  store i64 %i.cg, ptr %.sroa.5.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !889, !noalias !890, !noundef !5 ; 3 uses
  %i.cq = load i64, ptr %i.ap, align 8, !range !12, !alias.scope !889, !noalias !890, !noundef !5
  %i.cr = icmp eq i64 %i.cp, %i.cq
  br i1 %i.cr, label %bb.w, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit unwind label %bb.x, !noalias !890

bb.x:                                             ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #35
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit: ; preds = %bb.v, %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !889, !noalias !890, !nonnull !5, !noundef !5
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.cx = add i64 %i.cp, 1
  store i64 %i.cx, ptr %i.co, align 8, !alias.scope !889, !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.z:                                             ; preds = %bb.u
  %i.cy = shl nuw nsw i64 %i.cg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr nonnull align 4 %i.ch, i64 %i.cy, i1 false)
  br label %bb.v

bb.aa:                                            ; preds = %bb.o, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit
  %i.cz = call { ptr, ptr } @_RNvXsK_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7IterMutNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) ; 2 uses
  %i.da = extractvalue { ptr, ptr } %i.cz, 0      ; 2 uses
  %i.db = extractvalue { ptr, ptr } %i.cz, 1
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %._crit_edge, label %bb.c

bb.ab:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !876, !noalias !877, !noundef !5 ; 3 uses
  %i.de = load i64, ptr %i.ap, align 8, !range !12, !alias.scope !876, !noalias !877, !noundef !5
  %i.df = icmp eq i64 %i.dd, %i.de
  br i1 %i.df, label %bb.ac, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17 unwind label %.split, !noalias !877

.split:                                           ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.split.us.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.dg, %.split ], [ %i.z, %.split.us.split.us ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #35
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish.exit17: ; preds = %bb.ab, %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !876, !noalias !877, !nonnull !5, !noundef !5
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.dl = add i64 %i.dd, 1
  store i64 %i.dl, ptr %i.dc, align 8, !alias.scope !876, !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCs8n0tpEuULLm_5pcre24pool5innerINtB5_4PoolINtNtB9_3ffi9MatchDataNtBS_15CodeUnitWidth32EINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputBP_NtNtB2f_6marker4SendNtNtNtB2f_5panic11unwind_safe13RefUnwindSafeNtB3n_10UnwindSafeNtB33_4SyncEL_EE3newCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 64               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 8, i1 noundef zeroext false, i64 noundef 64, i64 noundef 64)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.w, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish(ptr nonnull %1, ptr nonnull %2) #35
          to label %bb.o unwind label %bb.m

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !10, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #34
          to label %bb.n unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = icmp samesign ugt i64 %i.h, 7
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %i.c, align 8
end_hunk_0
