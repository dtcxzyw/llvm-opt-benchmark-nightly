Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-4552b8f23364b7cd.typst_utils.4c29e00eb546305a-cgu.0?download=true
inline.NumInlined: 302
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtCs6xpQEr8gLsQ_11typst_utils5round24round_int_with_precision:bb.a

bb.i:                                             ; preds = %bb.h
  %i.z = icmp samesign ugt i64 %i.x, 4
  br i1 %i.z, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp samesign ult i64 %i.x, -4
  br i1 %i.aa, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = sub i64 %i.v, %i.x
  br label %bb.n

bb.l:                                             ; preds = %bb.i, %bb.m
  %.sroa.012.0 = phi i64 [ %i.ah, %bb.m ], [ %i.x, %bb.i ]
  %i.ac = tail call i64 @llvm.scmp.i64.i64(i64 %i.v, i64 0)
  %i.ad = sub nuw nsw i64 10, %.sroa.012.0
  %i.ae = mul nsw i64 %i.ac, %i.ad
  %i.af = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.v, i64 %i.ae) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27, label %bb.o, !prof !4

bb.m:                                             ; preds = %bb.j
  %i.ah = sub nsw i64 0, %i.x
  br label %bb.l

bb.n:                                             ; preds = %bb.o, %bb.k
  %.sroa.013.0 = phi i64 [ %i.al, %bb.o ], [ %i.ab, %bb.k ]
  %i.ai = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.013.0, i64 %.sroa.14.0.i253134) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  %i.ak = extractvalue { i64, i1 } %i.ai, 0
  %not. = xor i1 %i.aj, true
  %spec.select22 = zext i1 %not. to i64
  br label %_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27

bb.o:                                             ; preds = %bb.l
  %i.al = extractvalue { i64, i1 } %i.af, 0
  br label %bb.n

_RNvMs1_NtCs3oUPovFnLWP_4core3numx11checked_pow.exit.thread27: ; preds = %.preheader49.4.i, %bb.g, %bb.n, %bb.l, %.thread32, %bb.a
  %.sroa.7.0 = phi i64 [ %0, %bb.a ], [ 0, %bb.g ], [ 0, %.thread32 ], [ undef, %bb.l ], [ %i.ak, %bb.n ], [ 0, %.preheader49.4.i ]
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ 1, %bb.g ], [ 1, %.thread32 ], [ 0, %bb.l ], [ %spec.select22, %bb.n ], [ 1, %.preheader49.4.i ]
  %i.am = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.an = insertvalue { i64, i64 } %i.am, i64 %.sroa.7.0, 1
  ret { i64, i64 } %i.an
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCs6xpQEr8gLsQ_11typst_utils8version_14display_commit(ptr noalias nofree noundef readonly captures(address, read_provenance) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 8) ; 4 uses
  %.not.i = icmp ugt i64 %1, 8
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !442, !noundef !5
  %i.c = icmp sgt i8 %i.b, -65
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.34.0 = phi i64 [ 14, %bb.a ], [ %..i, %bb.c ], [ %..i, %bb.b ]
  %.sroa.03.0 = phi ptr [ @105, %bb.a ], [ %0, %bb.c ], [ %0, %bb.b ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.03.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.34.0, 1
  ret { ptr, i64 } %i.e

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 0, i64 noundef %..i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version5VALUE, i64 48) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs6xpQEr8gLsQ_11typst_utils8version_12TypstVersionE5force0EB1H_.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version5VALUE, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version5VALUE, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs6xpQEr8gLsQ_11typst_utils8version_12TypstVersionE5force0EB1H_.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs6xpQEr8gLsQ_11typst_utils8version_12TypstVersionE5force0EB1H_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) @_RNvNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version5VALUE, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions3get(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread
  %.sroa.01.014 = phi i64 [ 0, %bb.a ], [ %.sroa.01.1, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread ] ; 3 uses
  %.sroa.03.013 = phi i64 [ 65, %bb.a ], [ %.sroa.03.1, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread ] ; 2 uses
  %i.a = add i64 %.sroa.01.014, %.sroa.03.013     ; 2 uses
  %i.b = lshr i64 %i.a, 1                         ; 6 uses
  %i.c = icmp ult i64 %i.a, 130
  br i1 %i.c, label %bb.d, label %bb.g

bb.c:                                             ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread
  %.sroa.0.0 = phi i64 [ 0, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread ], [ 1, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit ]
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.b, 1
  ret { i64, i64 } %i.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [16 x i8], ptr @90, i64 %i.b ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %..i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.i) ; 2 uses
  %.not.i = icmp eq i64 %..i, 0
  br i1 %.not.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.02.021.i = phi i64 [ %i.o, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.021.i
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !446, !noalias !447, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.021.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !447, !noalias !446, !noundef !5 ; 2 uses
  %i.n = icmp eq i8 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = add nuw i64 %.sroa.02.021.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %..i
  br i1 %exitcond.not.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.p = icmp ult i8 %i.k, %i.m
  br i1 %i.p, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = tail call i8 @llvm.ucmp.i8.i64(i64 %1, i64 %i.i)
  switch i8 %.sroa.0.0.i, label %default.unreachable [
    i8 -1, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread
    i8 0, label %bb.c
    i8 1, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6
  ]

bb.g:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef 65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #36
  unreachable

default.unreachable:                              ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit
  unreachable

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6: ; preds = %bb.f, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit
  %i.q = add nuw nsw i64 %i.b, 1
  br label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread: ; preds = %bb.f, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6
  %.sroa.03.1 = phi i64 [ %.sroa.03.013, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6 ], [ %i.b, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit ], [ %i.b, %bb.f ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.q, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6 ], [ %.sroa.01.014, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit ], [ %.sroa.01.014, %bb.f ] ; 2 uses
  %i.r = icmp ult i64 %.sroa.01.1, %.sroa.03.1
  br i1 %i.r, label %bb.b, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB2_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = load i64, ptr %0, align 8, !noundef !5   ; 11 uses
  %i.y = udiv i64 %i.x, 60
  %i.z = urem i64 %i.x, 60                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = udiv i64 %i.x, 3600
  %i.ab = urem i64 %i.y, 60                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = udiv i64 %i.x, 86400
  %i.ad = urem i64 %i.aa, 24                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %i.ac, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %i.ad, ptr %i.t, align 8
  %i.ae = icmp ugt i64 %i.x, 86399                ; 2 uses
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0 = phi i8 [ 0, %bb.a ], [ 1, %bb.c ] ; 2 uses
  %i.af = icmp ne i64 %i.ad, 0                    ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.u, ptr %i.s, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.ag = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !12, !noundef !5
  %i.aj = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noundef nonnull @111, ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.aj, label %bb.am, label %bb.b

bb.d:                                             ; preds = %bb.f, %bb.b
  %.sroa.01.1 = phi i8 [ %.sroa.01.0, %bb.b ], [ 1, %bb.f ] ; 2 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.ak = trunc nuw i8 %.sroa.01.0 to i1
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.al = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5, !align !12, !noundef !5
  %i.ao = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an, ptr noundef nonnull @112, ptr noundef nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %i.ao, label %bb.am, label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.ap = call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32)
  br i1 %i.ap, label %bb.am, label %bb.f

bb.h:                                             ; preds = %bb.j, %bb.d
  %.sroa.01.2 = phi i8 [ %.sroa.01.1, %bb.d ], [ 1, %bb.j ] ; 3 uses
  %brmerge = or i1 %i.ae, %i.af
  br i1 %brmerge, label %bb.am, label %bb.l

bb.i:                                             ; preds = %bb.d
  %i.aq = trunc nuw i8 %.sroa.01.1 to i1
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.v, ptr %i.q, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.ar = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !5, !align !12, !noundef !5
  %i.au = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at, ptr noundef nonnull @113, ptr noundef nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.au, label %bb.am, label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.av = call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32)
  br i1 %i.av, label %bb.am, label %bb.j

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.aw = mul nuw nsw i64 %i.z, 1000000000
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !range !448, !noundef !5 ; 5 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.aw, %i.az            ; 4 uses
  store i64 %i.ba, ptr %i.p, align 8
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.bc = icmp eq i64 %i.x, 300
  %i.bd = icmp samesign ugt i64 %i.x, 300
  %i.be = icmp ne i32 %i.ay, 0
  %spec.select = select i1 %i.bc, i1 %i.be, i1 %i.bd
  %i.bf = trunc nuw i8 %.sroa.01.2 to i1          ; 2 uses
  br i1 %spec.select, label %bb.ae, label %bb.ad

bb.n:                                             ; preds = %bb.l
  %i.bg = icmp eq i64 %i.x, 1
  %i.bh = icmp samesign ugt i64 %i.x, 1
  %i.bi = icmp ne i32 %i.ay, 0
  %spec.select157 = select i1 %i.bg, i1 %i.bi, i1 %i.bh
  br i1 %spec.select157, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %2 = icmp eq i64 %i.x, 0                        ; 2 uses
  %i.bj = icmp samesign ugt i32 %i.ay, 1000000
  %3 = icmp ne i64 %i.x, 0                        ; 2 uses
  %i.bk = select i1 %2, i1 %i.bj, i1 %3
  br i1 %i.bk, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = icmp samesign ugt i32 %i.ay, 1000
  %4 = select i1 %2, i1 %i.bl, i1 %3
  %i.bm = trunc nuw i8 %.sroa.01.2 to i1          ; 2 uses
  br i1 %4, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bn = trunc nuw i8 %.sroa.01.2 to i1
  br i1 %i.bn, label %bb.ab, label %bb.x

bb.r:                                             ; preds = %bb.p
  br i1 %i.bm, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.p
  br i1 %i.bm, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.u, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bo = call fastcc noundef double @_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_(ptr nonnull %i.p, i32 noundef 0) #38
  store double %i.bo, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4142.0..sroa_idx, align 8
  %i.bp = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !5, !align !12, !noundef !5
  %i.bs = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br, ptr noundef nonnull @114, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.bs, label %bb.ac, label %.sink.split

bb.u:                                             ; preds = %bb.r
  %i.bt = call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32)
  br i1 %i.bt, label %bb.ac, label %bb.t

bb.v:                                             ; preds = %bb.w, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bu = call fastcc noundef double @_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_(ptr nonnull %i.p, i32 noundef 1) #38
  store double %i.bu, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4126.0..sroa_idx, align 8
  %i.bv = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !5, !align !12, !noundef !5
  %i.by = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bx, ptr noundef nonnull @115, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.by, label %bb.ac, label %.sink.split

bb.w:                                             ; preds = %bb.s
  %i.bz = call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32)
  br i1 %i.bz, label %bb.ac, label %bb.v

bb.x:                                             ; preds = %bb.ab, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ca = uitofp nneg i64 %i.ba to double
  %i.cb = fdiv double %i.ca, 1.000000e+06         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store double %i.cb, ptr %i.f, align 8
  %or.cond9.i.i = fcmp ueq double %i.cb, +inf
  %i.cc = fcmp oge double %i.cb, f0x4340000000000000
  %or.cond.i = or i1 %or.cond9.i.i, %i.cc
  br i1 %or.cond.i, label %_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cd = call noundef double @_RNvNtNtCsaQuoagdqERF_4libm4math5exp105exp10(double noundef 2.000000e+00) ; 3 uses
  store double %i.cd, ptr %i.e, align 8
  %i.ce = fmul double %i.cb, %i.cd                ; 2 uses
  %i.cf = call double @llvm.fabs.f64(double %i.ce)
  %i.cg = fcmp ueq double %i.cf, +inf
  br i1 %i.cg, label %bb.z, label %bb.aa, !prof !4

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ch, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @102, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #36
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ci = call double @llvm.round.f64(double %i.ce)
  %i.cj = fdiv double %i.ci, %i.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit

_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit: ; preds = %bb.x, %bb.aa
  %.sroa.0.0.i1.i = phi double [ %i.cj, %bb.aa ], [ %i.cb, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store double %.sroa.0.0.i1.i, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.ck = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !5, !align !12, !noundef !5
  %i.cn = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cm, ptr noundef nonnull @116, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.cn, label %bb.ac, label %.sink.split

bb.ab:                                            ; preds = %bb.q
  %i.co = call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32)
  br i1 %i.co, label %bb.ac, label %bb.x

bb.ac:                                            ; preds = %bb.ak, %_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit166, %_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit, %bb.v, %bb.t, %bb.al, %bb.aj, %bb.ab, %bb.w, %bb.u
  br label %.sink.split

bb.ad:                                            ; preds = %bb.m
  br i1 %i.bf, label %bb.aj, label %bb.af

bb.ae:                                            ; preds = %bb.m
  br i1 %i.bf, label %bb.al, label %bb.ak

bb.af:                                            ; preds = %bb.aj, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cp = uitofp nneg i64 %i.ba to double
  %i.cq = fdiv double %i.cp, 1.000000e+09         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.cq, ptr %i.c, align 8
  %or.cond9.i.i161 = fcmp ueq double %i.cq, +inf
  %i.cr = fcmp oge double %i.cq, f0x4340000000000000
  %or.cond.i162 = or i1 %or.cond9.i.i161, %i.cr
  br i1 %or.cond.i162, label %_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit166, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cs = call noundef double @_RNvNtNtCsaQuoagdqERF_4libm4math5exp105exp10(double noundef 2.000000e+00) ; 3 uses
  store double %i.cs, ptr %i.b, align 8
  %i.ct = fmul double %i.cq, %i.cs                ; 2 uses
  %i.cu = call double @llvm.fabs.f64(double %i.ct)
  %i.cv = fcmp ueq double %i.cu, +inf
  br i1 %i.cv, label %bb.ah, label %bb.ai, !prof !4

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i.i164 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i164, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.cw, align 8
  %.sroa.47.0..sroa_idx.i.i165 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i165, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @102, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #36
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.cx = call double @llvm.round.f64(double %i.ct)
  %i.cy = fdiv double %i.cx, %i.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit166

_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit166: ; preds = %bb.af, %bb.ai
  %.sroa.0.0.i1.i163 = phi double [ %i.cy, %bb.ai ], [ %i.cq, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store double %.sroa.0.0.i1.i163, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.488.0..sroa_idx, align 8
  %i.cz = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !5, !align !12, !noundef !5
  %i.dc = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.cz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.db, ptr noundef nonnull @117, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.dc, label %bb.ac, label %.sink.split

bb.aj:                                            ; preds = %bb.ad
  %i.dd = call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32)
  br i1 %i.dd, label %bb.ac, label %bb.af

bb.ak:                                            ; preds = %bb.al, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.w, ptr %i.o, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.472.0..sroa_idx, align 8
  %i.de = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !5, !align !12, !noundef !5
  %i.dh = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dg, ptr noundef nonnull @117, ptr noundef nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.dh, label %bb.ac, label %.sink.split

bb.al:                                            ; preds = %bb.ae
  %i.di = call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32)
  br i1 %i.di, label %bb.ac, label %bb.ak

.sink.split:                                      ; preds = %bb.t, %bb.v, %_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit, %_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit166, %bb.ak, %bb.ac
  %.sroa.0.1.ph = phi i1 [ true, %bb.ac ], [ false, %bb.ak ], [ false, %_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit166 ], [ false, %_RNCNvXNtCs6xpQEr8gLsQ_11typst_utils8durationNtB4_15DurationDisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmts_0B6_.exit ], [ false, %bb.v ], [ false, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.g, %bb.k, %bb.h, %bb.c, %bb.f, %bb.j
  %.sroa.0.1 = phi i1 [ true, %bb.k ], [ false, %bb.h ], [ true, %bb.j ], [ true, %bb.c ], [ true, %bb.g ], [ true, %bb.f ], [ %.sroa.0.1.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
end_hunk_0
