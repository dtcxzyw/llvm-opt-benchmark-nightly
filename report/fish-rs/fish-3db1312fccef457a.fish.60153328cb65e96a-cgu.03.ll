Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.03?download=true
inline.NumInlined: 2355
inline.NumDeleted: 813
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion15from_completion:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !799, !noalias !802
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8, !alias.scope !803, !noalias !804
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx1, align 8, !alias.scope !803, !noalias !804
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.5.0..sroa_idx2, i8 0, i64 13, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion20prepend_token_prefix(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i16, ptr %i.a, align 8, !noundef !5
  %i.c = and i16 %i.b, 2
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 53)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i24 %3, i16 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
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
  %i.i = load i32, ptr %i.h, align 4, !range !741, !alias.scope !805, !noundef !5
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
  %i.c = load i8, ptr %i.b, align 4, !range !732, !alias.scope !808, !noundef !5 ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  %i.e = shl nuw nsw i8 %i.c, 2
  %narrow.i = select i1 %i.d, i8 4, i8 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.g = load i8, ptr %i.f, align 1, !range !10, !alias.scope !808, !noundef !5 ; 2 uses
  %i.h = icmp eq i8 %i.g, 1
  %narrow3.i = select i1 %i.h, i8 0, i8 %i.g
  %i.i = load i8, ptr %i.a, align 2, !range !4, !alias.scope !808, !noundef !5
  %i.j = shl nuw nsw i8 %i.i, 4
  %i.k = or disjoint i8 %i.j, %narrow.i
  %i.l = or disjoint i8 %i.k, %narrow3.i
  %i.m = zext nneg i8 %i.l to i32
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion9with_desc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 53)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !816, !noalias !814
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !818, !noalias !811
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
  %i.m = load i64, ptr %3, align 8, !range !167, !noundef !5
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
  br i1 %i.s, label %bb.al, label %bb.ak

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.104.val, i64 29
  %i.u = load i8, ptr %i.t, align 1, !range !4, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8n0tpEuULLm_5pcre210regex_impl8CapturesNtNtBG_3ffi15CodeUnitWidth32EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.h)
  br label %bb.aj

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.104.val, i64 25 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !range !4, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %.thread

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  br label %bb.aj

bb.h:                                             ; preds = %bb.i
  %.pre = load i8, ptr %i.w, align 1, !range !4
  %i.z = trunc nuw i8 %.pre to i1
  br i1 %i.z, label %bb.j, label %.thread

bb.i:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.aa = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.h unwind label %.loopexit.split-lp11 ; 0 uses

.body34:                                          ; preds = %.loopexit10, %.loopexit.split-lp11, %bb.ah, %bb.af, %.body
  %.pn28 = phi { ptr, i32 } [ %i.bs, %bb.af ], [ %.pn26, %.body ], [ %i.bt, %bb.ah ], [ %lpad.loopexit12, %.loopexit10 ], [ %lpad.loopexit.split-lp13, %.loopexit.split-lp11 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8n0tpEuULLm_5pcre210regex_impl8CapturesNtNtBG_3ffi15CodeUnitWidth32EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.h) #35
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit10:                                      ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %lpad.loopexit12 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp11:                             ; preds = %bb.i, %bb.u
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

bb.k:                                             ; preds = %bb.y, %bb.u
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.v
  %.sroa.4.029 = phi i64 [ %.sroa.03.0, %.lr.ph.i.lr.ph ], [ %i.aq, %bb.v ]
  %.val.i.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !819, !noundef !5 ; 3 uses
  %.val1.i.i.i.i = load i32, ptr %i.ae, align 8, !noalias !819, !noundef !5
  %i.an = zext i32 %.val1.i.i.i.i to i64
  %i.ao = shl nuw nsw i64 %i.an, 1                ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i
  %i.ap = phi i64 [ %.sroa.4.029, %.lr.ph.i ], [ %i.aq, %bb.p ] ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 4 uses
  %i.ar = shl nuw i64 %i.ap, 1                    ; 3 uses
  %4 = icmp ult i64 %i.ar, %i.ao
  br i1 %4, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %i.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.at = load i64, ptr %i.as, align 8, !noalias !830, !noundef !5 ; 7 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.aw = icmp samesign ult i64 %i.av, %i.ao
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !830, !noundef !5 ; 6 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %exitcond.not.i = icmp eq i64 %i.aq, %i.ag
  br i1 %exitcond.not.i, label %.loopexit8, label %bb.l

bb.q:                                             ; preds = %bb.o
  %i.ba = load i8, ptr %i.aj, align 1, !range !4, !noundef !5
  %i.bb = trunc nuw i8 %i.ba to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br i1 %i.bb, label %bb.w, label %bb.s

.loopexit8:                                       ; preds = %bb.v, %bb.p, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.r

bb.r:                                             ; preds = %bb.ay, %bb.ax, %bb.aj, %.loopexit8
  ret void

bb.s:                                             ; preds = %bb.q
  %i.bc = icmp ult i64 %i.ay, %i.at
  %.not25 = icmp ugt i64 %i.ay, %2
  %or.cond = or i1 %i.bc, %.not25
  br i1 %or.cond, label %bb.u, label %bb.t, !prof !169

bb.t:                                             ; preds = %bb.s
  %i.bd = sub nuw i64 %i.ay, %i.at
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at
  %i.bf = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.be, i64 noundef %i.bd)
          to label %bb.v unwind label %.loopexit10 ; 0 uses

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #34
          to label %bb.k unwind label %.loopexit.split-lp11

bb.v:                                             ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.bg = icmp ult i64 %i.aq, %i.ag
  br i1 %i.bg, label %.lr.ph.i, label %.loopexit8

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.418.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.519.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bh = add nuw i64 %i.at, 1
  store i64 %i.bh, ptr %i.ak, align 8
  store i64 4, ptr %i.c, align 8
  %i.bi = icmp ult i64 %i.ay, %i.at
  br i1 %i.bi, label %bb.y, label %bb.x

.body:                                            ; preds = %.peel.begin, %bb.ad, %bb.aa, %bb.z
  %.pn26 = phi { ptr, i32 } [ %lpad.phi18, %bb.aa ], [ %i.bk, %bb.z ], [ %i.br, %bb.ad ], [ %i.br, %.peel.begin ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #35
          to label %.body34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.bj = sub nuw i64 %i.ay, %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i64 4, ptr %i.al, align 8
  store i64 %i.bj, ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 6, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @48, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef 2)
          to label %bb.ab unwind label %.loopexit14

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #34
          to label %bb.k unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #35
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit14:                                      ; preds = %bb.x
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp15:                             ; preds = %bb.ac
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp15, %.loopexit14
  %lpad.phi18 = phi { ptr, i32 } [ %lpad.loopexit16, %.loopexit14 ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp15 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #35
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.bl = load i8, ptr %i.e, align 8, !range !4, !alias.scope !833, !noalias !836, !noundef !5
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.ac, label %.preheader.preheader, !prof !62

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !838
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !range !618, !alias.scope !833, !noalias !836, !noundef !5
  store i8 %i.bo, ptr %i.a, align 1, !noalias !838
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #31
          to label %.noexc31 unwind label %.loopexit.split-lp15

.noexc31:                                         ; preds = %bb.ac
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am)
          to label %.preheader.1 unwind label %.peel.begin

.preheader.1:                                     ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bp = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.ag unwind label %bb.af     ; 0 uses

.preheader.preheader:                             ; preds = %bb.ab
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
          to label %.preheader unwind label %.peel.begin

.peel.begin:                                      ; preds = %.preheader, %.preheader.preheader
  %i.bq = phi i1 [ false, %.preheader.preheader ], [ true, %.preheader ]
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bq, label %.body, label %bb.ad

bb.ad:                                            ; preds = %.peel.begin
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.al) #35
          to label %.body unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.af:                                            ; preds = %.preheader.1
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #35
          to label %.body34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %.preheader.1
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body34 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap, %.body34, %.body, %bb.z, %bb.aa, %bb.af, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.at
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.av, %.body34, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.at
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %.pn28, %.body34 ], [ %i.cl, %bb.at ], [ %i.cm, %bb.av ]
  resume { ptr, i32 } %common.resume.op

bb.aj:                                            ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.r

bb.ak:                                            ; preds = %bb.an, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit42, %bb.al, %bb.c
  %i.bv = load i8, ptr %i.q, align 4, !range !4, !noundef !5
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.ay, label %bb.ax

bb.al:                                            ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %.104.val, i64 29
  %i.by = load i8, ptr %i.bx, align 1, !range !4, !noundef !5
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.ak, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ca = getelementptr inbounds nuw i8, ptr %.104.val, i64 31
  %i.cb = load i8, ptr %i.ca, align 1, !range !4, !noundef !5
  %i.cc = trunc nuw i8 %i.cb to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
end_hunk_0
