Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.01?download=true
inline.NumInlined: 11461
inline.NumDeleted: 4051
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_check16is_absolute_path:bb.a
.thread:                                          ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.r, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCseo6ZV82fEK1_3url3UrlNtNtB14_6parser10ParseErrorEECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @694, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCseo6ZV82fEK1_3url3UrlNtNtB14_6parser10ParseErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.d) #42
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config10parse_bool(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 9)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13str_is_truthy(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config11parse_usize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !alias.scope !32125, !noalias !32126, !noundef !24 ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !32125, !noalias !32126
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.f = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.e, %bb.b ]
  %cond.i = icmp eq i8 %i.f, 43                   ; 2 uses
  %i.g = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %2, %i.g            ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.h = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.h, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i22, i64 1
  %i.j = add nsw i64 %.sroa.15.1.i21, -1          ; 2 uses
  %.not52.i = icmp eq i64 %i.j, 0
  br i1 %.not52.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.c, %.preheader56.i
  %.sroa.0.1.i22 = phi ptr [ %i.i, %.preheader56.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i21 = phi i64 [ %i.j, %.preheader56.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.042.0.i20 = phi i64 [ %i.s, %.preheader56.i ], [ 0, %bb.c ]
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i20, i64 10) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %.loopexit, label %bb.d, !prof !22

bb.d:                                             ; preds = %.preheader56.i.preheader
  %i.m = extractvalue { i64, i1 } %i.k, 0         ; 2 uses
  %i.n = load i8, ptr %.sroa.0.1.i22, align 1, !alias.scope !32125, !noalias !32126, !noundef !24
  %i.o = zext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -48                    ; 2 uses
  %i.q = icmp ugt i32 %i.p, 9
  %i.r = zext nneg i32 %i.p to i64
  %i.s = add i64 %i.m, %i.r                       ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.m
  %or.cond = select i1 %i.q, i1 true, i1 %i.t, !prof !132
  br i1 %or.cond, label %.loopexit, label %.preheader56.i, !prof !132

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %.sroa.0.269.i = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.z, %bb.e ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ac, %bb.e ], [ 0, %.preheader.i ]
  %i.u = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !32125, !noalias !32126, !noundef !24
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = mul i64 %.sroa.042.267.i, 10
  %i.z = add nsw i64 %.sroa.15.268.i, -1          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ab = zext nneg i32 %i.w to i64
  %i.ac = add i64 %i.y, %i.ab                     ; 2 uses
  %.not53.i = icmp eq i64 %i.z, 0
  br i1 %.not53.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit, label %.lr.ph.i

.loopexit:                                        ; preds = %.preheader56.i.preheader, %bb.d, %.lr.ph.i, %bb.b, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32128
  store ptr %i.c, ptr %i.a, align 8, !noalias !32128
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull @454, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32128
  store i64 -9223372036854775722, ptr %i.b, align 16, !alias.scope !32127, !noalias !32129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.e, %.preheader.i
  %.sroa.111.0 = phi i64 [ %i.ac, %bb.e ], [ 0, %.preheader.i ], [ %i.s, %.preheader56.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.111.0, ptr %i.ae, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.f

bb.f:                                             ; preds = %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config12parse_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !28, !noundef !24
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !29, !noundef !24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.j, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13str_is_truthy(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #13 {
bb.a:
  switch i64 %1, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59 [
    i64 1, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37
    i64 4, label %bb.b
    i64 2, label %bb.f
    i64 3, label %bb.h
  ]

_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37: ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !32142, !noalias !32143, !noundef !24
  %2 = insertelement <2 x i8> poison, i8 %i.a, i64 0
  %3 = shufflevector <2 x i8> %2, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  %4 = add <2 x i8> %3, splat (i8 -65)
  %5 = icmp ult <2 x i8> %4, splat (i8 26)
  %6 = select <2 x i1> %5, <2 x i8> splat (i8 32), <2 x i8> zeroinitializer
  %7 = or <2 x i8> %6, %3
  %8 = icmp eq <2 x i8> %7, <i8 49, i8 121>
  %9 = bitcast <2 x i1> %8 to i2
  %10 = icmp ne i2 %9, 0
  br label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !alias.scope !32144, !noalias !32145, !noundef !24 ; 2 uses
  %i.c = add i8 %i.b, -65
  %i.d = icmp ult i8 %i.c, 26
  %i.e = select i1 %i.d, i8 32, i8 0
  %.sroa.012.0.i15 = or i8 %i.e, %i.b
  %i.f = icmp eq i8 %.sroa.012.0.i15, 116
  br i1 %i.f, label %bb.c, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !32144, !noalias !32145, !noundef !24 ; 2 uses
  %i.i = add i8 %i.h, -65
  %i.j = icmp ult i8 %i.i, 26
  %i.k = select i1 %i.j, i8 32, i8 0
  %.sroa.012.0.i15.1 = or i8 %i.k, %i.h
  %i.l = icmp eq i8 %.sroa.012.0.i15.1, 114
  br i1 %i.l, label %bb.d, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !32144, !noalias !32145, !noundef !24 ; 2 uses
  %i.o = add i8 %i.n, -65
  %i.p = icmp ult i8 %i.o, 26
  %i.q = select i1 %i.p, i8 32, i8 0
  %.sroa.012.0.i15.2 = or i8 %i.q, %i.n
  %i.r = icmp eq i8 %.sroa.012.0.i15.2, 117
  br i1 %i.r, label %bb.e, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !32144, !noalias !32145, !noundef !24 ; 2 uses
  %i.u = add i8 %i.t, -65
  %i.v = icmp ult i8 %i.u, 26
  %i.w = select i1 %i.v, i8 32, i8 0
  %.sroa.012.0.i15.3 = or i8 %i.w, %i.t
  %i.x = icmp eq i8 %.sroa.012.0.i15.3, 101
  br label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59

bb.f:                                             ; preds = %bb.a
  %i.y = load i8, ptr %0, align 1, !alias.scope !32146, !noalias !32147, !noundef !24 ; 2 uses
  %i.z = add i8 %i.y, -65
  %i.aa = icmp ult i8 %i.z, 26
  %i.ab = select i1 %i.aa, i8 32, i8 0
  %.sroa.012.0.i25 = or i8 %i.ab, %i.y
  %i.ac = icmp eq i8 %.sroa.012.0.i25, 111
  br i1 %i.ac, label %bb.g, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !32146, !noalias !32147, !noundef !24 ; 2 uses
  %i.af = add i8 %i.ae, -65
  %i.ag = icmp ult i8 %i.af, 26
  %i.ah = select i1 %i.ag, i8 32, i8 0
  %.sroa.012.0.i25.1 = or i8 %i.ah, %i.ae
  %i.ai = icmp eq i8 %.sroa.012.0.i25.1, 110
  br label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59

bb.h:                                             ; preds = %bb.a
  %i.aj = load i8, ptr %0, align 1, !alias.scope !32148, !noalias !32149, !noundef !24 ; 2 uses
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = select i1 %i.al, i8 32, i8 0
  %.sroa.012.0.i35 = or i8 %i.am, %i.aj
  %i.an = icmp eq i8 %.sroa.012.0.i35, 121
  br i1 %i.an, label %bb.i, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !32148, !noalias !32149, !noundef !24 ; 2 uses
  %i.aq = add i8 %i.ap, -65
  %i.ar = icmp ult i8 %i.aq, 26
  %i.as = select i1 %i.ar, i8 32, i8 0
  %.sroa.012.0.i35.1 = or i8 %i.as, %i.ap
  %i.at = icmp eq i8 %.sroa.012.0.i35.1, 101
  br i1 %i.at, label %bb.j, label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !32148, !noalias !32149, !noundef !24 ; 2 uses
  %i.aw = add i8 %i.av, -65
  %i.ax = icmp ult i8 %i.aw, 26
  %i.ay = select i1 %i.ax, i8 32, i8 0
  %.sroa.012.0.i35.2 = or i8 %i.ay, %i.av
  %i.az = icmp eq i8 %.sroa.012.0.i35.2, 115
  br label %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59

_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37.thread59: ; preds = %bb.j, %bb.g, %bb.e, %bb.a, %bb.d, %bb.c, %bb.b, %bb.f, %bb.i, %bb.h, %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37
  %.sroa.04.0 = phi i1 [ %10, %_RNvMNtNtCsbvkFyIu7lgC_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit37 ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.i ], [ %i.ai, %bb.g ], [ false, %bb.h ], [ %i.x, %bb.e ], [ %i.az, %bb.j ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ]
  ret i1 %.sroa.04.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config14parse_duration(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtCshfX6r3edEyT_9humantime8duration14parse_duration(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.g = load i64, ptr %i.d, align 8, !range !103, !noundef !24
  %.not = icmp eq i64 %i.g, -9223372036854775803
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.experimental.noalias.scope.decl(metadata !32156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32157
  store ptr %i.e, ptr %i.a, align 8, !noalias !32157
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !32157
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @455, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !32158

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshfX6r3edEyT_9humantime8duration5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #42
          to label %common.resume.i unwind label %bb.g, !noalias !32159

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !32160
  %i.i = load i64, ptr %i.c, align 8, !range !91, !alias.scope !32161, !noalias !32162, !noundef !24 ; 2 uses
  %i.j = icmp ne i64 %i.i, -9223372036854775806
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp sgt i64 %i.i, -1
  br i1 %i.k, label %bb.d, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config14parse_duration0B7_.exit

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e, !noalias !32159

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %common.resume.i unwind label %bb.f, !noalias !32159

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !32159
  unreachable

common.resume.i:                                  ; preds = %bb.e, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.h, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c), !noalias !32159
  br label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config14parse_duration0B7_.exit

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !32159
  unreachable

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config14parse_duration0B7_.exit: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -9223372036854775722, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load i32, ptr %i.q, align 8, !range !130, !noundef !24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.r, ptr %i.t, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config14parse_duration0B7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config9parse_f64(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
end_hunk_0
